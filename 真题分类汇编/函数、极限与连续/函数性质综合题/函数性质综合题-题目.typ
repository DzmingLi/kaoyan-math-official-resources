#import "../../template.typ": collection
#show: collection.with(title: "函数性质综合题分类汇编", subject: "函数性质综合题")
#import "@preview/ezexam:0.3.1" as ezexam
#import "@preview/cetz:0.5.2"
#let choices = ezexam.choices.with(r-gap: 1.3em)
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)

= 历年真题：函数性质综合题

*复合、反函数与积分*

#ezexam.question(label: n => [1995 数三 3（3）])[
设 $f(x^2-1)=ln(x^2/(x^2-2))$，且 $f(phi(x))=ln x$，求 $integral phi(x)dif x$.
]

#ezexam.question(label: n => [1996 数三 5])[
设 $f(x)=cases(1-2x^2 & quad x<-1,x^3 & quad -1<=x<=2,12x-16 & quad x>2)$.

（1）写出反函数 $g(x)$ 的表达式；

（2）$g(x)$ 是否有间断点、不可导点？若有，指出这些点.
]

#ezexam.question(label: n => [2001 数二 6])[
设函数 $f(x)$ 在 $[0,+infinity)$ 上可导，$f(0)=0$，且其反函数为 $g(x)$. 若
$ integral_0^(f(x)) g(t) dif t=x^2 e^x, $
求 $f(x)$.
]

#ezexam.question(label: n => [2007 数二 17])[
设 $f(x)$ 是区间 $[0,pi/4]$ 上的单调、可导函数，且满足
$ integral_0^(f(x)) f^(-1)(t)dif t=integral_0^x t (cos t-sin t)/(sin t+cos t)dif t, $
其中 $f^(-1)$ 是 $f$ 的反函数，求 $f(x)$.
]

#ezexam.question(label: n => [2008 数三 10])[
设 $f(x+1/x)=(x+x^3)/(1+x^4)$，则 $integral_2^(2sqrt(2)) f(x)dif x=$#fillin(len: 4em)[].
]

#ezexam.question(label: n => [2014 数二 20])[
设函数 $f(x)=x/(1+x),x in [0,1]$. 定义函数列：$f_1(x)=f(x),f_2(x)=f(f_1(x)),dots,f_n(x)=f(f_(n-1)(x)),dots$. 记 $S_n$ 是由曲线 $y=f_n(x)$、直线 $x=1$ 及 $x$ 轴所围平面图形的面积，求极限 $lim_(n->infinity)n S_n$.
]

*奇偶性、周期性与导数、积分*

#ezexam.question(label: n => [1993 数三 2（5）])[
若 $f(x)=-f(-x)$，在 $(0,+infinity)$ 内 $f'(x)>0$、$f''(x)>0$，则 $f(x)$ 在 $(-infinity,0)$ 内（　）.
#choices[$f'(x)<0,f''(x)<0$][$f'(x)<0,f''(x)>0$][$f'(x)>0,f''(x)<0$][$f'(x)>0,f''(x)>0$]
]

#ezexam.question(label: n => [1995 数四 8、数五 5])[
设 $f(x),g(x)$ 在区间 $[-a,a]$（$a>0$）上连续，$g(x)$ 为偶函数，且 $f(x)+f(-x)=A$（$A$ 为常数）.

（1）证明 $integral_(-a)^a f(x)g(x)dif x=A integral_0^a g(x)dif x$；

（2）利用（1）的结论计算 $integral_(-pi/2)^(pi/2)abs(sin x)arctan(e^x)dif x$.
]

#ezexam.question(label: n => [1997 数三 2（2）、数四 2（2）])[
若 $f(-x)=f(x)$（$-infinity<x<+infinity$），在 $(-infinity,0)$ 内 $f'(x)>0$ 且 $f''(x)<0$，则在 $(0,+infinity)$ 内有（　）.
#choices[$f'(x)>0,f''(x)<0$][$f'(x)>0,f''(x)>0$][$f'(x)<0,f''(x)<0$][$f'(x)<0,f''(x)>0$]
]

#ezexam.question(label: n => [1997 数四 7])[
设函数 $f(x)$ 在 $(-infinity,+infinity)$ 内连续，且 $F(x)=integral_0^x (x-2t)f(t)dif t$. 试证：

（1）若 $f(x)$ 为偶函数，则 $F(x)$ 也是偶函数；

（2）若 $f(x)$ 单调不增，则 $F(x)$ 单调不减.
]

#ezexam.question(label: n => [1998 数三 2（1）、数四 2（1）])[
设周期函数 $f(x)$ 在 $(-infinity,+infinity)$ 内可导，周期为4. 又 $lim_(x -> 0) frac(f(1)-f(1-x),2x)=-1$，则曲线 $y=f(x)$ 在点 $(5,f(5))$ 处的切线的斜率为（　）.
#choices[$frac(1,2)$.][0.][$-1$.][$-2$.]
]

#ezexam.question(label: n => [1999 数一 2（1）、数二 2（3）、数三 2（1）、数四 2（1）])[
设 $f(x)$ 是连续函数，$F(x)$ 是 $f(x)$ 的原函数，则（　）.
#choices[当 $f(x)$ 是奇函数时，$F(x)$ 必是偶函数.][当 $f(x)$ 是偶函数时，$F(x)$ 必是奇函数.][当 $f(x)$ 是周期函数时，$F(x)$ 必是周期函数.][当 $f(x)$ 是单调增函数时，$F(x)$ 必是单调增函数.]
]

#ezexam.question(label: n => [2000 数二 9])[
已知 $f(x)$ 是周期为5的连续函数，它在 $x=0$ 的某个邻域内满足关系式
$ f(1+sin x)-3f(1-sin x)=8x+alpha(x), $
其中 $alpha(x)$ 是当 $x->0$ 时比 $x$ 高阶的无穷小，且 $f(x)$ 在 $x=1$ 处可导，求曲线 $y=f(x)$ 在点 $(6,f(6))$ 处的切线方程.
]

#ezexam.question(label: n => [2002 数二 2（2）])[
设 $f(x)$ 为连续函数，则下列函数中必为偶函数的是（　）.
#choices[$integral_0^x f(t^2) dif t$.][$integral_0^x f^2(t) dif t$.][$integral_0^x t[f(t)-f(-t)] dif t$.][$integral_0^x t[f(t)+f(-t)] dif t$.]
]

#ezexam.question(label: n => [2002 数四 2（2）])[
设函数 $f(x)$ 连续，则在下列变上限定积分定义的函数中，必为偶函数的是（　）.
#choices[$integral_0^x t[f(t)+f(-t)] dif t$.][$integral_0^x t[f(t)-f(-t)] dif t$.][$integral_0^x f(t^2) dif t$.][$integral_0^x f^2(t) dif t$.]
]

#ezexam.question(label: n => [2004 数二 17])[
设 $f(x)=integral_x^(x+pi/2)|sin t|dif t$，

（Ⅰ）证明 $f(x)$ 是以 $pi$ 为周期的周期函数；

（Ⅱ）求 $f(x)$ 的值域.
]

#ezexam.question(label: n => [2005 数一 8、数二 8])[
设 $F(x)$ 是连续函数 $f(x)$ 的一个原函数，“$M<=>N$”表示“$M$ 的充分必要条件是 $N$”，则必有
#choices([$F(x)$ 是偶函数 $<=>$ $f(x)$ 是奇函数.],[$F(x)$ 是奇函数 $<=>$ $f(x)$ 是偶函数.],[$F(x)$ 是周期函数 $<=>$ $f(x)$ 是周期函数.],[$F(x)$ 是单调函数 $<=>$ $f(x)$ 是单调函数.])
]

#ezexam.question(label: n => [2006 数二 8])[
设 $f(x)$ 是奇函数，除 $x=0$ 外处处连续，$x=0$ 是其第一类间断点，则 $integral_0^x f(t)dif t$ 是
#choices[连续的奇函数.][连续的偶函数.][在 $x=0$ 间断的奇函数.][在 $x=0$ 间断的偶函数.]
]

#ezexam.question(label: n => [2008 数一 18])[
设 $f(x)$ 是连续函数，

（Ⅰ）利用定义证明函数 $F(x)=integral_0^x f(t)dif t$ 可导，且 $F'(x)=f(x)$；

（Ⅱ）当 $f(x)$ 是以2为周期的周期函数时，证明函数 $G(x)=2integral_0^x f(t)dif t-x integral_0^2 f(t)dif t$ 也是以2为周期的周期函数.
]

#ezexam.question(label: n => [2008 数三 18、数四 19])[
设 $f(x)$ 是周期为2的连续函数.

（Ⅰ）证明对任意的实数 $t$，有 $integral_t^(t+2) f(x)dif x=integral_0^2 f(x)dif x$；

（Ⅱ）证明 $G(x)=integral_0^x [2f(t)-integral_t^(t+2) f(s)dif s]dif t$ 是周期为2的周期函数.
]

#ezexam.question(label: n => [2008 数四 3])[
设 $f(x)$ 是连续的奇函数，$g(x)$ 是连续的偶函数，区域 $D={(x,y)bar 0<=x<=1,-sqrt(x)<=y<=sqrt(x)}$，则以下结论正确的是（　）.
#choices([$integral.double_D f(y)g(x)dif x dif y=0$], [$integral.double_D f(x)g(y)dif x dif y=0$], [$integral.double_D [f(x)+g(y)]dif x dif y=0$], [$integral.double_D [f(y)+g(x)]dif x dif y=0$])
]

#ezexam.question(label: n => [2014 数一 10、数二 10])[
设 $f(x)$ 是周期为4的可导奇函数，且 $f'(x)=2(x-1),x in [0,2]$，则 $f(7)=$#fillin(len: 4em)[].
]

*有界性与导数*

#ezexam.question(label: n => [2002 数一 2（3）、数二 2（4）])[
设函数 $y=f(x)$ 在 $(0,+infinity)$ 内有界且可导，则（　）.
#choices[当 $lim_(x->+infinity) f(x)=0$ 时，必有 $lim_(x->+infinity) f'(x)=0$.][当 $lim_(x->+infinity) f'(x)$ 存在时，必有 $lim_(x->+infinity) f'(x)=0$.][当 $lim_(x->0^+) f(x)=0$ 时，必有 $lim_(x->0^+) f'(x)=0$.][当 $lim_(x->0^+) f'(x)$ 存在时，必有 $lim_(x->0^+) f'(x)=0$.]
]

#ezexam.question(label: n => [2005 数三 11、数四 11])[
以下四个命题中，正确的是
#choices([若 $f'(x)$ 在 $(0,1)$ 内连续，则 $f(x)$ 在 $(0,1)$ 内有界.],[若 $f(x)$ 在 $(0,1)$ 内连续，则 $f(x)$ 在 $(0,1)$ 内有界.],[若 $f'(x)$ 在 $(0,1)$ 内有界，则 $f(x)$ 在 $(0,1)$ 内有界.],[若 $f(x)$ 在 $(0,1)$ 内有界，则 $f'(x)$ 在 $(0,1)$ 内有界.])
]

*单调性与导数、积分*

#ezexam.question(label: n => [1987 数二 5（1）])[
证明：设 $f(x)$ 在 $(a,b)$ 内可导，且 $f'(x)>0$，则 $f(x)$ 在 $(a,b)$ 内单调增加.
]

#ezexam.question(label: n => [1987 数四 1（2）])[
若 $f(x)$ 在 $(a,b)$ 内严格单调增加，则 $x in (a,b)$ 时，总有 $f'(x)>0$.（　）
]

#ezexam.question(label: n => [1991 数四 8])[
试证明函数 $f(x)=(1+1/x)^x$ 在区间 $(0,+infinity)$ 内单调增加.
]

#ezexam.question(label: n => [1993 数一 1（1）、数二 1（1）、数三 1（3）])[
函数 $F(x)=integral_1^x (2-1/sqrt(t))dif t$（$x>0$）的单调减少区间为 #fillin(len: 4em)[].
]

#ezexam.question(label: n => [1994 数四 8])[
假设 $f(x)$ 在 $[a,infinity)$ 上连续，$f''(x)$ 在 $(a,infinity)$ 内存在且大于零，记 $F(x)=(f(x)-f(a))/(x-a)$（$x>a$）. 证明 $F(x)$ 在 $(a,infinity)$ 内单调增加.
]

#ezexam.question(label: n => [1995 数三 2（3）])[
设 $f(x)$ 在 $(-infinity,+infinity)$ 内可导，且对任意 $x_1>x_2$ 都有 $f(x_1)>f(x_2)$，则（　）.
#choices[对任意 $x$，$f'(x)>0$][对任意 $x$，$f'(-x)<=0$][函数 $f(-x)$ 单调增加][函数 $-f(-x)$ 单调增加]
]

#ezexam.question(label: n => [1997 数三 6])[
设函数 $f(x)$ 在 $[0,+infinity)$ 上连续、单调不减且 $f(0)>=0$. 试证函数
$ F(x)=cases(1/x integral_0^x t^n f(t)dif t & quad x>0,0 & quad x=0) $
在 $[0,+infinity)$ 上连续且单调不减，其中 $n>0$.
]

