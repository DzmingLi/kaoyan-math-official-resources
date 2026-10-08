#import "../template.typ": exam
#show: exam.with(year: 2011, subject: "三", title: "2011年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(true)


= 一、选择题：1—8小题，每小题4分，共32分.在每小题给出的四个选项中，只有一项符合题目要求，把所选项前的字母填在题后的括号内.

#ezexam.question[
已知当 $x->0$ 时，函数 $f(x)=3sin x-sin 3x$ 与 $c x^k$ 是等价无穷小量，则
#choices([$k=1,c=4$.],[$k=1,c=-4$.],[$k=3,c=4$.],[$k=3,c=-4$.])
#ezexam.solution(show-number: false)[
C.
]
]

#ezexam.question[
设函数 $f(x)$ 在 $x=0$ 处可导，且 $f(0)=0$，则 $lim_(x->0)(x^2 f(x)-2f(x^3))/x^3=$
#choices([$-2f'(0)$.],[$-f'(0)$.],[$f'(0)$.],[0.])
#ezexam.solution(show-number: false)[
B.
]
]

#ezexam.question[
设 ${u_n}$ 是数列，则下列命题正确的是
#choices([若 $sum_(n=1)^infinity u_n$ 收敛，则 $sum_(n=1)^infinity(u_(2n-1)+u_(2n))$ 收敛.],[若 $sum_(n=1)^infinity(u_(2n-1)+u_(2n))$ 收敛，则 $sum_(n=1)^infinity u_n$ 收敛.],[若 $sum_(n=1)^infinity u_n$ 收敛，则 $sum_(n=1)^infinity(u_(2n-1)-u_(2n))$ 收敛.],[若 $sum_(n=1)^infinity(u_(2n-1)-u_(2n))$ 收敛，则 $sum_(n=1)^infinity u_n$ 收敛.])
#ezexam.solution(show-number: false)[
A.
]
]

#ezexam.question[
设 $I=integral_0^(pi/4)ln(sin x)dif x,J=integral_0^(pi/4)ln(cot x)dif x,K=integral_0^(pi/4)ln(cos x)dif x$，则 $I,J,K$ 的大小关系为
#choices([$I<J<K$.],[$I<K<J$.],[$J<I<K$.],[$K<I<J$.])
#ezexam.solution(show-number: false)[
B.
]
]

#ezexam.question[
设 $A$ 为3阶矩阵，将 $A$ 的第2列加到第1列得矩阵 $B$，再交换 $B$ 的第2行与第3行得单位矩阵.记
$ P_1=mat(1,0,0;1,1,0;0,0,1),quad P_2=mat(1,0,0;0,0,1;0,1,0), $
则 $A=$
#choices([$P_1 P_2$.],[$P_1^(-1)P_2$.],[$P_2 P_1$.],[$P_2 P_1^(-1)$.])
#ezexam.solution(show-number: false)[
D.
]
]

#ezexam.question[
设 $A$ 为 $4 times 3$ 矩阵，$eta_1,eta_2,eta_3$ 是非齐次线性方程组 $A x=beta$ 的3个线性无关的解，$k_1,k_2$ 为任意常数，则 $A x=beta$ 的通解为
#choices([$(eta_2+eta_3)/2+k_1(eta_2-eta_1)$.],[$(eta_2-eta_3)/2+k_1(eta_2-eta_1)$.],[$(eta_2+eta_3)/2+k_1(eta_2-eta_1)+k_2(eta_3-eta_1)$.],[$(eta_2-eta_3)/2+k_1(eta_2-eta_1)+k_2(eta_3-eta_1)$.])
#ezexam.solution(show-number: false)[
C.
]
]

#ezexam.question[
设 $F_1(x)$ 与 $F_2(x)$ 为两个分布函数，其相应的概率密度 $f_1(x)$ 与 $f_2(x)$ 是连续函数，则必为概率密度的是
#choices([$f_1(x)f_2(x)$.],[$2f_2(x)F_1(x)$.],[$f_1(x)F_2(x)$.],[$f_1(x)F_2(x)+f_2(x)F_1(x)$.])
#ezexam.solution(show-number: false)[
D.
]
]

#ezexam.question[
设总体 $X$ 服从参数为 $lambda(lambda>0)$ 的泊松分布，$X_1,X_2,dots,X_n(n>=2)$ 为来自该总体的简单随机样本，则对于统计量 $T_1=1/n sum_(i=1)^n X_i$ 和 $T_2=1/(n-1)sum_(i=1)^(n-1)X_i+1/n X_n$，有
#choices([$E T_1>E T_2,D T_1>D T_2$.],[$E T_1>E T_2,D T_1<D T_2$.],[$E T_1<E T_2,D T_1>D T_2$.],[$E T_1<E T_2,D T_1<D T_2$.])
#ezexam.solution(show-number: false)[
D.
]
]

= 二、填空题：9—14小题，每小题4分，共24分.把答案填在题中横线上.

#ezexam.question[
设 $f(x)=lim_(t->0)x(1+3t)^(x/t)$，则 $f'(x)=$ #fillin(len: 1.98438em)[].
#ezexam.solution(show-number: false)[
$(1+3x)e^(3x)$.
]
]

#ezexam.question[
设函数 $z=(1+x/y)^(x/y)$，则 $dif z|_((1,1))=$ #fillin(len: 1.98438em)[].
#ezexam.solution(show-number: false)[
$(1+2ln 2)(dif x-dif y)$.
]
]

#ezexam.question[
曲线 $tan(x+y+pi/4)=e^y$ 在点 $(0,0)$ 处的切线方程为 #fillin(len: 1.98438em)[].
#ezexam.solution(show-number: false)[
$y=-2x$.
]
]

#ezexam.question[
曲线 $y=sqrt(x^2-1)$，直线 $x=2$ 及 $x$ 轴所围的平面图形绕 $x$ 轴旋转所成的旋转体的体积为 #fillin(len: 1.98438em)[].
#ezexam.solution(show-number: false)[
$(4pi)/3$.
]
]

#ezexam.question[
设二次型 $f(x_1,x_2,x_3)=x^T A x$ 的秩为1，$A$ 的各行元素之和为3，则 $f$ 在正交变换 $x=Q y$ 下的标准形为 #fillin(len: 1.98438em)[].
#ezexam.solution(show-number: false)[
$3y_1^2$.
]
]

#ezexam.question[
设二维随机变量 $(X,Y)$ 服从正态分布 $N(mu,mu;sigma^2,sigma^2;0)$，则 $E(X Y^2)=$ #fillin(len: 1.98438em)[].
#ezexam.solution(show-number: false)[
$mu sigma^2+mu^3$.
]
]

= 三、解答题：15—23小题，共94分.解答应写出文字说明、证明过程或演算步骤.

#ezexam.question[
（本题满分10分）求极限 $lim_(x->0)(sqrt(1+2sin x)-x-1)/(x ln(1+x))$.
#ezexam.solution(show-number: false)[
解
$ lim_(x->0)(sqrt(1+2sin x)-x-1)/(x ln(1+x))=lim_(x->0)(sqrt(1+2sin x)-x-1)/x^2 $
$ =lim_(x->0)((cos x)/sqrt(1+2sin x)-1)/(2x) $
$ =lim_(x->0)(cos x-sqrt(1+2sin x))/(2x) dot 1/sqrt(1+2sin x) $
$ =lim_(x->0)(-sin x-(cos x)/sqrt(1+2sin x))/2=-1/2. $
]
]

#ezexam.question[
（本题满分10分）已知函数 $f(u,v)$ 具有二阶连续偏导数，$f(1,1)=2$ 是 $f(u,v)$ 的极值，$z=f(x+y,f(x,y))$，求 $((partial^2 z)/(partial x partial y))|_((1,1))$.
#ezexam.solution(show-number: false)[
解
$ (partial z)/(partial x)=f'_1(x+y,f(x,y))+f'_2(x+y,f(x,y)) dot f'_1(x,y), $
$ (partial^2 z)/(partial x partial y)=f''_(11)(x+y,f(x,y))+f''_(12)(x+y,f(x,y)) dot f'_2(x,y) $
$ +f''_(12)(x,y) dot f'_2(x+y,f(x,y))+f'_1(x,y)[f''_(21)(x+y,f(x,y))+f''_(22)(x+y,f(x,y)) dot f'_2(x,y)]. $
由题意知 $f'_1(1,1)=0,f'_2(1,1)=0$，从而
$ ((partial^2 z)/(partial x partial y))|_((1,1))=f''_(11)(2,2)+f'_2(2,2)f''_(12)(1,1). $
]
]

#ezexam.question[
（本题满分10分）求不定积分 $integral(arcsin sqrt(x)+ln x)/sqrt(x)dif x$.
#ezexam.solution(show-number: false)[
解　利用分部积分法可得
$ integral(arcsin sqrt(x)+ln x)/sqrt(x)dif x=2integral(arcsin sqrt(x)+ln x)dif sqrt(x) $
$ =2sqrt(x)(arcsin sqrt(x)+ln x)-integral(dif x)/sqrt(1-x)-2integral(dif x)/sqrt(x) $
$ =2sqrt(x)(arcsin sqrt(x)+ln x)+integral(dif(1-x))/sqrt(1-x)-4sqrt(x) $
$ =2sqrt(x)(arcsin sqrt(x)+ln x)+2sqrt(1-x)-4sqrt(x)+C. $
]
]

#ezexam.question[
（本题满分10分）证明方程 $4arctan x-x+(4pi)/3-sqrt(3)=0$ 恰有两个实根.
#ezexam.solution(show-number: false)[
证　设 $f(x)=4arctan x-x+(4pi)/3-sqrt(3)$，则
$ f'(x)=4/(1+x^2)-1=((sqrt(3)-x)(sqrt(3)+x))/(1+x^2). $
令 $f'(x)=0$，解得驻点 $x_1=-sqrt(3),x_2=sqrt(3)$.
由单调性判别法知：$f(x)$ 在 $(-infinity,-sqrt(3)]$ 上单调减少，在 $[-sqrt(3),sqrt(3)]$ 上单调增加，在 $[sqrt(3),+infinity)$ 上单调减少.
因为 $f(-sqrt(3))=0$，且由上述单调性可知 $f(-sqrt(3))$ 是 $f(x)$ 在 $(-infinity,sqrt(3)]$ 上的最小值，所以 $x=-sqrt(3)$ 是函数 $f(x)$ 在 $(-infinity,sqrt(3)]$ 上唯一的零点.
又因为 $f(sqrt(3))=2((4pi)/3-sqrt(3))>0$，且 $lim_(x->+infinity)f(x)=-infinity$，所以由连续函数的介值定理知 $f(x)$ 在 $(sqrt(3),+infinity)$ 内存在零点，且由 $f(x)$ 的单调性知零点唯一.
综上可知，$f(x)$ 在 $(-infinity,+infinity)$ 内恰有两个零点，即原方程恰有两个实根.
]
]

#ezexam.question[
（本题满分10分）设函数 $f(x)$ 在区间 $[0,1]$ 上具有连续导数，$f(0)=1$，且满足
$ integral.double_(D_t)f'(x+y)dif x dif y=integral.double_(D_t)f(t)dif x dif y, $
其中 $D_t={(x,y)|0<=y<=t-x,0<=x<=t}(0<t<=1)$，求 $f(x)$ 的表达式.
#ezexam.solution(show-number: false)[
解
$ integral.double_(D_t)f'(x+y)dif x dif y=integral_0^t dif x integral_0^(t-x)f'(x+y)dif y $
$ =integral_0^t[f(t)-f(x)]dif x=t f(t)-integral_0^t f(x)dif x, $
又 $integral.double_(D_t)f(t)dif x dif y=t^2/2 f(t)$，由题设有
$ t f(t)-integral_0^t f(x)dif x=t^2/2 f(t). $
两边求导整理得 $(2-t)f'(t)=2f(t)$，解得 $f(t)=C/(2-t)^2$.
代入 $f(0)=1$，得 $C=4$，故
$ f(x)=4/(2-x)^2 quad (0<=x<=1). $
]
]

#ezexam.question[
（本题满分11分）设向量组 $alpha_1=(1,0,1)^T,alpha_2=(0,1,1)^T,alpha_3=(1,3,5)^T$ 不能由向量组 $beta_1=(1,1,1)^T,beta_2=(1,2,3)^T,beta_3=(3,4,a)^T$ 线性表示.
（Ⅰ）求 $a$ 的值；
（Ⅱ）将 $beta_1,beta_2,beta_3$ 用 $alpha_1,alpha_2,alpha_3$ 线性表示.
#ezexam.solution(show-number: false)[
解　（Ⅰ）4个3维向量 $beta_1,beta_2,beta_3,alpha_i$ 线性相关 $(i=1,2,3)$，若 $beta_1,beta_2,beta_3$ 线性无关，则 $alpha_i$ 可由 $beta_1,beta_2,beta_3$ 线性表示 $(i=1,2,3)$，与题设矛盾，于是 $beta_1,beta_2,beta_3$ 线性相关.从而
$ |beta_1,beta_2,beta_3|=det(1,1,3;1,2,4;1,3,a)=a-5=0, $
于是 $a=5$.此时，$alpha_1$ 不能由向量组 $beta_1,beta_2,beta_3$ 线性表示.
（Ⅱ）令 $A=(alpha_1,alpha_2,alpha_3;beta_1,beta_2,beta_3)$，对 $A$ 施以初等行变换：
$ A=mat(1,0,1,1,1,3;0,1,3,1,2,4;1,1,5,1,3,5,augment:#3)->mat(1,0,0,2,1,5;0,1,0,4,2,10;0,0,1,-1,0,-2,augment:#3), $
从而
$ beta_1=2alpha_1+4alpha_2-alpha_3,quad beta_2=alpha_1+2alpha_2,quad beta_3=5alpha_1+10alpha_2-2alpha_3. $
]
]

#ezexam.question[
（本题满分11分）设 $A$ 为3阶实对称矩阵，$A$ 的秩为2，且
$ A mat(1,1;0,0;-1,1)=mat(-1,1;0,0;1,1). $
（Ⅰ）求 $A$ 的所有特征值与特征向量；
（Ⅱ）求矩阵 $A$.
#ezexam.solution(show-number: false)[
解　（Ⅰ）由于 $A$ 的秩为2，故0是 $A$ 的一个特征值.由题设可得
$ A vec(1,0,-1)=-vec(1,0,-1),quad A vec(1,0,1)=vec(1,0,1). $
所以 −1 是 $A$ 的一个特征值，且属于 −1 的特征向量为 $k_1 vec(1,0,-1)$，$k_1$ 为任意非零常数；1也是 $A$ 的一个特征值，且属于1的特征向量为 $k_2 vec(1,0,1)$，$k_2$ 为任意非零常数.
设 $vec(x_1,x_2,x_3)$ 是 $A$ 的属于0的特征向量，由于 $A$ 为实对称矩阵，则
$ (1,0,-1)vec(x_1,x_2,x_3)=0,quad (1,0,1)vec(x_1,x_2,x_3)=0, $
即 $cases(x_1-x_3=0,x_1+x_3=0)$，于是属于0的特征向量为 $k_3 vec(0,1,0)$，$k_3$ 为任意非零常数.
（Ⅱ）令 $P=mat(1,1,0;0,0,1;-1,1,0)$，则 $P^(-1)A P=mat(-1,0,0;0,1,0;0,0,0)$，于是
$ A=P mat(-1,0,0;0,1,0;0,0,0)P^(-1) $
$ =mat(1,1,0;0,0,1;-1,1,0)mat(-1,0,0;0,1,0;0,0,0)mat(1/2,0,-1/2;1/2,0,1/2;0,1,0) $
$ =mat(0,0,1;0,0,0;1,0,0). $
]
]

#ezexam.question[
（本题满分11分）设随机变量 $X$ 与 $Y$ 的概率分布分别为
#table(columns:3,[$X$],[0],[1],[$P$],[$1/3$],[$2/3$])
#table(columns:4,[$Y$],[−1],[0],[1],[$P$],[$1/3$],[$1/3$],[$1/3$])
且 $P{X^2=Y^2}=1$.
（Ⅰ）求二维随机变量 $(X,Y)$ 的概率分布；
（Ⅱ）求 $Z=X Y$ 的概率分布；
（Ⅲ）求 $X$ 与 $Y$ 的相关系数 $rho_(X Y)$.
#ezexam.solution(show-number: false)[
解　（Ⅰ）由 $P{X^2=Y^2}=1$ 得 $P{X^2!=Y^2}=0$，所以
$ P{X=0,Y=-1}=P{X=0,Y=1}=P{X=1,Y=0}=0, $
故 $(X,Y)$ 的概率分布为
#table(columns:4,[$X$ / $Y$],[−1],[0],[1],[0],[0],[$1/3$],[0],[1],[$1/3$],[0],[$1/3$])
（Ⅱ）$Z=X Y$ 的可能取值为 −1，0，1.由 $(X,Y)$ 的概率分布可得 $Z$ 的概率分布为
#table(columns:4,[$Z$],[−1],[0],[1],[$P$],[$1/3$],[$1/3$],[$1/3$])
（Ⅲ）由 $X,Y$ 及 $Z$ 的概率分布得
$ E X=2/3,quad D X=2/9, $
$ E Y=0,quad D Y=2/3, $
$ E Z=E(X Y)=0, $
所以 $op("Cov")(X,Y)=0,rho_(X Y)=0$.
]
]

#ezexam.question[
（本题满分11分）设二维随机变量 $(X,Y)$ 服从区域 $G$ 上的均匀分布，其中 $G$ 是由 $x-y=0,x+y=2$ 与 $y=0$ 所围成的三角形区域.
（Ⅰ）求 $X$ 的概率密度 $f_X(x)$；
（Ⅱ）求条件概率密度 $f_(X|Y)(x|y)$.
#ezexam.solution(show-number: false)[
解　（Ⅰ）$(X,Y)$ 的概率密度为
$ f(x,y)=cases(1 & (x,y)in G,0 & "其他"). $
$X$ 的概率密度为 $f_X(x)=integral_(-infinity)^(+infinity)f(x,y)dif y$.
当 $x<0$ 或 $x>2$ 时，$f_X(x)=0$；
当 $0<=x<=1$ 时，$f_X(x)=integral_0^x dif y=x$；
当 $1<x<=2$ 时，$f_X(x)=integral_0^(2-x)dif y=2-x$.
综上所述，有
$ f_X(x)=cases(x & 0<=x<=1,2-x & 1<x<=2,0 & "其他"). $
（Ⅱ）$Y$ 的概率密度为
$ f_Y(y)=integral_(-infinity)^(+infinity)f(x,y)dif x=cases(integral_y^(2-y)dif x & 0<=y<=1,0 & "其他") $
$ =cases(2(1-y) & 0<=y<=1,0 & "其他"). $
在 $Y=y(0<=y<1)$ 时，$X$ 的条件概率密度为
$ f_(X|Y)(x|y)=f(x,y)/f_Y(y)=cases(1/(2(1-y)) & y<x<2-y,0 & "其他"). $
]
]

