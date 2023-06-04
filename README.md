BIST Stock Analysis with quantmod
This code uses the quantmod package in R to analyze Borsa Istanbul (BIST) stock data. It fetches historical stock prices for a selection of stocks from the BIST100 index, visualizes candlestick charts, adds various technical indicators, and performs analysis.

Requirements
R (version X.X.X)
quantmod (version X.X)
Installation
Make sure you have R installed on your system. You can download it from R Project.

Install the required package, quantmod, by running the following command in R:

R
Copy code
install.packages("quantmod")
Load the quantmod package in your R script or R console using:

R
Copy code
library(quantmod)
Usage
Open an R script or R console.

Load the quantmod library using the library(quantmod) command.

Copy and paste the provided code into your R script or run each line individually in the R console.

Modify the code as needed to analyze different stocks or adjust the analysis parameters.

Run the code to fetch stock data, generate visualizations, and perform analysis.

Examples
Candlestick Charts
The following code generates candlestick charts for the stock "PETKM.IS" from the BIST100 index:

R
Copy code
chartSeries(PETKM.IS, type = "candlestick", subset = "2020-03-01::2020-07-11", theme = chartTheme("white"))
You can modify the parameters to plot different stocks and adjust the date range.

Technical Indicators
The code also demonstrates adding various technical indicators to the charts. For example, to add Bollinger Bands and Relative Strength Index (RSI) to the candlestick chart:

R
Copy code
addBBands(n = 10, sd = 2, draw = "width")
addBBands(n = 50, sd = 4, draw = "percent")
addBBands(n = 150, sd = 6)
addRSI()
Again, feel free to modify the parameters to suit your analysis needs.

License
This project is licensed under the MIT License.

Acknowledgments
The code uses the quantmod package, which is a powerful tool for financial analysis in R.

If you have any questions or need further assistance, please contact me at ademhat10@gmail.com
