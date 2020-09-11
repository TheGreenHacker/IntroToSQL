USE test;

-- Add primary key to id fields in pets and people tables
ALTER TABLE people
ADD PRIMARY KEY (id);

ALTER TABLE pets
ADD PRIMARY KEY (id);

DESC people;
DESC pets;

-- Add foreign key to owner_id field in pets table to reference id field in people table
ALTER TABLE pets
ADD CONSTRAINT FK_PetsPeople
FOREIGN KEY (owner_id) REFERENCES people(id);

DESC pets;

-- Add column named email to people table
ALTER TABLE people
ADD email VARCHAR (30);

DESC people;

-- Add unique constraint to email column in people table
ALTER TABLE people
ADD CONSTRAINT u_email UNIQUE (email);

DESC people;

-- Rename name column in pets table to first_name
ALTER TABLE pets CHANGE `name` `first_name` VARCHAR(20);

DESC pets;

-- Change postcode data type to CHAR(7) in addresses table
ALTER TABLE addresses MODIFY postcode VARCHAR(7);

DESC addresses;