
# Cypher 실습 3탄: MERGE + 관계 속성

## 🎯 목표
- MERGE를 사용하여 중복 없이 관계를 생성한다.
- 관계가 처음 만들어질 때는 `since`를, 이미 있을 경우에는 `lastChecked` 값을 설정한다.

---

## 📝 실습 미션

### 1. MERGE로 Eve와 TechLab의 관계를 만들기
- Eve와 TechLab 사이에 `WORKS_FOR` 관계를 MERGE로 연결하세요.
- 관계가 새로 만들어질 경우 `since: 2024` 속성을 추가하세요.
- 이미 관계가 있던 경우엔 `lastChecked` 날짜를 추가하세요.

### 2. 관계를 조회해서 어떤 속성이 들어갔는지 확인
- 관계가 새로 생겼다면 `since`가,
- 기존에 있었다면 `lastChecked`가
  들어갔는지 확인해보세요.

---

## 💡 힌트

```cypher
MATCH (p:Person {name: 'Eve'})
MATCH (c:Company {name: 'TechLab'})
MERGE (p)-[r:WORKS_FOR]->(c)
  ON CREATE SET r.since = 2024
  ON MATCH SET r.lastChecked = date()
RETURN r
```

---

## ✅ 결과 확인 쿼리

```cypher
MATCH (p:Person {name: 'Eve'})-[r:WORKS_FOR]->(c:Company)
RETURN type(r), r.since, r.lastChecked, c.name
```
