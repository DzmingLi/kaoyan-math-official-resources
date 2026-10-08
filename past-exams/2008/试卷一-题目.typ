#import "../template.typ": exam
#show: exam.with(year: 2008, subject: "一", title: "2008年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#ezexam.answer-state.update(false)


= 一、选择题：1—8小题，每小题4分，共32分.在每小题给出的四个选项中，只有一项符合题目要求，把所选项前的字母填在题后的括号内.

#ezexam.question[
设函数 $f(x)=integral_0^(x^2) ln(2+t)dif t$，则 $f'(x)$ 的零点个数为（　）.
#choices([0], [1], [2], [3])
]

#ezexam.question[
函数 $f(x,y)=arctan(x/y)$ 在点 $(0,1)$ 处的梯度等于（　）.
#choices([$bold(i)$], [$-bold(i)$], [$bold(j)$], [$-bold(j)$])
]

#ezexam.question[
在下列微分方程中，以 $y=C_1 e^x+C_2 cos 2x+C_3 sin 2x$（$C_1,C_2,C_3$ 为任意常数）为通解的是（　）.
#choices([$y'''+y''-4y'-4y=0$], [$y'''+y''+4y'+4y=0$], [$y'''-y''-4y'+4y=0$], [$y'''-y''+4y'-4y=0$])
]

#ezexam.question[
设函数 $f(x)$ 在 $(-infinity,+infinity)$ 内单调有界，${x_n}$ 为数列，下列命题正确的是（　）.
#choices([若 ${x_n}$ 收敛，则 ${f(x_n)}$ 收敛], [若 ${x_n}$ 单调，则 ${f(x_n)}$ 收敛], [若 ${f(x_n)}$ 收敛，则 ${x_n}$ 收敛], [若 ${f(x_n)}$ 单调，则 ${x_n}$ 收敛])
]

#ezexam.question[
设 $A$ 为 $n$ 阶非零矩阵，$E$ 为 $n$ 阶单位矩阵.若 $A^3=O$，则（　）.
#choices([$E-A$ 不可逆，$E+A$ 不可逆], [$E-A$ 不可逆，$E+A$ 可逆], [$E-A$ 可逆，$E+A$ 可逆], [$E-A$ 可逆，$E+A$ 不可逆])
]

#ezexam.question[
设 $A$ 为3阶实对称矩阵，如果二次曲面方程
$ (x,y,z)A mat(x;y;z)=1 $
在正交变换下的标准方程的图形如下图所示，则 $A$ 的正特征值的个数为（　）.
#import "@preview/cetz:0.3.4": canvas, draw
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
]

#ezexam.question[
设随机变量 $X,Y$ 独立同分布，且 $X$ 的分布函数为 $F(x)$，则 $Z=max{X,Y}$ 的分布函数为（　）.
#choices([$F^2(x)$], [$F(x)F(y)$], [$1-[1-F(x)]^2$], [$[1-F(x)][1-F(y)]$])
]

#ezexam.question[
设随机变量 $X tilde N(0,1)$，$Y tilde N(1,4)$，相关系数 $rho_(X Y)=1$，则（　）.
#choices([$P{Y=-2X-1}=1$], [$P{Y=2X-1}=1$], [$P{Y=-2X+1}=1$], [$P{Y=2X+1}=1$])
]

= 二、填空题：9—14小题，每小题4分，共24分.把答案填在题中横线上.

#ezexam.question[
微分方程 $x y'+y=0$ 满足条件 $y(1)=1$ 的解是 $y=$#h(2cm).
]

#ezexam.question[
曲线 $sin(x y)+ln(y-x)=x$ 在点 $(0,1)$ 处的切线方程是#h(2cm).
]

#ezexam.question[
已知幂级数 $sum_(n=0)^infinity a_n(x+2)^n$ 在 $x=0$ 处收敛，在 $x=-4$ 处发散，则幂级数 $sum_(n=0)^infinity a_n(x-3)^n$ 的收敛域为#h(2cm).
]

#ezexam.question[
设曲面 $Sigma$ 是 $z=sqrt(4-x^2-y^2)$ 的上侧，则 $integral.double_Sigma x y dif y dif z+x dif z dif x+x^2 dif x dif y=$#h(2cm).
]

#ezexam.question[
设 $A$ 为2阶矩阵，$alpha_1,alpha_2$ 为线性无关的2维列向量，$A alpha_1=0$，$A alpha_2=2alpha_1+alpha_2$，则 $A$ 的非零特征值为#h(2cm).
]

#ezexam.question[
设随机变量 $X$ 服从参数为1的泊松分布，则 $P{X=E X^2}=$#h(2cm).
]

= 三、解答题：15—23小题，共94分.解答应写出文字说明、证明过程或演算步骤.

#ezexam.question[
（本题满分9分）
求极限 $lim_(x->0) ([sin x-sin(sin x)]sin x)/x^4$.
]

#ezexam.question[
（本题满分9分）
计算曲线积分 $integral_L sin 2x dif x+2(x^2-1)y dif y$，其中 $L$ 是曲线 $y=sin x$ 上从点 $(0,0)$ 到点 $(pi,0)$ 的一段.
]

#ezexam.question[
（本题满分11分）
已知曲线 $C: cases(x^2+y^2-2z^2=0, x+y+3z=5)$，求 $C$ 上距离 $x O y$ 面最远的点和最近的点.
]

#ezexam.question[
（本题满分10分）
设 $f(x)$ 是连续函数，

（Ⅰ）利用定义证明函数 $F(x)=integral_0^x f(t)dif t$ 可导，且 $F'(x)=f(x)$；

（Ⅱ）当 $f(x)$ 是以2为周期的周期函数时，证明函数 $G(x)=2integral_0^x f(t)dif t-x integral_0^2 f(t)dif t$ 也是以2为周期的周期函数.
]

#ezexam.question[
（本题满分11分）
将函数 $f(x)=1-x^2$（$0<=x<=pi$）展开成余弦级数，并求级数 $sum_(n=1)^infinity (-1)^(n-1)/n^2$ 的和.
]

#ezexam.question[
（本题满分10分）
设 $alpha,beta$ 为3维列向量，矩阵 $A=alpha alpha^T+beta beta^T$，其中 $alpha^T,beta^T$ 分别是 $alpha,beta$ 的转置.证明：

（Ⅰ）秩 $r(A)<=2$；

（Ⅱ）若 $alpha,beta$ 线性相关，则秩 $r(A)<2$.
]

#ezexam.question[
（本题满分12分）
设 $n$ 元线性方程组 $A bold(x)=bold(b)$，其中
$ A=mat(2a,1,,,;a^2,2a,1,,;,a^2,2a,1,;,,dots.down,dots.down,dots.down;,,,a^2,2a,1;,,,,a^2,2a)_(n times n), quad bold(x)=mat(x_1;x_2; dots.v;x_n), quad bold(b)=mat(1;0; dots.v;0). $
（Ⅰ）证明行列式 $abs(A)=(n+1)a^n$；

（Ⅱ）当 $a$ 为何值时，该方程组有唯一解，并求 $x_1$；

（Ⅲ）当 $a$ 为何值时，该方程组有无穷多解，并求通解.
]

#ezexam.question[
（本题满分11分）
设随机变量 $X$ 与 $Y$ 相互独立，$X$ 的概率分布为 $P{X=i}=1/3$（$i=-1,0,1$），$Y$ 的概率密度为 $f_Y(y)=cases(1 & 0<=y<1,0 & "其他")$.记 $Z=X+Y$.

（Ⅰ）求 $P{Z<=1/2 bar X=0}$；

（Ⅱ）求 $Z$ 的概率密度 $f_Z(z)$.
]

#ezexam.question[
（本题满分11分）
设 $X_1,X_2,dots,X_n$ 是总体 $N(mu,sigma^2)$ 的简单随机样本.记
$ overline(X)=1/n sum_(i=1)^n X_i, quad S^2=1/(n-1)sum_(i=1)^n (X_i-overline(X))^2, quad T=overline(X)^2-1/n S^2. $
（Ⅰ）证明 $T$ 是 $mu^2$ 的无偏估计量；

（Ⅱ）当 $mu=0$，$sigma=1$ 时，求 $D T$.
]

