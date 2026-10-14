#import "../template.typ": exam
#show: exam.with(year: 2025, subject: "三")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices.with(r-gap: 1.3em)
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)


= 一、选择题：第1—10小题，每小题5分，共50分. 下列每小题给出的四个选项中，只有一个选项是符合题目要求的.

#ezexam.question[
当 $x->0^+$ 时，下列无穷小量中，与 $x$ 等价的是（　）.
#choices([$e^(-sin x)-1$],[$sqrt(x+1)-cos x$],[$1-cos sqrt(2x)$],[$1-ln(1+x)/x$])
]

#ezexam.question[
已知函数 $f(x)=integral_0^x e^(t^2) sin t dif t$，$g(x)=integral_0^x e^(t^2) dif t dot sin^2 x$，则（　）.
#choices([$x=0$ 是 $f(x)$ 的极值点，也是 $g(x)$ 的极值点.],[$x=0$ 是 $f(x)$ 的极值点，$(0,0)$ 是曲线 $y=g(x)$ 的拐点.],[$x=0$ 是 $g(x)$ 的极值点，$(0,0)$ 是曲线 $y=f(x)$ 的拐点.],[$(0,0)$ 是曲线 $y=f(x)$ 的拐点，也是曲线 $y=g(x)$ 的拐点.])
]

#ezexam.question[
已知 $k$ 为常数，则级数 $sum_(n=1)^infinity (-1)^n [1/n-ln(1+k/n^2)]$（　）.
#choices([绝对收敛.],[条件收敛.],[发散.],[敛散性与 $k$ 的取值有关.])
]

#ezexam.question[
设函数 $f(x)$ 连续，则 $integral_0^1 dif y integral_0^y f(x) dif x=$（　）.
#choices([$integral_0^1 x f(x) dif x$],[$integral_0^1 (1+x)f(x) dif x$],[$integral_0^1 (x-1)f(x) dif x$],[$integral_0^1 (1-x)f(x) dif x$])
]

#ezexam.question[
已知 $A$ 是 $m times n$ 矩阵，$bold(beta)$ 是 $m$ 维非零列向量，若 $A$ 有 $k$ 阶非零子式，则（　）.
#choices([当 $k=m$ 时，$A bold(x)=bold(beta)$ 有解.],[当 $k=m$ 时，$A bold(x)=bold(beta)$ 无解.],[当 $k<m$ 时，$A bold(x)=bold(beta)$ 有解.],[当 $k<m$ 时，$A bold(x)=bold(beta)$ 无解.])
]

#ezexam.question[
设 $A$ 为3阶矩阵，则“$A^3-A^2$ 可对角化”是“$A$ 可对角化”的（　）.
#choices([充分但不必要条件.],[必要但不充分条件.],[充分必要条件.],[既不充分也不必要条件.])
]

#ezexam.question[
设矩阵 $A=mat(1,2;-2,-a)$，$B=mat(1,0;1,a)$.若 $f(x,y)=abs(x A+y B)$ 是正定二次型，则 $a$ 的取值范围是（　）.
#choices([$(0,2-sqrt(3))$],[$(2-sqrt(3),2+sqrt(3))$],[$(2+sqrt(3),4)$],[$(0,4)$])
]

#ezexam.question[
设随机变量 $X$ 服从正态分布 $N(-1,1)$，$Y$ 服从正态分布 $N(1,2)$.若 $X$ 与 $X+2Y$ 不相关，则 $X$ 与 $X-Y$ 的相关系数为（　）.
#choices([$1/3$],[$1/2$],[$2/3$],[$3/4$])
]

#ezexam.question[
设 $X_1,X_2,dots,X_20$ 是来自总体 $B(1,0.1)$ 的简单随机样本.令 $T=sum_(i=1)^20 X_i$，利用泊松分布近似表示二项分布的方法可得 $P{T<=1} approx$（　）.
#choices([$1/e^2$],[$2/e^2$],[$3/e^2$],[$4/e^2$])
]

#ezexam.question[
设总体 $X$ 的分布函数为 $F(x)$，$X_1,X_2,dots,X_n$ 是来自总体 $X$ 的简单随机样本，样本的经验分布函数为 $F_n(x)$.对于给定的 $x$（$0<F(x)<1$），$D(F_n(x))=$（　）.
#choices([$F(x)(1-F(x))$],[$F(x)^2$],[$1/n F(x)(1-F(x))$],[$1/n F(x)^2$])
]


= 二、填空题：第11—16小题，每小题5分，共30分.

#ezexam.question[
设 $g(x)$ 是函数 $f(x)=1/2 ln((3+x)/(3-x))$ 的反函数，则曲线 $y=g(x)$ 的渐近线方程为#fillin(len: 2.97656em)[].
]

#ezexam.question[
设 $integral_1^(+infinity) a/(x(2x+a)) dif x=ln 2$，则 $a=$#fillin(len: 2.97656em)[].
]

#ezexam.question[
微分方程 $x y'-y+x^2 e^x=0$ 满足条件 $y(1)=-e$ 的解为 $y=$#fillin(len: 2.97656em)[].
]

#ezexam.question[
已知函数 $z=z(x,y)$ 由 $z+ln z-integral_y^x t e^(-t^2) dif t=1$ 确定，则 $(partial^2 z)/(partial x^2)|_((1,1))=$#fillin(len: 2.97656em)[].
]

#ezexam.question[
已知 $f(x)=abs(mat(2x+1,3,2x+1,1;2x,-3,4x,-2;2x+1,2,2x+1,1;2x,-4,4x,-2))$，$g(x)=abs(mat(2x+1,1,2x+1,3;5x+1,-2,4x,-3;0,1,2x+1,2;2x,-2,4x,-4))$，则方程 $f(x)=g(x)$ 的不同的根的个数为#fillin(len: 2.97656em)[].
]

#ezexam.question[
设 $A,B,C$ 为三个随机事件，且 $A$ 与 $B$ 相互独立，$B$ 与 $C$ 相互独立，$A$ 与 $C$ 互不相容.已知 $P(A)=P(C)=1/4$，$P(B)=1/2$，则在事件 $A,B,C$ 至少有一个发生的条件下，$A,B,C$ 中恰有一个发生的概率为#fillin(len: 2.97656em)[].
]


= 三、解答题：第17—22小题，共70分. 解答应写出文字说明、证明过程或演算步骤.

#ezexam.question[
（本题满分10分）

计算 $integral_0^1 1/((x+1)(x^2-2x+2)) dif x$.
]

#ezexam.question[
（本题满分12分）

设函数 $f(x)$ 在 $x=0$ 处连续，且 $lim_(x->0) (x f(x)-e^(2sin x)+1)/(ln(1+x)+ln(1-x))=-3$，证明 $f(x)$ 在 $x=0$ 处可导，并求 $f'(0)$.
]

#ezexam.question[
（本题满分12分）

已知平面有界区域 $D={(x,y) bar.v y^2<=x,x^2<=y}$，计算二重积分 $integral.double_D (x-y+1)^2 dif x dif y$.
]

#ezexam.question[
（本题满分12分）

设函数 $f(x)$ 在区间 $(a,b)$ 内可导.证明：导函数 $f'(x)$ 在 $(a,b)$ 内严格单调增加的充分必要条件是：

对 $(a,b)$ 内任意的 $x_1,x_2,x_3$，当 $x_1<x_2<x_3$ 时，$(f(x_2)-f(x_1))/(x_2-x_1)<(f(x_3)-f(x_2))/(x_3-x_2)$.
]

#ezexam.question[
（本题满分12分）

设矩阵 $A=mat(1,-1,3,0,-1;-1,0,-2,-a,-1;1,1,a,2,3)$ 的秩为2.

（1）求 $a$ 的值；

（2）求 $A$ 的列向量组的一个极大线性无关组 $bold(alpha),bold(beta)$，并求矩阵 $H$，使得 $A=G H$，其中 $G=(bold(alpha),bold(beta))$.
]

#ezexam.question[
（本题满分12分）

投保人的损失事件发生时，保险公司的赔付额 $Y$ 与投保人的损失额 $X$ 的关系为
$ Y=cases(0 & X<=100,X-100 & X>100). $
设损失事件发生时，投保人的损失额 $X$ 的概率密度为
$ f(x)=cases((2 times 100^2)/(100+x)^3 & x>0,0 & x<=0). $

（1）求 $P{Y>0}$ 及 $E Y$；

（2）这种损失事件在一年内发生的次数记为 $N$，保险公司在一年内就这种损失事件产生的理赔次数记为 $M$.假设 $N$ 服从参数为8的泊松分布，在 $N=n$（$n>=1$）的条件下，$M$ 服从二项分布 $B(n,p)$，其中 $p=P{Y>0}$.求 $M$ 的概率分布.
]

