#import "../template.typ": exam
#show: exam.with(year: 2007, subject: "二", title: "2007年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#ezexam.answer-state.update(true)


= 一、选择题：1—10小题，每小题4分，共40分.在每小题给出的四个选项中，只有一项符合题目要求，把所选项前的字母填在题后的括号内.

#ezexam.question[
当 $x->0^+$ 时，与 $sqrt(x)$ 等价的无穷小量是
#choices([$1-e^sqrt(x)$.],[$ln((1+x)/(1-sqrt(x)))$.],[$sqrt(1+sqrt(x))-1$.],[$1-cos sqrt(x)$.])
#ezexam.solution(show-number: false)[
B.
]
]

#ezexam.question[
函数 $f(x)=((e^(1/x)+e)tan x)/(x(e^(1/x)-e))$ 在 $[-pi,pi]$ 上的第一类间断点是 $x=$
#choices([0.],[1.],[$-pi/2$.],[$pi/2$.])
#ezexam.solution(show-number: false)[
A.
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
设函数 $f(x)$ 在 $x=0$ 处连续，下列命题错误的是
#choices([若 $lim_(x->0)f(x)/x$ 存在，则 $f(0)=0$.],[若 $lim_(x->0)(f(x)+f(-x))/x$ 存在，则 $f(0)=0$.],[若 $lim_(x->0)f(x)/x$ 存在，则 $f'(0)$ 存在.],[若 $lim_(x->0)(f(x)-f(-x))/x$ 存在，则 $f'(0)$ 存在.])
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
设函数 $f(x)$ 在 $(0,+infinity)$ 内具有二阶导数，且 $f''(x)>0$，令 $u_n=f(n) (n=1,2,dots)$，则下列结论正确的是
#choices([若 $u_1>u_2$，则 ${u_n}$ 必收敛.],[若 $u_1>u_2$，则 ${u_n}$ 必发散.],[若 $u_1<u_2$，则 ${u_n}$ 必收敛.],[若 $u_1<u_2$，则 ${u_n}$ 必发散.])
#ezexam.solution(show-number: false)[
D.
]
]

#ezexam.question[
二元函数 $f(x,y)$ 在点 $(0,0)$ 处可微的一个充分条件是
#choices([$lim_((x,y)->(0,0))[f(x,y)-f(0,0)]=0$.],[$lim_(x->0)(f(x,0)-f(0,0))/x=0$，且 $lim_(y->0)(f(0,y)-f(0,0))/y=0$.],[$lim_((x,y)->(0,0))(f(x,y)-f(0,0))/sqrt(x^2+y^2)=0$.],[$lim_(x->0)[f'_x(x,0)-f'_x(0,0)]=0$，且 $lim_(y->0)[f'_y(0,y)-f'_y(0,0)]=0$.])
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

= 二、填空题：11—16小题，每小题4分，共24分.把答案填在题中横线上.

#ezexam.question[
$lim_(x->0)(arctan x-sin x)/x^3=$#h(3em).
#ezexam.solution(show-number: false)[
$-1/6$.
]
]

#ezexam.question[
曲线 $cases(x=cos t+cos^2 t,y=1+sin t)$ 上对应于 $t=pi/4$ 的点处的法线斜率为#h(3em).
#ezexam.solution(show-number: false)[
$1+sqrt(2)$.
]
]

#ezexam.question[
设函数 $y=1/(2x+3)$，则 $y^((n))(0)=$#h(3em).
#ezexam.solution(show-number: false)[
$((-1)^n 2^n n!)/3^(n+1)$.
]
]

#ezexam.question[
二阶常系数非齐次线性微分方程 $y''-4y'+3y=2e^(2x)$ 的通解为 $y=$#h(3em).
#ezexam.solution(show-number: false)[
$C_1 e^(3x)+C_2 e^x-2e^(2x)$.
]
]

#ezexam.question[
设 $f(u,v)$ 是二元可微函数，$z=f(y/x,x/y)$，则 $x(partial z)/(partial x)-y(partial z)/(partial y)=$#h(3em).
#ezexam.solution(show-number: false)[
$2(-y/x f'_1+x/y f'_2)$.
]
]

#ezexam.question[
设矩阵 $A=mat(0,1,0,0;0,0,1,0;0,0,0,1;0,0,0,0)$，则 $A^3$ 的秩为#h(3em).
#ezexam.solution(show-number: false)[
1.
]
]

= 三、解答题：17—24小题，共86分.解答应写出文字说明、证明过程或演算步骤.

#ezexam.question[
（本题满分10分）设 $f(x)$ 是区间 $[0,pi/4]$ 上的单调、可导函数，且满足
$ integral_0^(f(x)) f^(-1)(t)dif t=integral_0^x t (cos t-sin t)/(sin t+cos t)dif t, $
其中 $f^(-1)$ 是 $f$ 的反函数，求 $f(x)$.
#ezexam.solution(show-number: false)[
解　在 $integral_0^(f(x))f^(-1)(t)dif t=integral_0^x t (cos t-sin t)/(sin t+cos t)dif t$ 两边对 $x$ 求导，得
$ f^(-1)[f(x)]dot f'(x)=x (cos x-sin x)/(sin x+cos x), $
即 $x f'(x)=x(cos x-sin x)/(sin x+cos x)$，
$ f'(x)=(cos x-sin x)/(sin x+cos x),quad x in (0,pi/4], $
故
$ f(x)=integral (cos x-sin x)/(sin x+cos x)dif x=ln(sin x+cos x)+C. $
由题设知，$f(0)=0$，于是 $C=0$，因此 $f(x)=ln(sin x+cos x),x in [0,pi/4]$.
]
]

#ezexam.question[
（本题满分11分）设 $D$ 是位于曲线 $y=sqrt(x)a^(-x/(2a)) (a>1,0<=x<+infinity)$ 下方、$x$ 轴上方的无界区域.

（Ⅰ）求区域 $D$ 绕 $x$ 轴旋转一周所成旋转体的体积 $V(a)$；

（Ⅱ）当 $a$ 为何值时，$V(a)$ 最小？并求此最小值.
#ezexam.solution(show-number: false)[
解　（Ⅰ）所求旋转体的体积为
$ V(a)=pi integral_0^(+infinity)x a^(-x/a)dif x \
=-a/(ln a)pi integral_0^(+infinity)x dif(a^(-x/a)) \
=-a/(ln a)pi[x a^(-x/a)]|_0^(+infinity)+a/(ln a)pi integral_0^(+infinity)a^(-x/a)dif x \
=pi(a/(ln a))^2. $
（Ⅱ）$V'(a)=2pi(a(ln a-1))/(ln^3 a)$.

令 $V'(a)=0$，得 $ln a=1$，从而 $a=e$.

当 $1<a<e$ 时，$V'(a)<0,V(a)$ 单调减少；当 $a>e$ 时，$V'(a)>0,V(a)$ 单调增加.

所以 $a=e$ 时 $V$ 最小，最小体积为 $V(e)=pi(e/(ln e))^2=pi e^2$.
]
]

#ezexam.question[
（本题满分10分）求微分方程 $y''(x+y'^2)=y'$ 满足初始条件 $y(1)=y'(1)=1$ 的特解.
#ezexam.solution(show-number: false)[
解　令 $y'=p$，则 $y''=p'$，原方程化为 $p'(x+p^2)=p$，即 $(dif x)/(dif p)-x/p=p$，于是
$ x=e^(integral 1/p dif p)(integral p e^(-integral 1/p dif p)dif p+C_1) \
=p(integral dif p+C_1)=p(p+C_1). $
因 $p|_(x=1)=y'(1)=1$，得 $C_1=0$，故 $p^2=x$.

由 $y'(1)=1$ 知，应取 $p=sqrt(x)$，即 $(dif y)/(dif x)=sqrt(x)$，解得 $y=2/3 x^(3/2)+C_2$，又由 $y(1)=1$ 得 $C_2=1/3$，故 $y=2/3 x^(3/2)+1/3$.
]
]

#ezexam.question[
（本题满分11分）已知函数 $f(u)$ 具有二阶导数，且 $f'(0)=1$，函数 $y=y(x)$ 由方程 $y-x e^(y-1)=1$ 所确定.设 $z=f(ln y-sin x)$，求 $(dif z)/(dif x)|_(x=0),(dif^2 z)/(dif x^2)|_(x=0)$.
#ezexam.solution(show-number: false)[
解　在 $y-x e^(y-1)=1$ 中，令 $x=0$ 得 $y=1$.

在 $y-x e^(y-1)=1$ 两边对 $x$ 求导，得 $y'-e^(y-1)-x y'e^(y-1)=0$，即
$ (2-y)y'-e^(y-1)=0. quad "（*）" $
由 $x=0,y=1$ 得 $y'|_(x=0)=1$.

在（＊）式两边对 $x$ 求导，得 $(2-y)y''-y'^2-e^(y-1)y'=0$.由 $x=0$ 时，$y=1,y'=1$ 得 $y''|_(x=0)=2$.

因为 $(dif z)/(dif x)=f'(ln y-sin x)(y'/y-cos x)$，故 $(dif z)/(dif x)|_(x=0)=0$.

又
$ (dif^2 z)/(dif x^2)=&f''(ln y-sin x)(y'/y-cos x)^2 \
&+f'(ln y-sin x)[y''/y-(y')^2/y^2+sin x], $
所以 $(dif^2 z)/(dif x^2)|_(x=0)=f'(0)(2-1)=1$.
]
]

#ezexam.question[
（本题满分11分）设函数 $f(x),g(x)$ 在 $[a,b]$ 上连续，在 $(a,b)$ 内具有二阶导数且存在相等的最大值，$f(a)=g(a),f(b)=g(b)$，证明：存在 $xi in (a,b)$，使得 $f''(xi)=g''(xi)$.
#ezexam.solution(show-number: false)[
证　令 $h(x)=f(x)-g(x)$，则 $h(a)=h(b)=0$.

设 $f(x),g(x)$ 在 $(a,b)$ 内的最大值 $M$ 分别在 $alpha in (a,b),beta in (a,b)$ 取得.

当 $alpha=beta$ 时，取 $eta=alpha$，则 $h(eta)=0$.

当 $alpha!=beta$ 时，
$ h(alpha)=f(alpha)-g(alpha)=M-g(alpha)>=0, $
$ h(beta)=f(beta)-g(beta)=f(beta)-M<=0, $
由介值定理，存在介于 $alpha$ 与 $beta$ 之间的点 $eta$，使得 $h(eta)=0$.

综上，存在 $eta in (a,b)$，使得 $h(eta)=0$.

因此由罗尔定理可知，存在 $xi_1 in (a,eta),xi_2 in (eta,b)$，使得 $h'(xi_1)=h'(xi_2)=0$，再由罗尔定理可知，存在 $xi in (xi_1,xi_2) subset (a,b)$，使得 $h''(xi)=0$，即 $f''(xi)=g''(xi)$.
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

