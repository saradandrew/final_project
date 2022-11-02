-- Creating tables for FinalProjectDB
	CREATE TABLE Population_2019 (
	    state_name VARCHAR(20) NOT NULL,
	    popestimate INT NOT NULL,
		  lat NUMERIC NOT NULL,
			long NUMERIC NOT NULL,
	    PRIMARY KEY (state_name)
	);
	

	SELECT * FROM Population_2019
	
	CREATE TABLE Population_2020 (
			state_name VARCHAR(20) NOT NULL,
	    state_id VARCHAR(5) NOT NULL,
			census_2020 INT NOT NULL,
			percent_of_total NUMERIC NOT NULL,
	FOREIGN KEY (state_name) REFERENCES Population_2019 (state_name),
	    PRIMARY KEY (state_name, state_id)
	);
	

	SELECT * FROM Population_2020
	
	CREATE TABLE Population_2021 (
	    state_name VARCHAR(20) NOT NULL,
	    pop_1990 INT NOT NULL,
			pop_2000 INT NOT NULL,
			pop_2010 INT NOT NULL,
			pop_2020 INT NOT NULL,
			pop_2021 INT NOT NULL,
			change2020_21 NUMERIC NOT NULL,
	FOREIGN KEY (state_name) REFERENCES Population_2019,
	    PRIMARY KEY (state_name)
	);
	

	SELECT * FROM Population_2021
	

	CREATE TABLE Zillow (
		state_name VARCHAR(20) NOT NULL,
		jan19 INT NOT NULL,
		feb19 INT NOT NULL,
		mar19 INT NOT NULL,
		apr19 INT NOT NULL,
		may19 INT NOT NULL,
		jun19 INT NOT NULL,
		jul19 INT NOT NULL,
		aug19 INT NOT NULL,
		sep19 INT NOT NULL,
		oct19 INT NOT NULL,
		nov19 INT NOT NULL,
		dec19 INT NOT NULL,
		jan20 INT NOT NULL,
		feb20 INT NOT NULL,
		mar20 INT NOT NULL,
		apr20 INT NOT NULL,
		may20 INT NOT NULL,
		jun20 INT NOT NULL,
		jul20 INT NOT NULL,
		aug20 INT NOT NULL,
		sep20 INT NOT NULL,
		oct20 INT NOT NULL,
		nov20 INT NOT NULL,
		dec20 INT NOT NULL,
		jan21 INT NOT NULL,
		feb21 INT NOT NULL,
		mar21 INT NOT NULL,
		apr21 INT NOT NULL,
		may21 INT NOT NULL,
		jun21 INT NOT NULL,
		jul21 INT NOT NULL,
	FOREIGN KEY (state_name) REFERENCES Population_2019 (state_name),
	    PRIMARY KEY (state_name)
	);
	

	SELECT * FROM Zillow
	

	CREATE TABLE RDC_state_metrics (
		report_date  VARCHAR(10) NULL,
		state_name VARCHAR(20) NOT NULL,
		state_id VARCHAR(5) NOT NULL,
		median_listing_price INT NOT NULL,
		average_listing_price INT NOT NULL,
		median_listing_price_per_square_foot INT NOT NULL,
		median_square_feet INT NOT NULL,
		total_listing_count INT NOT NULL,
		active_listing_count INT NOT NULL,
		new_listing_count INT NOT NULL,
		price_increased_count INT NOT NULL,
		price_reduced_count INT NOT NULL,
		pending_listing_count INT NOT NULL,
		median_days_on_market INT NOT NULL,
	FOREIGN KEY (state_name) REFERENCES Population_2019 (state_name),
        PRIMARY KEY (report_date, state_name, state_id)
	);

	SELECT * FROM RDC_state_metrics
