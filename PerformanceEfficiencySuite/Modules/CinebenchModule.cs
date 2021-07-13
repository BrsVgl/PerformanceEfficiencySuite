using System;
using System.Diagnostics;
using System.IO;
using System.Threading;
using System.Threading.Tasks;
using Ardalis.SmartEnum;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Logging;
using PerformanceEfficiencySuite.HardwareMonitors;

namespace PerformanceEfficiencySuite.Modules
{
    /// <summary>
    ///     <see cref="IModule" /> implementation that tests the performance efficiency by using Cinebench.
    /// </summary>
    public class CinebenchModule
        : AbstractModule<CinebenchModule, CinebenchModuleConfiguration, PackagePowerMonitor>
    {
        private readonly int _coolDownTime = 10;
        private readonly ILogger<CinebenchModule> _logger;
        private readonly IHardwareMonitor<PackagePowerMonitor> _packagePowerMonitor;

        /// <summary>
        ///     Create new instance of <see cref="CinebenchModule" />.
        /// </summary>
        /// <param name="logger"><see cref="ILogger" /> for logging.</param>
        /// <param name="configuration">Global <see cref="IConfiguration" />.</param>
        /// <param name="packagePowerMonitor">Used <see cref="IHardwareMonitor{T}" /></param>
        public CinebenchModule(
            ILogger<CinebenchModule> logger,
            IConfiguration configuration,
            IHardwareMonitor<PackagePowerMonitor> packagePowerMonitor)
            : base(logger, configuration, packagePowerMonitor, new ModuleInfo("Cinebench", new ModuleVersion(0, 7, 0)))
        {
            _logger = logger ?? throw new ArgumentNullException(nameof(logger));
            _packagePowerMonitor = packagePowerMonitor ?? throw new ArgumentNullException(nameof(packagePowerMonitor));
        }

        /// <inheritdoc />
        protected override async Task<ModuleResult> StartTestInternal(CancellationToken stoppingToken = default)
        {
            var moduleResult = new ModuleResult(ModuleInfo);
            var singleThreadingResult =
                await StartAndMonitor(Configuration, CinebenchType.SingleThreading, stoppingToken);
            moduleResult.AddMonitoringResults(singleThreadingResult);
            await StartCoolDown();
            var multiThreadingResult =
                await StartAndMonitor(Configuration, CinebenchType.MultiThreading, stoppingToken);
            moduleResult.AddMonitoringResults(multiThreadingResult);
            return moduleResult;
        }

        private async Task<MonitoringResult> StartAndMonitor(
            CinebenchModuleConfiguration moduleConfiguration,
            CinebenchType mode,
            CancellationToken stoppingToken)
        {
            using (var process = StartProcess(moduleConfiguration, mode))
            {
                return await _packagePowerMonitor.MonitorProcess(process, mode.Name, stoppingToken);
            }
        }

        private Process StartProcess(CinebenchModuleConfiguration configuration, CinebenchType cinebenchType)
        {
            _logger.LogInformation("Starting Cinebench {CinebenchType}...", cinebenchType.Name);
            var processStartInfo =
                new ProcessStartInfo(Path.Combine(configuration.CinebenchPath, "Cinebench.exe"))
                {
                    Arguments = cinebenchType.CommandLineArgument
                };
            var process = Process.Start(processStartInfo);
            process.PriorityClass = ProcessPriorityClass.AboveNormal;
            _logger.LogInformation("Cinebench {CinebenchType} started", cinebenchType.Name);
            return process;
        }

        private async Task StartCoolDown()
        {
            _logger.LogInformation("Starting cooldown phase...");
            for (var i = 0; i < _coolDownTime; i++)
            {
                _logger.LogInformation("{CoolDownTimeLeft} seconds cooldown remaining until Multi-Thread test...",
                    _coolDownTime - i);
                await Task.Delay(TimeSpan.FromSeconds(1));
            }

            _logger.LogInformation("Cooldown phase completed.");
        }


        private abstract class CinebenchType : SmartEnum<CinebenchType>
        {
            public static readonly CinebenchType MultiThreading = new MultiThreadingType();
            public static readonly CinebenchType SingleThreading = new SingleThreadingType();

            private CinebenchType(string name, int value) : base(name, value)
            {
            }

            public abstract string CommandLineArgument { get; }

            private sealed class MultiThreadingType : CinebenchType
            {
                public MultiThreadingType() : base("MultiThreading", 1)
                {
                }

                public override string CommandLineArgument =>
                    "g_CinebenchCpuXTest=true g_CinebenchMinimumTestDuration=1";
            }

            private sealed class SingleThreadingType : CinebenchType
            {
                public SingleThreadingType() : base("SingleThreading", 2)
                {
                }

                public override string CommandLineArgument =>
                    "g_CinebenchCpu1Test=true g_CinebenchMinimumTestDuration=1";
            }
        }
    }
}