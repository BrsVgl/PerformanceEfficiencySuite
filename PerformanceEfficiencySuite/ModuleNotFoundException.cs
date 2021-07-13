using System;
using System.Collections.Generic;
using System.Linq;

namespace PerformanceEfficiencySuite
{
    public class ModuleNotFoundException : Exception
    {
        public ModuleNotFoundException(string moduleName)
            : base($"Module with name '{moduleName}' not found!")
        {
        }

        public ModuleNotFoundException(string moduleName, Exception innerException)
            : base($"Module with name '{moduleName}' not found!", innerException)
        {
        }

        public ModuleNotFoundException(IEnumerable<string> moduleNames) : base(CreateMultipleMessaage(moduleNames))
        {
        }

        public ModuleNotFoundException(IEnumerable<string> moduleNames, Exception innerException) : base(
            CreateMultipleMessaage(moduleNames), innerException)
        {
        }

        private static string CreateMultipleMessaage(IEnumerable<string> moduleNames)
        {
            var modules = string.Join(",", moduleNames.Select(m => "'" + m + "'"));
            return $"Modules with name {modules} not found!";
        }
    }
}