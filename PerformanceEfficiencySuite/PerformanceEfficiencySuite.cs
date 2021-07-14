using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;
using Microsoft.Extensions.Logging;
using PerformanceEfficiencySuite.Modules;

namespace PerformanceEfficiencySuite
{
    public class PerformanceEfficiencySuite
    {
        private readonly ILogger<PerformanceEfficiencySuite> _logger;
        private readonly IEnumerable<IModule> _modules;

        /// <summary>
        ///     Create new instance of <see cref="PerformanceEfficiencySuite" />.
        /// </summary>
        /// <param name="logger"></param>
        /// <param name="modules"></param>
        public PerformanceEfficiencySuite(
            ILogger<PerformanceEfficiencySuite> logger,
            IEnumerable<IModule> modules)
        {
            _logger = logger ?? throw new ArgumentNullException(nameof(logger));
            _modules = modules ?? throw new ArgumentNullException(nameof(modules));
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
            if (string.IsNullOrWhiteSpace(moduleName))
            {
                throw new ArgumentException("Value cannot be null or whitespace.", nameof(moduleName));
            }

            var moduleToRun = _modules.FirstOrDefault(m =>
                m.ModuleInfo.ModuleName.Equals(moduleName, StringComparison.InvariantCulture));
            if (moduleToRun is null)
            {
                _logger.LogError("Module with name '{moduleName}' not found!");
                throw new ModuleNotFoundException(moduleName);
            }

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
            var modules = _modules.Where(m =>
                                      modulesToRun.Any(x => x.Equals(m.ModuleInfo.ModuleName,
                                          StringComparison.InvariantCultureIgnoreCase)))
                                  .ToList();

            if (modules.Count != modulesToRun.Count())
            {
                var modulesNotFound = modulesToRun.Except(modules.Select(f => f.ModuleInfo.ModuleName)).ToList();
                _logger.LogError("Modules with name {ModulesNotFound} not found!",
                    string.Join(",", modulesNotFound.Select(m => "'" + m + "'")));
                throw new ModuleNotFoundException(modulesNotFound);
            }

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