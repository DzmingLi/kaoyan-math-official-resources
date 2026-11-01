#import "../../template.typ": collection
#show: collection.with(title: "傅里叶级数分类汇编", subject: "傅里叶级数")
#import "@preview/ezexam:0.3.1" as ezexam
#let choices = ezexam.choices.with(r-gap: 1.3em)
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)

= 历年真题：傅里叶级数

#ezexam.question(label: n => [1988 数一 1（3）])[
设 $f(x)$ 是周期为2的周期函数，它在区间 $(-1,1]$ 上定义为
$ f(x)=cases(2 & -1<x<=0,x^3 & 0<x<=1), $
则 $f(x)$ 的傅里叶（Fourier）级数在 $x=1$ 处收敛于 #fillin(len: 4em)[].
]

#ezexam.question(label: n => [1989 数一 2（4）])[
设函数 $f(x)=x^2,0<x<1$，而 $S(x)=sum_(n=1)^infinity b_n sin(n pi x),-infinity<x<+infinity$，其中 $b_n=2integral_0^1 f(x)sin(n pi x)dif x,n=1,2,3,dots$，则 $S(-1/2)$ 等于（　）.
#choices([$-1/2$],[$-1/4$],[$1/4$],[$1/2$])
]

#ezexam.question(label: n => [1991 数一 5、数二 5])[
（8分）

将函数 $f(x)=2+abs(x)$（$-1<=x<=1$）展开成以2为周期的傅里叶级数，并由此求级数 $sum_(n=1)^infinity 1/n^2$ 的和.
]

#ezexam.question(label: n => [1992 数一 1（3）])[
设 $f(x)=cases(-1 & -pi<x<=0,1+x^2 & 0<x<=pi)$，则其以 $2pi$ 为周期的傅里叶级数在点 $x=pi$ 处收敛于 #fillin(len: 4em)[].
]

#ezexam.question(label: n => [1993 数一 1（3）、数二 1（3）])[
设函数 $f(x)=pi x+x^2$（$-pi<x<pi$）的傅里叶级数展开式为 $a_0/2+sum_(n=1)^infinity (a_n cos n x+b_n sin n x)$，则其中系数 $b_3$ 的值为 #fillin(len: 4em)[].
]

#ezexam.question(label: n => [1995 数一 4（2）、数二 4（2）])[
（本题满分 6 分）将函数 $f(x)=x-1$（$0<=x<=2$）展开成周期为 4 的余弦级数.
]

#ezexam.question(label: n => [1999 数一 2（3）])[
设
$ f(x)=cases(x & quad 0<=x<=frac(1,2),2-2x & quad frac(1,2)<x<1), $
$ S(x)=frac(a_0,2)+sum_(n=1)^infinity a_n cos n pi x, quad -infinity<x<+infinity, $
其中 $a_n=2integral_0^1 f(x)cos n pi x dif x$（$n=0,1,2,dots$），则 $S(-frac(5,2))$ 等于（　）.
#choices[$frac(1,2)$.][$-frac(1,2)$.][$frac(3,4)$.][$-frac(3,4)$.]
]

#ezexam.question(label: n => [2003 数一 1（3）])[
设 $x^2=sum_(n=0)^infinity a_n cos(n x) (-pi<=x<=pi)$，则 $a_2=$#fillin(len: 4em)[].
]

#ezexam.question(label: n => [2008 数一 19])[
（本题满分11分）
将函数 $f(x)=1-x^2$（$0<=x<=pi$）展开成余弦级数，并求级数 $sum_(n=1)^infinity (-1)^(n-1)/n^2$ 的和.
]

#ezexam.question(label: n => [2013 数一 3])[
设 $f(x)=|x-1/2|$，$b_n=2integral_0^1 f(x)sin(n pi x)dif x$，则级数 $sum_(n=1)^infinity b_n sin(n pi x)$ 在 $x=-9/4$ 处的和为
#choices([$3/4$.],[$1/4$.],[$-1/4$.],[$-3/4$.])
]

