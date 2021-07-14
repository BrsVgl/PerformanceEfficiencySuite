using System;
using System.Threading.Tasks;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using PerformanceEfficiencySuite.Extensions;
using PerformanceEfficiencySuite.Modules;
using PerformanceEfficiencySuite.Modules.Cinebench;
using PerformanceEfficiencySuite.Serialization;
using Serilog;

namespace PerformanceEfficiencySuite.ConsoleApp
{
    internal class Program
    {
        private static async Task Main(string[] args)
        {
            var config = GetConfiguration();
            Log.Logger = CreateLogger(config);

            try
            {
                var serviceProvider = GetServiceProvider(config);
                var resultWriter = serviceProvider.GetRequiredService<IResultWriter>();
                var pes = serviceProvider.GetRequiredService<PerformanceEfficiencySuite>();
                var result = await pes.RunModule("Cinebench");
                await resultWriter.Write(result);
            }
            catch (Exception exception)
            {
                Log.Error(exception, "Something went wrong");
            }
            finally
            {
                Log.CloseAndFlush();
            }

            Console.WriteLine("Press any key to exit...");
            Console.ReadKey();
        }

        private static IServiceProvider GetServiceProvider(IConfiguration configuration)
        {
            var services = new ServiceCollection();
            services.AddLogging(builder => builder.AddSerilog());
            services.AddPerformanceEfficiencySuite(configuration, typeof(IModule).Assembly,
                typeof(CinebenchModule).Assembly);
            services.AddCsvResultWriter();

            return services.BuildServiceProvider();
        }

        private static ILogger CreateLogger(IConfiguration configuration)
        {
            var loggerSettings = new LoggerConfiguration()
                                 .WriteTo.Console();


            return loggerSettings.CreateLogger();
        }

        private static IConfiguration GetConfiguration()
        {
            var configBuilder = new ConfigurationBuilder()
                                .SetBasePath(AppContext.BaseDirectory)
                                .AddJsonFile("appsettings.json");
            return configBuilder.Build();
        }
    }
}