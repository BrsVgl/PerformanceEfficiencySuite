namespace PerformanceEfficiencySuite.HardwareMonitors
{
    public class MeasurePoint
    {
        public MeasurePoint(long duration, float? packagePower)
        {
            Duration = duration;
            PackagePower = packagePower;
        }

        public long Duration { get; private set; }
        public float? PackagePower { get; private set; }
    }
}