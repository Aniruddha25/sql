DELIMITER //
CREATE PROCEDURE proc1(ch int)
BEGIN 
DECLARE num1 int default 56;
DECLARE num2 int default 40;

DECLARE choice int default 1;
DECLARE sum int default 0;
DECLARE rem int default 0;
DECLARE sum2 int default 0;
DECLARE string1 varchar(50) default 'aniruddha';
IF num1 mod 2 !=0 THEN
SET num1= num1+1;
else 
set num1=num1-1;
END IF;
INSERT INTO entry values(num1);
SET choice =ch;
case choice
when 2 then 
set  num2= num2+5;       --Modifying number
INSERT INTO entry values(num2);
when 3 then               --summation from 40 to 45
WHILE  num2 < 46 DO
 set sum =sum+num2;
 set num2=num2+1;
end WHILE;
INSERT INTO entry values(sum); 
when 4 then
REPEAT
SET rem =num2 %10;
set sum2=sum2+rem;
SET num2=num2/10;       -- sum of digits of number
UNTIL num2>0
END REPEAT;
INSERT INTO entry values(sum2);

when 5 then 
label : LOOP
SET num1=num1+2;
 IF num1 > 60 THEN    -- Infinite loop
   LEAVE label;
 END IF;
END LOOP label;
INSERT INTO entry values(num1);
when  6 then 
SET string1 =UPPER(string1);   -- UPPERCASE OF WORD
INSERT INTO string values(string1);
when 7 then
call concating();
else set num2 = 50;  -- calling procedure inside procedure;
end case;
INSERT INTO entry values(num2);

END //
DELIMITER ;
