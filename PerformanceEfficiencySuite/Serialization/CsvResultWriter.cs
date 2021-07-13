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
        public async Task Write(ModuleResult moduleResult)
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
                    await WriteHeader(writer, headers);
                    await Write(writer, monitoringResult, moduleResult.ModuleInfo.ModuleVersion);
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

        private async Task WriteHeader(StreamWriter streamWriter, IEnumerable<string> headers)
        {
            await streamWriter.WriteLineAsync(string.Join(";", headers));
        }

        public async Task Write(
            StreamWriter streamWriter,
            MonitoringResult monitoringResult,
            ModuleVersion moduleVersion)
        {
            foreach (var measurePoint in monitoringResult.MeasurePoints)
                await streamWriter.WriteLineAsync(string.Join(";", measurePoint.Duration, measurePoint.Value,
                    moduleVersion));
        }
    }
}