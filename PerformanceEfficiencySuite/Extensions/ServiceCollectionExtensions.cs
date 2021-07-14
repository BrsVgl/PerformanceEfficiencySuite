using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.DependencyInjection.Extensions;
using OpenHardwareMonitor.Hardware;
using PerformanceEfficiencySuite.HardwareMonitors;
using PerformanceEfficiencySuite.Modules;
using PerformanceEfficiencySuite.Serialization;

namespace PerformanceEfficiencySuite.Extensions
{
    public static class ServiceCollectionExtensions
    {
        public static IServiceCollection AddCsvResultWriter(this IServiceCollection collection)
        {
            collection.AddTransient<IResultWriter, CsvResultWriter>();
            return collection;
        }

        public static IServiceCollection AddPerformanceEfficiencySuite(
            this IServiceCollection collection,
            IConfiguration configuration,
            params Assembly[] assemblies)
        {
            collection.AddScoped<PerformanceEfficiencySuite>();
            collection.AddSingleton(configuration);
            collection.AddCpuMonitor();

            foreach (var assembly in assemblies)
            {
                // Register modules 
                var modules = GetTypes<IModule>(assembly).Distinct();
                foreach (var type in modules) collection.AddScoped(typeof(IModule), type);
            }
            return collection;
        }

        private static IEnumerable<Type> GetTypes<T>(Assembly assembly)
        {
            var info = typeof(T).GetTypeInfo();
            return info.Assembly.GetTypes()
                       .Concat(assembly.GetTypes())
                       .Where(x => info.IsAssignableFrom(x))
                       .Where(x => x.IsClass && !x.IsAbstract && x.IsPublic);
        }

        public static IServiceCollection AddCpuMonitor(this IServiceCollection collection)
        {
            collection.TryAddTransient<Computer>();
            collection.TryAddTransient<IHardwareMonitor<PackagePowerMonitor>, PackagePowerMonitor>();
            collection.TryAddTransient<IHardwareMonitor, PackagePowerMonitor>();
            return collection;
        }
    }
}