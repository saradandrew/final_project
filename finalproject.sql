-- Creating tables for Final-ProjectDB
CREATE TABLE performance (
     gender VARCHAR(20) NOT NULL,
     race_ethnicity VARCHAR(20) NOT NULL,
	 parental_education VARCHAR(20) NOT NULL,
	 lunch VARCHAR(20) NOT NULL,
	 test_prep VARCHAR(20) NOT NULL,
	 math_score INT NOT NULL,
	 reading_score INT NOT NULL,
	 writing_score INT NOT NULL
);

CREATE TABLE race (
     race_ethnicity VARCHAR(20) NOT NULL,
	 math_score INT NOT NULL,
	 reading_score INT NOT NULL,
	 writing_score INT NOT NULL
);

CREATE TABLE parentedu (
     parental_education VARCHAR(20) NOT NULL,
	 math_score INT NOT NULL,
	 reading_score INT NOT NULL,
	 writing_score INT NOT NULL
);

CREATE TABLE lunchstat (
     lunch VARCHAR(20) NOT NULL,
	 math_score INT NOT NULL,
	 reading_score INT NOT NULL,
	 writing_score INT NOT NULL
);

CREATE TABLE testprep (
     test_prep VARCHAR(20) NOT NULL,
	 math_score INT NOT NULL,
	 reading_score INT NOT NULL,
	 writing_score INT NOT NULL
);
