using System;
using System.Windows;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
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
        private readonly ServiceProvider _serviceProvider;

        public App()
        {
            var config = GetConfiguration();
            Log.Logger = CreateLogger(config);
            var services = new ServiceCollection();
            ConfigureServices(services, config);
            _serviceProvider = services.BuildServiceProvider();
        }

        private void ConfigureServices(IServiceCollection services, IConfiguration configuration)
        {
            services.AddLogging(builder => builder.AddSerilog());
            services.AddPerformanceEfficiencySuite(configuration, typeof(IModule).Assembly,
                typeof(CinebenchModule).Assembly);
            services.AddSingleton<MainWindow>();
        }

        private static IConfiguration GetConfiguration()
        {
            var configBuilder = new ConfigurationBuilder()
                                .SetBasePath(AppContext.BaseDirectory)
                                .AddJsonFile("appsettings.json");
            return configBuilder.Build();
        }

        private void OnStartup(object sender, StartupEventArgs e)
        {
            var mainWindow = _serviceProvider.GetRequiredService<MainWindow>();
            mainWindow.Show();
        }

        /// <inheritdoc />
        protected override void OnExit(ExitEventArgs e)
        {
            Log.CloseAndFlush();
            base.OnExit(e);
        }

        private static ILogger CreateLogger(IConfiguration configuration)
        {
            var loggerSettings = new LoggerConfiguration();


            return loggerSettings.CreateLogger();
        }
    }
}