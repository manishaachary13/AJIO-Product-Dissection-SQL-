create database project;

CREATE TABLE User (
    UserID INT PRIMARY KEY AUTO_INCREMENT,
    Username VARCHAR(50) NOT NULL UNIQUE,
    Email VARCHAR(100) NOT NULL UNIQUE,
    Full_Name VARCHAR(100),
    Password VARCHAR(255) NOT NULL,
    Registration_Date DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Create Product Table
CREATE TABLE Product (
    ProductID INT PRIMARY KEY AUTO_INCREMENT,
    Product_Name VARCHAR(100) NOT NULL,
    Description TEXT,
    Price DECIMAL(10, 2) NOT NULL,
    Brand VARCHAR(100),
    Category VARCHAR(100),
    Stock INT DEFAULT 0,
    Image_URL VARCHAR(255)
);

-- Create Order Table
CREATE TABLE OrderTable (
    OrderID INT PRIMARY KEY AUTO_INCREMENT,
    UserID INT,
    Order_Date DATETIME DEFAULT CURRENT_TIMESTAMP,
    Total_Amount DECIMAL(10, 2),
    Status VARCHAR(50),
    FOREIGN KEY (UserID) REFERENCES User(UserID)
);

-- Create Review Table
CREATE TABLE Review (
    ReviewID INT PRIMARY KEY AUTO_INCREMENT,
    ProductID INT,
    UserID INT,
    Rating INT CHECK (Rating >= 1 AND Rating <= 5),
    Comment TEXT,
    Review_Date DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID),
    FOREIGN KEY (UserID) REFERENCES User(UserID)
);

-- Create Wishlist Table
CREATE TABLE Wishlist (
    WishlistID INT PRIMARY KEY AUTO_INCREMENT,
    UserID INT,
    ProductID INT,
    Added_Date DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (UserID) REFERENCES User(UserID),

);

-- Create Cart Table
CREATE TABLE Cart (
    CartID INT PRIMARY KEY AUTO_INCREMENT,
    UserID INT,
    ProductID INT,
    Quantity INT DEFAULT 1,
    Added_Date DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (UserID) REFERENCES User(UserID),
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
);
