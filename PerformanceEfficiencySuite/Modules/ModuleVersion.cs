namespace PerformanceEfficiencySuite.Modules
{
    public class ModuleVersion
    {
        public ModuleVersion(int major, int minor, int patch, string appendix = default)
        {
            Major = major;
            Minor = minor;
            Patch = patch;
            Appendix = appendix;
        }

        public int Major { get; private set; }
        public int Minor { get; private set; }
        public int Patch { get; private set; }
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