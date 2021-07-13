using System;
using System.Threading;
using System.Threading.Tasks;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Logging;
using PerformanceEfficiencySuite.HardwareMonitors;

namespace PerformanceEfficiencySuite.Modules
{
    public abstract class Module<TModule, TModuleConfiguration, THardwareMonitor> : IModule
        where TModule : Module<TModule, TModuleConfiguration, THardwareMonitor>
        where THardwareMonitor : IHardwareMonitor<THardwareMonitor>
        where TModuleConfiguration : IModuleConfiguration, new()
    {
        private readonly IConfiguration _configuration;
        private readonly ILogger<TModule> _logger;
        private readonly IHardwareMonitor<THardwareMonitor> _packagePowerMonitor;

        protected Module(
            ILogger<TModule> logger,
            IConfiguration configuration,
            IHardwareMonitor<THardwareMonitor> packagePowerMonitor,
            ModuleInfo moduleInfo)
        {
            _logger = logger;
            _configuration = configuration;
            _packagePowerMonitor = packagePowerMonitor;
            ModuleInfo = moduleInfo;
        }

        public TModuleConfiguration Configuration
        {
            get
            {
                var moduleConfiguration = new TModuleConfiguration();
                _configuration.GetSection($"Modules:{ModuleInfo.ModuleName}").Bind(moduleConfiguration);
                return moduleConfiguration;
            }
        }

        /// <inheritdoc />
        public ModuleInfo ModuleInfo { get; }

        public async Task<ModuleResult> StartTest(CancellationToken stoppingToken = default)
        {
            _logger.LogInformation("Starting module: {@ModuleInfo}", ModuleInfo);
            var result = await StartTestInternal(stoppingToken);
            _logger.LogInformation("Module '{ModuleName}' completed.", ModuleInfo.ModuleName);
            return result;
        }

        /// <inheritdoc />
        public void Dispose()
        {
            throw new NotImplementedException();
        }

        protected abstract Task<ModuleResult> StartTestInternal(CancellationToken stoppingToken = default);
    }
}