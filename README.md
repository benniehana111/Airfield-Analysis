# Airfield-Analysis

## Topic

This project will automate collection of data on airfields in various regions of the Pacific Ocean, build an airfield database, and employ a neural network model to classify airfields based on their size, runway surface, facilities, and usage. 

## Rationale

I consult with aerospace companies, investors, and other interested parties who need to understand business opportunities for new types of aircraft in Pacific Ocean regions.

## Data Description

The data required for this study comes from two principal sources: Google Earth and Wikipedia.  

Google Earth allows us to search selected geographic regions to identify all the airfields located in each geographic region and to compile a list of airfield names and/or alphanumeric codes that identify each airfield in that region. The list of airfields we collect from Google Earth are used to search Wikipedia for URLs that provide detailed information on each airfield. Wikipedia provides consistently formatted airfield information including: 

(1) Number of runways  
(2) Runway length/width  
(3) Runway surface type  
(4) Use category (military, scheduled commercial service, unscheduled air taxi service, no scheduled service, overgrown).

An additional variable in our sample dataset is:

(5) Airfield class. This category was generated by human analysis of variables 1-4. It assigns each airport into a numeric category from 0 to 3.

*** Variable Analysis

Both (1) Number of runways and (2) runway length/width are readily observable quantitative variables ... they can be collected from reported values on Wikipedia, or 
collected directly from mensuration of satellite images on Google Earth. These variables are in integer format.

(3) Runway surface type is recorded for all airfields with Wikipedia pages, however it is an imperfect measure of the runway's qualitative state; the physical condition of runways with the same surface type may vary widely based on the quality of construction/materials, quality/frequency of subsequent maintenance/repairs, volume/frequency of usage, and local climactic conditions including seasonal temperature variations and events such as flooding/earthquakes. This variable is in string format. It is a categorical variable; each runway surface type is a distinct physical characteristic of an airfield runway. Aggregation across the categories may be useful; e.g.:

(4) Airport types are an imperfect proxy for the condition of runway surfaces, aircraft maintenance & services, and flight control technology. Airfields with scheduled commercial service will generally be in good condtion with support facilities, airfields with unscheduled air taxi service will have poorer runway surfaces with limited support facilities, and overgrown airfields will have completely unmaintained surfaces with no facilities. Military airfields are a wildcard; they can range from meticulously maintained, high tech facilities to unmaintained, unsupported training sites. This variable is in string format. It is a categorical variable; each airport type is a distinct mode of airfield operations characteristic of the organizations who use the airfield. 

Wikipedia also provides text narratives with additional information on airfield geography, history, and operations. Additional information is available for some but not all airfields. These include:

(5) available aircraft services
(6) commercial carriers
(7) air traffic statistics
(8) named entities associated with the airfield and the nature of their association (operations, ownership, management, regulation, construction)

Collecting and/or estimating these variables is not feasible within the time constraints of this project.

## Objectives

Compiling this data will create a useful reference dataset that can be accessed and browsed in Google Earth. Automating this process will save large amounts of work required for manual data collection and analysis. The ML model will generate a classification schema for use in detailed transportation studies that inform decisions involving, aircraft basing, aircraft routing, and investments in upgrading existing airfields and/or developing new facilities.
