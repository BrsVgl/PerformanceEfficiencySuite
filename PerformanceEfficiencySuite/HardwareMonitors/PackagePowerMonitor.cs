using System;
using System.Diagnostics;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;
using Microsoft.Extensions.Logging;
using OpenHardwareMonitor.Hardware;

namespace PerformanceEfficiencySuite.HardwareMonitors
{
    /// <summary>
    ///     Implementation of <see cref="IHardwareMonitor" /> that tests the package power.
    /// </summary>
    public class PackagePowerMonitor : IDisposable, IHardwareMonitor<PackagePowerMonitor>
    {
        private readonly Computer _computer;
        private readonly ILogger<PackagePowerMonitor> _logger;

        /// <summary>
        ///     Create new instance of <see cref="PackagePowerMonitor" />.
        /// </summary>
        /// <param name="logger"></param>
        /// <param name="computer"></param>
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

        /// <inheritdoc />
        public async Task<MonitoringResult> MonitorProcessAsync(
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
            var stopwatch = new Stopwatch();
            while (!processToMonitor.HasExited)
            {
                stopwatch.Start();
                var cpuPackagePower = GetCpuPackagePower(computerHardware);
                var measureTime = stopwatch.ElapsedTicks;
                stopwatch.Reset();
                result.AddMeasurePoint(cpuPackagePower);
                const long minimumTicksToWait = 100000;
                var timeToWait = TimeSpan.FromTicks(minimumTicksToWait - measureTime);
                await Task.Delay(timeToWait, stoppingToken).ConfigureAwait(false);
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