#import "../template.typ": exam
#show: exam.with(year: 2022, subject: "一")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices.with(r-gap: 1.3em)
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)


= 一、选择题：第1—10小题，每小题5分，共50分. 下列每小题给出的四个选项中，只有一个选项是符合题目要求的.

#ezexam.question[
设函数 $f(x)$ 满足 $lim_(x->1)f(x)/(ln x)=1$，则（　）.
#choices([$f(1)=0$.],[$lim_(x->1)f(x)=0$.],[$f'(1)=1$.],[$lim_(x->1)f'(x)=1$.])
]

#ezexam.question[
设函数 $z=x y f(y/x)$，其中 $f(u)$ 可导. 若 $x(partial z)/(partial x)+y(partial z)/(partial y)=y^2(ln y-ln x)$，则（　）.
#choices([$f(1)=1/2,f'(1)=0$.],[$f(1)=0,f'(1)=1/2$.],[$f(1)=1/2,f'(1)=1$.],[$f(1)=0,f'(1)=1$.])
]

#ezexam.question[
已知数列 $x_n$，其中 $-pi/2<=x_n<=pi/2$，则（　）.
#choices([当 $lim cos(sin x_n)$ 存在时，$lim x_n$ 存在.],[当 $lim sin(cos x_n)$ 存在时，$lim x_n$ 存在.],[当 $lim cos(sin x_n)$ 存在时，$lim sin x_n$ 存在，但 $lim x_n$ 不一定存在.],[当 $lim sin(cos x_n)$ 存在时，$lim cos x_n$ 存在，但 $lim x_n$ 不一定存在.])
]

#ezexam.question[
已知 $I_1=integral_0^1 x/(2(1+cos x))dif x$，$I_2=integral_0^1 ln(1+x)/(1+cos x)dif x$，$I_3=integral_0^1 2x/(1+sin x)dif x$，则（　）.
#choices([$I_1<I_2<I_3$.],[$I_2<I_1<I_3$.],[$I_1<I_3<I_2$.],[$I_3<I_2<I_1$.])
]

#ezexam.question[
下述四个条件中，3阶矩阵 $A$ 可对角化的一个充分但不必要条件是（　）.
#choices([$A$ 有3个互不相等的特征值.],[$A$ 有3个线性无关的特征向量.],[$A$ 有3个两两线性无关的特征向量.],[$A$ 的属于不同特征值的特征向量正交.])
]

#ezexam.question[
设 $A,B$ 为 $n$ 阶矩阵，$E$ 为单位矩阵. 若方程组 $A bold(x)=bold(0)$ 与 $B bold(x)=bold(0)$ 同解，则（　）.
#choices([方程组 $mat(A,O;E,B)bold(y)=bold(0)$ 只有零解.],[方程组 $mat(E,A;O,A B)bold(y)=bold(0)$ 只有零解.],[方程组 $mat(A,B;O,B)bold(y)=bold(0)$ 与 $mat(B,A;O,A)bold(y)=bold(0)$ 同解.],[方程组 $mat(A B,B;O,A)bold(y)=bold(0)$ 与 $mat(B A,A;O,B)bold(y)=bold(0)$ 同解.])
]

#ezexam.question[
设 $bold(alpha)_1=(lambda,1,1)^T$，$bold(alpha)_2=(1,lambda,1)^T$，$bold(alpha)_3=(1,1,lambda)^T$，$bold(alpha)_4=(1,lambda,lambda^2)^T$. 若向量组 $bold(alpha)_1,bold(alpha)_2,bold(alpha)_3$ 与 $bold(alpha)_1,bold(alpha)_2,bold(alpha)_4$ 等价，则 $lambda$ 的取值范围是（　）.
#choices([${0,1}$.],[${lambda | lambda in bold(R),lambda!=-2}$.],[${lambda | lambda in bold(R),lambda!=-1,lambda!=-2}$.],[${lambda | lambda in bold(R),lambda!=-1}$.])
]

#ezexam.question[
设随机变量 $X~U(0,3)$，随机变量 $Y$ 服从参数为2的泊松分布，且 $X$ 与 $Y$ 的协方差为−1，则 $D(2X-Y+1)=$（　）.
#choices([$1$.],[$5$.],[$9$.],[$12$.])
]

#ezexam.question[
设随机变量 $X_1,X_2,dots,X_n$ 独立同分布，且 $X_1$ 的4阶矩存在. 记 $mu_k=E(X_1^k)$（$k=1,2,3,4$），则由切比雪夫不等式，对任意 $epsilon>0$，有 $P{abs(1/n sum_(i=1)^n X_i^2-mu_2)>=epsilon}<= $（　）.
#choices([$(mu_4-mu_2^2)/(n epsilon^2)$.],[$(mu_4-mu_2^2)/(sqrt(n)epsilon^2)$.],[$(mu_2-mu_1^2)/(n epsilon^2)$.],[$(mu_2-mu_1^2)/(sqrt(n)epsilon^2)$.])
]

#ezexam.question[
设随机变量 $X~N(0,1)$，在 $X=x$ 条件下随机变量 $Y~N(x,1)$，则 $X$ 与 $Y$ 的相关系数为（　）.
#choices([$1/4$.],[$1/2$.],[$sqrt(3)/3$.],[$sqrt(2)/2$.])
]


= 二、填空题：第11—16小题，每小题5分，共30分.

#ezexam.question[
函数 $f(x,y)=x^2+2y^2$ 在点 $(0,1)$ 的最大方向导数为#fillin[].
]

#ezexam.question[
求 $integral_1^(e^2)(ln x)/sqrt(x)dif x=$#fillin[].
]

#ezexam.question[
当 $x>=0,y>=0$ 时，$x^2+y^2<=k e^(x+y)$ 恒成立，则 $k$ 的取值范围是#fillin[].
]

#ezexam.question[
已知级数 $sum_(n=1)^infinity n!/n^n e^(-n x)$ 的收敛域为 $(a,+infinity)$，则 $a=$#fillin[].
]

#ezexam.question[
已知矩阵 $A$ 和 $E-A$ 可逆，其中 $E$ 为单位矩阵. 若矩阵 $B$ 满足 $(E-(E-A)^(-1))B=A$，则 $B-A=$#fillin[].
]

#ezexam.question[
设 $A,B,C$ 为随机事件，且 $A$ 与 $B$ 互不相容，$A$ 与 $C$ 互不相容，$B$ 与 $C$ 相互独立，$P(A)=P(B)=P(C)=1/3$，则 $P(B union C | A union B union C)=$#fillin[].
]


= 三、解答题：第17—22小题，共70分. 解答应写出文字说明、证明过程或演算步骤.

#ezexam.question[
（本题满分10分）设函数 $y(x)$ 是微分方程 $y'+1/(2sqrt(x))y=2+sqrt(x)$ 满足条件 $y(1)=3$ 的解，求曲线 $y=y(x)$ 的渐近线.
]

#ezexam.question[
（本题满分12分）已知平面区域 $D={(x,y) | y-2<=x<=sqrt(4-y^2),0<=y<=2}$，计算 $I=integral.double_D (x-y)^2/(x^2+y^2)dif x dif y$.
]

#ezexam.question[
（本题满分12分）已知 $Sigma$ 为曲面 $4x^2+y^2+z^2=1$（$x>=0,y>=0,z>=0$）的上侧，$L$ 为 $Sigma$ 的边界曲线，其正向与 $Sigma$ 的正法向量满足右手法则，计算曲线积分 $I=integral_L (y z^2-cos z)dif x+2x z^2 dif y+(2x y z+x sin z)dif z$.
]

#ezexam.question[
（本题满分12分）设函数 $f(x)$ 在 $(-infinity,+infinity)$ 内具有2阶连续导数. 证明：$f''(x)>=0$ 的充分必要条件是：对不同的实数 $a,b$，$f((a+b)/2)<=1/(b-a)integral_a^b f(x)dif x$.
]

#ezexam.question[
（本题满分12分）已知二次型 $f(x_1,x_2,x_3)=sum_(i=1)^3 sum_(j=1)^3 i j x_i x_j$.

（1）写出对应矩阵；

（2）求正交变换 $bold(x)=Q bold(y)$ 将二次型化为标准形；

（3）求 $f(x_1,x_2,x_3)=0$ 的解.
]

#ezexam.question[
（本题满分12分）设 $X_1,X_2,dots,X_n$ 为来自均值为 $theta$ 的指数分布总体的简单随机样本，$Y_1,Y_2,dots,Y_m$ 为来自均值为 $2theta$ 的指数分布总体的简单随机样本，且两样本相互独立，其中 $theta>0$ 为未知参数. 利用样本 $X_1,dots,X_n,Y_1,dots,Y_m$，求 $theta$ 的最大似然估计量 $hat(theta)$，并求 $D(hat(theta))$.
]

