#import "../template.typ": exam
#show: exam.with(year: 2013, subject: "一")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#ezexam.answer-state.update(true)


= 一、选择题：1—8小题，每小题4分，共32分. 在每小题给出的四个选项中，只有一项符合题目要求，把所选项前的字母填在题后的括号内.

#ezexam.question[
若 $lim_(x->0)(x-arctan x)/x^k=c$，其中 $k,c$ 为常数，且 $c!=0$，则
#choices([$k=2,c=-1/2$.],[$k=2,c=1/2$.],[$k=3,c=-1/3$.],[$k=3,c=1/3$.])
#ezexam.solution(show-number: false)[
D.
]
]

#ezexam.question[
曲面 $x^2+cos(x y)+y z+x=0$ 在点 $(0,1,-1)$ 处的切平面方程为
#choices([$x-y+z=-2$.],[$x+y+z=0$.],[$x-2y+z=-3$.],[$x-y-z=0$.])
#ezexam.solution(show-number: false)[
A.
]
]

#ezexam.question[
设 $f(x)=|x-1/2|$，$b_n=2integral_0^1 f(x)sin(n pi x)dif x$，则级数 $sum_(n=1)^infinity b_n sin(n pi x)$ 在 $x=-9/4$ 处的和为
#choices([$3/4$.],[$1/4$.],[$-1/4$.],[$-3/4$.])
#ezexam.solution(show-number: false)[
C.
]
]

#ezexam.question[
设 $L_1,L_2,L_3,L_4$ 分别为圆周 $x^2+y^2=1$、圆周 $x^2+y^2=2$、椭圆 $x^2+2y^2=2$ 和椭圆 $2x^2+y^2=2$，方向均为逆时针方向.记 $I_i=integral_(L_i)(y+y^3/6)dif x+(2x-x^3/3)dif y$，则 $I_1,I_2,I_3,I_4$ 中最大的为
#choices([$I_1$.],[$I_2$.],[$I_3$.],[$I_4$.])
#ezexam.solution(show-number: false)[
D.
]
]

#ezexam.question[
设 $A,B,C$ 均为 $n$ 阶矩阵，且 $A B=C$.若 $B$ 可逆，则
#choices([$C$ 的行向量组与 $A$ 的行向量组等价.],[$C$ 的列向量组与 $A$ 的列向量组等价.],[$C$ 的行向量组与 $B$ 的行向量组等价.],[$C$ 的列向量组与 $B$ 的列向量组等价.])
#ezexam.solution(show-number: false)[
B.
]
]

#ezexam.question[
矩阵 $mat(1,a,1;a,b,a;1,a,1)$ 与 $mat(2,0,0;0,b,0;0,0,0)$ 相似的充分必要条件为
#choices([$a=0,b=2$.],[$a=0,b$ 为任意常数.],[$a=2,b=0$.],[$a=2,b$ 为任意常数.])
#ezexam.solution(show-number: false)[
B.
]
]

#ezexam.question[
设随机变量 $X_1,X_2,X_3$ 的分布分别为 $N(0,1),N(0,2^2),N(5,3^2)$，记 $p_i=P{-2<=X_i<=2}(i=1,2,3)$，则
#choices([$p_1>p_2>p_3$.],[$p_2>p_1>p_3$.],[$p_3>p_1>p_2$.],[$p_1>p_3>p_2$.])
#ezexam.solution(show-number: false)[
A.
]
]

#ezexam.question[
设随机变量 $X tilde.op t(n),Y tilde.op F(1,n)$，给定 $alpha (0<alpha<0.5)$，常数 $c$ 满足 $P{X>c}=alpha$，则 $P{Y>c^2}=$
#choices([$alpha$.],[$1-alpha$.],[$2alpha$.],[$1-2alpha$.])
#ezexam.solution(show-number: false)[
C.
]
]

= 二、填空题：9—14小题，每小题4分，共24分. 把答案填在题中横线上.

#ezexam.question[
设函数 $y=f(x)$ 由方程 $y-x=e^(x(1-y))$ 确定，则 $lim_(n->infinity)n[f(1/n)-1]=$#h(3em).
#ezexam.solution(show-number: false)[
1.
]
]

#ezexam.question[
设 $y_1=e^(3x)-x e^(2x),y_2=e^x-x e^(2x),y_3=-x e^(2x)$ 是某二阶常系数非齐次线性微分方程的3个解，则该方程的通解为#h(3em).
#ezexam.solution(show-number: false)[
$y=C_1 e^x+C_2 e^(3x)-x e^(2x)$.
]
]

#ezexam.question[
设曲线的参数方程为 $cases(x=sin t,y=t sin t+cos t)$，则 $((dif^2 y)/(dif x^2))|_(t=pi/4)=$#h(3em).
#ezexam.solution(show-number: false)[
$sqrt(2)$.
]
]

#ezexam.question[
$integral_1^infinity (ln x)/(1+x)^2 dif x=$#h(3em).
#ezexam.solution(show-number: false)[
$ln 2$.
]
]

#ezexam.question[
设 $A=(a_(i j))$ 是3阶非零矩阵，$A_(i j)$ 为元素 $a_(i j)$ 的代数余子式，若 $a_(i j)+A_(i j)=0 (i,j=1,2,3)$，则 $|A|=$#h(3em).
#ezexam.solution(show-number: false)[
$-1$.
]
]

#ezexam.question[
设随机变量 $Y$ 服从参数为1的指数分布，$a>0$，则 $P{Y<=a+1 bar Y>a}=$#h(3em).
#ezexam.solution(show-number: false)[
$1-1/e$.
]
]

= 三、解答题：15—23小题，共94分. 解答应写出文字说明、证明过程或演算步骤.

#ezexam.question[
（本题满分10分）设 $f(x)=integral_1^x (ln(t+1))/t dif t$，求 $integral_0^1 f(x)/sqrt(x)dif x$.
#ezexam.solution(show-number: false)[
由题设可知 $f'(x)=(ln(x+1))/x,f(1)=0$.由分部积分法得
$ integral_0^1 f(x)/sqrt(x)dif x&=2sqrt(x)f(x)|_0^1-2integral_0^1 sqrt(x)f'(x)dif x \
&=-2integral_0^1 (ln(x+1))/sqrt(x)dif x \
&=-4sqrt(x)ln(x+1)|_0^1+4integral_0^1 sqrt(x)/(x+1)dif x \
&=-4ln 2+4integral_0^1 sqrt(x)/(x+1)dif x. $
令 $u=sqrt(x)$，则
$ integral_0^1 sqrt(x)/(x+1)dif x&=2integral_0^1 u^2/(u^2+1)dif u \
&=2(u-arctan u)|_0^1=2-pi/2. $
因此
$ integral_0^1 f(x)/sqrt(x)dif x=8-2pi-4ln 2. $
]
]

#ezexam.question[
（本题满分10分）设幂级数 $sum_(n=0)^infinity a_n x^n$ 的和函数为 $S(x)$，其中 $a_0=3,a_1=1$，且 $a_(n-2)-n(n-1)a_n=0 (n>=2)$.

（Ⅰ）证明 $S''(x)-S(x)=0$；

（Ⅱ）求 $S(x)$ 的表达式.
#ezexam.solution(show-number: false)[
（Ⅰ）由 $a_0=3,a_1=1$ 及 $a_(n-2)=n(n-1)a_n$ 得
$ a_(2n)=3/((2n)!),quad a_(2n+1)=1/((2n+1)!). $
幂级数 $sum_(n=0)^infinity a_n x^n$ 的收敛半径为 $R=infinity$，故
$ S'(x)=sum_(n=1)^infinity n a_n x^(n-1),quad S''(x)=sum_(n=2)^infinity n(n-1)a_n x^(n-2). $
于是
$ S''(x)=sum_(n=2)^infinity a_(n-2)x^(n-2)=sum_(n=0)^infinity a_n x^n=S(x), $
即 $S''(x)-S(x)=0$.

（Ⅱ）微分方程的特征方程为 $r^2-1=0$，特征根为 $r_1=1,r_2=-1$，通解为
$ S(x)=C_1 e^x+C_2 e^(-x). $
由 $S(0)=a_0=3,S'(0)=a_1=1$ 得 $C_1+C_2=3,C_1-C_2=1$，所以 $C_1=2,C_2=1$.因此
$ S(x)=2e^x+e^(-x). $
]
]

#ezexam.question[
（本题满分10分）求函数 $f(x,y)=(y+x^3/3)e^(x+y)$ 的极值.
#ezexam.solution(show-number: false)[
$ f_x'(x,y)=(x^2+y+x^3/3)e^(x+y),quad f_y'(x,y)=(1+y+x^3/3)e^(x+y). $
由 $f_x'=0,f_y'=0$ 得驻点 $(-1,-2/3)$ 与 $(1,-4/3)$.

在点 $(-1,-2/3)$ 处，$A=f_(x x)''=-e^(-5/3),B=f_(x y)''=e^(-5/3),C=f_(y y)''=e^(-5/3)$.由于 $A C-B^2<0$，故该点不是极值点.

在点 $(1,-4/3)$ 处，$A=3e^(-1/3),B=e^(-1/3),C=e^(-1/3)$，$A C-B^2=2e^(-2/3)>0$，且 $A>0$，所以 $f(x,y)$ 在该点取得极小值
$ f(1,-4/3)=-e^(-1/3). $
]
]

#ezexam.question[
（本题满分10分）设 $f(x)$ 是区间 $[-1,1]$ 上具有二阶导数的奇函数，且 $f(1)=1$.证明：

（Ⅰ）存在 $xi in (0,1)$，使得 $f'(xi)=1$；

（Ⅱ）存在 $eta in (-1,1)$，使得 $f''(eta)+f'(eta)=1$.
#ezexam.solution(show-number: false)[
（Ⅰ）因为 $f(x)$ 是奇函数，所以 $f(0)=0$.由拉格朗日中值定理，存在 $xi in (0,1)$，使得
$ f'(xi)=(f(1)-f(0))/(1-0)=1. $

（Ⅱ）由于 $f(x)$ 是奇函数，故 $f'(x)$ 是偶函数，即 $f'(-xi)=f'(xi)=1$.

令 $F(x)=[f'(x)-1]e^x$，则 $F(-xi)=F(xi)=0$.由罗尔定理，存在 $eta in (-xi,xi) subset (-1,1)$，使得
$ F'(eta)=e^eta[f''(eta)+f'(eta)-1]=0. $
因 $e^eta!=0$，故 $f''(eta)+f'(eta)=1$.
]
]

#ezexam.question[
（本题满分10分）设直线 $L$ 过点 $A(1,0,0)$ 和 $B(0,1,1)$，将 $L$ 绕 $z$ 轴旋转一周得到曲面 $Sigma$，由 $Sigma$ 与平面 $z=0,z=2$ 所围成的立体为 $Omega$.求：

（Ⅰ）曲面 $Sigma$ 的方程；

（Ⅱ）立体 $Omega$ 的形心坐标.
#ezexam.solution(show-number: false)[
（Ⅰ）直线 $L$ 的方程为 $(x-1)/1=y/(-1)=z/(-1)$，参数方程为
$ x=1+t,quad y=-t,quad z=-t. $
曲面 $Sigma$ 上点的坐标满足 $x^2+y^2=(1+t)^2+t^2,z=-t$，消去 $t$ 得
$ x^2+y^2-2z^2+2z=1. $

（Ⅱ）由于 $Omega$ 关于 $z$ 轴对称，故形心坐标中的 $overline(x)=overline(y)=0$.

记 $D_z={(x,y) bar x^2+y^2<=2z^2-2z+1}$，则
$ integral.triple_Omega dif x dif y dif z&=integral_0^2 dif z integral.double_(D_z)dif x dif y \
&=pi integral_0^2(2z^2-2z+1)dif z=(10pi)/3, $
$ integral.triple_Omega z dif x dif y dif z&=integral_0^2 z dif z integral.double_(D_z)dif x dif y \
&=pi integral_0^2 z(2z^2-2z+1)dif z=(14pi)/3. $
于是 $overline(z)=7/5$，故形心坐标为 $(0,0,7/5)$.
]
]

#ezexam.question[
（本题满分11分）设 $A=mat(1,a;1,0),B=mat(0,1;1,b)$.问 $a,b$ 为何值时，存在矩阵 $C$ 使得 $A C-C A=B$，并求所有矩阵 $C$.
#ezexam.solution(show-number: false)[
令 $C=mat(x_1,x_2;x_3,x_4)$，则 $A C-C A=B$ 等价于方程组
$ cases(-x_2+a x_3=0,-a x_1+x_2+a x_4=1,x_1-x_3-x_4=1,x_2-a x_3=b). $
其增广矩阵经初等行变换化为
$ &mat(0,-1,a,0,0;-a,1,0,a,1;1,0,-1,-1,1;0,1,-a,0,b,augment: #4) \
&arrow.r mat(1,0,-1,-1,1;0,1,-a,0,0;0,0,0,0,a+1;0,0,0,0,b,augment: #4). $
当 $a!=-1$ 或 $b!=0$ 时，方程组无解.当 $a=-1,b=0$ 时，方程组的通解为
$ mat(x_1;x_2;x_3;x_4)=mat(1;0;0;0)+k_1 mat(1;-1;1;0)+k_2 mat(1;0;0;1). $
故当且仅当 $a=-1,b=0$ 时，存在矩阵 $C$，且所有矩阵为
$ C=mat(1+k_1+k_2,-k_1;k_1,k_2), $
其中 $k_1,k_2$ 为任意常数.
]
]

#ezexam.question[
（本题满分11分）设二次型 $f(x_1,x_2,x_3)=2(a_1 x_1+a_2 x_2+a_3 x_3)^2+(b_1 x_1+b_2 x_2+b_3 x_3)^2$，记 $alpha=(a_1,a_2,a_3)^T,beta=(b_1,b_2,b_3)^T$.

（Ⅰ）证明二次型 $f$ 的矩阵为 $A=2alpha alpha^T+beta beta^T$；

（Ⅱ）若 $alpha,beta$ 为正交单位向量，求二次型 $f$ 的标准形.
#ezexam.solution(show-number: false)[
（Ⅰ）记 $x=(x_1,x_2,x_3)^T$，则
$ f&=2(x^T alpha)(alpha^T x)+(x^T beta)(beta^T x) \
&=2x^T alpha alpha^T x+x^T beta beta^T x \
&=x^T(2alpha alpha^T+beta beta^T)x. $
由于 $2alpha alpha^T+beta beta^T$ 为对称矩阵，故二次型 $f$ 的矩阵为 $A=2alpha alpha^T+beta beta^T$.

（Ⅱ）由 $alpha^T alpha=beta^T beta=1,alpha^T beta=0$ 得
$ A alpha=2alpha,quad A beta=beta. $
所以 $A$ 的两个特征值为2和1.又
$ "r"(A)<="r"(2alpha alpha^T)+"r"(beta beta^T)<=2, $
故 $A$ 的另一个特征值为0.因此二次型 $f$ 的标准形为
$ 2y_1^2+y_2^2. $
]
]

#ezexam.question[
（本题满分11分）设随机变量 $X$ 的概率密度为 $f(x)=cases(x^2/9 & 0<x<3,0 & "其他")$，令 $Y=cases(2 & X<=1,X & 1<X<2,1 & X>=2)$.

（Ⅰ）求 $Y$ 的分布函数；

（Ⅱ）求概率 $P{X<=Y}$.
#ezexam.solution(show-number: false)[
（Ⅰ）当 $y<1$ 时，$F_Y(y)=0$；当 $1<=y<2$ 时，
$ F_Y(y)&=P{Y<=y}=P{Y=1}+P{1<Y<=y} \
&=P{X>=2}+P{1<X<=y} \
&=integral_2^3 x^2/9 dif x+integral_1^y x^2/9 dif x=(y^3+18)/27; $
当 $y>=2$ 时，$F_Y(y)=1$.因此
$ F_Y(y)=cases(0 & y<1,(y^3+18)/27 & 1<=y<2,1 & y>=2). $

（Ⅱ）$P{X<=Y}=P{X<2}=integral_0^2 x^2/9 dif x=8/27$.
]
]

#ezexam.question[
（本题满分11分）设总体 $X$ 的概率密度为
$ f(x;theta)=cases(theta^2/x^3 e^(-theta/x) & x>0,0 & "其他"), $
其中 $theta$ 为未知参数且大于零，$X_1,X_2,dots,X_n$ 为来自总体 $X$ 的简单随机样本.

（Ⅰ）求 $theta$ 的矩估计量；

（Ⅱ）求 $theta$ 的最大似然估计量.
#ezexam.solution(show-number: false)[
（Ⅰ）
$ E X &= integral_0^(+infinity)x dot theta^2/x^3 e^(-theta/x)dif x \ \
&= integral_0^(+infinity)theta^2/x^2 e^(-theta/x)dif x \ \
&= theta, $
所以 $theta$ 的矩估计量为 $hat(theta)=overline(X)$，其中 $overline(X)=1/n sum_(i=1)^n X_i$.

（Ⅱ）设 $x_1,x_2,dots,x_n$ 为样本观测值，似然函数为
$ L(theta)&=product_(i=1)^n f(x_i;theta) \
=cases(theta^(2n)/(x_1 x_2 dots x_n)^3 e^(-theta sum_(i=1)^n 1/x_i) & x_1,x_2,dots,x_n>0,0 & "其他"). $
当 $x_1,x_2,dots,x_n>0$ 时，
$ ln L(theta)=2n ln theta-theta sum_(i=1)^n 1/x_i-3sum_(i=1)^n ln x_i. $
令
$ (dif[ln L(theta)])/(dif theta)=(2n)/theta-sum_(i=1)^n 1/x_i=0, $
得 $theta$ 的最大似然估计值为 $hat(theta)=(2n)/(sum_(i=1)^n 1/x_i)$，所以 $theta$ 的最大似然估计量为
$ hat(theta)=(2n)/(sum_(i=1)^n 1/X_i). $
]
]

