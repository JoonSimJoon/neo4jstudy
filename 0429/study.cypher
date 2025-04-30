//MATCH (n)
//DETACH DELETE n

//CREATE (p:Person {name: 'Bob', age: 30})
//CREATE (c:Company {name: 'Alice Corp', location: 'Seoul'})

//MATCH (p:Person {name: 'Bob'}), (c:Company {name: 'Alice Corp'})
//CREATE (p)-[:WORKS_FOR]->(c)

/*
MATCH (p:Person {name: 'Bob'})
OPTIONAL MATCH (c:Company {name: 'Alice Corp'})
WITH p, c
WHERE c IS NOT NULL
CREATE (p)-[:WORKS_FOR]->(c)
*/

//CREATE (p:Person {name: 'Kevin', age: 23, gender: 'Male'})
//WITH p

//MATCH (x:Person) 
//RETURN x


// MATCH (p:Person)-[:WORKS_FOR]->(c:Company)
// RETURN p.name, c.name
MATCH (p:Person)
WHERE p.name = 'Bob'
RETURN p