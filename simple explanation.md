크킹 전투원리 
==========
크킹의 전투원리를 설명하고 이를 토대로 크킹 전투를 파이썬으로 구현한다.

게임의 기본 원리. 
----------

1. 진영.

진영은 좌, 우, 중앙이 존재한다.
각각 진영끼리 싸우지만 반대 진영에 없을 시 옆 진영을 치는데 반대쪽에 적이 없을 경우 그 옆 진영을 친다.
이렇게 측면 공격하는 상대는 공격에 30% 효과를 준다.

2. 피해.

기본 피해값(TROOP_KILL_FACTOR)은 0.015다. 기본공식: TROOP_KILL_FACTOR * (받은피해 / 유닛방어)

예시: 한쪽에 창병 300(방어력 8)명과 궁수 200(방어력 2)가 있는 진영에 데미지 10000점이 들어갔다고 치면 
우선 창병이 전체 군세의 60%니 데미지 1만점 중 60%를 가져간다(6000). 
그리고 방어력이 8이기 때문에 창병의 최종 피해는 0.015 * 6000/8 == 약 11명이 된다. 
이때 크킹계산기는 소수점 결과값을 보통 내림처리함.

그리고 이런 계산시스템 때문에 방어력이 낮은 병사들이 먼져 갈려나가는지라 
위 예시의 군세는 창병 70% 궁병 30% 이런 식으로 비율이 바뀔 수가 있다. 

패주는 사기 25% 이하일 시 일어난다. 
사기 떨어지는 공식: 병사 하나에 3점. 

Example: The right flank of army A does 10000 damage. 
The right flank of army B has two units - 300 pikes with defense 8, and 200 archers with defense 2. 
As the pikes make up 60% of the flank, they take 60% of the damage (6000 damage). 
Because they have 8 defense, they lose .015*6000/8 = about 11 pikes.
The game often rounds off casualties slightly, so the results may not perfectly match the prediction.

One of the consequences of the way damage is split up is that over the course of a prolonged battle, 
low-defense units are disproportionately killed off - so while you may start out with 60% pikes and 40% archers, 
by the end of the battle it's quite possible your flank survivors will be 70% pikes and 30% archers.


주요 출처:
[ckii wiki - Combat](http://www.ckiiwiki.com/Combat)
