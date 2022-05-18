
 Select *  FROM User
 
 CREATE TABLE `User` (
  `name` json DEFAULT NULL
);



INSERT INTO `User` (`name`)
VALUES ('["name1", "name2", "name3"]');

INSERT INTO User VALUES ('{"pid": 101, "name": "name1"}');
INSERT INTO User VALUES ('{"pid": 102, "name": "name2"}');

SELECT * FROM `User` WHERE JSON_CONTAINS(name, '["name1"]');