using System.Windows;

namespace PerformanceEfficiencySuite.Gui
{
    /// <summary>
    ///     Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private readonly PerformanceEfficiencySuiteService _performanceEfficiencySuite;

        public MainWindow(PerformanceEfficiencySuiteService performanceEfficiencySuite)
        {
            InitializeComponent();
            _performanceEfficiencySuite = performanceEfficiencySuite;
        }
    }
}