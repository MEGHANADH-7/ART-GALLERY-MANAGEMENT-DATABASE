-- =====================================
-- ART GALLERY MANAGEMENT DATABASE
-- =====================================

-- 1. Create Database
CREATE DATABASE ArtGalleryDB;
USE ArtGalleryDB;

-- 2. Create Artist Table
CREATE TABLE Artist (
    Artist_ID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Birthplace VARCHAR(100),
    Age INT CHECK (Age > 0),
    Style VARCHAR(50)
);

-- 3. Create Artwork Table
CREATE TABLE Artwork (
    Artwork_ID INT PRIMARY KEY,
    Title VARCHAR(100) NOT NULL,
    Year INT,
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    Artist_ID INT,
    FOREIGN KEY (Artist_ID) REFERENCES Artist(Artist_ID)
);

-- =====================================
-- 4. INSERT SAMPLE DATA
-- =====================================

INSERT INTO Artist VALUES (1, 'Pablo Picasso', 'Spain', 91, 'Cubism');
INSERT INTO Artist VALUES (2, 'Leonardo da Vinci', 'Italy', 67, 'Renaissance');
INSERT INTO Artist VALUES (3, 'Vincent van Gogh', 'Netherlands', 37, 'Post-Impressionism');

INSERT INTO Artwork VALUES (101, 'Guernica', 1937, 'Painting', 5000000, 1);
INSERT INTO Artwork VALUES (102, 'Mona Lisa', 1503, 'Painting', 7800000, 2);
INSERT INTO Artwork VALUES (103, 'Starry Night', 1889, 'Painting', 6200000, 3);

-- =====================================
-- 5. CRUD OPERATIONS
-- =====================================

-- READ
SELECT * FROM Artist;
SELECT * FROM Artwork;

-- JOIN
SELECT 
    A.Name,
    W.Title,
    W.Category,
    W.Price
FROM Artist A
JOIN Artwork W ON A.Artist_ID = W.Artist_ID;

-- UPDATE
UPDATE Artwork
SET Price = 6500000
WHERE Artwork_ID = 103;

-- DELETE
DELETE FROM Artwork
WHERE Artwork_ID = 101;

-- =====================================
-- 6. REPORTS
-- =====================================

-- Total artwork value per artist
SELECT 
    A.Name,
    SUM(W.Price) AS Total_Value
FROM Artist A
JOIN Artwork W ON A.Artist_ID = W.Artist_ID
GROUP BY A.Name;

-- Count artworks by category
SELECT 
    Category,
    COUNT(*) AS Total_Artworks
FROM Artwork
GROUP BY Category;

-- Full detailed report
SELECT 
    A.Name,
    A.Style,
    W.Title,
    W.Year,
    W.Price
FROM Artist A
JOIN Artwork W ON A.Artist_ID = W.Artist_ID;