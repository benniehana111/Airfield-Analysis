-- Create tables for AirfieldsDB
CREATE TABLE Airfields (
	ident VARCHAR(4) NOT NULL,
	airport_name VARCHAR,
	IATA_code VARCHAR(4),
	airfield_size VARCHAR,
	latitude DOUBLE PRECISION,	
	longitude DOUBLE PRECISION,
	elevation INTEGER,
	continent VARCHAR,
	continent_code VARCHAR,
	country VARCHAR,
	country_code VARCHAR,
	region VARCHAR,
	region_code VARCHAR,
	municipality VARCHAR,
	scheduled_service BOOLEAN,
	wikipedia_URL VARCHAR,
	PRIMARY KEY (ident)
);
	
CREATE TABLE Runways (
	ident VARCHAR(4) NOT NULL,
	runway_ID VARCHAR,
	rlength INTEGER,
	rwidth INTEGER,
	rsurface VARCHAR,
	FOREIGN KEY (ident) REFERENCES Airfields (ident),
	PRIMARY KEY (ident)
);
	
CREATE TABLE Signals (
	ident VARCHAR(4) NOT NULL,
	freq_code VARCHAR,
	freq_name VARCHAR,
	navaid_name VARCHAR,
	navaid_code VARCHAR,
	frequency REAL,
	FOREIGN KEY (ident) REFERENCES Airfields (ident),
	PRIMARY KEY (ident)
);
	
CREATE TABLE Airlines (
	ident VARCHAR(4) NOT NULL,
	airline_name VARCHAR,
	airline_code VARCHAR,
	FOREIGN KEY (ident) REFERENCES Airfields (ident),
	PRIMARY KEY (ident)
);