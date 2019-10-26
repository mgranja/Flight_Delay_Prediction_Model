## Flight Delay Prediction Model ##
 <br /> Project 3 : Telling a Story with Data Visualization <br />

## Analyzing the Bureau of Transportation Statistics Data ##
 <br />

 ### Team Members : Marylu Granja , Cesar Martinez , Saj Khan 
 
 <br />
 
 ![O'Hare International Airport - ORD](ORD.png)

<br />
Apply Data Sceince Packages to create a machine learning model and tell a story with data visualization BI Tools.
<br />
Used the following resources for the project
<br />
Python
<br />
Pandas 
<br />
Python Matplotlib 
<br />  
Cloud-Amazon AWS
<br />
Tableau
<br />
 
 ## Summary

<br />

For this project we analyzed the Air Traffic Data downloaded from the US Bureau of Transportation Statistics for Chicago O'Hare Airport.

<br />

*https://www.transtats.bts.gov/ONTIME/Departures.aspx.*

<br />

We leveraged Tableau to create basic visualizations to understand the robustness of our data and to find the busiest routes and airlines.

<br />

![Tableau Dashboard](TableauDashboard.png)

<br />

*https://public.tableau.com/profile/saj.khan6439#!/vizhome/flightdata_Saj/AirportDashboard?publish=yes*

<br />
We then analyzed data from 2010 to 2018 to build a predictive model using scikit learn and Random Forest to predict the likely hood of a particular flight being delayed.

<br />

Furthermore using API calls from *https://www.flightstats.com/v2/* we compared the 2019 actual data with our predictive model to understand whether our model is a good fit.
<br />

### ETL - Bureau of Transportation Statistics Data

The bureau provided indivisual csv files for each airlines. We used an Alteryx workflow to combine all the files into one csv file for easier consumption via Tableau for our visualization exercise. 
We also used Alteryx to sort our data by Airline and by day and also we dropped a few unwanted columns to make the size of the file smaller.

![Alteryx Dashboard](Alteryx.png)


### Add Marylu's Section
### Add Cesar's Section 


