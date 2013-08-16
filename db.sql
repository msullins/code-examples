CREATE TABLE employee_info (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(64),
    email1 VARCHAR(64),
    email2 VARCHAR(128),
    password VARCHAR(14),
    company_name VARCHAR(128),
    company_phone CHAR(11),
    company_address VARCHAR(128),
    job_title CHAR(256),
    salary VARCHAR(10),
    permission_level VARCHAR(32),
    is_permission_level_active VARCHAR(10),
    start_date VARCHAR(11)
);

REATE  TABLE IF NOT EXISTS `mydb`.`Companies` (

  `id` INT NOT NULL AUTO_INCREMENT ,

  `Company_name` VARCHAR(128) NULL ,

  `company_phone` VARCHAR(13) NULL ,

  `company_address` TEXT NULL ,

  PRIMARY KEY (`id`) )

  CREATE  TABLE IF NOT EXISTS `mydb`.`employee_info` (

  `id` INT NOT NULL AUTO_INCREMENT ,

  `username` VARCHAR(64) NULL ,

  `email1` VARCHAR(64) NULL ,

  `email2` VARCHAR(64) NULL ,

  `password` VARCHAR(255) NULL ,

  `job_title` VARCHAR(256) NULL ,

  `salary` INT NULL ,

  `permission_level` VARCHAR(32) NULL ,

  `is_permission_level_active` TINYINT(1) NULL ,

  `start_date` DATE NULL ,

  `Companies_id` INT NOT NULL ,

  PRIMARY KEY (`id`) ,

  INDEX `fk_Users_Companies_idx` (`Companies_id` ASC) ,

  CONSTRAINT `fk_Users_Companies`

    FOREIGN KEY (`Companies_id` )

    REFERENCES `mydb`.`Companies` (`id` )

    ON DELETE NO ACTION

    ON UPDATE NO ACTION)

37, JohnSmith, jsmith@acme.com, johnsmith@acme.com, 764efa883dda1e11db47671c4a3bbd9e, ACME Inc, 555-2323, 123 Acme Way, Director, $100,000, admin, true, 2012-02-23

39, JaneSmith, jsmith1@acme.com, NULL, 153c2c618d157c4a3ba08e23a06b70d7, ACME INC, 555-2323, 123 ACME WAY, VP, $120,000, user, true, 99-03-19

40, ChrisSmith, csmith1@example.com, NULL, 34921ae7e3079e44e0ee2f96d8ee6e87, Example Dot Com, 555-1234, 456 Example Lane, Manager, $60,000, user, false, 2010-8-4

42, KateSmith, ksmith1@example.com, NULL, dbe39d9d56f98d5f9cb22df15b285791, Example Dot Com, 555-1234, 456 Example Lane, Sr Manager, $80,000, admin, false, 2004-12-24

INSERT INTO `mydb`.`employee_info` (`id`, `username`, `email1`, `email2`, `password`, `job_title`, `salary`, `permission_level`, `is_permission_level_active`, `start_date`, `Companies_id`) 
VALUES ('37', 'JohnSmith', 'jsmith@acme.com', 'johnsmith@acme.com', 'fa883dda1e11db47671c4a3bbd9e', 'Director', '100000', 'admin', '1', '2012-02-23', '1'), ('39', 'Jane Smith', 'jsmith1@acme.com', NULL, '153c2c618d157c4a3ba08e23a06b70d7', 'VP', '120000', 'user', '1', '1999-03-19', '1'), ('40', 'ChrisSmith', 'csmith@example.com', NULL, '34921ae7e3079e44e0ee2f96d8ee6e87', 'Manager', '60000', 'user', '0', '2010-08-04', '2'), 
('42', 'KateSmith', 'ksmith1@example.com', NULL, 'dbe39d9d56f98d5f9cb22df15b285791', 'Sr Manager', '80000', 'admin', '0', '2004-12-04', '2') ;