// MATCH (p:Person {name: 'Eve'})
// DETACH DELETE p  // 관계 포함 모두 삭제

MATCH (p:Company {name: 'TechLab'})
DETACH DELETE p  // 관계 포함 모두 제거
