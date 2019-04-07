CREATE DATABASE redis;
USE redis;

DROP TABLE IF EXISTS redis.tbl_area;
CREATE TABLE redis.tbl_area(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	NAME CHAR(20) NOT NULL,
	PRIMARY KEY(id)
);

INSERT INTO redis.tbl_area(NAME) VALUES('区域1'),('区域2'),('区域3');

SELECT * FROM redis.tbl_area;

DROP TABLE IF EXISTS redis.tbl_device;
CREATE TABLE redis.tbl_device(
	id INT UNSIGNED AUTO_INCREMENT,
		NAME CHAR(30) NOT NULL,
			area_id INT UNSIGNED NOT NULL,
				PRIMARY KEY(id)
	);
		
	INSERT INTO redis.tbl_device (NAME, area_id)
	VALUES
	     ('设备1', 1), ('设备2', 2), ('设备3', 2), ('设备4', 3), ('设备5', 3), ('设备6', 3);
		
SELECT * FROM redis.tbl_device;
