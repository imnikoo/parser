use notes;

DROP TABLE IF EXISTS `users`; 

CREATE TABLE IF NOT EXISTS `users`(
id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
`login` TEXT NOT NULL  ,
`password` TEXT NOT NULL  
)ENGINE=INNODB; 


drop procedure if exists AddUser;
delimiter $$
create procedure AddUser(
		IN Login TEXT ,
		IN Password TEXT,
		OUT Id int )
begin
	
	INSERT INTO `users`
	(`login` ,
	`password` )
	VALUES
	(Login ,
	Password);

set Id = last_insert_id();
end$$
delimiter ;

drop procedure if exists UpdateUser;
delimiter $$
create procedure UpdateUser(
        IN Id int,
		IN Login TEXT ,
		IN Password TEXT)
begin
	UPDATE `users`
	SET 
	`users`.`login` = Login ,
	`users`.`password` = Password 
	WHERE id = Id;

end$$
delimiter ;

drop procedure if exists DeleteUser;
delimiter $$
create procedure DeleteUser(IN Id INT)
begin

delete from `users` where `users`.id = Id;
 
end$$
delimiter ;


drop procedure if exists GetUserById;
delimiter $$
create procedure GetUserById(IN Id INT)
begin

select * from `users` where `users`.id = Id;
 
end$$
delimiter ;


drop procedure if exists GetUserByLogin;
delimiter $$
create procedure GetUserByLogin(IN Login TEXT)
begin

select * from `users` where `users`.login = Login;
 
end$$
delimiter ;

