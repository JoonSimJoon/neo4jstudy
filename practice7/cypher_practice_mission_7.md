
# Cypher 실습 7탄: 조건 분기와 속성 검사 (EXISTS, IS NOT NULL, COALESCE)

## 🎯 학습 목표

- 속성의 존재 유무 검사
- null 여부 판단
- 기본값 설정을 통한 안정적인 출력 처리

---

## 📚 핵심 개념

### 1. EXISTS
```cypher
MATCH (p:Person)
WHERE EXISTS(p.age)
RETURN p
```

### 2. IS NOT NULL / IS NULL
```cypher
MATCH (p:Person)
WHERE p.age IS NOT NULL
RETURN p
```

### 3. COALESCE
```cypher
MATCH (p:Person)
RETURN p.name, COALESCE(p.nickname, p.name, '이름없음') AS displayName
```

---

## 📝 실습 미션

정답 코드는 포함되어 있지 않습니다.

### 1. 다음 조건을 만족하는 사람(Person) 노드를 조회하는 쿼리를 작성하세요.

- `age` 속성이 존재하고
- `age`가 null이 아니며
- `age`가 30 이상인 사람

---

### 2. 모든 사람(Person)을 조회할 때 다음 조건을 만족하세요.

- `nickname` 속성이 있으면 사용
- 없으면 `name`을 대신 사용
- 둘 다 없으면 `"이름없음"`을 출력  
결과 컬럼 이름은 `displayName`으로 표시
