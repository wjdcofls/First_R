# factor -> 범주형 데이터
# 명목형 데이터는 factor
# 순서형 데이터는 ordered = TRUE
gender = c ("m","f","f","m","f","f")
gender
str(gender) #gender의 구조를 알려줘
#명목형 데이터니깐 factor를 써서 변환
gender_factor = factor(gender)
gender_factor
str(gender_factor)
levels(gender_factor) # 지정된 그룹을 알려줌

gender_factor2= factor(gender, levels=c("m", "f"), labels=c("남자","여자"))
gender_factor2
str(gender_factor2)

gen3 = factor(gender, ordered = TRUE)
gen3
str(gen3)


#행렬
#rbind() = row + bind()
#cbind() = column + bind()
#matrix() = rbind() + cbind()
v1 = 1:3
v1
v2 = 4:6
v2
m1 = rbind(v1, v2)
m1
m2 = cbind(v1, v2)
m2
m2[3,2] = 100
m2

m2[1,] # m2의 1행만 추출출

# matrix 만들기
m3 = matrix(1:4, nrow = 2, ncol = 2)
m3
m4 = matrix(1:4, nrow = 2, ncol = 2, byrow = TRUE)
m4


# array -> 3차원 이상에서
a1 = array(1:10, dim=10)
a2= array(1:10, dim=c(2,5))
a3 = array(1:10, dim=c(3, 3,4))
a1
a2
a3
a3[1,,1]
a3[3,3,4] = 100


# 리스트
v1 = 1:5
m1 = matrix(1:6, nrow =2, ncol =3)
v1
m1
d1 = list(v1,m1)
d1
d1[[2]][2,3]=100
d1[[1]][6]=100  # d1 = c(1:5,100)도 가능


# 데이터 프레임
# 만들때 data.frame()함수 사용
id= 1:5
age = c(29, 32, 47, 35, 23)
gender = c("f", "m", "m", "f", "f")
height = c(163, 177, 172, 157, 169)
DF1 = data.frame(id, age, gender, height)
DF1
str(DF1)
View(DF1)  # 보여줘 -> View  cf) V 대문자로!
DF2 = data.frame(id,age,gender,height, stringsAsFactors = FALSE) # 팩터로 유지 X
DF3 = data.frame(id,age,gender,height, stringsAsFactors = TRUE) # 팩터로 유지 O
DF2
str(DF2)
DF3
str(DF3)
