using System;
using System.Windows;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;
using PerformanceEfficiencySuite.Extensions;
using PerformanceEfficiencySuite.Modules;
using PerformanceEfficiencySuite.Modules.Cinebench;
using Serilog;

namespace PerformanceEfficiencySuite.Gui
{
    /// <summary>
    ///     Interaction logic for App.xaml
    /// </summary>
    public partial class App : Application
    {
        private readonly IHost _host;

        public App()
        {
            _host = CreateHostBuilder().Build();
        }

        private void OnStartup(object sender, StartupEventArgs e)
        {
            using (var scope = _host.Services.CreateScope())
            {
                var serviceProvider = scope.ServiceProvider;
                var logger = serviceProvider.GetRequiredService<ILogger<App>>();

                try
                {
                    var mainWindow = serviceProvider.GetRequiredService<MainWindow>();
                    mainWindow.Show();
                }
                catch (Exception exception)
                {
                    logger.LogError(exception, "Something went wrong!");
                }
            }
        }

        /// <inheritdoc />
        protected override void OnExit(ExitEventArgs e)
        {
            _host.StopAsync();
            base.OnExit(e);
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
                           services.AddSingleton<MainWindow>();
                           services.AddPerformanceEfficiencySuite(hostContext.Configuration,
                               typeof(IModule).Assembly,
                               typeof(CinebenchModule).Assembly);
                           services.AddCsvResultWriter();
                       })
                       .UseSerilog((context, configuration) => { configuration.Enrich.FromLogContext(); });
        }
    }
}