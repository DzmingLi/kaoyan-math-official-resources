#import "../template.typ": exam
#show: exam.with(year: 2018, subject: "一")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(true)


= 一、选择题：1—8小题，每小题4分，共32分.在每小题给出的四个选项中，只有一项符合题目要求，把所选项前的字母填在题后的括号内.

#ezexam.question[
下列函数中，在 $x=0$ 处不可导的是（　）.
#choices([$f(x)=abs(x) sin abs(x)$], [$f(x)=abs(x) sin sqrt(abs(x))$], [$f(x)=cos abs(x)$], [$f(x)=cos sqrt(abs(x))$])
#ezexam.solution(show-number: false)[
D.
]
]

#ezexam.question[
过点 $(1,0,0)$、$(0,1,0)$，且与曲面 $z=x^2+y^2$ 相切的平面为（　）.
#choices([$z=0$ 与 $x+y-z=1$], [$z=0$ 与 $2x+2y-z=2$], [$x=y$ 与 $x+y-z=1$], [$x=y$ 与 $2x+2y-z=2$])
#ezexam.solution(show-number: false)[
B.
]
]

#ezexam.question[
$sum_(n=0)^infinity (-1)^n (2n+3)/((2n+1)!)=$（　）.
#choices([$sin 1+cos 1$], [$2sin 1+cos 1$], [$2sin 1+2cos 1$], [$2sin 1+3cos 1$])
#ezexam.solution(show-number: false)[
B.
]
]

#ezexam.question[
设 $M=integral_(-pi/2)^(pi/2) (1+x)^2/(1+x^2) dif x$，$N=integral_(-pi/2)^(pi/2) (1+x)/e^x dif x$，$K=integral_(-pi/2)^(pi/2) (1+sqrt(cos x)) dif x$，则（　）.
#choices([$M>N>K$], [$M>K>N$], [$K>M>N$], [$K>N>M$])
#ezexam.solution(show-number: false)[
C.
]
]

#ezexam.question[
下列矩阵中，与矩阵 $mat(1,1,0;0,1,1;0,0,1)$ 相似的为（　）.
#choices([$mat(1,1,-1;0,1,1;0,0,1)$], [$mat(1,0,-1;0,1,1;0,0,1)$], [$mat(1,1,-1;0,1,0;0,0,1)$], [$mat(1,0,-1;0,1,0;0,0,1)$])
#ezexam.solution(show-number: false)[
A.
]
]

#ezexam.question[
设 $A,B$ 为 $n$ 阶矩阵，记 $r(X)$ 为矩阵 $X$ 的秩，$(X quad Y)$ 表示分块矩阵，则（　）.
#choices([$r(A quad A B)=r(A)$], [$r(A quad B A)=r(A)$], [$r(A quad B)=max{r(A),r(B)}$], [$r(A quad B)=r(A^"T" B^"T")$])
#ezexam.solution(show-number: false)[
A.
]
]

#ezexam.question[
设随机变量 $X$ 的概率密度 $f(x)$ 满足 $f(1+x)=f(1-x)$，且 $integral_0^2 f(x) dif x=0.6$，则 $P{X<0}=$（　）.
#choices([0.2], [0.3], [0.4], [0.5])
#ezexam.solution(show-number: false)[
A.
]
]

#ezexam.question[
设总体 $X$ 服从正态分布 $N(mu,sigma^2)$，$x_1,x_2,dots,x_n$ 是来自总体 $X$ 的简单随机样本.据此样本检验假设 $H_0:mu=mu_0$，$H_1:mu!=mu_0$，则（　）.
#choices(
[如果在检验水平 $alpha=0.05$ 下拒绝 $H_0$，那么在检验水平 $alpha=0.01$ 下必拒绝 $H_0$.],
[如果在检验水平 $alpha=0.05$ 下拒绝 $H_0$，那么在检验水平 $alpha=0.01$ 下必接受 $H_0$.],
[如果在检验水平 $alpha=0.05$ 下接受 $H_0$，那么在检验水平 $alpha=0.01$ 下必拒绝 $H_0$.],
[如果在检验水平 $alpha=0.05$ 下接受 $H_0$，那么在检验水平 $alpha=0.01$ 下必接受 $H_0$.])
#ezexam.solution(show-number: false)[
D.
]
]

= 二、填空题：9—14小题，每小题4分，共24分.把答案填在题中横线上.

#ezexam.question[
若 $lim_(x->0) ((1-tan x)/(1+tan x))^(1/(sin k x))=e$，则 $k=$#fillin(len: 2.97656em)[].
#ezexam.solution(show-number: false)[
$-2$.
]
]

#ezexam.question[
设函数 $f(x)$ 具有 2 阶连续导数.若曲线 $y=f(x)$ 过点 $(0,0)$ 且与曲线 $y=2^x$ 在点 $(1,2)$ 处相切，则 $integral_0^1 x f''(x) dif x=$#fillin(len: 2.97656em)[].
#ezexam.solution(show-number: false)[
$2(ln 2-1)$.
]
]

#ezexam.question[
设 $F(x,y,z)=x y bold(i)-y z bold(j)+z x bold(k)$，则 $op("rot") F(1,1,0)=$#fillin(len: 2.97656em)[].
#ezexam.solution(show-number: false)[
$bold(i)-bold(k)$.
]
]

#ezexam.question[
设 $L$ 为球面 $x^2+y^2+z^2=1$ 与平面 $x+y+z=0$ 的交线，则 $integral.cont_L x y dif s=$#fillin(len: 2.97656em)[].
#ezexam.solution(show-number: false)[
$-pi/3$.
]
]

#ezexam.question[
设 2 阶矩阵 $A$ 有两个不同特征值，$alpha_1,alpha_2$ 是 $A$ 的线性无关的特征向量，且满足 $A^2(alpha_1+alpha_2)=alpha_1+alpha_2$，则 $|A|=$#fillin(len: 2.97656em)[].
#ezexam.solution(show-number: false)[
$-1$.
]
]

#ezexam.question[
设随机事件 $A$ 与 $B$ 相互独立，$A$ 与 $C$ 相互独立，$B C=emptyset$.若 $P(A)=P(B)=1/2$，$P(A C bar.v A B union C)=1/4$，则 $P(C)=$#fillin(len: 2.97656em)[].
#ezexam.solution(show-number: false)[
$1/4$.
]
]

= 三、解答题：15—23小题，共94分.解答应写出文字说明、证明过程或演算步骤.

#ezexam.question[
（本题满分 10 分）

求不定积分 $integral e^(2x) arctan sqrt(e^x-1) dif x$.
#ezexam.solution(show-number: false)[
解
$ integral e^(2x) arctan sqrt(e^x-1) dif x
 =1/2 integral arctan sqrt(e^x-1) dif e^(2x) \
 =1/2 e^(2x) arctan sqrt(e^x-1)-1/4 integral e^(2x)/sqrt(e^x-1) dif x. $
又
$ integral e^(2x)/sqrt(e^x-1) dif x=integral e^x/sqrt(e^x-1) dif e^x \
 =integral sqrt(e^x-1) dif e^x+integral 1/sqrt(e^x-1) dif e^x \
 =2/3 (e^x-1)sqrt(e^x-1)+2sqrt(e^x-1)+C, $
所以
$ integral e^(2x) arctan sqrt(e^x-1) dif x \
 =1/2 e^(2x) arctan sqrt(e^x-1)-1/6 (e^x+2)sqrt(e^x-1)+C. $
]
]

#ezexam.question[
（本题满分 10 分）

将长为 2 m 的铁丝分成三段，依次围成圆、正方形与正三角形.三个图形的面积之和是否存在最小值？若存在，求出最小值.
#ezexam.solution(show-number: false)[
解　设圆的半径为 $x$，正方形与正三角形的边长分别为 $y$ 和 $z$，则问题化为：函数 $f(x,y,z)=pi x^2+y^2+sqrt(3)/4 z^2$ 在条件 $2pi x+4y+3z=2$（$x>0,y>0,z>0$）下是否存在最小值.

令 $L(x,y,z,lambda)=pi x^2+y^2+sqrt(3)/4 z^2+lambda(2pi x+4y+3z-2)$.

考虑方程组
$ cases(
 (partial L)/(partial x)=2pi x+2pi lambda=0,
 (partial L)/(partial y)=2y+4lambda=0,
 (partial L)/(partial z)=sqrt(3)/2 z+3lambda=0,
 (partial L)/(partial lambda)=2pi x+4y+3z-2=0,
) $
解得
$ x_0=1/(pi+4+3sqrt(3)),quad y_0=2/(pi+4+3sqrt(3)),quad z_0=(2sqrt(3))/(pi+4+3sqrt(3)), \
 f(x_0,y_0,z_0)=1/(pi+4+3sqrt(3)). $
又当 $2pi x+4y+3z=2$ 且 $x y z=0$ 时，$f(x,y,z)$ 的最小值为
$ f(0,2/(4+3sqrt(3)),(2sqrt(3))/(4+3sqrt(3)))=1/(4+3sqrt(3)), $
所以三个图形的面积之和存在最小值，最小值为
$ f(x_0,y_0,z_0)=1/(pi+4+3sqrt(3)) quad ("单位：m"^2). $
]
]

#ezexam.question[
（本题满分 10 分）

设 $Sigma$ 是曲面 $x=sqrt(1-3y^2-3z^2)$ 的前侧，计算曲面积分
$ I=integral.double_Sigma x dif y dif z+(y^3+2) dif z dif x+z^3 dif x dif y. $
#ezexam.solution(show-number: false)[
解　设 $Sigma_1$ 为平面 $x=0$ 被 $cases(3y^2+3z^2=1,x=0)$ 所围部分的后侧，$Omega$ 为 $Sigma$ 与 $Sigma_1$ 所围的立体.根据高斯公式，
$ integral.double_(Sigma+Sigma_1) x dif y dif z+(y^3+2) dif z dif x+z^3 dif x dif y \
 =integral.triple_Omega (1+3y^2+3z^2) dif x dif y dif z. $
设 $y=r cos theta,z=r sin theta$，则
$ integral.triple_Omega (1+3y^2+3z^2) dif x dif y dif z \
 =integral_0^(2pi) dif theta integral_0^(sqrt(3)/3) dif r integral_0^sqrt(1-3r^2) (1+3r^2)r dif x \
 =2pi integral_0^(sqrt(3)/3) r(1+3r^2)sqrt(1-3r^2) dif r. $
设 $sqrt(1-3r^2)=t$，则
$ 2pi integral_0^(sqrt(3)/3) r(1+3r^2)sqrt(1-3r^2) dif r \
 =(2pi)/3 integral_0^1 (2-t^2)t^2 dif t=(14pi)/45. $
又 $integral.double_(Sigma_1) x dif y dif z+(y^3+2) dif z dif x+z^3 dif x dif y=0$，所以 $I=(14pi)/45$.
]
]

#ezexam.question[
（本题满分 10 分）

已知微分方程 $y'+y=f(x)$，其中 $f(x)$ 是 $bold(upright(R))$ 上的连续函数.

（Ⅰ）若 $f(x)=x$，求方程的通解；

（Ⅱ）若 $f(x)$ 是周期为 $T$ 的函数，证明：方程存在唯一的以 $T$ 为周期的解.
#ezexam.solution(show-number: false)[
解　（Ⅰ）当 $f(x)=x$ 时，方程化为 $y'+y=x$，其通解为
$ y=e^(-x)(C+integral x e^x dif x) \
 =e^(-x)(C+x e^x-e^x)=C e^(-x)+x-1. $
（Ⅱ）方程 $y'+y=f(x)$ 的通解为
$ y=e^(-integral_0^x dif t)(C+integral_0^x e^(integral_0^t dif s) f(t) dif t), $
即 $y=e^(-x)(C+integral_0^x e^t f(t) dif t)$.

由 $y(x)=e^(-x)(C+integral_0^x e^t f(t) dif t)$，得
$ y(x+T)-y(x)=e^(-x)[(1/e^T-1)C+1/e^T integral_0^(x+T) e^t f(t) dif t-integral_0^x e^t f(t) dif t]. $
因为 $f(x)$ 是周期为 $T$ 的连续函数，所以
$ 1/e^T integral_0^(x+T) e^t f(t) dif t \
 =1/e^T integral_0^T e^t f(t) dif t+1/e^T integral_T^(x+T) e^t f(t) dif t \
 =1/e^T integral_0^T e^t f(t) dif t+1/e^T integral_0^x e^(u+T) f(u+T) dif u \
 =1/e^T integral_0^T e^t f(t) dif t+integral_0^x e^t f(t) dif t. $
从而
$ y(x+T)-y(x)=e^(-x)[(1/e^T-1)C+1/e^T integral_0^T e^t f(t) dif t]. $
所以，当且仅当 $C=1/(e^T-1) integral_0^T e^t f(t) dif t$ 时，$y(x+T)-y(x)=0$.故方程存在唯一的以 $T$ 为周期的解.
]
]

#ezexam.question[
（本题满分 10 分）

设数列 $\{x_n\}$ 满足：$x_1>0$，$x_n e^(x_(n+1))=e^(x_n)-1$（$n=1,2,dots$）.证明 $\{x_n\}$ 收敛，并求 $lim_(n->infinity) x_n$.
#ezexam.solution(show-number: false)[
解　由于 $x_1!=0$，所以 $e^(x_2)=(e^(x_1)-1)/x_1$.

根据微分中值定理，存在 $xi in (0,x_1)$，使得 $(e^(x_1)-1)/x_1=e^xi$.所以 $e^(x_2)=e^xi$，故 $0<x_2<x_1$.

假设 $0<x_(n+1)<x_n$，则
$ e^(x_(n+2))=(e^(x_(n+1))-1)/x_(n+1)=e^eta quad (0<eta<x_(n+1)), $
所以 $0<x_(n+2)<x_(n+1)$.

故 $\{x_n\}$ 是单调减少的数列，且有下界，从而 $\{x_n\}$ 收敛.

设 $lim_(n->infinity) x_n=a$，得 $a e^a=e^a-1$，易知 $a=0$ 为其解.

令 $f(x)=x e^x-e^x+1$，则 $f'(x)=x e^x$.

当 $x>0$ 时，$f'(x)>0$，函数 $f(x)$ 在 $[0,+infinity)$ 上单调增加，所以 $a=0$ 是方程 $a e^a=e^a-1$ 在 $[0,+infinity)$ 上的唯一解，故 $lim_(n->infinity) x_n=0$.
]
]

#ezexam.question[
（本题满分 11 分）

设实二次型 $f(x_1,x_2,x_3)=(x_1-x_2+x_3)^2+(x_2+x_3)^2+(x_1+a x_3)^2$，其中 $a$ 是参数.

（Ⅰ）求 $f(x_1,x_2,x_3)=0$ 的解；

（Ⅱ）求 $f(x_1,x_2,x_3)$ 的规范形.
#ezexam.solution(show-number: false)[
解　（Ⅰ）$f(x_1,x_2,x_3)=0$ 当且仅当
$ cases(x_1-x_2+x_3=0,x_2+x_3=0,x_1+a x_3=0). $
对方程组的系数矩阵施以初等行变换得
$ mat(1,-1,1;0,1,1;1,0,a) arrow mat(1,0,2;0,1,1;0,0,a-2). $
当 $a!=2$ 时，方程组只有零解，故 $f(x_1,x_2,x_3)=0$ 的解为 $bold(x)=0$.

当 $a=2$ 时，方程组有无穷多解，通解为 $bold(x)=k mat(-2;-1;1)$，$k$ 为任意常数，故 $f(x_1,x_2,x_3)=0$ 的解是 $bold(x)=k mat(-2;-1;1)$，$k$ 为任意常数.

（Ⅱ）由（Ⅰ）知当 $a!=2$ 时，$f(x_1,x_2,x_3)$ 正定，$f(x_1,x_2,x_3)$ 的规范形为 $y_1^2+y_2^2+y_3^2$.

当 $a=2$ 时，
$ f(x_1,x_2,x_3)=2x_1^2+2x_2^2+6x_3^2-2x_1 x_2+6x_1 x_3 \
 =2(x_1-1/2 x_2+3/2 x_3)^2+3/2 (x_2+x_3)^2, $
所以 $f(x_1,x_2,x_3)$ 的规范形为 $y_1^2+y_2^2$.
]
]

#ezexam.question[
（本题满分 11 分）

已知 $a$ 是常数，且矩阵 $A=mat(1,2,a;1,3,0;2,7,-a)$ 可经初等列变换化为矩阵 $B=mat(1,a,2;0,1,1;-1,1,1)$.

（Ⅰ）求 $a$；

（Ⅱ）求满足 $A P=B$ 的可逆矩阵 $P$.
#ezexam.solution(show-number: false)[
解　（Ⅰ）对矩阵 $A,B$ 分别施以初等行变换得
$ A=mat(1,2,a;1,3,0;2,7,-a) arrow mat(1,0,3a;0,1,-a;0,0,0), \
 B=mat(1,a,2;0,1,1;-1,1,1) arrow mat(1,0,0;0,1,1;0,0,2-a). $
由题设知 $a=2$.

（Ⅱ）由（Ⅰ）知 $a=2$.对矩阵 $(A bar.v B)$ 施以初等行变换得
$ (A bar.v B)=mat(1,2,2,1,2,2;1,3,0,0,1,1;2,7,-2,-1,1,1;augment:#3) \
 arrow mat(1,0,6,3,4,4;0,1,-2,-1,-1,-1;0,0,0,0,0,0;augment:#3). $
记 $B=(beta_1,beta_2,beta_3)$，由于
$ A mat(-6;2;1)=0,quad A mat(3;-1;0)=beta_1, \
 A mat(4;-1;0)=beta_2,quad A mat(4;-1;0)=beta_3, $
故 $A X=B$ 的解为
$ X=mat(3-6k_1,4-6k_2,4-6k_3;-1+2k_1,-1+2k_2,-1+2k_3;k_1,k_2,k_3), $
其中 $k_1,k_2,k_3$ 为任意常数.

由于 $|X|=k_3-k_2$，所以满足 $A P=B$ 的可逆矩阵为
$ P=mat(3-6k_1,4-6k_2,4-6k_3;-1+2k_1,-1+2k_2,-1+2k_3;k_1,k_2,k_3),quad k_2!=k_3. $
]
]

#ezexam.question[
（本题满分 11 分）

设随机变量 $X$ 与 $Y$ 相互独立，$X$ 的概率分布为 $P{X=1}=P{X=-1}=1/2$，$Y$ 服从参数为 $lambda$ 的泊松分布.令 $Z=X Y$.

（Ⅰ）求 $op("Cov")(X,Z)$；

（Ⅱ）求 $Z$ 的概率分布.
#ezexam.solution(show-number: false)[
解　（Ⅰ）由题设可得
$ E X=(-1)times 1/2+1times 1/2=0, \
 E(X Z)=E(X^2 Y)=E X^2 dot E Y=lambda. $
所以 $op("Cov")(X,Z)=E(X Z)-E X dot E Z=lambda$.

（Ⅱ）$Z$ 的所有可能取值为全体整数值，且
$ P{Z=0}=P{Y=0}=e^(-lambda). $
对于 $n=plus.minus 1,plus.minus 2,dots$，有
$ P{Z=n}=P{X Y=n} \
 =P{X=n/abs(n),Y=abs(n)} \
 =P{X=n/abs(n)}P{Y=abs(n)} \
 =e^(-lambda) lambda^abs(n)/(2 dot abs(n)!). $
]
]

#ezexam.question[
（本题满分 11 分）

设总体 $X$ 的概率密度为
$ f(x;sigma)=1/(2sigma)e^(-abs(x)/sigma),quad -infinity<x<+infinity, $
其中 $sigma in (0,+infinity)$ 为未知参数，$X_1,X_2,dots,X_n$ 为来自总体 $X$ 的简单随机样本.记 $sigma$ 的最大似然估计量为 $hat(sigma)$.

（Ⅰ）求 $hat(sigma)$；

（Ⅱ）求 $E hat(sigma)$ 和 $D hat(sigma)$.
#ezexam.solution(show-number: false)[
解　（Ⅰ）设 $x_1,x_2,dots,x_n$ 为样本观测值，似然函数为
$ L(sigma)=product_(i=1)^n f(x_i;sigma)=1/(2^n sigma^n)e^(-1/sigma sum_(i=1)^n abs(x_i)), $
则 $ln L(sigma)=-n ln 2-n ln sigma-1/sigma sum_(i=1)^n abs(x_i)$.

令 $(dif ln L(sigma))/(dif sigma)=-n/sigma+1/sigma^2 sum_(i=1)^n abs(x_i)=0$，解得
$ sigma=1/n sum_(i=1)^n abs(x_i), $
所以 $hat(sigma)=1/n sum_(i=1)^n abs(X_i)$.

（Ⅱ）由于
$ E abs(X)=integral_(-infinity)^(+infinity) abs(x)f(x;sigma) dif x \
 =integral_(-infinity)^(+infinity) abs(x)1/(2sigma)e^(-abs(x)/sigma) dif x \
 =1/sigma integral_0^(+infinity) x e^(-x/sigma) dif x=sigma, $
所以
$ E hat(sigma)=1/n sum_(i=1)^n E abs(X_i)=E abs(X)=sigma. $
又因为
$ E abs(X)^2=E X^2=integral_(-infinity)^(+infinity) x^2 f(x;sigma) dif x \
 =integral_(-infinity)^(+infinity) x^2 1/(2sigma)e^(-abs(x)/sigma) dif x \
 =1/sigma integral_0^(+infinity) x^2 e^(-x/sigma) dif x=2sigma^2, \
 D(abs(X))=E abs(X)^2-(E abs(X))^2=sigma^2, $
所以
$ D hat(sigma)=1/n^2 sum_(i=1)^n D(abs(X_i))=(D(abs(X)))/n=sigma^2/n. $
]
]
