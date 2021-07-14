using System;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;
using Microsoft.Extensions.Logging;
using PerformanceEfficiencySuite.Modules;

namespace PerformanceEfficiencySuite
{
    public class PerformanceEfficiencySuiteService
    {
        private readonly ILogger<PerformanceEfficiencySuiteService> _logger;
        private readonly ModulesService _modulesService;

        /// <summary>
        ///     Create new instance of <see cref="PerformanceEfficiencySuiteService" />.
        /// </summary>
        /// <param name="logger"></param>
        /// <param name="modulesService"></param>
        public PerformanceEfficiencySuiteService(
            ILogger<PerformanceEfficiencySuiteService> logger,
            ModulesService modulesService)
        {
            _logger = logger ?? throw new ArgumentNullException(nameof(logger));
            _modulesService = modulesService ?? throw new ArgumentNullException(nameof(modulesService));
        }

        /// <summary>
        ///     Run a Performance Efficiency Suite module.
        /// </summary>
        /// <param name="moduleName">Name of module to run.</param>
        /// <param name="stoppingToken"></param>
        /// <returns><see cref="ModuleResult" /> of the Performance Efficiency Suite modules.</returns>
        public async Task<ModuleResult> RunModule(
            string moduleName,
            CancellationToken stoppingToken = default)
        {
            var moduleToRun = _modulesService.GetByName(moduleName);
            var result = await moduleToRun.StartTest(stoppingToken);
            return result;
        }

        /// <summary>
        ///     Run multiple Performance Efficiency Suite modules.
        /// </summary>
        /// <param name="modulesToRun">Names of modules to run.</param>
        /// <param name="stoppingToken"></param>
        /// <returns>All <see cref="ModuleResult" /> of the Performance Efficiency Suite modules. </returns>
        public async Task<IEnumerable<ModuleResult>> RunModules(
            IEnumerable<string> modulesToRun,
            CancellationToken stoppingToken = default)
        {
            var modules = _modulesService.GetByName(modulesToRun);
            var results = new List<ModuleResult>();
            foreach (var module in modules)
            {
                var result = await module.StartTest(stoppingToken);
                await Task.Yield();
                results.Add(result);
            }

            return results;
        }
    }
}