using System;

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
        /// <param name="moduleVersion"><see cref="ModuleVersion" /> of the module.</param>
        public ModuleInfo(string moduleName, ModuleVersion moduleVersion)
        {
            if (string.IsNullOrWhiteSpace(moduleName))
            {
                throw new ArgumentException("Value cannot be null or whitespace.", nameof(moduleName));
            }

            ModuleName = moduleName;
            ModuleVersion = moduleVersion ?? throw new ArgumentNullException(nameof(moduleVersion));
        }

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