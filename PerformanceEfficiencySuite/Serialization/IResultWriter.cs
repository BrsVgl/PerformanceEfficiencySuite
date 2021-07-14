using System;
using System.Threading.Tasks;
using PerformanceEfficiencySuite.Modules;

namespace PerformanceEfficiencySuite.Serialization
{
    /// <summary>
    ///     Interface definition to write <see cref="ModuleResult" /> to an output.
    /// </summary>
    public interface IResultWriter : IDisposable
    {
        /// <summary>
        ///     Write <see cref="ModuleInfo" /> to output.
        /// </summary>
        /// <param name="moduleResult"></param>
        /// <returns></returns>
        Task WriteAsync(ModuleResult moduleResult);
    }
}