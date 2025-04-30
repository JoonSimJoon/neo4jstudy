# 🧠 Neo4j Cypher 실습 기록

## 📌 소개

이 저장소는 Neo4j를 직접 실습하면서 **그래프 데이터베이스(Cypher 쿼리)** 에 대한 감각을 익히고,  
이를 바탕으로 **GNN(Graph Neural Network)** 학습과 **Graph DB 기반 백엔드 설계 최적화**를 준비하기 위한 학습 기록입니다.

## 🎯 학습 목표

- Cypher 문법에 대한 체계적 이해 및 실습
- 관계형 모델과 그래프 모델 간의 차이 체감
- GNN 모델 학습 시 필요한 Graph 데이터 구조 이해
- 그래프 DB를 기반으로 한 API 백엔드 성능 튜닝 설계

## 🛠️ 사용 기술

- Neo4j Community Edition (로컬 서버)
- Cypher Query Language
- Visual Studio Code + Neo4j VSCode Extension
- Markdown 기반 실습 기록

## 📚 학습 진행 내용

| 단계 | 주제 |
|------|------|
| 실습 1탄 | CREATE, MATCH, WHERE, RETURN 기본 문법 |
| 실습 2탄 | 관계(Relationship) 생성 + 속성 부여 |
| 실습 3탄 | MERGE + ON CREATE SET / ON MATCH SET |
| 이후 예정 | 관계 삭제, 경로 탐색, 서브그래프 추출 등 |

## 🧾 실습 파일 구성

- `cypher_practice_mission_1.md`: 기본 노드 및 관계 생성 실습
- `cypher_practice_mission_2.md`: 관계 속성 부여 실습
- `cypher_practice_mission_3.md`: MERGE 및 조건부 속성 설정 실습

## 📌 향후 확장 계획

- Cypher 쿼리 성능 최적화 (`PROFILE`, `EXPLAIN`)
- GDB 기반 API 설계 패턴 정리
- GNN을 위한 Graph data preprocessing 흐름 연결

---

> 📌 해당 저장소는 학습 기록 저장용이며, 향후 백엔드 실험 코드 및 GNN 샘플 모델과 연계될 수 있습니다.