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

