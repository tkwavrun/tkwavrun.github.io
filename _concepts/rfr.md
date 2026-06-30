---
layout: concept
title: "Regression Fringe Slope"
order: 3
---
Taken from the Kemppainen et al. ([10.1038/s44172-026-00669-6](https://www.nature.com/articles/s44172-026-00669-6))

Mechanical behavior in MD simulations are typically evaluated through stress-strain curves. However, MD-generated stress-strain curves are often obscured by thermal noise from atomic vibrations. This noise complicates the reliable derivation of mechanical properties and hinders objective and reproducible analysis. The noise in the stress-strain curves has been removed by using a Butterworth low-pass filter, enabling clearer interpretation of stress-strain data. Building on this, a novel analysis framework the Regression Fringe Response (RFR) was introduced by to systematically determine the Young’s modulus, yield strength, and Poisson’s ratio from filtered stress-strain curves.

Careful data filtering using a low-pass Butterworth filter allows the removal of thermal noise, and a novel method to extract the elastic behavior from a simulated polymer without the use of any numeric fit parameters. The model has been demonstrated to work very well, and links to it's code can be found on our "Code" page.

[RFR Figure 1]
