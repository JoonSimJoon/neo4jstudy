
# Cypher 실습 4탄: 관계 삭제와 속성 제거

## 🎯 목표
- 기존의 관계를 삭제하거나 관계에 포함된 속성만 제거하는 방법을 익힌다.
- 그래프 구조를 유지하면서 불필요한 연결 또는 속성을 정리할 수 있게 한다.

---

## 📝 실습 미션

### 1. 관계 속성 제거
- Eve와 TechLab 사이의 WORKS_FOR 관계에서 `last_updated` 속성을 제거하세요.

```cypher
MATCH (p:Person {name: 'Eve'})-[r:WORKS_FOR]->(c:Company {name: 'TechLab'})
REMOVE r.last_updated
```

---

### 2. 관계 삭제
- Eve와 Alice Corp 사이의 `ADVISES` 관계를 삭제하세요.

```cypher
MATCH (p:Person {name: 'Eve'})-[r:ADVISES]->(c:Company {name: 'Alice Corp'})
DELETE r
```

---

## ✅ 결과 확인 쿼리

```cypher
MATCH (p:Person {name: 'Eve'})-[r]->(c:Company)
RETURN type(r), r, c.name
```

- 현재 남아 있는 Eve의 관계들을 모두 확인할 수 있습니다.

---

## 💡 실무 팁

- 관계를 지우고 싶다면 `DELETE r`
- 관계는 유지하고 속성만 없애고 싶다면 `REMOVE r.propertyName`
- 노드까지 완전히 제거하려면 `DETACH DELETE`를 사용 (이번 실습에서는 사용하지 않음)
