DELIMITER //
create procedure work_area( in city VARCHAR(50)) BEGIN SELECT * FROM customer where WORKING_AREA=city; END;//

call work_area('Bangalore');//

