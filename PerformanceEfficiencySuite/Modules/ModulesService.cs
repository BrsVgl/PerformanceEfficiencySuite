using System;
using System.Collections.Generic;
using System.Linq;
using Microsoft.Extensions.Logging;

namespace PerformanceEfficiencySuite.Modules
{
    /// <summary>
    ///     Service to access <see cref="IModule" /> implementation.
    /// </summary>
    public class ModulesService
    {
        private readonly ILogger<ModulesService> _logger;
        private readonly IEnumerable<IModule> _modules;

        /// <summary>
        ///     Create new instance of <see cref="ModulesService" />.
        /// </summary>
        /// <param name="logger"></param>
        /// <param name="modules"></param>
        public ModulesService(ILogger<ModulesService> logger, IEnumerable<IModule> modules)
        {
            _logger = logger ?? throw new ArgumentNullException(nameof(logger));
            _modules = modules ?? throw new ArgumentNullException(nameof(modules));
        }

        public IEnumerable<IModule> GetAll()
        {
            return _modules;
        }

        /// <summary>
        ///     Get a <see cref="IModule" /> by name.
        /// </summary>
        /// <param name="moduleName">Name of <see cref="IModule" /> to get.</param>
        /// <returns>Requested <see cref="IModule" />.</returns>
        /// <exception cref="ModuleNotFoundException">Thrown if requested <see cref="IModule" /> not found.</exception>
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

        /// <summary>
        ///     Get multiple <see cref="IModule" /> by names.
        /// </summary>
        /// <param name="moduleNames">Names of the <see cref="IModule" /> to get.</param>
        /// <returns>Requested <see cref="IModule" />.</returns>
        /// <exception cref="ModuleNotFoundException">Thrown if one ore multiple requested <see cref="IModule" /> not found.</exception>
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