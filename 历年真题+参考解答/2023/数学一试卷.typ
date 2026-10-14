#import "../template.typ": exam
#show: exam.with(year: 2023, subject: "一")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices.with(r-gap: 1.3em)
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)


= 一、选择题：第1—10小题，每小题5分，共50分. 下列每小题给出的四个选项中，只有一个选项是符合题目要求的.

#ezexam.question[
曲线 $y=x ln(e+1/(x-1))$ 的斜渐近线方程为（　）.
#choices([$y=x+e$.],[$y=x+1/e$.],[$y=x$.],[$y=x-1/e$.])
]

#ezexam.question[
若微分方程 $y''+a y'+b y=0$ 的解在 $(-infinity,+infinity)$ 上有界，则（　）.
#choices([$a<0,b>0$.],[$a>0,b>0$.],[$a=0,b>0$.],[$a=0,b<0$.])
]

#ezexam.question[
设函数 $y=f(x)$ 由 $cases(x=2t+abs(t),y=abs(t)sin t)$ 确定，则（　）.
#choices([$f(x)$ 连续，$f'(0)$ 不存在.],[$f'(0)$ 存在，$f'(x)$ 在 $x=0$ 处不连续.],[$f'(x)$ 连续，$f''(0)$ 不存在.],[$f''(0)$ 存在，$f''(x)$ 在 $x=0$ 处不连续.])
]

#ezexam.question[
已知 $a_n<b_n$（$n=1,2,dots$）. 若级数 $sum a_n$ 与 $sum b_n$ 均收敛，则“$sum a_n$ 绝对收敛”是“$sum b_n$ 绝对收敛”的（　）.
#choices([充分必要条件.],[充分不必要条件.],[必要不充分条件.],[既不充分也不必要条件.])
]

#ezexam.question[
已知 $n$ 阶矩阵 $A,B,C$ 满足 $A B C=O$，$E$ 为 $n$ 阶单位矩阵. 记矩阵 $mat(O,A;B C,E)$、$mat(A B,C;O,E)$、$mat(E,A B;A B,O)$ 的秩分别为 $r_1,r_2,r_3$，则（　）.
#choices([$r_1<=r_2<=r_3$.],[$r_1<=r_3<=r_2$.],[$r_3<=r_1<=r_2$.],[$r_2<=r_1<=r_3$.])
]

#ezexam.question[
下列矩阵中不能相似于对角矩阵的是（　）.
#choices([$mat(1,1,a;0,2,2;0,0,3)$.],[$mat(1,1,a;1,2,0;a,0,3)$.],[$mat(1,1,a;0,2,0;0,0,2)$.],[$mat(1,1,a;0,2,2;0,0,2)$.])
]

#ezexam.question[
已知向量 $bold(alpha)_1=(1,2,3)^T$，$bold(alpha)_2=(2,1,1)^T$，$bold(beta)_1=(2,5,9)^T$，$bold(beta)_2=(1,0,1)^T$. 若 $bold(gamma)$ 既可由 $bold(alpha)_1,bold(alpha)_2$ 线性表示，也可由 $bold(beta)_1,bold(beta)_2$ 线性表示，则 $bold(gamma)=$（　）.
#choices([$k(3,3,4)^T$，$k in bold(R)$.],[$k(3,5,10)^T$，$k in bold(R)$.],[$k(-1,1,2)^T$，$k in bold(R)$.],[$k(1,5,8)^T$，$k in bold(R)$.])
]

#ezexam.question[
设随机变量 $X$ 服从参数为1的泊松分布，则 $E(abs(X-E X))=$（　）.
#choices([$1/e$.],[$1/2$.],[$2/e$.],[$1$.])
]

#ezexam.question[
设 $X_1,dots,X_n$ 为来自总体 $N(mu_1,sigma^2)$ 的简单随机样本，$Y_1,dots,Y_m$ 为来自总体 $N(mu_2,2sigma^2)$ 的简单随机样本，且两样本相互独立. 记 $overline(X)=sum X_i/n$，$overline(Y)=sum Y_i/m$，$S_1^2=sum(X_i-overline(X))^2/(n-1)$，$S_2^2=sum(Y_i-overline(Y))^2/(m-1)$，则（　）.
#choices([$S_1^2/S_2^2~F(n,m)$.],[$S_1^2/S_2^2~F(n-1,m-1)$.],[$2S_1^2/S_2^2~F(n,m)$.],[$2S_1^2/S_2^2~F(n-1,m-1)$.])
]

#ezexam.question[
设 $X_1,X_2$ 为来自总体 $N(mu,sigma^2)$ 的简单随机样本，其中 $sigma>0$ 是未知参数. 若 $hat(sigma)=a abs(X_1-X_2)$ 为 $sigma$ 的无偏估计，则 $a=$（　）.
#choices([$sqrt(pi)/2$.],[$sqrt(2pi)/2$.],[$sqrt(pi)$.],[$sqrt(2pi)$.])
]


= 二、填空题：第11—16小题，每小题5分，共30分.

#ezexam.question[
当 $x->0$ 时，函数 $f(x)=a x+b x^2+ln(1+x)$ 与 $g(x)=e^(x^2)-cos x$ 是等价无穷小量，则 $a b=$#fillin[].
]

#ezexam.question[
曲面 $z=x+2y+ln(1+x^2+y^2)$ 在点 $(0,0,0)$ 处的切平面方程为#fillin[].
]

#ezexam.question[
设 $f(x)$ 是周期为2的偶函数，且 $f(x)=1-x$，$x in [0,1]$. 若 $f(x)=a_0/2+sum_(n=1)^infinity a_n cos n pi x$，则 $sum_(n=1)^infinity a_(2n)=$#fillin[].
]

#ezexam.question[
设连续函数 $f(x)$ 满足 $f(x+2)-f(x)=x$，$integral_0^2 f(x)dif x=0$，则 $integral_1^3 f(x)dif x=$#fillin[].
]

#ezexam.question[
已知向量 $bold(alpha)_1=(1,0,1,1)^T$，$bold(alpha)_2=(-1,-1,0,1)^T$，$bold(alpha)_3=(0,1,-1,1)^T$，$bold(beta)=(1,1,1,-1)^T$，$bold(gamma)=k_1 bold(alpha)_1+k_2 bold(alpha)_2+k_3 bold(alpha)_3$. 若 $bold(gamma)^T bold(alpha)_i=bold(beta)^T bold(alpha)_i$（$i=1,2,3$），则 $k_1^2+k_2^2+k_3^2=$#fillin[].
]

#ezexam.question[
设随机变量 $X$ 与 $Y$ 相互独立，且 $X~B(1,1/3)$，$Y~B(2,1/2)$，则 $P{X=Y}=$#fillin[].
]


= 三、解答题：第17—22小题，共70分. 解答应写出文字说明、证明过程或演算步骤.

#ezexam.question[
（本题满分10分）设曲线 $y=y(x)$（$x>0$）经过点 $(1,2)$，该曲线上任一点 $P(x,y)$ 到 $y$ 轴的距离等于该点处的切线在 $y$ 轴上的截距.

（1）求 $y(x)$；

（2）求函数 $f(x)=integral_1^x y(t)dif t$ 在 $(0,+infinity)$ 上的最大值.
]

#ezexam.question[
（本题满分12分）求函数 $f(x,y)=(y-x^2)(y-x^3)$ 的极值.
]

#ezexam.question[
（本题满分12分）设空间有界区域 $Omega$ 由柱面 $x^2+y^2=1$ 与平面 $z=0$ 和 $x+z=1$ 围成，$Sigma$ 为 $Omega$ 边界面的外侧，计算曲面积分 $I=integral.surf_Sigma 2x z dif y dif z+x z cos y dif z dif x+3y z sin x dif x dif y$.
]

#ezexam.question[
（本题满分12分）设函数 $f(x)$ 在 $[-a,a]$ 上具有2阶连续导数. 证明：

（1）若 $f(0)=0$，则存在 $xi in (-a,a)$，使 $f''(xi)=(f(a)+f(-a))/a^2$；

（2）若 $f(x)$ 在 $(-a,a)$ 内取得极值，则存在 $eta in (-a,a)$，使 $abs(f''(eta))>=abs(f(a)-f(-a))/(2a^2)$.
]

#ezexam.question[
（本题满分12分）已知二次型 $f(x_1,x_2,x_3)=x_1^2+2x_2^2+2x_3^2+2x_1 x_2-2x_1 x_3$，$g(y_1,y_2,y_3)=y_1^2+y_2^2+y_3^2+2y_2 y_3$.

（1）求可逆变换 $bold(x)=P bold(y)$ 将 $f$ 化成 $g$；

（2）是否存在正交变换 $bold(x)=Q bold(y)$ 将 $f$ 化成 $g$？
]

#ezexam.question[
（本题满分12分）设二维随机变量 $(X,Y)$ 的概率密度为 $f(x,y)=cases(2/pi(x^2+y^2) & x^2+y^2<=1,0 & "其他")$.

（1）求 $X$ 与 $Y$ 的协方差；

（2）$X$ 与 $Y$ 是否相互独立？

（3）求 $Z=X^2+Y^2$ 的概率密度.
]

