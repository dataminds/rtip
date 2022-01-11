# r tip
R데이터 조작 및 작업에 유용한 코드 정리 

#### 패키지 설치여부를 미리 확인해, 설치되지 않았을 때만 패키지 설치하기
```
if(!require(pkg)) install.packages("pkg")
```

#### 복수의 패키지 한번에 설치
```
needed_pkgs <- c("nycflights13", "dplyr", "ggplot2", "knitr", 
                 "okcupiddata", "dygraphs", "rmarkdown", "mosaic", 
                 "ggplot2movies", "fivethirtyeight")

new.pkgs <- needed_pkgs[!(needed_pkgs %in% installed.packages())]

if(length(new.pkgs)) {
  install.packages(new.pkgs, repos = "http://cran.rstudio.com")
}
```
#### 폴더 만들고 작업디렉토리 
```
mainDir <- "C:/test"
subDir <- "outDir"
dir.create(file.path(mainDir, subDir))
setwd(file.path(mainDir, subDir))
getwd()
```

#### PDF문서를 TXT문서로 
```
#https://medium.com/@CharlesBordet/how-to-extract-and-clean-data-from-pdf-files-in-r-da11964e252e

if(!require(pdftools)) install.packages("pdftools")
library(pdftools)
text <- pdf_text("file.pdf")
text2 <- strsplit(text, "\n")
head(text2[[1]])
head(text2)

if(!require(tm)) install.packages("tm")
library(tm)
read <- readPDF(control = list(text = "-layout"))
```

#### 복수의 파일 읽어 데이터프레임 생성
```
if(!require(rio)) install.packages("rio")
temp <- list.files(pattern = "*.csv")
df <- do.call(rbind, lapply(temp, import))
```


### Markdown
see [GitHub Flavored Markdown](https://guides.github.com/features/mastering-markdown/).

###
R마크다운 예시
https://hyunyulhenry.github.io/lecture/200116_tidyverse/#8_문서화


8.1.1 YAML Header
YAML Ain’t Markup Language
제목, 출력물 형태, css 스타일 등을 정의
최상단에 위치하며, — 를 통해 정의
:를 통해 구분하며, 각 하부 내용은 엔터 후 띄어쓰기 2칸을 입력
---
title: "R Markdown"
author: "저자"
date: "2020-01-01"
output:
  html_document:
    toc: yes
    toc_float: yes
    toc_depth: 2
    number_sections: TRUE
header-includes:
- \usepackage{booktabs}
---
각 내용은 다음과 같음
title: 제목
author: 저자
date: 날짜
output: 출력 형태
toc: table of content. 목차 생성 여부
toc_float: 목차가 유동적으로 움직일지 여부
toc_depth: 목차의 depth
number_section: 제목에 숫자를 부여할지 여부
header-includes: 헤드 부분에 들어갈 내용
\usepackage: 사용할 latex
출력 형태 별 YAML 예시: https://rmarkdown.rstudio.com/formats.html


