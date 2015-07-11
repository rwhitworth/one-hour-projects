# Charting in JavaScript and HTML

For this project I used the <a href="https://github.com/mbostock/d3">d3</a> based <a href="https://github.com/masayuki0812/c3">c3</a> charting library to create charts from CSV files.  At $WORK we sometimes have a need to quickly generate graphs in a consistent format.  Dropping CSV files into a directory already containing the HTML templates and loading a webpage could be a solution, so testing this theory here a bit.

Notes:
* C3 cannot handle multiple hundreds of data points.  100 data points worked fine on my laptop, but 500+ data points graphed too slow to be considered usable, and 20,000 data points... well, lets call it not a success.

Files:
* charts.html - Webpage with two charts pulling from data.csv and data2.csv
* gen_data.sh - bash shell script to generate random data for data.csv and data2.csv
* data.csv and data2.csv - data files with random data
* c3.css and c3.min.js - Files from the c3 project
* d3.min.js - File from the d3 project
