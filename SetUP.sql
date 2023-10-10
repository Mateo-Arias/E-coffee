CREATE DATABASE E_coffee;
USE E_coffee;
CREATE TABLE Inventory (
	ID int PRIMARY KEY,
    Item varchar(255) NOT NULL UNIQUE,
    Country varchar(255) NOT NULL,
    Description varchar(255) NOT NULL,
    Brand varchar(255) NOT NULL,
    Stock double NOT NULL,
    Price double NOT NULL
    );
CREATE TABLE Clients (
	ID int PRIMARY KEY,
    Client_name varchar(255) NOT NULL,
    email varchar(255) NOT NULL,
    address varchar(255) NOT NULL,
    postal_code varchar(255) NOT NULL,
    zone int NOT NULL,
    transport_fee double NOT NULL
);    
    
CREATE TABLE Orders (
	ID int PRIMARY KEY,
    Client_ID int NOT NULL,
    Item_ID int NOT NULL,
    FOREIGN KEY (Client_ID) REFERENCES Inventory(ID),
    FOREIGN KEY (Item_ID) REFERENCES Clients(ID),
    Quantity double NOT NULL,
    Date_order date NOT NULL,
    Delivered boolean NOT NULL
    );