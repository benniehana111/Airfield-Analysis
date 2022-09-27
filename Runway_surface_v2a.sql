CREATE TABLE runway_surface (
	GPS_Code VARCHAR(4) NOT NULL,
	surface SMALLINT,
	FOREIGN KEY (GPS_Code) REFERENCES airfields (GPS_Code),
	PRIMARY KEY (GPS_Code),
	UNIQUE (GPS_Code)
);
