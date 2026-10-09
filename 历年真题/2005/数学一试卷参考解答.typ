#import "../template.typ": exam
#show: exam.with(year: 2005, subject: "一", title: "2005年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#ezexam.answer-state.update(true)


= 一、填空题（本题共6小题，每小题4分，满分24分）

#ezexam.question[
曲线 $y=x^2/(2x+1)$ 的斜渐近线方程为#h(3em).
#ezexam.solution(show-number: false)[
$y=1/2 x-1/4$.
]
]

#ezexam.question[
微分方程 $x y'+2y=x ln x$ 满足 $y(1)=-1/9$ 的解为#h(3em).
#ezexam.solution(show-number: false)[
$y=x/3(ln x-1/3)$.
]
]

#ezexam.question[
设函数 $u(x,y,z)=1+x^2/6+y^2/12+z^2/18$，单位向量 $bold(n)=1/sqrt(3){1,1,1}$，则 $lr((partial u)/(partial bold(n)))|_((1,2,3))=$#h(3em).
#ezexam.solution(show-number: false)[
$sqrt(3)/3$.
]
]

#ezexam.question[
设 $Omega$ 是由锥面 $z=sqrt(x^2+y^2)$ 与半球面 $z=sqrt(R^2-x^2-y^2)$ 围成的空间区域，$Sigma$ 是 $Omega$ 的整个边界的外侧，则 $integral.double_Sigma x dif y dif z+y dif z dif x+z dif x dif y=$#h(3em).
#ezexam.solution(show-number: false)[
$(2-sqrt(2))pi R^3$.
]
]

#ezexam.question[
设 $alpha_1,alpha_2,alpha_3$ 均为三维列向量，记矩阵 $A=(alpha_1,alpha_2,alpha_3),B=(alpha_1+alpha_2+alpha_3,alpha_1+2alpha_2+4alpha_3,alpha_1+3alpha_2+9alpha_3)$.如果 $|A|=1$，那么 $|B|=$#h(3em).
#ezexam.solution(show-number: false)[
2.
]
]

#ezexam.question[
从数1，2，3，4中任取一个数，记为 $X$，再从 $1,dots,X$ 中任取一个数，记为 $Y$，则 $P{Y=2}=$#h(3em).
#ezexam.solution(show-number: false)[
$13/48$.
]
]

= 二、选择题（本题共8小题，每小题4分，满分32分）

#ezexam.question[
设函数 $f(x)=lim_(n->infinity) root(n,1+|x|^(3n))$，则 $f(x)$ 在 $(-infinity,+infinity)$ 内
#choices[处处可导.][恰有一个不可导点.][恰有两个不可导点.][至少有三个不可导点.]
#ezexam.solution(show-number: false)[
C.
]
]

#ezexam.question[
设 $F(x)$ 是连续函数 $f(x)$ 的一个原函数，“$M<=>N$”表示“$M$ 的充分必要条件是 $N$”，则必有
#choices([$F(x)$ 是偶函数 $<=>$ $f(x)$ 是奇函数.],[$F(x)$ 是奇函数 $<=>$ $f(x)$ 是偶函数.],[$F(x)$ 是周期函数 $<=>$ $f(x)$ 是周期函数.],[$F(x)$ 是单调函数 $<=>$ $f(x)$ 是单调函数.])
#ezexam.solution(show-number: false)[
A.
]
]

#ezexam.question[
设函数 $u(x,y)=phi(x+y)+phi(x-y)+integral_(x-y)^(x+y)psi(t)dif t$，其中函数 $phi$ 具有二阶导数，$psi$ 具有一阶导数，则必有
#choices([$(partial^2 u)/(partial x^2)=-(partial^2 u)/(partial y^2)$.],[$(partial^2 u)/(partial x^2)=(partial^2 u)/(partial y^2)$.],[$(partial^2 u)/(partial x partial y)=(partial^2 u)/(partial y^2)$.],[$(partial^2 u)/(partial x partial y)=(partial^2 u)/(partial x^2)$.])
#ezexam.solution(show-number: false)[
B.
]
]

#ezexam.question[
设有三元方程 $x y-z ln y+e^(x z)=1$，根据隐函数存在定理，存在点 $(0,1,1)$ 的一个邻域，在此邻域内该方程
#choices([只能确定一个具有连续偏导数的隐函数 $z=z(x,y)$.],[可确定两个具有连续偏导数的隐函数 $y=y(x,z)$ 和 $z=z(x,y)$.],[可确定两个具有连续偏导数的隐函数 $x=x(y,z)$ 和 $z=z(x,y)$.],[可确定两个具有连续偏导数的隐函数 $x=x(y,z)$ 和 $y=y(x,z)$.])
#ezexam.solution(show-number: false)[
D.
]
]

#ezexam.question[
设 $lambda_1,lambda_2$ 是矩阵 $A$ 的两个不同的特征值，对应的特征向量分别为 $alpha_1,alpha_2$，则 $alpha_1,A(alpha_1+alpha_2)$ 线性无关的充分必要条件是
#choices([$lambda_1!=0$.],[$lambda_2!=0$.],[$lambda_1=0$.],[$lambda_2=0$.])
#ezexam.solution(show-number: false)[
B.
]
]

#ezexam.question[
设 $A$ 为 $n (n>=2)$ 阶可逆矩阵，交换 $A$ 的第1行与第2行得矩阵 $B$，$A^*,B^*$ 分别为 $A,B$ 的伴随矩阵，则
#choices([交换 $A^*$ 的第1列与第2列得 $B^*$.],[交换 $A^*$ 的第1行与第2行得 $B^*$.],[交换 $A^*$ 的第1列与第2列得 $-B^*$.],[交换 $A^*$ 的第1行与第2行得 $-B^*$.])
#ezexam.solution(show-number: false)[
C.
]
]

#ezexam.question[
设二维随机变量 $(X,Y)$ 的概率分布为
#table(columns:3,[$X \ Y$],[0],[1],[0],[0.4],[$a$],[1],[$b$],[0.1])
已知随机事件 $\{X=0\}$ 与 $\{X+Y=1\}$ 相互独立，则
#choices([$a=0.2,b=0.3$.],[$a=0.4,b=0.1$.],[$a=0.3,b=0.2$.],[$a=0.1,b=0.4$.])
#ezexam.solution(show-number: false)[
B.
]
]

#ezexam.question[
设 $X_1,X_2,dots,X_n (n>=2)$ 为来自总体 $N(0,1)$ 的简单随机样本，$overline(X)$ 为样本均值，$S^2$ 为样本方差，则
#choices([$n overline(X) tilde N(0,1)$.],[$n S^2 tilde chi^2(n)$.],[$((n-1)overline(X))/S tilde t(n-1)$.],[$((n-1)X_1^2)/(sum_(i=2)^n X_i^2) tilde F(1,n-1)$.])
#ezexam.solution(show-number: false)[
D.
]
]

= 三、解答题（本题共9小题，满分94分. 解答应写出文字说明、证明过程或演算步骤.）

#ezexam.question[
（本题满分11分）设 $D={(x,y)|x^2+y^2<=sqrt(2),x>=0,y>=0}$，$[1+x^2+y^2]$ 表示不超过 $1+x^2+y^2$ 的最大整数.计算二重积分 $integral.double_D x y[1+x^2+y^2]dif x dif y$.
#ezexam.solution(show-number: false)[
解法1
$ integral.double_D x y[1+x^2+y^2]dif x dif y \
=integral_0^(pi/2)dif theta integral_0^root(4,2)r^3 sin theta cos theta[1+r^2]dif r \
=integral_0^(pi/2)sin theta cos theta dif theta integral_0^root(4,2)r^3[1+r^2]dif r \
=1/2(integral_0^1 r^3 dif r+integral_1^root(4,2)2r^3 dif r)=3/8. $
解法2　记 $D_1={(x,y)|x^2+y^2<1,x>=0,y>=0}$，$D_2={(x,y)|1<=x^2+y^2<=sqrt(2),x>=0,y>=0}$，则有
$ [1+x^2+y^2]=1,(x,y)in D_1,quad [1+x^2+y^2]=2,(x,y)in D_2, $
于是
$ integral.double_D x y[1+x^2+y^2]dif x dif y \
=integral.double_(D_1)x y dif x dif y+integral.double_(D_2)2x y dif x dif y \
=integral_0^(pi/2)dif theta integral_0^1 r^3 sin theta cos theta dif r \
+integral_0^(pi/2)dif theta integral_1^root(4,2)2r^3 sin theta cos theta dif r \
=1/8+1/4=3/8. $
]
]

#ezexam.question[
（本题满分12分）求幂级数 $sum_(n=1)^infinity(-1)^(n-1)[1+1/(n(2n-1))]x^(2n)$ 的收敛区间与和函数 $f(x)$.
#ezexam.solution(show-number: false)[
解　因为 $lim_(n->infinity)((n+1)(2n+1)+1)/((n+1)(2n+1)) dot (n(2n-1))/(n(2n-1)+1)=1$，所以当 $x^2<1$ 时，原级数绝对收敛；当 $x^2>1$ 时，原级数发散.因此原级数的收敛半径为1，收敛区间为 $(-1,1)$.
记 $S(x)=sum_(n=1)^infinity ((-1)^(n-1))/(2n(2n-1))x^(2n),x in (-1,1)$，则
$ S'(x)=sum_(n=1)^infinity ((-1)^(n-1))/(2n-1)x^(2n-1),x in (-1,1), \
S''(x)=sum_(n=1)^infinity(-1)^(n-1)x^(2n-2)=1/(1+x^2),x in (-1,1). $
由于 $S(0)=0,S'(0)=0$，所以
$ S'(x)=integral_0^x S''(t)dif t=integral_0^x 1/(1+t^2)dif t=arctan x, \
S(x)=integral_0^x S'(t)dif t=integral_0^x arctan t dif t=x arctan x-1/2 ln(1+x^2). $
又 $sum_(n=1)^infinity(-1)^(n-1)x^(2n)=x^2/(1+x^2),x in (-1,1)$，从而
$ f(x)=2S(x)+x^2/(1+x^2)=2x arctan x-ln(1+x^2)+x^2/(1+x^2),x in (-1,1). $
]
]

#ezexam.question[
（本题满分11分）如下图所示，曲线 $C$ 的方程为 $y=f(x)$，点 $(3,2)$ 是它的一个拐点，直线 $l_1$ 与 $l_2$ 分别是曲线 $C$ 在点 $(0,0)$ 与 $(3,2)$ 处的切线，其交点为 $(2,4)$.设函数 $f(x)$ 具有三阶连续导数，计算定积分 $integral_0^3(x^2+x)f'''(x)dif x$.
#import "@preview/cetz:0.5.2"
#cetz.canvas({
 import cetz.draw: *
 for i in range(1,6) {line((i,0),(i,5),stroke:.3pt);line((0,i),(5,i),stroke:.3pt)}
 line((-.4,0),(5.6,0),mark:(end:">"));line((0,-.4),(0,5.7),mark:(end:">"))
 line((0,0),(2.4,4.8));line((1.6,4.8),(4,0))
 bezier((0,0),(3,2),(.7,1.4),(2,4));bezier((3,2),(4.3,1.3),(3.4,1.2),(3.8,1.2))
 for i in range(1,5){content((i,-.1),[ #i ],anchor:"north");content((-.1,i),[ #i ],anchor:"east")}
 content((-.1,-.1),$O$,anchor:"north-east");content((5.6,0),$x$,anchor:"north");content((0,5.7),$y$,anchor:"east");content((2.5,4.5),$l_1$);content((1.4,4.5),$l_2$);content((1.2,1.5),$C$);content((4.1,1.7),$y=f(x)$)
})
#ezexam.solution(show-number: false)[
解
$ integral_0^3(x^2+x)f'''(x)dif x \
=lr((x^2+x)f''(x))|_0^3-integral_0^3(2x+1)f''(x)dif x \
=-integral_0^3(2x+1)f''(x)dif x \
=-lr((2x+1)f'(x))|_0^3+2integral_0^3 f'(x)dif x \
=-[7 times (-2)-2]+2integral_0^3 f'(x)dif x \
=16+2f(x)|_0^3=16+4=20. $
]
]

#ezexam.question[
（本题满分12分）已知函数 $f(x)$ 在 $[0,1]$ 上连续，在 $(0,1)$ 内可导，且 $f(0)=0,f(1)=1$.证明：

（Ⅰ）存在 $xi in (0,1)$，使得 $f(xi)=1-xi$；

（Ⅱ）存在两个不同的点 $eta,zeta in (0,1)$，使得 $f'(eta)f'(zeta)=1$.
#ezexam.solution(show-number: false)[
证　（Ⅰ）令 $g(x)=f(x)+x-1$，则 $g(x)$ 在 $[0,1]$ 上连续，且 $g(0)=-1<0,g(1)=1>0$，所以存在 $xi in (0,1)$，使得 $g(xi)=f(xi)+xi-1=0$，即 $f(xi)=1-xi$.

（Ⅱ）根据拉格朗日中值定理，存在 $eta in (0,xi),zeta in (xi,1)$，使得
$ f'(eta)=(f(xi)-f(0))/xi=(1-xi)/xi, \
f'(zeta)=(f(1)-f(xi))/(1-xi)=(1-(1-xi))/(1-xi)=xi/(1-xi), $
从而 $f'(eta)f'(zeta)=(1-xi)/xi dot xi/(1-xi)=1$.
]
]

#ezexam.question[
（本题满分12分）设函数 $phi(y)$ 具有连续导数，在围绕原点的任意分段光滑简单闭曲线 $L$ 上，曲线积分 $integral.cont_L (phi(y)dif x+2x y dif y)/(2x^2+y^4)$ 的值为同一常数.

（Ⅰ）证明：对右半平面 $x>0$ 内的任意分段光滑简单闭曲线 $C$，有 $integral.cont_C(phi(y)dif x+2x y dif y)/(2x^2+y^4)=0$；

（Ⅱ）求函数 $phi(y)$ 的表达式.
#ezexam.solution(show-number: false)[
（Ⅰ）证　如下图所示，设 $C$ 是半平面 $x>0$ 内的任一分段光滑简单闭曲线，在 $C$ 上任意取定两点 $M,N$，作围绕原点的闭曲线 $overparen(M Q N R M)$，同时得到另一围绕原点的闭曲线 $overparen(M Q N P M)$.
#import "@preview/cetz:0.5.2"
#cetz.canvas({
 import cetz.draw: *
 line((-1.5,0),(3.7,0),mark:(end:">"));line((0,-1.4),(0,3.6),mark:(end:">"))
 bezier((1,2),(2.7,1.4),(1.4,3.6),(3.7,3.5),mark:(end:">"));bezier((2.7,1.4),(1,2),(1.6,.3),(.5,.8),mark:(end:">"))
 bezier((1,2),(2.7,1.4),(-3,-.5),(-.4,-3),stroke:(dash:"dashed"),mark:(end:">"))
 content((.85,2.1),$M$,anchor:"east");content((2.85,1.3),$N$);content((2,2.6),$R$);content((1.7,1.2),$P$);content((-.7,-1.1),$Q$);content((3,3),$C$);content((-.1,-.1),$O$,anchor:"north-east");content((3.7,0),$x$,anchor:"north");content((0,3.6),$y$,anchor:"east")
})
根据题设可知
$ integral.cont_(overparen(M Q N R M))(phi(y)dif x+2x y dif y)/(2x^2+y^4)-integral.cont_(overparen(M Q N P M))(phi(y)dif x+2x y dif y)/(2x^2+y^4)=0. $
根据第二类曲线积分的性质，利用上式可得
$ integral.cont_C (phi(y)dif x+2x y dif y)/(2x^2+y^4) \
=integral_(overparen(N R M))(phi(y)dif x+2x y dif y)/(2x^2+y^4)+integral_(overparen(M P N))(phi(y)dif x+2x y dif y)/(2x^2+y^4) \
=integral_(overparen(N R M))(phi(y)dif x+2x y dif y)/(2x^2+y^4)-integral_(overparen(N P M))(phi(y)dif x+2x y dif y)/(2x^2+y^4) \
=integral.cont_(overparen(M Q N R M))(phi(y)dif x+2x y dif y)/(2x^2+y^4)-integral.cont_(overparen(M Q N P M))(phi(y)dif x+2x y dif y)/(2x^2+y^4)=0. $
（Ⅱ）解　设 $P=phi(y)/(2x^2+y^4),Q=(2x y)/(2x^2+y^4)$，$P,Q$ 在单连通区域 $x>0$ 内具有一阶连续偏导数.由（Ⅰ）知，曲线积分 $integral_L(phi(y)dif x+2x y dif y)/(2x^2+y^4)$ 在该区域内与路径无关，故当 $x>0$ 时，总有 $(partial Q)/(partial x)=(partial P)/(partial y)$.
$ (partial Q)/(partial x)=(2y(2x^2+y^4)-4x dot 2x y)/(2x^2+y^4)^2=(-4x^2 y+2y^5)/(2x^2+y^4)^2, quad #text[①] \
(partial P)/(partial y)=(phi'(y)(2x^2+y^4)-4phi(y)y^3)/(2x^2+y^4)^2 \
=(2x^2 phi'(y)+phi'(y)y^4-4phi(y)y^3)/(2x^2+y^4)^2. quad #text[②] $
比较①、②两式的右端，得
$ phi'(y)=-2y, quad #text[③] \
phi'(y)y^4-4phi(y)y^3=2y^5. quad #text[④] $
由③得 $phi(y)=-y^2+C$，将 $phi(y)$ 代入④得 $2y^5-4C y^3=2y^5$，所以 $C=0$，从而 $phi(y)=-y^2$.
]
]

#ezexam.question[
（本题满分9分）已知二次型 $f(x_1,x_2,x_3)=(1-a)x_1^2+(1-a)x_2^2+2x_3^2+2(1+a)x_1 x_2$ 的秩为2.

（Ⅰ）求 $a$ 的值；

（Ⅱ）求正交变换 $bold(x)=Q bold(y)$，把 $f(x_1,x_2,x_3)$ 化成标准形；

（Ⅲ）求方程 $f(x_1,x_2,x_3)=0$ 的解.
#ezexam.solution(show-number: false)[
解　（Ⅰ）由于二次型 $f$ 的秩为2，对应的矩阵 $A=mat(1-a,1+a,0;1+a,1-a,0;0,0,2)$ 的秩为2，所以有
$ mat(delim:"|",1-a,1+a;1+a,1-a)=-4a=0, $
得 $a=0$.
（Ⅱ）当 $a=0$ 时，$A=mat(1,1,0;1,1,0;0,0,2)$，
$ |lambda E-A|=mat(delim:"|",lambda-1,-1,0;-1,lambda-1,0;0,0,lambda-2)=(lambda-2)^2 lambda, $
可知 $A$ 的特征值为 $lambda_1=lambda_2=2,lambda_3=0$.
$A$ 的属于 $lambda_1=2$ 的线性无关的特征向量为 $eta_1=(1,1,0)^"T",eta_2=(0,0,1)^"T"$；$A$ 的属于 $lambda_3=0$ 的特征向量为 $eta_3=(-1,1,0)^"T"$.
易见 $eta_1,eta_2,eta_3$ 两两正交.将 $eta_1,eta_2,eta_3$ 单位化得
$ bold(e)_1=1/sqrt(2)(1,1,0)^"T",quad bold(e)_2=(0,0,1)^"T",quad bold(e)_3=1/sqrt(2)(-1,1,0)^"T", $
取 $Q=(bold(e)_1,bold(e)_2,bold(e)_3)$，则 $Q$ 为正交矩阵.令 $bold(x)=Q bold(y)$，得
$ f(x_1,x_2,x_3)=lambda_1 y_1^2+lambda_2 y_2^2+lambda_3 y_3^2=2y_1^2+2y_2^2. $
（Ⅲ）解法1　在正交变换 $bold(x)=Q bold(y)$ 下，$f(x_1,x_2,x_3)=0$ 化成 $2y_1^2+2y_2^2=0$，解之得 $y_1=y_2=0$，从而
$ bold(x)=Q mat(0;0;y_3)=(bold(e)_1,bold(e)_2,bold(e)_3)mat(0;0;y_3)=y_3 bold(e)_3=k(-1,1,0)^"T", $
其中 $k$ 为任意常数.
解法2　由于 $f(x_1,x_2,x_3)=x_1^2+x_2^2+2x_3^2+2x_1 x_2=(x_1+x_2)^2+2x_3^2=0$，所以 $cases(x_1+x_2=0,x_3=0)$，其通解为 $bold(x)=k(-1,1,0)^"T"$，其中 $k$ 为任意常数.
]
]

#ezexam.question[
（本题满分9分）已知三阶矩阵 $A$ 的第1行是 $(a,b,c)$，$a,b,c$ 不全为零，矩阵 $B=mat(1,2,3;2,4,6;3,6,k)$（$k$ 为常数），且 $A B=O$，求线性方程组 $A bold(x)=bold(0)$ 的通解.
#ezexam.solution(show-number: false)[
解　由于 $A B=O$，故 $r(A)+r(B)<=3$，又由 $a,b,c$ 不全为零，可知 $r(A)>=1$.
当 $k!=9$ 时，$r(B)=2$，于是 $r(A)=1$；当 $k=9$ 时，$r(B)=1$，于是 $r(A)=1$ 或 $r(A)=2$.
对于 $k!=9$，由 $A B=O$ 可得 $A mat(1;2;3)=bold(0)$ 和 $A mat(3;6;k)=bold(0)$.
由于 $eta_1=(1,2,3)^"T",eta_2=(3,6,k)^"T"$ 线性无关，故 $eta_1,eta_2$ 为 $A bold(x)=bold(0)$ 的一个基础解系，于是 $A bold(x)=bold(0)$ 的通解为 $bold(x)=c_1 eta_1+c_2 eta_2$，其中 $c_1,c_2$ 为任意常数.
对于 $k=9$，分别就 $r(A)=2$ 和 $r(A)=1$ 进行讨论.
如果 $r(A)=2$，则 $A bold(x)=bold(0)$ 的基础解系由一个向量构成.又因为 $A mat(1;2;3)=bold(0)$，所以 $A bold(x)=bold(0)$ 的通解为 $bold(x)=c_1(1,2,3)^"T"$，其中 $c_1$ 为任意常数.
如果 $r(A)=1$，则 $A bold(x)=bold(0)$ 的基础解系由两个向量构成.又因为 $A$ 的第1行为 $(a,b,c)$，且 $a,b,c$ 不全为零，所以 $A bold(x)=bold(0)$ 等价于 $a x_1+b x_2+c x_3=0$.不妨设 $a!=0$，$eta_1=(-b,a,0)^"T",eta_2=(-c,0,a)^"T"$ 是 $A bold(x)=bold(0)$ 的两个线性无关的解，故 $A bold(x)=bold(0)$ 的通解为 $bold(x)=c_1 eta_1+c_2 eta_2$，其中 $c_1,c_2$ 为任意常数.
]
]

#ezexam.question[
（本题满分9分）设二维随机变量 $(X,Y)$ 的概率密度为
$ f(x,y)=cases(1 & 0<x<1,0<y<2x,0 & #text[其他]). $
求：（Ⅰ）$(X,Y)$ 的边缘概率密度 $f_X(x),f_Y(y)$；

（Ⅱ）$Z=2X-Y$ 的概率密度 $f_Z(z)$.
#ezexam.solution(show-number: false)[
解　（Ⅰ）当 $0<x<1$ 时，$f_X(x)=integral_(-infinity)^(+infinity)f(x,y)dif y=integral_0^(2x)dif y=2x$；当 $x<=0$ 或 $x>=1$ 时，$f_X(x)=0$，即 $f_X(x)=cases(2x & 0<x<1,0 & #text[其他])$.
当 $0<y<2$ 时，$f_Y(y)=integral_(-infinity)^(+infinity)f(x,y)dif x=integral_(y/2)^1 dif x=1-y/2$；当 $y<=0$ 或 $y>=2$ 时，$f_Y(y)=0$，即 $f_Y(y)=cases(1-y/2 & 0<y<2,0 & #text[其他])$.

（Ⅱ）解法1　当 $z<=0$ 时，$F_Z(z)=0$；当 $0<z<2$ 时，
$ F_Z(z)=P{2X-Y<=z}=integral.double_(2x-y<=z)f(x,y)dif x dif y=z-z^2/4; $
当 $z>=2$ 时，$F_Z(z)=1$，所以 $f_Z(z)=cases(1-z/2 & 0<z<2,0 & #text[其他])$.
解法2　$f_Z(z)=integral_(-infinity)^(+infinity)f(x,2x-z)dif x$，其中 $f(x,2x-z)=cases(1 & 0<x<1,0<z<2x,0 & #text[其他])$.
当 $z<=0$ 或 $z>=2$ 时，$f_Z(z)=0$；当 $0<z<2$ 时，$f_Z(z)=integral_(z/2)^1 dif x=1-z/2$，即 $f_Z(z)=cases(1-z/2 & 0<z<2,0 & #text[其他])$.
]
]

#ezexam.question[
（本题满分9分）设 $X_1,X_2,dots,X_n (n>2)$ 为来自总体 $N(0,1)$ 的简单随机样本，$overline(X)$ 为样本均值，记 $Y_i=X_i-overline(X),i=1,2,dots,n$.
求：（Ⅰ）$Y_i$ 的方差 $D Y_i,i=1,2,dots,n$；

（Ⅱ）$Y_1$ 与 $Y_n$ 的协方差 $op("Cov")(Y_1,Y_n)$.
#ezexam.solution(show-number: false)[
解　（Ⅰ）
$ D Y_i=D(X_i-overline(X))=D[(1-1/n)X_i-1/n sum_(k=1,k!=i)^n X_k]=(n-1)/n quad (i=1,2,dots,n). $
（Ⅱ）
$ op("Cov")(Y_1,Y_n)&=E(Y_1-E Y_1)(Y_n-E Y_n) \
&=E(X_1-overline(X))(X_n-overline(X)) \
&=E(X_1 X_n)+E(overline(X)^2)-E(X_1 overline(X))-E(X_n overline(X)) \
&=E X_1 E X_n+D overline(X)-1/n E(X_1^2)-1/n sum_(k=2)^n E(X_1 X_k) \
&quad-1/n E(X_n^2)-1/n sum_(k=1)^(n-1)E(X_k X_n)=-1/n. $
]
]

