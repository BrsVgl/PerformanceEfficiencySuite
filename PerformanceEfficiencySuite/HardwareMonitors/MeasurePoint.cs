namespace PerformanceEfficiencySuite.HardwareMonitors
{
    /// <summary>
    ///     Defines a measured value after a duration.
    /// </summary>
    public class MeasurePoint
    {
        /// <summary>
        ///     Create new instance of <see cref="MeasurePoint" />.
        /// </summary>
        /// <param name="duration"></param>
        /// <param name="value">Measured value</param>
        public MeasurePoint(long duration, float? value)
        {
            Duration = duration;
            Value = value;
        }

        public long Duration { get; private set; }

        /// <summary>
        ///     Measured value.
        /// </summary>
        public float? Value { get; private set; }
    }
}