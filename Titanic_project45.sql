use titanic_project;

select * from titanic;

-- select all columns for all passengers in the titanic dataset
select * from titanic;

-- display the number of passengers in each class
select pclass, count(pclass) from titanic group by pclass;

-- find the number of male and female passengers
select sex, count(sex) from titanic group by sex;

-- display the name of passenger who servived
select name from titanic where survived = 'survived';

-- find the average age of passengers
select avg(age) from titanic;

-- list the names and passengers whio were younger than 18
select name, age from titanic where age < 18;

-- display the number of passenger in each embarkation port(C, Q, S)
select embarked, count(name) from titanic group by embarked;

-- find the highest fare paid by any passenger
select * from titanic order by fare desc limit 1;

-- list the average age of passenger for each class
select pclass, avg(age) from titanic group by pclass;

-- display the passenger name and ages for those who survived and were in 1st class
select name, age from titanic where survived = 'survived' and pclass = 1;

-- find the number of passenger who paid more than 50 for their ticket
select count(name) from titanic where ticket > 50;

-- list the names of passengers who did not survived and were in 3rd class
select name from titanic where survived = 'died' and pclass = 3;

-- find the number of passenger with missing value in the "age" column
select count(name) from titanic where age is null;

-- display the passenger name and ages for those who embarked at port 'S' and survived
select name, age from titanic where embarked = 's';

-- calculate the total number of passenger on board
select count(name) from titanic;

-- list the average fare for each class
select pclass, avg(fare) from titanic group by pclass;

-- display the passengers name and age for those with a known age and fare greater than 100
select name, age from titanic where age is not null and fare > 100;

-- find the percentage of passengers who survived
select (count(case when survived = 1 then 1 end)/ count(survived))* 100 as survived_rate from titanic;

-- list the names of passengers who were in 2nd class and had a fare less than 20
select name from titanic where pclass = 2 and fare < 20;

-- display the passenger names and ages for those who did not survive and were in 1st class
select name, age from titanic where survived = 'died' and pclass = 1;

-- find the number of passenger for each combination of class and gender
select pclass, sex, count(name) from titanic group by pclass, sex;

-- list the names of passenges who survived and were in 3rd class  with an age less than 20
select name, age, survived from titanic where survived = 'survived' and pclass = 3 and age < 20;

-- display the passengers name for those with the name starting with 'M'
select name from titanic where name like 'm%';

-- find the average age of male and female passengers
select sex, avg(age) from titanic group by sex;

-- list the names of passengers who paid the highest fare
select name, fare from titanic order by fare desc limit 1;

-- find the number of passenger for each embarkation port and class
select embarked, pclass, count(name) from titanic group by embarked, pclass;

-- display the passenger names and ages for those who survived and paid more than 200 for their ticket
select name, age from titanic where  survived = 'survived' and ticket > 200;

-- find the average age of passenger who survived and those who did not
select survived, avg(age) from titanic group by survived;

-- list the names of passengers who were in 1st class and had an age greater than 50
select name, age from titanic where pclass = 1 and age > 50;

-- display the passenger names for those with the name ending with "sson"
select name from titanic where name like '%sson';