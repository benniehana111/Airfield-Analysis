# Airfield-Analysis

## Topic

This project will automate collection of data on airfields in various regions of the Pacific Ocean, build an airfield database, and employ an unsupervised learning model to classify airfields based on the length/width of their runway(s), surface material of their runway(s), number of radio frequencies and navigation aids, and number of airlines providing scheduled service. 

## Rationale

I consult with aerospace companies, investors, and other interested parties who need to understand business opportunities for new types of aircraft in Pacific Ocean regions.

## Data Description

The data required for this study comes from two principal sources: Airportdatabase.net and Wikipedia. Google Earth can also be used to visually inspect for missing variables.

### Airportdatabase.net:  
This data source allows us to identify all of the airfields in a selected country or region and to collect airfield data including:

Airfield name, GPS and IATA codes  
Latitude, longitude  
Elevation  
Runway length, width  
Number and frequencies of radio stations and navigation aids  
Names of airlines providing scheduled service  
URL for the airfields Wikipedia page  

Airportdatabase.net sample:  

![alt text](https://github.com/benniehana111/Airfield-Analysis/blob/main/Images/AirportsDB_Saipan_Intl_Airport.png)

### Wikipedia:  
The Wikipedia links from airportdatabase.net are used to connect to each airfield's Wikipedia page, to collect more detailed information including:

Runway surface type  
Destinations of connecting flights
Flight statistics  

Wikipedia sample:  

![alt text](https://github.com/benniehana111/Airfield-Analysis/blob/main/Images/Wikipedia_Saipan_Intl_Airport.png)

### Google Earth:  
For airfields with no data available on Wikipedia, they can be located with their latitude/longitude in Google Earth, where runway size and surface can be assessed visually.

Google Earth sample:

![alt text](https://github.com/benniehana111/Airfield-Analysis/blob/main/Images/Google_Earth_Ujae_airstrip.png)

### Variable Analysis:

(1) Runway length/width are recorded for all airfields in airportdatabase.net. This variable is in integer format. It is a continuous variable.
Some airfields in the region have two runways, so we will encode a second runway length variable that will have a value of zero for single runway airfields.

(2) Runway surface type is recorded for all airfields with Wikipedia pages.This variable is in string format. It is a categorical variable; each surface type is a distinct physical characteristic of an airfield's runway(s). The surface types reported in Wikipedia are: 

Asphalt  
Concrete  
Asphalt/concrete  
Paved  
Macadam  
Coral  
Gravel  
Turf/gravel  
Turf  
Grass  

The surface variable is an imperfect measure of a runway's capacity for takeoffs/landings and variety of aircraft that can operate from the airfield. Runways with the same surface type may vary widely based on the quality of construction/materials, quality/frequency of subsequent maintenance/repairs, volume/frequency of usage, and local climactic conditions including seasonal temperature variations, precipitation, and events such as flooding/earthquakes.  

Aggregation across surface categories may be useful, i.e., collapsing asphalt, concrete, asphalt/concrete, and paved into a single category.

(3) Public and commercial airfields generally have one or more radio stations and navigation beacons; the name and wavelength for each are reported on airportdatabase.net. A count of the number of radio frequencies and navigation aids will be used to create a numerical variable in integer format.

(4) The name and nationality of each commercial airline providing scheduled service to an airfield are reported on airportdatabase.net. A count of the number of airlines will be used to create a numerical variable in integer format.

### Provisional database:

An earlier, less complete version of this dataset compiled from Wikipedia and Google Earth is available for islands in the Northern Pacific Ocean: This dataset is stored in a .csv file. 

![alt text](https://github.com/benniehana111/Airfield-Analysis/blob/main/Images/North_Pacific_airfield_map.png)

This project will use web scraping to automate collection of data for the Southern Pacific Ocean:  

![alt text](https://github.com/benniehana111/Airfield-Analysis/blob/main/Images/South_Pacific_region.png)

In addition, the original data for the Northern Pacific Ocean will be updated with the information from airportdatabases.net.

### Final database:

The final database will be compiled by webscraping the tabular data for all airfields from airportdatabase.net, then adding runway surface data and missing values collected manually from Wikipedia and Google Earth. The collected data will be transformed with pandas, then loaded into SQL. The SQL database design and entity relationship diagram are in the Airfields.sql, Airfields.pgerd, and Airfields_ERD.png files in the Database branch, Resources folder..

## Model Selection

Initial modeling experiments explored using the provisional dataset as training data for a neural network, then for a multinomial logistic regression. After further analysis -- particularly the implications of finding additional data fields for radio stations, navigation aids, and airline service in airplanedatabase.net -- both of these approaches were discarded. It was decided that the best use of this data was to group airfields into functional categories with an unsupervised learning model.

The available data from airportdatabase.net breaks airfields into three categories; small, medium, and large. These categories are not sufficient to distinguish between the functional categories of airfields that are important for operational and strategic analysis. To support this analysis requires segregating airfields into at least six groups based on their operational attributes. To achieve this, an unsupervised machine learning model - K-means clustering - will be used to group the airfields into their functional categories.

The ML model is run in Python using the sklearn library, K-means algorithm.  2D and 3D plots of the airfield clusters are generated with plotly.express and hvplot.pandas.

The provisional model is in the Model branch, Airfields_K-means_algorithm.ipynb file, showing provisional results of the clustering with K = 6. The 3D plot shows a logical clustering of airfields with the same runway surface and similar runway lengths:  

![alt text](https://github.com/benniehana111/Airfield-Analysis/blob/main/Images/20220917_Provisional_cluster_K6.png)

## Objectives

Compiling this data will create a useful reference dataset that can be uploaded and browsed in Google Earth. Automating creation of this dataset will save large amounts of work required for manual data collection and analysis. The clustering analysis will provide a  classification schema for use in detailed transportation studies that inform decisions involving, aircraft basing, aircraft routing, and investments in upgrading existing airfields and/or developing new facilities.
