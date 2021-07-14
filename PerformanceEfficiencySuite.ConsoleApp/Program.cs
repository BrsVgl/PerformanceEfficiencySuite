using System;
using System.Threading.Tasks;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;
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
            var host = CreateHostBuilder().Build();
            using (var scope = host.Services.CreateScope())
            {
                var serviceProvider = scope.ServiceProvider;
                var logger = serviceProvider.GetRequiredService<ILogger<Program>>();

                try
                {
                    var resultWriter = serviceProvider.GetRequiredService<IResultWriter>();
                    var pes = serviceProvider.GetRequiredService<PerformanceEfficiencySuiteService>();

                    var result = await pes.RunModuleAsync("Cinebench");
                    await resultWriter.WriteAsync(result);
                    logger.LogInformation("Performance Efficiency Suite completed successful.");
                }
                catch (Exception exception)
                {
                    logger.LogError(exception, "Something went wrong!");
                }

                logger.LogInformation("Press any key to exit...");
                Console.ReadKey();
            }
        }

        private static IHostBuilder CreateHostBuilder()
        {
            return Host.CreateDefaultBuilder()
                       .ConfigureAppConfiguration((context, configurationBuilder) =>
                       {
                           configurationBuilder.SetBasePath(AppContext.BaseDirectory);
                       })
                       .ConfigureServices((hostContext, services) =>
                       {
                           services.AddPerformanceEfficiencySuite(hostContext.Configuration,
                               typeof(IModule).Assembly,
                               typeof(CinebenchModule).Assembly);
                           services.AddCsvResultWriter();
                       })
                       .UseSerilog((context, configuration) =>
                       {
                           configuration.Enrich.FromLogContext()
                                        .WriteTo.Console();
                       });
        }
    }
}