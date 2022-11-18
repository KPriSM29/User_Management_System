/*Creating the First Table: Table_1*/
CREATE TABLE `User_Management_System`.`User_Info`
(`Id` INT NOT NULL AUTO_INCREMENT , `First_Name` VARCHAR(45) NOT NULL , `Last_Name` VARCHAR(45) NOT NULL , `E-Mail` VARCHAR(45) NOT NULL , PRIMARY KEY (`Id`))
 ENGINE = InnoDB;
/*Creating the First Table: Table_2*/
CREATE TABLE `User_Management_System`.`Table_2`
(`Id` INT NOT NULL AUTO_INCREMENT , `Phone_Number` INT(10) NOT NULL , `Comments` TEXT NOT NULL , `Status` VARCHAR(45) NOT NULL DEFAULT 'active' , PRIMARY KEY (`Id`))
ENGINE = InnoDB;
/*Joining the above 2 tables in to new table: Table_3*/
CREATE TABLE Table_3 as
SELECT t1.Id, t1.First_Name, t1.Last_Name, t1.E_Mail, t2.Phone_Number, t2.Comments, t2.Status FROM Table_1 t1 JOIN Table_2 t2 ON t1.Id=t2.Id;
