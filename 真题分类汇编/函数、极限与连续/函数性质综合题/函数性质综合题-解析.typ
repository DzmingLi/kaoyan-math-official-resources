#import "@preview/ezexam:0.3.1" as ezexam
#import "@preview/cetz:0.5.2"
#let choices = ezexam.choices.with(r-gap: 1.3em)
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(true)

= 历年真题：函数性质综合题

*复合、反函数与积分*

#ezexam.question(label: n => [1995 数三 3（3）])[
设 $f(x^2-1)=ln(x^2/(x^2-2))$，且 $f(phi(x))=ln x$，求 $integral phi(x)dif x$.
#ezexam.solution(show-number: false)[
换元得 $f(u)=ln((u+1)/(u-1))$. 由 $(phi(x)+1)/(phi(x)-1)=x$ 得 $phi(x)=(x+1)/(x-1)$，故 $integral phi(x)dif x=x+2ln abs(x-1)+C$.
]
]

#ezexam.question(label: n => [1996 数三 5])[
设 $f(x)=cases(1-2x^2 & quad x<-1,x^3 & quad -1<=x<=2,12x-16 & quad x>2)$.

（1）写出反函数 $g(x)$ 的表达式；

（2）$g(x)$ 是否有间断点、不可导点？若有，指出这些点.
#ezexam.solution(show-number: false)[
（1）各段反解得
$ g(x)=cases(-sqrt((1-x)/2) & quad x<-1,root(3,x) & quad -1<=x<=8,(x+16)/12 & quad x>8). $
（2）$g$ 处处连续，无间断点. 在 $x=-1$ 处左右导数分别为 $1/4,1/3$，不可导；在0处差商无界，不可导；在8处左右导数同为 $1/12$，可导. 因此不可导点只有 $-1,0$.
]
]

#ezexam.question(label: n => [2001 数二 6])[
设函数 $f(x)$ 在 $[0,+infinity)$ 上可导，$f(0)=0$，且其反函数为 $g(x)$. 若
$ integral_0^(f(x)) g(t) dif t=x^2 e^x, $
求 $f(x)$.
#ezexam.solution(show-number: false)[
*解* 等式两边对 $x$ 求导得
$ g[f(x)]f'(x)=2x e^x+x^2 e^x $
而 $g[f(x)]=x$，故 $x f'(x)=2x e^x+x^2 e^x$. 当 $x != 0$ 时 $f'(x)=2e^x+x e^x$，积分得 $f(x)=(x+1)e^x+C$. 由于 $f(x)$ 在 $x=0$ 处连续，故由 $f(0)=lim_(x->0^+) f(x)=lim_(x->0^+) [(x+1)e^x+C]=0$ 得 $C=-1$. 因此
$ f(x)=(x+1)e^x-1. $
]
]

#ezexam.question(label: n => [2007 数二 17])[
设 $f(x)$ 是区间 $[0,pi/4]$ 上的单调、可导函数，且满足
$ integral_0^(f(x)) f^(-1)(t)dif t=integral_0^x t (cos t-sin t)/(sin t+cos t)dif t, $
其中 $f^(-1)$ 是 $f$ 的反函数，求 $f(x)$.
#ezexam.solution(show-number: false)[
解　在 $integral_0^(f(x))f^(-1)(t)dif t=integral_0^x t (cos t-sin t)/(sin t+cos t)dif t$ 两边对 $x$ 求导，得
$ f^(-1)[f(x)]dot f'(x)=x (cos x-sin x)/(sin x+cos x), $
即 $x f'(x)=x(cos x-sin x)/(sin x+cos x)$，
$ f'(x)=(cos x-sin x)/(sin x+cos x),quad x in (0,pi/4], $
故
$ f(x)=integral (cos x-sin x)/(sin x+cos x)dif x=ln(sin x+cos x)+C. $
由题设知，$f(0)=0$，于是 $C=0$，因此 $f(x)=ln(sin x+cos x),x in [0,pi/4]$.
]
]

#ezexam.question(label: n => [2008 数三 10])[
设 $f(x+1/x)=(x+x^3)/(1+x^4)$，则 $integral_2^(2sqrt(2)) f(x)dif x=$#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$1/2 ln 3$.
]
]

#ezexam.question(label: n => [2014 数二 20])[
设函数 $f(x)=x/(1+x),x in [0,1]$. 定义函数列：$f_1(x)=f(x),f_2(x)=f(f_1(x)),dots,f_n(x)=f(f_(n-1)(x)),dots$. 记 $S_n$ 是由曲线 $y=f_n(x)$、直线 $x=1$ 及 $x$ 轴所围平面图形的面积，求极限 $lim_(n->infinity)n S_n$.
#ezexam.solution(show-number: false)[
$ f_2(x)=f(f_1(x))=f_1(x)/(1+f_1(x))=(x/(1+x))/(1+x/(1+x))=x/(1+2x); $
$ f_3(x)=f(f_2(x))=f_2(x)/(1+f_2(x))=x/(1+3x). $
由数学归纳法得 $f_n(x)=x/(1+n x)(n=1,2,3,dots)$. 于是
$ S_n&=integral_0^1 x/(1+n x)dif x=1/n integral_0^1(1-1/(1+n x))dif x \
&=1/n-(ln(1+n))/n^2. $
故 $lim_(n->infinity)n S_n=lim_(n->infinity)(1-(ln(1+n))/n)=1$.
]
]

*奇偶性、周期性与导数、积分*

#ezexam.question(label: n => [1993 数三 2（5）])[
若 $f(x)=-f(-x)$，在 $(0,+infinity)$ 内 $f'(x)>0$、$f''(x)>0$，则 $f(x)$ 在 $(-infinity,0)$ 内（　）.
#choices[$f'(x)<0,f''(x)<0$][$f'(x)<0,f''(x)>0$][$f'(x)>0,f''(x)<0$][$f'(x)>0,f''(x)>0$]
#ezexam.solution(show-number: false)[
C. 奇函数的一阶导数为偶函数，二阶导数为奇函数，故负半轴上 $f'>0$、$f''<0$.
]
]

#ezexam.question(label: n => [1995 数四 8、数五 5])[
设 $f(x),g(x)$ 在区间 $[-a,a]$（$a>0$）上连续，$g(x)$ 为偶函数，且 $f(x)+f(-x)=A$（$A$ 为常数）.

（1）证明 $integral_(-a)^a f(x)g(x)dif x=A integral_0^a g(x)dif x$；

（2）利用（1）的结论计算 $integral_(-pi/2)^(pi/2)abs(sin x)arctan(e^x)dif x$.
#ezexam.solution(show-number: false)[
（1）将负半轴积分作代换 $x=-t$，得原式 $=integral_0^a [f(x)+f(-x)]g(x)dif x=A integral_0^a g(x)dif x$.

（2）取 $f(x)=arctan(e^x)$，$g(x)=abs(sin x)$. 由于 $arctan(e^x)+arctan(e^(-x))=pi/2$，所求积分为 $pi/2 integral_0^(pi/2)sin x dif x=pi/2$.
]
]

#ezexam.question(label: n => [1997 数三 2（2）、数四 2（2）])[
若 $f(-x)=f(x)$（$-infinity<x<+infinity$），在 $(-infinity,0)$ 内 $f'(x)>0$ 且 $f''(x)<0$，则在 $(0,+infinity)$ 内有（　）.
#choices[$f'(x)>0,f''(x)<0$][$f'(x)>0,f''(x)>0$][$f'(x)<0,f''(x)<0$][$f'(x)<0,f''(x)>0$]
#ezexam.solution(show-number: false)[
C. 偶函数的一阶导数为奇函数、二阶导数为偶函数，故在正半轴 $f'<0$、$f''<0$.
]
]

#ezexam.question(label: n => [1997 数四 7])[
设函数 $f(x)$ 在 $(-infinity,+infinity)$ 内连续，且 $F(x)=integral_0^x (x-2t)f(t)dif t$. 试证：

（1）若 $f(x)$ 为偶函数，则 $F(x)$ 也是偶函数；

（2）若 $f(x)$ 单调不增，则 $F(x)$ 单调不减.
#ezexam.solution(show-number: false)[
（1）在 $F(-x)$ 中令 $t=-u$，利用 $f(-u)=f(u)$，得
$ F(-x)=integral_0^x (x-2u)f(u)dif u=F(x). $
（2）求导得 $F'(x)=integral_0^x f(t)dif t-x f(x)=x[f(xi)-f(x)]$，其中 $xi$ 介于0与 $x$ 之间.$x>0$ 时两因子均非负；$x<0$ 时两因子均非正；$x=0$ 时导数为0. 所以 $F'(x)>=0$，即 $F$ 单调不减.
]
]

#ezexam.question(label: n => [1998 数三 2（1）、数四 2（1）])[
设周期函数 $f(x)$ 在 $(-infinity,+infinity)$ 内可导，周期为4. 又 $lim_(x -> 0) frac(f(1)-f(1-x),2x)=-1$，则曲线 $y=f(x)$ 在点 $(5,f(5))$ 处的切线的斜率为（　）.
#choices[$frac(1,2)$.][0.][$-1$.][$-2$.]
#ezexam.solution(show-number: false)[
D.
]
]

#ezexam.question(label: n => [1999 数一 2（1）、数二 2（3）、数三 2（1）、数四 2（1）])[
设 $f(x)$ 是连续函数，$F(x)$ 是 $f(x)$ 的原函数，则（　）.
#choices[当 $f(x)$ 是奇函数时，$F(x)$ 必是偶函数.][当 $f(x)$ 是偶函数时，$F(x)$ 必是奇函数.][当 $f(x)$ 是周期函数时，$F(x)$ 必是周期函数.][当 $f(x)$ 是单调增函数时，$F(x)$ 必是单调增函数.]
#ezexam.solution(show-number: false)[
A.
]
]

#ezexam.question(label: n => [2000 数二 9])[
已知 $f(x)$ 是周期为5的连续函数，它在 $x=0$ 的某个邻域内满足关系式
$ f(1+sin x)-3f(1-sin x)=8x+alpha(x), $
其中 $alpha(x)$ 是当 $x->0$ 时比 $x$ 高阶的无穷小，且 $f(x)$ 在 $x=1$ 处可导，求曲线 $y=f(x)$ 在点 $(6,f(6))$ 处的切线方程.
#ezexam.solution(show-number: false)[
由 $lim_(x->0)[f(1+sin x)-3f(1-sin x)]=lim_(x->0)[8x+alpha(x)]$，得 $f(1)-3f(1)=0$，故 $f(1)=0$. （1分）

又
$ lim_(x->0)frac(f(1+sin x)-3f(1-sin x),sin x)=lim_(x->0)[frac(8x,sin x)+frac(alpha(x),x)dot frac(x,sin x)]=8, $
设 $sin x=t$，则有
$ lim_(x->0)frac(f(1+sin x)-3f(1-sin x),sin x)&=lim_(t->0)frac(f(1+t)-f(1),t)+3lim_(t->0)frac(f(1-t)-f(1),-t) \
&=4f'(1), $
所以 $f'(1)=2$. （4分）

由于 $f(x+5)=f(x)$，所以 $f(6)=f(1)=0$，$f'(6)=f'(1)=2$，故所求的切线方程为 $y=2(x-6)$， （6分）
即
$ 2x-y-12=0. quad "（7分）" $
]
]

#ezexam.question(label: n => [2002 数二 2（2）])[
设 $f(x)$ 为连续函数，则下列函数中必为偶函数的是（　）.
#choices[$integral_0^x f(t^2) dif t$.][$integral_0^x f^2(t) dif t$.][$integral_0^x t[f(t)-f(-t)] dif t$.][$integral_0^x t[f(t)+f(-t)] dif t$.]
#ezexam.solution(show-number: false)[
D.
]
]

#ezexam.question(label: n => [2002 数四 2（2）])[
设函数 $f(x)$ 连续，则在下列变上限定积分定义的函数中，必为偶函数的是（　）.
#choices[$integral_0^x t[f(t)+f(-t)] dif t$.][$integral_0^x t[f(t)-f(-t)] dif t$.][$integral_0^x f(t^2) dif t$.][$integral_0^x f^2(t) dif t$.]
#ezexam.solution(show-number: false)[
A.
]
]

#ezexam.question(label: n => [2004 数二 17])[
设 $f(x)=integral_x^(x+pi/2)|sin t|dif t$，

（Ⅰ）证明 $f(x)$ 是以 $pi$ 为周期的周期函数；

（Ⅱ）求 $f(x)$ 的值域.
#ezexam.solution(show-number: false)[
解　（Ⅰ）$f(x+pi)=integral_(x+pi)^(x+3/2 pi)|sin t|dif t$. 设 $t=u+pi$，则有
$ f(x+pi)=integral_x^(x+pi/2)|sin(u+pi)|dif u=integral_x^(x+pi/2)|sin u|dif u=f(x), $
故 $f(x)$ 是以 $pi$ 为周期的周期函数.

（Ⅱ）因为 $|sin x|$ 在 $(-infinity,+infinity)$ 内连续，注意到 $f(x)$ 的周期为 $pi$，故只需在 $[0,pi]$ 上讨论其值域. 因为
$ f'(x)=|sin(x+pi/2)|-|sin x|=|cos x|-|sin x|, $
令 $f'(x)=0$，得 $x_1=pi/4,x_2=(3pi)/4$，且
$ f(pi/4)=integral_(pi/4)^((3pi)/4)sin t dif t=sqrt(2), \
f((3pi)/4)=integral_((3pi)/4)^((5pi)/4)|sin t|dif t=integral_((3pi)/4)^pi sin t dif t-integral_pi^((5pi)/4)sin t dif t=2-sqrt(2). $
又 $f(0)=integral_0^(pi/2)sin t dif t=1,f(pi)=integral_pi^(3/2 pi)(-sin t)dif t=1$，因而 $f(x)$ 的最小值是 $2-sqrt(2)$，最大值是 $sqrt(2)$，故 $f(x)$ 的值域是 $[2-sqrt(2),sqrt(2)]$.
]
]

#ezexam.question(label: n => [2005 数一 8、数二 8])[
设 $F(x)$ 是连续函数 $f(x)$ 的一个原函数，“$M<=>N$”表示“$M$ 的充分必要条件是 $N$”，则必有
#choices([$F(x)$ 是偶函数 $<=>$ $f(x)$ 是奇函数.],[$F(x)$ 是奇函数 $<=>$ $f(x)$ 是偶函数.],[$F(x)$ 是周期函数 $<=>$ $f(x)$ 是周期函数.],[$F(x)$ 是单调函数 $<=>$ $f(x)$ 是单调函数.])
#ezexam.solution(show-number: false)[
A.
]
]

#ezexam.question(label: n => [2006 数二 8])[
设 $f(x)$ 是奇函数，除 $x=0$ 外处处连续，$x=0$ 是其第一类间断点，则 $integral_0^x f(t)dif t$ 是
#choices[连续的奇函数.][连续的偶函数.][在 $x=0$ 间断的奇函数.][在 $x=0$ 间断的偶函数.]
#ezexam.solution(show-number: false)[
B.
]
]

#ezexam.question(label: n => [2008 数一 18])[
设 $f(x)$ 是连续函数，

（Ⅰ）利用定义证明函数 $F(x)=integral_0^x f(t)dif t$ 可导，且 $F'(x)=f(x)$；

（Ⅱ）当 $f(x)$ 是以2为周期的周期函数时，证明函数 $G(x)=2integral_0^x f(t)dif t-x integral_0^2 f(t)dif t$ 也是以2为周期的周期函数.
#ezexam.solution(show-number: false)[
（Ⅰ）证　对任意的 $x$，由于 $f$ 是连续函数，所以
$ lim_(Delta x->0) (F(x+Delta x)-F(x))/(Delta x) \
=lim_(Delta x->0) (integral_0^(x+Delta x) f(t)dif t-integral_0^x f(t)dif t)/(Delta x) \
=lim_(Delta x->0) (integral_x^(x+Delta x) f(t)dif t)/(Delta x) \
=lim_(Delta x->0) (f(xi)Delta x)/(Delta x)=lim_(Delta x->0) f(xi), $
其中 $xi$ 介于 $x$ 与 $x+Delta x$ 之间. 由 $lim_(Delta x->0) f(xi)=f(x)$，可知函数 $F(x)$ 在 $x$ 处可导，且 $F'(x)=f(x)$.

（Ⅱ）证法1　要证明 $G(x)$ 以2为周期，即要证明对任意的 $x$，都有 $G(x+2)=G(x)$. 记 $H(x)=G(x+2)-G(x)$，则
$ H'(x)=(2integral_0^(x+2) f(t)dif t-(x+2)integral_0^2 f(t)dif t)'-(2integral_0^x f(t)dif t-x integral_0^2 f(t)dif t)' \
=2f(x+2)-integral_0^2 f(t)dif t-2f(x)+integral_0^2 f(t)dif t=0, $
又因为
$ H(0)=G(2)-G(0)=(2integral_0^2 f(t)dif t-2integral_0^2 f(t)dif t)-0=0, $
所以 $H(x)=0$，即 $G(x+2)=G(x)$. 证法2　由于 $f$ 是以2为周期的连续函数，所以对任意的 $x$，有
$ G(x+2)-G(x)=2integral_0^(x+2) f(t)dif t-(x+2)integral_0^2 f(t)dif t-2integral_0^x f(t)dif t+x integral_0^2 f(t)dif t \
=2[integral_0^2 f(t)dif t+integral_2^(x+2) f(t)dif t-integral_0^2 f(t)dif t-integral_0^x f(t)dif t] \
=2[integral_0^x f(u+2)dif u-integral_0^x f(t)dif t] \
=2integral_0^x [f(t+2)-f(t)]dif t=0, $
即 $G(x)$ 是以2为周期的周期函数.
]
]

#ezexam.question(label: n => [2008 数三 18、数四 19])[
设 $f(x)$ 是周期为2的连续函数.

（Ⅰ）证明对任意的实数 $t$，有 $integral_t^(t+2) f(x)dif x=integral_0^2 f(x)dif x$；

（Ⅱ）证明 $G(x)=integral_0^x [2f(t)-integral_t^(t+2) f(s)dif s]dif t$ 是周期为2的周期函数.
#ezexam.solution(show-number: false)[
证法1　（Ⅰ）由积分的性质知对任意的实数 $t$，
$ integral_t^(t+2) f(x)dif x=integral_t^0 f(x)dif x+integral_0^2 f(x)dif x+integral_2^(t+2) f(x)dif x. $
令 $s=x-2$，则有
$ integral_2^(t+2) f(x)dif x=integral_0^t f(s+2)dif s=integral_0^t f(s)dif s=-integral_t^0 f(x)dif x, $
所以
$ integral_t^(t+2) f(x)dif x=integral_t^0 f(x)dif x+integral_0^2 f(x)dif x-integral_t^0 f(x)dif x \
=integral_0^2 f(x)dif x. $
（Ⅱ）由（Ⅰ）知对任意的 $t$ 有 $integral_t^(t+2) f(s)dif s=integral_0^2 f(s)dif s$. 记 $integral_0^2 f(s)dif s=a$，则
$ G(x)=2integral_0^x f(t)dif t-a x. $
因为对任意的 $x$，均有
$ G(x+2)-G(x)=2integral_0^(x+2) f(t)dif t-a(x+2)-2integral_0^x f(t)dif t+a x \
=2integral_x^(x+2) f(t)dif t-2a=2integral_0^2 f(t)dif t-2a=0, $
所以 $G(x)$ 是周期为2的周期函数. 证法2　（Ⅰ）设 $F(t)=integral_t^(t+2) f(x)dif x$，由于
$ F'(t)=f(t+2)-f(t)=0, $
所以 $F(t)$ 为常数，从而有 $F(t)=F(0)$. 因为 $F(0)=integral_0^2 f(x)dif x$，所以 $F(t)=integral_0^2 f(x)dif x$，即
$ integral_t^(t+2) f(x)dif x=integral_0^2 f(x)dif x. $
（Ⅱ）由（Ⅰ）知对任意的 $t$ 有 $integral_t^(t+2) f(s)dif s=integral_0^2 f(s)dif s$. 记 $integral_0^2 f(s)dif s=a$，则
$ G(x)=2integral_0^x f(t)dif t-a x, quad G(x+2)=2integral_0^(x+2) f(t)dif t-a(x+2). $
由于对任意 $x$，均有
$ (G(x+2))'=2f(x+2)-a=2f(x)-a, quad (G(x))'=2f(x)-a, $
所以 $(G(x+2)-G(x))'=0$，从而 $G(x+2)-G(x)$ 是常数，即有
$ G(x+2)-G(x)=G(2)-G(0)=0, $
所以 $G(x)$ 是周期为2的周期函数.
]
]

#ezexam.question(label: n => [2008 数四 3])[
设 $f(x)$ 是连续的奇函数，$g(x)$ 是连续的偶函数，区域 $D={(x,y)bar 0<=x<=1,-sqrt(x)<=y<=sqrt(x)}$，则以下结论正确的是（　）.
#choices([$integral.double_D f(y)g(x)dif x dif y=0$], [$integral.double_D f(x)g(y)dif x dif y=0$], [$integral.double_D [f(x)+g(y)]dif x dif y=0$], [$integral.double_D [f(y)+g(x)]dif x dif y=0$])
#ezexam.solution(show-number: false)[
A.
]
]

#ezexam.question(label: n => [2014 数一 10、数二 10])[
设 $f(x)$ 是周期为4的可导奇函数，且 $f'(x)=2(x-1),x in [0,2]$，则 $f(7)=$#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
1.
]
]

*有界性与导数*

#ezexam.question(label: n => [2002 数一 2（3）、数二 2（4）])[
设函数 $y=f(x)$ 在 $(0,+infinity)$ 内有界且可导，则（　）.
#choices[当 $lim_(x->+infinity) f(x)=0$ 时，必有 $lim_(x->+infinity) f'(x)=0$.][当 $lim_(x->+infinity) f'(x)$ 存在时，必有 $lim_(x->+infinity) f'(x)=0$.][当 $lim_(x->0^+) f(x)=0$ 时，必有 $lim_(x->0^+) f'(x)=0$.][当 $lim_(x->0^+) f'(x)$ 存在时，必有 $lim_(x->0^+) f'(x)=0$.]
#ezexam.solution(show-number: false)[
B.
]
]

#ezexam.question(label: n => [2005 数三 11、数四 11])[
以下四个命题中，正确的是
#choices([若 $f'(x)$ 在 $(0,1)$ 内连续，则 $f(x)$ 在 $(0,1)$ 内有界.],[若 $f(x)$ 在 $(0,1)$ 内连续，则 $f(x)$ 在 $(0,1)$ 内有界.],[若 $f'(x)$ 在 $(0,1)$ 内有界，则 $f(x)$ 在 $(0,1)$ 内有界.],[若 $f(x)$ 在 $(0,1)$ 内有界，则 $f'(x)$ 在 $(0,1)$ 内有界.])
#ezexam.solution(show-number: false)[
C.
]
]

*单调性与导数、积分*

#ezexam.question(label: n => [1987 数二 5（1）])[
证明：设 $f(x)$ 在 $(a,b)$ 内可导，且 $f'(x)>0$，则 $f(x)$ 在 $(a,b)$ 内单调增加.
#ezexam.solution(show-number: false)[
在 $(a,b)$ 内任取两不同点 $x_1,x_2$，根据拉格朗日公式
$ f(x_2)-f(x_1)=f'(xi)(x_2-x_1), quad xi "在" x_1 "与" x_2 "之间". $
因为 $f'(xi)>0$，所以当 $x_2>x_1$ 时 $f(x_2)>f(x_1)$，即 $f(x)$ 单增.
]
]

#ezexam.question(label: n => [1987 数四 1（2）])[
若 $f(x)$ 在 $(a,b)$ 内严格单调增加，则 $x in (a,b)$ 时，总有 $f'(x)>0$.（　）
#ezexam.solution(show-number: false)[
解　此题错，可举反例如下：
$f(x)=x^3$ 在 $(-infinity,+infinity)$ 内严格单调增加，但 $f'(x)=3x^2,f'(0)=0$.

注　$f'(x)>0$ 只是 $f(x)$ 在 $(a,b)$ 内单增的充分而非必要条件.
]
]

#ezexam.question(label: n => [1991 数四 8])[
试证明函数 $f(x)=(1+1/x)^x$ 在区间 $(0,+infinity)$ 内单调增加.
#ezexam.solution(show-number: false)[
求导得
$ f'(x)=(1+1/x)^x [ln(1+1/x)-1/(1+x)]. $
*证一* 对 $ln t$ 在 $[x,x+1]$ 上用拉格朗日中值定理，存在 $xi in (x,x+1)$，使
$ ln(1+1/x)=ln(x+1)-ln x=1/xi>1/(x+1). $
故 $f'(x)>0$，函数单调增加.

*证二* 令 $g(x)=ln(1+1/x)-1/(1+x)$，则 $g'(x)=-1/(x(1+x)^2)<0$，且 $lim_(x arrow +infinity)g(x)=0$，所以 $g(x)>0$，从而 $f'(x)>0$.
]
]

#ezexam.question(label: n => [1993 数一 1（1）、数二 1（1）、数三 1（3）])[
函数 $F(x)=integral_1^x (2-1/sqrt(t))dif t$（$x>0$）的单调减少区间为 #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
由 $F'(x)=2-1/sqrt(x)<0$ 得 $0<x<1/4$，故可填 $(0,1/4)$（或 $(0,1/4]$）.
]
]

#ezexam.question(label: n => [1994 数四 8])[
假设 $f(x)$ 在 $[a,infinity)$ 上连续，$f''(x)$ 在 $(a,infinity)$ 内存在且大于零，记 $F(x)=(f(x)-f(a))/(x-a)$（$x>a$）. 证明 $F(x)$ 在 $(a,infinity)$ 内单调增加.
#ezexam.solution(show-number: false)[
由拉格朗日中值定理，$F(x)=f'(xi)$，$a<xi<x$. 于是 $F'(x)=(f'(x)-f'(xi))/(x-a)$. 因 $f''>0$，$f'$ 严格递增，故 $F'(x)>0$.
]
]

#ezexam.question(label: n => [1995 数三 2（3）])[
设 $f(x)$ 在 $(-infinity,+infinity)$ 内可导，且对任意 $x_1>x_2$ 都有 $f(x_1)>f(x_2)$，则（　）.
#choices[对任意 $x$，$f'(x)>0$][对任意 $x$，$f'(-x)<=0$][函数 $f(-x)$ 单调增加][函数 $-f(-x)$ 单调增加]
#ezexam.solution(show-number: false)[
D.$f$ 严格递增，故 $f(-x)$ 严格递减，取负后严格递增. 严格递增函数的导数可以在个别点为零.
]
]

#ezexam.question(label: n => [1997 数三 6])[
设函数 $f(x)$ 在 $[0,+infinity)$ 上连续、单调不减且 $f(0)>=0$. 试证函数
$ F(x)=cases(1/x integral_0^x t^n f(t)dif t & quad x>0,0 & quad x=0) $
在 $[0,+infinity)$ 上连续且单调不减，其中 $n>0$.
#ezexam.solution(show-number: false)[
当 $x>0$ 时显然连续. 在0处，$0<=F(x)<=f(x)x^n/(n+1)arrow 0$，所以也连续. 又因 $t^n f(t)$ 非负且单调不减，
$ F'(x)=(integral_0^x [x^n f(x)-t^n f(t)]dif t)/x^2>=0. $
结合 $F(0)=0<=F(x)$，可知 $F$ 在整个区间上单调不减.
]
]

