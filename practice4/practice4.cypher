// 1
// MATCH (p:Person {name: 'Eve'})-[r]->(c:Company {name:'TechLab'})
// REMOVE r.last_updated

//2
MATCH (p:Person {name: 'Eve'})-[r:ADVISES]->
    (c:Company {name:'Alice Corp'})
DELETE r