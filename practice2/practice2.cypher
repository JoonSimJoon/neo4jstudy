// // 1. Eve 생성
// CREATE (:Person {name: 'Eve', age: 43, gender: 'Female'})

// // 2. 회사 노드 2개 생성
// CREATE (:Company {name: 'TechLab', location: 'New York'})
// CREATE (:Company {name: 'Alice Corp', location: 'Seoul'})


// //과제
// // 1. 관계에 속성 추가해서 새로 만들기
// MATCH (p:Person {name: 'Eve'})
// MATCH (c1:Company {name: 'TechLab'})
// MATCH (c2:Company {name: 'Alice Corp'})
// WITH p, c1, c2
// WHERE c1 IS NOT NULL AND c2 IS NOT NULL
// CREATE (p)-[:WORKS_FOR {since: 2024}]->(c1), 
//        (p)-[:ADVISES {since: 2023}]->(c2)

// 2. 만들어진 관계를 조회해서 확인하기
MATCH (p:Person {name: 'Eve'})-[r]->(c:Company)
RETURN r.since, c.name