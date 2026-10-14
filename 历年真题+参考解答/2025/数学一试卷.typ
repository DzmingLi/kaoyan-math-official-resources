#import "../template.typ": exam
#show: exam.with(year: 2025, subject: "一")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices.with(r-gap: 1.3em)
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)


= 一、选择题：第1—10小题，每小题5分，共50分. 下列每小题给出的四个选项中，只有一个选项是最符合题目要求的.

#ezexam.question[
已知函数 $f(x)=integral_0^x e^(t^2) sin t dif t$，$g(x)=integral_0^x e^(t^2) dif t dot sin^2 x$，则（　）.
#choices([$x=0$ 是 $f(x)$ 的极值点，也是 $g(x)$ 的极值点.],[$x=0$ 是 $f(x)$ 的极值点，$(0,0)$ 是曲线 $y=g(x)$ 的拐点.],[$x=0$ 是 $g(x)$ 的极值点，$(0,0)$ 是曲线 $y=f(x)$ 的拐点.],[$(0,0)$ 是曲线 $y=f(x)$ 的拐点，也是曲线 $y=g(x)$ 的拐点.])
]

#ezexam.question[
已知级数：① $sum_(n=1)^infinity sin ((n^3 pi)/(n^2+1))$；② $sum_(n=1)^infinity (-1)^n (1/root(3,n^2)-tan(1/root(3,n^2)))$，则（　）.
#choices([①与②均条件收敛.],[①条件收敛，②绝对收敛.],[①绝对收敛，②条件收敛.],[①与②均绝对收敛.])
]

#ezexam.question[
设函数 $f(x)$ 在区间 $[0,+infinity)$ 上可导，则（　）.
#choices([当 $lim_(x->+infinity) f(x)$ 存在时，$lim_(x->+infinity) f'(x)$ 存在.],[当 $lim_(x->+infinity) f'(x)$ 存在时，$lim_(x->+infinity) f(x)$ 存在.],[当 $lim_(x->+infinity) (integral_0^x f(t) dif t)/x$ 存在时，$lim_(x->+infinity) f(x)$ 存在.],[当 $lim_(x->+infinity) f(x)$ 存在时，$lim_(x->+infinity) (integral_0^x f(t) dif t)/x$ 存在.])
]

#ezexam.question[
设函数 $f(x,y)$ 连续，则 $integral_(-2)^2 dif x integral_(4-x^2)^4 f(x,y) dif y=$（　）.
#choices([$integral_0^4 [integral_(-2)^(-sqrt(4-y)) f(x,y) dif x+integral_(sqrt(4-y))^2 f(x,y) dif x] dif y$],[$integral_0^4 [integral_(-2)^(sqrt(4-y)) f(x,y) dif x+integral_(-sqrt(4-y))^2 f(x,y) dif x] dif y$],[$integral_0^4 [integral_(-2)^(-sqrt(4-y)) f(x,y) dif x+integral_2^(sqrt(4-y)) f(x,y) dif x] dif y$],[$2integral_0^4 dif y integral_(sqrt(4-y))^2 f(x,y) dif x$])
]

#ezexam.question[
二次型 $f(x_1,x_2,x_3)=x_1^2+2x_1 x_2+2x_1 x_3$ 的正惯性指数为（　）.
#choices([0.],[1.],[2.],[3.])
]

#ezexam.question[
设 $bold(alpha)_1,bold(alpha)_2,bold(alpha)_3,bold(alpha)_4$ 是 $n$ 维列向量，$bold(alpha)_1,bold(alpha)_2$ 线性无关，$bold(alpha)_1,bold(alpha)_2,bold(alpha)_3$ 线性相关，且 $bold(alpha)_1+bold(alpha)_2+bold(alpha)_4=bold(0)$.在空间直角坐标系 $O-x y z$ 中，关于 $x,y,z$ 的方程组 $x bold(alpha)_1+y bold(alpha)_2+z bold(alpha)_3=bold(alpha)_4$ 的几何图形是（　）.
#choices([过原点的一个平面.],[过原点的一条直线.],[不过原点的一个平面.],[不过原点的一条直线.])
]

#ezexam.question[
设 $n$ 阶矩阵 $A,B,C$ 满足 $r(A)+r(B)+r(C)=r(A B C)+2n$，给出下列四个结论：

① $r(A B C)+n=r(A B)+r(C)$；② $r(A B)+n=r(A)+r(B)$；

③ $r(A)=r(B)=r(C)=n$；④ $r(A B)=r(B C)=n$.

其中正确结论的序号是（　）.
#choices([①②.],[①③.],[②④.],[③④.])
]

#ezexam.question[
设二维随机变量 $(X,Y)$ 服从正态分布 $N(0,0;1,1;rho)$，其中 $rho in (-1,1)$.若 $a,b$ 为满足 $a^2+b^2=1$ 的任意实数，则 $D(a X+b Y)$ 的最大值为（　）.
#choices([$1$.],[$2$.],[$1+abs(rho)$.],[$1+rho^2$.])
]

#ezexam.question[
设 $X_1,X_2,dots,X_20$ 是来自总体 $B(1,0.1)$ 的简单随机样本.令 $T=sum_(i=1)^20 X_i$，利用泊松分布近似表示二项分布的方法可得 $P{T<=1} approx$（　）.
#choices([$1/e^2$],[$2/e^2$],[$3/e^2$],[$4/e^2$])
]

#ezexam.question[
设 $X_1,X_2,dots,X_n$ 为来自正态总体 $N(mu,2)$ 的简单随机样本，记 $overline(X)=1/n sum_(i=1)^n X_i$，$z_alpha$ 表示标准正态分布的上侧 $alpha$ 分位数.假设检验问题：$H_0:mu<=1,H_1:mu>1$ 的显著性水平为 $alpha$ 的检验的拒绝域为（　）.
#choices([${(X_1,X_2,dots,X_n) bar.v overline(X)>1+2/n z_alpha}$], [${(X_1,X_2,dots,X_n) bar.v overline(X)>1+sqrt(2)/n z_alpha}$], [${(X_1,X_2,dots,X_n) bar.v overline(X)>1+2/sqrt(n) z_alpha}$], [${(X_1,X_2,dots,X_n) bar.v overline(X)>1+sqrt(2/n) z_alpha}$])
]

= 二、填空题：第11—16小题，每小题5分，共30分.

#ezexam.question[
$lim_(x->0^+) (x^x-1)/(ln x dot ln(1-x))=$#fillin(len: 2.97656em)[].
]

#ezexam.question[
已知函数 $f(x)=cases(0&0<=x<1/2,x^2&1/2<=x<=1)$ 的傅里叶级数为 $sum_(n=1)^infinity b_n sin n pi x$，$S(x)$ 为 $sum_(n=1)^infinity b_n sin n pi x$ 的和函数，则 $S(-7/2)=$#fillin(len: 2.97656em)[].
]

#ezexam.question[
已知函数 $u(x,y,z)=x y^2 z^3$，向量 $bold(n)=(2,2,-1)$，则 $(partial u)/(partial bold(n))|_((1,1,1))=$#fillin(len: 2.97656em)[].
]

#ezexam.question[
已知有向曲线 $L$ 是沿抛物线 $y=1-x^2$ 从点 $(1,0)$ 到点 $(-1,0)$ 的一段，则曲线积分 $integral_L (y+cos x) dif x+(2x+cos y) dif y=$#fillin(len: 2.97656em)[].
]

#ezexam.question[
设矩阵 $A=mat(delim:"[",4,2,-3;a,3,-4;b,5,-7)$.若方程组 $A^2 bold(x)=bold(0)$ 与 $A bold(x)=bold(0)$ 不同解，则 $a-b=$#fillin(len: 2.97656em)[].
]

#ezexam.question[
设 $A,B$ 为两个随机事件，且 $A$ 与 $B$ 相互独立.已知 $P(A)=2P(B)$，$P(A union B)=5/8$，则在事件 $A,B$ 至少有一个发生的条件下，$A,B$ 中恰有一个发生的概率为#fillin(len: 2.97656em)[].
]

= 三、解答题：第17—22小题，共70分. 解答应写出文字说明、证明过程或演算步骤.

#ezexam.question[
（本题满分10分）

计算 $integral_0^1 1/((x+1)(x^2-2x+2)) dif x$.
]

#ezexam.question[
（本题满分12分）

已知函数 $f(u)$ 在区间 $(0,+infinity)$ 内具有2阶导数，记 $g(x,y)=f(x/y)$.若 $g(x,y)$ 满足 $x^2(partial^2 g)/(partial x^2)+x y (partial^2 g)/(partial x partial y)+y^2(partial^2 g)/(partial y^2)=1$，且 $g(x,x)=1$，$(partial g)/(partial x)|_((x,x))=2/x$，求 $f(u)$.
]

#ezexam.question[
（本题满分12分）

设函数 $f(x)$ 在区间 $(a,b)$ 内可导.证明：导函数 $f'(x)$ 在 $(a,b)$ 内严格单调增加的充分必要条件是：

对 $(a,b)$ 内任意的 $x_1,x_2,x_3$，当 $x_1<x_2<x_3$ 时，$(f(x_2)-f(x_1))/(x_2-x_1)<(f(x_3)-f(x_2))/(x_3-x_2)$.
]

#ezexam.question[
（本题满分12分）

设 $Sigma$ 是由直线 $cases(x=0,y=0)$ 绕直线 $cases(x=t,y=t,z=t)$（$t$ 为参数）旋转一周得到的曲面，$Sigma_1$ 是 $Sigma$ 介于平面 $x+y+z=0$ 与 $x+y+z=1$ 之间部分的外侧.计算曲面积分 $I=integral.double_(Sigma_1) x dif y dif z+(y+1) dif z dif x+(z+2) dif x dif y$.
]

#ezexam.question[
（本题满分12分）

设矩阵 $A=mat(delim:"[",0,-1,-2;-1,0,2;-1,-1,a)$.已知1是 $A$ 的特征多项式的重根.

（1）求 $a$ 的值；

（2）求所有满足 $A bold(alpha)=bold(alpha)+bold(beta)$，$A^2 bold(alpha)=bold(alpha)+2bold(beta)$ 的非零列向量 $bold(alpha),bold(beta)$.
]

#ezexam.question[
（本题满分12分）

投保人的损失事件发生时，保险公司的赔付额 $Y$ 与投保人的损失额 $X$ 的关系为
$ Y=cases(0&X<=100,X-100&X>100). $
设损失事件发生时，投保人的损失额 $X$ 的概率密度为
$ f(x)=cases((2 times 100^2)/(100+x)^3&x>0,0&x<=0). $

（1）求 $P{Y>0}$ 及 $E Y$；

（2）这种损失事件在一年内发生的次数记为 $N$，保险公司在一年内就这种损失事件产生的理赔次数记为 $M$.假设 $N$ 服从参数为8的泊松分布，在 $N=n$（$n>=1$）的条件下，$M$ 服从二项分布 $B(n,p)$，其中 $p=P{Y>0}$，求 $M$ 的概率分布.
]

