create database Academy
go
use Academy
go
create table Teachers (
Id int identity(1,1) not null primary key,
EmploymentDate date not null check(EmploymentDate>'1990-01-01'),
Name nvarchar(max) not null check(Name <> ' '),
Surname nvarchar(max) not null check(Surname <> ' '),
Premium money not null default 0 check(Premium >= 0),
Salary money not null check(Salary > 0)
)
go
create table Groups (
Id int identity(1,1) not null primary key,
Name nvarchar(50) not null check(Name<>' ') unique,
Rating int not null check(Rating<=5 and Rating>=1),
Year int not null check(Year<=5 and Year >=1)
)
go
create table Departments (
Id int identity(1,1) not null primary key,
Finances money not null check(Finances>=0) default 0,
Name nvarchar(100) not null check(Name<>' ') unique
)
go
create table Faculties (
Id int identity(1,1) not null primary key,
Name nvarchar(100) not null check(Name<>' ') unique
)
go
insert into Teachers (EmploymentDate, Name, Surname, Premium, Salary) values ('2024-12-06', 'Briana', 'Doerren', '$12.51', '$3.73');
insert into Teachers (EmploymentDate, Name, Surname, Premium, Salary) values ('2012-01-01', 'Idelle', 'Walton', '$5.91', '$16.15');
insert into Teachers (EmploymentDate, Name, Surname, Premium, Salary) values ('2007-12-12', 'Jacqueline', 'Checchi', '$3.28', '$28.23');
insert into Teachers (EmploymentDate, Name, Surname, Premium, Salary) values ('2010-06-22', 'Franciska', 'Veryard', '$16.44', '$7.71');
insert into Teachers (EmploymentDate, Name, Surname, Premium, Salary) values ('1991-03-15', 'Kristel', 'Toohey', '$11.04', '$28.95');
insert into Teachers (EmploymentDate, Name, Surname, Premium, Salary) values ('2001-10-20', 'Stephannie', 'Seydlitz', '$2.27', '$25.68');
insert into Teachers (EmploymentDate, Name, Surname, Premium, Salary) values ('2015-01-07', 'Bryant', 'Dredge', '$14.60', '$23.78');
insert into Teachers (EmploymentDate, Name, Surname, Premium, Salary) values ('2021-12-30', 'Doris', 'Baggalley', '$5.01', '$18.59');
insert into Teachers (EmploymentDate, Name, Surname, Premium, Salary) values ('2020-06-07', 'Con', 'Munnery', '$17.86', '$15.17');
insert into Teachers (EmploymentDate, Name, Surname, Premium, Salary) values ('2019-03-17', 'Zulema', 'Braunle', '$18.54', '$22.28');
insert into Teachers (EmploymentDate, Name, Surname, Premium, Salary) values ('2007-05-01', 'Agathe', 'Querrard', '$17.85', '$14.32');
insert into Teachers (EmploymentDate, Name, Surname, Premium, Salary) values ('2020-12-07', 'Tracy', 'Rooper', '$4.92', '$6.73');
insert into Teachers (EmploymentDate, Name, Surname, Premium, Salary) values ('1994-03-30', 'Kevin', 'Pattlel', '$0.54', '$19.45');
insert into Teachers (EmploymentDate, Name, Surname, Premium, Salary) values ('2021-08-12', 'Farris', 'Hattersley', '$5.86', '$21.84');
insert into Teachers (EmploymentDate, Name, Surname, Premium, Salary) values ('2017-11-26', 'Harwilll', 'Lackington', '$18.34', '$26.67');
insert into Teachers (EmploymentDate, Name, Surname, Premium, Salary) values ('2017-05-03', 'Ezekiel', 'Jeynes', '$18.54', '$15.44');
insert into Teachers (EmploymentDate, Name, Surname, Premium, Salary) values ('2023-10-01', 'Nels', 'Hollyland', '$2.55', '$11.28');
insert into Teachers (EmploymentDate, Name, Surname, Premium, Salary) values ('1992-09-10', 'Torrence', 'Glidder', '$17.41', '$13.84');
insert into Teachers (EmploymentDate, Name, Surname, Premium, Salary) values ('1998-12-29', 'Agnes', 'Gentil', '$1.16', '$2.15');
insert into Teachers (EmploymentDate, Name, Surname, Premium, Salary) values ('2005-06-17', 'Darelle', 'Mobbs', '$13.46', '$18.82');
insert into Teachers (EmploymentDate, Name, Surname, Premium, Salary) values ('1998-11-21', 'Andy', 'Struys', '$14.47', '$20.80');
insert into Teachers (EmploymentDate, Name, Surname, Premium, Salary) values ('2008-08-16', 'Nicky', 'Verchambre', '$14.23', '$20.19');
insert into Teachers (EmploymentDate, Name, Surname, Premium, Salary) values ('1992-04-02', 'Maurizia', 'Soigoux', '$13.90', '$27.06');
insert into Teachers (EmploymentDate, Name, Surname, Premium, Salary) values ('2005-01-20', 'Bab', 'Whanstall', '$6.13', '$6.07');
insert into Teachers (EmploymentDate, Name, Surname, Premium, Salary) values ('1994-12-01', 'Huey', 'Rothman', '$16.20', '$11.84');
insert into Teachers (EmploymentDate, Name, Surname, Premium, Salary) values ('2024-11-23', 'Rockey', 'Astin', '$4.31', '$21.74');
insert into Teachers (EmploymentDate, Name, Surname, Premium, Salary) values ('1994-08-20', 'Sophronia', 'Dragge', '$14.37', '$19.45');
insert into Teachers (EmploymentDate, Name, Surname, Premium, Salary) values ('2006-07-25', 'Elihu', 'Groucock', '$2.33', '$13.86');
insert into Teachers (EmploymentDate, Name, Surname, Premium, Salary) values ('2013-06-20', 'Concettina', 'Dallin', '$18.79', '$7.79');
insert into Teachers (EmploymentDate, Name, Surname, Premium, Salary) values ('2010-11-11', 'Addia', 'Oldmeadow', '$19.96', '$22.83');
go
insert into Groups (Name, Rating, Year) values ('Weimann-Zieme', 4, 2);
insert into Groups (Name, Rating, Year) values ('Schmidt and Sons', 1, 1);
insert into Groups (Name, Rating, Year) values ('Rowe Group', 4, 2);
insert into Groups (Name, Rating, Year) values ('Doyle, Fahey and Lesch', 3, 2);
insert into Groups (Name, Rating, Year) values ('Koelpin, Miller and Schuster', 4, 4);
insert into Groups (Name, Rating, Year) values ('Monahan-Witting', 3, 3);
insert into Groups (Name, Rating, Year) values ('Gerlach Group', 1, 4);
insert into Groups (Name, Rating, Year) values ('Klein LLC', 1, 2);
insert into Groups (Name, Rating, Year) values ('Lind and Sons', 5, 4);
insert into Groups (Name, Rating, Year) values ('Crooks, Doyle and Douglas', 1, 3);
insert into Groups (Name, Rating, Year) values ('Auer-Beer', 4, 4);
insert into Groups (Name, Rating, Year) values ('O''Connell-Walter', 5, 1);
insert into Groups (Name, Rating, Year) values ('Orn-Lakin', 3, 1);
insert into Groups (Name, Rating, Year) values ('Gutkowski-Luettgen', 2, 1);
insert into Groups (Name, Rating, Year) values ('Gerhold Inc', 1, 1);
insert into Groups (Name, Rating, Year) values ('Volkman Inc', 1, 5);
insert into Groups (Name, Rating, Year) values ('Jakubowski-Rippin', 3, 4);
insert into Groups (Name, Rating, Year) values ('Ondricka and Sons', 2, 4);
insert into Groups (Name, Rating, Year) values ('Sipes-Grimes', 4, 4);
insert into Groups (Name, Rating, Year) values ('Homenick-Nikolaus', 5, 2);
insert into Groups (Name, Rating, Year) values ('Huels-Legros', 4, 4);
insert into Groups (Name, Rating, Year) values ('Feest-Grimes', 3, 2);
insert into Groups (Name, Rating, Year) values ('Fisher Group', 1, 4);
insert into Groups (Name, Rating, Year) values ('Parker Inc', 5, 5);
insert into Groups (Name, Rating, Year) values ('Brakus Group', 1, 3);
insert into Groups (Name, Rating, Year) values ('Hessel-Parisian', 5, 2);
insert into Groups (Name, Rating, Year) values ('Hayes Group', 1, 2);
insert into Groups (Name, Rating, Year) values ('Harris, Ledner and Carroll', 4, 5);
insert into Groups (Name, Rating, Year) values ('Koepp LLC', 1, 3);
insert into Groups (Name, Rating, Year) values ('Bode-Rodriguez', 2, 1);
go
insert into Departments (Finances, Name) values ('$71.08', 'Training');
insert into Departments (Finances, Name) values ('$96.32', 'Business Development');
insert into Departments (Finances, Name) values ('$55.57', 'Engineering');
insert into Departments (Finances, Name) values ('$78.39', 'Support');
insert into Departments (Finances, Name) values ('$64.45', 'Legal');
insert into Departments (Finances, Name) values ('$20.52', 'Business Development');
insert into Departments (Finances, Name) values ('$74.50', 'Marketing');
insert into Departments (Finances, Name) values ('$38.38', 'Accounting');
insert into Departments (Finances, Name) values ('$60.42', 'Sales');
insert into Departments (Finances, Name) values ('$17.61', 'Training');
insert into Departments (Finances, Name) values ('$8.52', 'Support');
insert into Departments (Finances, Name) values ('$60.23', 'Business Development');
insert into Departments (Finances, Name) values ('$90.01', 'Training');
insert into Departments (Finances, Name) values ('$9.41', 'Engineering');
insert into Departments (Finances, Name) values ('$15.78', 'Services');
insert into Departments (Finances, Name) values ('$52.70', 'Services');
insert into Departments (Finances, Name) values ('$75.12', 'Services');
insert into Departments (Finances, Name) values ('$49.71', 'Training');
insert into Departments (Finances, Name) values ('$4.99', 'Accounting');
insert into Departments (Finances, Name) values ('$11.05', 'Support');
insert into Departments (Finances, Name) values ('$86.53', 'Engineering');
insert into Departments (Finances, Name) values ('$44.64', 'Sales');
insert into Departments (Finances, Name) values ('$29.21', 'Services');
insert into Departments (Finances, Name) values ('$19.70', 'Accounting');
insert into Departments (Finances, Name) values ('$86.72', 'Support');
insert into Departments (Finances, Name) values ('$35.55', 'Training');
insert into Departments (Finances, Name) values ('$22.86', 'Sales');
insert into Departments (Finances, Name) values ('$9.25', 'Marketing');
insert into Departments (Finances, Name) values ('$41.83', 'Business Development');
insert into Departments (Finances, Name) values ('$15.26', 'Accounting');
go
insert into Faculties (Name) values ('Services');
insert into Faculties (Name) values ('Support');
insert into Faculties (Name) values ('Human Resources');
insert into Faculties (Name) values ('Accounting');
insert into Faculties (Name) values ('Services');
insert into Faculties (Name) values ('Sales');
insert into Faculties (Name) values ('Sales');
insert into Faculties (Name) values ('Business Development');
insert into Faculties (Name) values ('Research and Development');
insert into Faculties (Name) values ('Training');
