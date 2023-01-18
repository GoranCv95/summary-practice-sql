-- CREATE TABLE cities (
--     name VARCHAR(50) PRIMARY KEY
-- );

-- CREATE TABLE locations (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     title VARCHAR(50),
--     street VARCHAR(50) NOT NULL,
--     house_number VARCHAR(10) NOT NULL,
--     postal_code VARCHAR(5) NOT NULL,
--     city_name VARCHAR(50) REFERENCES cities ON DELETE RESTRICT ON UPDATE CASCADE
-- );

-- CREATE TABLE users (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     first_name VARCHAR(30) NOT NULL,
--     last_name VARCHAR(30) NOT NULL,
--     birthdate DATE NOT NULL,
--     email VARCHAR(30) NOT NULL
-- );

-- CREATE TABLE organizers(
--     password VARCHAR(50) NOT NULL,
--     user_id INT PRIMARY KEY REFERENCES users (id) ON DELETE CASCADE
-- );

-- CREATE TABLE tags (
--     name VARCHAR(30) PRIMARY KEY
-- );

-- CREATE TABLE events (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     name VARCHAR(30) NOT NULL CHECK (LENGTH(name) > 5),
--     date_planned TIMESTAMP NOT NULL,
--     image VARCHAR(300),
--     description TEXT NOT NULL,
--     max_participants INT CHECK (max_participants > 0),
--     min_age INT CHECK (min_age > 0),
--     location_id INT REFERENCES locations (id) ON DELETE CASCADE,
--     organizer_id INT REFERENCES organizers (user_id) ON DELETE CASCADE
-- );

CREATE TABLE events_users (
    event_id INT REFERENCES events (id) ON DELETE CASCADE,
    user_id INT REFERENCES users (id) ON DELETE CASCADE,
    PRIMARY KEY (event_id, user_id)
);

-- CREATE TABLE events_tags (
--     event_id INT REFERENCES events (id) ON DELETE CASCADE,
--     tag_name VARCHAR(30) REFERENCES tags (id) ON DELETE CASCADE,
--     PRIMARY KEY (event_id, tag_name)
-- );