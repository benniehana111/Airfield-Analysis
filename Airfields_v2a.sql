CREATE TABLE airfields (
	GPS_Code VARCHAR(4) NOT NULL,
	af_name VARCHAR,
	continent VARCHAR,
	country VARCHAR,
	region VARCHAR,
	af_type VARCHAR,
	latitude FLOAT(24),
	longitude FLOAT(24),
	elevation SMALLINT,
	runway_L SMALLINT,
	freq_code SMALLINT,
	airline_code SMALLINT,
	PRIMARY KEY (GPS_Code),
	UNIQUE (GPS_Code)
);
