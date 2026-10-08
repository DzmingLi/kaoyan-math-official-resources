#import "../template.typ": exam
#show: exam.with(year: 2001, subject: "一", title: "2001年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(true)


= 一、填空题（本题共5小题，每小题3分，满分15分）
#ezexam.counter-question.step()

（1）设 $y=e^x (C_1 sin x+C_2 cos x)$（$C_1,C_2$ 为任意常数）为某二阶常系数线性齐次微分方程的通解，则该方程为 #fillin(len: 3em)[].
#ezexam.solution(show-number: false)[
$y''-2y'+2y=0$.
]

（2）设 $r=sqrt(x^2+y^2+z^2)$，则 $op("div")(op("grad") r)|_((1,-2,2))=$ #fillin(len: 3em)[].
#ezexam.solution(show-number: false)[
$frac(2,3)$.
]

（3）交换二次积分的积分次序：$integral_(-1)^0 dif y integral_2^(1-y) f(x,y)dif x=$ #fillin(len: 3em)[].
#ezexam.solution(show-number: false)[
$integral_1^2 dif x integral_0^(1-x) f(x,y)dif y$.
]

（4）设矩阵 $A$ 满足 $A^2+A-4E=O$，其中 $E$ 为单位矩阵，则 $(A-E)^(-1)=$ #fillin(len: 3em)[].
#ezexam.solution(show-number: false)[
$frac(1,2)(A+2E)$.
]

（5）设随机变量 $X$ 的方差为2，则根据切比雪夫不等式有估计 $P{|X-E(X)|>=2}<=$ #fillin(len: 3em)[].
#ezexam.solution(show-number: false)[
$frac(1,2)$.
]

= 二、选择题（本题共5小题，每小题3分，满分15分）
#ezexam.counter-question.step()

（1）设函数 $f(x)$ 在定义域内可导，$y=f(x)$ 的图形如图1所示，则导函数 $y=f'(x)$ 的图形为（　）.
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

（2）设函数 $f(x,y)$ 在点 $(0,0)$ 附近有定义，且 $f'_x (0,0)=3$，$f'_y (0,0)=1$，则（　）.
#choices[$dif z|_((0,0))=3dif x+dif y$.][曲面 $z=f(x,y)$ 在点 $(0,0,f(0,0))$ 的法向量为 $[3,1,1]$.][曲线 $cases(z=f(x,y),y=0)$ 在点 $(0,0,f(0,0))$ 的切向量为 $[1,0,3]$.][曲线 $cases(z=f(x,y),y=0)$ 在点 $(0,0,f(0,0))$ 的切向量为 $[3,0,1]$.]
#ezexam.solution(show-number: false)[
C.
]

（3）设 $f(0)=0$，则 $f(x)$ 在点 $x=0$ 可导的充要条件为（　）.
#choices[$lim_(h->0) frac(1,h^2)f(1-cos h)$ 存在.][$lim_(h->0) frac(1,h)f(1-e^h)$ 存在.][$lim_(h->0) frac(1,h^2)f(h-sin h)$ 存在.][$lim_(h->0) frac(1,h)[f(2h)-f(h)]$ 存在.]
#ezexam.solution(show-number: false)[
B.
]

（4）设 $A=mat(1,1,1,1;1,1,1,1;1,1,1,1;1,1,1,1)$，$B=mat(4,0,0,0;0,0,0,0;0,0,0,0;0,0,0,0)$，则 $A$ 与 $B$（　）.
#choices[合同且相似.][合同但不相似.][不合同但相似.][不合同且不相似.]
#ezexam.solution(show-number: false)[
A.
]

（5）将一枚硬币重复掷 $n$ 次，以 $X$ 和 $Y$ 分别表示正面向上和反面向上的次数，则 $X$ 和 $Y$ 的相关系数等于（　）.
#choices[$-1$.][$0$.][$frac(1,2)$.][$1$.]
#ezexam.solution(show-number: false)[
A.
]

#ezexam.question(label: n => [三、])[
（本题满分6分）求 $integral frac(arctan e^x,e^(2x))dif x$.
#ezexam.solution(show-number: false)[
$ integral frac(arctan e^x,e^(2x))dif x&=-frac(1,2)integral arctan e^x dif(e^(-2x)) \
&=-frac(1,2)[e^(-2x)arctan e^x-integral frac(dif e^x,e^(2x)(1+e^(2x)))] \
&=-frac(1,2)(e^(-2x)arctan e^x+e^(-x)+arctan e^x)+C. $
注：答案中缺任意常数 $C$ 扣1分.
]


]

#ezexam.question(label: n => [四、])[
（本题满分6分）设函数 $z=f(x,y)$ 在点 $(1,1)$ 处可微，且 $f(1,1)=1$，$frac(partial f,partial x)|_((1,1))=2$，$frac(partial f,partial y)|_((1,1))=3$，$phi(x)=f(x,f(x,x))$，求 $frac(dif,dif x)phi^3(x)|_(x=1)$.
#ezexam.solution(show-number: false)[
$ phi(1)=f(1,f(1,1))=f(1,1)=1, $
$ frac(dif,dif x)phi^3(x)|_(x=1)&=[3phi^2(x)frac(dif phi(x),dif x)]|_(x=1) \
&=3phi^2(x)[f'_1(x,f(x,x))+f'_2(x,f(x,x))(f'_1(x,x)+f'_2(x,x))]|_(x=1) \
&=3dot 1dot [2+3(2+3)]=51. $
]


]

#ezexam.question(label: n => [五、])[
（本题满分8分）设 $f(x)=cases(frac(1+x^2,x)arctan x quad x!=0,1 quad x=0)$，试将 $f(x)$ 展开成 $x$ 的幂级数，并求级数 $sum_(n=1)^infinity frac((-1)^n,1-4n^2)$ 的和.
#ezexam.solution(show-number: false)[
因 $frac(1,1+x^2)=sum_(n=0)^infinity (-1)^n x^(2n)$，$x in (-1,1)$，
故 $arctan x=integral_0^x (arctan x)'dif x=sum_(n=0)^infinity frac((-1)^n,2n+1)x^(2n+1)$，$x in [-1,1]$.

于是
$ f(x)&=1+sum_(n=1)^infinity frac((-1)^n,2n+1)x^(2n)+sum_(n=0)^infinity frac((-1)^n,2n+1)x^(2n+2) \
&=1+sum_(n=1)^infinity frac((-1)^n,2n+1)x^(2n)+sum_(n=1)^infinity frac((-1)^(n-1),2n-1)x^(2n) \
&=1+sum_(n=1)^infinity frac((-1)^n 2,1-4n^2)x^(2n),quad x in [-1,1], $
因此 $sum_(n=1)^infinity frac((-1)^n,1-4n^2)=frac(1,2)[f(1)-1]=frac(pi,4)-frac(1,2)$.
]


]

#ezexam.question(label: n => [六、])[
（本题满分7分）计算 $I=integral.cont_L (y^2-z^2)dif x+(2z^2-x^2)dif y+(3x^2-y^2)dif z$，其中 $L$ 是平面 $x+y+z=2$ 与柱面 $|x|+|y|=1$ 的交线，从 $z$ 轴正向看去，$L$ 为逆时针方向.
#ezexam.solution(show-number: false)[
记 $S$ 为平面 $x+y+z=2$ 上 $L$ 所围成部分的上侧，$D$ 为 $S$ 在 $x O y$ 坐标面上的投影，由斯托克斯公式得
$ I&=integral.double_S (-2y-4z)dif y dif z+(-2z-6x)dif z dif x+(-2x-2y)dif x dif y \
&=-frac(2,sqrt(3))integral.double_S (4x+2y+3z)dif S \
&=-2integral.double_D (x-y+6)dif x dif y \
&=-12integral.double_D dif x dif y \
&=-24. $
]


]

#ezexam.question(label: n => [七、])[
（本题满分7分）设函数 $y=f(x)$ 在区间 $(-1,1)$ 内具有二阶连续导数，且 $f''(x) != 0$.证明：

（1）对于每一个非零的 $x in (-1,1)$，存在唯一的 $theta(x) in (0,1)$，使得
$ f(x)=f(0)+x f'(theta(x)x); $
（2）$lim_(x->0) theta(x)=1/2$.
#ezexam.solution(show-number: false)[
*证法1* （1）任给非零的 $x in (-1,1)$，由拉格朗日中值定理，存在 $theta(x) in (0,1)$，使得
$ f(x)=f(0)+x f'(theta(x)x). $
由于 $f''(x)$ 连续且不为零，故在 $(-1,1)$ 内不变号，不妨设 $f''(x)>0$，则 $f'(x)$ 在 $(-1,1)$ 内严格单增，故 $theta(x)$ 唯一.

（2）由泰勒公式得
$ f(x)=f(0)+f'(0)x+1/2 f''(xi)x^2 quad (xi #text[在0与] x #text[之间]), $
所以 $x f'(theta(x)x)=f(x)-f(0)=f'(0)x+1/2 f''(xi)x^2$，从而
$ theta(x) (f'(theta(x)x)-f'(0))/(theta(x)x)=1/2 f''(xi). $
由于
$ lim_(x->0) (f'(theta(x)x)-f'(0))/(theta(x)x)=f''(0), quad lim_(x->0) f''(xi)=lim_(xi->0) f''(xi)=f''(0), $
故 $lim_(x->0) theta(x)=1/2$.

*证法2*

（1）同证法一（1）.

（2）对于非零 $x in (-1,1)$，由拉格朗日中值定理得
$ f(x)=f(0)+x f'(theta(x)x) quad (0<theta(x)<1), $
所以
$ (f'(theta(x)x)-f'(0))/x=(f(x)-f(0)-f'(0)x)/x^2. $
由于
$ lim_(x->0) (f'(theta(x)x)-f'(0))/(theta(x)x)=f''(0), \
lim_(x->0) (f(x)-f(0)-f'(0)x)/x^2=lim_(x->0) (f'(x)-f'(0))/(2x)=1/2 f''(0), $
故 $lim_(x->0) theta(x)=1/2$.
]


]

#ezexam.question(label: n => [八、])[
（本题满分8分）设有一高度为 $h(t)$（$t$ 为时间）的雪堆在融化过程中，其侧面满足方程 $z=h(t)-(2(x^2+y^2))/h(t)$（设长度单位为厘米，时间单位为小时），已知体积减少的速率与侧面积成正比（比例系数0.9），问高度为130（厘米）的雪堆全部融化需多少小时？
#ezexam.solution(show-number: false)[
*解* 记 $V$ 为雪堆体积，$S$ 为雪堆的侧面积，则
$ V &= integral_0^(h(t)) dif z integral.double_(x^2+y^2 <= 1/2 [h^2(t)-h(t)z]) dif x dif y \
&= integral_0^(h(t)) 1/2 pi [h^2(t)-h(t)z] dif z=pi/4 h^3(t), \
S &= integral.double_(x^2+y^2 <= h^2(t)/2) sqrt(1+(z'_x)^2+(z'_y)^2) dif x dif y \
&= integral.double_(x^2+y^2 <= h^2(t)/2) sqrt(1+(16(x^2+y^2))/h^2(t)) dif x dif y \
&= (2pi)/h(t) integral_0^(h(t)/sqrt(2)) [h^2(t)+16r^2]^(1/2) r dif r=(13pi h^2(t))/12. $
由题意知 $(dif V)/(dif t)=-0.9S$，所以 $(dif h(t))/(dif t)=-13/10$，因此 $h(t)=-13/10 t+C$.

由 $h(0)=130$ 得 $h(t)=-13/10 t+130$.

令 $h(t)->0$ 得 $t=100$（小时）.

因此高度为130厘米的雪堆全部融化所需时间为100小时.
]


]

#ezexam.question(label: n => [九、])[
（本题满分6分）设 $alpha_1,alpha_2,dots,alpha_s$ 为线性方程组 $A x=0$ 的一个基础解系，$beta_1=t_1 alpha_1+t_2 alpha_2,beta_2=t_1 alpha_2+t_2 alpha_3,dots,beta_s=t_1 alpha_s+t_2 alpha_1$，其中 $t_1,t_2$ 为实常数.试问 $t_1,t_2$ 满足什么关系时，$beta_1,beta_2,dots,beta_s$ 也为 $A x=0$ 的一个基础解系.
#ezexam.solution(show-number: false)[
*解* 由于 $beta_i (i=1,2,dots,s)$ 为 $alpha_1,alpha_2,dots,alpha_s$ 的线性组合，所以 $beta_i (i=1,2,dots,s)$ 均为 $A x=0$ 的解.

设 $k_1 beta_1+k_2 beta_2+dots+k_s beta_s=0$，#h(1em)（1）

即 $(t_1 k_1+t_2 k_s)alpha_1+(t_2 k_1+t_1 k_2)alpha_2+dots+(t_2 k_(s-1)+t_1 k_s)alpha_s=0$，由于 $alpha_1,alpha_2,dots,alpha_s$ 线性无关，因此有
$ cases(t_1 k_1+t_2 k_s=0,t_2 k_1+t_1 k_2=0,dots,t_2 k_(s-1)+t_1 k_s=0). quad (2) $
因为系数行列式
$ mat(delim: "|",t_1,0,dots,0,t_2;t_2,t_1,0,dots,0;0,t_2,t_1,dots,0;dots.v,dots.v,dots.v,dots.v,dots.v;0,0,dots,t_2,t_1)_(s times s)=t_1^s+(-1)^(s+1) t_2^s, $
所以当 $t_1^s+(-1)^(s+1) t_2^s != 0$，即当 $s$ 为偶数，$t_1 != plus.minus t_2$；$s$ 为奇数，$t_1 != -t_2$ 时，方程组（2）只有零解 $k_1=k_2=dots=k_s=0$，从而 $beta_1,beta_2,dots,beta_s$ 线性无关.此时 $beta_1,beta_2,dots,beta_s$ 也为 $A x=0$ 的一个基础解系.
]


]

#ezexam.question(label: n => [十、])[
（本题满分8分）已知3阶矩阵 $A$ 与三维向量 $x$，使得向量组 $x,A x,A^2 x$ 线性无关，且满足
$ A^3 x=3A x-2A^2 x. $
（1）记 $P=(x,A x,A^2 x)$，求3阶矩阵 $B$，使 $A=P B P^(-1)$；

（2）计算行列式 $|A+E|$.
#ezexam.solution(show-number: false)[
*解* （1）设 $B=mat(a_1,a_2,a_3;b_1,b_2,b_3;c_1,c_2,c_3)$，则由 $A P=P B$ 得
$ (A x,A^2 x,A^3 x)=(x,A x,A^2 x)mat(a_1,a_2,a_3;b_1,b_2,b_3;c_1,c_2,c_3). $
上式可写为
$ A x=a_1 x+b_1 A x+c_1 A^2 x, quad #text[①] \
A^2 x=a_2 x+b_2 A x+c_2 A^2 x, quad #text[②] \
A^3 x=a_3 x+b_3 A x+c_3 A^2 x. quad #text[③] $
将 $A^3 x=3A x-2A^2 x$ 代入③式得
$ 3A x-2A^2 x=a_3 x+b_3 A x+c_3 A^2 x. quad #text[④] $
由于 $x,A x,A^2 x$ 线性无关，故

由①式可得 $a_1=c_1=0,b_1=1$；

由②式可得 $a_2=b_2=0,c_2=1$；

由④式可得 $a_3=0,b_3=3,c_3=-2$，

从而 $B=mat(0,0,0;1,0,3;0,1,-2)$.

（2）由①知 $A$ 与 $B$ 相似，故 $A+E$ 与 $B+E$ 相似，从而
$ |A+E|=|B+E|=mat(delim: "|",1,0,0;1,1,3;0,1,-1)=-4. $
]


]

#ezexam.question(label: n => [十一、])[
（本题满分7分）设某班车起点站上客人数 $X$ 服从参数为 $lambda (lambda>0)$ 的泊松分布，每位乘客在中途下车的概率为 $p (0<p<1)$，且中途下车与否相互独立.以 $Y$ 表示在中途下车的人数，求：

（1）在发车时有 $n$ 个乘客的条件下，中途有 $m$ 人下车的概率；

（2）二维随机变量 $(X,Y)$ 的概率分布.
#ezexam.solution(show-number: false)[
*解* （1）$P{Y=m|X=n}=C_n^m p^m (1-p)^(n-m)$，$0<=m<=n,n=0,1,2,dots$.

（2）
$ P{X=n,Y=m} &= P{Y=m|X=n}P{X=n} \
&= C_n^m p^m (1-p)^(n-m) dot e^(-lambda)/(n!) lambda^n, \
&quad 0<=m<=n,n=0,1,2,dots. $
]


]

#ezexam.question(label: n => [十二、])[
（本题满分7分）设总体 $X$ 服从正态分布 $N(mu,sigma^2) (sigma>0)$，从该总体中抽取简单随机样本 $X_1,X_2,dots,X_(2n) (n>=2)$，其样本均值为 $overline(X)=1/(2n) sum_(i=1)^(2n) X_i$，求统计量 $Y=sum_(i=1)^n (X_i+X_(n+i)-2overline(X))^2$ 的数学期望 $E(Y)$.
#ezexam.solution(show-number: false)[
*解法1* 考虑 $(X_1+X_(n+1)),(X_2+X_(n+2)),dots,(X_n+X_(2n))$，将其视为取自总体 $N(2mu,2sigma^2)$ 的简单随机样本，则其样本均值为
$ 1/n sum_(i=1)^n (X_i+X_(n+i))=1/n sum_(i=1)^(2n) X_i=2overline(X), $
样本方差为 $1/(n-1)Y$.

由于 $E(1/(n-1)Y)=2sigma^2$，所以 $E(Y)=(n-1)(2sigma^2)=2(n-1)sigma^2$.

*解法2* 记
$ overline(X)'=1/n sum_(i=1)^n X_i, quad overline(X)''=1/n sum_(i=1)^n X_(n+i), $
显然有 $2overline(X)=overline(X)'+overline(X)''$.因此
$ E(Y) &= E[sum_(i=1)^n (X_i+X_(n+i)-2overline(X))^2] \
&= E{sum_(i=1)^n [(X_i-overline(X)')+(X_(n+i)-overline(X)'')]^2} \
&= E{sum_(i=1)^n [(X_i-overline(X)')^2+2(X_i-overline(X)')(X_(n+i)-overline(X)'')+(X_(n+i)-overline(X)'')^2]} \
&= E[sum_(i=1)^n (X_i-overline(X)')^2]+0+E[sum_(i=1)^n (X_(n+i)-overline(X)'')^2] \
&= (n-1)sigma^2+(n-1)sigma^2 \
&= 2(n-1)sigma^2. $
]

]
