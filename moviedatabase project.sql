create database movie_Databases;
use movie_Databases;

create table Genres(
Genre_ID int primary key auto_increment,
Genre_Name varchar(50) unique not null
);

create table Directors(
Director_ID int primary key auto_increment,
Director_Name varchar(50) not null
);

create table Movies(
Movie_ID int auto_increment primary key,
Movie_Name varchar(100) not null,
Release_Year int not null,
Director_ID int not null,
Movie_Rating decimal(3,2) not null,
foreign key (Director_ID) references Directors(Director_ID)
);

create table Actors(
Actor_ID int primary key auto_increment,
Actor_Name varchar(50) not null
);

create table Reviews(
Review_ID int primary key auto_increment,
Reviewer_Name varchar(100) not null,
Movie_ID int not null,
Feedback varchar(150) not null,
Movie_Rating decimal(3,2) not null,
foreign key (Movie_ID) references Movies(Movie_ID)
);

Create table Movie_Connections(
Movie_ID int not null,
Genre_ID int Not null,
Actor_ID int not null,
primary key (Movie_ID,Genre_ID,Actor_ID),
foreign key (Movie_ID) references Movies(Movie_ID),
foreign key (Genre_ID) references Genres(Genre_ID),
foreign key (Actor_ID) references Actors(Actor_ID)
); 

insert into Genres (Genre_Name) values ("Action"),("Adventure"),("Comedy"),
("Drama"),("Romance"),("Horror"),("Sci-fi"),("Thriller");

insert into Directors (Director_Name) values ("Sakthi Soundarajan"),("R Ravikumar"),("Venkat Prabhu"),("A R Murugadoss"),
("Ram Kumar"),("Lokesh Kanagaraj"),("Mani Ratnam"),("Selvaraghavan"),("P Vasu"),("Raghava Lawrence"),("S Shankar"),
("M S Anandan"),("P S Mithuran"),("Sundar C"),("N Linguswamy"),("Pradeep Ranganathan"),
("Ark Saravan"),("Rajkumar Periasamy");

insert into Movies (Movie_Name,Release_Year,Director_ID,Movie_Rating) values ("Dheena",2001,4,6.6),
("Chennai 28",2007,3,7.8),("Naanayam",2010,1,6.5),("Goa",2010,3,6.7),("Aayirathil Oruvan",2010,8,7.8),
("Paiya",2010,15,6.7),("Mankatha",2011,3,7.8),("Kanchana",2011,10,6.6),("Kadal",2013,7,4.6),("Irandam Ulagam",2013,8,5.8),
("Kaththi",2014,4,7.9),("Mundasupatti",2014,4,7.6),("Indru Netru Naalai",2015,2,7.9),("Masss",2015,3,5.6),
("O Kadhal Kanmani",2015,7,6.8),("I",2015,11,6.7),("Aambala",2015,14,4.9),("Miruthan",2016,1,5.8),
("Velainu Vandhutha Vellaikaaran",2016,2,5.6),("Puriyatha Puthir",2017,2,6.9),("Shivalinga",2017,9,6.7),
("Maragadha Naanayam",2017,17,6.7),("Tik Tik Tik",2018,1,5.7),("Ratchasan",2018,5,7.8),("Irumbu Thirai",2018,13,7.8),
("Sandakozhi 2 ",2018,15,4.6),("Kaithi",2019,6,8.8),("Comali",2019,16,6.7),("Dharala Prabhu",2020,2,6.9),
("Manaadu",2021,3,7.6),("Nenjam Marapathillai",2021,8,5.6),("Chakra",2021,12,5.8),("Captain",2022,1,3.7),
("Vikram",2022,6,8.9),("Ponniyin Selvan 1",2022,7,7.8),("Love Today",2022,16,7.7),("Chandramuki 2",2023,9,2.6),
("Ayalaan",2024,2,7.7),("Indian 2",2024,11,3.9),("Amaran",2024,18,8.9);

insert into Actors (Actor_Name) values ("Prasanna Venkatesan"),("Jayam Ravi"),("Arya"),("Vijay Sethupathi"),("Vishnu Vishal"),("Harish Kalyan"),("Sivakarthikeyan"),
("Ajith Kumar"),("Jai"),("Suriya"),("Silambarasan"),("Ajay Raj"),("Joseph Vijay"),("Karthi"),("Kamal Haasan"),("Vikram"),("Dulquer Salmaan"),
("Gautham Karthik"),("S J Suriya"),("Raghava Lawrence"),("Vishal"),("Pradeep Ranganathan"),("Aadhi pinisetty");

insert into Reviews (Reviewer_Name,Movie_ID,Feedback,Movie_Rating) values ("Jagan",21,"Average",2.6),("Karthick",23,"Good",3.1),("Gurumurthy",34,"Masterpiece",4.5),
("Sundar",9,"Bad",0.7),("Hemalatha",31,"Very scary",2.6),("Srinivasan",2,"Super Fun",3.7),("Sri Venkat",20,"Great Movie",3.4),("Anirudhan",5,"Super Fun",3.7),
("Amu",10,"Good",3),("Madhumita",15,"Super Movie I love it",3.9),("Nithyashree",26,"average",2.3),("Kishan",22,"Super funny movie",2.9),("Praveen Raj",32,"Great movie",3.2),
("Sethupathy",27,"Mass",4.2),("Sarathy",8,"Scary and Funny",3.1),("Priya",30,"Awesome",3.6),("Ravi Shankar",37,"waste",0.3),("Krishna Prasath",34,"Excellent action",4.3),
("Gautham Krishna",40,"Ultimate",4.7),("Vikram Kumar",38,"funny & great movie",4.1);

Insert into Movie_Connections (Movie_ID,Genre_ID,Actor_ID) values (1,5,8),(2,4,14),(3,8,1),(4,3,9),(5,2,14),(6,4,14),(7,1,8),(8,6,20),(9,5,18),(10,5,3),
(11,4,13),(12,3,5),(13,7,5),(14,3,10),(15,5,17),(16,1,16),(17,3,21),(18,6,2),(19,5,5),(20,8,4),
(21,6,20),(22,2,23),(23,7,2),(24,8,5),(25,8,21),(26,4,21),(27,1,14),(28,3,2),(29,4,6),(30,7,11),
(31,6,19),(32,8,21),(33,7,3),(34,1,15),(35,2,16),(36,3,22),(37,6,20),(38,7,7),(39,1,15),(40,1,7);

select * from Genres;
select * from Movies;
select * from Directors;
select * from Actors order by Actor_ID asc;
select * from Reviews;
Select * from Movie_Connections;

create index IDXMovie_Name on Movies(Movie_Name);
create index IDXMovie_ID on Reviews(Movie_ID);
create index IDXMovie_ID on Movie_Connections(Movie_ID);
create index IDXGenre_ID on Movie_Connections(Genre_ID);
Create index IDXActor_ID on Movie_Connections(Actor_ID);
Create index IDXDirector_ID on Movies(Director_ID);
create index IDXReviewer_Name on Reviews(Reviewer_Name);
create index IDXActor_Name on Actors(Actor_Name);

select M.Movie_Name,M.Release_Year,D.Director_Name from  Movies M 
inner join Directors D on M.Director_ID = D.Director_ID
where M.Release_Year > 2012;

select A.Actor_Name, M.Movie_Name from Actors A 
right join Movie_Connections MC on A.Actor_ID = MC.Actor_ID
right join Movies M on MC.Movie_ID = M.Movie_ID
where A.Actor_Name like "%I%"; 

select M.Movie_Name, M.Release_Year, R.Review_ID, R.Feedback from Movies M
left join Reviews R ON M.Movie_ID = R.Movie_ID;

select Movie_Name, Movie_Rating from Movies
where Movie_Rating > (select avg(Movie_Rating) from Movies);

select Movie_Name from Movies
where Movie_ID in (Select Movie_ID from Reviews where Movie_Rating < 3);

select Director_Name from Directors 
where Director_ID in (select Director_ID from Movies where Movie_Rating > (select avg(Movie_Rating) from movies));

select Genre_Name from Genres
where Genre_ID in (select Genre_ID from Movie_Connections 
where Movie_ID in (Select Movie_ID from Movies where Movie_Rating > 7.5));

Delimiter $$
create procedure ActorMovieList(In Actor_ID int)
begin
select M.Movie_Name, M.Release_Year from Movies M
Join Movie_Connections MC on M.Movie_ID = MC.Movie_ID
where MC.Actor_ID = Actor_ID;
end $$
delimiter ;

Delimiter $$
create procedure MovieDetails(In movie_id Int)
begin
  select M.Movie_Name, M.Release_Year, D.Director_Name, G.Genre_Name, M.Movie_Rating
  from Movies M
  join Directors D ON M.Director_ID = D.Director_ID
  join Movie_Connections MC ON M.Movie_ID = MC.Movie_ID
  join Genres G ON MC.Genre_ID = G.Genre_ID
  where M.Movie_ID = Movie_id;
end $$
delimiter ;

call ActorMovieList(5);
call MovieDetails(38);