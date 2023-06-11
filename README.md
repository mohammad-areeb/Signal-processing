# Glucose Data Analysis

This repository contains code for analyzing glucose data collected on different dates. The code performs various operations, including reading data from a CSV file, applying filters, calculating the frequency spectrum, and identifying peaks in the data. The details of the code and its functionality are explained below.

## Prerequisites
To run this code, you need the following:

* MATLAB installed on your local machine. *
2. The glucose data file named "glucose-data.csv" should be present in the same directory as the code file.

## Code Explanation
The code is divided into sections, each corresponding to a specific date's glucose data analysis. Here's a breakdown of each section:

### Data Analysis for 23rd February 2021
The code reads the glucose data for 23rd February 2021 from the CSV file using the csvread function.
The frequency spectrum of the blood sugar data is calculated using the Fast Fourier Transform (FFT).
A low-pass filter is designed using the Butterworth filter design method.
The filter is applied to the blood sugar data to obtain the filtered data.
The filtered data is plotted along with the original data.
Peaks in the filtered data are identified and marked on the plot.
Data Analysis for 3rd March 2021
The code follows a similar procedure as for the 23rd February 2021 data, but for the glucose data collected on 3rd March 2021.
Data Analysis for 3rd March 2022
The code follows the same procedure as for the previous datasets, but for the glucose data collected on 3rd March 2022.
Data Analysis for 23rd February 2022
The code follows the same procedure as for the previous datasets, but for the glucose data collected on 23rd February 2022.
How to Use
To use this code, follow these steps:

Make sure you have MATLAB installed on your machine.
Place the "glucose-data.csv" file in the same directory as the code file.
Open the MATLAB software and navigate to the directory where you saved the code file.
Run the code by executing it section by section or all at once.
The code will generate plots for each dataset, showing the frequency spectrum, original data, filtered data, and identified peaks.
Feel free to modify the code according to your requirements and experiment with different parameters and data.

License
This code is released under the MIT License.
