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

        Task<ModuleResult> StartTest(CancellationToken stoppingToken = default);
    }

    //public interface IModule<TSuite> : IModule
    //    where TSuite : IModule<TSuite>
    //{
    //}
}