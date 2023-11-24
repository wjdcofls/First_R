# 맨 위에 라이브러리 모음 적어두기
library(ggplot2)
library(psych)



# ADsP _ 104번
# 난수 발생시 동일한 난수가 발생하도록 초기화하는 함수 -> set.seed()
trunc(runif(6,min = 1, max=45))
set.seed(10)

#패키지 설치 -> install.packages()
install.packages("ggplot2") # 그래프 그릴 때 유용한 패키지!
library(ggplot2)  #패키지 쓰고 싶을 때

search() # 패키지 목록 보기기
searchpaths() # 패키지 목록 + 경로
.libPaths()  # 패키지들이 어떤 경로에 설치됐어?
help(package="ggplot2")


## 데이터 불러오기 (Chap.14)
# 1. read.table()
ss1 = read.table("s1.txt", header=TRUE, sep =" ",fileEncoding = "EUC-kr")
ss1
ss2 = read.table(file = "s2.txt", header=TRUE, sep =",")
ss2
ss3 = read.table(file = "s3.txt", header=TRUE, sep ="\t",fileEncoding = "EUC-KR")
ss3

# 2. csv데이터 불러오기 -> read.csv() / EXCEL파일은 csv로 바꾸기
kkk2 = read.csv(file="kkk.csv", header=TRUE, fileEncoding = "euc-kr")
kkk2
kkk1 = read.csv(file="hhh.csv", header = TRUE)
kkk1
## na.strings = "."
h100= read.csv("100man.csv", header=TRUE, na.strings = ".",fileEncoding = "euc-kr")
View(h100)
HD = read.csv("hyundai.csv", header = TRUE, na.strings = ".", fileEncoding = "UTF-8")
View(HD)
pp1 = read.csv("GB_fd.csv", header = TRUE, na.strings = ".", fileEncoding = "euc-kr")
View(pp1)


# Chap.15
## 다이아몬드 데이터 분석하기
install.packages("ggplot2")
library(ggplot2)
View(diamonds)
## 다이아몬드 데이터 구조 알아보기
str(diamonds)
head(diamonds)
tail(diamonds)
## 데이터 일부만 가져오기 ★
diamonds$cut  # diamonds에서 'cut'열만 보기
diamonds12 = diamonds[-c(1:2)] #
View(diamonds12)
diamonds13 = diamonds[seq(from=2, to=10, by=2)]
View(diamonds13)
diamonds14 = diamonds[c(1:20),]
View(diamonds14)


# 230707 추가 _ 데이터 추출하기
View(diamonds)
diamonds[,2:4]
diamonds[,c(2,3,4)]
diamonds[,seq(from=2, to=10, by=2)]  #짝수 열만 출력

diamonds[,"cut"]  #행은 출력 안 하고, 열은 "cut"만 출력
diamonds[,"cut",drop=FALSE]
diamonds[,grep("^c", colnames(diamonds))]
