
# Cypher 실습 3탄 요약: MERGE와 조건 분기, 변수 스코프

## ✅ 실습 목표
- 관계가 없으면 새로 만들고(`ON CREATE SET`)
- 이미 있으면 다른 동작을 하게끔 처리(`ON MATCH SET`)

---

## 📝 수행한 쿼리 예시

```cypher
MATCH (p:Person {name: 'Eve'})
MATCH (c:Company {name: 'TechLab'})
MERGE (p)-[r:WORKS_FOR]->(c)
  ON CREATE SET r.since = 2024
  ON MATCH SET r.last_updated = date()
WITH *
MATCH (p:Person {name: 'Eve'})-[r]->(c:Company)
RETURN r
```

---

## 💡 학습 질문 정리

### 1. MERGE + ON CREATE / ON MATCH 구조란?

- MERGE: 관계/노드가 없으면 생성, 있으면 유지
- ON CREATE SET: 새로 생성되었을 때만 실행
- ON MATCH SET: 이미 존재했을 때만 실행
- 둘 다 SET만 가능 → 일종의 if문처럼 작동

---

### 2. last_updated는 왜 쓰는가?

- 관계가 이미 있으면 마지막 업데이트 시점을 기록
- 실무에서는 '최근 활동 시간' 같은 의미로 활용

---

### 3. Cypher에서 변수 초기화는?

- 초기화는 없음 → 스코프에 따라 변수 유효성이 달라짐
- WITH로 넘기지 않으면 자동으로 스코프 밖으로 사라짐
- 같은 이름을 다시 MATCH하면 새로운 변수 선언일 뿐

---

### 4. MERGE 뒤에 MATCH 쓰면 왜 에러?

- MERGE는 MATCH 뒤에 직접 붙을 수 없음
- 반드시 WITH로 연결해야 다음 블록 실행 가능

---

### 5. WITH *의 의미

- 지금까지 정의된 모든 변수를 넘김
- 간편하지만, 실무에서는 명시적 WITH 권장

---

## ✅ 키워드 요약

| 개념 | 설명 |
|------|------|
| MERGE | 조건에 따라 존재 시 유지, 없으면 생성 |
| ON CREATE SET | 새로 생긴 경우 속성 지정 |
| ON MATCH SET | 이미 있던 경우 갱신 속성 지정 |
| WITH | 변수 스코프 전달자 역할 |
| WITH * | 모든 변수 넘김 (학습용으로는 편리) |
| 변수 재사용 | MATCH로 새롭게 선언 가능 (초기화 아님) |
