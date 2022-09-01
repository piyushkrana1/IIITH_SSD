
DELIMITER //
CREATE PROCEDURE toprint()
BEGIN 
DECLARE done INT default 0;
DECLARE cname varchar(50);
DECLARE ccity varchar(50);
DECLARE ccountry varchar(50);
DECLARE cgrade int;
DECLARE cur CURSOR FOR
SELECT CUST_NAME,CUST_CITY,CUST_COUNTRY,GRADE from customer where AGENT_CODE LIKE "A00%";
DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;
OPEN cur;
label:LOOP
fetch cur into cname,ccity,ccountry,cgrade;
IF DONE=1 THEN LEAVE label;
end if;
SELECT cname,ccity,ccountry,cgrade;
END LOOP label;
CLOSE cur;
end //
call toprint()//