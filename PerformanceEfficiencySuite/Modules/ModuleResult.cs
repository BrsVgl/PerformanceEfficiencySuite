using System;
using System.Collections.Generic;
using PerformanceEfficiencySuite.HardwareMonitors;

namespace PerformanceEfficiencySuite.Modules
{
    public class ModuleResult
    {
        private readonly List<MonitoringResult> _monitoringResults = new List<MonitoringResult>();

        public ModuleResult(ModuleInfo moduleInfo)
        {
            ModuleInfo = moduleInfo ?? throw new ArgumentNullException(nameof(moduleInfo));
        }

        public ModuleInfo ModuleInfo { get; private set; }

        public IEnumerable<MonitoringResult> MonitoringResults => _monitoringResults.AsReadOnly();

        public void AddMonitoringResults(MonitoringResult monitoringResult)
        {
            if (monitoringResult == null)
            {
                throw new ArgumentNullException(nameof(monitoringResult));
            }

            _monitoringResults.Add(monitoringResult);
        }
    }
}