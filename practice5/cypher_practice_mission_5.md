
# Cypher 실습 5탄: 노드 삭제 (DELETE, DETACH DELETE)

## 🎯 개념 목표

그래프 데이터베이스에서 노드를 삭제할 때 사용하는 두 가지 방식:

### 1. DELETE
- 노드를 삭제하려고 할 때, 연결된 관계가 남아 있다면 에러 발생

예:
```cypher
MATCH (p:Person {name: 'Eve'})
DELETE p  // 관계가 있으면 실패
```

### 2. DETACH DELETE
- 노드와 함께 연결된 관계도 모두 삭제

예:
```cypher
MATCH (p:Person {name: 'Eve'})
DETACH DELETE p  // 관계 포함 모두 제거
```

> 실무에서는 주로 `DETACH DELETE`를 사용합니다.

---

## 📝 실습 미션

아래 문제를 해결해보세요. 정답 코드는 포함되어 있지 않습니다.

### 1. Eve와 관련된 모든 노드 및 관계를 그래프에서 완전히 삭제하세요.

### 2. 'Alice Corp'라는 이름의 회사 노드를 관계가 없어야만 삭제할 수 있다면, 어떤 명령어를 써야 하나요? 그리고 실제로 삭제해보세요.

---

## 💡 힌트
- 관계가 있는 노드는 `DELETE`로 제거할 수 없습니다.
- `DETACH DELETE`는 노드와 연결된 관계를 함께 제거합니다.
