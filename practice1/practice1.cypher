// 1 & 2
// CREATE (p:Person {name: 'Bob', age: 30})
// CREATE (c:Company {name: 'Alice Corp', location: 'Seoul'})

// 3
// MATCH (p:Person {name: 'Bob'})
// OPTIONAL MATCH (c:Company {name: 'Alice Corp'})
// WITH p, c
// WHERE c IS NOT NULL
// CREATE (p)-[:WORKS_FOR]->(c)

// 4
// MATCH (p:Person {name: 'Bob'})
// return p

//5
// MATCH (p:Person {name: 'Bob'})-[:WORKS_FOR]->(c:Company)
// return c.name

// alpha
// 1
// CREATE (p:Person {name: 'Eve', age: 43, gender: 'Male'})
// CREATE (c:Company {name: 'TecgLab', location: 'New York'})

// 2
// MATCH (c:Company {name: 'TecgLab'})
// SET c.name = 'TechLab'
// return c

// 3
MATCH (p:Person {name: 'Eve'})
OPTIONAL MATCH (c:Company {name: 'TechLab'})
OPTIONAL MATCH (nc:Company {name: 'Alice Corp'})
WITH p, c, nc
WHERE c IS NOT NULL AND nc IS NOT NULL
CREATE (p)-[:WORKS_FOR]->(c), 
         (p)-[:ADVISES]->(nc)

