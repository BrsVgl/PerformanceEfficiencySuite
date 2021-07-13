using System;
using System.Threading;
using System.Threading.Tasks;

namespace PerformanceEfficiencySuite.Modules
{
    public interface IModule : IDisposable
    {
        /// <summary>
        ///     Name of Performance Efficiency Suite module.
        /// </summary>
        ModuleInfo ModuleInfo { get; }

        /// <summary>
        ///     Start the <see cref="IModule" />.
        /// </summary>
        /// <param name="stoppingToken"></param>
        /// <returns><see cref="ModuleResult" /> of the test.</returns>
        Task<ModuleResult> StartTest(CancellationToken stoppingToken = default);
    }
}