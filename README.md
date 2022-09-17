![alt text](https://github.com/benniehana111/Airfield-Analysis/blob/main/Images/Wikipedia_Saipan_Intl_Airport.png)

Wikipedia sample #2.

![alt text](https://github.com/benniehana111/Airfield-Analysis/blob/main/Images/Wikipedia_Maloelap_Airport_Taroa_Airfield.png)

### Variable Analysis

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

(3) Public and commercial airfields generally have one or more radio stations and navigation beacons; the name and wavelength for each of are reported on airportdatabase.net. I will count the number of radio frequencies and navigation aids to create a numerical variable in integer format.

(4) The name and nationality of each commercial airline providing scheduled service to an airfield are reported on airportdatabase.net. I will count the number of airlines in order to create a numerical variable in integer format.

### Model Selection

I have previously compiled a version of this dataset for islands in the Northern Pacific Ocean: 

![alt text](https://github.com/benniehana111/Airfield-Analysis/blob/main/Images/North_Pacific_airfield_map.png)

I will use web scraping to automate collection of variables (1), (2), (3), and (4) for the Southern Pacific Ocean:  

![alt text](https://github.com/benniehana111/Airfield-Analysis/blob/main/Images/South_Pacific_region.png)

Variable (4) may require some manual analysis to complete. Then I will use the Northern Pacific airfield dataset as training data for a neural network model that will machine-generate variable (5).

## Objectives

Compiling this data will create a useful reference dataset that can be uploaded and browsed in Google Earth. Automating creation of this dataset will save large amounts of work required for manual data collection and analysis. The neural network model will provide a  classification schema for use in detailed transportation studies that inform decisions involving, aircraft basing, aircraft routing, and investments in upgrading existing airfields and/or developing new facilities.

# Technologies Used
## Data Cleaning and Analysis
Pandas will be used to clean the data and perform an exploratory analysis. Further analysis will be completed using Python.

## Database Storage
We will use SQL to store the data.

## Machine Learning
SciKitLearn is the ML library we'll be using to create a classifier. Our training and testing setup is ___. Extra ML verbiage here.

## Dashboard
We will use Tableau to create the dashboard.
