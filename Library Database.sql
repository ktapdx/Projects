----CREATE DATABASES AND ALL TABLES

---- Uses Master Database
USE Master
GO

----Deletes Library Database if it already exists
IF EXISTS(SELECT * FROM sys.databases WHERE [name]='Library') 
DROP DATABASE Library
GO

----Creates Library Database
CREATE DATABASE Library
GO

---- Uses new Library Database
USE Library
GO

----Drops table "book" if it exists
IF EXISTS(SELECT * FROM sys.tables WHERE [name]='BOOK')
DROP TABLE BOOK
GO

----Creates Book Table
CREATE TABLE BOOK (
BookID INT NOT NULL PRIMARY KEY, 
Title VARCHAR(90) NOT NULL,
PublisherName VARCHAR(30) NOT NULL
)

----Drops Book_Authors if exists
IF EXISTS(SELECT * FROM sys.tables WHERE [name]='BOOK_AUTHORS')
DROP TABLE BOOK_AUTHORS
GO

----Creates New table Book_authors
CREATE TABLE BOOK_AUTHORS (
BookID INT NOT NULL PRIMARY KEY,
AuthorName VARCHAR(60) NOT NULL
)

---Drops table Publisher if exists
IF EXISTS(SELECT * FROM sys.tables WHERE [name]='PUBLISHER')
DROP TABLE PUBLISHER
GO

----Creates Publisher Table
CREATE TABLE PUBLISHER (
Name VARCHAR(30) NOT NULL PRIMARY KEY,
[Address] VARCHAR(120) NOT NULL,
Phone VARCHAR(40) NOT NULL
)

----Drops Book_Copies Table if exists
IF EXISTS(SELECT * FROM sys.tables WHERE [name]='BOOK_COPIES')
DROP TABLE BOOK_COPIES
GO

----Creates Book_copies Table
CREATE TABLE BOOK_COPIES (
BookID INT NOT NULL,
BranchID Int NOT NULL,
No_Of_Copies INT NOT NULL
)

----Drops Book_Loans table if exists
IF EXISTS(SELECT * FROM sys.tables WHERE [name]='BOOK_LOANS')
DROP TABLE BOOK_LOANS
GO

----Creates Book_loans Table
CREATE TABLE BOOK_LOANS (
BookID INT NOT NULL,
BranchID Int NOT NULL,
CardNo INT NOT NULL,
DateOut VARCHAR(10) NOT NULL,
DueDate VARCHAR(10) NOT NULL,
)

----Drops Library_branch table if exists
IF EXISTS(SELECT * FROM sys.tables WHERE [name]='LIBRARY_BRANCH')
DROP TABLE LIBRARY_BRANCH
GO

----Creates Library_branch Table
CREATE TABLE LIBRARY_BRANCH (
BranchID Int NOT NULL PRIMARY KEY,
BranchName VARCHAR(30) NOT NULL,
[Address] VARCHAR(120) NULL
)

----Deletes Borrower Table if exists
IF EXISTS(SELECT * FROM sys.tables WHERE [name]='BORROWER')
DROP TABLE BORROWER
GO

----Creates Borrower Table
CREATE TABLE BORROWER (
CardNo INT NOT NULL PRIMARY KEY,
Name VARCHAR(50) NOT NULL,
[Address] VARCHAR(120) NULL,
Phone VARCHAR(30) NULL
)

----End Database/Table Creation


----POPULATE ALL TABLES

----Populates Book table
INSERT INTO BOOK VALUES
(1, 'The Lost Tribe', 'Microsoft Genius'),
(2, 'The First Book', 'Microsoft Genius'),
(3, 'MySQL Training', 'Microsoft Genius'),
(4, 'PHP Training', 'Microsoft Genius'),
(5, 'Diary of Jane', 'Microsoft Genius'),
(6, 'Testing for dummies', 'Microsoft Genius'),
(7, 'The Real Life', 'Microsoft Genius'),
(8, 'How To Write A Book', 'Microsoft Genius'),
(9, 'The Adventures of Harry Potter', 'Microsoft Genius'),
(10, 'The Adentures of Harry Potter Part 2', 'Microsoft Genius'),
(11, 'Mario Party', 'Microsoft Genius'),
(12, 'The Life of Pi', 'Microsoft Genius'),
(13, 'How to Screw up your taxes', 'Microsoft Genius'),
(14, 'How that is Made', 'Microsoft Genius'),
(15, 'The Facts about Bubbles', 'Microsoft Genius'),
(16, 'Syntax Errors 101', 'Microsoft Genius'),
(17, 'Gun Cleaning for Rednecks', 'Microsoft Genius'),
(18, 'Army or Bust', 'Microsoft Genius'),
(19, 'Soccer is the Sport of Champions', 'Microsoft Genius'),
(20, 'Pizza Huts Secrets', 'Microsoft Genius')

----Populates Publisher Table
INSERT INTO PUBLISHER VALUES
('Microsoft Genius', '1234 SE whocares drive', '503-654-7777')

---Populates Book_Authors Table
INSERT INTO BOOK_AUTHORS VALUES
(1, 'Steven King'),
(2, 'Yours Truly'),
(3, 'Dumbledoor'),
(4, 'Tech Academy'),
(5, 'The Big Guy)'),
(6, 'That One Dude'),
(7, 'Jack Sparrow'),
(8, 'The Number 8'),
(9, 'Redneck Jim'),
(10, 'A Cow'),
(11, 'His Majesty'),
(12, 'Your Mother'),
(13, 'The Squire'),
(14, 'Erik Gross'),
(15, 'Charlie Chaplin'),
(16, 'Dumb n Dumber'),
(17, 'Howitzer'),
(18, 'The Guy'),
(19, 'Zion'),
(20, 'Dexter')

---Populates Library_branch Table
INSERT INTO LIBRARY_BRANCH VALUES
(1, 'Big Bens Library', '124 SW Portland St.'),
(2, 'Sharptown', '125 NW Salem St.'),
(3, 'Juan Julios Library', '6864 SE Dumb St.'), 
(4, 'Central', '1000 NE America St.')

---Populates Borrower Table
INSERT INTO BORROWER VALUES
(1001, 'John Dinkleburg', '68 North St.', '598-741-8250'),
(1002, 'John Williams', '67 Jack St.', '503-123-9874'),
(1003, 'Joel Seale', '9762 SE Talbert St.', '503-986-2104'),
(1004, 'Brett Teacher', '7410 Jumbled Ave.', '963-852-7410'),
(1005, 'Daniel Kids', '410 SW North St.', '503-987-6543'),
(1006, 'Aaron Pastors', '9270 NW Duh st.', '971-344-8962'),
(1007, 'Hoobly Jumbles', '817 Love St.', '971-210-9630'),
(1008, 'Roman Kravs', '9761 Alberta Lane', '971-344-8796'),
(1009, 'Brett Baussman', '123 King st', '971-123-1234')

----Populates Book_copies Table
INSERT INTO BOOK_COPIES VALUES
(1,4,3),
(1,1,2),
(1,2,2),
(1,3,4),
(1,4,2),
(2,1,2),
(2,2,2),
(2,3,2),
(2,4,3),
(3,1,4),
(3,2,2),
(3,3,2),
(3,4,2),
(4,1,2),
(4,2,2),
(4,3,3),
(4,4,4),
(5,1,2),
(5,2,2),
(5,3,1),
(5,4,4),
(6,1,2),
(6,2,5),
(6,3,5),
(6,4,4),
(7,1,2),
(7,2,2),
(7,3,2),
(7,4,2),
(8,1,3),
(8,2,2),
(8,3,2),
(8,4,4),
(9,1,4),
(9,2,2),
(9,3,2),
(9,4,2),
(10,1,2),
(10,2,2),
(10,3,2),
(10,4,2),
(11,1,3),
(11,2,3),
(11,3,4),
(11,4,2),
(12,1,2),
(12,2,4),
(12,3,2),
(12,4,4),
(13,1,2),
(13,2,3),
(13,3,2),
(13,4,2),
(14,1,2),
(14,2,3),
(14,3,2),
(14,4,3),
(15,1,4),
(15,2,4),
(15,3,2),
(15,4,5),
(16,1,3),
(16,2,4),
(16,3,5),
(16,4,4),
(17,1,3),
(17,2,4),
(17,3,5),
(17,4,3),
(18,1,4),
(18,2,3),
(18,3,4),
(18,4,5),
(19,1,4),
(19,2,3),
(19,3,4),
(19,4,5),
(20,1,3),
(20,2,4),
(20,3,2),
(20,4,3)
---Populates Book_loans table
INSERT INTO BOOK_LOANS VALUES
(1,1,1001,'01-02-2010','01-10-2010'),
(2,2,1002,'01-02-2011','01-10-2011'),
(3,3,1003,'01-02-2010','01-20-2010'),
(4,4,1004,'01-02-2010','01-15-2010'),
(5,1,1005,'01-03-2014','01-07-2014'),
(6,2,1006,'01-05-1999','01-15-1999'),
(7,3,1007,'01-01-2001','01-10-2010'),
(8,4,1008,'01-03-1993','01-13-1993'),
(9,1,1001,'01-24-2000','02-10-2000'),
(10,2,1002,'01-29-2002','02-10-2002'),
(11,3,1003,'01-01-1993','01-11-1993'),
(12,4,1004,'01-17-2013','01-27-2013'),
(13,1,1005,'01-19-2014','01-29-2014'),
(14,2,1006,'01-19-2015','01-29-2015'),
(15,3,1007,'01-11-2011','01-21-2011'),
(16,4,1008,'01-30-2015','02-10-2015'),
(17,1,1001,'06-05-2010','06-15-2010'),
(18,2,1002,'07-05-2015','07-15-2015'),
(19,3,1003,'05-07-2015','05-17-2015'),
(20,4,1004,'03-03-2013','03-23-2013'),
(1,1,1005,'03-03-2003','03-23-2003'),
(2,2,1006,'04-04-2004','04-14-2004'),
(3,3,1007,'05-05-2005','05-15-2005'),
(4,4,1008,'06-06-2006','06-16-2006'),
(5,1,1001,'07-07-2007','07-17-2007'),
(6,2,1002,'08-08-2008','08-18-2008'),
(7,3,1003,'09-09-2009','09-19-2009'),
(8,4,1004,'10-10-2010','10-20-2010'),
(9,1,1005,'11-11-2011','11-21-2011'),
(10,2,1006,'12-12-2012','12-22-2012'),
(11,3,1007,'01-01-2013','01-11-2013'),
(12,4,1008,'02-22-2014','03-02-2014'),
(13,1,1001,'03-15-2015','03-25-2015'),
(14,2,1002,'04-15-2015','04-25-2015'),
(15,3,1003,'05-15-2015','05-25-2015'),
(16,4,1004,'06-15-2015','06-25-2015'),
(17,1,1005,'07-17-2015','07-27-2015'),
(18,2,1006,'08-18-2014','08-28-2014'),
(19,3,1007,'09-10-2010','09-30-2010'),
(20,4,1008,'10-10-2010','11-10-2010'),
(1,1,1001,'11-11-2015','11-30-2015'),
(2,2,1002,'12-12-2015','12-30-2015'),
(3,3,1003,'01-07-1994','01-30-1994'),
(4,4,1004,'01-08-1996','01-29-1996'),
(5,1,1005,'01-09-1998','01-29-1998'),
(6,2,1006,'01-10-2003','01-29-2003'),
(7,3,1007,'01-11-2014','01-21-2014'),
(8,4,1008,'02-02-2002','02-20-2002'),
(9,1,1001,'03-03-2013','03-30-2013'),
(10,2,1002,'04-20-2014','04-30-2014')

----End of table population


-- -- First Question

--SELECT BranchName, Title, No_Of_Copies
--FROM LIBRARY_BRANCH INNER JOIN BOOK_COPIES ON LIBRARY_BRANCH.BranchID = BOOK_COPIES.BranchID INNER JOIN BOOK ON BOOK_COPIES.BookID = BOOK.BookID
--WHERE Title='The Lost Tribe' AND BranchName='Sharptown'




-- -- Second Question

--SELECT LIBRARY_BRANCH.BranchID, BranchName, Title, No_Of_Copies
--FROM LIBRARY_BRANCH INNER JOIN BOOK_COPIES ON LIBRARY_BRANCH.BranchID = BOOK_COPIES.BranchID INNER JOIN BOOK ON BOOK_COPIES.BookID = BOOK.BookID
--WHERE Title='The Lost Tribe'



--/*
-- --Third Question 

--SELECT *
--FROM BORROWER FULL JOIN BOOK_LOANS ON BORROWER.CardNo = BOOK_LOANS.CardNo
--WHERE BORROWER.CardNo NOT IN (SELECT BOOK_LOANS.CardNo FROM BOOK_LOANS)

--*/


--Fourth Question

--/*
--SELECT BOOK_LOANS.BranchID, BranchName, Title, Name, BORROWER.[Address], DueDate
--FROM BOOK FULL JOIN BOOK_LOANS ON BOOK_LOANS.BookID = BOOK.BookID FULL JOIN BORROWER ON BORROWER.CardNo = BOOK_LOANS.CardNo FULL JOIN LIBRARY_BRANCH ON BOOK_LOANS.BranchID = LIBRARY_BRANCH.BranchID
--WHERE LIBRARY_BRANCH.BranchID = '2' AND DueDate = '01-29-2003'
--*/

--Fifth Question

--/*
-- SELECT LIBRARY_BRANCH.BranchID, LIBRARY_BRANCH.BranchName, SUM(No_Of_Copies) AS No_Of_Copies
-- FROM LIBRARY_BRANCH FULL JOIN BOOK_LOANS ON LIBRARY_BRANCH.BranchID = BOOK_LOANS.BranchID LEFT JOIN BOOK_COPIES ON BOOK_LOANS.BranchID = BOOK_COPIES.BranchID AND BOOK_LOANS.BookID = BOOK_COPIES.BookID
-- GROUP BY LIBRARY_BRANCH.BranchID, LIBRARY_BRANCH.BranchName

--*/

--Sixth Question

--SELECT * 
--FROM BORROWER

--SELECT *
--FROM BOOK_LOANS


----SELECT BORROWER.Name, BORROWER.[Address], COUNT(BOOK_LOANS.BookID) AS 'Checked out'
----FROM BORROWER FULL JOIN BOOK_LOANS ON BORROWER.CardNo = BOOK_LOANS.CardNo
----GROUP BY BORROWER.Name, BORROWER.Address, BOOK_LOANS.BookID
----HAVING COUNT(BOOK_LOANS.BookID) < 5;

--/* QUESTION 7

--Select BORROWER.Name, BORROWER.[Address], MAX(BOOK_LOANS.CardNo) AS 'Card Number', COUNT(BOOK_LOANS.BookID) AS 'Checked Out '
--FROM BORROWER
--JOIN BOOK_LOANS
--ON BORROWER.CardNo = BOOK_LOANS.CardNo
--GROUP BY Name, Address
--HAVING MAX(BOOK_LOANS.CardNo) > 5

--*/
----SELECT *
----FROM BOOK

----SELECT *
----FROM BOOK_AUTHORS

----SELECT *
----FROM BOOK_COPIES

----SELECT *
----FROM LIBRARY_BRANCH

----SELECT BranchName, AuthorName, Title, BOOK_COPIES.No_Of_Copies
----FROM BOOK
----INNER JOIN BOOK_AUTHORS 
----ON BOOK_AUTHORS.BookID = BOOK.BookID 
----FULL JOIN BOOK_COPIES 
----ON BOOK.BookID = BOOK_COPIES.BookID 
----FULL JOIN LIBRARY_BRANCH 
----ON BOOK_COPIES.BranchID = LIBRARY_BRANCH.BranchID
----WHERE BOOK_AUTHORS.AuthorName='Steven King' AND LIBRARY_BRANCH.BranchName = 'Central'



----SELECT BOOK.Title, BOOK_AUTHORS.AuthorName, BOOK_COPIES.No_Of_Copies
----FROM BOOK INNER JOIN BOOK_AUTHORS ON BOOK.BookID = BOOK_AUTHORS.BookID
----JOIN BOOK_COPIES ON BOOK_COPIES.BookID = BOOK.BookID
----JOIN LIBRARY_BRANCH ON LIBRARY_BRANCH.BranchID = BOOK_COPIES.BranchID
----WHERE BOOK.BookID = (SELECT BOOK_AUTHORS.BookID WHERE BOOK_AUTHORS.AuthorName= 'Steven King')
----AND BOOK_COPIES.BranchID = (SELECT LIBRARY_BRANCH.BranchID WHERE LIBRARY_BRANCH.BranchName = 'Central')


--CREATE PROCEDURE SharptownBookBorrowers
--AS
--SELECT BOOK_LOANS.BranchID, BranchName, Title, Name, BORROWER.[Address], DueDate
--FROM BOOK FULL JOIN BOOK_LOANS ON BOOK_LOANS.BookID = BOOK.BookID FULL JOIN BORROWER ON BORROWER.CardNo = BOOK_LOANS.CardNo FULL JOIN LIBRARY_BRANCH ON BOOK_LOANS.BranchID = LIBRARY_BRANCH.BranchID
--WHERE LIBRARY_BRANCH.BranchID = '2' AND DueDate = '01-29-2003'
--GO

--DROP PROCEDURE SharptownBookBorrowers


--EXEC SharptownBookBorrowers