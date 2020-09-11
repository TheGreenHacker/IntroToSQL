USE cinema_booking_system;

DESC customers;
DESC bookings;
DESC reserved_seats;
DESC screenings;
DESC films;

-- 1. Select the customer id and count the number of reserved seats grouped by customers --
SELECT bookings.customer_id, COUNT(*) FROM reserved_seats
JOIN bookings on reserved_seats.booking_id = bookings.id
GROUP BY bookings.customer_id;

-- 2. Select the film name and count the number of screenings for each film over 2 hours long --
SELECT films.name, films.length_min, COUNT(*) FROM screenings
JOIN films on screenings.film_id = films.id
GROUP BY films.name
HAVING films.length_min > 120; 