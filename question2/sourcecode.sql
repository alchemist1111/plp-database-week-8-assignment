-- Create the database
CREATE DATABASE contact_bookdb;

-- Use the database
USE contact_bookdb; 

-- Creating the tables
-- Contacts table
CREATE TABLE contacts (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100),
  email VARCHAR(100),
  phone_number VARCHAR(15)
);

-- Address table
CREATE TABLE addresses (
  id INT AUTO_INCREMENT PRIMARY KEY,
  contact_id INT,
  address VARCHAR(255),
  FOREIGN KEY (contact_id) REFERENCES contacts(id)
);

-- Inserting data into the tables
-- Contact table
INSERT INTO contacts (name, email, phone_number) 
VALUES 
    ('John Doe', 'johndoe@example.com', '1234567890'),
    ('Jane Smith', 'janesmith@example.com', '0987654321'),
    ('Tom Brown', 'tombrown@example.com', '1122334455'),
    ('Alice Johnson', 'alice.johnson@example.com', '2233445566'),
    ('Bob Martin', 'bob.martin@example.com', '3344556677'),
    ('Charlie Evans', 'charlie.evans@example.com', '4455667788'),
    ('David White', 'david.white@example.com', '5566778899'),
    ('Emma Clark', 'emma.clark@example.com', '6677889900'),
    ('Frank King', 'frank.king@example.com', '7788990011'),
    ('Grace Lee', 'grace.lee@example.com', '8899001122'),
    ('Hannah Harris', 'hannah.harris@example.com', '9900112233'),
    ('Ivy Scott', 'ivy.scott@example.com', '1012233445'),
    ('Jack Walker', 'jack.walker@example.com', '2123344556'),
    ('Karen Carter', 'karen.carter@example.com', '3234455667'),
    ('Leo Mitchell', 'leo.mitchell@example.com', '4345566778'),
    ('Megan Davis', 'megan.davis@example.com', '5456677889'),
    ('Nina Lewis', 'nina.lewis@example.com', '6567788990'),
    ('Oscar Adams', 'oscar.adams@example.com', '7678899001'),
    ('Paul Bell', 'paul.bell@example.com', '8789900112'),
    ('Quincy Cooper', 'quincy.cooper@example.com', '9891001122'),
    ('Rachel Young', 'rachel.young@example.com', '1092112233'),
    ('Steve King', 'steve.king@example.com', '2203223344'),
    ('Tina Robinson', 'tina.robinson@example.com', '3314334455'),
    ('Uma Nelson', 'uma.nelson@example.com', '4425445566'),
    ('Victor Baker', 'victor.baker@example.com', '5536556677'),
    ('Wendy Perez', 'wendy.perez@example.com', '6647667788'),
    ('Xander Brooks', 'xander.brooks@example.com', '7758778899'),
    ('Yvonne Moore', 'yvonne.moore@example.com', '8869889000'),
    ('Zane Green', 'zane.green@example.com', '9970990111'),
    ('Avery Knight', 'avery.knight@example.com', '1082101222'),
    ('Brett Hill', 'brett.hill@example.com', '2193212333'),
    ('Clara Gomez', 'clara.gomez@example.com', '3304323444'),
    ('Derek Foster', 'derek.foster@example.com', '4415434555'),
    ('Ella Rivera', 'ella.rivera@example.com', '5526545666'),
    ('Frankie Adams', 'frankie.adams@example.com', '6637656777'),
    ('Gina Grant', 'gina.grant@example.com', '7748767888'),
    ('Holly King', 'holly.king@example.com', '8859878999'),
    ('Ian Scott', 'ian.scott@example.com', '9960989000'),
    ('Jade Cooper', 'jade.cooper@example.com', '1072090111'),
    ('Keith Allen', 'keith.allen@example.com', '2183101222'),
    ('Lana Evans', 'lana.evans@example.com', '3294212333'),
    ('Miles Robinson', 'miles.robinson@example.com', '4405323444'),
    ('Nina Mitchell', 'nina.mitchell@example.com', '5516434555'),
    ('Olivia James', 'olivia.james@example.com', '6627545666'),
    ('Patrick Brown', 'patrick.brown@example.com', '7738656777'),
    ('Quinn Carter', 'quinn.carter@example.com', '8849767888'),
    ('Riley White', 'riley.white@example.com', '9950878999'),
    ('Sophia Bell', 'sophia.bell@example.com', '1061989000'),
    ('Tyler Lee', 'tyler.lee@example.com', '2173090111'),
    ('Ursula Wright', 'ursula.wright@example.com', '3284101222'),
    ('Victor Howard', 'victor.howard@example.com', '4395212333'),
    ('Wendy Harris', 'wendy.harris@example.com', '5506323444'),
    ('Xander Young', 'xander.young@example.com', '6617434555');

-- Address table
INSERT INTO addresses (contact_id, address) 
VALUES 
    (LAST_INSERT_ID(), '123 Main St, Springfield, IL'),
    (LAST_INSERT_ID(), '456 Oak St, Dallas, TX'),
    (LAST_INSERT_ID(), '789 Pine St, Atlanta, GA'),
    (LAST_INSERT_ID(), '101 Maple St, Denver, CO'),
    (LAST_INSERT_ID(), '202 Birch St, Miami, FL'),
    (LAST_INSERT_ID(), '303 Cedar St, Seattle, WA'),
    (LAST_INSERT_ID(), '404 Elm St, San Francisco, CA'),
    (LAST_INSERT_ID(), '505 Cherry St, Chicago, IL'),
    (LAST_INSERT_ID(), '606 Willow St, Los Angeles, CA'),
    (LAST_INSERT_ID(), '707 Ash St, New York, NY'),
    (LAST_INSERT_ID(), '808 Redwood St, Boston, MA'),
    (LAST_INSERT_ID(), '909 Pine St, Portland, OR'),
    (LAST_INSERT_ID(), '1001 Maple St, Phoenix, AZ'),
    (LAST_INSERT_ID(), '1101 Oak St, Houston, TX'),
    (LAST_INSERT_ID(), '1201 Birch St, San Diego, CA'),
    (LAST_INSERT_ID(), '1301 Cedar St, Austin, TX'),
    (LAST_INSERT_ID(), '1401 Elm St, Miami, FL'),
    (LAST_INSERT_ID(), '1501 Willow St, Denver, CO'),
    (LAST_INSERT_ID(), '1601 Cherry St, Dallas, TX'),
    (LAST_INSERT_ID(), '1701 Ash St, Seattle, WA'),
    (LAST_INSERT_ID(), '1801 Maple St, San Francisco, CA'),
    (LAST_INSERT_ID(), '1901 Oak St, Chicago, IL'),
    (LAST_INSERT_ID(), '2001 Birch St, Los Angeles, CA'),
    (LAST_INSERT_ID(), '2101 Cedar St, Portland, OR'),
    (LAST_INSERT_ID(), '2201 Elm St, New York, NY'),
    (LAST_INSERT_ID(), '2301 Willow St, Houston, TX'),
    (LAST_INSERT_ID(), '2401 Cherry St, Phoenix, AZ'),
    (LAST_INSERT_ID(), '2501 Ash St, Austin, TX'),
    (LAST_INSERT_ID(), '2601 Maple St, Boston, MA'),
    (LAST_INSERT_ID(), '2701 Oak St, Miami, FL'),
    (LAST_INSERT_ID(), '2801 Birch St, Portland, OR'),
    (LAST_INSERT_ID(), '2901 Cedar St, San Diego, CA'),
    (LAST_INSERT_ID(), '3001 Elm St, Los Angeles, CA'),
    (LAST_INSERT_ID(), '3101 Willow St, Dallas, TX'),
    (LAST_INSERT_ID(), '3201 Cherry St, Seattle, WA'),
    (LAST_INSERT_ID(), '3301 Ash St, San Francisco, CA'),
    (LAST_INSERT_ID(), '3401 Maple St, Houston, TX'),
    (LAST_INSERT_ID(), '3501 Oak St, Portland, OR'),
    (LAST_INSERT_ID(), '3601 Birch St, Austin, TX'),
    (LAST_INSERT_ID(), '3701 Cedar St, Chicago, IL'),
    (LAST_INSERT_ID(), '3801 Elm St, Phoenix, AZ'),
    (LAST_INSERT_ID(), '3901 Willow St, Miami, FL'),
    (LAST_INSERT_ID(), '4001 Cherry St, Seattle, WA'),
    (LAST_INSERT_ID(), '4101 Ash St, Boston, MA'),
    (LAST_INSERT_ID(), '4201 Maple St, Dallas, TX'),
    (LAST_INSERT_ID(), '4301 Oak St, San Francisco, CA'),
    (LAST_INSERT_ID(), '4401 Birch St, New York, NY'),
    (LAST_INSERT_ID(), '4501 Cedar St, Portland, OR');


