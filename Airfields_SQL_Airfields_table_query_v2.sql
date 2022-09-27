CREATE TABLE airfields (
	GPS_Code VARCHAR(4) NOT NULL,
	af_name VARCHAR,
	latitude FLOAT(24),
	longitude FLOAT(24),
	runway_length SMALLINT,
	freq_count SMALLINT,
	airline_count SMALLINT,
	PRIMARY KEY (GPS_Code),
	UNIQUE (GPS_Code)
);