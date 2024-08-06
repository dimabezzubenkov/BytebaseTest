﻿CREATE TABLE `orders` (
  `OrderID` INT NOT NULL AUTO_INCREMENT,
  `CustomerID` INT DEFAULT NULL,
  `OrderDate` DATE DEFAULT NULL,
  `TotalAmount` DECIMAL(10, 2) DEFAULT NULL,
  PRIMARY KEY (OrderID)
)
ENGINE = INNODB,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_0900_ai_ci;

ALTER TABLE `orders` 
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (CustomerID)
    REFERENCES customers(CustomerID);