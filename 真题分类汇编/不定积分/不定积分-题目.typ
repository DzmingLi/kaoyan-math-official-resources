#import "../template.typ": collection
#show: collection.with(title: "积分分类汇编", subject: "不定积分汇编")
#import "@preview/ezexam:0.3.1" as ezexam
#let choices = ezexam.choices.with(r-gap: 1.3em)
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)

= 历年真题：不定积分


*新增真题* 

#ezexam.question(label: n => [1987 数二 6])[
求 $integral (dif x)/(a^2 sin^2 x+b^2 cos^2 x)$.（$a,b$ 是不全为零的非负常数.）
]

#ezexam.question(label: n => [1987 数三 4])[
求 $integral e^(sqrt(2x-1))dif x$.
]

#ezexam.question(label: n => [1987 数四 5])[
求 $integral x/(x^4+2x^2+5)dif x$.
]

#ezexam.question(label: n => [1989 数二 3（2）])[
求 $integral (dif x)/(x ln^2 x)$.
]

#ezexam.question(label: n => [1989 数四 3（3）])[
求不定积分 $integral (x+ln(1-x))/x^2 dif x$.
]

#ezexam.question(label: n => [1990 数二 3（4）])[
计算 $integral (ln x)/(1-x)^2 dif x$.
]

#ezexam.question(label: n => [1990 数四 3（2）])[
求不定积分 $integral (x cos^4(x/2))/(sin^3 x)dif x$.
]

#ezexam.question(label: n => [1992 数二 3（3）])[
求 $integral x^3/sqrt(1+x^2)dif x$.
]

#ezexam.question(label: n => [1992 数三 4])[
计算 $I=integral (op("arccot")(e^x))/e^x dif x$.
]

#ezexam.question(label: n => [1992 数四 4])[
计算 $I=integral (arctan(e^x))/e^x dif x$.
]

#ezexam.question(label: n => [1992 数二 2（5）])[
若 $f(x)$ 的导函数是 $sin x$，则 $f(x)$ 有一个原函数为（　）.
#choices([$1+sin x$],[$1-sin x$],[$1+cos x$],[$1-cos x$])
]

#ezexam.question(label: n => [1987 数二 1（4）])[
$integral f'(x)dif x=$ #fillin(len: 4em)[]，$integral_a^b f'(2x)dif x=$ #fillin(len: 4em)[].
]


*直接积分求值*

#ezexam.question(label: n => [1991 数三 3（4）])[
求 $integral x sin^2 x dif x$.
]

#ezexam.question(label: n => [1991 数五 5])[
（5分）

求不定积分 $I=integral x^2/(1+x^2) arctan x dif x$.
]

#ezexam.question(label: n => [1993 数一 3（2）、数二 3（2）])[
求 $integral (x e^x)/sqrt(e^x-1)dif x$.
]

#ezexam.question(label: n => [1993 数三 1（4）])[
$integral (tan x)/sqrt(cos x)dif x=$ ＿＿＿＿.
]

#ezexam.question(label: n => [1993 数五 1（3）])[
$integral dif x/((2-x)sqrt(1-x))=$ ＿＿＿＿.
]

#ezexam.question(label: n => [1994 数一 3（3）、数二 3（3）、数三 3（4）])[
求 $integral 1/(sin 2x+2sin x)dif x$.
]

#ezexam.question(label: n => [1994 数三 1（4）])[
$integral x^3 e^(x^2)dif x=$ ＿＿＿＿.
]

#ezexam.question(label: n => [1995 数五 4])[
（6分）

计算不定积分 $integral (arcsin x)^2 dif x$.
]

#ezexam.question(label: n => [1995 MBA数 4])[
（7分）

计算不定积分 $integral 1/(x(1+x^2))dif x$.
]

#ezexam.question(label: n => [1996 数三 3（2）])[
求 $integral 1/(1+sin x)dif x$.
]

#ezexam.question(label: n => [1996 数三 4])[
（8分）

计算不定积分 $integral (arctan x)/(x^2(1+x^2))dif x$.
]

#ezexam.question(label: n => [1997 数二 1（3）])[
$integral (dif x)/sqrt(x(4-x))=$ ＿＿＿＿.
]

#ezexam.question(label: n => [1997 数二 3（3）])[
计算 $integral e^(2x)(tan x+1)^2 dif x$.
]

#ezexam.question(label: n => [1998 数二 1（3）])[
$integral frac(ln sin x,sin^2 x) dif x=$ #underline[　　　].
]

#ezexam.question(label: n => [1998 数三 1（2）、数四 1（2）])[
$integral frac(ln x-1,x^2) dif x=$ #underline[　　　].
]

#ezexam.question(label: n => [1999 数二 1（3）])[
$integral frac(x+5,x^2-6x+13)dif x=$ #underline[　　　].
]

#ezexam.question(label: n => [2000 数四 1（1）])[
$integral frac(arcsin sqrt(x),sqrt(x))dif x=$ #underline[　　　].
]

#ezexam.question(label: n => [2001 数一 3])[
（本题满分6分）求 $integral frac(arctan e^x,e^(2x))dif x$.
]

#ezexam.question(label: n => [2001 数二 3])[
（本题满分6分）求 $integral (dif x)/((2x^2+1)sqrt(x^2+1))$.
]

#ezexam.question(label: n => [2003 数二 5])[
（本题满分9分）求不定积分 $integral (x e^(arctan x))/(1+x^2)^(3/2) dif x$.
]

#ezexam.question(label: n => [2006 数二 16])[
（本题满分10分）

求 $integral (arcsin e^x)/e^x dif x$.
]

#ezexam.question(label: n => [2009 数二 16、数三 16])[
（本题满分10分）计算不定积分 $integral ln(1+sqrt((1+x)/x))dif x(x>0)$.
]

#ezexam.question(label: n => [2011 数三 17])[
（本题满分10分）求不定积分 $integral(arcsin sqrt(x)+ln x)/sqrt(x)dif x$.
]

#ezexam.question(label: n => [2018 数一 15、数二 15])[
（本题满分 10 分）

求不定积分 $integral e^(2x) arctan sqrt(e^x-1) dif x$.
]

#ezexam.question(label: n => [2018 数三 10])[
$integral e^x arcsin sqrt(1-e^(2x)) dif x=$\_\_\_\_\_\_.
]

*由函数关系求积分*

#ezexam.question(label: n => [1994 数五 5])[
（6分）

已知 $(sin x)/x$ 是函数 $f(x)$ 的一个原函数，求 $integral x^3 f'(x)dif x$.
]

#ezexam.question(label: n => [1995 数三 3（3）])[
设 $f(x^2-1)=ln(x^2/(x^2-2))$，且 $f(phi(x))=ln x$，求 $integral phi(x)dif x$.
]

#ezexam.question(label: n => [1996 数四 1（2）、数五 1（2）])[
设 $integral x f(x)dif x=arcsin x+C$，则 $integral 1/f(x)dif x=$ ＿＿＿＿.
]

#ezexam.question(label: n => [2000 数二 3])[
（本题满分5分）设 $f(ln x)=frac(ln(1+x),x)$，计算 $integral f(x)dif x$.
]

#ezexam.question(label: n => [2002 数三 5、数四 5])[
（本题满分6分）设 $f(sin^2 x)=x/(sin x)$，求 $integral sqrt(x)/sqrt(1-x) f(x) dif x$.
]

#ezexam.question(label: n => [2002 数四 1（2）])[
已知 $f(x)$ 的一个原函数为 $ln^2 x$，则 $integral x f'(x) dif x=$#h(3em).
]



*求原函数*

#ezexam.question(label: n => [2016 数一 2、数二 2])[
已知函数 $f(x)=cases(2(x-1) & x<1,ln x & x>=1)$，则 $f(x)$ 的一个原函数是
#choices([$F(x)=cases((x-1)^2 & x<1,x(ln x-1) & x>=1)$.], [$F(x)=cases((x-1)^2 & x<1,x(ln x+1)-1 & x>=1)$.], [$F(x)=cases((x-1)^2 & x<1,x(ln x+1)+1 & x>=1)$.], [$F(x)=cases((x-1)^2 & x<1,x(ln x-1)+1 & x>=1)$.])
]

