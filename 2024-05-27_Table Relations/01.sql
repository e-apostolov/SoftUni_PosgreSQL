-- Option 1

CREATE TABLE mountains (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50)
);

CREATE TABLE peaks (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50),
	mountain_id INT REFERENCES mountains(id)
);

-- Option 2

CREATE TABLE mountains (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50)
);

CREATE TABLE peaks (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50),
	mountain_id INT,
	CONSTRAINT fk_peaks_mountains
		FOREIGN KEY(mountains_id)
			REFERENCES mountains(id)
);

-- Option 3

CREATE TABLE mountains (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50)
)

CREATE TABLE peaks (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50),
	mountain_id INT
)

ALTER TABLE peaks
ADD CONSTRAINT fk_peaks_mountains
	FOREIGN KEY (mountain_id)
		REFERENCES mountains(id)
