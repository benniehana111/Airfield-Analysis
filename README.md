
# Airfield-Analysis

## Topic

This project will automate collection of data on airfields in various regions of the Pacific Ocean, build an airfield database, and employ a neural network model to classify airfields based on the number, length, and surface material of their runway(s), aviation support facilities and usage. 

## Rationale

I consult with aerospace companies, investors, and other interested parties who need to understand business opportunities for new types of aircraft in Pacific Ocean regions.

## Data Description

The data required for this study comes from two principal sources: Google Earth and Wikipedia. 

Google Earth allows us to search selected geographic regions to identify all of the airfields located in each region and to compile a list of airfield names and/or alphanumeric codes that identify each airfield located within that region. The list of airfields collected from Google Earth are used to search Wikipedia for URLs that provide detailed information on each airfield. Wikipedia provides consistently formatted information on each airfield including: 

(1) Number of runways  
(2) Runway length/width  
(3) Runway surface type  
(4) Airfield type  
(5) Airfield size  

![alt text](https://github.com/benniehana111/Airfield-Analysis/blob/main/Images/Wikipedia_Saipan_Intl_Airport.png)

![alt text](https://github.com/benniehana111/Airfield-Analysis/blob/main/Images/Wikipedia_Maloelap_Airport_Taroa_Airfield.png)


### Variable Analysis

Both (1) Number of runways and (2) runway length/width are readily observable quantitative variables ... they can be collected from reported values on Wikipedia, or 
collected directly from mensuration of satellite images on Google Earth. These variables are in integer format.

(3) Runway surface type is recorded for all airfields with Wikipedia pages.This variable is in string format. It is a categorical variable; each surface type is a distinct physical characteristic of an airfield's runway(s). The surface types reported in Wikipedia are: 

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

(4) Airfield types are an analyst-generated variable based on descriptive information contained in Wikipedia articles on individual airfields. This variable is in string format. It is a categorical variable; each airport type is a distinct mode of airfield operations characteristic of the organizations who use the airfield. The airfield types are:

Commercial - airfields with scheduled commercial service - well maintained runways with paved surfaces - support facilities including terminals, control towers, hangars, refueling.  
General - public airfields - adequate runway maintenance with variety of surfaces - limited support facilities.  
Air taxi - airfields with unscheduled air taxi service - limited maintenance of typically unpaved surfaces - no support facilities.  
Unimproved -  airfields will have completely unmaintained surfaces (usually grass) - no support facilities.  
Military - military airfields are a wildcard; they can range from meticulously maintained, high tech facilities to unmaintained, unsupported training sites.  

This variable is an imperfect proxy for the condition of runways and support facilities. 

An additional variable in our sample dataset is:
(5) Airfield size is an analyst-generated heuristic based on variables (1) thru (4) . This variable is in integer format. It is a categorical variable that bins airfields based on their overall capacity to sustain air operations. The airfield sizes are:

#3 - airfields with multiple runways over 7,800 ft in length.  
#2 - airfields with multiple runways under 7,800 ft in length, or single runways with hard surfaces at least 7,800 ft in length.  
#1 - airfields with some combination of: single runways over 4,200 ft in length, regular air service, support facilities.  
#0 - airfields with some combination of single runways under 4,200 ft in length, lack of regular air service, no support facilities.  

Wikipedia provides text narratives (and occasionally tables) with additional information on airfield geography, history, and operations. This additional information is available for some but not all airfields. These include:

(6) aviation support facilities  
(7) commercial carriers and flights  
(8) air traffic statistics  

I will explore options to webscrape this data and to automate creation of variable (4).

### Model Selection

I have previously compiled a version of this dataset for islands in the Northern Pacific Ocean.

![alt text](https://github.com/benniehana111/Airfield-Analysis/blob/main/Images/North_Pacific_airfield_map.png)

I will use web scraping to automate collection of variables (1), (2), (3), and (4) for the Southern Pacific Ocean. Variable (4) may require some manual analysis to complete. Then I will use the Northern Pacific airfield dataset as training data for a neural network model that will machine-generate variable (5).

## Objectives

Compiling this data will create a useful reference dataset that can be uploaded and browsed in Google Earth. Automating creation of this dataset will save large amounts of work required for manual data collection and analysis. The neural network model will provide a  classification schema for use in detailed transportation studies that inform decisions involving, aircraft basing, aircraft routing, and investments in upgrading existing airfields and/or developing new facilities.
