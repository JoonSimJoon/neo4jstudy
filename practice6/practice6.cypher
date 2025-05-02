// MERGE (p:Person {name:'Kevin'})
//     ON CREATE SET p.createdAt = date()
// MERGE (c:Company {name:'NewCorp'})
//     ON CREATE SET c.createdAt = date()
// MERGE (p)-[r:WORKS_FOR]->(c)
//     ON CREATE SET r.createdAt = date()

MATCH (p:Person {name:'Kevin'}) - [r] -> (c)
return r