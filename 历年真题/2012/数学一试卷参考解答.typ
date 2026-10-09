#import "../template.typ": exam
#show: exam.with(year: 2012, subject: "一", title: "2012年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#ezexam.answer-state.update(true)


= 一、选择题：1—8小题，每小题4分，共32分. 在每小题给出的四个选项中，只有一项符合题目要求，把所选项前的字母填在题后的括号内.

#ezexam.question[
曲线 $y=(x^2+x)/(x^2-1)$ 的渐近线的条数为
#choices([0.],[1.],[2.],[3.])
#ezexam.solution(show-number: false)[
C.
]
]

#ezexam.question[
设函数 $f(x)=(e^x-1)(e^(2x)-2) dots (e^(n x)-n)$，其中 $n$ 为正整数，则 $f'(0)=$
#choices([$(-1)^(n-1)(n-1)!$.],[$(-1)^n(n-1)!$.],[$(-1)^(n-1)n!$.],[$(-1)^n n!$.])
#ezexam.solution(show-number: false)[
A.
]
]

#ezexam.question[
如果函数 $f(x,y)$ 在点 $(0,0)$ 处连续，那么下列命题正确的是
#choices([若极限 $lim_((x,y)->(0,0))f(x,y)/(|x|+|y|)$ 存在，则 $f(x,y)$ 在点 $(0,0)$ 处可微.],[若极限 $lim_((x,y)->(0,0))f(x,y)/(x^2+y^2)$ 存在，则 $f(x,y)$ 在点 $(0,0)$ 处可微.],[若 $f(x,y)$ 在点 $(0,0)$ 处可微，则极限 $lim_((x,y)->(0,0))f(x,y)/(|x|+|y|)$ 存在.],[若 $f(x,y)$ 在点 $(0,0)$ 处可微，则极限 $lim_((x,y)->(0,0))f(x,y)/(x^2+y^2)$ 存在.])
#ezexam.solution(show-number: false)[
B.
]
]

#ezexam.question[
设 $I_k=integral_0^(k pi)e^(x^2)sin x dif x (k=1,2,3)$，则有
#choices([$I_1<I_2<I_3$.],[$I_3<I_2<I_1$.],[$I_2<I_3<I_1$.],[$I_2<I_1<I_3$.])
#ezexam.solution(show-number: false)[
D.
]
]

#ezexam.question[
设 $alpha_1=mat(0;0;c_1),alpha_2=mat(0;1;c_2),alpha_3=mat(1;-1;c_3),alpha_4=mat(-1;1;c_4)$，其中 $c_1,c_2,c_3,c_4$ 为任意常数，则下列向量组线性相关的为
#choices([$alpha_1,alpha_2,alpha_3$.],[$alpha_1,alpha_2,alpha_4$.],[$alpha_1,alpha_3,alpha_4$.],[$alpha_2,alpha_3,alpha_4$.])
#ezexam.solution(show-number: false)[
C.
]
]

#ezexam.question[
设 $A$ 为3阶矩阵，$P$ 为3阶可逆矩阵，且 $P^(-1)A P=mat(1,0,0;0,1,0;0,0,2)$.若 $P=(alpha_1,alpha_2,alpha_3),Q=(alpha_1+alpha_2,alpha_2,alpha_3)$，则 $Q^(-1)A Q=$
#choices([$mat(1,0,0;0,2,0;0,0,1)$.],[$mat(1,0,0;0,1,0;0,0,2)$.],[$mat(2,0,0;0,1,0;0,0,2)$.],[$mat(2,0,0;0,2,0;0,0,1)$.])
#ezexam.solution(show-number: false)[
B.
]
]

#ezexam.question[
设随机变量 $X$ 与 $Y$ 相互独立，且分别服从参数为1与参数为4的指数分布，则 $P{X<Y}=$
#choices([$1/5$.],[$1/3$.],[$2/3$.],[$4/5$.])
#ezexam.solution(show-number: false)[
A.
]
]

#ezexam.question[
将长度为1 m的木棒随机地截成两段，则两段长度的相关系数为
#choices([1.],[$1/2$.],[$-1/2$.],[$-1$.])
#ezexam.solution(show-number: false)[
D.
]
]

= 二、填空题：9—14小题，每小题4分，共24分. 把答案填在题中横线上.

#ezexam.question[
若函数 $f(x)$ 满足方程 $f''(x)+f'(x)-2f(x)=0$ 及 $f''(x)+f(x)=2e^x$，则 $f(x)=$#h(3em).
#ezexam.solution(show-number: false)[
$e^x$.
]
]

#ezexam.question[
$integral_0^2 x sqrt(2x-x^2)dif x=$#h(3em).
#ezexam.solution(show-number: false)[
$pi/2$.
]
]

#ezexam.question[
$lr(op("grad")(x y+z/y))|_(2,1,1)=$#h(3em).
#ezexam.solution(show-number: false)[
$i+j+k$.
]
]

#ezexam.question[
设 $Sigma={(x,y,z)|x+y+z=1,x>=0,y>=0,z>=0}$，则 $integral.double_Sigma y^2 dif S=$#h(3em).
#ezexam.solution(show-number: false)[
$sqrt(3)/12$.
]
]

#ezexam.question[
设 $alpha$ 为3维单位列向量，$E$ 为3阶单位矩阵，则矩阵 $E-alpha alpha^T$ 的秩为#h(3em).
#ezexam.solution(show-number: false)[
2.
]
]

#ezexam.question[
设 $A,B,C$ 是随机事件，$A$ 与 $C$ 互不相容，$P(A B)=1/2,P(C)=1/3$，则 $P(A B|overline(C))=$#h(3em).
#ezexam.solution(show-number: false)[
$3/4$.
]
]

= 三、解答题：15—23小题，共94分. 解答应写出文字说明、证明过程或演算步骤.

#ezexam.question[
（本题满分10分）证明：$x ln((1+x)/(1-x))+cos x>=1+x^2/2 (-1<x<1)$.
#ezexam.solution(show-number: false)[
证　记 $f(x)=x ln((1+x)/(1-x))+cos x-x^2/2-1$，则
$ f'(x)=ln((1+x)/(1-x))+(2x)/(1-x^2)-sin x-x, quad f''(x)=4/(1-x^2)^2-1-cos x. $
当 $-1<x<1$ 时，由于 $4/(1-x^2)^2>=4,1+cos x<=2$，所以 $f''(x)>=2>0$，从而 $f'(x)$ 单调增加.
又因为 $f'(0)=0$，所以，当 $-1<x<0$ 时，$f'(x)<0$；当 $0<x<1$ 时，$f'(x)>0$，于是 $f(0)=0$ 是函数 $f(x)$ 在 $(-1,1)$ 内的最小值.
从而当 $-1<x<1$ 时，$f(x)>=f(0)=0$，即
$ x ln((1+x)/(1-x))+cos x>=1+x^2/2. $
]
]

#ezexam.question[
（本题满分10分）求函数 $f(x,y)=x e^(-(x^2+y^2)/2)$ 的极值.
#ezexam.solution(show-number: false)[
解　因为
$ f'_x=(1-x^2)e^(-(x^2+y^2)/2),quad f'_y=-x y e^(-(x^2+y^2)/2), $
令 $cases(f'_x=0,f'_y=0)$，得驻点 $(1,0)$ 和 $(-1,0)$.
记
$ A=f''_(x x)=x(x^2-3)e^(-(x^2+y^2)/2),quad B=f''_(x y)=y(x^2-1)e^(-(x^2+y^2)/2),quad C=f''_(y y)=x(y^2-1)e^(-(x^2+y^2)/2). $
在点 $(1,0)$ 处，由于 $B^2-A C=-2e^(-1)<0,A=-2e^(-1/2)<0$，所以 $f(1,0)=e^(-1/2)$ 是 $f(x,y)$ 的极大值.
在点 $(-1,0)$ 处，由于 $B^2-A C=-2e^(-1)<0,A=2e^(-1/2)>0$，所以 $f(-1,0)=-e^(-1/2)$ 是 $f(x,y)$ 的极小值.
]
]

#ezexam.question[
（本题满分10分）求幂级数 $sum_(n=0)^infinity (4n^2+4n+3)/(2n+1)x^(2n)$ 的收敛域及和函数.
#ezexam.solution(show-number: false)[
解　记 $a_n=(4n^2+4n+3)/(2n+1) (n=0,1,2,dots)$，因为 $lim_(n->infinity)a_(n+1)/a_n=1$，所以原级数的收敛半径为1.
又因为当 $x=±1$ 时，级数 $sum_(n=0)^infinity (4n^2+4n+3)/(2n+1)$ 发散，所以幂级数的收敛域是 $(-1,1)$.
记
$ S(x)=sum_(n=0)^infinity (4n^2+4n+3)/(2n+1)x^(2n)=sum_(n=0)^infinity(2n+1)x^(2n)+2sum_(n=0)^infinity x^(2n)/(2n+1). $
由于
$ sum_(n=0)^infinity(2n+1)x^(2n)&=lr(sum_(n=0)^infinity x^(2n+1))'=lr(x/(1-x^2))'=(1+x^2)/(1-x^2)^2 quad (-1<x<1), \
 sum_(n=0)^infinity x^(2n)/(2n+1)&=1/x sum_(n=0)^infinity x^(2n+1)/(2n+1)=1/x integral_0^x lr(sum_(n=0)^infinity t^(2n))dif t \
 &=1/x integral_0^x 1/(1-t^2)dif t=1/(2x)ln((1+x)/(1-x)) quad (0<|x|<1). $
又 $S(0)=3$，所以和函数
$ S(x)=cases((1+x^2)/(1-x^2)^2+1/x ln((1+x)/(1-x)) & 0<|x|<1,3 & x=0). $
]
]

#ezexam.question[
（本题满分10分）已知曲线 $L:cases(x=f(t),y=cos t) (0<=t<pi/2)$，其中函数 $f(t)$ 具有连续导数，且 $f(0)=0,f'(t)>0 (0<t<pi/2)$.若曲线 $L$ 的切线与 $x$ 轴交点到切点的距离恒为1，求函数 $f(t)$ 的表达式，并求以曲线 $L$ 及 $x$ 轴和 $y$ 轴为边界的区域的面积.
#ezexam.solution(show-number: false)[
解　曲线 $L$ 的切线斜率 $k=y'_t/x'_t=-(sin t)/f'(t)$，切线方程为
$ y-cos t=-(sin t)/f'(t)[x-f(t)]. $
令 $y=0$，得切线与 $x$ 轴交点的横坐标为 $x_0=f'(t)(cos t)/(sin t)+f(t)$.
由题意得 $[f'(t)(cos t)/(sin t)]^2+cos^2 t=1$.
因为 $f'(t)>0$，解得 $f'(t)=sin^2 t/(cos t)=1/(cos t)-cos t$.
由于 $f(0)=0$，所以 $f(t)=ln(sec t+tan t)-sin t$.
因为 $f(0)=0,lim_(t->pi/2)f(t)=+infinity$，所以以曲线 $L$ 及 $x$ 轴和 $y$ 轴为边界的区域是无界区域，其面积为
$ S=integral_0^(+infinity)y dif x=integral_0^(pi/2)cos t dot f'(t)dif t=integral_0^(pi/2)sin^2 t dif t=pi/4. $
]
]

#ezexam.question[
（本题满分10分）已知 $L$ 是第一象限中从点 $(0,0)$ 沿圆周 $x^2+y^2=2x$ 到点 $(2,0)$，再沿圆周 $x^2+y^2=4$ 到点 $(0,2)$ 的曲线段.计算曲线积分 $I=integral_L 3x^2 y dif x+(x^3+x-2y)dif y$.
#ezexam.solution(show-number: false)[
解　取 $L_1$ 为有向线段 $x=0,y$ 从2到0；由 $L$ 与 $L_1$ 围成的平面区域记为 $D$.根据格林公式，得
$ I&=integral_L 3x^2 y dif x+(x^3+x-2y)dif y \
 &=integral_(L+L_1)3x^2 y dif x+(x^3+x-2y)dif y-integral_(L_1)3x^2 y dif x+(x^3+x-2y)dif y \
 &=integral.double_D[(partial(x^3+x-2y))/(partial x)-(partial(3x^2 y))/(partial y)]dif x dif y-integral_2^0(-2y)dif y \
 &=integral.double_D dif x dif y-integral_0^2 2y dif y=pi-pi/2-4=pi/2-4. $
]
]

#ezexam.question[
（本题满分11分）设 $A=mat(1,a,0,0;0,1,a,0;0,0,1,a;a,0,0,1),beta=mat(1;-1;0;0)$.

（Ⅰ）计算行列式 $|A|$；

（Ⅱ）当实数 $a$ 为何值时，方程组 $A x=beta$ 有无穷多解，并求其通解.
#ezexam.solution(show-number: false)[
解　（Ⅰ）$|A|=lr(|mat(1,a,0,0;0,1,a,0;0,0,1,a;a,0,0,1)|)=1-a^4$.

（Ⅱ）若方程组 $A x=beta$ 有无穷多解，则 $|A|=0$.由（Ⅰ）可得 $a=1$ 或 $a=-1$.
当 $a=1$ 时，
$ (A:beta)=mat(1,1,0,0,1;0,1,1,0,-1;0,0,1,1,0;1,0,0,1,0,augment:#4) arrow.r mat(1,1,0,0,1;0,1,1,0,-1;0,0,1,1,0;0,0,0,0,-2,augment:#4), $
于是 $r(A)!=r(A:beta)$，故方程组 $A x=beta$ 无解.
当 $a=-1$ 时，
$ (A:beta)=mat(1,-1,0,0,1;0,1,-1,0,-1;0,0,1,-1,0;-1,0,0,1,0,augment:#4) arrow.r mat(1,0,0,-1,0;0,1,0,-1,-1;0,0,1,-1,0;0,0,0,0,0,augment:#4), $
于是 $r(A)=r(A:beta)=3<4$，故方程组 $A x=beta$ 有无穷多解.
此时其通解为 $x=mat(0;-1;0;0)+k mat(1;1;1;1)$，$k$ 为任意常数.
]
]

#ezexam.question[
（本题满分11分）已知 $A=mat(1,0,1;0,1,1;-1,0,a;0,a,-1)$，二次型 $f(x_1,x_2,x_3)=x^T(A^T A)x$ 的秩为2.

（Ⅰ）求实数 $a$ 的值；

（Ⅱ）求正交变换 $x=Q y$ 将 $f$ 化为标准形.
#ezexam.solution(show-number: false)[
解　（Ⅰ）因为 $r(A^T A)=r(A)$，对 $A$ 施以初等行变换
$ A=mat(1,0,1;0,1,1;-1,0,a;0,a,-1) arrow.r mat(1,0,1;0,1,1;0,0,a+1;0,0,0), $
所以当 $a=-1$ 时，$r(A)=2$.

（Ⅱ）由于 $a=-1$，所以 $A^T A=mat(2,0,2;0,2,2;2,2,4)$.矩阵 $A^T A$ 的特征多项式为
$ |lambda E-A^T A|=lr(|mat(lambda-2,0,-2;0,lambda-2,-2;-2,-2,lambda-4)|)=lambda(lambda-2)(lambda-6), $
于是 $A^T A$ 的特征值为 $lambda_1=2,lambda_2=6,lambda_3=0$.
当 $lambda_1=2$ 时，由方程组 $(2E-A^T A)x=0$，可得属于2的一个单位特征向量 $1/sqrt(2)mat(1;-1;0)$；
当 $lambda_2=6$ 时，由方程组 $(6E-A^T A)x=0$，可得属于6的一个单位特征向量 $1/sqrt(6)mat(1;1;2)$；
当 $lambda_3=0$ 时，由方程组 $A^T A x=0$，可得属于0的一个单位特征向量 $1/sqrt(3)mat(1;1;-1)$.
令 $Q=mat(1/sqrt(2),1/sqrt(6),1/sqrt(3);-1/sqrt(2),1/sqrt(6),1/sqrt(3);0,2/sqrt(6),-1/sqrt(3))$，则 $f$ 在正交变换 $x=Q y$ 下的标准形为 $f=2y_1^2+6y_2^2$.
]
]

#ezexam.question[
（本题满分11分）设二维离散型随机变量 $(X,Y)$ 的概率分布为
#table(columns:4,[$X$ / $Y$],[0],[1],[2],[0],[$1/4$],[0],[$1/4$],[1],[0],[$1/3$],[0],[2],[$1/12$],[0],[$1/12$])
（Ⅰ）求 $P{X=2Y}$；

（Ⅱ）求 $op("Cov")(X-Y,Y)$.
#ezexam.solution(show-number: false)[
解　（Ⅰ）$P{X=2Y}=P{X=0,Y=0}+P{X=2,Y=1}=1/4$.

（Ⅱ）由 $(X,Y)$ 的概率分布可得，$X,Y,X Y$ 的概率分布分别为
#table(columns:4,[$X$],[0],[1],[2],[$P$],[$1/2$],[$1/3$],[$1/6$])
#table(columns:4,[$Y$],[0],[1],[2],[$P$],[$1/3$],[$1/3$],[$1/3$])
#table(columns:4,[$X Y$],[0],[1],[4],[$P$],[$7/12$],[$1/3$],[$1/12$])
所以
$ E X=2/3,E Y=1,E(Y^2)=5/3,D Y=2/3,quad E(X Y)=2/3,op("Cov")(X,Y)=E(X Y)-E X dot E Y=0, $
故 $op("Cov")(X-Y,Y)=op("Cov")(X,Y)-D Y=-2/3$.
]
]

#ezexam.question[
（本题满分11分）设随机变量 $X$ 与 $Y$ 相互独立且分别服从正态分布 $N(mu,sigma^2)$ 与 $N(mu,2sigma^2)$，其中 $mu$ 是未知参数，$sigma>0$.设 $Z=X-Y$.

（Ⅰ）求 $Z$ 的概率密度 $f(z;sigma^2)$；

（Ⅱ）设 $Z_1,Z_2,dots,Z_n$ 为来自总体 $Z$ 的简单随机样本，求 $sigma^2$ 的最大似然估计量 $hat(sigma)^2$；

（Ⅲ）证明 $hat(sigma)^2$ 为 $sigma^2$ 的无偏估计量.
#ezexam.solution(show-number: false)[
解　（Ⅰ）因 $X$ 与 $Y$ 相互独立，所以 $Z=X-Y$ 服从正态分布，且 $E Z=0,D Z=D X+D Y=3sigma^2$，故得 $Z$ 的概率密度为
$ f(z;sigma^2)=1/(sqrt(6pi)sigma)e^(-z^2/(6sigma^2)),quad -infinity<z<+infinity. $

（Ⅱ）设 $z_1,z_2,dots,z_n$ 为样本 $Z_1,Z_2,dots,Z_n$ 的观测值，则似然函数为
$ L(sigma^2)&=product_(i=1)^n f(z_i;sigma^2)=(6pi sigma^2)^(-n/2)e^(-1/(6sigma^2)sum_(i=1)^n z_i^2), \
 ln L(sigma^2)&=-n/2 ln(6pi sigma^2)-1/(6sigma^2)sum_(i=1)^n z_i^2. $
令 $(dif(ln L))/(dif(sigma^2))=-n/(2sigma^2)+1/(6sigma^4)sum_(i=1)^n z_i^2=0$，解得 $sigma^2=1/(3n)sum_(i=1)^n z_i^2$，故 $sigma^2$ 的最大似然估计量为 $hat(sigma)^2=1/(3n)sum_(i=1)^n Z_i^2$.

（Ⅲ）因 $E hat(sigma)^2=1/(3n)sum_(i=1)^n E Z_i^2=1/3 E Z^2=1/3 D Z=sigma^2$，所以 $hat(sigma)^2$ 是 $sigma^2$ 的无偏估计量.
]
]

