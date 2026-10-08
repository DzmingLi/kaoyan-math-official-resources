#import "../template.typ": exam
#show: exam.with(year: 2001, subject: "二", title: "2001年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#ezexam.answer-state.update(true)


= 一、填空题（本题共5小题，每小题3分，满分15分）
#ezexam.counter-question.step()

（1）$lim_(x->1) (sqrt(3-x)-sqrt(1+x))/(x^2+x-2)=$#h(3em).
#ezexam.solution(show-number: false)[
$-sqrt(2)/6$.
]

（2）设函数 $y=f(x)$ 由方程 $e^(2x+y)-cos(x y)=e-1$ 所确定，则曲线 $y=f(x)$ 在点 $(0,1)$ 处的法线方程为#h(3em).
#ezexam.solution(show-number: false)[
$x-2y+2=0$.
]

（3）$integral_(-pi/2)^(pi/2) (x^3+sin^2 x)cos^2 x dif x=$#h(3em).
#ezexam.solution(show-number: false)[
$pi/8$.
]

（4）过点 $(1/2,0)$ 且满足关系式 $y' arcsin x+y/sqrt(1-x^2)=1$ 的曲线方程为#h(3em).
#ezexam.solution(show-number: false)[
$y arcsin x=x-1/2$.
]

（5）设方程 $mat(a,1,1;1,a,1;1,1,a)mat(x_1;x_2;x_3)=mat(1;1;-2)$ 有无穷多个解，则 $a=$#h(3em).
#ezexam.solution(show-number: false)[
$-2$.
]

= 二、选择题（本题共5小题，每小题3分，满分15分）
#ezexam.counter-question.step()

（1）设 $f(x)=cases(1 & |x|<=1,0 & |x|>1)$，则 $f{f[f(x)]}$ 等于（　）.
#choices[$0$.][$1$.][$cases(1 & |x|<=1,0 & |x|>1)$.][$cases(0 & |x|<=1,1 & |x|>1)$.]
#ezexam.solution(show-number: false)[
B.
]

（2）设当 $x->0$ 时，$(1-cos x)ln(1+x^2)$ 是比 $x sin x^n$ 高阶的无穷小，而 $x sin x^n$ 是比 $(e^(x^2)-1)$ 高阶的无穷小，则正整数 $n$ 等于（　）.
#choices[1.][2.][3.][4.]
#ezexam.solution(show-number: false)[
B.
]

（3）曲线 $y=(x-1)^2(x-3)^2$ 的拐点个数为（　）.
#choices[0.][1.][2.][3.]
#ezexam.solution(show-number: false)[
C.
]

（4）已知函数 $f(x)$ 在区间 $(1-delta,1+delta)$ 内具有二阶导数，$f'(x)$ 严格单调减少，且 $f(1)=f'(1)=1$，则（　）.
#choices[在 $(1-delta,1)$ 和 $(1,1+delta)$ 内均有 $f(x)<x$.][在 $(1-delta,1)$ 和 $(1,1+delta)$ 内均有 $f(x)>x$.][在 $(1-delta,1)$ 内，$f(x)<x$，在 $(1,1+delta)$ 内，$f(x)>x$.][在 $(1-delta,1)$ 内，$f(x)>x$，在 $(1,1+delta)$ 内，$f(x)<x$.]
#ezexam.solution(show-number: false)[
A.
]

（5）设函数 $f(x)$ 在定义域内可导，$y=f(x)$ 的图形如图1所示，则导函数 $y=f'(x)$ 的图形为（　）.
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
#curve-plot("base")
图1
#choices[#box(curve-plot("A"))][#box(curve-plot("B"))][#box(curve-plot("C"))][#box(curve-plot("D"))]
#ezexam.solution(show-number: false)[
D.
]

#ezexam.question(label: n => [三、])[
（本题满分6分）求 $integral (dif x)/((2x^2+1)sqrt(x^2+1))$.
#ezexam.solution(show-number: false)[
*解* 设 $x=tan u$，则 $dif x=sec^2 u dif u$.
$ #text[原式] &= integral (dif u)/(cos u dot (2tan^2 u+1))=integral (cos u dif u)/(2sin^2 u+cos^2 u) \
&= integral (dif sin u)/(1+sin^2 u) \
&= arctan(sin u)+C \
&= arctan(x/sqrt(1+x^2))+C. $
注：答案中缺任意常数 $C$ 扣1分.
]


]

#ezexam.question(label: n => [四、])[
（本题满分7分）求极限 $lim_(t->x) ((sin t)/(sin x))^(x/(sin t-sin x))$，记此极限为 $f(x)$，求函数 $f(x)$ 的间断点并指出其类型.
#ezexam.solution(show-number: false)[
*解* 因为 $f(x)=e^(lim_(t->x) x/(sin t-sin x) ln((sin t)/(sin x)))$，而
$ lim_(t->x) x/(sin t-sin x) ln((sin t)/(sin x))=lim_(t->x) x frac((cos t)/(sin t),cos t)=x/(sin x), $
故 $f(x)=e^(x/(sin x))$.

由于 $lim_(x->0) f(x)=lim_(x->0) e^(x/(sin x))=e$，所以，$x=0$ 是函数 $f(x)$ 的第一类（或可去）间断点；

$x=k pi (k=plus.minus 1,plus.minus 2,dots)$ 是 $f(x)$ 的第二类（或无穷）间断点.
]


]

#ezexam.question(label: n => [五、])[
（本题满分7分）设 $rho=rho(x)$ 是抛物线 $y=sqrt(x)$ 上任一点 $M(x,y) (x>=1)$ 处的曲率半径，$s=s(x)$ 是该抛物线上介于点 $A(1,1)$ 与 $M$ 之间的弧长，计算 $3rho (dif^2 rho)/(dif s^2)-((dif rho)/(dif s))^2$ 的值.（在直角坐标系下曲率公式为 $K=|y''|/(1+y'^2)^(3/2)$）
#ezexam.solution(show-number: false)[
*解* $y'=1/(2sqrt(x))$，$y''=-1/(4sqrt(x^3))$，抛物线在点 $M(x,y)$ 处的曲率半径
$ rho=rho(x)=1/K=(1+y'^2)^(3/2)/|y''|=1/2 (4x+1)^(3/2). $
抛物线上 $overparen(A M)$ 的弧长
$ s=s(x)=integral_1^x sqrt(1+y'^2) dif x=integral_1^x sqrt(1+1/(4x)) dif x. $
故
$ (dif rho)/(dif s)&=frac((dif rho)/(dif x),(dif s)/(dif x))=(1/2 dot 3/2 (4x+1)^(1/2) dot 4)/sqrt(1+1/(4x))=6sqrt(x), \
(dif^2 rho)/(dif s^2)&=(dif)/(dif x)((dif rho)/(dif s))dot frac(1,(dif s)/(dif x))=6/(2sqrt(x))dot 1/sqrt(1+1/(4x))=6/sqrt(4x+1). $
因此
$ 3rho (dif^2 rho)/(dif s^2)-((dif rho)/(dif s))^2=3dot 1/2 (4x+1)^(3/2) dot 6/sqrt(4x+1)-36x=9. $
]


]

#ezexam.question(label: n => [六、])[
（本题满分7分）设函数 $f(x)$ 在 $[0,+infinity)$ 上可导，$f(0)=0$，且其反函数为 $g(x)$.若
$ integral_0^(f(x)) g(t) dif t=x^2 e^x, $
求 $f(x)$.
#ezexam.solution(show-number: false)[
*解* 等式两边对 $x$ 求导得
$ g[f(x)]f'(x)=2x e^x+x^2 e^x $
而 $g[f(x)]=x$，故 $x f'(x)=2x e^x+x^2 e^x$.

当 $x != 0$ 时 $f'(x)=2e^x+x e^x$，积分得 $f(x)=(x+1)e^x+C$.

由于 $f(x)$ 在 $x=0$ 处连续，故由 $f(0)=lim_(x->0^+) f(x)=lim_(x->0^+) [(x+1)e^x+C]=0$ 得 $C=-1$.因此
$ f(x)=(x+1)e^x-1. $
]


]

#ezexam.question(label: n => [七、])[
（本题满分7分）设函数 $f(x),g(x)$ 满足 $f'(x)=g(x),g'(x)=2e^x-f(x)$，且 $f(0)=0,g(0)=2$，求 $integral_0^pi [g(x)/(1+x)-f(x)/(1+x)^2] dif x$.
#ezexam.solution(show-number: false)[
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


]

#ezexam.question(label: n => [八、])[
（本题满分9分）设 $L$ 是一条平面曲线，其上任意一点 $P(x,y) (x>0)$ 到坐标原点的距离，恒等于该点处的切线在 $y$ 轴上的截距，且 $L$ 经过点 $(1/2,0)$.

（1）试求曲线 $L$ 的方程；

（2）求 $L$ 位于第一象限部分的一条切线，使该切线与 $L$ 以及两坐标轴所围图形的面积最小.
#ezexam.solution(show-number: false)[
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

当 $0<x<sqrt(3)/6$ 时，$S'(x)<0$；$x>sqrt(3)/6$ 时，$S'(x)>0$，因而 $x=sqrt(3)/6$ 是 $S(x)$ 在 $(0,1/2)$ 内的唯一极小值点，即最小值点.于是所求切线为
$ Y=-2dot sqrt(3)/6 X+3/36+1/4, $
即 $Y=-sqrt(3)/3 X+1/3$.
]


]

#ezexam.question(label: n => [九、])[
（本题满分7分）一个半球体状的雪堆，其体积融化的速率与半球面面积 $S$ 成正比，比例常数 $K>0$.假设在融化过程中雪堆始终保持半球体状，已知半径为 $r_0$ 的雪堆在开始融化的3小时内，融化了其体积的 $7/8$，问雪堆全部融化需要多少小时？
#ezexam.solution(show-number: false)[
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
]


]

#ezexam.question(label: n => [十、])[
（本题满分8分）设 $f(x)$ 在区间 $[-a,a] (a>0)$ 上具有二阶连续导数，$f(0)=0$，

（1）写出 $f(x)$ 的带拉格朗日余项的一阶麦克劳林公式；

（2）证明在 $[-a,a]$ 上至少存在一点 $eta$，使
$ a^3 f''(eta)=3integral_(-a)^a f(x) dif x. $
#ezexam.solution(show-number: false)[
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
]


]

#ezexam.question(label: n => [十一、])[
（本题满分6分）已知矩阵 $A=mat(1,0,0;1,1,0;1,1,1)$，$B=mat(0,1,1;1,0,1;1,1,0)$，且矩阵 $X$ 满足 $A X A+B X B=A X B+B X A+E$，其中 $E$ 是3阶单位阵，求 $X$.
#ezexam.solution(show-number: false)[
*解* 由题设的关系式得 $A X(A-B)+B X(B-A)=E$，即 $(A-B)X(A-B)=E$.

由于行列式 $|A-B|=mat(delim:"|",1,-1,-1;0,1,-1;0,0,1) != 0$，所以矩阵 $A-B$ 可逆，而
$ (A-B)^(-1)=mat(1,1,2;0,1,1;0,0,1), $
故 $X=[(A-B)^(-1)]^2=mat(1,2,5;0,1,2;0,0,1)$.
]


]

#ezexam.question(label: n => [十二、])[
（本题满分6分）已知 $alpha_1,alpha_2,alpha_3,alpha_4$ 是线性方程组 $A X=0$ 的一个基础解系，若 $beta_1=alpha_1+t alpha_2,beta_2=alpha_2+t alpha_3,beta_3=alpha_3+t alpha_4,beta_4=alpha_4+t alpha_1$，讨论实数 $t$ 满足什么关系时，$beta_1,beta_2,beta_3,beta_4$ 也是 $A X=0$ 的一个基础解系.
#ezexam.solution(show-number: false)[
*解* 由于齐次线性方程组解的线性组合仍是该方程组的解，故 $beta_1,beta_2,beta_3,beta_4$ 是 $A X=0$ 的解.

因此，当且仅当 $beta_1,beta_2,beta_3,beta_4$ 线性无关时，$beta_1,beta_2,beta_3,beta_4$ 是基础解系.又
$ (beta_1,beta_2,beta_3,beta_4)=(alpha_1,alpha_2,alpha_3,alpha_4)mat(1,0,0,t;t,1,0,0;0,t,1,0;0,0,t,1), $
故 $beta_1,beta_2,beta_3,beta_4$ 线性无关当且仅当
$ mat(delim:"|",1,0,0,t;t,1,0,0;0,t,1,0;0,0,t,1) != 0, $
即 $t^4-1 != 0$，亦即 $t != plus.minus 1$.

所以 $t != plus.minus 1$ 时，$beta_1,beta_2,beta_3,beta_4$ 是 $A X=0$ 的基础解系.
]

]
