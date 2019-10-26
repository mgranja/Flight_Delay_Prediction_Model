## Flight_Delay_Prediction_Model
# Project 3 : Telling a Story with Data Visualization

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
PlotlyJavaScript<br />  
Cloud-Amazon AWS
<br />
Tableau
<br />

# Analyzing the Bureau of Transportation Statistics Data
<br />

 ### Team Members : Marylu Granja , Cesar Martinez , Saj Khan
 
 <br />
 
 ![O'Hare International Airport - ORD](ORD.png)

<br />
 
 ## Summary

For this project we analyzed the 115th US House of Representative data to visually represent the gender, party and age composition of the congress members. 
Using API calls we generated the member contact and profile information from *https://projects.propublica.org/api-docs/congress-api/members/#lists-of-members. 

Using this data and leveraging JavaScript and DOM Manipulation we created a HTML webpage and used the dataset to create a filtered dataset so that citizens can look for their state's respective representatives easily.

### Add Marylu's Section
### Add Cesar's Section 

# Filtered Table
<br />

### Example 1 : Hawaii 

![Find Your State's Representative](Filtered_Table_HI.png)

### Example 2 : Illinois

![Find Your State's Representative](Filtered_Table_IL.png)

### Steps to create the filtered table
Step 1 : API Calls <br />
```python
import pandas as pd

id = []
first_name = []
last_name = []
party = []
state = []
district =[]
gender = []
date_of_birth = []
url = []
twitter_account = []
```
```python
import json
import requests
import api_keys as AK

def proAPI():
	api_key  = AK.api_key 
	#url = "https://api.propublica.org/congress/v1/115/senate/members.json"
	# get recent bills
	url = "https://api.propublica.org/congress/v1/115/house/members.json"
	r = requests.get(url,headers={"X-API-KEY":""})
	return r.content
	#return r.content

def print_data(data):
	r = json.loads(data)
	members = r['results'][0]['members']
	for i in range(len(members)):
		id.append(members[i]['id'])
#		print(members[i]['id'])
		first_name.append(members[i]['first_name'])
		last_name.append(members[i]['last_name'])
		party.append(members[i]['party'])
		state.append(members[i]['state'])
		district.append(members[i]['district'])
		gender.append(members[i]['gender'])
		date_of_birth.append(members[i]['date_of_birth'])
		twitter_account.append(members[i]['twitter_account'])
		url.append(members[i]['url'])
#		print ("")


if __name__ == '__main__':
	data = proAPI()
	print_data(data)
```


Step 2 & Step 3: Create Dictionary & Create Data Frame <br />
```python
import pandas
Congress_dict = {
    #"id": id,
    "first_name":first_name,
    "last_name":last_name, 
    "party":party, 
    "state": state,
    "district": district,
    "gender":gender, 
    "date_of_birth":date_of_birth, 
    "twitter_account": twitter_account,
    "url":url
}

Congress_data = pd.DataFrame(Congress_dict)

Congress_data.count()
```
Step 4 : Convert object datatype to datetime to calculate age off of DOB <br />
```python
import datetime
Congress_data['date_of_birth'] =  pd.to_datetime(Congress_data['date_of_birth'])
#Congress_data.head()
Congress_data.dtypes
```
```python
import datetime as DT
import io
import numpy as np
import pandas as pd

pd.options.mode.chained_assignment = 'warn'

now = pd.Timestamp('now')
Congress_data['age'] = (now - Congress_data['date_of_birth']).astype('<m8[Y]')    # 3
Congress_data.head()
```
Step 5 : Jsonify the dataframe <br />

```python
Congress_data.to_json(orient='records')
```
Step 6 : Add APP.js , Style.css and Index Files to add the filtred data webpage <br />

### Visualizations of Propublica Data
Using the python df.describe() function we deduced that the average age of congress members is a little over 60 years. The youngest member is 35 years of afe and the oldest member is 90 years of age. <br />
Further more using Matplotlib.pyplot histograms for visual representation we uncovered that most of the congress members were within 50-70 years of age. <br />
![115th US House Members - Age Histogram](115th_US_House_Members_Age_Histogram.png)
 <br />
 Per the data, Democrats are older as a group compared to the republicans.
 <br />
![115th US House Members - Average Age by Party](Avg_Age_By_Party.png)

 <br />
 We also built a chart to compare the average age of members by their home state. 
 <br />
 
 ![Avg Age of 115th Congressmembers by their home state](Age_BY_STATE.png)

<br />

Using the same pyplot package we represested the counts of Congress members by Gender and by Party.

<br />

![115th US House Members - Male vs Female - Number of Congress members](Gender.png)

<br />

![115th US House Members - Republicans vs Democrats - Number of Congress members](Party.png)


