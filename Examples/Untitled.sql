USE test;

-- Add primary key to id fields in pets and people tables
ALTER TABLE people
ADD PRIMARY KEY (id);

ALTER TABLE pets
ADD PRIMARY KEY (id);

-- 