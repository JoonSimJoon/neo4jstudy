
# Cypher 실습 6탄: 노드 + 관계 MERGE 심화

## 🎯 학습 목표

- 노드와 관계를 모두 MERGE를 통해 중복 없이 생성한다.
- 각 항목이 새로 생성되었을 경우에만 조건별 속성을 지정한다.

---

## 📚 개념 요약

### 🔹 MERGE 노드

```cypher
MERGE (p:Person {name: 'Eve'})
  ON CREATE SET p.createdAt = date()
```

### 🔹 MERGE 관계

```cypher
MERGE (p)-[r:WORKS_FOR]->(c)
  ON CREATE SET r.since = 2024
```

### 🔹 MERGE 노드 + 관계 결합

```cypher
MERGE (p:Person {name: 'Kevin'})
  ON CREATE SET p.createdAt = date()
MERGE (c:Company {name: 'NewCorp'})
  ON CREATE SET c.createdAt = date()
MERGE (p)-[r:WORKS_FOR]->(c)
  ON CREATE SET r.since = 2023
```

---

## 📝 실습 미션

### 1. 다음 조건을 만족하는 Cypher 쿼리를 작성하세요 (정답 코드는 포함되어 있지 않습니다)

- `Kevin`이라는 사람 노드를 MERGE로 생성
- `NewCorp`라는 회사 노드를 MERGE로 생성
- Kevin과 NewCorp 사이의 `WORKS_FOR` 관계를 MERGE로 생성
- 각각의 경우 `ON CREATE SET`을 사용하여 다음 속성을 추가:
  - `Person`: createdAt = date()
  - `Company`: createdAt = date()
  - 관계: since = 2023

---

### 2. Kevin과 연결된 모든 관계를 조회하여, 속성이 정상적으로 들어갔는지 확인하세요.
