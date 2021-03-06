USE cinema_booking_system;

CREATE TABLE seats (
  id INT PRIMARY KEY AUTO_INCREMENT,
  letter CHAR(1) NOT NULL,
  number INT NOT NULL,
  room_id INT NOT NULL,
  FOREIGN KEY (room_id) REFERENCES rooms(id)
);

DESC seats;