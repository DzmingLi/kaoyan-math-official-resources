#import "../template.typ": exam
#show: exam.with(year: 2019, subject: "一")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices.with(r-gap: 1.3em)
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)


= 一、选择题：第1—8小题，每小题4分，共32分. 下列每小题给出的四个选项中，只有一个选项是符合题目要求的.

#ezexam.question[
当 $x->0$ 时，若 $x-tan x$ 与 $x^k$ 是同阶无穷小量，则 $k=$（　）.
#choices([$1$.],[$2$.],[$3$.],[$4$.])
]

#ezexam.question[
设函数 $f(x)=cases(x abs(x) & x<=0,x ln x & x>0)$，则 $x=0$ 是 $f(x)$ 的（　）.
#choices([可导点，极值点.],[不可导点，极值点.],[可导点，非极值点.],[不可导点，非极值点.])
]

#ezexam.question[
设 $u_n$ 是单调增加的有界数列，则下列级数中收敛的是（　）.
#choices([$sum_(n=1)^infinity u_n/n$.],[$sum_(n=1)^infinity (-1)^n 1/u_n$.],[$sum_(n=1)^infinity (1-u_n/u_(n+1))$.],[$sum_(n=1)^infinity (u_(n+1)^2-u_n^2)$.])
]

#ezexam.question[
设函数 $Q(x,y)=x/y^2$. 如果对上半平面（$y>0$）内的任意有向光滑封闭曲线 $C$ 都有 $integral.cont_C P(x,y)dif x+Q(x,y)dif y=0$，那么函数 $P(x,y)$ 可取为（　）.
#choices([$y-x^2/y^3$.],[$1/y-x^2/y^3$.],[$1/x-1/y$.],[$x/y^2$.])
]

#ezexam.question[
设 $A$ 是3阶实对称矩阵，$E$ 是3阶单位矩阵. 若 $A^2+A=2E$，且 $abs(A)=4$，则二次型 $bold(x)^T A bold(x)$ 的规范形为（　）.
#choices([$y_1^2+y_2^2+y_3^2$.],[$y_1^2+y_2^2-y_3^2$.],[$y_1^2-y_2^2-y_3^2$.],[$-y_1^2-y_2^2-y_3^2$.])
]

#ezexam.question[
如图所示，有3张平面两两相交，交线相互平行，它们的方程 $a_(i 1)x+a_(i 2)y+a_(i 3)z=d_i$（$i=1,2,3$）组成的线性方程组的系数矩阵与增广矩阵分别记为 $A,bold(A)$，则（　）.
#import "@preview/cetz:0.5.2"
#cetz.canvas({import cetz.draw: *; line((0,0),(3,0),(3.2,.5),(.2,.5),close:true); line((.4,-.5),(2.4,1.7),(2.6,2.1),(.6,-.1),close:true); line((.5,1.5),(2.5,-.7),(2.7,-.3),(.7,1.9),close:true)})
#choices([$r(A)=2,r(bold(A))=3$.],[$r(A)=2,r(bold(A))=2$.],[$r(A)=1,r(bold(A))=2$.],[$r(A)=1,r(bold(A))=1$.])
]

#ezexam.question[
设 $A,B$ 为随机事件，则 $P(A)=P(B)$ 的充分必要条件是（　）.
#choices([$P(A union B)=P(A)+P(B)$.],[$P(A B)=P(A)P(B)$.],[$P(A overline(B))=P(overline(A)B)$.],[$P(A B)=P(A overline(B))$.])
]

#ezexam.question[
设随机变量 $X$ 与 $Y$ 相互独立，且都服从正态分布 $N(mu,sigma^2)$，则 $P{abs(X-Y)<1}$（　）.
#choices([与 $mu$ 无关，而与 $sigma$ 有关.],[与 $mu$ 有关，而与 $sigma$ 无关.],[与 $mu,sigma$ 都有关.],[与 $mu,sigma$ 都无关.])
]


= 二、填空题：第9—14小题，每小题4分，共24分.

#ezexam.question[
设函数 $f(u)$ 可导，$z=f(sin y-sin x)+x y$，则 $1/(cos x) dot (partial z)/(partial x)+1/(cos y) dot (partial z)/(partial y)=$#fillin[].
]

#ezexam.question[
微分方程 $2y y'-y^2-2=0$ 满足条件 $y(0)=1$ 的特解 $y=$#fillin[].
]

#ezexam.question[
幂级数 $sum_(n=0)^infinity (-1)^n/((2n)!)x^n$ 在 $(0,+infinity)$ 内的和函数 $S(x)=$#fillin[].
]

#ezexam.question[
设 $Sigma$ 为曲面 $x^2+y^2+4z^2=4$（$z>=0$）的上侧，则 $integral.double_Sigma sqrt(4-x^2-4z^2)dif x dif y=$#fillin[].
]

#ezexam.question[
设 $A=(bold(alpha)_1,bold(alpha)_2,bold(alpha)_3)$ 为3阶矩阵，$bold(alpha)_1,bold(alpha)_2$ 线性无关，且 $bold(alpha)_3=-bold(alpha)_1+2bold(alpha)_2$，则线性方程组 $A bold(x)=bold(0)$ 的通解为#fillin[].
]

#ezexam.question[
设随机变量 $X$ 的概率密度为 $f(x)=cases(x/2 & 0<x<2,0 & "其他")$，$F(x)$ 为 $X$ 的分布函数，$E X$ 为 $X$ 的数学期望，则 $P{F(X)>E X-1}=$#fillin[].
]


= 三、解答题：第15—23小题，共94分. 解答应写出文字说明、证明过程或演算步骤.

#ezexam.question[
（本题满分10分）设函数 $y(x)$ 是微分方程 $y'+x y=e^(-x^2/2)$ 满足条件 $y(0)=0$ 的特解.

（1）求 $y(x)$；

（2）求曲线 $y=y(x)$ 的凹凸区间及拐点.
]

#ezexam.question[
（本题满分10分）设 $a,b$ 为实数，函数 $z=2+a x^2+b y^2$ 在点 $(3,4)$ 处的所有方向导数中，方向 $bold(l)=-3bold(i)-4bold(j)$ 的方向导数最大，最大值为10.

（1）求 $a,b$；

（2）求曲面 $z=2+a x^2+b y^2$（$z>=0$）的面积.
]

#ezexam.question[
（本题满分10分）求由曲线 $y=e^(-x)sin x$（$x>=0$）与 $x$ 轴之间图形的面积.
]

#ezexam.question[
（本题满分10分）设 $a_n=integral_0^1 x^n sqrt(1-x^2)dif x$（$n=0,1,2,dots$）.

（1）证明：数列 $a_n$ 单调减少，且 $a_n=(n-1)/(n+2)a_(n-2)$（$n=2,3,dots$）；

（2）求 $lim_(n->infinity)a_n/a_(n-1)$.
]

#ezexam.question[
（本题满分10分）设 $Omega$ 是由锥面 $x^2+(y-z)^2=(1-z)^2$（$0<=z<=1$）与平面 $z=0$ 围成的锥体，求 $Omega$ 的形心坐标.
]

#ezexam.question[
（本题满分11分）设向量 $bold(alpha)_1=(1,2,1)^T$，$bold(alpha)_2=(1,3,2)^T$，$bold(alpha)_3=(1,a,3)^T$ 为 $bold(R)^3$ 的一个基，$bold(beta)=(1,1,1)^T$ 在这个基下的坐标为 $(b,c,1)^T$.

（1）求 $a,b,c$；

（2）证明 $bold(alpha)_2,bold(alpha)_3,bold(beta)$ 为 $bold(R)^3$ 的一个基，并求 $bold(alpha)_2,bold(alpha)_3,bold(beta)$ 到 $bold(alpha)_1,bold(alpha)_2,bold(alpha)_3$ 的过渡矩阵.
]

#ezexam.question[
（本题满分11分）已知矩阵 $A=mat(-2,-2,1;2,x,-2;0,0,-2)$ 与 $B=mat(2,1,0;0,-1,0;0,0,y)$ 相似.

（1）求 $x,y$；

（2）求可逆矩阵 $P$ 使得 $P^(-1)A P=B$.
]

#ezexam.question[
（本题满分11分）设随机变量 $X$ 与 $Y$ 相互独立，$X$ 服从参数为1的指数分布，$Y$ 的概率分布为 $P{Y=-1}=p,P{Y=1}=1-p$（$0<p<1$）. 令 $Z=X Y$.

（1）求 $Z$ 的概率密度；

（2）$p$ 为何值时，$X$ 与 $Z$ 不相关？

（3）$X$ 与 $Z$ 是否相互独立？
]

#ezexam.question[
（本题满分11分）设总体 $X$ 的概率密度为 $f(x;sigma^2)=cases(A/sigma e^(-(x-mu)^2/(2sigma^2)) & x>=mu,0 & x<mu)$，其中 $mu$ 是已知参数，$sigma>0$ 是未知参数，$A$ 是常数. $X_1,X_2,dots,X_n$ 是来自总体 $X$ 的简单随机样本.

（1）求 $A$；

（2）求 $sigma^2$ 的最大似然估计量.
]

