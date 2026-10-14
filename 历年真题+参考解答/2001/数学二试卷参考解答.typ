#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2001, subject: "二", title: "2001年全国硕士研究生入学统一考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#import "@preview/cetz:0.5.2"
#let curve-plot(kind) = cetz.canvas({
 import cetz.draw: *
 set-style(stroke:0.7pt)
 line((-1.65,0),(2.6,0),mark:(end:">"));line((0,-1.5),(0,1.9),mark:(end:">"))
 content((2.7,-0.1),$x$);content((-0.13,2),$y$);content((-0.15,-0.2),$O$)
 let positive-left=kind in ("B","D")
 line(..range(0,71).map(i=>{let x=-1.6+i*1.46/70;let y = if positive-left {0.22/(-x)} else {-0.24/x - 0.75}; (x,calc.clamp(y,-1.5,1.7))}))
 if kind in ("C","D") {
  line(..range(0,81).map(i=>{let x=0.17+i*2.1/80;(x,0.25/x+0.75*(x - 1.35)*(x - 1.35)-0.5)}))
 } else {
  line(..range(0,101).map(i=>{let x=0.15+i*2.12/100;let y = if kind=="base" {0.9*(x - 0.55)*(x - 1.1)*(x - 1.8)/x} else {1.15*(x - 0.32)*(x - 1.5)*(x - 1.5)/x}; (x,calc.clamp(y,-1.5,1.7))}))
 }
})
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2001 数学二试卷参考解答

= 一、填空题

#answer("1（1）")[
*分析* 用分子有理化的初等方法即可求解，也可用洛必达法则.

*解法1*
$ lim_(x->1)frac(sqrt(3-x)-sqrt(1+x),x^2+x-2)
&=lim_(x->1)frac(2(1-x),(x-1)(x+2)(sqrt(3-x)+sqrt(1+x))) \
&=-frac(1,3 dot 2sqrt(2))=-frac(sqrt(2),6). $

*解法2* 由洛必达法则，
$ #text[原式]=lim_(x->1)frac(-1/(2sqrt(3-x))-1/(2sqrt(1+x)),2x+1)=-frac(sqrt(2),6). $
]

#answer("1（2）")[
*分析* 先用隐函数求导法求出切线斜率，法线斜率为其负倒数.
*解* 方程两边对 $x$ 求导，
$ e^(2x+y)(2+y')+sin(x y)(y+x y')=0. $
代入 $x=0,y=1$ 得 $y'=-2$，法线斜率为 $1/2$，所以法线方程为 $x-2y+2=0$.
]

#answer("1（3）")[
*分析* 对称区间上的积分，可用奇偶性简化计算.
$ integral_(-pi/2)^(pi/2)(x^3+sin^2 x)cos^2 x dif x
&=2integral_0^(pi/2)sin^2 x cos^2 x dif x \
&=2integral_0^(pi/2)(sin^2 x-sin^4 x)dif x \
&=2(frac(pi,4)-frac(3,4)dot frac(1,2)dot frac(pi,2))=frac(pi,8). $
也可用倍角公式计算.
]

#answer("1（4）")[
*分析* 左边恰为 $(y arcsin x)'$，可不必套用微分方程通解公式.
$ (y arcsin x)'=1=>y arcsin x=x+C. $
代入 $y(1/2)=0$ 得 $C=-1/2$，故 $y arcsin x=x-1/2$.
]

#answer("1（5）")[
*分析* 方程有无穷多解要求增广矩阵与系数矩阵同秩，且秩小于3.
$ mat(augment:#3,a,1,1,1;1,a,1,1;1,1,a,-2)
arrow.r mat(augment:#3,a,1,1,1;1,a,1,1;a+2,a+2,a+2,0). $
当 $a=-2$ 时两矩阵的秩均为2，方程有无穷多解. 仅令系数行列式
$ det mat(a,1,1;1,a,1;1,1,a)=a^3-3a+2=(a-1)^2(a+2)=0 $
还不够. 另一候选 $a=1$ 时方程组无解，不符合题意，所以只能填 $-2$.
]

= 二、选择题

#answer("2（1）")[
*分析* $f(x)$ 的值只有0和1，而 $f(0)=f(1)=1$，所以 $f(f(x))=1$，进而 $f(f(f(x)))=1$，应选 B.
]

#answer("2（2）")[
*分析* 将各无穷小替换成等价无穷小. 当 $x->0$ 时，
$ (1-cos x)ln(1+x^2)tilde frac(1,2)x^4,quad x sin(x^n)tilde x^(n+1),quad e^(x^2)-1 tilde x^2. $
两条高阶关系要求 $2<n+1<4$，故正整数 $n=2$，选 B.
]

#answer("2（3）")[
*分析* 曲线关于 $x=2$ 对称. 又
$ y'=4(x-1)(x-2)(x-3), $
对导函数应用罗尔定理，可知二阶导数有两个零点. 二阶导数是二次多项式，两个零点左右均变号，故原曲线有两个拐点，选 C. 也可直接求 $y''$ 的零点并判断变号.
]

#answer("2（4）")[
*分析* 构造 $F(x)=f(x)-x$，则 $F(1)=F'(1)=0$，且 $F'(x)=f'(x)-1$ 严格递减. 因此 $x<1$ 时 $F'(x)>0$，$x>1$ 时 $F'(x)<0$，$F$ 在 $x=1$ 取得唯一最大值0. 所以两边均有 $f(x)<x$，选 A.
从几何上看，曲线在 $(1,1)$ 处的切线为 $y=x$，导数严格递减，曲线位于切线下方，也可据此判断.
]

#answer("2（5）")[

*分析* 在 $x<0$ 一侧，函数单调增加，所以导数应为正，排除 A、C. 在 $x>0$ 一侧，函数依次增加、减少、增加，有两个驻点，相应导数应有两个零点，排除 B. 故选 D. 本题要求从函数图形判断导函数图形，应注意单调性与导数符号、极值点与导数零点的关系.

]

= 解答题

#answer("三、")[
*分析* 这是常规的不定积分题，用换元法即可求解.


*解* 设 $x=tan u$，则 $dif x=sec^2 u dif u$.
$ #text[原式] &= integral (dif u)/(cos u dot (2tan^2 u+1))=integral (cos u dif u)/(2sin^2 u+cos^2 u) \
&= integral (dif sin u)/(1+sin^2 u) \
&= arctan(sin u)+C \
&= arctan(x/sqrt(1+x^2))+C. $
注：答案中缺任意常数 $C$ 扣1分.
]

#answer("四、")[
*分析* 先求出极限所定义的函数表达式，再由表达式找间断点并判断类型.


*解* 因为 $f(x)=e^(lim_(t->x) x/(sin t-sin x) ln((sin t)/(sin x)))$，而
$ lim_(t->x) x/(sin t-sin x) ln((sin t)/(sin x))=lim_(t->x) x frac((cos t)/(sin t),cos t)=x/(sin x), $
故 $f(x)=e^(x/(sin x))$.

由于 $lim_(x->0) f(x)=lim_(x->0) e^(x/(sin x))=e$，所以，$x=0$ 是函数 $f(x)$ 的第一类（或可去）间断点；

$x=k pi (k=plus.minus 1,plus.minus 2,dots)$ 是 $f(x)$ 的第二类（或无穷）间断点.


常见错误是未先求极限就直接判断间断点，因而不能正确说明零点的可去间断性质.
]

#answer("五、")[
*分析* 曲率半径 $rho(x)$ 和弧长 $s(x)$ 均为 $x$ 的函数，因此对弧长求导相当于参数方程求导.


*解* $y'=1/(2sqrt(x))$，$y''=-1/(4sqrt(x^3))$，抛物线在点 $M(x,y)$ 处的曲率半径
$ rho=rho(x)=1/K=(1+y'^2)^(3/2)/|y''|=1/2 (4x+1)^(3/2). $
抛物线上 $overparen(A M)$ 的弧长
$ s=s(x)=integral_1^x sqrt(1+y'^2) dif x=integral_1^x sqrt(1+1/(4x)) dif x. $
故
$ (dif rho)/(dif s)&=frac((dif rho)/(dif x),(dif s)/(dif x))=(1/2 dot 3/2 (4x+1)^(1/2) dot 4)/sqrt(1+1/(4x))=6sqrt(x), \
(dif^2 rho)/(dif s^2)&=(dif)/(dif x)((dif rho)/(dif s))dot frac(1,(dif s)/(dif x))=6/(2sqrt(x))dot 1/sqrt(1+1/(4x))=6/sqrt(4x+1). $
因此
$ 3rho (dif^2 rho)/(dif s^2)-((dif rho)/(dif s))^2=3dot 1/2 (4x+1)^(3/2) dot 6/sqrt(4x+1)-36x=9. $


应注意曲率半径是曲率的倒数；弄清题目所求量后，再用参数求导公式计算.
]

#answer("六、")[
*分析* 两边求导，再利用反函数关系 $g(f(x))=x$，便可求出 $f(x)$.


*解* 等式两边对 $x$ 求导得
$ g[f(x)]f'(x)=2x e^x+x^2 e^x $
而 $g[f(x)]=x$，故 $x f'(x)=2x e^x+x^2 e^x$.

当 $x != 0$ 时 $f'(x)=2e^x+x e^x$，积分得 $f(x)=(x+1)e^x+C$.

由于 $f(x)$ 在 $x=0$ 处连续，故由 $f(0)=lim_(x->0^+) f(x)=lim_(x->0^+) [(x+1)e^x+C]=0$ 得 $C=-1$. 因此
$ f(x)=(x+1)e^x-1. $
]

#answer("七、")[
*分析* 分为求函数与求积分两部分. 先从题设得到微分方程，再利用题设关系化简积分，最后代入所求函数.


*解法1* 由 $f'(x)=g(x)$ 得 $f''(x)=g'(x)=2e^x-f(x)$，于是有
$ cases(f''(x)+f(x)=2e^x,f(0)=0,f'(0)=2), $
解之得 $f(x)=sin x-cos x+e^x$.

又
$ integral_0^pi [g(x)/(1+x)-f(x)/(1+x)^2] dif x &= integral_0^pi (g(x)(1+x)-f(x))/(1+x)^2 dif x \
&= integral_0^pi (f'(x)(1+x)-f(x))/(1+x)^2 dif x \
&= integral_0^pi dif f(x)/(1+x) \
&= lr(f(x)/(1+x)|)_0^pi=f(pi)/(1+pi)-f(0)=(1+e^pi)/(1+pi). $
*解法2* 同解法1，得 $f(x)=sin x-cos x+e^x$.

又
$ integral_0^pi [g(x)/(1+x)-f(x)/(1+x)^2] dif x &= integral_0^pi g(x)/(1+x) dif x+integral_0^pi f(x) dif 1/(1+x) \
&= integral_0^pi g(x)/(1+x) dif x+lr(f(x)dot 1/(1+x)|)_0^pi-integral_0^pi f'(x)/(1+x) dif x \
&= f(pi)/(1+pi)-f(0)+integral_0^pi g(x)/(1+x) dif x-integral_0^pi g(x)/(1+x) dif x \
&= (1+e^pi)/(1+pi). $
]

#answer("八、")[
*分析* 第一问是微分方程定解问题，关键是列方程；第二问是最值问题，关键是写出图形面积.


*解* （1）设曲线 $L$ 过点 $P(x,y)$ 的切线方程为 $Y-y=y'(X-x)$，令 $X=0$，则得该切线在 $y$ 轴上的截距为 $y-x y'$.

由题设知 $sqrt(x^2+y^2)=y-x y'$，令 $u=y/x$，则此方程可化为
$ (dif u)/sqrt(1+u^2)=-(dif x)/x, $
解之得 $y+sqrt(x^2+y^2)=C$.

由 $L$ 经过点 $(1/2,0)$，知 $C=1/2$，于是 $L$ 方程为
$ y+sqrt(x^2+y^2)=1/2, quad #text[即] y=1/4-x^2. $
（2）设第一象限内曲线 $y=1/4-x^2$ 在点 $P(x,y)$ 处的切线方程为
$ Y-(1/4-x^2)=-2x(X-x), $
即 $Y=-2x X+x^2+1/4 (0<x<=1/2)$，它与 $x$ 轴及 $y$ 轴交点分别为 $((x^2+1/4)/(2x),0)$ 与 $(0,x^2+1/4)$，所求面积为
$ S(x)=1/2 dot (x^2+1/4)^2/(2x)-integral_0^(1/2) (1/4-x^2) dif x. $
对 $x$ 求导得
$ S'(x)=1/4 dot (4x^2(x^2+1/4)-(x^2+1/4)^2)/x^2=1/(4x^2)(x^2+1/4)(3x^2-1/4). $
令 $S'(x)=0$，解得 $x=sqrt(3)/6$.

当 $0<x<sqrt(3)/6$ 时，$S'(x)<0$；$x>sqrt(3)/6$ 时，$S'(x)>0$，因而 $x=sqrt(3)/6$ 是 $S(x)$ 在 $(0,1/2)$ 内的唯一极小值点，即最小值点. 于是所求切线为
$ Y=-2dot sqrt(3)/6 X+3/36+1/4, $
即 $Y=-sqrt(3)/3 X+1/3$.


截距应按题意写成 $y-x y'$；若写成绝对值再平方，会得到非线性微分方程，使求解复杂化. 第二问中，抛物线与两坐标轴围成的面积为常数，所以也可只求切线与两轴围成三角形面积的最小值.
]

#answer("九、")[
*分析* 应用题需先找到建立模型的关键：“体积融化的速率与半球面面积成正比”，且体积变化率为负. 始终保持半球形意味着整个融化过程适用同一模型；三小时融化七分之八用于确定比例常数. 可把半径或体积作为未知函数.


*解法1* 设雪堆在时刻 $t$ 的体积 $V=2/3 pi r^3$，侧面积 $S=2pi r^2$，由题设知
$ (dif V)/(dif t)=2pi r^2 (dif r)/(dif t)=-K S=-2pi K r^2, $
于是 $(dif r)/(dif t)=-K$，积分得 $r=-K t+C$，由 $r|_(t=0)=r_0$，有 $r=r_0-K t$.

又 $V|_(t=3)=1/8 V|_(t=0)$，即 $2/3 pi (r_0-3K)^3=1/8 dot 2/3 pi r_0^3$，这样 $K=1/6 r_0$，从而 $r=r_0-1/6 r_0 t$.

因雪堆全部融化时 $r=0$，故得 $t=6$，即雪堆全部融化需6小时.

*解法2* 设雪堆在时刻 $t$ 的体积 $V=2/3 pi r^3$，侧面积 $S=2pi r^2$，从而 $S=root(3,18pi V^2)$.

由题设知 $(dif V)/(dif t)=-K S=-root(3,18pi V^2)K$，即
$ (dif V)/root(3,V^2)=-root(3,18pi)K dif t. $
积分得 $3root(3,V)=-root(3,18pi)K t+C$.

设 $V|_(t=0)=V_0$，得 $C=3root(3,V_0)$，故有 $3root(3,V)=3root(3,V_0)-root(3,18pi)K t$.

又由 $V|_(t=3)=1/8 V_0$ 得 $3/2 root(3,V_0)=3root(3,V_0)-3root(3,18pi)K$，从而 $K=root(3,V_0)/(2root(3,18pi))$，故 $3root(3,V)=3root(3,V_0)-1/2 root(3,V_0)t$.

令 $V=0$，得 $t=6$，即雪堆全部融化需6小时.


常见错误是没有弄清题意，或在 $frac(dif V,dif t)=-K S$ 中遗漏负号. 本题用应用题考查建立数学模型和求解的能力.
]

#answer("十、")[
*分析* 第一问为第二问准备. 只需证明 $frac(3,a^3)integral_(-a)^a f(x)dif x$ 介于 $f''$ 的最小值与最大值之间，再用连续函数介值定理.


*解* （1）对任意 $x in [-a,a]$，$f(x)=f(0)+f'(0)x+f''(xi)/(2!)x^2=f'(0)x+f''(xi)/(2!)x^2$，其中 $xi$ 在0与 $x$ 之间.

（2）
$ integral_(-a)^a f(x) dif x &= integral_(-a)^a f'(0)x dif x+integral_(-a)^a x^2/(2!) f''(xi) dif x \
&= 1/2 integral_(-a)^a x^2 f''(xi) dif x. $
因为 $f''(x)$ 在 $[-a,a]$ 上连续，故对任意的 $x in [-a,a]$，有 $m<=f''(x)<=M$，其中 $M,m$ 分别为 $f''(x)$ 在 $[-a,a]$ 上的最大、最小值，所以有
$ m integral_0^a x^2 dif x<=integral_(-a)^a f(x) dif x=1/2 integral_(-a)^a x^2 f''(xi) dif x<=M integral_0^a x^2 dif x, $
即 $m<=3/a^3 integral_(-a)^a f(x) dif x<=M$.

因而由 $f''(x)$ 的连续性知，至少存在一点 $eta in [-a,a]$，使
$ f''(eta)=3/a^3 integral_(-a)^a f(x) dif x, $
即 $a^3 f''(eta)=3integral_(-a)^a f(x) dif x$.

注：如用第二积分中值定理证明，本题得分不超过6分.


典型错误是误解拉格朗日余项的形式，或把余项里的 $xi$ 当作常数，将 $f''(xi)$ 提出积分号. 实际 $xi$ 随 $x$ 变化，且并不知道它是否连续，不能将 $f''(xi)$ 当常数，也不能贸然应用第一积分中值定理.
]

#answer("十一、")[
*分析* 先把给定矩阵等式化简，再代入具体矩阵计算.


*解* 由题设的关系式得 $A X(A-B)+B X(B-A)=E$，即 $(A-B)X(A-B)=E$.

由于行列式 $|A-B|=mat(delim:"|",1,-1,-1;0,1,-1;0,0,1) != 0$，所以矩阵 $A-B$ 可逆，而
$ (A-B)^(-1)=mat(1,1,2;0,1,1;0,0,1), $
故 $X=[(A-B)^(-1)]^2=mat(1,2,5;0,1,2;0,0,1)$.
]

#answer("十二、")[
*分析* 四个向量都是方程组的解，且与原基础解系的向量个数相同，所以只需讨论它们何时线性无关.


*解* 由于齐次线性方程组解的线性组合仍是该方程组的解，故 $beta_1,beta_2,beta_3,beta_4$ 是 $A X=0$ 的解.

因此，当且仅当 $beta_1,beta_2,beta_3,beta_4$ 线性无关时，$beta_1,beta_2,beta_3,beta_4$ 是基础解系. 又
$ (beta_1,beta_2,beta_3,beta_4)=(alpha_1,alpha_2,alpha_3,alpha_4)mat(1,0,0,t;t,1,0,0;0,t,1,0;0,0,t,1), $
故 $beta_1,beta_2,beta_3,beta_4$ 线性无关当且仅当
$ mat(delim:"|",1,0,0,t;t,1,0,0;0,t,1,0;0,0,t,1) != 0, $
即 $1-t^4 != 0$，亦即 $t != plus.minus 1$.

所以 $t != plus.minus 1$ 时，$beta_1,beta_2,beta_3,beta_4$ 是 $A X=0$ 的基础解系.


*另一解法* 设 $k_1 beta_1+k_2 beta_2+k_3 beta_3+k_4 beta_4=0$. 代入各 $beta_i$ 并利用 $alpha_i$ 线性无关，得
$ cases(k_1+t k_4=0,k_2+t k_1=0,k_3+t k_2=0,k_4+t k_3=0). $
系数行列式为 $1-t^4$，故只有 $t!=plus.minus 1$ 时仅有零解，四个 $beta_i$ 线性无关，因而构成基础解系.

基础解系应同时满足：每个向量都是解；向量组线性无关；每个解都能由该向量组线性表示. 本题第三点可由与已有基础解系具有相同向量个数代替. 解题时每一点都应有明确结论.
]

