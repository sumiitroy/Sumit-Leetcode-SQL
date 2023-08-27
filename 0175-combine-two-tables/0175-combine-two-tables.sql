# Write your MySQL query statement below

Select Person.FirstName, Person.LastName, Address.City, Address.State
From Person
Left Join Address ON person.personId = Address.PersonId