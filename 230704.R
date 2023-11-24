## 벡터의 연산 ##
a = c(1:3)
b = c(1:10)
a
b
f = a + b
f

v1 = c(3,10,12)
v2 = c("kim", "lee", "jeong")
v3 = c(TRUE, FALSE, TRUE)
str(v1)
str(v2)
str(v3)

v1 = c(1,3,5)
v2 = c(10,20,30)
v3 = c(v1, v2)
v3
v3[5:6]
v3[0:-4]
v3[-c(1:4)]
v3[-6]

# 패키지 설치 for 기술통계량
install.packages("psych")
library(psych)

#기술통계량을 나타내는 명령어 describe()
describe(v3)

# : colon
v4 = -3.3 : 5
v4
v5 = 5 : -3.3
v5

# 1-10까지 2씩 차이가 나게 하기
v6 = seq(from=1, to=10, by=2)
v6
v7 = seq(23,48,3)
v7
v8 = seq(from=5, to=1, by=-0.5)
v8
v9 = seq(from=1, to=5, by=0.5)
v9

sequence(5.5)

# rep() = replacement / 복사 기능
# 벡터동네_수치, 문자, 논리_에서만 쓸 수 있다.
r1 = rep("a", times=5)
r1
r2 = rep("a", each=5)
r2
r3 = rep(c("a","b"), times=3)
r3
r4 = rep(c("a","b"), each=3)
r4
r5 = rep(c("a","b"), times=3, each=2)
r5
r6 = rep(c("a","b"), times=c(7,5))
r6

a = c(1,2,3,4,NA,NA)
is.na(a)
table(is.na(a))  # table() -> 빈도

a1 = c(27, 35, 47, 41)
mode(a1)  # a1은 누구네 집 자식이니?
str(a1)
is.numeric(a1)
length(a1)

# names() -> 1. 너 이름이 뭐니? 2. 너 이름 이제 00이야!
names(a1) = c("A","B","C","D")
names(a1)
a1[3]
str(a1) # 이걸 데이터 프레임 구조로 바꿔야bb

# 벡터의 인덱싱 = 추출
weight = c(57, 81, 65, 49, 72)
weight[1]
weight[c(1,3,5)]
weight[2:5]
weight[-c(1,2,4)]
weight
weight[2] = 100
weight

weight1 = c(57, 81, 65, 49, 72, NA)
describe(weight1)
center = weight[-6]
center2 = mean(center)
weight1[6] = center2
weight1

b1 = 1:3
b2 = 1:10
b1 + b2

ab = c("a", "b", "c")
mode(ab)
