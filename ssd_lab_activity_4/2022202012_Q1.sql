DELIMITER //
create procedure addition( in first INT,in second INT,out third INT) BEGIN SELECT first+second into third; END//

call addition(100,100,@result);//

select @result;
