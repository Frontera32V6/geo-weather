-- Create the table
DROP TABLE IF EXISTS cities;
CREATE TABLE cities (
    id BIGINT PRIMARY KEY,
    city TEXT,
    lat DOUBLE PRECISION,
    lng DOUBLE PRECISION,
    country TEXT,
    iso2 TEXT,
    iso3 TEXT,
    admin_name TEXT,
    capital TEXT,
    population DOUBLE PRECISION
);

-- Copy the data
COPY cities(city, lat, lng, country, iso2, iso3, admin_name, capital, population, id)
FROM '/docker-entrypoint-initdb.d/data.csv'
WITH (
    FORMAT csv,
    HEADER true,
    DELIMITER ',',
    QUOTE '"',
    NULL '\N'
);

-- Add common indexes
CREATE INDEX idx_cities_country ON cities(country);
CREATE INDEX idx_cities_city ON cities(city);
CREATE INDEX idx_cities_population ON cities(population);
