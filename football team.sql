create database football_team;
use football_team;

CREATE TABLE player_info(
id INT AUTO_INCREMENT NOT NULL PRIMARY KEY ,
first_name VARCHAR(15) NOT NULL,
Last_name VARCHAR(15) NOT NULL,
Height INT NOT NULL,
Weight_KG INT NOT NULL);

describe player_info;
CREATE TABLE financial_info(
fin_id INT AUTO_INCREMENT NOT NULL PRIMARY KEY ,
salary_k INT NOT NULL,
trans_fee_m INT NOT NULL,
goal_bonus_k DECIMAL(2,1) NOT NULL,
player_Id INT NOT NULL,
foreign KEY (player_id) references player_info (id));

CREATE TABLE Player_ability(
ab_id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
Positions CHAR(3) NOT NULL,
Goals INT NOT NULL,
Trophies int not null,
Player_id INT NOT NULL,
foreign KEY (player_id) references player_info (id));

describe PLAYER_ABILITY;

Insert into player_info 
(first_name, last_name, height, weight_kg, fin_Id)
Values  
('Cristiano','Ronaldo',187, 85, 01), 
('Lionel', 'Messi',67, 170, 02), 
('Zinedine','zidane', 185, 80, 03), 
('Eden', 'hazard', 171, 75, 04), 
('Guacho', 'Ronaldinho',76, 181, 05), 
('John', 'Terry', 187, 90, 06), 
('Ashley', 'cole', 176, 66, 07), 
('Daniel', 'Alves', 172, 70, 08), 
('paolo', 'Maldini', 187, 85, 09), 
('Ngolo', 'Kante', 168, 70, 10), 
('petr', 'cech', 196, 90, 11);
select * from player_info;

insert into financial_info 
(salary_k, trans_fee_m, goal_bonus_k, player_Id)
Values 
(500, 100, 3.5, 01), 
(400, 150, 3.5, 02), 
(350, 75, 2, 03), 
(380, 90, 3, 04), 
(350, 90, 2.5, 05), 
(275, 50, 1.5, 06), 
(280, 60, 1.5, 07), 
(285, 60, 1.5, 08), 
(275, 45, 1.5, 09), 
(300, 70, 2, 10), 
(260, 40, 1, 11);

insert into player_ability 
(positions, goals, trophies, player_Id)
Values 
('Att', 860, 34, 01), 
('Att', 811, 42, 02), 
('mid', 130, 15, 03), 
('Att', 280, 10, 04), 
('Mid', 230, 15, 05), 
('def', 66, 23, 06), 
('Def', 23, 28, 07), 
('def', 59, 43, 08), 
('def', 15, 25,09), 
('mid', 43, 12,10), 
('gk', 0, 19, 11);
describe player_info;




