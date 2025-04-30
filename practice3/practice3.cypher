MATCH (p:Person {name: 'Eve'})
MATCH (c:Company {name: 'TechLab'})
MERGE (p)-[r:WORKS_FOR]->(c)
 ON CREATE SET r.since = 2024
 ON MATCH SET r.last_updated = date()
WITH *
MATCH (p:Person {name: 'Eve'})-[r]->(c:Company)
RETURN r
