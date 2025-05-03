// 1
// MATCH (p:Person)
// WHERE p.age IS NOT NULL
//     AND p.age > 30
// RETURN p

MATCH (p:Person)
RETURN p, coalesce(p.nickname, p.name,'이름없음') as displayName