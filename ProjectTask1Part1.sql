use Project

create table city (

State varchar (100),
Capital varchar (100),
Population int,
Area int,
FamousPeople varchar(100),
Nickname varchar(100),
Union_Year int,
StateBird varchar (100)
)

select * from city

/*Task 1 Part 1 Q1: Create a new database with the following table:*/

insert into city(State, Capital, Population, Area, FamousPeople, Nickname, Union_Year, StateBird)
values('Alaska','Juneau',479000,586412,'Joe Juneau','Last Frontier',1959,'Ptarmigan')

insert into city(State, Capital, Population, Area, FamousPeople, Nickname, Union_Year, StateBird)
values('Arizona','Phoenix',2963000,113909,'Geronimo','Grand Canyon State',1912,'Cactus Wren')

insert into city(State, Capital, Population, Area, FamousPeople, Nickname, Union_Year, StateBird)
values('California','Sacramento',25174000,158693,'Jack London','Golden State',1850,'Quail')

insert into city(State, Capital, Population, Area, FamousPeople, Nickname, Union_Year, StateBird)
values('Florida','Tallahasse',10680000,58560,'Joseph Stilwell','Sunshine State',1845,'Mockingbird')

insert into city(State, Capital, Population, Area, FamousPeople, Nickname, Union_Year, StateBird)
values('Hawaii','Honolulu',1023000,6450,'Don Ho','Aloha State',1959,'Goose')

insert into city(State, Capital, Population, Area, FamousPeople, Nickname, Union_Year, StateBird)
values('Idaho','Boise',989000,83557,'Sacajawea','Gem State',1890,'Bluebird')

insert into city(State, Capital, Population, Area, FamousPeople, Nickname, Union_Year, StateBird)
values('Kansas','Topeka',2425000,82264,'Amelia Earhart','Sunflower State',1861,'Meadowlark')

insert into city(State, Capital, Population, Area, FamousPeople, Nickname, Union_Year, StateBird)
values('Maine','Augusta',1146000,33215,'Henry Longfellow','Pine Tree State',1820,'Chickadee')

insert into city(State, Capital, Population, Area, FamousPeople, Nickname, Union_Year, StateBird)
values('Nebraska','Lincoln',1597000,77227,'Fred Astaire','Cornhusker State',1867,'Meadowlark')

insert into city(State, Capital, Population, Area, FamousPeople, Nickname, Union_Year, StateBird)
values('New Jersey','Trenton',7468000,7836,'Stephen Crane','Garden State',1787,'Goldfinch')

insert into city(State, Capital, Population, Area, FamousPeople, Nickname, Union_Year, StateBird)
values('New York','Albany',17667000,49576,'Walt Whitman','Empire State',1788,'Bluebird')

insert into city(State, Capital, Population, Area, FamousPeople, Nickname, Union_Year, StateBird)
values('Ohio','Columbus',10746000,41222,'Bob Hope','Buckeye State',1803,'Cardinal')

insert into city(State, Capital, Population, Area, FamousPeople, Nickname, Union_Year, StateBird)
values('Washington','Olympia',4300000,68192,'Bing Crosby','Evergreen State',1889,'Goldfinch')

insert into city(State, Capital, Population, Area, FamousPeople, Nickname, Union_Year, StateBird)
values('Wisconsin','Madison',4751000,56154,'Spencer Tracy','Badger State',1848,'Robin')

/*Task 1 Part 1 Q2: List the states that entered the union between 1850-1920, inclusive (hint: type in 1850...1920).*/

Select * from city where Union_Year >= 1850 AND Union_Year <= 1920

/*Task 1 Part 1 Q3: List the states with areas of less than 60,000 square miles that also have more than 10,000,000 people.*/

select * from city where Area < 60000 AND population > 10000000

/*Task 1 Part 1 Q4: Now arrange the entire data base by population from smallest to largest – capture your results into a temporary table and copy the contents to a new table called Famous sort.*/

select * from city order by Population asc


