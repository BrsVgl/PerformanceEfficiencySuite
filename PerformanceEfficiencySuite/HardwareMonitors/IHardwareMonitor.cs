using System.Diagnostics;
using System.Threading;
using System.Threading.Tasks;

namespace PerformanceEfficiencySuite.HardwareMonitors
{
    public interface IHardwareMonitor
    {
        Task<MonitoringResult> MonitorProcessAsync(
            Process processToMonitor,
            string mode,
            CancellationToken stoppingToken = default);
    }

    public interface IHardwareMonitor<T> : IHardwareMonitor where T : IHardwareMonitor<T>
    {
    }
}