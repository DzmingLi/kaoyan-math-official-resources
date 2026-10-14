#import "@preview/ezexam:0.3.1" as ezexam
#let choices = ezexam.choices.with(r-gap: 1.3em)
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)

= 历年真题：幂级数展开

#ezexam.question(label: n => [1987 数三 9])[
将函数 $f(x)=1/(x^2-3x+2)$ 展成 $x$ 的幂级数，并指出其收敛区间.
]

#ezexam.question(label: n => [1989 数一 4])[
将函数 $f(x)=arctan (1+x)/(1-x)$ 展为 $x$ 的幂级数.
]

#ezexam.question(label: n => [1994 数一 3（2）、数二 3（2）])[
将函数 $f(x)=1/4 ln((1+x)/(1-x))+1/2 arctan x-x$ 展开成 $x$ 的幂级数.
]

#ezexam.question(label: n => [1995 数四 5])[
（6分）

将函数 $y=ln(1-x-2x^2)$ 展成 $x$ 的幂级数，并指出其收敛区间.
]

#ezexam.question(label: n => [1996 数三 3（4）])[
求函数 $f(x)=(1-x)/(1+x)$ 在 $x=0$ 点处带拉格朗日型余项的 $n$ 阶泰勒展开式.
]

#ezexam.question(label: n => [2001 数一 5])[
（本题满分8分）设 $f(x)=cases(frac(1+x^2,x)arctan x & x!=0,1 & x=0)$，试将 $f(x)$ 展开成 $x$ 的幂级数，并求级数 $sum_(n=1)^infinity frac((-1)^n,1-4n^2)$ 的和.
]

#ezexam.question(label: n => [2003 数一 4])[
（本题满分12分）将函数 $f(x)=arctan((1-2x)/(1+2x))$ 展开成 $x$ 的幂级数，并求级数 $sum_(n=0)^infinity (-1)^n/(2n+1)$ 的和.
]

#ezexam.question(label: n => [2006 数一 17])[
（本题满分12分）

将函数 $f(x)=x/(2+x-x^2)$ 展开成 $x$ 的幂级数.
]

#ezexam.question(label: n => [2007 数一 20])[
（本题满分10分）设幂级数 $sum_(n=0)^infinity a_n x^n$ 在 $(-infinity,+infinity)$ 内收敛，其和函数 $y(x)$ 满足 $y''-2x y'-4y=0,y(0)=0,y'(0)=1$.

（Ⅰ）证明 $a_(n+2)=2/(n+1)a_n,n=1,2,dots$；

（Ⅱ）求 $y(x)$ 的表达式.
]

#ezexam.question(label: n => [2007 数三 20])[
（本题满分10分）将函数 $f(x)=1/(x^2-3x-4)$ 展开成 $x-1$ 的幂级数，并指出其收敛区间.
]

