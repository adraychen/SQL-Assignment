CREATE TABLE MenuItems (
    ItemID INT PRIMARY KEY,
    ItemName VARCHAR(50),
    Category VARCHAR(15),
    Price DECIMAL(6, 2),
    Cost DECIMAL(6, 2)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    OrderDate DATE,
    TableNumber INT,
    MenuItemID INT,
    Quantity INT,
    TotalPrice DECIMAL(6, 2)
);

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(15),
    LastName VARCHAR(15),
    Position VARCHAR(15),
    HourlyRate DECIMAL(4, 2),
    CONSTRAINT chk_hourly_rate CHECK (HourlyRate >= 0)
);

CREATE TABLE Sales (
    SaleID SERIAL PRIMARY KEY,
    OrderID INT,
    EmployeeID INT,
    SaleDate DATE,
    Amount DECIMAL(10, 2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
)