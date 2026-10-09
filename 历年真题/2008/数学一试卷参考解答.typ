#import "../template.typ": exam
#show: exam.with(year: 2008, subject: "一", title: "2008年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#ezexam.answer-state.update(true)


= 一、选择题：1—8小题，每小题4分，共32分. 在每小题给出的四个选项中，只有一项符合题目要求，把所选项前的字母填在题后的括号内.

#ezexam.question[
设函数 $f(x)=integral_0^(x^2) ln(2+t)dif t$，则 $f'(x)$ 的零点个数为（　）.
#choices([0], [1], [2], [3])
#ezexam.solution(show-number: false)[
B.
]
]

#ezexam.question[
函数 $f(x,y)=arctan(x/y)$ 在点 $(0,1)$ 处的梯度等于（　）.
#choices([$bold(i)$], [$-bold(i)$], [$bold(j)$], [$-bold(j)$])
#ezexam.solution(show-number: false)[
A.
]
]

#ezexam.question[
在下列微分方程中，以 $y=C_1 e^x+C_2 cos 2x+C_3 sin 2x$（$C_1,C_2,C_3$ 为任意常数）为通解的是（　）.
#choices([$y'''+y''-4y'-4y=0$], [$y'''+y''+4y'+4y=0$], [$y'''-y''-4y'+4y=0$], [$y'''-y''+4y'-4y=0$])
#ezexam.solution(show-number: false)[
D.
]
]

#ezexam.question[
设函数 $f(x)$ 在 $(-infinity,+infinity)$ 内单调有界，${x_n}$ 为数列，下列命题正确的是（　）.
#choices([若 ${x_n}$ 收敛，则 ${f(x_n)}$ 收敛], [若 ${x_n}$ 单调，则 ${f(x_n)}$ 收敛], [若 ${f(x_n)}$ 收敛，则 ${x_n}$ 收敛], [若 ${f(x_n)}$ 单调，则 ${x_n}$ 收敛])
#ezexam.solution(show-number: false)[
B.
]
]

#ezexam.question[
设 $A$ 为 $n$ 阶非零矩阵，$E$ 为 $n$ 阶单位矩阵.若 $A^3=O$，则（　）.
#choices([$E-A$ 不可逆，$E+A$ 不可逆], [$E-A$ 不可逆，$E+A$ 可逆], [$E-A$ 可逆，$E+A$ 可逆], [$E-A$ 可逆，$E+A$ 不可逆])
#ezexam.solution(show-number: false)[
C.
]
]

#ezexam.question[
设 $A$ 为3阶实对称矩阵，如果二次曲面方程
$ (x,y,z)A mat(x;y;z)=1 $
在正交变换下的标准方程的图形如下图所示，则 $A$ 的正特征值的个数为（　）.
#import "@preview/cetz:0.5.2": canvas, draw
#canvas({
 import draw: *
 line((-3.1,0),(3.1,0),mark:(end:"stealth"))
 line((0,-1.7),(0,1.9),mark:(end:"stealth"))
 line((-1.8,-1.4),(1.5,1.3),mark:(end:"stealth"))
 for s in (-1,1) {
  bezier((s*2.3,1.25),(s*0.85,0),(s*1.5,1.15),(s*0.85,0.4))
  bezier((s*0.85,0),(s*2.3,-1.25),(s*0.85,-0.4),(s*1.5,-1.15))
  bezier((s*2.3,-1.25),(s*2.3,1.25),(s*2.85,-0.95),(s*2.85,0.95))
  bezier((s*2.3,1.25),(s*2.3,-1.25),(s*1.8,0.95),(s*1.8,-0.95),stroke:(dash:"dashed"))
  line((s*2.3,-1.25),(s*2.3,1.25),stroke:(dash:"dashed"))
 }
 content((3.1,0.15),$x'$);content((0.2,1.9),$z'$);content((1.5,1.5),$y'$);content((0.2,-0.2),$O$)
})
#choices([0], [1], [2], [3])
#ezexam.solution(show-number: false)[
B.
]
]

#ezexam.question[
设随机变量 $X,Y$ 独立同分布，且 $X$ 的分布函数为 $F(x)$，则 $Z=max{X,Y}$ 的分布函数为（　）.
#choices([$F^2(x)$], [$F(x)F(y)$], [$1-[1-F(x)]^2$], [$[1-F(x)][1-F(y)]$])
#ezexam.solution(show-number: false)[
A.
]
]

#ezexam.question[
设随机变量 $X tilde N(0,1)$，$Y tilde N(1,4)$，相关系数 $rho_(X Y)=1$，则（　）.
#choices([$P{Y=-2X-1}=1$], [$P{Y=2X-1}=1$], [$P{Y=-2X+1}=1$], [$P{Y=2X+1}=1$])
#ezexam.solution(show-number: false)[
D.
]
]

= 二、填空题：9—14小题，每小题4分，共24分. 把答案填在题中横线上.

#ezexam.question[
微分方程 $x y'+y=0$ 满足条件 $y(1)=1$ 的解是 $y=$#h(2cm).
#ezexam.solution(show-number: false)[
$1/x$.
]
]

#ezexam.question[
曲线 $sin(x y)+ln(y-x)=x$ 在点 $(0,1)$ 处的切线方程是#h(2cm).
#ezexam.solution(show-number: false)[
$y=x+1$.
]
]

#ezexam.question[
已知幂级数 $sum_(n=0)^infinity a_n(x+2)^n$ 在 $x=0$ 处收敛，在 $x=-4$ 处发散，则幂级数 $sum_(n=0)^infinity a_n(x-3)^n$ 的收敛域为#h(2cm).
#ezexam.solution(show-number: false)[
$(1,5]$.
]
]

#ezexam.question[
设曲面 $Sigma$ 是 $z=sqrt(4-x^2-y^2)$ 的上侧，则 $integral.double_Sigma x y dif y dif z+x dif z dif x+x^2 dif x dif y=$#h(2cm).
#ezexam.solution(show-number: false)[
$4pi$.
]
]

#ezexam.question[
设 $A$ 为2阶矩阵，$alpha_1,alpha_2$ 为线性无关的2维列向量，$A alpha_1=0$，$A alpha_2=2alpha_1+alpha_2$，则 $A$ 的非零特征值为#h(2cm).
#ezexam.solution(show-number: false)[
1.
]
]

#ezexam.question[
设随机变量 $X$ 服从参数为1的泊松分布，则 $P{X=E X^2}=$#h(2cm).
#ezexam.solution(show-number: false)[
$1/(2e)$.
]
]

= 三、解答题：15—23小题，共94分. 解答应写出文字说明、证明过程或演算步骤.

#ezexam.question[
（本题满分9分）
求极限 $lim_(x->0) ([sin x-sin(sin x)]sin x)/x^4$.
#ezexam.solution(show-number: false)[
解　$ lim_(x->0) ([sin x-sin(sin x)]sin x)/x^4 \
=lim_(x->0) (sin x-sin(sin x))/x^3 \
=lim_(x->0) (cos x-cos(sin x)cos x)/(3x^2) \
=lim_(x->0) (1-cos(sin x))/(3x^2) \
=lim_(x->0) ((1/2)sin^2 x)/(3x^2)=1/6. $
]
]

#ezexam.question[
（本题满分9分）
计算曲线积分 $integral_L sin 2x dif x+2(x^2-1)y dif y$，其中 $L$ 是曲线 $y=sin x$ 上从点 $(0,0)$ 到点 $(pi,0)$ 的一段.
#ezexam.solution(show-number: false)[
解法1　$ integral_L sin 2x dif x+2(x^2-1)y dif y \
=integral_0^pi [sin 2x+2(x^2-1)sin x dot cos x]dif x \
=integral_0^pi x^2 sin 2x dif x \
=lr.|-x^2/2 cos 2x|_0^pi+integral_0^pi x cos 2x dif x \
=-pi^2/2+lr.|x/2 sin 2x|_0^pi-1/2 integral_0^pi sin 2x dif x=-pi^2/2. $
解法2　取 $L_1$ 为 $x$ 轴上从点 $(pi,0)$ 到点 $(0,0)$ 的一段，$D$ 是由 $L$ 与 $L_1$ 围成的区域.
$ integral_L sin 2x dif x+2(x^2-1)y dif y \
=integral_(L+L_1) sin 2x dif x+2(x^2-1)y dif y-integral_(L_1) sin 2x dif x+2(x^2-1)y dif y \
=-integral.double_D 4x y dif x dif y-integral_pi^0 sin 2x dif x \
=-integral_0^pi dif x integral_0^(sin x) 4x y dif y-lr.|-1/2 cos 2x|_pi^0 \
=-integral_0^pi 2x sin^2 x dif x \
=-integral_0^pi x(1-cos 2x)dif x \
=lr.|-x^2/2|_0^pi+lr.|x/2 sin 2x|_0^pi-1/2 integral_0^pi sin 2x dif x=-pi^2/2. $
]
]

#ezexam.question[
（本题满分11分）
已知曲线 $C: cases(x^2+y^2-2z^2=0, x+y+3z=5)$，求 $C$ 上距离 $x O y$ 面最远的点和最近的点.
#ezexam.solution(show-number: false)[
解　点 $(x,y,z)$ 到 $x O y$ 面的距离为 $abs(z)$，故求 $C$ 上距离 $x O y$ 面最远点和最近点的坐标，等价于求函数 $H=z^2$ 在条件 $x^2+y^2-2z^2=0$ 与 $x+y+3z=5$ 下的最大值点和最小值点.

令 $L(x,y,z,lambda,mu)=z^2+lambda(x^2+y^2-2z^2)+mu(x+y+3z-5)$.由
$ cases(L'_x=2lambda x+mu=0, L'_y=2lambda y+mu=0, L'_z=2z-4lambda z+3mu=0, x^2+y^2-2z^2=0, x+y+3z=5) $
得 $x=y$，从而
$ cases(2x^2-2z^2=0, 2x+3z=5), $
解得
$ cases(x=-5,y=-5,z=5), quad "或" quad cases(x=1,y=1,z=1). $
根据几何意义，曲线 $C$ 上存在距离 $x O y$ 面最远的点和最近的点，故所求点依次为 $(-5,-5,5)$ 和 $(1,1,1)$.
]
]

#ezexam.question[
（本题满分10分）
设 $f(x)$ 是连续函数，

（Ⅰ）利用定义证明函数 $F(x)=integral_0^x f(t)dif t$ 可导，且 $F'(x)=f(x)$；

（Ⅱ）当 $f(x)$ 是以2为周期的周期函数时，证明函数 $G(x)=2integral_0^x f(t)dif t-x integral_0^2 f(t)dif t$ 也是以2为周期的周期函数.
#ezexam.solution(show-number: false)[
（Ⅰ）证　对任意的 $x$，由于 $f$ 是连续函数，所以
$ lim_(Delta x->0) (F(x+Delta x)-F(x))/(Delta x) \
=lim_(Delta x->0) (integral_0^(x+Delta x) f(t)dif t-integral_0^x f(t)dif t)/(Delta x) \
=lim_(Delta x->0) (integral_x^(x+Delta x) f(t)dif t)/(Delta x) \
=lim_(Delta x->0) (f(xi)Delta x)/(Delta x)=lim_(Delta x->0) f(xi), $
其中 $xi$ 介于 $x$ 与 $x+Delta x$ 之间.

由 $lim_(Delta x->0) f(xi)=f(x)$，可知函数 $F(x)$ 在 $x$ 处可导，且 $F'(x)=f(x)$.

（Ⅱ）证法1　要证明 $G(x)$ 以2为周期，即要证明对任意的 $x$，都有 $G(x+2)=G(x)$.

记 $H(x)=G(x+2)-G(x)$，则
$ H'(x)=(2integral_0^(x+2) f(t)dif t-(x+2)integral_0^2 f(t)dif t)'-(2integral_0^x f(t)dif t-x integral_0^2 f(t)dif t)' \
=2f(x+2)-integral_0^2 f(t)dif t-2f(x)+integral_0^2 f(t)dif t=0, $
又因为
$ H(0)=G(2)-G(0)=(2integral_0^2 f(t)dif t-2integral_0^2 f(t)dif t)-0=0, $
所以 $H(x)=0$，即 $G(x+2)=G(x)$.

证法2　由于 $f$ 是以2为周期的连续函数，所以对任意的 $x$，有
$ G(x+2)-G(x)=2integral_0^(x+2) f(t)dif t-(x+2)integral_0^2 f(t)dif t-2integral_0^x f(t)dif t+x integral_0^2 f(t)dif t \
=2[integral_0^2 f(t)dif t+integral_2^(x+2) f(t)dif t-integral_0^2 f(t)dif t-integral_0^x f(t)dif t] \
=2[integral_0^x f(u+2)dif u-integral_0^x f(t)dif t] \
=2integral_0^x [f(t+2)-f(t)]dif t=0, $
即 $G(x)$ 是以2为周期的周期函数.
]
]

#ezexam.question[
（本题满分11分）
将函数 $f(x)=1-x^2$（$0<=x<=pi$）展开成余弦级数，并求级数 $sum_(n=1)^infinity (-1)^(n-1)/n^2$ 的和.
#ezexam.solution(show-number: false)[
解　由于
$ a_0=2/pi integral_0^pi (1-x^2)dif x=2-(2pi^2)/3, $
$ a_n=2/pi integral_0^pi (1-x^2)cos n x dif x=4/n^2 (-1)^(n+1), quad n=1,2,dots, $
所以
$ f(x)=a_0/2+sum_(n=1)^infinity a_n cos n x \
=1-pi^2/3+4sum_(n=1)^infinity (-1)^(n+1)/n^2 cos n x, quad 0<=x<=pi. $
令 $x=0$，有
$ f(0)=1-pi^2/3+4sum_(n=1)^infinity (-1)^(n+1)/n^2, $
又 $f(0)=1$，所以
$ sum_(n=1)^infinity (-1)^(n-1)/n^2=pi^2/12. $
]
]

#ezexam.question[
（本题满分10分）
设 $alpha,beta$ 为3维列向量，矩阵 $A=alpha alpha^T+beta beta^T$，其中 $alpha^T,beta^T$ 分别是 $alpha,beta$ 的转置.证明：

（Ⅰ）秩 $r(A)<=2$；

（Ⅱ）若 $alpha,beta$ 线性相关，则秩 $r(A)<2$.
#ezexam.solution(show-number: false)[
证　（Ⅰ）$ r(A)=r(alpha alpha^T+beta beta^T) \
<=r(alpha alpha^T)+r(beta beta^T) \
<=r(alpha)+r(beta)<=2. $
（Ⅱ）由于 $alpha,beta$ 线性相关，不妨设 $alpha=k beta$，于是
$ r(A)=r(alpha alpha^T+beta beta^T)=r((1+k^2)beta beta^T)<=r(beta)<=1<2. $
]
]

#ezexam.question[
（本题满分12分）
设 $n$ 元线性方程组 $A bold(x)=bold(b)$，其中
$ A=mat(2a,1,,,;a^2,2a,1,,;,a^2,2a,1,;,,dots.down,dots.down,dots.down;,,,a^2,2a,1;,,,,a^2,2a)_(n times n), quad bold(x)=mat(x_1;x_2; dots.v;x_n), quad bold(b)=mat(1;0; dots.v;0). $
（Ⅰ）证明行列式 $abs(A)=(n+1)a^n$；

（Ⅱ）当 $a$ 为何值时，该方程组有唯一解，并求 $x_1$；

（Ⅲ）当 $a$ 为何值时，该方程组有无穷多解，并求通解.
#ezexam.solution(show-number: false)[
（Ⅰ）证法1　记
$ D_n=abs(A)=mat(delim:"|",2a,1,,,;a^2,2a,1,,;,a^2,2a,1,;,,dots.down,dots.down,dots.down;,,,a^2,2a,1;,,,,a^2,2a)_n, $
以下用数学归纳法证明 $D_n=(n+1)a^n$.

当 $n=1$ 时，$D_1=2a$，结论成立.

当 $n=2$ 时，$D_2=mat(delim:"|",2a,1;a^2,2a)=3a^2$，结论成立.

假设结论对小于 $n$ 的情况成立.将 $D_n$ 按第1行展开，得
$ D_n=2a D_(n-1)-mat(delim:"|",a^2,1,,,;0,2a,1,,;,a^2,2a,1,;,,dots.down,dots.down,dots.down;,,,a^2,2a,1;,,,,a^2,2a)_(n-1) \
=2a D_(n-1)-a^2 D_(n-2) \
=2a n a^(n-1)-a^2(n-1)a^(n-2)=(n+1)a^n, $
故 $abs(A)=(n+1)a^n$.

证法2
$ abs(A)=mat(delim:"|",2a,1,,,;a^2,2a,1,,;,a^2,2a,1,;,,dots.down,dots.down,dots.down;,,,a^2,2a,1;,,,,a^2,2a)_n $
$ arrow.r.long^(r_2-1/2 a r_1) mat(delim:"|",2a,1,,,;0,3/2 a,1,,;,a^2,2a,1,;,,dots.down,dots.down,dots.down;,,,a^2,2a,1;,,,,a^2,2a)_n $
$ arrow.r.long^(r_3-2/3 a r_2) mat(delim:"|",2a,1,,,;0,3/2 a,1,,;,0,4/3 a,1,;,,dots.down,dots.down,dots.down;,,,a^2,2a,1;,,,,a^2,2a)_n=dots $
$ arrow.r.long^(r_n-(n-1)/n a r_(n-1)) mat(delim:"|",2a,1,,,;0,3/2 a,1,,;,0,4/3 a,1,;,,dots.down,dots.down,dots.down;,,,0,n/(n-1) a,1;,,,,0,(n+1)/n a)_n=(n+1)a^n. $
（Ⅱ）解　当 $a!=0$ 时，方程组系数行列式 $D_n!=0$，故方程组有唯一解.由克莱姆法则，将 $D_n$ 的第1列换成 $bold(b)$，得行列式为
$ mat(delim:"|",1,1,,,;0,2a,1,,;,a^2,2a,1,;,,dots.down,dots.down,dots.down;,,,a^2,2a,1;,,,,a^2,2a)_n \
=mat(delim:"|",2a,1,,,;a^2,2a,1,,;,a^2,2a,1,;,,dots.down,dots.down,dots.down;,,,a^2,2a,1;,,,,a^2,2a)_(n-1) \
=D_(n-1) \
=n a^(n-1), $
所以
$ x_1=D_(n-1)/D_n=n/((n+1)a). $
（Ⅲ）解　当 $a=0$ 时，方程组为
$ mat(0,1,,,;,0,1,,;,,dots.down,dots.down,;,,,0,1;,,,,0)mat(x_1;x_2;dots.v;x_(n-1);x_n)=mat(1;0;dots.v;0;0), $
此时方程组系数矩阵的秩和增广矩阵的秩均为 $n-1$，所以方程组有无穷多解.其通解为
$ bold(x)=(0,1,0,dots,0)^T+k(1,0,0,dots,0)^T, $
其中 $k$ 为任意常数.
]
]

#ezexam.question[
（本题满分11分）
设随机变量 $X$ 与 $Y$ 相互独立，$X$ 的概率分布为 $P{X=i}=1/3$（$i=-1,0,1$），$Y$ 的概率密度为 $f_Y(y)=cases(1 & 0<=y<1,0 & "其他")$.记 $Z=X+Y$.

（Ⅰ）求 $P{Z<=1/2 bar X=0}$；

（Ⅱ）求 $Z$ 的概率密度 $f_Z(z)$.
#ezexam.solution(show-number: false)[
解　（Ⅰ）
$ P{Z<=1/2 bar X=0}=(P{X=0,Z<=1/2})/(P{X=0})=(P{X=0,Y<=1/2})/(P{X=0})=P{Y<=1/2}=1/2. $
（Ⅱ）$ F_Z(z)=P{Z<=z}=P{X+Y<=z} \
=P{X+Y<=z,X=-1}+P{X+Y<=z,X=0}+P{X+Y<=z,X=1} \
=P{Y<=z+1,X=-1}+P{Y<=z,X=0}+P{Y<=z-1,X=1} \
=P{Y<=z+1}P{X=-1}+P{Y<=z}P{X=0}+P{Y<=z-1}P{X=1} \
=1/3 [P{Y<=z+1}+P{Y<=z}+P{Y<=z-1}] \
=1/3 [F_Y(z+1)+F_Y(z)+F_Y(z-1)], $
$ f_Z(z)=F'_Z(z)=1/3 [f_Y(z+1)+f_Y(z)+f_Y(z-1)]=cases(1/3 & -1<=z<2,0 & "其他"). $
]
]

#ezexam.question[
（本题满分11分）
设 $X_1,X_2,dots,X_n$ 是总体 $N(mu,sigma^2)$ 的简单随机样本.记
$ overline(X)=1/n sum_(i=1)^n X_i, quad S^2=1/(n-1)sum_(i=1)^n (X_i-overline(X))^2, quad T=overline(X)^2-1/n S^2. $
（Ⅰ）证明 $T$ 是 $mu^2$ 的无偏估计量；

（Ⅱ）当 $mu=0$，$sigma=1$ 时，求 $D T$.
#ezexam.solution(show-number: false)[
（Ⅰ）证　因为
$ E T=E(overline(X)^2-1/n S^2)=E overline(X)^2-1/n E S^2 \
=(E overline(X))^2+D overline(X)-1/n E S^2 \
=mu^2+sigma^2/n-sigma^2/n=mu^2, $
所以 $T$ 是 $mu^2$ 的无偏估计量.

（Ⅱ）解　当 $mu=0$，$sigma=1$ 时，有
$ D T=D(overline(X)^2-1/n S^2) quad ("注意" overline(X) "与" S^2 "独立") $
$ =D overline(X)^2+1/n^2 D S^2 \
=1/n^2 D(sqrt(n)overline(X))^2+1/n^2 dot 1/(n-1)^2 D[(n-1)S^2] \
=1/n^2 dot 2+1/n^2 dot 1/(n-1)^2 dot 2(n-1) \
=2/n^2 dot (1+1/(n-1))=2/(n(n-1)). $
]
]

