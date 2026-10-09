#import "../template.typ": exam
#show: exam.with(year: 2007, subject: "四", title: "2007年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#ezexam.answer-state.update(true)


= 一、选择题：1—10小题，每小题4分，共40分. 在每小题给出的四个选项中，只有一项符合题目要求，把所选项前的字母填在题后的括号内.

#ezexam.question[
当 $x->0^+$ 时，与 $sqrt(x)$ 等价的无穷小量是
#choices([$1-e^sqrt(x)$.],[$ln(1+sqrt(x))$.],[$sqrt(1+sqrt(x))-1$.],[$1-cos sqrt(x)$.])
#ezexam.solution(show-number: false)[
B.
]
]

#ezexam.question[
设函数 $f(x)$ 在 $x=0$ 处连续，下列命题错误的是
#choices([若 $lim_(x->0)f(x)/x$ 存在，则 $f(0)=0$.],[若 $lim_(x->0)(f(x)+f(-x))/x$ 存在，则 $f(0)=0$.],[若 $lim_(x->0)f(x)/x$ 存在，则 $f'(0)$ 存在.],[若 $lim_(x->0)(f(x)-f(-x))/x$ 存在，则 $f'(0)$ 存在.])
#ezexam.solution(show-number: false)[
D.
]
]

#ezexam.question[
如下图，连续函数 $y=f(x)$ 在区间 $[-3,-2],[2,3]$ 上的图形分别是直径为1的上、下半圆周，在区间 $[-2,0],[0,2]$ 上的图形分别是直径为2的下、上半圆周.设 $F(x)=integral_0^x f(t)dif t$，则下列结论正确的是
#import "@preview/cetz:0.5.2"
#cetz.canvas({
 import cetz.draw: *
 line((-3.4,0),(3.7,0),mark:(end:">"));line((0,-1.3),(0,1.6),mark:(end:">"))
 for (c,r,s) in ((-2.5,.5,1),(-1,1,-1),(1,1,1),(2.5,.5,-1)) {
  let pts=range(81).map(i=>{let t=i*180deg/80;(c - r*calc.cos(t),s*r*calc.sin(t))})
  line(..pts)
 }
 for i in (-3,-2,-1,1,2,3){content((i,-.1),[#i],anchor:"north")}
 content((-.1,-.1),$O$,anchor:"north-east");content((3.7,0),$x$,anchor:"north");content((0,1.6),$y$,anchor:"east")
})
#choices([$F(3)=-3/4 F(-2)$.],[$F(3)=5/4 F(2)$.],[$F(-3)=3/4 F(2)$.],[$F(-3)=-5/4 F(-2)$.])
#ezexam.solution(show-number: false)[
C.
]
]

#ezexam.question[
设函数 $f(x,y)$ 连续，则二次积分 $integral_(pi/2)^pi dif x integral_(sin x)^1 f(x,y)dif y$ 等于
#choices([$integral_0^1 dif y integral_(pi+arcsin y)^pi f(x,y)dif x$.],[$integral_0^1 dif y integral_(pi-arcsin y)^pi f(x,y)dif x$.],[$integral_0^1 dif y integral_(pi/2)^(pi+arcsin y) f(x,y)dif x$.],[$integral_0^1 dif y integral_(pi/2)^(pi-arcsin y) f(x,y)dif x$.])
#ezexam.solution(show-number: false)[
B.
]
]

#ezexam.question[
设某商品的需求函数为 $Q=160-2p$，其中 $Q,p$ 分别表示需求量和价格.如果该商品需求弹性的绝对值等于1，则商品的价格是
#choices[10.][20.][30.][40.]
#ezexam.solution(show-number: false)[
D.
]
]

#ezexam.question[
曲线 $y=1/x+ln(1+e^x)$ 渐近线的条数为
#choices[0.][1.][2.][3.]
#ezexam.solution(show-number: false)[
D.
]
]

#ezexam.question[
设向量组 $alpha_1,alpha_2,alpha_3$ 线性无关，则下列向量组线性相关的是
#choices([$alpha_1-alpha_2,alpha_2-alpha_3,alpha_3-alpha_1$.],[$alpha_1+alpha_2,alpha_2+alpha_3,alpha_3+alpha_1$.],[$alpha_1-2alpha_2,alpha_2-2alpha_3,alpha_3-2alpha_1$.],[$alpha_1+2alpha_2,alpha_2+2alpha_3,alpha_3+2alpha_1$.])
#ezexam.solution(show-number: false)[
A.
]
]

#ezexam.question[
设矩阵 $A=mat(2,-1,-1;-1,2,-1;-1,-1,2),B=mat(1,0,0;0,1,0;0,0,0)$，则 $A$ 与 $B$
#choices[合同，且相似.][合同，但不相似.][不合同，但相似.][既不合同，也不相似.]
#ezexam.solution(show-number: false)[
B.
]
]

#ezexam.question[
某人向同一目标独立重复射击，每次射击命中目标的概率为 $p (0<p<1)$，则此人第4次射击恰好第2次命中目标的概率为
#choices([$3p(1-p)^2$.],[$6p(1-p)^2$.],[$3p^2(1-p)^2$.],[$6p^2(1-p)^2$.])
#ezexam.solution(show-number: false)[
C.
]
]

#ezexam.question[
设随机变量 $(X,Y)$ 服从二维正态分布，且 $X$ 与 $Y$ 不相关，$f_X(x),f_Y(y)$ 分别表示 $X,Y$ 的概率密度，则在 $Y=y$ 的条件下，$X$ 的条件概率密度 $f_(X|Y)(x|y)$ 为
#choices([$f_X(x)$.],[$f_Y(y)$.],[$f_X(x)f_Y(y)$.],[$f_X(x)/f_Y(y)$.])
#ezexam.solution(show-number: false)[
A.
]
]

= 二、填空题：11—16小题，每小题4分，共24分. 把答案填在题中横线上.

#ezexam.question[
$lim_(x->+infinity)(x^3+x^2+1)/(2^x+x^3)(sin x+cos x)=$#h(3em).
#ezexam.solution(show-number: false)[
0.
]
]

#ezexam.question[
设函数 $y=1/(2x+3)$，则 $y^((n))(0)=$#h(3em).
#ezexam.solution(show-number: false)[
$((-1)^n 2^n n!)/3^(n+1)$.
]
]

#ezexam.question[
设 $f(u,v)$ 是二元可微函数，$z=f(y/x,x/y)$，则 $x(partial z)/(partial x)-y(partial z)/(partial y)=$#h(3em).
#ezexam.solution(show-number: false)[
$2(-y/x f'_1+x/y f'_2)$.
]
]

#ezexam.question[
微分方程 $(dif y)/(dif x)=y/x-1/2(y/x)^3$ 满足 $y|_(x=1)=1$ 的特解为 $y=$#h(3em).
#ezexam.solution(show-number: false)[
$x/sqrt(1+ln x)$.
]
]

#ezexam.question[
设矩阵 $A=mat(0,1,0,0;0,0,1,0;0,0,0,1;0,0,0,0)$，则 $A^3$ 的秩为#h(3em).
#ezexam.solution(show-number: false)[
1.
]
]

#ezexam.question[
在区间 $(0,1)$ 中随机地取两个数，则这两个数之差的绝对值小于 $1/2$ 的概率为#h(3em).
#ezexam.solution(show-number: false)[
$3/4$.
]
]

= 三、解答题：17—24小题，共86分. 解答应写出文字说明、证明过程或演算步骤.

#ezexam.question[
（本题满分10分）设函数 $y=y(x)$ 由方程 $y ln y-x+y=0$ 确定，试判断曲线 $y=y(x)$ 在点 $(1,1)$ 附近的凹凸性.
#ezexam.solution(show-number: false)[
解　在 $y ln y-x+y=0$ 两边对 $x$ 求导得
$ y'ln y+y'-1+y'=0, $
于是 $y'=1/(2+ln y)$.

两边对 $x$ 再求导得
$ y''=-(y'/y)/(2+ln y)^2, $
将 $y'$ 代入得 $y''=-1/(y(2+ln y)^3)$.

将 $x=1,y=1$ 代入得 $y''(1)=-1/8$.

由于二阶导函数 $y''$ 在 $x=1$ 的附近是连续函数，所以由 $y''(1)=-1/8$，可知在 $x=1$ 的附近 $y''<0$，故曲线 $y=y(x)$ 在点 $(1,1)$ 附近是凸的.
]
]

#ezexam.question[
（本题满分11分）设二元函数
$ f(x,y)=cases(x^2 & |x|+|y|<=1,1/sqrt(x^2+y^2) & 1<|x|+|y|<=2), $
计算二重积分 $integral.double_D f(x,y)dif sigma$，其中 $D={(x,y)||x|+|y|<=2}$.
#ezexam.solution(show-number: false)[
解　由区域的对称性和被积函数的奇偶性有
$ integral.double_D f(x,y)dif sigma=4integral.double_(D_1)f(x,y)dif sigma, $
其中 $D_1$ 为 $D$ 在第一象限的部分，而
$ integral.double_(D_1)f(x,y)dif sigma=integral.double_(D_(11))f(x,y)dif sigma+integral.double_(D_(12))f(x,y)dif sigma, $
其中 $D_(11)={(x,y)|0<=y<=1-x,0<=x<=1}$，$D_(12)={(x,y)|1<=x+y<=2,x>=0,y>=0}$（如下图所示）.
#import "@preview/cetz:0.5.2"
#cetz.canvas({
 import cetz.draw: *
 line((-2.7,0),(3,0),mark:(end:">"));line((0,-2.6),(0,3),mark:(end:">"))
 for r in (1,2){line((r,0),(0,r),(-r,0),(0,-r),close:true)}
 for i in (-2,-1,1,2){content((i,-.1),[#i],anchor:"north");content((-.1,i),[#i],anchor:"east")}
 content((.35,.3),$D_(11)$);content((.8,.9),$D_(12)$);content((-.1,-.1),$O$,anchor:"north-east");content((3,0),$x$,anchor:"north");content((0,3),$y$,anchor:"east")
})
因为
$ integral.double_(D_(11))f(x,y)dif sigma=integral.double_(D_(11))x^2 dif sigma \
=integral_0^1 dif x integral_0^(1-x)x^2 dif y \
=integral_0^1 x^2(1-x)dif x=1/12, $
$ integral.double_(D_(12))f(x,y)dif sigma=integral.double_(D_(12))1/sqrt(x^2+y^2)dif sigma \
=integral_0^(pi/2)dif theta integral_(1/(sin theta+cos theta))^(2/(sin theta+cos theta))dif r \
=integral_0^(pi/2)1/(sin theta+cos theta)dif theta=sqrt(2)ln(sqrt(2)+1), $
所以
$ integral.double_D f(x,y)dif sigma=4[1/12+sqrt(2)ln(sqrt(2)+1)] \
=1/3+4sqrt(2)ln(sqrt(2)+1). $
]
]

#ezexam.question[
（本题满分11分）设函数 $f(x),g(x)$ 在 $[a,b]$ 上连续，在 $(a,b)$ 内二阶可导且存在相等的最大值，又 $f(a)=g(a),f(b)=g(b)$.证明：

（Ⅰ）存在 $eta in (a,b)$，使得 $f(eta)=g(eta)$；

（Ⅱ）存在 $xi in (a,b)$，使得 $f''(xi)=g''(xi)$.
#ezexam.solution(show-number: false)[
证　（Ⅰ）设 $f(x),g(x)$ 在 $(a,b)$ 内的最大值为 $M$，则存在 $alpha in (a,b),beta in (a,b)$（不妨设 $alpha<=beta$），使 $f(alpha)=M=g(beta)$.

当 $alpha=beta$ 时，取 $eta=alpha=beta in (a,b)$，有 $f(eta)=g(eta)$；

当 $alpha<beta$ 时，令 $h(x)=f(x)-g(x)$，则
$ h(alpha)=f(alpha)-g(alpha)=M-g(alpha)>=0, $
$ h(beta)=f(beta)-g(beta)=f(beta)-M<=0, $
则由介值定理，在 $eta in [alpha,beta] subset (a,b)$，使得 $h(eta)=0$，即 $f(eta)=g(eta)$.

（Ⅱ）因为
$ h(a)=f(a)-g(a)=0,h(eta)=0,h(b)=f(b)-g(b)=0, $
则由罗尔定理，在 $xi_1 in (a,eta),xi_2 in (eta,b)$，使得 $h'(xi_1)=h'(xi_2)=0$.

再由罗尔定理知，存在 $xi in (xi_1,xi_2) subset (a,b)$，使得 $h''(xi)=0$，即 $f''(xi)=g''(xi)$.
]
]

#ezexam.question[
（本题满分10分）
设函数 $f(x)$ 具有连续的一阶导数，且满足
$ f(x)=integral_0^x (x^2-t^2)f'(t)dif t+x^2, $
求 $f(x)$ 的表达式.
#ezexam.solution(show-number: false)[
解　$ f(x)=x^2 integral_0^x f'(t)dif t-integral_0^x t^2 f'(t)dif t+x^2, $
$ f'(x)=2x integral_0^x f'(t)dif t+x^2 f'(x)-x^2 f'(x)+2x=2x[f(x)-f(0)]+2x. $
由题设知 $f(0)=0$，故有
$ f'(x)-2x f(x)=2x, $
从而得
$ f(x)=e^(-integral -2x dif x)[integral 2x e^(integral -2x dif x)dif x+C] \
=e^(x^2)[integral 2x e^(-x^2)dif x+C] \
=e^(x^2)(-e^(-x^2)+C)=-1+C e^(x^2). $
将 $f(0)=0$ 代入上式，得 $C=1$，所以
$ f(x)=e^(x^2)-1. $
]
]

#ezexam.question[
（本题满分11分）设线性方程组
$ cases(x_1+x_2+x_3=0,x_1+2x_2+a x_3=0,x_1+4x_2+a^2 x_3=0) quad "①" $
与方程
$ x_1+2x_2+x_3=a-1 quad "②" $
有公共解，求 $a$ 的值及所有公共解.
#ezexam.solution(show-number: false)[
解法1　因为方程组①与②的公共解，即为联立方程组
$ cases(x_1+x_2+x_3=0,x_1+2x_2+a x_3=0,x_1+4x_2+a^2 x_3=0,x_1+2x_2+x_3=a-1) quad "③" $
的解.

对方程组③的增广矩阵 $overline(A)$ 施以初等行变换，有
$ overline(A)=mat(1,1,1,0;1,2,a,0;1,4,a^2,0;1,2,1,a-1,augment:#3) \
->mat(1,0,1,1-a;0,1,0,a-1;0,0,a-1,1-a;0,0,0,(a-1)(a-2),augment:#3)=B. $
由于方程组③有解，故③的系数矩阵的秩等于增广矩阵 $overline(A)$ 的秩，于是 $(a-1)(a-2)=0$，即 $a=1$ 或 $a=2$.

当 $a=1$ 时，
$ B=mat(1,0,1,0;0,1,0,0;0,0,0,0;0,0,0,0,augment:#3), $
因此①与②的公共解为 $x=k mat(-1;0;1)$，其中 $k$ 为任意常数.

当 $a=2$ 时，
$ B=mat(1,0,1,-1;0,1,0,1;0,0,1,-1;0,0,0,0,augment:#3) \
->mat(1,0,0,0;0,1,0,1;0,0,1,-1;0,0,0,0,augment:#3), $
因此①与②的公共解为 $x=mat(0;1;-1)$.

解法2　方程组①的系数行列式
$ det(mat(1,1,1;1,2,a;1,4,a^2))=(a-1)(a-2). $
当 $a!=1,a!=2$ 时，方程组①只有零解，但此时 $x=(0,0,0)^T$ 不是方程②的解.

当 $a=1$ 时，对方程组①的系数矩阵施以初等行变换，
$ mat(1,1,1;1,2,1;1,4,1)->mat(1,0,1;0,1,0;0,0,0), $
因此①的通解为 $x=k mat(-1;0;1)$，其中 $k$ 为任意常数.此解也满足方程②，所以方程组①与②的所有公共解为 $x=k mat(-1;0;1)$，其中 $k$ 为任意常数.

当 $a=2$ 时，对线性方程组①的系数矩阵施以初等行变换，
$ mat(1,1,1;1,2,2;1,4,4)->mat(1,0,0;0,1,1;0,0,0), $
因此①的通解为 $x=k mat(0;-1;1)$，其中 $k$ 为任意常数.将此解代入方程②，得 $k=-1$，所以方程组①与②的所有公共解为 $x=mat(0;1;-1)$.

所以 $a=1$ 或 $a=2$.
]
]

#ezexam.question[
（本题满分11分）设3阶实对称矩阵 $A$ 的特征值 $lambda_1=1,lambda_2=2,lambda_3=-2$，且 $alpha_1=(1,-1,1)^T$ 是 $A$ 的属于 $lambda_1$ 的一个特征向量.记 $B=A^5-4A^3+E$，其中 $E$ 为3阶单位矩阵.

（Ⅰ）验证 $alpha_1$ 是矩阵 $B$ 的特征向量，并求 $B$ 的全部特征值与特征向量；

（Ⅱ）求矩阵 $B$.
#ezexam.solution(show-number: false)[
解　（Ⅰ）由 $A alpha_1=lambda_1 alpha_1$，知
$ B alpha_1=(A^5-4A^3+E)alpha_1 \
=(lambda_1^5-4lambda_1^3+1)alpha_1=-2alpha_1, $
故 $alpha_1$ 是 $B$ 的属于特征值 $-2$ 的一个特征向量.

因为 $A$ 的全部特征值为 $lambda_1,lambda_2,lambda_3$，所以 $B$ 的全部特征值为 $lambda_i^5-4lambda_i^3+1 (i=1,2,3)$，即 $B$ 的全部特征值为 $-2,1,1$.

由 $B alpha_1=-2alpha_1$，知 $B$ 的属于特征值 $-2$ 的全部特征向量为 $k_1 alpha_1$，其中 $k_1$ 是不为零的任意常数.

因为 $A$ 是实对称矩阵，所以 $B$ 也是实对称矩阵.设 $(x_1,x_2,x_3)^T$ 为 $B$ 的属于特征值1的任一特征向量.因为实对称矩阵属于不同特征值的特征向量正交，所以 $(x_1,x_2,x_3)alpha_1=0$，即 $x_1-x_2+x_3=0$.

解得该方程组的基础解系为 $alpha_2=(1,1,0)^T,alpha_3=(-1,0,1)^T$，故 $B$ 的属于特征值1的全部特征向量为 $k_2 alpha_2+k_3 alpha_3$，其中 $k_2,k_3$ 为不全为零的常数.

（Ⅱ）令 $P=(alpha_1,alpha_2,alpha_3)=mat(1,1,-1;-1,1,0;1,0,1)$，那么
$ P^(-1)=mat(1/3,-1/3,1/3;1/3,2/3,1/3;-1/3,1/3,2/3). $
因为 $P^(-1)B P=mat(-2,0,0;0,1,0;0,0,1)$，所以
$ B=P mat(-2,0,0;0,1,0;0,0,1)P^(-1)=mat(0,1,-1;1,0,1;-1,1,0). $
]
]

#ezexam.question[
（本题满分11分）设二维随机变量 $(X,Y)$ 的概率密度为
$ f(x,y)=cases(2-x-y & 0<x<1 quad 0<y<1,0 & "其他"). $
（Ⅰ）求 $P{X>2Y}$；

（Ⅱ）求 $Z=X+Y$ 的概率密度 $f_Z(z)$.
#ezexam.solution(show-number: false)[
解　（Ⅰ）
$ P{X>2Y}=integral.double_(x>2y)f(x,y)dif x dif y \
=integral_0^1 dif x integral_0^(x/2)(2-x-y)dif y \
=integral_0^1(x-5/8 x^2)dif x=7/24. $
（Ⅱ）$f_Z(z)=integral_(-infinity)^(+infinity)f(x,z-x)dif x$，其中
$ f(x,z-x)=cases(2-x-(z-x) & 0<x<1 quad 0<z-x<1,0 & "其他") \
=cases(2-z & 0<x<1 quad 0<z-x<1,0 & "其他"). $
当 $z<=0$ 或 $z>=2$ 时，$f_Z(z)=0$；

当 $0<z<1$ 时，$f_Z(z)=integral_0^z(2-z)dif x=z(2-z)$；

当 $1<=z<2$ 时，$f_Z(z)=integral_(z-1)^1(2-z)dif x=(2-z)^2$，即 $Z$ 的概率密度为
$ f_Z(z)=cases(z(2-z) & 0<z<1,(2-z)^2 & 1<=z<2,0 & "其他"). $
]
]

#ezexam.question[
（本题满分11分）
设随机变量 $X$ 与 $Y$ 独立同分布，且 $X$ 的概率分布为
#table(columns: 3, [$X$], [1], [2], [$P$], [$2/3$], [$1/3$])
记 $U=max{X,Y}$，$V=min{X,Y}$，求：

（Ⅰ）$(U,V)$ 的概率分布；

（Ⅱ）$U$ 与 $V$ 的协方差 $op("Cov")(U,V)$.
#ezexam.solution(show-number: false)[
解　（Ⅰ）$(U,V)$ 有三个可能值：$(1,1)$，$(2,1)$，$(2,2)$，而
$ P{U=1,V=1}=P{X=1,Y=1}=P{X=1} dot P{Y=1}=4/9, $
$ P{U=2,V=1}=P{X=1,Y=2}+P{X=2,Y=1}=4/9, $
$ P{U=2,V=2}=P{X=2,Y=2}=P{X=2} dot P{Y=2}=1/9, $
故 $(U,V)$ 的概率分布为
#table(columns: 3, [$U backslash V$], [1], [2], [1], [$4/9$], [0], [2], [$4/9$], [$1/9$])
（Ⅱ）因为
$ E U=14/9, quad E V=10/9, quad E(U V)=16/9, $
所以
$ op("Cov")(U,V)=E(U V)-E U dot E V=4/81. $
]
]

