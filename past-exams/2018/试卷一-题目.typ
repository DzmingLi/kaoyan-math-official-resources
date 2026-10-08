#import "../template.typ": exam
#show: exam.with(year: 2018, subject: "一")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)


= 一、选择题：1—8小题，每小题4分，共32分.在每小题给出的四个选项中，只有一项符合题目要求，把所选项前的字母填在题后的括号内.

#ezexam.question[
下列函数中，在 $x=0$ 处不可导的是（　）.
#choices([$f(x)=abs(x) sin abs(x)$], [$f(x)=abs(x) sin sqrt(abs(x))$], [$f(x)=cos abs(x)$], [$f(x)=cos sqrt(abs(x))$])
]

#ezexam.question[
过点 $(1,0,0)$、$(0,1,0)$，且与曲面 $z=x^2+y^2$ 相切的平面为（　）.
#choices([$z=0$ 与 $x+y-z=1$], [$z=0$ 与 $2x+2y-z=2$], [$x=y$ 与 $x+y-z=1$], [$x=y$ 与 $2x+2y-z=2$])
]

#ezexam.question[
$sum_(n=0)^infinity (-1)^n (2n+3)/((2n+1)!)=$（　）.
#choices([$sin 1+cos 1$], [$2sin 1+cos 1$], [$2sin 1+2cos 1$], [$2sin 1+3cos 1$])
]

#ezexam.question[
设 $M=integral_(-pi/2)^(pi/2) (1+x)^2/(1+x^2) dif x$，$N=integral_(-pi/2)^(pi/2) (1+x)/e^x dif x$，$K=integral_(-pi/2)^(pi/2) (1+sqrt(cos x)) dif x$，则（　）.
#choices([$M>N>K$], [$M>K>N$], [$K>M>N$], [$K>N>M$])
]

#ezexam.question[
下列矩阵中，与矩阵 $mat(1,1,0;0,1,1;0,0,1)$ 相似的为（　）.
#choices([$mat(1,1,-1;0,1,1;0,0,1)$], [$mat(1,0,-1;0,1,1;0,0,1)$], [$mat(1,1,-1;0,1,0;0,0,1)$], [$mat(1,0,-1;0,1,0;0,0,1)$])
]

#ezexam.question[
设 $A,B$ 为 $n$ 阶矩阵，记 $r(X)$ 为矩阵 $X$ 的秩，$(X quad Y)$ 表示分块矩阵，则（　）.
#choices([$r(A quad A B)=r(A)$], [$r(A quad B A)=r(A)$], [$r(A quad B)=max{r(A),r(B)}$], [$r(A quad B)=r(A^"T" B^"T")$])
]

#ezexam.question[
设随机变量 $X$ 的概率密度 $f(x)$ 满足 $f(1+x)=f(1-x)$，且 $integral_0^2 f(x) dif x=0.6$，则 $P{X<0}=$（　）.
#choices([0.2], [0.3], [0.4], [0.5])
]

#ezexam.question[
设总体 $X$ 服从正态分布 $N(mu,sigma^2)$，$x_1,x_2,dots,x_n$ 是来自总体 $X$ 的简单随机样本.据此样本检验假设 $H_0:mu=mu_0$，$H_1:mu!=mu_0$，则（　）.
#choices(
[如果在检验水平 $alpha=0.05$ 下拒绝 $H_0$，那么在检验水平 $alpha=0.01$ 下必拒绝 $H_0$.],
[如果在检验水平 $alpha=0.05$ 下拒绝 $H_0$，那么在检验水平 $alpha=0.01$ 下必接受 $H_0$.],
[如果在检验水平 $alpha=0.05$ 下接受 $H_0$，那么在检验水平 $alpha=0.01$ 下必拒绝 $H_0$.],
[如果在检验水平 $alpha=0.05$ 下接受 $H_0$，那么在检验水平 $alpha=0.01$ 下必接受 $H_0$.])
]

= 二、填空题：9—14小题，每小题4分，共24分.把答案填在题中横线上.

#ezexam.question[
若 $lim_(x->0) ((1-tan x)/(1+tan x))^(1/(sin k x))=e$，则 $k=$#fillin(len: 2.97656em)[].
]

#ezexam.question[
设函数 $f(x)$ 具有 2 阶连续导数.若曲线 $y=f(x)$ 过点 $(0,0)$ 且与曲线 $y=2^x$ 在点 $(1,2)$ 处相切，则 $integral_0^1 x f''(x) dif x=$#fillin(len: 2.97656em)[].
]

#ezexam.question[
设 $F(x,y,z)=x y bold(i)-y z bold(j)+z x bold(k)$，则 $op("rot") F(1,1,0)=$#fillin(len: 2.97656em)[].
]

#ezexam.question[
设 $L$ 为球面 $x^2+y^2+z^2=1$ 与平面 $x+y+z=0$ 的交线，则 $integral.cont_L x y dif s=$#fillin(len: 2.97656em)[].
]

#ezexam.question[
设 2 阶矩阵 $A$ 有两个不同特征值，$alpha_1,alpha_2$ 是 $A$ 的线性无关的特征向量，且满足 $A^2(alpha_1+alpha_2)=alpha_1+alpha_2$，则 $|A|=$#fillin(len: 2.97656em)[].
]

#ezexam.question[
设随机事件 $A$ 与 $B$ 相互独立，$A$ 与 $C$ 相互独立，$B C=emptyset$.若 $P(A)=P(B)=1/2$，$P(A C bar.v A B union C)=1/4$，则 $P(C)=$#fillin(len: 2.97656em)[].
]

= 三、解答题：15—23小题，共94分.解答应写出文字说明、证明过程或演算步骤.

#ezexam.question[
（本题满分 10 分）

求不定积分 $integral e^(2x) arctan sqrt(e^x-1) dif x$.
]

#ezexam.question[
（本题满分 10 分）

将长为 2 m 的铁丝分成三段，依次围成圆、正方形与正三角形.三个图形的面积之和是否存在最小值？若存在，求出最小值.
]

#ezexam.question[
（本题满分 10 分）

设 $Sigma$ 是曲面 $x=sqrt(1-3y^2-3z^2)$ 的前侧，计算曲面积分
$ I=integral.double_Sigma x dif y dif z+(y^3+2) dif z dif x+z^3 dif x dif y. $
]

#ezexam.question[
（本题满分 10 分）

已知微分方程 $y'+y=f(x)$，其中 $f(x)$ 是 $bold(upright(R))$ 上的连续函数.

（Ⅰ）若 $f(x)=x$，求方程的通解；

（Ⅱ）若 $f(x)$ 是周期为 $T$ 的函数，证明：方程存在唯一的以 $T$ 为周期的解.
]

#ezexam.question[
（本题满分 10 分）

设数列 $\{x_n\}$ 满足：$x_1>0$，$x_n e^(x_(n+1))=e^(x_n)-1$（$n=1,2,dots$）.证明 $\{x_n\}$ 收敛，并求 $lim_(n->infinity) x_n$.
]

#ezexam.question[
（本题满分 11 分）

设实二次型 $f(x_1,x_2,x_3)=(x_1-x_2+x_3)^2+(x_2+x_3)^2+(x_1+a x_3)^2$，其中 $a$ 是参数.

（Ⅰ）求 $f(x_1,x_2,x_3)=0$ 的解；

（Ⅱ）求 $f(x_1,x_2,x_3)$ 的规范形.
]

#ezexam.question[
（本题满分 11 分）

已知 $a$ 是常数，且矩阵 $A=mat(1,2,a;1,3,0;2,7,-a)$ 可经初等列变换化为矩阵 $B=mat(1,a,2;0,1,1;-1,1,1)$.

（Ⅰ）求 $a$；

（Ⅱ）求满足 $A P=B$ 的可逆矩阵 $P$.
]

#ezexam.question[
（本题满分 11 分）

设随机变量 $X$ 与 $Y$ 相互独立，$X$ 的概率分布为 $P{X=1}=P{X=-1}=1/2$，$Y$ 服从参数为 $lambda$ 的泊松分布.令 $Z=X Y$.

（Ⅰ）求 $op("Cov")(X,Z)$；

（Ⅱ）求 $Z$ 的概率分布.
]

#ezexam.question[
（本题满分 11 分）

设总体 $X$ 的概率密度为
$ f(x;sigma)=1/(2sigma)e^(-abs(x)/sigma),quad -infinity<x<+infinity, $
其中 $sigma in (0,+infinity)$ 为未知参数，$X_1,X_2,dots,X_n$ 为来自总体 $X$ 的简单随机样本.记 $sigma$ 的最大似然估计量为 $hat(sigma)$.

（Ⅰ）求 $hat(sigma)$；

（Ⅱ）求 $E hat(sigma)$ 和 $D hat(sigma)$.
]
