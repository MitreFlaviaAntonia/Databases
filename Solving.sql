INSERT INTO `sys`.`book` (`ID`, `Title`, `AuthorID`, `PublisherCode`, `Type`, `Year`, `Price`, `PaperBack`) VALUES ('1', 'Cartea1', '1', 'RH', 'HOR', 2019, '10', '1');
INSERT INTO `sys`.`book` (`ID`, `Title`, `AuthorID`, `PublisherCode`, `Type`, `Year`, `Price`, `PaperBack`) VALUES ('2', 'Cartea2', '2', 'AB', 'PSY', 1999, '15', '1');
INSERT INTO `sys`.`book` (`ID`, `Title`, `AuthorID`, `PublisherCode`, `Type`, `Year`, `Price`, `PaperBack`) VALUES ('3', 'Cartea3', '2', 'CD', 'CMP', 1999, '55', '0');
INSERT INTO `sys`.`book` (`ID`, `Title`, `AuthorID`, `PublisherCode`, `Type`, `Year`, `Price`, `PaperBack`) VALUES ('4', '4', '1', 'RH', 'HOR', 2019, '16', '1');
INSERT INTO `sys`.`book` (`ID`, `Title`, `AuthorID`, `PublisherCode`, `Type`, `Year`, `Price`, `PaperBack`) VALUES ('5', 'Cartea5', '4', 'EF', 'TRA', 1999, '30', '1');
INSERT INTO `sys`.`book` (`ID`, `Title`, `AuthorID`, `PublisherCode`, `Type`, `Year`, `Price`, `PaperBack`) VALUES ('6', '5', '5', 'RH', 'ART', 2019, '26', '0');
INSERT INTO `sys`.`book` (`ID`, `Title`, `AuthorID`, `PublisherCode`, `Type`, `Year`, `Price`, `PaperBack`) VALUES ('7', 'Cartea7', '6', 'AB', 'HOR', 1999, '24', '1');
INSERT INTO `sys`.`book` (`ID`, `Title`, `AuthorID`, `PublisherCode`, `Type`, `Year`, `Price`, `PaperBack`) VALUES ('8', 'Cartea8', '3', 'RH', 'ART', 1999, '5', '0');

INSERT INTO `sys`.`branche` (`ID`, `Name`, `Location`, `NrEmployees`) VALUES ('1', 'Br1', 'New York', '2');
INSERT INTO `sys`.`branche` (`ID`, `Name`, `Location`, `NrEmployees`) VALUES ('2', 'Br2', 'Craiova', '45');
INSERT INTO `sys`.`branche` (`ID`, `Name`, `Location`, `NrEmployees`) VALUES ('3', 'Br3', 'New York', '3');
INSERT INTO `sys`.`branche` (`ID`, `Name`, `Location`, `NrEmployees`) VALUES ('4', 'Br4', 'Cluj', '45');
INSERT INTO `sys`.`branche` (`ID`, `Name`, `Location`, `NrEmployees`) VALUES ('5', 'Br5', 'Arad', '15');
INSERT INTO `sys`.`branche` (`ID`, `Name`, `Location`, `NrEmployees`) VALUES ('6', 'Br6', 'New York', '76');
INSERT INTO `sys`.`branche` (`ID`, `Name`, `Location`, `NrEmployees`) VALUES ('7', 'Br7', 'Craiova', '50');
INSERT INTO `sys`.`branche` (`ID`, `Name`, `Location`, `NrEmployees`) VALUES ('8', 'Br8', 'Iasi', '360');
INSERT INTO `sys`.`branche` (`ID`, `Name`, `Location`, `NrEmployees`) VALUES ('9', 'Br9', 'New York', '300');
INSERT INTO `sys`.`branche` (`ID`, `Name`, `Location`, `NrEmployees`) VALUES ('10', 'Br10', 'New York', '368');

SELECT
`publisher`.`Name`
FROM `sys`.`publisher` WHERE `City` = "New York"; /*Ex 8*/

SELECT
`publisher`.`Name`
FROM `sys`.`publisher` WHERE `City` != "New York"; /*Ex 9*/

SELECT
`book`.`ID`, 
`book`.`Title`
FROM `sys`.`book` WHERE `Type` != "HOR" OR `PublisherCode` = "RH"; /*Ex 10*/

UPDATE `sys`.`book` SET `Title`='Cartea4' WHERE `ID`='4' and`AuthorID`='1' and`PublisherCode`='RH';
UPDATE `sys`.`book` SET `Title`='Cartea5' WHERE `ID`='6' and`AuthorID`='5' and`PublisherCode`='RH';

SELECT
`book`.`ID`, 
`book`.`Title`,
`book`.`Price`
FROM `sys`.`book` WHERE `Price` < 30 AND `Price` > 20; /*Ex 11*/

SELECT
`book`.`ID`, 
`book`.`Title`,
`book`.`Price`
FROM `sys`.`book` WHERE `Price` > 30; /*Ex 12*/

SELECT
`book`.`ID`, 
`book`.`Title`
FROM `sys`.`book` WHERE `Price` < 20 AND `Type` = "ART"; /*Ex 13*/

SELECT
`book`.`ID`, 
`book`.`Title`
FROM `sys`.`book` WHERE `Price` > 15 AND `Type` = "ART"; /*Ex 14*/

SELECT
`book`.`ID`, 
`book`.`Title`
FROM `sys`.`book` WHERE `Price` > 10 AND `PaperBack` = 1; /*Ex 15*/

SELECT
`book`.`ID`, 
`book`.`Title`
FROM `sys`.`book` WHERE `Type` = "PSY" OR `Type` = "TRA" OR `Type` = "CMP"; /*Ex 16*/

SELECT
`branche`.`NrEmployees`
FROM `sys`.`branche`; /*Ex 17*/

SELECT
`book`.`ID`,
`book`.`Title`,
`book`.`Price`
FROM `sys`.`book` WHERE PublisherCode = (SELECT
`publisher`.`Code`
FROM `sys`.`publisher` WHERE `Name` = "Tor Books"); /*Ex 18*/

INSERT INTO `sys`.`book` (`ID`, `Title`, `AuthorID`, `PublisherCode`, `Type`, `Year`, `Price`, `PaperBack`) VALUES ('9', 'Cartea9', '2', 'CD', 'ART', 2000, '10', '1');

SELECT
`book`.`ID`,
`book`.`Title`,
`book`.`Price`
FROM `sys`.`book` WHERE PublisherCode = (SELECT
`publisher`.`Code`
FROM `sys`.`publisher` WHERE `Name` = "Tor Books") AND `Price` < 15; /*Ex 19*/

SELECT `book`.`Year`, COUNT(
`book`.`Year`)
FROM `sys`.`book` GROUP BY `Year`;/*Ex 20*/

