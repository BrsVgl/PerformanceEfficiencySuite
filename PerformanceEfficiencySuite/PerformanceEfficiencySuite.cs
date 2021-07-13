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

        public PerformanceEfficiencySuite(
            ILogger<PerformanceEfficiencySuite> logger,
            IEnumerable<IModule> modules)
        {
            _logger = logger;
            _modules = modules;
        }

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
                throw new Exception("Module with name '{moduleName}' not found!"); // TODO: write exception.
            }

            var result = await moduleToRun.StartTest(stoppingToken);
            return result;
        }

        public async Task<IEnumerable<ModuleResult>> RunModules(
            IEnumerable<string> modulesToRun,
            CancellationToken stoppingToken = default)
        {
            var modules = _modules.Where(m =>
                modulesToRun.Any(x => x.Equals(m.ModuleInfo.ModuleName, StringComparison.InvariantCultureIgnoreCase)));
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