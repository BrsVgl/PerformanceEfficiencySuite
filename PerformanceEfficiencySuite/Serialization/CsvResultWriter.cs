using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using System.Threading.Tasks;
using PerformanceEfficiencySuite.HardwareMonitors;
using PerformanceEfficiencySuite.Modules;

namespace PerformanceEfficiencySuite.Serialization
{
    /// <summary>
    ///     Implementation of <see cref="IResultWriter" /> that writes into a CSV file.
    /// </summary>
    public class CsvResultWriter : IResultWriter
    {
        /// <inheritdoc />
        public async Task WriteAsync(ModuleResult moduleResult)
        {
            var currentDate = DateTime.UtcNow;
            foreach (var monitoringResult in moduleResult.MonitoringResults)
            {
                var filename = GetFilename(moduleResult, monitoringResult, currentDate);
                var path = Path.Combine(AppContext.BaseDirectory, filename);
                using (var writer = new StreamWriter(path, false))
                {
                    var headers = new List<string>
                    {
                        "DurationMilliseconds",
                        "PackagePower",
                        "Version"
                    };
                    await WriteHeaderAsync(writer, headers).ConfigureAwait(false);
                    await WriteAsync(writer, monitoringResult, moduleResult.ModuleInfo.ModuleVersion).ConfigureAwait(false);
                }
            }
        }

        /// <inheritdoc />
        public void Dispose()
        {
        }

        private static string GetFilename(
            ModuleResult moduleResult,
            MonitoringResult monitoringResult,
            DateTime currentDate)
        {
            var resultNameBuilder = new StringBuilder($"{moduleResult.ModuleInfo.ModuleName}");
            if (!string.IsNullOrWhiteSpace(monitoringResult.Mode))
            {
                resultNameBuilder.Append($"-{monitoringResult.Mode}");
            }

            resultNameBuilder.Append($"-{currentDate.ToFileTimeUtc()}");

            resultNameBuilder.Append(".csv");
            return resultNameBuilder.ToString();
        }

        private async Task WriteHeaderAsync(StreamWriter streamWriter, IEnumerable<string> headers)
        {
            await streamWriter.WriteLineAsync(string.Join(";", headers)).ConfigureAwait(false);
        }

        public async Task WriteAsync(
            StreamWriter streamWriter,
            MonitoringResult monitoringResult,
            ModuleVersion moduleVersion)
        {
            foreach (var measurePoint in monitoringResult.MeasurePoints)
            {
                await streamWriter.WriteLineAsync(string.Join(";", measurePoint.Duration, measurePoint.Value,
                    moduleVersion)).ConfigureAwait(false);
            }
        }
    }
}