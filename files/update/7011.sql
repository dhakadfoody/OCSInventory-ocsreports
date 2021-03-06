-- Create snmpmibs if not already exists
CREATE TABLE IF NOT EXISTS `snmp_mibs` (
   `ID` INTEGER NOT NULL AUTO_INCREMENT,
   `VENDOR` VARCHAR(255) DEFAULT NULL,
   `URL` VARCHAR(255) DEFAULT NULL,
   `CHECKSUM` VARCHAR(255) DEFAULT NULL,
   `VERSION` VARCHAR(5) DEFAULT NULL,
   `PARSER` VARCHAR(5) DEFAULT NULL,
   PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8;
-- Create usbdevices table
CREATE TABLE IF NOT EXISTS `usbdevices` (
    `ID` INTEGER NOT NULL AUTO_INCREMENT,
    `HARDWARE_ID` INT(11) NOT NULL,
    `DESCRIPTION` VARCHAR(255) DEFAULT NULL,
    `INTERFACE` VARCHAR(255) DEFAULT NULL,
    `MANUFACTURER` VARCHAR(255) DEFAULT NULL,
    `SERIAL` VARCHAR(255) DEFAULT NULL,
    `TYPE` VARCHAR(255) DEFAULT NULL,
    PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8;

--
-- Minors modifications
--

-- MTU ADD
-- ALTER TABLE `networks` ADD `MTU` VARCHAR(255) NULL DEFAULT NULL AFTER `SPEED`;

-- DELETED ADD
-- ALTER TABLE `download_available` ADD `DELETED` INT(1) NOT NULL DEFAULT '0' AFTER `ID_WK`;

-- DELETED VIRTUALMACHINES
ALTER TABLE `snmp_laststate` ADD `VIRTUALMACHINES` VARCHAR(255) NULL DEFAULT NULL AFTER `LOCALPRINTERS`;