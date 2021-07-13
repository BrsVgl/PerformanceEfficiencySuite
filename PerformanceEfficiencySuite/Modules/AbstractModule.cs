using System;
using System.Threading;
using System.Threading.Tasks;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Logging;
using PerformanceEfficiencySuite.HardwareMonitors;

namespace PerformanceEfficiencySuite.Modules
{
    /// <summary>
    ///     Abstract implementation of an <see cref="IModule" />. Use this as a base implementation for new modules.
    /// </summary>
    /// <typeparam name="TModule">Type of inherited class..</typeparam>
    /// <typeparam name="TModuleConfiguration">Type of <see cref="IModuleConfiguration" />.</typeparam>
    /// <typeparam name="THardwareMonitor">Type of IHardwareMonitor.</typeparam>
    public abstract class AbstractModule<TModule, TModuleConfiguration, THardwareMonitor> : IModule
        where TModule : AbstractModule<TModule, TModuleConfiguration, THardwareMonitor>
        where THardwareMonitor : IHardwareMonitor<THardwareMonitor>
        where TModuleConfiguration : IModuleConfiguration, new()
    {
        private readonly IConfiguration _configuration;
        private readonly ILogger<TModule> _logger;
        private readonly IHardwareMonitor<THardwareMonitor> _packagePowerMonitor;

        /// <summary>
        ///     Create new instance of <see cref="AbstractModule{TModule}{TModuleConfiguration}{THardwareMonitor}" />.
        /// </summary>
        /// <param name="logger"><see cref="ILogger{T}" /> from inherited class.</param>
        /// <param name="configuration"><see cref="IConfiguration" /> from inherited class.</param>
        /// <param name="packagePowerMonitor"><see cref="IHardwareMonitor{T}" /> from inherited class.</param>
        /// <param name="moduleInfo"><see cref="ModuleInfo" /> from inherited class.</param>
        protected AbstractModule(
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

        /// <summary>
        ///     Configuration <typeparamref name="TModuleConfiguration" /> of module.
        /// </summary>
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

        /// <inheritdoc />
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

        /// <summary>
        ///     Override this method to implement the custom process.
        /// </summary>
        /// <param name="stoppingToken"></param>
        /// <returns><see cref="ModuleResult" /> of the <see cref="IModule" />.</returns>
        protected abstract Task<ModuleResult> StartTestInternal(CancellationToken stoppingToken = default);
    }
}