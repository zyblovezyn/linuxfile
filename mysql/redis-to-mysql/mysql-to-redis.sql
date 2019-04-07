SELECT CONCAT(  
  "*4\r\n",  
  '$', LENGTH(redis_cmd), '\r\n',  
  redis_cmd, '\r\n',  
  '$', LENGTH(redis_key), '\r\n',  
  redis_key, '\r\n',  
  '$', LENGTH(hkey), '\r\n',  
  hkey, '\r\n',  
  '$', LENGTH(hval), '\r\n',  
  hval, '\r' 
)  
FROM (  
  SELECT 
    'HSET' AS redis_cmd,  
	  area_id AS redis_key,  
	  id AS hkey,  
	  NAME AS hval  
	  FROM redis.tbl_device  
	) AS t
