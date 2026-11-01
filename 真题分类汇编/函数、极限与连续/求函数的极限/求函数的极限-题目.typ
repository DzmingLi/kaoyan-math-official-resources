#import "@preview/ezexam:0.3.1" as ezexam
#let choices = ezexam.choices.with(r-gap: 1.3em)
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)

= 历年真题：求函数的极限

*直接求值与综合计算*

#ezexam.question(label: n => [1987 数二 2（3）])[
设 $f(x)$ 在 $x=a$ 处可导，则 $lim_(x->0)(f(a+x)-f(a-x))/x$ 等于（　）.
#choices([$f'(a)$],[$2f'(a)$],[$0$],[$f'(2a)$])
]

#ezexam.question(label: n => [1987 数二 4])[
求 $lim_(x->0)(1/x-1/(e^x-1))$.
]

#ezexam.question(label: n => [1987 数三 5])[
求 $lim_(x->0)(1+x e^x)^(1/x)$.
]

#ezexam.question(label: n => [1987 数四 4])[
求 $lim_(x->+infinity)ln(1+1/x)/(arctan(1/x))$.
]

#ezexam.question(label: n => [1988 数二 1（3）])[
$lim_(x->0^+)(1/sqrt(x))^(tan x)=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [1988 数三 3])[
求 $lim_(x->1)(x^x-1)/(x ln x)$.
]

#ezexam.question(label: n => [1988 数四 4])[
求 $lim_(x->1)(1-x^2)tan(pi/2 x)$.
]

#ezexam.question(label: n => [1989 数一 1（1）])[
已知 $f'(3)=2$，则 $lim_(h->0)(f(3-h)-f(3))/(2h)=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [1989 数二 1（1）])[
$lim_(x->0)x cot(2x)=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [1989 数二 3（3）])[
求 $lim_(x->0)(2sin x+cos x)^(1/x)$.
]

#ezexam.question(label: n => [1989 数三 3（1）])[
求极限 $lim_(x->infinity)(sin(1/x)+cos(1/x))^x$.
]

#ezexam.question(label: n => [1989 数四 3（1）])[
求极限 $lim_(x->+infinity)(x+e^x)^(1/x)$.
]

#ezexam.question(label: n => [1990 数一 1（2）])[
设 $a$ 为非零常数，则 $lim_(x->infinity)((x+a)/(x-a))^x=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [1991 数一 3（1）、数二 3（1）])[
求 $lim_(x arrow 0^+) (cos sqrt(x))^(pi/x)$.
]

#ezexam.question(label: n => [1991 数三 1（5）])[
$lim_(x arrow 0^+) (1-e^(1/x))/(x+e^(1/x))=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [1991 数三 3（3）])[
求 $lim_(x arrow 0)(x-sin x)/(x^2(e^x-1))$.
]

#ezexam.question(label: n => [1991 数四 3])[
求极限 $lim_(x arrow 0)((e^x+e^(2x)+dots+e^(n x))/n)^(1/x)$，其中 $n$ 是给定的自然数.
]

#ezexam.question(label: n => [1991 数四 2（1）、数五 2（1）])[
下列各式中正确的是
#choices([$lim_(x arrow 0^+)(1+1/x)^x=1$.],[$lim_(x arrow 0^+)(1+1/x)^x=e$.],[$lim_(x arrow infinity)(1-1/x)^x=-e$.],[$lim_(x arrow infinity)(1+1/x)^(-x)=e$.])
]

#ezexam.question(label: n => [1991 数五 3])[
求极限 $lim_(x arrow +infinity)(x+sqrt(1+x^2))^(1/x)$.
]

#ezexam.question(label: n => [1992 数一 2（1）、数二 2（3）])[
当 $x->1$ 时，函数 $(x^2-1)/(x-1)e^(1/(x-1))$ 的极限（　）.
#choices([等于2.],[等于0.],[为 $infinity$.],[不存在但不为 $infinity$.])
]

#ezexam.question(label: n => [1992 数一 3（1）])[
求 $lim_(x->0)(e^x-sin x-1)/(1-sqrt(1-x^2))$.
]

#ezexam.question(label: n => [1992 数二 1（3）])[
$lim_(x->0)(1-sqrt(1-x^2))/(e^x-cos x)=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [1992 数二 3（1）])[
求 $lim_(x->infinity)((3+x)/(6+x))^((x-1)/2)$.
]

#ezexam.question(label: n => [1992 数四 3])[
求极限 $lim_(x->1)(ln cos(x-1))/(1-sin(pi/2 x))$.
]

#ezexam.question(label: n => [1993 数一 3（1）、数二 3（1）])[
求 $lim_(x arrow infinity)(sin(2/x)+cos(1/x))^x$.
]

#ezexam.question(label: n => [1993 数三 1（1）])[
$lim_(x arrow 0^+)x ln x=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [1993 数三 3（2）])[
求 $lim_(x arrow -infinity)x(sqrt(x^2+100)+x)$.
]

#ezexam.question(label: n => [1993 数四 1（1）])[
$lim_(x arrow infinity)(3x^2+5)/(5x+3) sin(2/x)=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [1994 数一 1（1）、数二 1（1）])[
$lim_(x arrow 0)cot x (1/sin x-1/x)=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [1994 数四 1（2）、数五 1（2）])[
已知 $f'(x_0)=-1$，则 $lim_(x arrow 0)x/(f(x_0-2x)-f(x_0-x))=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [1994 数五 3])[
求极限 $lim_(x arrow infinity)[x-x^2 ln(1+1/x)]$.
]

#ezexam.question(label: n => [1995 数MBA 2])[
求极限 $lim_(x arrow 0)(cos x-sqrt(cos x))/sin^2 x$.
]

#ezexam.question(label: n => [1995 数一 1（1）、数二 1（1）])[
$lim_(x arrow 0)(1+3x)^(2/sin x)=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [1995 数三 3（1）])[
求 $lim_(x arrow 0^+)(1-sqrt(cos x))/(x(1-cos sqrt(x)))$.
]

#ezexam.question(label: n => [1996 数三 1（4）])[
$lim_(x arrow infinity)x[sin ln(1+3/x)-sin ln(1+1/x)]=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [1997 数一 1（1）])[
$lim_(x arrow 0)(3sin x+x^2 cos(1/x))/((1+cos x)ln(1+x))=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [1997 数二 3（1）])[
求极限 $lim_(x arrow -infinity)(sqrt(4x^2+x-1)+x+1)/sqrt(x^2+sin x)$.
]

#ezexam.question(label: n => [1997 数三 3])[
在经济学中，称函数
$ Q(x)=A[delta K^(-x)+(1-delta)L^(-x)]^(-1/x) $
为固定替代弹性生产函数，而称函数 $overline(Q)=A K^delta L^(1-delta)$ 为 Cobb–Douglas 生产函数（简称 C–D 生产函数）. 试证明：当 $x arrow 0$ 时，固定替代弹性生产函数变为 C–D 生产函数，即有 $lim_(x arrow 0)Q(x)=overline(Q)$.
]

#ezexam.question(label: n => [1997 数四 3])[
求极限 $lim_(x arrow 0)[a/x-(1/x^2-a^2)ln(1+a x)]$（$a≠0$）.
]

#ezexam.question(label: n => [1998 数一 1（1）、数二 1（1）])[
$lim_(x->0) frac(sqrt(1+x)+sqrt(1-x)-2,x^2)=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [1999 数一 1（1）])[
$lim_(x -> 0)(frac(1,x^2)-frac(1,x tan x))=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [1999 数二 3])[
求 $lim_(x -> 0) frac(sqrt(1+tan x)-sqrt(1+sin x),x ln(1+x)-x^2)$.
]

#ezexam.question(label: n => [1999 数三 3、数四 3])[
曲线 $y=frac(1,sqrt(x))$ 的切线与 $x$ 轴和 $y$ 轴围成一个图形，记切点的横坐标为 $a$. 试求切线方程和这个图形的面积. 当切点沿曲线趋于无穷远时，该面积的变化趋势如何？
]

#ezexam.question(label: n => [2000 数一 3])[
求 $lim_(x->0)(frac(2+e^(1/x),1+e^(4/x))+frac(sin x,|x|))$.
]

#ezexam.question(label: n => [2000 数二 1（1）])[
$lim_(x->0)frac(arctan x-x,ln(1+2x^3))=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [2000 数四 1（2）])[
若 $a>0,b>0$ 均为常数，则 $lim_(x->0)(frac(a^x+b^x,2))^(3/x)=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [2001 数二 1（1）])[
$lim_(x->1) (sqrt(3-x)-sqrt(1+x))/(x^2+x-2)=$#fillin(len: 4em)[].
]

#ezexam.question(label: n => [2001 数二 4])[
求极限 $lim_(t->x) ((sin t)/(sin x))^(x/(sin t-sin x))$，记此极限为 $f(x)$，求函数 $f(x)$ 的间断点并指出其类型.
]

#ezexam.question(label: n => [2002 数二 2（3）])[
设 $y(x)$ 是微分方程 $y''+p y'+q y=e^(3x)$ 满足初始条件 $y(0)=y'(0)=0$ 的特解，则 $lim_(x->0) (ln(1+x^2))/(y(x))=$（　）.
#choices[不存在.][1.][2.][3.]
]

#ezexam.question(label: n => [2003 数一 1（1）])[
$lim_(x->0) (cos x)^(1/ln(1+x^2))=$#fillin(len: 4em)[].
]

#ezexam.question(label: n => [2003 数四 1（1）])[
极限 $lim_(x->0) [1+ln(1+x)]^(2/x)=$#fillin(len: 4em)[].
]

#ezexam.question(label: n => [2004 数二 15])[
求极限 $lim_(x->0) 1/x^3 [((2+cos x)/3)^x-1]$.
]

#ezexam.question(label: n => [2004 数二 18])[
曲线 $y=(e^x+e^(-x))/2$ 与直线 $x=0,x=t (t>0)$ 及 $y=0$ 围成一曲边梯形. 该曲边梯形绕 $x$ 轴旋转一周得一旋转体，其体积为 $V(t)$，侧面积为 $S(t)$，在 $x=t$ 处的底面积为 $F(t)$.

（Ⅰ）求 $(S(t))/(V(t))$ 的值；

（Ⅱ）计算极限 $lim_(t->+infinity)(S(t))/(F(t))$.
]

#ezexam.question(label: n => [2004 数三 15、数四 15])[
求 $lim_(x->0)(1/sin^2 x-(cos^2 x)/x^2)$.
]

#ezexam.question(label: n => [2005 数三 1、数四 1])[
极限 $lim_(x->infinity)x sin((2x)/(x^2+1))=$#fillin(len: 4em)[].
]

#ezexam.question(label: n => [2005 数三 15、数四 15])[
求 $lim_(x->0)((1+x)/(1-e^(-x))-1/x)$.
]

#ezexam.question(label: n => [2006 数一 1])[
$lim_(x->0)(x ln(1+x))/(1-cos x)=$#fillin(len: 4em)[].
]

#ezexam.question(label: n => [2006 数三 15、数四 15])[
设 $f(x,y)=y/(1+x y)-(1-y sin((pi x)/y))/(arctan x),x>0,y>0$. 求：

（Ⅰ）$g(x)=lim_(y->+infinity)f(x,y)$；

（Ⅱ）$lim_(x->0^+)g(x)$.
]

#ezexam.question(label: n => [2007 数二 11])[
$lim_(x->0)(arctan x-sin x)/x^3=$#fillin(len: 4em)[].
]

#ezexam.question(label: n => [2007 数三 11、数四 11])[
$lim_(x->+infinity)(x^3+x^2+1)/(2^x+x^3)(sin x+cos x)=$#fillin(len: 4em)[].
]

#ezexam.question(label: n => [2008 数一 15、数二 15])[
求极限 $lim_(x->0) ([sin x-sin(sin x)]sin x)/x^4$.
]

#ezexam.question(label: n => [2008 数三 15、数四 15])[
求极限 $lim_(x->0) 1/x^2 ln((sin x)/x)$.
]

#ezexam.question(label: n => [2009 数二 15])[
求极限 $lim_(x->0)((1-cos x)[x-ln(1+tan x)])/(sin^4 x)$.
]

#ezexam.question(label: n => [2009 数三 9])[
$lim_(x->0)(e-e^(cos x))/(root(3,1+x^2)-1)=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [2010 数一 1])[
极限 $lim_(x->infinity)[x^2/((x-a)(x+b))]^x=$
#choices([1.],[$e$.],[$e^(a-b)$.],[$e^(b-a)$.])
]

#ezexam.question(label: n => [2010 数三 15])[
求极限 $lim_(x->+infinity)(x^(1/x)-1)^(1/(ln x))$.
]

#ezexam.question(label: n => [2011 数一 15])[
求极限 $lim_(x->0)[(ln(1+x))/x]^(1/(e^x-1))$.
]

#ezexam.question(label: n => [2011 数二 9])[
$lim_(x->0)((1+2^x)/2)^(1/x)=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [2011 数三 15])[
求极限 $lim_(x->0)(sqrt(1+2sin x)-x-1)/(x ln(1+x))$.
]

#ezexam.question(label: n => [2011 数二 2、数三 2])[
设函数 $f(x)$ 在 $x=0$ 处可导，且 $f(0)=0$，则 $lim_(x->0)(x^2 f(x)-2f(x^3))/x^3=$
#choices([$-2f'(0)$.],[$-f'(0)$.],[$f'(0)$.],[0.])
]

#ezexam.question(label: n => [2012 数三 15])[
求极限 $lim_(x->0)(e^(x^2)-e^(2-2cos x))/x^4$.
]

#ezexam.question(label: n => [2012 数三 9])[
$lim_(x->pi/4)(tan x)^(1/(cos x-sin x))=$#fillin(len: 4em)[].
]

#ezexam.question(label: n => [2013 数二 9])[
$lim_(x->0)[2-(ln(1+x))/x]^(1/x)=$#fillin(len: 4em)[].
]

#ezexam.question(label: n => [2014 数二 5])[
设函数 $f(x)=arctan x$. 若 $f(x)=x f'(xi)$，则 $lim_(x->0)xi^2/x^2=$
#choices([1.],[$2/3$.],[$1/2$.],[$1/3$.])
]

#ezexam.question(label: n => [2015 数一 9、数三 9])[
$lim_(x->0)(ln(cos x))/x^2=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [2016 数二 15、数三 15])[
求极限 $lim_(x->0)(cos 2x+2x sin x)^(1/x^4)$.
]

#ezexam.question(label: n => [2018 数二 9])[
$lim_(x->+infinity) x^2[arctan(x+1)-arctan x]=$#fillin(len: 4em)[].
]

#ezexam.question(label: n => [2000 数二 2（4）])[
若 $lim_(x->0)frac(sin 6x+x f(x),x^3)=0$，则 $lim_(x->0)frac(6+f(x),x^2)$ 为（　）.
#choices[0.][6.][36.][$infinity$.]
]

#ezexam.question(label: n => [2001 数一 7])[
设函数 $y=f(x)$ 在区间 $(-1,1)$ 内具有二阶连续导数，且 $f''(x) != 0$. 证明：

（1）对于每一个非零的 $x in (-1,1)$，存在唯一的 $theta(x) in (0,1)$，使得
$ f(x)=f(0)+x f'(theta(x)x); $
（2）$lim_(x->0) theta(x)=1/2$.
]

#ezexam.question(label: n => [2008 数二 9])[
已知函数 $f(x)$ 连续，且 $lim_(x->0) (1-cos[x f(x)])/((e^(x^2)-1)f(x))=1$，则 $f(0)=$#fillin(len: 4em)[].
]

#ezexam.question(label: n => [2016 数三 9])[
已知函数 $f(x)$ 满足 $lim_(x->0)(sqrt(1+f(x)sin 2x)-1)/(e^(3x)-1)=2$，则 $lim_(x->0)f(x)=$#fillin(len: 4em)[].
]

*积分与极限综合*

#ezexam.question(label: n => [1988 数二 8])[
设 $f(x)$ 在 $(-infinity,+infinity)$ 内连续可导，且 $m<=f(x)<=M,a>0$.

（1）求 $lim_(a->0^+)1/(4a^2)integral_(-a)^a[f(t+a)-f(t-a)]dif t$；

（2）求证：$abs(1/(2a)integral_(-a)^a f(t)dif t-f(x))<=M-m$.
]

#ezexam.question(label: n => [1990 数四 3（1）])[
求极限 $lim_(x->infinity)1/x integral_0^x(1+t^2)e^(t^2-x^2)dif t$.
]

#ezexam.question(label: n => [1992 数三 2（1）、数四 2（1）])[
设 $F(x)=x^2/(x-a)integral_a^x f(t)dif t$，其中 $f(x)$ 为连续函数，则 $lim_(x->a)F(x)$ 等于（　）.
#choices([$a^2$],[$a^2 f(a)$],[$0$],[不存在.])
]

#ezexam.question(label: n => [1994 数四 6])[
设函数 $f(x)$ 可导，且 $f(0)=0$，$F(x)=integral_0^x t^(n-1)f(x^n-t^n)dif t$，求 $lim_(x arrow 0)F(x)/x^(2n)$.
]

#ezexam.question(label: n => [1994 数五 8])[
设函数 $f(x)$ 可导，且 $f(0)=0$，$F(x)=integral_0^x t^(n-1)f(x^n-t^n)dif t$，证明 $lim_(x arrow 0)F(x)/x^(2n)=(f'(0))/(2n)$.
]

#ezexam.question(label: n => [2000 数二 6])[
设函数 $S(x)=integral_0^x |cos t|dif t$，

（1）当 $n$ 为正整数，且 $n pi<=x<(n+1)pi$ 时，证明 $2n<=S(x)<2(n+1)$；

（2）求 $lim_(x->+infinity)frac(S(x),x)$.
]

#ezexam.question(label: n => [2002 数三 3、数四 3])[
求极限 $lim_(x->0) (integral_0^x [integral_0^(u^2) arctan(1+t) dif t] dif u)/(x(1-cos x))$.
]

#ezexam.question(label: n => [2005 数二 15])[
设函数 $f(x)$ 连续，且 $f(0)!=0$，求极限 $lim_(x->0) (integral_0^x (x-t)f(t)dif t)/(x integral_0^x f(x-t)dif t)$.
]

#ezexam.question(label: n => [2014 数一 15、数二 15、数三 15])[
求极限 $lim_(x->+infinity)(integral_1^x[t^2(e^(1/t)-1)-t]dif t)/(x^2 ln(1+1/x))$.
]

#ezexam.question(label: n => [2016 数一 9])[
$lim_(x->0)(integral_0^x t ln(1+t sin t)dif t)/(1-cos x^2)=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [2017 数二 15、数三 15])[
求 $lim_(x->0^+)(integral_0^x sqrt(x-t)e^t dif t)/sqrt(x^3)$.
]

#ezexam.question(label: n => [1988 数三 10])[
设某商品的需求量 $D$ 和供给量 $S$，各自对价格 $p$ 的函数为 $D(p)=a/p^2,S(p)=b p$，且 $p$ 是时间 $t$ 的函数并满足方程 $(dif p)/(dif t)=k[D(p)-S(p)]$（$a,b,k$ 为正常数），求：（1）需求量与供给量相等时的均衡价格 $p_e$；（2）当 $t=0,p=1$ 时的价格函数 $p(t)$；（3）$lim_(t->+infinity)p(t)$.
]

