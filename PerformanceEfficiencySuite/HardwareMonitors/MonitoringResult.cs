using System;
using System.Collections.Generic;
using System.Diagnostics;

namespace PerformanceEfficiencySuite.HardwareMonitors
{
    public class MonitoringResult
    {
        public string Mode { get; }

        private readonly List<MeasurePoint> _measurePoints = new List<MeasurePoint>();

        private readonly Stopwatch _watch = new Stopwatch();

        public IEnumerable<MeasurePoint> MeasurePoints => _measurePoints.AsReadOnly();
        
        public DateTime? StartDate { get; private set; }
        public DateTime? FinishedDate { get; private set; }

        public MonitoringResult(string mode)
        {
            Mode = mode ?? throw new ArgumentNullException(nameof(mode));
        }

        public void AddMeasurePoint(float? packagePower)
        {
            if (!StartDate.HasValue)
            {
                return;
            }

            _measurePoints.Add(new MeasurePoint(_watch.ElapsedMilliseconds, packagePower));
        }

        public void StartMeasuring()
        {
            if (StartDate.HasValue)
            {
                return;
            }

            StartDate = DateTime.UtcNow;
            _watch.Start();
        }

        public void StopMeasuring()
        {
            if (FinishedDate.HasValue || !StartDate.HasValue)
            {
                return;
            }

            FinishedDate = DateTime.UtcNow;
            _watch.Stop();
        }
    }
}