use sandbox20221125;

create table Savininkai
(
Vardas varchar(20) not null,
pavarde varchar(20) not null,
gimimodata date not null,
id int identity(1,1) primary key
);

create table automobiliai
(
valstybinisNumeris nvarchar(6) not null,
Marke nvarchar(20)  not null,
Modelis nvarchar(20)  not null,
PagaminimoData date not null,
idfk int foreign key references Savininkai(id) 

);

select * from Savininkai;
select * from automobiliai

insert into Savininkai(Vardas, pavarde, gimimodata)
values  ('Vardenis', 'Pavardenis', '1999.09.09'),
        ('Vardonijus', 'Pavardenius', '1899.09.09'),
        ('Vardukas', 'Pavius', '1888.08.08')

insert into automobiliai(valstybinisNumeris, Marke, Modelis, PagaminimoData, idfk)
values ('xxx666','bmw','7','2003',1),
	   ('yyy666','bmw','x5','2009',1)


drop table Savininkai;
drop table automobiliai;



------------------------------------------




create table bibliotekos(
id int identity(55,1) primary key,
pavadinimas nvarchar(50) not null,
miestas nvarchar(50) not null,
)

create table knygos
(
id int identity(101,59) primary key,
pavadinimas nvarchar(30) not null,
autorius nvarchar(30) not null,
isleidimoMetai date not null
)

create table bibliotekosknygos
(
idfk int foreign key references bibliotekos(id),
ideefk int foreign key references knygos(id)
)

insert into bibliotekos(pavadinimas, miestas)
values  ('Bibliora', 'Portugalija'),
  ('Knygorius', 'Majamis'),
  ('Knygius', 'Sanchajus'),
  ('Knygunas', 'Lichtensteinas')

     
insert into knygos(pavadinimas, autorius, isleidimoMetai)
values  ('Biblija', 'jezus', '1888.03.03'),
 ('koranas', 'mohamedas', '1777.07.07'),
 ('kaip uzdirbt milijona', 'tomas', '1999.09.09'),
 ('kaip parasyti knyga', 'andrius', '2003.09.09')
 
 insert into bibliotekosknygos(idfk,ideefk) 
values ('55','160'),
	   ('56','160'),
	   ('57','219'),
	   ('58','337')

drop table bibliotekos;
drop table knygos;
drop table bibliotekosknygos;

select * from bibliotekos;
select * from knygos;
select * from bibliotekosknygos;