using System;
using System.Collections.Generic;
using System.Linq;
using Microsoft.Extensions.Logging;

namespace PerformanceEfficiencySuite.Modules
{
    public class ModulesService
    {
        private readonly ILogger<ModulesService> _logger;
        private readonly IEnumerable<IModule> _modules;

        public ModulesService(ILogger<ModulesService> logger, IEnumerable<IModule> modules)
        {
            _logger = logger ?? throw new ArgumentNullException(nameof(logger));
            _modules = modules ?? throw new ArgumentNullException(nameof(modules));
        }

        public IEnumerable<IModule> GetAll()
        {
            return _modules;
        }

        public IModule GetByName(string moduleName)
        {
            var module = _modules.FirstOrDefault(m =>
                m.ModuleInfo.ModuleName.Equals(moduleName, StringComparison.InvariantCulture));
            if (module is null)
            {
                _logger.LogError("Module with name '{moduleName}' not found!");
                throw new ModuleNotFoundException(moduleName);
            }

            return module;
        }

        public IEnumerable<IModule> GetByName(IEnumerable<string> moduleNames)
        {
            var modules = _modules.Where(m =>
                                      moduleNames.Any(x => x.Equals(m.ModuleInfo.ModuleName,
                                          StringComparison.InvariantCultureIgnoreCase)))
                                  .ToList();

            if (modules.Count != moduleNames.Count())
            {
                var modulesNotFound = moduleNames.Except(modules.Select(f => f.ModuleInfo.ModuleName)).ToList();
                _logger.LogError("Modules with name {ModulesNotFound} not found!",
                    string.Join(",", modulesNotFound.Select(m => "'" + m + "'")));
                throw new ModuleNotFoundException(modulesNotFound);
            }

            return modules;
        }
    }
}