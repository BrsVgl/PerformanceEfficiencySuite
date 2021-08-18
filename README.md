# Performance Efficiency Suite

- Author: Boris Vogel
- LinkedIn: https://www.linkedin.com/in/boris-vogel-28b57495/
- GitHub: https://github.com/BrsVgl/PerformanceEfficiencySuite

Most Reviewers solely focus on what they consider to be the most important aspect of modern CPUs - the absolute performance.
But this is only one side of the equation. Today Power Efficiency is at least as important - or to be more precise:
The amount of energy (Wattseconds or Joules) a CPU needs in order to accomplish a given workload. Sadly most Reviewers shy away from the extra mile it needs to assess this aspect.
This suite measures the Total Package Power of a CPU while running the Cinebench R23 benchmarks first in single-threaded mode, then running in multi-threaded mode. The results will be rendered in the provided *Results.xlsx* Excel file. 
To combine Efficiency and Performance there is also a score provided called **Performance Efficiency Score** (how amazingly inspired I am ;) ).

## Table of contents

1. [How-To](#how-to)
1. [Example result](#example-result)
1. [Rankings](#rankings)
1. [Disclaimer](#disclaimer)
1. [Some explanations about the Suite](#some-explanations-about-the-suite)
1. [Community](#community)
1. [Sweet-Spot-Finding](#sweet-spot-finding)
1. [Change-Log](#change-log)

## How-To

1. Unzip to wherever you want **EXCEPT** on your local OneDrive folder.
1. Open *Settings.txt* and **insert your local Cinebench23 Directory**.
1. Run *PES Start* - it will ask for Administrator rights as these are needed for measuring Package Power
1. Wait until the Powershell finishes.
1. Open the Excel file...
1. Allow external connections (to the generated CSV-files with the data)
1. Go to *Data* -> *Refresh all*
1. Enjoy and **share** your results
1. If you want to do multiple measurements with different settings just copy the Excel file (inside the root-folder) before running and refreshing the data.

## Example-Result
![Result of my HP Envy 13 x360 AMD R7 4700U](/Ranking/Example_result.png "Result of my HP Envy 13 x360 AMD R7 4700U")

## Rankings
(last updated: 2021-08-13 17:00 CEST)

[Ranking (Excel)](/Ranking/Rankings.xlsx)

### Cinebench R23 ST PES (Performance Efficiency Score)
![CB23 ST PES Ranking](/Ranking/CB_ST_PES.png "CB23 ST PES Ranking")

### Cinebench R23 ST Consumption
![CB23 ST Consumption Ranking](/Ranking/CB_ST_Consumption.png "CB23 ST Consumption Ranking")

### Cinebench R23 MT PES (Performance Efficiency Score)
![CB23 MT PES Ranking](/Ranking/CB_MT_PES.png "CB23 MT PES Ranking")

### Cinebench R23 MT Consumption
![CB23 MT Consumption Ranking](/Ranking/CB_MT_Consumption.png "CB23 MZ Consumption Ranking")

## Disclaimer

I am by no means a Powershell professional or a professional Reviewer. I was just sick of the lack of information and wanted to propose a low-effort solution. Any input for further improvement is highly welcomed.
Please feel free to use/extend/rip-off this solution as you wish.
But please share your findings to the world.

## Some explanations about the Suite

- This Suite has been made possible by *Michael Möller* and his amazing free and open-source *Open Hardware Monitor* and his *.NET Library OpenHardwareMonitorLib.dll* - **Thanks a lot!!!**

  Homepage: https://openhardwaremonitor.org/
  
  GitHub: https://github.com/openhardwaremonitor

- The results for the Package Power look pretty accurate compared to the sparse data the internet provides. Seems, that the vendors are much more honest with those sensors than they are with temperature etc.
- The suite basically consists of CB R23, some powershell scripts and an Excel file for presentation purposes
  - RunAsAdminWrapper.ps1
  
    This is needed to have a convenient relative path shortcut in the root folder and request admin-rights at the same time

  - Main.ps1
    - After setting up some stuff it basically starts the Cinebench R23 one at a time. It then checks for the "Cinebench.exe" process being active.
    - While this is true it queries the Package Power Sensor data with a lower bound of 10ms (in order to keep CPU-load of the script at bay).
    - After each run the aquired data gets pushed to CSV files located in the LogCsv subfolder.
  - Results.xslx
    - The Excel file basically just does some import, calculations and a hopefully nice presentation of the data.
    - Histogram

      The bold line shows a running average of the last 100 data-points which should be sufficiently accurate. The pale line shows each single data-point.

    - Calculation of Total Package Consumption

      To get that number we need the integral. That is why we first calculate the timeframe between two data-points and then multiply the measured value.

    - Everything else in that Excel is hopefully more or less self-explaining

## Community

3DCenter.org Forum: https://www.forum-3dcenter.org/vbulletin/showthread.php?t=606794

ComputerBase.de Forum: https://www.computerbase.de/forum/threads/performance-efficiency-suite-pes.2031876/

## Sweet-Spot-Finding
One of the most interesting topics for a given CPU architecture is to find its sweet-spot - the TDP at which the Performance Efficiency of an architecture is at its optimum.

With PES and some method to govern the cTDP like in the BIOS, with RyzenAdj, etc. this is possible.

With my own AMD R7 4700U (Renoir) which is a 15w TDP CPU I tested all cTDPs from 10w up to 30w - and the results are astonishing.

The absolute sweet-spot of that APU is between 15w and 16w which leads me to the following findings:

- The APU has been designed for that particular sweet-spot which might sound trivial, but...
- To just take some already existing functional components and just mix them together and hitting exactly that spot is impossible.
- In order to accomplish this AMD must have designed the Zen2-core (not the APU but the core in and of itself) for a sweet-spot of between 1.5w and 2w.
- This not only makes sense from a mobile perspective but also from looking at the server-space where they deploy 64 core / 128 thread CPUs with a TDP of up to 225w TDP (minus around 100w for the IO-die only). So this makes it a 64 core CPU for around 125w core-only-TDP which is around 2w per core. 

Please have a look at the measurements (MT-only):
![Sweet-Spot-Finding](/Ranking/SweetSpotFinding.png "Sweet-Spot-Finding")


## Change-Log
please see [Releases](https://github.com/BrsVgl/PerformanceEfficiencySuite/releases)
