namespace PerformanceEfficiencySuite.Modules
{
    /// <summary>
    ///     Configurations for module <see cref="CinebenchModule" />.
    /// </summary>
    public class CinebenchModuleConfiguration : IModuleConfiguration
    {
        /// <summary>
        ///     Base base of Cinebench installation.
        /// </summary>
        public string CinebenchPath { get; set; }
    }
}