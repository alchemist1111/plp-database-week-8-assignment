-- This is a bus booking management system
-- Table creation SQl commands
-- Passengers table
CREATE TABLE Passengers (
    passengerID INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    phoneNumber VARCHAR(15) NOT NULL,
    address VARCHAR(255) NOT NULL
);

-- Routes table
CREATE TABLE Routes (
    routeID INT AUTO_INCREMENT PRIMARY KEY,
    startLocation VARCHAR(100) NOT NULL,
    endLocation VARCHAR(100) NOT NULL,
    departureTime DATETIME NOT NULL,
    arrivalTime DATETIME NOT NULL
);

-- Buses table
CREATE TABLE Buses (
    busID INT AUTO_INCREMENT PRIMARY KEY,
    busNumber VARCHAR(20) NOT NULL UNIQUE,
    capacity INT NOT NULL,
    driverName VARCHAR(100) NOT NULL,
    routeID INT,
    FOREIGN KEY (routeID) REFERENCES Routes(routeID)
);

-- Bookings table
CREATE TABLE Bookings (
    bookingID INT AUTO_INCREMENT PRIMARY KEY,
    passengerID INT,
    busID INT,
    bookingDate DATETIME NOT NULL,
    seatNumber INT NOT NULL,
    FOREIGN KEY (CustomerID) REFERENCES Passengers(passengerID),
    FOREIGN KEY (busID) REFERENCES Buses(busID)
);

-- Payments table
CREATE TABLE Payments (
    paymentID INT AUTO_INCREMENT PRIMARY KEY,
    bookingID INT,
    paymentAmount DECIMAL(10, 2) NOT NULL,
    paymentDate DATETIME NOT NULL,
    paymentStatus VARCHAR(50) NOT NULL,
    FOREIGN KEY (bookingID) REFERENCES Bookings(bookingID)
);


-- Insert into tables commands
-- Insert data into Customers table
INSERT INTO Passengers (name, email, phoneNumber, address) VALUES
('John Doe', 'johndoe@email.com', '1234567890', 'Ngara, Nairobi'),
('Jane Smith', 'janesmith@email.com', '9876543210', 'Webuye, Bungoma');

-- Insert data into Routes table
INSERT INTO Routes (startLocation, endLocation, departureTime, arrivalTime) VALUES
('Nairobi', 'Kimilili', '2025-04-25 08:00:00', '2025-04-25 12:00:00'),
('Webuye', 'Nairobi', '2025-04-26 10:00:00', '2025-04-26 14:00:00');

-- Insert data into Buses table
INSERT INTO Buses (busNumber, capacity, driverName, routeID) VALUES
('KDF 309F', 34, 'Eugene Emoyo', 1),
('KCQ 409Q', 37, 'Florian Nyagi', 2);

-- Insert data into Bookings table
INSERT INTO Bookings (passengerID, busID, bookingDate, seatNumber) VALUES
(1, 1, '2025-04-20 09:00:00', 5),
(2, 2, '2025-04-21 10:00:00', 3);

-- Insert data into Payments table
INSERT INTO Payments (bookingID, paymentAmount, paymentDate, paymentStatus) VALUES
(1, 1650.00, '2025-04-20 09:15:00', 'Paid'),
(2, 1650.00, '2025-04-21 10:05:00', 'Paid');
