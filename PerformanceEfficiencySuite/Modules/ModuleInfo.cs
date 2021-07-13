using System;

namespace PerformanceEfficiencySuite.Modules
{
    public class ModuleInfo
    {
        public ModuleInfo(string moduleName, ModuleVersion moduleVersion)
        {
            if (string.IsNullOrWhiteSpace(moduleName))
            {
                throw new ArgumentException("Value cannot be null or whitespace.", nameof(moduleName));
            }

            ModuleName = moduleName;
            ModuleVersion = moduleVersion ?? throw new ArgumentNullException(nameof(moduleVersion));
        }

        public string ModuleName { get; }
        public ModuleVersion ModuleVersion { get; }
    }
}