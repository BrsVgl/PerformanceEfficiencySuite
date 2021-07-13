using System;
using System.Diagnostics;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;
using Microsoft.Extensions.Logging;
using OpenHardwareMonitor.Hardware;

namespace PerformanceEfficiencySuite.HardwareMonitors
{
    public class PackagePowerMonitor : IDisposable, IHardwareMonitor<PackagePowerMonitor>
    {
        private readonly Computer _computer;
        private readonly ILogger<PackagePowerMonitor> _logger;

        public PackagePowerMonitor(ILogger<PackagePowerMonitor> logger, Computer computer)
        {
            _logger = logger ?? throw new ArgumentNullException(nameof(logger));
            _computer = computer ?? throw new ArgumentNullException(nameof(computer));
        }

        /// <inheritdoc />
        public void Dispose()
        {
            _computer.Close();
        }

        public async Task<MonitoringResult> MonitorProcess(
            Process processToMonitor,
            string mode,
            CancellationToken stoppingToken = default)
        {
            _logger.LogInformation("Start measuring CPU power until process '{ProcessName}' has exited.",
                processToMonitor.ProcessName);
            _computer.Open();
            _computer.CPUEnabled = true;
            var computerHardware = _computer.Hardware[0];
            _logger.LogInformation("Hardware to measure: {HardwareToMeasure}", computerHardware.Name);
            var result = new MonitoringResult(mode);
            result.StartMeasuring();
            while (!processToMonitor.HasExited)
            {
                var cpuPackagePower = GetCpuPackagePower(computerHardware);
                result.AddMeasurePoint(cpuPackagePower);
                await Task.Delay(TimeSpan.FromMilliseconds(10), stoppingToken);
            }

            result.StopMeasuring();
            return result;
        }

        private static float? GetCpuPackagePower(IHardware computerHardware)
        {
            computerHardware.Update();
            var cpuPackageSensor = computerHardware.Sensors.First(s =>
                s.SensorType == SensorType.Power &&
                s.Name.Equals("CPU Package", StringComparison.InvariantCultureIgnoreCase));
            return cpuPackageSensor.Value;
        }
    }
}