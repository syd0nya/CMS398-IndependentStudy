-- Biology Database Sample

DROP DATABASE IF EXISTS BiologyData;
CREATE DATABASE BiologyData;
USE BiologyData;

-- Table for Books

CREATE TABLE Books (
	Title VARCHAR(255) NOT NULL,
    Author_or_Publisher VARCHAR(255) NOT NULL,
    Edition VARCHAR(255) NOT NULL,
    Topic VARCHAR(255) NOT NULL,
    Old_Classification VARCHAR(255) NOT NULL,
    Copies INT NOT NULL,
    Location VARCHAR(255) NOT NULL
);

INSERT INTO Books (Title, Author_or_Publisher, Edition, Topic, Old_Classification, Copies, Location) VALUES
('Plastic Photo Cards of Shell/Invertebrates/Fish of Hawaii & Marine Invertebrates of Florida', '', '', 'Marine', 'MAR 1.1', 1, 'Bush 268'),
('Marine Life od the North Atlantic: Canada to Cape May', 'Andrew J. Martinez', '', 'Marine', 'MAR 2.1/2.2', 2, 'Bush 268'),
('A Guide to the Properties and uses ofDetergents in Biology and Biochemistry', 'Judityth Neugebaur', '', 'Methods', 'MET 1,1', 1, 'Bush 159'),
('A Manual on Methods for Measuring: Primary Production in Aquatic Environments', 'Richard A. Vollenweider', '', 'Methods', 'MET 2.1', 1, 'Bush 159'),
('Ecological Methods', 'T.R.E. Southwood & P.A. Henderson', '3rd', 'Methods', 'MET 4.1', 1, 'Bush 110'),
('Hach Water Analysis Handbook', 'Hach Chemical Co.', '3rd', 'Methods', 'MET 7.1', 1, 'Bush 159'),
('Hach Water Analysis Handbook', 'Hach Chemical Co.', '4th', 'Methods', 'MET 8.1-8.7', 7, 'Bush 159');


-- Table for Slides

CREATE TABLE Slides (
	Description VARCHAR(255) NOT NULL,
	Catalog_number INT NOT NULL,
	Vendor VARCHAR(255) NOT NULL,
	Quantity INT NOT NULL,
	Location VARCHAR(255) NOT NULL
);

INSERT INTO Slides (Description, Catalog_number, Vendor, Quantity, Location) VALUES
('Adipose tissue mammal, sec.', 312728, 'Carolina Biological', 16, 'A1'),
('Alfalfa Stem c.s', 302780, 'Carolina Biological', 11, 'B2'),
('Allium root tip mitosis l.s', 302396, 'Carolina Biological', 18, 'A4'),
('Letter E', 291406, 'Carolina Biological', 24, 'A1'),
('Colored Threads', 291418, 'Carolina Biological', 24, 'A1');


-- Table for Greenhouse

CREATE TABLE Greenhouse (
	Common_Name VARCHAR(255) NOT NULL,
    Family VARCHAR(255) NOT NULL,
    Genus VARCHAR(255) NOT NULL,
    Species VARCHAR(255) NOT NULL,
    Quantity INT NOT NULL,
    Location VARCHAR(255) NOT NULL,
    Notes VARCHAR(255) NOT NULL
);

INSERT INTO Greenhouse (Common_Name, Family, Genus, Species, Quantity, Location, Notes) VALUES
('Coconut Palm', 'Arecaceae', 'Cocos', 'nunifera', 1, 'Room 3', 'Shares pot with Coleus sp.'),
('Banana', 'Musaceae', 'Musa', 'sp.', 1, 'Room 3', ''),
('Desert Rose', 'Apocynaceae', 'Adenium', 'obesum', 5, 'Room 2', ''),
('Welwitschia', 'Welwitschiaeceae', 'Welwitschia', 'mirabilis', 3, 'Room 2', ''),
('Wax Flower', 'Apocynaceae', 'Hoya', 'carnosa', 1, 'Room 1', 'Hanging plant');


-- Table for Specimens 

CREATE TABLE Specimens (
	Common_Name VARCHAR(255) NOT NULL,
    Phylum VARCHAR(255) NOT NULL,
    Class VARCHAR(255) NOT NULL,
    Or_der VARCHAR (255) NOT NULL,
    Family VARCHAR(255) NOT NULL,
    Genus VARCHAR(255) NOT NULL,
    Species VARCHAR(255) NOT NULL,
    Quantity INT NOT NULL,
    Location VARCHAR(255) NOT NULL,
    Collection_Date VARCHAR(255) NOT NULL,
    Collection_Notes VARCHAR(255) NOT NULL
);

INSERT INTO Specimens (Common_name, Phylum, Class, Or_der, Family, Genus, Species, Quantity, Location, Collection_Date, Collection_Notes) VALUES
('Dead mans fingers', 'Coelenterata', 'Anthozoa', 'Alcyonacea', 'Alcyoniidae', 'Alcyonium', 'digitatum', 1, '107 Shelf 1', '14-Apr-73', 'Monroe Country Florida, Peter Smit'),
('Spotted Sunfish', 'Chordata', 'Actinopterygii', 'Perciformes', 'Centrarchidae', 'Lepomis', 'pounctatus', 1, '107 Shelf 1', '5-Feb-74', 'Seminole County Florida, Econolockhatchee, Highway 419'),
('Blue gill', 'Chordata', 'Actinopterygii', 'Perciformes', 'Centrarchidae', 'Lepomis', 'macrochirus', 1, '107 Shelf 2', '16-Apr-73', 'Orange county Florida, Lake Virginia'),
('Hybrid sunfish', 'Chordata', 'Actinopterygii', 'Perciformes', 'Centrarchidae', 'Lepomis', 'macrochirus x gibbosus', 1, '107 Shelf 2', '4-Sep-82', 'Walworth, Wisconsin. Lauderdale Lake. Jon Cullen'),
('Cahin Moray', 'Chordata', 'Actinopterygii', 'Anguilliformes', 'Muraenidae', 'Echidna', 'catenata', 1, '107 Shelf 2', '1-JAN-74', 'Atlantic BWI Barbados. D Richard.');
