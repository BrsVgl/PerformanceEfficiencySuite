using System;
using System.Threading.Tasks;
using PerformanceEfficiencySuite.Modules;

namespace PerformanceEfficiencySuite.Serialization
{
    public interface IResultWriter : IDisposable
    {
        Task Write(ModuleResult moduleResult);
    }
}