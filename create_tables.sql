CREATE DATABASE AccountingMoney;
USE AccountingMoney;

CREATE TABLE Costs
(
    ID int identity(1, 1) NOT NULL PRIMARY KEY,
    Sum bigint CHECK (Sum > 0) NOT NULL,
    ToAccount varchar(50) NOT NULL,
    PayItemDescription varchar(max) NOT NULL,
)

CREATE TABLE BankAccount
(
    ID int identity(1, 1) NOT NULL PRIMARY KEY,
    Number varchar(50) NOT NULL UNIQUE,
    Name varchar(100) NOT NULL UNIQUE,
)

CREATE TABLE Income
(
    ID int identity(1, 1) NOT NULL PRIMARY KEY,
    Sum bigint CHECK (Sum > 0) NOT NULL,
    FromAccount varchar(50) NOT NULL,
)

CREATE TABLE Personal
(
    ID int identity(1, 1) NOT NULL PRIMARY KEY,
    Name varchar(100) NOT NULL,
    Salary int CHECK (Salary > 0) NOT NULL,
)

CREATE TABLE Product
(
    ID int identity(1, 1) NOT NULL PRIMARY KEY,
    Name varchar(100) NOT NULL,
    Description varchar(250),
    Price bigint CHECK (Price > 0),
)

CREATE TABLE Role
(
    ID int identity(1, 1) NOT NULL PRIMARY KEY,
    RoleName varchar(100) NOT NULL,
)

CREATE TABLE Income_Product
(
    ID int identity(1, 1) NOT NULL PRIMARY KEY,
)

ALTER TABLE Income_Product
ADD IncomeID int FOREIGN KEY (IncomeID) REFERENCES Income (ID) ON DELETE NO ACTION,
    ProductID int FOREIGN KEY (ProductID) REFERENCES Product (ID) ON DELETE NO ACTION


ALTER TABLE Costs
ADD BankAccountID int FOREIGN KEY (BankAccountID) REFERENCES BankAccount (ID) ON DELETE NO ACTION,
    ResponsiblePersonID int FOREIGN KEY (ResponsiblePersonID) REFERENCES Personal (ID) ON DELETE NO ACTION

ALTER TABLE Income
ADD BankAccountID int FOREIGN KEY (BankAccountID) REFERENCES BankAccount (ID) ON DELETE NO ACTION

ALTER TABLE Personal
ADD RoleID int FOREIGN KEY (RoleID) REFERENCES Role (ID) ON DELETE SET NULL

-- USE master;
-- DROP DATABASE AccountingMoney;