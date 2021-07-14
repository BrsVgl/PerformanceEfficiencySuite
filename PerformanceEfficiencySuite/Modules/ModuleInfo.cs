using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;

namespace PerformanceEfficiencySuite.Modules
{
    /// <summary>
    ///     Holds informations about a <see cref="IModule" />.
    /// </summary>
    public class ModuleInfo
    {
        /// <summary>
        ///     Create new instance of <see cref="ModuleInfo" />.
        /// </summary>
        /// <param name="moduleName">Name of the module.</param>
        /// <param name="configurationType"></param>
        /// <param name="moduleVersion"><see cref="ModuleVersion" /> of the module.</param>
        public ModuleInfo(string moduleName, Type configurationType, ModuleVersion moduleVersion)
        {
            if (string.IsNullOrWhiteSpace(moduleName))
            {
                throw new ArgumentException("Value cannot be null or whitespace.", nameof(moduleName));
            }

            ModuleName = moduleName;
            ConfigurationType = configurationType ?? throw new ArgumentNullException(nameof(configurationType));
            ModuleVersion = moduleVersion ?? throw new ArgumentNullException(nameof(moduleVersion));
        }

        /// <summary>
        ///     Name of the module.
        /// </summary>
        public Type ConfigurationType { get; }

        public IReadOnlyDictionary<string, Type> ConfigurationFields =>
            ConfigurationType.GetProperties().ToDictionary(p => p.Name, p => p.PropertyType);

        /// <summary>
        ///     Name of the module.
        /// </summary>
        public string ModuleName { get; }

        /// <summary>
        ///     <see cref="ModuleVersion" /> of the module.
        /// </summary>
        public ModuleVersion ModuleVersion { get; }
    }
}