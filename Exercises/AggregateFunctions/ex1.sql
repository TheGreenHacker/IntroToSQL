USE cinema_booking_system;

SHOW tables;

DESC bookings;
DESC screenings;
DESC films;
DESC customers;
DESC seats;
DESC reserved_seats;
DESC rooms;

-- 1. How many bookings did customer id 10 make in October 2017? -- 
SELECT COUNT(*) FROM bookings WHERE customer_id = 10;

-- 2. Count the number of screenings for Blade Runner 2049 in October 2017 --
SELECT COUNT(*) FROM screenings
JOIN films ON screenings.film_id = films.id 
WHERE films.name = "Blade Runner 2049";

-- 3. Count the number of unique customers who made a booking for October 2017 --
SELECT COUNT(DISTINCT customer_id) FROM bookings;