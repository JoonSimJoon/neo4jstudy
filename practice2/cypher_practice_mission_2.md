
# Cypher 실습 2탄: 관계에 속성 추가하기

## 🎯 목표
- 관계(Relationship)에 속성(Property)을 추가하여 더 풍부한 그래프를 만든다.

---

## 📝 실습 미션

### 1. 관계에 속성 추가해서 새로 만들기
- Eve가 TechLab에 2024년에 입사했다는 것을 관계에 표시하세요.
- Eve가 Alice Corp에 2023년부터 Advisor로 일하고 있다는 것을 관계에 표시하세요.

### 2. 만들어진 관계를 조회해서 확인하기
- Eve가 TechLab에서 언제부터 일했는지,
- Eve가 Alice Corp에서 언제부터 고문이었는지 조회하여 출력하세요.

---

## ✅ 실습 진행 흐름
1. MATCH로 Eve, TechLab, Alice Corp를 모두 찾는다.
2. CREATE로 두 개의 관계를 만들면서 속성도 같이 추가한다.
3. MATCH로 Eve의 관계를 찾아서 since 값을 조회한다.

---

## 💡 힌트
- CREATE (p)-[:WORKS_FOR {since: 2024}]->(c)
- MATCH (p:Person {name: 'Eve'})-[r]->(c:Company) RETURN type(r), r.since, c.name
