#import "../template.typ": exam
#show: exam.with(year: 2002, subject: "三", title: "2002年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#ezexam.answer-state.update(true)


= 一、填空题（本题共5小题，每小题3分，满分15分）
#ezexam.counter-question.step()

（1）设常数 $a!=1/2$，则 $lim_(n->infinity) ln[(n-2n a+1)/(n(1-2a))]^n=$#h(3em).
#ezexam.solution(show-number: false)[
$1/(1-2a)$.
]

（2）交换积分次序：$integral_0^(1/4) dif y integral_y^sqrt (y) f(x,y) dif x+integral_(1/4)^(1/2) dif y integral_y^(1/2) f(x,y) dif x=$#h(3em).
#ezexam.solution(show-number: false)[
$integral_0^(1/2) dif x integral_(x^2)^x f(x,y) dif y$.
]

（3）设三阶矩阵 $A=mat(1,2,-2;2,1,2;3,0,4)$，三维列向量 $alpha=(a,1,1)^T$.已知 $A alpha$ 与 $alpha$ 线性相关，则 $a=$#h(3em).
#ezexam.solution(show-number: false)[
$-1$.
]

（4）设随机变量 $X$ 和 $Y$ 的联合概率分布为
#table(columns:4,[$X \ Y$],[$-1$],[0],[1],[0],[0.07],[0.18],[0.15],[1],[0.08],[0.32],[0.20])
则 $X^2$ 和 $Y^2$ 的协方差 $op("cov")(X^2,Y^2)=$#h(3em).
#ezexam.solution(show-number: false)[
$-0.02$.
]

（5）设总体 $X$ 的概率密度为
$ f(x;theta)=cases(e^(-(x-theta)) & x>=theta,0 & x<theta), $
而 $X_1,X_2,dots,X_n$ 是来自总体 $X$ 的简单随机样本，则未知参数 $theta$ 的矩估计量为#h(3em).
#ezexam.solution(show-number: false)[
$1/n sum_(i=1)^n X_i-1$.

注：答 $overline(X)-1$ 者也对.
]

= 二、选择题（本题共5小题，每小题3分，满分15分）
#ezexam.counter-question.step()

（1）设函数 $f(x)$ 在闭区间 $[a,b]$ 上有定义，在开区间 $(a,b)$ 内可导，则（　）.
#choices[当 $f(a)f(b)<0$ 时，存在 $xi in (a,b)$，使 $f(xi)=0$.][对任何 $xi in (a,b)$，有 $lim_(x->xi) [f(x)-f(xi)]=0$.][当 $f(a)=f(b)$ 时，存在 $xi in (a,b)$，使 $f'(xi)=0$.][存在 $xi in (a,b)$，使 $f(b)-f(a)=f'(xi)(b-a)$.]
#ezexam.solution(show-number: false)[
B.
]

（2）设有幂级数 $sum_(n=1)^infinity a_n x^n$ 与 $sum_(n=1)^infinity b_n x^n$，若 $lim_(n->infinity) a_(n+1)/a_n=3/sqrt(5),lim_(n->infinity) b_(n+1)/b_n=3$，则幂级数 $sum_(n=1)^infinity (a_n^2)/(b_n^2)x^n$ 的收敛半径为（　）.
#choices[5.][$sqrt(5)/3$.][$1/3$.][$1/5$.]
#ezexam.solution(show-number: false)[
A.
]

（3）设 $A$ 是 $m times n$ 矩阵，$B$ 是 $n times m$ 矩阵，则线性方程组 $(A B)x=0$（　）.
#choices[当 $n>m$ 时仅有零解.][当 $n>m$ 时必有非零解.][当 $m>n$ 时仅有零解.][当 $m>n$ 时必有非零解.]
#ezexam.solution(show-number: false)[
D.
]

（4）设 $A$ 是 $n$ 阶实对称矩阵，$P$ 是 $n$ 阶可逆矩阵.已知 $n$ 维列向量 $alpha$ 是 $A$ 的属于特征值 $lambda$ 的特征向量，则矩阵 $(P^(-1)A P)^T$ 属于特征值 $lambda$ 的特征向量是（　）.
#choices[$P^(-1)alpha$.][$P^T alpha$.][$P alpha$.][$(P^(-1))^T alpha$.]
#ezexam.solution(show-number: false)[
B.
]

（5）设随机变量 $X$ 和 $Y$ 都服从标准正态分布，则（　）.
#choices[$X+Y$ 服从正态分布.][$X^2+Y^2$ 服从 $chi^2$ 分布.][$X^2$ 和 $Y^2$ 都服从 $chi^2$ 分布.][$X^2/Y^2$ 服从 $F$ 分布.]
#ezexam.solution(show-number: false)[
C.
]

#ezexam.question(label: n => [三、])[
（本题满分5分）求极限 $lim_(x->0) (integral_0^x [integral_0^(u^2) arctan(1+t) dif t] dif u)/(x(1-cos x))$.
#ezexam.solution(show-number: false)[
*解法1*
$ lim_(x->0) (integral_0^x [integral_0^(u^2) arctan(1+t) dif t] dif u)/(x(1-cos x)) \
=lim_(x->0) (integral_0^(x^2) arctan(1+t) dif t)/(1-cos x+x sin x) \
=lim_(x->0) (2x arctan(1+x^2))/(sin x+sin x+x cos x) \
=2lim_(x->0) arctan(1+x^2) lim_(x->0) 1/((2sin x)/x+cos x)=2dot pi/4 dot 1/3=pi/6. $
*解法2*
$ lim_(x->0) (integral_0^x [integral_0^(u^2) arctan(1+t) dif t] dif u)/(x(1-cos x)) \
=2lim_(x->0) (integral_0^x [integral_0^(u^2) arctan(1+t) dif t] dif u)/x^3 \
=2lim_(x->0) (integral_0^(x^2) arctan(1+t) dif t)/(3x^2) \
=2lim_(x->0) (2x arctan(1+x^2))/(6x)=2/3 dot pi/4=pi/6. $
]


]

#ezexam.question(label: n => [四、])[
（本题满分7分）设函数 $u=f(x,y,z)$ 有连续偏导数，且 $z=z(x,y)$ 由方程 $x e^x-y e^y=z e^z$ 所确定，求 $dif u$.
#ezexam.solution(show-number: false)[
*解法1* 设 $F(x,y,z)=x e^x-y e^y-z e^z$，则
$ F'_x=(x+1)e^x, quad F'_y=-(y+1)e^y, quad F'_z=-(z+1)e^z. $
故
$ (partial z)/(partial x)=-F'_x/F'_z=(x+1)/(z+1)e^(x-z), \
(partial z)/(partial y)=-F'_y/F'_z=-(y+1)/(z+1)e^(y-z), $
而
$ (partial u)/(partial x)=f'_x+f'_z (partial z)/(partial x)=f'_x+f'_z (x+1)/(z+1)e^(x-z), \
(partial u)/(partial y)=f'_y+f'_z (partial z)/(partial y)=f'_y-f'_z (y+1)/(z+1)e^(y-z), $
所以
$ dif u&=(partial u)/(partial x)dif x+(partial u)/(partial y)dif y \
&=(f'_x+f'_z (x+1)/(z+1)e^(x-z))dif x+(f'_y-f'_z (y+1)/(z+1)e^(y-z))dif y. $
*解法2* 在 $x e^x-y e^y=z e^z$ 两边微分，得
$ e^x dif x+x e^x dif x-e^y dif y-y e^y dif y=e^z dif z+z e^z dif z, $
故 $dif z=((1+x)e^x dif x-(1+y)e^y dif y)/((1+z)e^z)$.

由 $u=f(x,y,z)$，得 $dif u=f'_x dif x+f'_y dif y+f'_z dif z$，故
$ dif u=(f'_x+f'_z (x+1)/(z+1)e^(x-z))dif x+(f'_y-f'_z (y+1)/(z+1)e^(y-z))dif y. $
]


]

#ezexam.question(label: n => [五、])[
（本题满分6分）设 $f(sin^2 x)=x/(sin x)$，求 $integral sqrt(x)/sqrt(1-x) f(x) dif x$.
#ezexam.solution(show-number: false)[
*解* 令 $u=sin^2 x$，则有 $sin x=sqrt(u),x=arcsin sqrt(u)$，$f(x)=(arcsin sqrt(x))/sqrt(x)$.

于是
$ integral sqrt(x)/sqrt(1-x) f(x) dif x \
=integral (arcsin sqrt(x))/sqrt(1-x) dif x \
=-integral (arcsin sqrt(x))/sqrt(1-x) dif(1-x) \
=-2integral arcsin sqrt(x) dif sqrt(1-x) \
=-2sqrt(1-x)arcsin sqrt(x)+2integral sqrt(1-x)1/sqrt(1-x)dif sqrt(x) \
=-2sqrt(1-x)arcsin sqrt(x)+2sqrt(x)+C. $
]


]

#ezexam.question(label: n => [六、])[
（本题满分7分）设 $D_1$ 是由抛物线 $y=2x^2$ 和直线 $x=a,x=2$ 及 $y=0$ 所围成的平面区域；$D_2$ 是由抛物线 $y=2x^2$ 和直线 $y=0,x=a$ 所围成的平面区域，其中 $0<a<2$.

（1）试求 $D_1$ 绕 $x$ 轴旋转而成的旋转体体积 $V_1$；$D_2$ 绕 $y$ 轴旋转而成的旋转体体积 $V_2$；

（2）问当 $a$ 为何值时，$V_1+V_2$ 取得最大值？试求此最大值.
#ezexam.solution(show-number: false)[
*解* （1）
$ V_1=pi integral_a^2 (2x^2)^2 dif x=(4pi)/5 (32-a^5); \
V_2=pi a^2 dot 2a^2-pi integral_0^(2a^2) y/2 dif y=2pi a^4-pi a^4=pi a^4. $
#import "@preview/cetz:0.5.2"
#cetz.canvas({
 import cetz.draw: *
 set-style(stroke:.65pt)
 line((0,0),..range(0,41).map(i=>{let x=1.3*i/40;(x,.7*x*x)}),(1.3,0),close:true,fill:luma(80%))
 line((1.3,0),(1.3,.7*1.3*1.3),..range(1,41).map(i=>{let x=1.3+.7*i/40;(x,.7*x*x)}),(2,0),close:true,fill:luma(92%))
 line((-.3,0),(2.7,0),mark:(end:">"));line((0,-.3),(0,3.2),mark:(end:">"))
 content((2.7,0),$x$,anchor:"north");content((0,3.2),$y$,anchor:"east");content((0,0),$O$,anchor:"north-east")
 content((1.3,0),$a$,anchor:"north");content((2,0),[2],anchor:"north");content((2,2.8),$y=2x^2$,anchor:"west")
 content((.9,.25),$D_2$);content((1.65,.55),$D_1$)
})
（2）设 $V=V_1+V_2=(4pi)/5 (32-a^5)+pi a^4$.

由 $V'=4pi a^3(1-a)=0$，得区间 $(0,2)$ 内的唯一驻点 $a=1$.

当 $0<a<1$ 时，$V'>0$；当 $a>1$ 时，$V'<0$.因此 $a=1$ 是极大值点即最大值点.

此时 $V_1+V_2$ 取得最大值，等于 $129/5 pi$.
]


]

#ezexam.question(label: n => [七、])[
（本题满分7分）（1）验证函数 $y(x)=1+x^3/(3!)+x^6/(6!)+x^9/(9!)+dots+x^(3n)/((3n)!)+dots (-infinity<x<+infinity)$ 满足微分方程 $y''+y'+y=e^x$；

（2）利用（1）的结果求幂级数 $sum_(n=0)^infinity x^(3n)/((3n)!)$ 的和函数.
#ezexam.solution(show-number: false)[
*解* （1）因为
$ y(x)=1+x^3/(3!)+x^6/(6!)+x^9/(9!)+dots+x^(3n)/((3n)!)+dots, \
y'(x)=x^2/(2!)+x^5/(5!)+x^8/(8!)+dots+x^(3n-1)/((3n-1)!)+dots, \
y''(x)=x+x^4/(4!)+x^7/(7!)+dots+x^(3n-2)/((3n-2)!)+dots, $
所以 $y''+y'+y=e^x$.

（2）与 $y''+y'+y=e^x$ 相应的齐次微分方程为 $y''+y'+y=0$，其特征方程为 $lambda^2+lambda+1=0$，特征根为 $lambda_(1,2)=-1/2 plus.minus sqrt(3)/2 i$.因此齐次微分方程的通解为
$ Y=e^(-x/2)[C_1 cos(sqrt(3)/2 x)+C_2 sin(sqrt(3)/2 x)]. $
设非齐次微分方程的特解为 $y^*=A e^x$，将 $y^*$ 代入方程 $y''+y'+y=e^x$ 得 $A=1/3$，于是 $y^*=1/3 e^x$，方程通解为
$ y=Y+y^*=e^(-x/2)[C_1 cos(sqrt(3)/2 x)+C_2 sin(sqrt(3)/2 x)]+1/3 e^x. $
当 $x=0$ 时，有
$ cases(y(0)=1=C_1+1/3,y'(0)=0=-1/2 C_1+sqrt(3)/2 C_2+1/3). $
由此，得 $C_1=2/3,C_2=0$.

于是幂级数 $sum_(n=0)^infinity x^(3n)/((3n)!)$ 的和函数为
$ y(x)=2/3 e^(-x/2)cos(sqrt(3)/2 x)+1/3 e^x quad (-infinity<x<+infinity). $
]


]

#ezexam.question(label: n => [八、])[
（本题满分6分）设函数 $f(x),g(x)$ 在 $[a,b]$ 上连续，且 $g(x)>0$.利用闭区间上连续函数性质，证明存在一点 $xi in [a,b]$，使
$ integral_a^b f(x)g(x) dif x=f(xi)integral_a^b g(x) dif x. $
#ezexam.solution(show-number: false)[
*证明* 因为 $f(x),g(x)$ 在 $[a,b]$ 上连续，且 $g(x)>0$，由最值定理，知 $f(x)$ 在 $[a,b]$ 上有最大值 $M$ 和最小值 $m$，即 $m<=f(x)<=M$，故
$ m g(x)<=f(x)g(x)<=M g(x). \
integral_a^b m g(x) dif x<=integral_a^b f(x)g(x) dif x<=integral_a^b M g(x) dif x, \
m<=(integral_a^b f(x)g(x) dif x)/(integral_a^b g(x) dif x)<=M. $
由介值定理知，存在 $xi in [a,b]$，使
$ f(xi)=(integral_a^b f(x)g(x) dif x)/(integral_a^b g(x) dif x), $
即 $integral_a^b f(x)g(x) dif x=f(xi)integral_a^b g(x) dif x$.
]


]

#ezexam.question(label: n => [九、])[
（本题满分8分）设齐次线性方程组
$ cases(a x_1+b x_2+b x_3+dots+b x_n=0,b x_1+a x_2+b x_3+dots+b x_n=0,dots quad dots quad dots,b x_1+b x_2+b x_3+dots+a x_n=0), $
其中 $a!=0,b!=0,n>=2$.试讨论 $a,b$ 为何值时，方程组仅有零解、有无穷多组解？在有无穷多组解时，求出全部解，并用基础解系表示全部解.
#ezexam.solution(show-number: false)[
*解* 方程组的系数行列式
$ |A|=mat(delim:"|",a,b,b,dots,b;b,a,b,dots,b;b,b,a,dots,b;dots.v,dots.v,dots.v,,dots.v;b,b,b,dots,a)=[a+(n-1)b](a-b)^(n-1). $
（1）当 $a!=b$ 且 $a!=(1-n)b$ 时，方程组仅有零解.

（2）当 $a=b$ 时，对系数矩阵 $A$ 作行初等变换，有
$ A=mat(a,a,a,dots,a;a,a,a,dots,a;dots.v,dots.v,dots.v,,dots.v;a,a,a,dots,a)->mat(1,1,1,dots,1;0,0,0,dots,0;dots.v,dots.v,dots.v,,dots.v;0,0,0,dots,0). $
原方程组的同解方程组为 $x_1+x_2+dots+x_n=0$，其基础解系为
$ alpha_1=(-1,1,0,dots,0)^T, quad alpha_2=(-1,0,1,dots,0)^T,dots, \
alpha_(n-1)=(-1,0,0,dots,1)^T. $
方程组的全部解是 $x=c_1 alpha_1+c_2 alpha_2+dots+c_(n-1)alpha_(n-1)$（$c_1,c_2,dots,c_(n-1)$ 为任意常数）.

（3）当 $a=(1-n)b$ 时，对系数矩阵 $A$ 作行初等变换，有
$ A=mat((1-n)b,b,b,dots,b,b;b,(1-n)b,b,dots,b,b;b,b,(1-n)b,dots,b,b;dots.v,dots.v,dots.v,,dots.v,dots.v;b,b,b,dots,b,(1-n)b) \
->mat(1-n,1,1,dots,1,1;1,1-n,1,dots,1,1;1,1,1-n,dots,1,1;dots.v,dots.v,dots.v,,dots.v,dots.v;1,1,1,dots,1,1-n) \
->mat(1,0,0,dots,0,-1;0,1,0,dots,0,-1;0,0,1,dots,0,-1;dots.v,dots.v,dots.v,,dots.v,dots.v;0,0,0,dots,1,-1;0,0,0,dots,0,0). $
原方程组的同解方程组为
$ cases(x_1=x_n,x_2=x_n,dots quad dots,x_(n-1)=x_n). $
其基础解系为 $beta=(1,1,dots,1)^T$.

方程组的全部解是 $x=c beta$（$c$ 为任意常数）.
]


]

#ezexam.question(label: n => [十、])[
（本题满分8分）设 $A$ 为三阶实对称矩阵，且满足条件 $A^2+2A=O$，已知 $A$ 的秩 $r(A)=2$.

（1）求 $A$ 的全部特征值；

（2）当 $k$ 为何值时，矩阵 $A+k E$ 为正定矩阵，其中 $E$ 为三阶单位矩阵.
#ezexam.solution(show-number: false)[
*解法1* （1）设 $lambda$ 为 $A$ 的一个特征值，对应的特征向量为 $alpha$，则
$ A alpha=lambda alpha, (alpha!=0), quad A^2 alpha=lambda^2 alpha. $
于是 $(A^2+2A)alpha=(lambda^2+2lambda)alpha$.

由条件 $A^2+2A=O$ 推知 $(lambda^2+2lambda)alpha=0$.

又由于 $alpha!=0$，故有 $lambda^2+2lambda=0$，解得 $lambda=-2,lambda=0$.

因为实对称矩阵 $A$ 必可对角化，且 $r(A)=2$，所以
$ A~mat(-2,,;,-2,;,,0)=Lambda. $
因此，矩阵 $A$ 的全部特征值为 $lambda_1=lambda_2=-2,lambda_3=0$.

（2）矩阵 $A+k E$ 仍为实对称矩阵，由（1）知，$A+k E$ 的全部特征值为 $-2+k,-2+k,k$.

于是，当 $k>2$ 时，矩阵 $A+k E$ 的全部特征值大于零.因此，矩阵 $A+k E$ 为正定矩阵.

*解法2* （1）同解法1.

（2）实对称矩阵必可对角化，故存在可逆矩阵 $P$，使得 $P^(-1)A P=Lambda,A=P Lambda P^(-1)$.

于是
$ A+k E=P Lambda P^(-1)+k P P^(-1)=P(Lambda+k E)P^(-1), $
所以 $A+k E~Lambda+k E$.

而 $Lambda+k E=mat(k-2,,;,k-2,;,,k)$.

$A+k E$ 为正定矩阵，只需其顺序主子式均大于0，即 $k$ 需满足 $k-2>0,(k-2)^2>0,(k-2)^2 k>0$.

因此，当 $k>2$ 时，矩阵 $A+k E$ 为正定矩阵.
]


]

#ezexam.question(label: n => [十一、])[
（本题满分8分）假设随机变量 $U$ 在区间 $[-2,2]$ 上服从均匀分布，随机变量
$ X=cases(-1 & U<=-1,1 & U>-1), quad Y=cases(-1 & U<=1,1 & U>1), $
试求（1）$X$ 和 $Y$ 的联合概率分布；（2）$D(X+Y)$.
#ezexam.solution(show-number: false)[
*解* （1）随机向量 $(X,Y)$ 有四个可能值：$(-1,-1),(-1,1),(1,-1),(1,1)$.
$ P{X=-1,Y=-1}=P{U<=-1,U<=1}=1/4; \
P{X=-1,Y=1}=P{U<=-1,U>1}=0; \
P{X=1,Y=-1}=P{U>-1,U<=1}=1/2; \
P{X=1,Y=1}=P{U>-1,U>1}=1/4. $
于是，得 $X$ 和 $Y$ 的联合概率分布为
$ (X,Y)~mat((-1,-1),(-1,1),(1,-1),(1,1);1/4,0,1/2,1/4). $
（2）$X+Y$ 和 $(X+Y)^2$ 的概率分布相应为
$ X+Y~mat(-2,0,2;1/4,1/2,1/4), quad (X+Y)^2~mat(0,4;1/2,1/2). $
由此可见
$ E(X+Y)=-2/4+2/4=0; quad D(X+Y)=E(X+Y)^2=2. $
]


]

#ezexam.question(label: n => [十二、])[
（本题满分8分）假设一设备开机后无故障工作的时间 $X$ 服从指数分布，平均无故障工作的时间（$E X$）为5小时.设备定时开机，出现故障时自动关机，而在无故障的情况下工作2小时便关机.试求该设备每次开机无故障工作的时间 $Y$ 的分布函数 $F(y)$.
#ezexam.solution(show-number: false)[
*解* 设 $X$ 的分布参数为 $lambda$.由于 $E X=1/lambda=5$，可见 $lambda=1/5$.

显然，$Y=min{X,2}$.

对于 $y<0,F(y)=0$；对于 $y>=2,F(y)=1$.

设 $0<=y<2$，有
$ F(y)=P{Y<=y}=P{min{X,2}<=y}=P{X<=y}=1-e^(-y/5). $
于是，$Y$ 的分布函数为
$ F(y)=cases(0 & y<0,1-e^(-y/5) & 0<=y<2,1 & y>=2). $
]

]
