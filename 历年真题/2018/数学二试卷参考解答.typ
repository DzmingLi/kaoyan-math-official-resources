#import "../template.typ": exam
#show: exam.with(year: 2018, subject: "二")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(true)


= 一、选择题：1—8小题，每小题4分，共32分. 在每小题给出的四个选项中，只有一项符合题目要求，把所选项前的字母填在题后的括号内.

#ezexam.question[
若 $lim_(x->0) (e^x+a x^2+b x)^(1/x^2)=1$，则（　）.
#choices([$a=1/2,b=-1$], [$a=-1/2,b=-1$], [$a=1/2,b=1$], [$a=-1/2,b=1$])
#ezexam.solution(show-number: false)[
B.
]
]

#ezexam.question[
下列函数中，在 $x=0$ 处不可导的是（　）.
#choices([$f(x)=abs(x) sin abs(x)$], [$f(x)=abs(x) sin sqrt(abs(x))$], [$f(x)=cos abs(x)$], [$f(x)=cos sqrt(abs(x))$])
#ezexam.solution(show-number: false)[
D.
]
]

#ezexam.question[
设函数 $f(x)=cases(-1 & x<0,1 & x>=0)$，$g(x)=cases(2-a x & x<=-1,x & -1<x<0,x-b & x>=0)$，若 $f(x)+g(x)$ 在 $bold(upright(R))$ 上连续，则（　）.
#choices([$a=3,b=1$], [$a=3,b=2$], [$a=-3,b=1$], [$a=-3,b=2$])
#ezexam.solution(show-number: false)[
D.
]
]

#ezexam.question[
设函数 $f(x)$ 在 $[0,1]$ 上二阶可导，且 $integral_0^1 f(x) dif x=0$，则（　）.
#choices([当 $f'(x)<0$ 时，$f(1/2)<0$.], [当 $f''(x)<0$ 时，$f(1/2)<0$.], [当 $f'(x)>0$ 时，$f(1/2)<0$.], [当 $f''(x)>0$ 时，$f(1/2)<0$.])
#ezexam.solution(show-number: false)[
D.
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
$integral_(-1)^0 dif x integral_(-x)^(2-x^2) (1-x y) dif y+integral_0^1 dif x integral_x^(2-x^2) (1-x y) dif y=$（　）.
#choices([$5/3$], [$5/6$], [$7/3$], [$7/6$])
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

= 二、填空题：9—14小题，每小题4分，共24分. 把答案填在题中横线上.

#ezexam.question[
$lim_(x->+infinity) x^2[arctan(x+1)-arctan x]=$#fillin(len: 2.97656em)[].
#ezexam.solution(show-number: false)[
1.
]
]

#ezexam.question[
曲线 $y=x^2+2ln x$ 在其拐点处的切线方程是#fillin(len: 2.97656em)[].
#ezexam.solution(show-number: false)[
$y=4x-3$.
]
]

#ezexam.question[
$integral_5^(+infinity) 1/(x^2-4x+3) dif x=$#fillin(len: 2.97656em)[].
#ezexam.solution(show-number: false)[
$(ln 2)/2$.
]
]

#ezexam.question[
曲线 $cases(x=cos^3 t,y=sin^3 t)$ 在 $t=pi/4$ 对应点处的曲率为#fillin(len: 2.97656em)[].
#ezexam.solution(show-number: false)[
$2/3$.
]
]

#ezexam.question[
设函数 $z=z(x,y)$ 由方程 $ln z+e^(z-1)=x y$ 确定，则 $lr((partial z)/(partial x) bar.v)_(2,1/2)=$#fillin(len: 2.97656em)[].
#ezexam.solution(show-number: false)[
$1/4$.
]
]

#ezexam.question[
设 $A$ 为 3 阶矩阵，$alpha_1,alpha_2,alpha_3$ 为线性无关的向量组.若 $A alpha_1=2alpha_1+alpha_2+alpha_3$，$A alpha_2=alpha_2+2alpha_3$，$A alpha_3=-alpha_2+alpha_3$，则 $A$ 的实特征值为#fillin(len: 2.97656em)[].
#ezexam.solution(show-number: false)[
2.
]
]

= 三、解答题：15—23小题，共94分. 解答应写出文字说明、证明过程或演算步骤.

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

已知连续函数 $f(x)$ 满足 $integral_0^x f(t) dif t+integral_0^x t f(x-t) dif t=a x^2$.

（Ⅰ）求 $f(x)$；

（Ⅱ）若 $f(x)$ 在区间 $[0,1]$ 上的平均值为 1，求 $a$ 的值.
#ezexam.solution(show-number: false)[
解　（Ⅰ）令 $u=x-t$，则
$ integral_0^x t f(x-t) dif t=integral_0^x (x-u)f(u) dif u \
 =x integral_0^x f(u) dif u-integral_0^x u f(u) dif u. $
由题设知
$ integral_0^x f(t) dif t+x integral_0^x f(u) dif u-integral_0^x u f(u) dif u=a x^2. $
对上式两端求导得
$ f(x)+integral_0^x f(u) dif u=2a x, $
所以 $f(x)$ 可导，$f(0)=0$，且 $f'(x)+f(x)=2a$.

于是，
$ f(x)=e^(-x)(C+integral 2a e^x dif x)=C e^(-x)+2a. $
由 $f(0)=0$，得 $C=-2a$，从而 $f(x)=2a(1-e^(-x))$.

（Ⅱ）$integral_0^1 2a(1-e^(-x)) dif x=(2a)/e$，由题设得 $(2a)/e=1$，故 $a=e/2$.
]
]

#ezexam.question[
（本题满分 10 分）

设平面区域 $D$ 由曲线 $cases(x=t-sin t,y=1-cos t)$（$0<=t<=2pi$）与 $x$ 轴围成，计算二重积分 $integral.double_D (x+2y) dif x dif y$.
#ezexam.solution(show-number: false)[
解
$ integral.double_D (x+2y) dif x dif y \
 =integral.double_D (x-pi) dif x dif y+integral.double_D (2y+pi) dif x dif y. $
因为 $D$ 关于直线 $x=pi$ 对称，所以 $integral.double_D (x-pi) dif x dif y=0$.

设曲线 $cases(x=t-sin t,y=1-cos t)$（$0<=t<=2pi$）的直角坐标方程为 $y=y(x)$（$0<=x<=2pi$），则
$ integral.double_D (2y+pi) dif x dif y \
 =integral_0^(2pi) dif x integral_0^(y(x)) (2y+pi) dif y \
 =integral_0^(2pi) [y^2(x)+pi y(x)] dif x. $
又
$ integral_0^(2pi) y^2(x) dif x=integral_0^(2pi) (1-cos t)^3 dif t \
 =integral_0^(2pi) (1-3cos t+3cos^2 t-cos^3 t) dif t=5pi, \
 integral_0^(2pi) y(x) dif x=integral_0^(2pi) (1-cos t)^2 dif t \
 =integral_0^(2pi) (1-2cos t+cos^2 t) dif t=3pi, $
所以 $integral.double_D (x+2y) dif x dif y=pi(5+3pi)$.
]
]

#ezexam.question[
（本题满分 10 分）

已知常数 $k>=ln 2-1$.证明：$(x-1)(x-ln^2 x+2k ln x-1)>=0$.
#ezexam.solution(show-number: false)[
解　设 $f(x)=x-ln^2 x+2k ln x-1$.只需证明：当 $0<x<1$ 时，$f(x)<0$；当 $x>1$ 时，$f(x)>0$.
$ f'(x)=1-(2ln x)/x+(2k)/x=1/x (x-2ln x+2k). $
设 $g(x)=x-2ln x+2k$，则 $g'(x)=1-2/x$.

令 $g'(x)=0$，得 $g(x)$ 的唯一驻点 $x=2$.

又 $g''(x)=2/x^2>0$，故 $x=2$ 为 $g(x)$ 的唯一极小值点，于是 $g(2)$ 为 $g(x)$ 的最小值.

因为 $k>=ln 2-1$，所以 $g(2)=2-2ln 2+2k>=0$，从而 $g(x)>0$（$x!=2$）.

综上可知 $f'(x)>0$（$x!=2$），所以 $f(x)$ 单调增加.

又 $f(1)=0$，故当 $0<x<1$ 时，$f(x)<0$，当 $x>1$ 时，$f(x)>0$.
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
（本题满分 11 分）

已知曲线 $L:y=4/9 x^2$（$x>=0$），点 $O(0,0)$，点 $A(0,1)$.设 $P$ 是 $L$ 上的动点，$S$ 是直线 $O A$ 与直线 $A P$ 及曲线 $L$ 所围图形的面积.若 $P$ 运动到点 $(3,4)$ 时沿 $x$ 轴正向的速度是 4，求此时 $S$ 关于时间 $t$ 的变化率.
#ezexam.solution(show-number: false)[
解　设 $P$ 点的坐标为 $(m,n)$，则直线 $A P$ 的方程为
$ y=(4/9 m-1/m)x+1. $
直线 $O A$ 与直线 $A P$ 及曲线 $L$ 所围图形的面积为
$ S=integral_0^m [(4/9 m-1/m)x+1-4/9 x^2] dif x \
 =(4/9 m-1/m)m^2/2+m-4/27 m^3 \
 =2/27 m^3+1/2 m. $
所以 $(dif S)/(dif t)=(2/9 m^2+1/2)(dif m)/(dif t)$.

由题设，当 $m=3$ 时，$(dif m)/(dif t)=4$.

所以当 $P$ 运动到点 $(3,4)$ 时，$S$ 对时间 $t$ 的变化率为 $(dif S)/(dif t)=10$.
]
]

#ezexam.question[
（本题满分 11 分）

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

