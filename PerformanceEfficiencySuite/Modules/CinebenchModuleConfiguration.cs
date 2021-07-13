using System;

namespace PerformanceEfficiencySuite.Modules
{
    /// <summary>
    ///     Configurations for module <see cref="CinebenchModule" />.
    /// </summary>
    public class CinebenchModuleConfiguration : IModuleConfiguration
    {
        private int _cooldownTime = 10;

        /// <summary>
        ///     Base base of Cinebench installation.
        /// </summary>
        public string CinebenchPath { get; set; }

        /// <summary>
        ///     Cooldown time in seconds.
        /// </summary>
        public int CooldownTime
        {
            get => _cooldownTime;
            set => _cooldownTime = Math.Abs(value);
        }
    }
}