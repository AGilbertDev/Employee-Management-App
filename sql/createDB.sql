START TRANSACTION;

    CREATE DATABASE IF NOT EXISTS `employee_management`;

    USE `employee_management`;

    CREATE TABLE IF NOT EXISTS `accounts` (
        `employeeID` INT NOT NULL AUTO_INCREMENT,
        `email` VARCHAR(50) NOT NULL,
        `password` VARCHAR(50) NOT NULL,
        `account_status` INT NOT NULL,
        `isAdmin` BOOLEAN NOT NULL,

        PRIMARY KEY (`employeeID`)

    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

    CREATE TABLE IF NOT EXISTS `employees` (
        `employeeID` INT NOT NULL,
        `fName` VARCHAR(50) NOT NULL,
        `lName` VARCHAR(50) NOT NULL,
        `address` VARCHAR(100) NOT NULL,
        `appartment` VARCHAR(50),
        `city` VARCHAR(50) NOT NULL,
        `state` VARCHAR(50) NOT NULL,
        `zipCode` VARCHAR(50) NOT NULL,
        `phone` VARCHAR(50) NOT NULL,
        `position` VARCHAR(50) NOT NULL,
        `hiringDate` DATE NOT NULL,
        `shift` INT NOT NULL,
        `supervisorID` INT NOT NULL,

        PRIMARY KEY (`employeeID`),
        FOREIGN KEY (`employeeID`) REFERENCES `accounts` (`employeeID`),
        FOREIGN KEY (`supervisorID`) REFERENCES `employees` (`employeeID`)

    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

    CREATE TABLE IF NOT EXISTS `wages` (
        `employeeID` INT NOT NULL,
        `hours` DECIMAL(10, 2) NOT NULL,
        `absences` INT NOT NULL,
        `justified` INT NOT NULL,
        `quota` INT NOT NULL,

        PRIMARY KEY (`employeeID`),
        FOREIGN KEY (`employeeID`) REFERENCES `employees` (`employeeID`)

    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

COMMIT;