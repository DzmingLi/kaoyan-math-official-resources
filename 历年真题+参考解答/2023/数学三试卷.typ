#import "../template.typ": exam
#show: exam.with(year: 2023, subject: "三")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices.with(r-gap: 1.3em)
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)


= 一、选择题：第1—10小题，每小题5分，共50分. 下列每小题给出的四个选项中，只有一个选项是符合题目要求的.

#ezexam.question[
已知函数 $f(x,y)=ln(y+abs(x sin y))$，则（　）.
#choices([$f_x(0,1)$ 不存在，$f_y(0,1)$ 存在.],[$f_x(0,1)$ 存在，$f_y(0,1)$ 不存在.],[$f_x(0,1),f_y(0,1)$ 均存在.],[$f_x(0,1),f_y(0,1)$ 均不存在.])
]

#ezexam.question[
函数 $f(x)=cases(1/sqrt(1+x^2) & x<=0,(x+1)cos x & x>0)$ 的一个原函数为（　）.
#choices([$F(x)=cases(ln(sqrt(1+x^2)-x) & x<=0,(x+1)cos x-sin x & x>0)$.],[$F(x)=cases(ln(sqrt(1+x^2)-x)+1 & x<=0,(x+1)cos x-sin x & x>0)$.],[$F(x)=cases(ln(sqrt(1+x^2)+x) & x<=0,(x+1)sin x+cos x & x>0)$.],[$F(x)=cases(ln(sqrt(1+x^2)+x)+1 & x<=0,(x+1)sin x+cos x & x>0)$.])
]

#ezexam.question[
若微分方程 $y''+a y'+b y=0$ 的解在 $(-infinity,+infinity)$ 上有界，则（　）.
#choices([$a<0,b>0$.],[$a>0,b>0$.],[$a=0,b>0$.],[$a=0,b<0$.])
]

#ezexam.question[
已知 $a_n<b_n$（$n=1,2,dots$）. 若级数 $sum a_n$ 与 $sum b_n$ 均收敛，则“$sum a_n$ 绝对收敛”是“$sum b_n$ 绝对收敛”的（　）.
#choices([充分必要条件.],[充分不必要条件.],[必要不充分条件.],[既不充分也不必要条件.])
]

#ezexam.question[
设 $A,B$ 为 $n$ 阶可逆矩阵，$E$ 为 $n$ 阶单位矩阵，$M^*$ 为矩阵 $M$ 的伴随矩阵，则 $mat(A,E;O,B)^*=$（　）.
#choices([$mat(abs(A)B^*,-B^* A^*;O,abs(B)A^*)$.],[$mat(abs(B)A^*,-A^* B^*;O,abs(A)B^*)$.],[$mat(abs(B)A^*,-B^* A^*;O,abs(A)B^*)$.],[$mat(abs(A)B^*,-A^* B^*;O,abs(B)A^*)$.])
]

#ezexam.question[
二次型 $f(x_1,x_2,x_3)=(x_1+x_2)^2+(x_1+x_3)^2-4(x_2-x_3)^2$ 的规范形为（　）.
#choices([$y_1^2+y_2^2$.],[$y_1^2-y_2^2$.],[$y_1^2+y_2^2-4y_3^2$.],[$y_1^2+y_2^2-y_3^2$.])
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
设 $X_1,X_2$ 为来自总体 $N(mu,sigma^2)$ 的简单随机样本，其中 $sigma>0$ 是未知参数. 若 $hat(sigma)=a abs(X_1-X_2)$ 满足 $E(hat(sigma))=sigma$，则 $a=$（　）.
#choices([$sqrt(pi)/2$.],[$sqrt(2pi)/2$.],[$sqrt(pi)$.],[$sqrt(2pi)$.])
]


= 二、填空题：第11—16小题，每小题5分，共30分.

#ezexam.question[
求 $lim_(x->infinity)x^2(2-x sin(1/x)-cos(1/x))=$#fillin[].
]

#ezexam.question[
已知函数 $f(x,y)$ 满足 $dif f(x,y)=(x dif y-y dif x)/(x^2+y^2)$，$f(1,1)=pi/4$，则 $f(sqrt(3),3)=$#fillin[].
]

#ezexam.question[
求 $sum_(n=0)^infinity x^(2n)/((2n)!)=$#fillin[].
]

#ezexam.question[
设某公司在 $t$ 时刻的资产为 $f(t)$，从0时刻到 $t$ 时刻的平均资产等于 $f(t)/t-t$. 假设 $f(t)$ 连续且 $f(0)=0$，则 $f(t)=$#fillin[].
]

#ezexam.question[
已知线性方程组 $cases(a x_1+x_3=1,x_1+a x_2+x_3=0,x_1+2x_2+a x_3=0,a x_1+b x_2=2)$ 有解，其中 $a,b$ 为常数. 若 $abs(mat(a,0,1;1,a,1;1,2,a))=4$，则 $abs(mat(1,a,1;1,2,a;a,b,0))=$#fillin[].
]

#ezexam.question[
设随机变量 $X$ 与 $Y$ 相互独立，且 $X~B(1,p)$，$Y~B(2,p)$，$p in (0,1)$，则 $X+Y$ 与 $X-Y$ 的相关系数为#fillin[].
]


= 三、解答题：第17—22小题，共70分. 解答应写出文字说明、证明过程或演算步骤.

#ezexam.question[
（本题满分10分）已知可导函数 $y=y(x)$ 满足 $a e^x+y^2+y-ln(1+x)cos y+b=0$，且 $y(0)=0,y'(0)=0$.

（1）求 $a,b$ 的值；

（2）判断 $x=0$ 是否为 $y(x)$ 的极值点.
]

#ezexam.question[
（本题满分12分）已知平面区域 $D={(x,y) | 0<=y<=1/(x sqrt(1+x^2)),x>=1}$.

（1）求 $D$ 的面积；

（2）求 $D$ 绕 $x$ 轴旋转所成旋转体的体积.
]

#ezexam.question[
（本题满分12分）已知平面区域 $D={(x,y) | (x-1)^2+y^2<=1}$，计算二重积分 $integral.double_D abs(sqrt(x^2+y^2)-1)dif x dif y$.
]

#ezexam.question[
（本题满分12分）设函数 $f(x)$ 在 $[-a,a]$ 上具有2阶连续导数. 证明：

（1）若 $f(0)=0$，则存在 $xi in (-a,a)$，使 $f''(xi)=(f(a)+f(-a))/a^2$；

（2）若 $f(x)$ 在 $(-a,a)$ 内取得极值，则存在 $eta in (-a,a)$，使 $abs(f''(eta))>=abs(f(a)-f(-a))/(2a^2)$.
]

#ezexam.question[
（本题满分12分）设矩阵 $A$ 满足：对任意 $x_1,x_2,x_3$ 均有 $A mat(x_1;x_2;x_3)=mat(x_1+x_2+x_3;2x_1-x_2+x_3;x_2-x_3)$.

（1）求 $A$；

（2）求可逆矩阵 $P$ 与对角矩阵 $Lambda$，使 $P^(-1)A P=Lambda$.
]

#ezexam.question[
（本题满分12分）设随机变量 $X$ 的概率密度为 $f(x)=e^x/(1+e^x)^2$，$-infinity<x<+infinity$，令 $Y=e^X$.

（1）求 $X$ 的分布函数；

（2）求 $Y$ 的概率密度；

（3）$Y$ 的期望是否存在？
]

