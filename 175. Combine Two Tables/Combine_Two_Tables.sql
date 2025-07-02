select firstName, lastName, city, state 
from person as p 
left join address as a
on p.personID = a.personID
