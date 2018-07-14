# rcode
R coding(R작업에 유용한 코드 정리) 

- [online markdown editor](https://jbt.github.io/markdown-editor/) 
- [online html editor](https://html-online.com/editor/) 

### 표 만들기
- [R에서 분석한 상관관계를 계수와 P값이 함께 나오게 표로 만들기.](https://github.com/dataminds/rtip/blob/master/correlatonMatrix_table.R)
#### 패키지 설치여부를 미리 확인해, 설치되지 않았을 때만 패키지 설치하기
```
if(!require(pkg)) install.packages("pkg")
```

#### 객체명을 문자로 
```
object2string <- function(x) {
  n <- deparse(substitute(x))
  print(n)
  }

object2string(a)
```

#### PDF문서를 TXT문서로 
```
#https://medium.com/@CharlesBordet/how-to-extract-and-clean-data-from-pdf-files-in-r-da11964e252e

if(!require(pdftools)) install.packages("pdftools")
library(pdftools)
text <- pdf_text("E:\\0Articles\\0book\\story\\Oatley_dream.pdf")
text2 <- strsplit(text, "\n")
head(text2[[1]])
head(text2)

if(!require(tm)) install.packages("tm")
library(tm)
read <- readPDF(control = list(text = "-layout"))
```

### Markdown
see [GitHub Flavored Markdown](https://guides.github.com/features/mastering-markdown/).
