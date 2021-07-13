namespace PerformanceEfficiencySuite.Modules
{
    /// <summary>
    ///     Defines a version of a <see cref="IModule" />.
    /// </summary>
    public class ModuleVersion
    {
        /// <summary>
        ///     Create new instance of <see cref="ModuleVersion" />.
        /// </summary>
        /// <param name="major">Major version of module.</param>
        /// <param name="minor">Minor version of module.</param>
        /// <param name="patch">Patch version of module.</param>
        /// <param name="appendix">Version appendix of module.</param>
        public ModuleVersion(int major, int minor, int patch, string appendix = default)
        {
            Major = major;
            Minor = minor;
            Patch = patch;
            Appendix = appendix;
        }

        /// <summary>
        ///     Major version of module.
        /// </summary>
        public int Major { get; private set; }

        /// <summary>
        ///     Minor version of module.
        /// </summary>
        public int Minor { get; private set; }

        /// <summary>
        ///     Patch version of module.
        /// </summary>
        public int Patch { get; private set; }

        /// <summary>
        ///     Version appendix of module.
        /// </summary>
        public string Appendix { get; private set; }

        /// <inheritdoc />
        public override string ToString()
        {
            var version = $"{Major}.{Minor}.{Patch}";
            if (!string.IsNullOrWhiteSpace(Appendix))
            {
                version += $"-{Appendix}";
            }

            return version;
        }
    }
}