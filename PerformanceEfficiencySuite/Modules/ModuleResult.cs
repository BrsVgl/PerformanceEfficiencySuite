using System;
using System.Collections.Generic;
using PerformanceEfficiencySuite.HardwareMonitors;

namespace PerformanceEfficiencySuite.Modules
{
    /// <summary>
    ///     Result of a <see cref="IModule" />.
    /// </summary>
    public class ModuleResult
    {
        private readonly List<MonitoringResult> _monitoringResults = new List<MonitoringResult>();

        /// <summary>
        ///     Create new instance of <see cref="ModuleResult" />.
        /// </summary>
        /// <param name="moduleInfo"><see cref="ModuleInfo" /> of the <see cref="IModule" /> the result was created by.</param>
        public ModuleResult(ModuleInfo moduleInfo)
        {
            ModuleInfo = moduleInfo ?? throw new ArgumentNullException(nameof(moduleInfo));
        }

        /// <summary>
        ///     <see cref="ModuleInfo" /> of the <see cref="IModule" /> the result was created by.
        /// </summary>
        public ModuleInfo ModuleInfo { get; private set; }

        /// <summary>
        ///     The list <see cref="MonitoringResult" /> the <see cref="IModule" /> produced.
        /// </summary>
        public IEnumerable<MonitoringResult> MonitoringResults => _monitoringResults.AsReadOnly();

        /// <summary>
        ///     Add a new <see cref="MonitoringResult" />.
        /// </summary>
        /// <param name="monitoringResult"><see cref="MonitoringResult" /> to add.</param>
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