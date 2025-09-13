CREATE TABLE Movies (
    MovieID INT PRIMARY KEY,
    Title VARCHAR(255),
    ReleaseYear INT,
    GenreID INT,
    Rating FLOAT
);

CREATE TABLE Users (
    UserID INT  ,
    UserName VARCHAR(100),
    Email VARCHAR(100),
    SubscriptionID INT DEFAULT 1
);

CREATE TABLE Subscriptions (
    SubscriptionID INT ,
    SubscriptionType VARCHAR(50),
    StartDate DATE,
    ExpiryDate DATE,
    Status VARCHAR(20)
);

CREATE TABLE Genres (
    GenreID INT PRIMARY KEY,
    GenreName VARCHAR(100)
);

CREATE TABLE WatchHistory (
    WatchID INT PRIMARY KEY,
    UserID INT,
    MovieID INT,
    WatchDate DATE
);
INSERT INTO Movies VALUES (1, 'Inception', 2010, 1, 4.8);
INSERT INTO Movies VALUES (2, 'The Dark Knight', 2008, 1, 4.9);
INSERT INTO Movies VALUES (3, 'Interstellar', 2014, 2, 4.7);
INSERT INTO Movies VALUES (4, 'Avengers: Endgame', 2019, 3, 4.6);
INSERT INTO Movies VALUES (5, 'The Matrix', 1999, 1, 4.5);
INSERT INTO Movies VALUES (6, 'Joker', 2019, 4, 4.3);
INSERT INTO Movies VALUES (7, 'Frozen', 2013, 5, 4.2);
INSERT INTO Movies VALUES (8, 'Titanic', 1997, 6, 4.4);
INSERT INTO Movies VALUES (9, 'Forrest Gump', 1994, 7, 4.8);
INSERT INTO Movies VALUES (10, 'Gladiator', 2000, 8, 4.4);
INSERT INTO Movies VALUES (11, 'The Lion King', 1994, 5, 4.7);
INSERT INTO Movies VALUES (12, 'The Godfather', 1972, 9, 4.9);
INSERT INTO Movies VALUES (13, 'Pulp Fiction', 1994, 9, 4.6);
INSERT INTO Movies VALUES (14, 'The Avengers', 2012, 3, 4.5);
INSERT INTO Movies VALUES (15, 'The Shawshank Redemption', 1994, 9, 4.9);
INSERT INTO Movies VALUES (16, 'Finding Nemo', 2003, 5, 4.4);
INSERT INTO Movies VALUES (17, 'Jurassic Park', 1993, 1, 4.3);
INSERT INTO Movies VALUES (18, 'The Social Network', 2010, 10, 4.0);
INSERT INTO Movies VALUES (19, 'Parasite', 2019, 11, 4.6);
INSERT INTO Movies VALUES (20, 'La La Land', 2016, 12, 4.1);

INSERT INTO Users VALUES (1, 'Alice', 'alice@example.com', 1);
INSERT INTO Users VALUES (2, 'Bob', 'bob@example.com', 2);
INSERT INTO Users VALUES (3, 'Charlie', 'charlie@example.com', 1);
INSERT INTO Users VALUES (4, 'David', 'david@example.com', 3);
INSERT INTO Users VALUES (5, 'Eve', 'eve@example.com', 2);
INSERT INTO Users VALUES (6, 'Frank', 'frank@example.com', 3);
INSERT INTO Users VALUES (7, 'Grace', 'grace@example.com', 1);
INSERT INTO Users VALUES (8, 'Hank', 'hank@example.com', 1);
INSERT INTO Users VALUES (9, 'Ivy', 'ivy@example.com', 2);
INSERT INTO Users VALUES (10, 'Jack', 'jack@example.com', 3);
INSERT INTO Users VALUES (11, 'Karen', 'karen@example.com', 1);
INSERT INTO Users VALUES (12, 'Leo', 'leo@example.com', 2);
INSERT INTO Users VALUES (13, 'Mona', 'mona@example.com', 3);
INSERT INTO Users VALUES (14, 'Nina', 'nina@example.com', 1);
INSERT INTO Users VALUES (15, 'Oscar', 'oscar@example.com', 2);
INSERT INTO Users VALUES (16, 'Paul', 'paul@example.com', 3);
INSERT INTO Users VALUES (17, 'Quincy', 'quincy@example.com', 1);
INSERT INTO Users VALUES (18, 'Rachel', 'rachel@example.com', 2);
INSERT INTO Users VALUES (19, 'Steve', 'steve@example.com', 3);
INSERT INTO Users VALUES (20, 'Tina', 'tina@example.com', 1);

INSERT INTO Subscriptions VALUES (1, 'Basic', '2024-01-01', '2025-01-01', 'Active');
INSERT INTO Subscriptions VALUES (2, 'Standard', '2024-06-01', '2025-06-01', 'Active');
INSERT INTO Subscriptions VALUES (3, 'Premium', '2023-09-01', '2024-09-01', 'Expired');
INSERT INTO Subscriptions VALUES (4, 'Basic', '2024-03-15', '2025-03-15', 'Active');
INSERT INTO Subscriptions VALUES (5, 'Standard', '2024-02-10', '2025-02-10', 'Active');


INSERT INTO Genres VALUES (1, 'Action');
INSERT INTO Genres VALUES (2, 'Sci-Fi');
INSERT INTO Genres VALUES (3, 'Superhero');
INSERT INTO Genres VALUES (4, 'Drama');
INSERT INTO Genres VALUES (5, 'Animation');
INSERT INTO Genres VALUES (6, 'Romance');
INSERT INTO Genres VALUES (7, 'Comedy');
INSERT INTO Genres VALUES (8, 'Historical');
INSERT INTO Genres VALUES (9, 'Crime');
INSERT INTO Genres VALUES (10, 'Biography');
INSERT INTO Genres VALUES (11, 'Thriller');
INSERT INTO Genres VALUES (12, 'Musical');


INSERT INTO WatchHistory VALUES (1, 1, 1, '2025-08-01');
INSERT INTO WatchHistory VALUES (2, 2, 4, '2025-08-02');
INSERT INTO WatchHistory VALUES (3, 3, 2, '2025-08-03');
INSERT INTO WatchHistory VALUES (4, 4, 3, '2025-08-04');
INSERT INTO WatchHistory VALUES (5, 5, 5, '2025-08-05');
INSERT INTO WatchHistory VALUES (6, 6, 6, '2025-08-06');
INSERT INTO WatchHistory VALUES (7, 7, 7, '2025-08-07');
INSERT INTO WatchHistory VALUES (8, 8, 8, '2025-08-08');
INSERT INTO WatchHistory VALUES (9, 9, 9, '2025-08-09');
INSERT INTO WatchHistory VALUES (10, 10, 10, '2025-08-10');
INSERT INTO WatchHistory VALUES (11, 11, 11, '2025-08-11');
INSERT INTO WatchHistory VALUES (12, 12, 12, '2025-08-12');
INSERT INTO WatchHistory VALUES (13, 13, 13, '2025-08-13');
INSERT INTO WatchHistory VALUES (14, 14, 14, '2025-08-14');
INSERT INTO WatchHistory VALUES (15, 15, 15, '2025-08-15');
INSERT INTO WatchHistory VALUES (16, 16, 16, '2025-08-16');
INSERT INTO WatchHistory VALUES (17, 17, 17, '2025-08-17');
INSERT INTO WatchHistory VALUES (18, 18, 18, '2025-08-18');
INSERT INTO WatchHistory VALUES (19, 19, 19, '2025-08-19');
INSERT INTO WatchHistory VALUES (20, 20, 20, '2025-08-20');

-- subqueries
-- Find users who have not watched more than 10 movies:
SELECT UserID, UserName 
FROM Users 
WHERE UserID  NOT IN (
  SELECT UserID 
  FROM WatchHistory 
  GROUP BY UserID 
  HAVING COUNT(MovieID) > 18
);
-- Get movies with rating higher than the average movie rating:
SELECT Title, Rating 
FROM Movies 
WHERE Rating > (
  SELECT AVG(Rating) 
  FROM Movies
);

-- Find movies that have  been watched by any user:
SELECT MovieID, Title 
FROM Movies 
WHERE MovieID  IN (
  SELECT MovieID 
  FROM WatchHistory
);
-- aggregation

-- Count total number of users subscribed to each subscription type:

SELECT SubscriptionType, COUNT(UserID) 
FROM Subscriptions 
JOIN Users ON Subscriptions.SubscriptionID = Users.SubscriptionID 
GROUP BY SubscriptionType;

-- Find the minimum rating of movies per genre:

SELECT GenreID, ROUND(MIN(Rating), 1) 
FROM Movies 
GROUP BY GenreID;

-- Find the total number of movies watched in the last 30 days:

SELECT COUNT(*) 
FROM WatchHistory 
WHERE WatchDate >= DATE_SUB(CURDATE(), INTERVAL 30 DAY);

-- Procedure to get movies of a particular genre:
DELIMITER //
CREATE PROCEDURE GetMoviesByGenre(IN inputGenreID INT)
BEGIN
  SELECT Title, ReleaseYear, Rating 
  FROM Movies 
  WHERE GenreID = inputGenreID;
END//
DELIMITER ;

-- Procedure to add a new user:
DELIMITER //
CREATE PROCEDURE InsertUser(IN inputUserName VARCHAR(100), IN inputEmail VARCHAR(100), IN inputSubscriptionID INT)
BEGIN
  INSERT INTO Users(UserName, Email, SubscriptionID) VALUES (inputUserName, inputEmail, inputSubscriptionID);
END//
DELIMITER ;

-- Procedure to update subscription status:
DELIMITER //
CREATE PROCEDURE UpdateSubscriptionStatus(IN inputSubscriptionID INT, IN inputStatus VARCHAR(20))
BEGIN
  UPDATE Subscriptions SET Status = inputStatus WHERE SubscriptionID = inputSubscriptionID;
END//
DELIMITER ;
-- Trigger to update subscription status to 'Expired' after expiry date:
DELIMITER //
CREATE TRIGGER UpdateSubscriptionStatusAfterExpiry
AFTER UPDATE ON Subscriptions
FOR EACH ROW
BEGIN
  IF NEW.ExpiryDate < CURDATE() THEN
    UPDATE Subscriptions SET Status = 'Expired' WHERE SubscriptionID = NEW.SubscriptionID;
  END IF;
END//
DELIMITER ;
-- Trigger to log when a new movie is added:
DELIMITER //
CREATE TRIGGER LogNewMovieInsert
AFTER INSERT ON Movies
FOR EACH ROW
BEGIN
  INSERT INTO MovieLog(MovieID, Action, ActionDate) VALUES (NEW.MovieID, 'Insert', NOW());
END//
DELIMITER ;
-- Trigger to prevent deleting users with active subscriptions:
DELIMITER //
CREATE TRIGGER PreventDeleteActiveUser
BEFORE DELETE ON Users
FOR EACH ROW
BEGIN
  IF (SELECT Status FROM Subscriptions WHERE SubscriptionID = OLD.SubscriptionID) = 'Active' THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Cannot delete users with active subscriptions';
  END IF;
END//
DELIMITER ;

-- 1. Drop the old primary key
ALTER TABLE Subscriptions DROP PRIMARY KEY;

-- 2. Add UserID as the auto-incrementing primary key
ALTER TABLE Users 
MODIFY UserID INT AUTO_INCREMENT PRIMARY KEY;

ALTER TABLE Subscriptions 
MODIFY SubscriptionID INT AUTO_INCREMENT PRIMARY KEY;

-- Transaction to add a new user and subscription atomically:
START TRANSACTION;
INSERT INTO Subscriptions(SubscriptionType, StartDate, ExpiryDate, Status) 
VALUES ('Premium', CURDATE(), DATE_ADD(CURDATE(), INTERVAL 1 YEAR), 'Active');
INSERT INTO Users(UserName, Email, SubscriptionID) 
VALUES ('JohnDoe', 'john@example.com', LAST_INSERT_ID());
COMMIT;

-- Transaction to update movie rating and log the change:
use movie_db;
START TRANSACTION;
UPDATE Movies SET Rating = 4 WHERE MovieID = 10;
INSERT INTO Movies(MovieID,Title,ReleaseYear,GenreID ,Rating) VALUES (21, 'Rating updated', 2026,34,5);
COMMIT;

select * from Movies where Rating=4;



