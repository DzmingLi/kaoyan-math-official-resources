#import "../template.typ": exam
#show: exam.with(year: 2005, subject: "二", title: "2005年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#ezexam.answer-state.update(true)


= 一、填空题（本题共6小题，每小题4分，满分24分）

#ezexam.question[
设 $y=(1+sin x)^x$，则 $dif y|_(x=pi)=$#h(3em).
#ezexam.solution(show-number: false)[
$-pi dif x$.
]
]

#ezexam.question[
曲线 $y=(1+x)^(3/2)/sqrt(x)$ 的斜渐近线方程为#h(3em).
#ezexam.solution(show-number: false)[
$y=x+3/2$.
]
]

#ezexam.question[
定积分 $integral_0^1 (x dif x)/((2-x^2)sqrt(1-x^2))=$#h(3em).
#ezexam.solution(show-number: false)[
$pi/4$.
]
]

#ezexam.question[
微分方程 $x y'+2y=x ln x$ 满足 $y(1)=-1/9$ 的解为#h(3em).
#ezexam.solution(show-number: false)[
$y=x/3(ln x-1/3)$.
]
]

#ezexam.question[
当 $x->0$ 时，$alpha(x)=k x^2$ 与 $beta(x)=sqrt(1+x arcsin x)-sqrt(cos x)$ 是等价无穷小量，则 $k=$#h(3em).
#ezexam.solution(show-number: false)[
$3/4$.
]
]

#ezexam.question[
设 $alpha_1,alpha_2,alpha_3$ 均为三维列向量，记矩阵 $A=(alpha_1,alpha_2,alpha_3),B=(alpha_1+alpha_2+alpha_3,alpha_1+2alpha_2+4alpha_3,alpha_1+3alpha_2+9alpha_3)$.如果 $|A|=1$，那么 $|B|=$#h(3em).
#ezexam.solution(show-number: false)[
2.
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
设函数 $y=y(x)$ 由参数方程 $cases(x=t^2+2t,y=ln(1+t))$ 确定，则曲线 $y=y(x)$ 在 $x=3$ 处的法线与 $x$ 轴交点的横坐标是
#choices([$1/8 ln 2+3$.],[$-1/8 ln 2+3$.],[$-8 ln 2+3$.],[$8 ln 2+3$.])
#ezexam.solution(show-number: false)[
A.
]
]

#ezexam.question[
设区域 $D={(x,y) | x^2+y^2<=4,x>=0,y>=0}$，$f(x)$ 为 $D$ 上的正值连续函数，$a,b$ 为常数，则 $integral.double_D (a sqrt(f(x))+b sqrt(f(y)))/(sqrt(f(x))+sqrt(f(y))) dif sigma=$
#choices([$a b pi$.],[$(a b)/2 pi$.],[$(a+b)pi$.],[$(a+b)/2 pi$.])
#ezexam.solution(show-number: false)[
D.
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
设 $f(x)=1/(e^(x/(x-1))-1)$，则
#choices([$x=0,x=1$ 都是 $f(x)$ 的第一类间断点.],[$x=0,x=1$ 都是 $f(x)$ 的第二类间断点.],[$x=0$ 是 $f(x)$ 的第一类间断点，$x=1$ 是 $f(x)$ 的第二类间断点.],[$x=0$ 是 $f(x)$ 的第二类间断点，$x=1$ 是 $f(x)$ 的第一类间断点.])
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

= 三、解答题（本题共9小题，满分94分. 解答应写出文字说明、证明过程或演算步骤.）

#ezexam.question[
（本题满分11分）

设函数 $f(x)$ 连续，且 $f(0)!=0$，求极限 $lim_(x->0) (integral_0^x (x-t)f(t)dif t)/(x integral_0^x f(x-t)dif t)$.
#ezexam.solution(show-number: false)[
原式 $=lim_(x->0)(x integral_0^x f(t)dif t-integral_0^x t f(t)dif t)/(x integral_0^x f(x-t)dif t)$.

设 $x-t=u$，得
$ lim_(x->0)(x integral_0^x f(t)dif t-integral_0^x t f(t)dif t)/(x integral_0^x f(u)dif u). $
由洛必达法则，等于
$ lim_(x->0)(integral_0^x f(t)dif t+x f(x)-x f(x))/(integral_0^x f(u)dif u+x f(x)). $
由积分中值定理（$xi$ 在0和 $x$ 之间），等于
$ lim_(x->0,xi->0)(x f(xi))/(x f(xi)+x f(x))=f(0)/(f(0)+f(0))=1/2. $
]
]

#ezexam.question[
（本题满分11分）

如下图所示，$C_1$ 和 $C_2$ 分别是 $y=1/2(1+e^x)$ 和 $y=e^x$ 的图像，过点 $(0,1)$ 的曲线 $C_3$ 是单调增函数的图像.过 $C_2$ 上任一点 $M(x,y)$ 分别作垂直于 $x$ 轴和 $y$ 轴的直线 $l_x$ 和 $l_y$，记 $C_1,C_2$ 与 $l_x$ 所围图形的面积为 $S_1(x)$；$C_2,C_3$ 与 $l_y$ 所围图形的面积为 $S_2(y)$.如果总有 $S_1(x)=S_2(y)$，求曲线 $C_3$ 的方程 $x=phi(y)$.
#import "@preview/cetz:0.5.2": canvas, draw
#align(center,canvas({
 import draw: *
 let c1=range(61).map(i=>{let x=i/40; (x, (1+calc.exp(x))/2)})
 let c2=range(61).map(i=>{let x=i/40; (x, calc.exp(x))})
 let c3=range(61).map(i=>{let y=1+i*3.5/60; (calc.ln(y)+1/(2*y)-.5,y)})
 line(..c1,..c2.rev(),close:true,fill:rgb("dddddd"),stroke:none)
 line(..c2,..c3.rev(),close:true,fill:rgb("eeeeee"),stroke:none)
 line(..c1); line(..c2); line(..c3)
 line((-.2,0),(2.1,0),mark:(end:">")); line((0,-.2),(0,5),mark:(end:">"))
 line((1.5,0),(1.5,4.8)); line((0,4.48),(1.8,4.48))
 content((2.2,0),$x$);content((0,5.2),$y$);content((-.15,-.15),$O$)
 content((-.15,1),[1]);content((1.75,2.7),$C_1$);content((1.6,4.9),$C_2$)
 content((1.05,4.9),$C_3$);content((1.85,4.3),$M(x,y)$)
 content((1.7,1.3),$l_x$);content((.5,4.65),$l_y$)
}))
#ezexam.solution(show-number: false)[
由题设 $S_1(x)=S_2(y)$，知
$ integral_0^x [e^x-1/2(1+e^x)]dif x=integral_1^y [ln y-phi(y)]dif y, $
即
$ integral_0^x (1/2 e^x-1/2)dif x=integral_1^y [ln y-phi(y)]dif y. $
两边对 $x$ 求导，得
$ 1/2 e^x-1/2=[ln y-phi(y)](dif y)/(dif x). $
由 $y=e^x$ 得
$ 1/2 e^x-1/2=[x-phi(e^x)]e^x, $
于是 $phi(e^x)=x+1/(2e^x)-1/2$，从而 $phi(y)=ln y+1/(2y)-1/2$，故曲线 $C_3$ 的方程为 $x=ln y+1/(2y)-1/2$.
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
（本题满分12分）

用变量变换 $x=cos t (0<t<pi)$ 化简方程 $(1-x^2)y''-x y'+y=0$，并求其满足 $y|_(x=0)=1,y'|_(x=0)=2$ 的特解.
#ezexam.solution(show-number: false)[
$ y'=(dif y)/(dif x)=(dif y)/(dif t) dot 1/((dif x)/(dif t))=-1/(sin t)(dif y)/(dif t), $
$ y''=(dif^2 y)/(dif x^2)=dif/(dif t)((dif y)/(dif x)) dot 1/((dif x)/(dif t)) \
=(cos t/(sin^2 t)(dif y)/(dif t)-1/(sin t)(dif^2 y)/(dif t^2))(-1/(sin t)) \
=1/(sin^2 t)(dif^2 y)/(dif t^2)-cos t/(sin^3 t)(dif y)/(dif t). $
将 $y',y''$ 代入原方程，得
$ (1-cos^2 t)(1/(sin^2 t)(dif^2 y)/(dif t^2)-cos t/(sin^3 t)(dif y)/(dif t))+cos t/(sin t)(dif y)/(dif t)+y=0, $
即 $(dif^2 y)/(dif t^2)+y=0$，其特征方程为 $lambda^2+1=0$，解得 $lambda=plus.minus i$，于是此方程的通解为 $y=C_1 cos t+C_2 sin t$，从而原方程的通解为 $y=C_1 x+C_2 sqrt(1-x^2)$.

由 $y|_(x=0)=1,y'|_(x=0)=2$ 得 $C_1=2,C_2=1$，故所求方程的特解为 $y=2x+sqrt(1-x^2)$.
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
（本题满分10分）

已知函数 $z=f(x,y)$ 的全微分 $dif z=2x dif x-2y dif y$，并且 $f(1,1)=2$，求 $f(x,y)$ 在椭圆域 $D={(x,y)|x^2+y^2/4<=1}$ 上的最大值和最小值.
#ezexam.solution(show-number: false)[
解法1　由 $dif z=2x dif x-2y dif y$ 可知 $z=f(x,y)=x^2-y^2+C$，再由 $f(1,1)=2$，得 $C=2$，故 $z=f(x,y)=x^2-y^2+2$.

令 $(partial f)/(partial x)=2x=0,(partial f)/(partial y)=-2y=0$，解得驻点 $(0,0)$.

在椭圆 $x^2+y^2/4=1$ 上，$z=x^2-(4-4x^2)+2$，即 $z=5x^2-2 (-1<=x<=1)$，其最大值为 $z|_(x=plus.minus 1)=3$，最小值为 $z|_(x=0)=-2$.再与 $f(0,0)=2$ 比较，可知 $f(x,y)$ 在椭圆域 $D$ 上的最大值为3，最小值为 $-2$.

解法2　同解法1得驻点 $(0,0)$.

用拉格朗日乘数法求此函数在椭圆 $x^2+y^2/4=1$ 上的极值.设
$ L=x^2-y^2+2+lambda(x^2+y^2/4-1), $
令
$ cases(L'_x=2x+2lambda x=0,L'_y=-2y+lambda/2 y=0,L'_lambda=x^2+y^2/4-1=0). $
解得4个可能的极值点 $(0,2),(0,-2),(1,0)$ 和 $(-1,0)$.又 $f(0,2)=-2,f(0,-2)=-2,f(1,0)=3,f(-1,0)=3$，再与 $f(0,0)=2$ 比较，得 $f(x,y)$ 在 $D$ 上的最大值为3，最小值为 $-2$.
]
]

#ezexam.question[
（本题满分9分）

计算二重积分 $integral.double_D |x^2+y^2-1|dif sigma$，其中 $D={(x,y)|0<=x<=1,0<=y<=1}$.
#ezexam.solution(show-number: false)[
解法1　将区域 $D$ 分成两个子区域：
$ D_1={(x,y)|x^2+y^2<=1,x>=0,y>=0}, $
$ D_2={(x,y)|x^2+y^2>=1,0<=x<=1,0<=y<=1}, $
则
$ integral.double_D |x^2+y^2-1|dif sigma=integral.double_(D_1)(1-x^2-y^2)dif sigma+integral.double_(D_2)(x^2+y^2-1)dif sigma. $
由于
$ integral.double_(D_1)(1-x^2-y^2)dif sigma=integral_0^(pi/2)dif theta integral_0^1(1-r^2)r dif r=pi/8, $
$ integral.double_(D_2)(x^2+y^2-1)dif sigma=integral.double_D(x^2+y^2-1)dif sigma-integral.double_(D_1)(x^2+y^2-1)dif sigma \
=integral_0^1 dif x integral_0^1(x^2+y^2-1)dif y-(-pi/8) \
=integral_0^1(x^2+1/3-1)dif x+pi/8 \
=lr([x^3/3-2/3 x])|_0^1+pi/8=-1/3+pi/8, $
故 $integral.double_D |x^2+y^2-1|dif sigma=pi/8-1/3+pi/8=pi/4-1/3$.

解法2　如下图所示，将 $D$ 分成 $D_1$ 与 $D_2$ 两部分.
#import "@preview/cetz:0.5.2": canvas, draw
#align(center,canvas({
 import draw: *
 line((0,0),(3.5,0),mark:(end:">"));line((0,0),(0,3.5),mark:(end:">"))
 line((0,3),(3,3),(3,0));arc((3,0),start:0deg,stop:90deg,radius:3)
 content((-.15,-.15),$O$);content((3,-.2),[1]);content((-.2,3),[1]);content((3.6,0),$x$);content((0,3.7),$y$)
 content((1.1,1.2),$D_1$);content((2.6,2.6),$D_2$);content((3.9,1.7),$x^2+y^2=1$);line((2.65,1.4),(3.2,1.7))
}))
$ integral.double_D|x^2+y^2-1|dif sigma=integral.double_(D_1)(1-x^2-y^2)dif sigma+integral.double_(D_2)(x^2+y^2-1)dif sigma. $
由于 $integral.double_(D_1)(1-x^2-y^2)dif sigma=integral_0^(pi/2)dif theta integral_0^1(1-r^2)r dif r=pi/8$，
$ integral.double_(D_2)(x^2+y^2-1)dif sigma=integral_0^1 dif x integral_(sqrt(1-x^2))^1(x^2+y^2-1)dif y \
=integral_0^1 lr([x^2 y+y^3/3-y])|_(sqrt(1-x^2))^1 dif x \
=integral_0^1[x^2-2/3+2/3(1-x^2)^(3/2)]dif x \
=integral_0^1(x^2-2/3)dif x+2/3 integral_0^1(1-x^2)^(3/2)dif x \
=-1/3+2/3 I, $
其中
$ I=integral_0^1(1-x^2)^(3/2)dif x=integral_0^(pi/2)cos^4 t dif t=3/4 dot 1/2 dot pi/2=(3pi)/16 $
（令 $x=sin t$）.因此
$ integral.double_(D_2)(x^2+y^2-1)dif sigma=-1/3+2/3 dot (3pi)/16=pi/8-1/3, $
$ integral.double_D|x^2+y^2-1|dif sigma=pi/8+pi/8-1/3=pi/4-1/3. $
]
]

#ezexam.question[
（本题满分9分）

确定常数 $a$，使向量组 $alpha_1=(1,1,a)^T,alpha_2=(1,a,1)^T,alpha_3=(a,1,1)^T$ 可由向量组 $beta_1=(1,1,a)^T,beta_2=(-2,a,4)^T,beta_3=(-2,a,a)^T$ 线性表示，但向量组 $beta_1,beta_2,beta_3$ 不能由向量组 $alpha_1,alpha_2,alpha_3$ 线性表示.
#ezexam.solution(show-number: false)[
解法1　记 $A=(alpha_1,alpha_2,alpha_3),B=(beta_1,beta_2,beta_3)$，由于 $beta_1,beta_2,beta_3$ 不能由 $alpha_1,alpha_2,alpha_3$ 线性表示，故 $r(A)<3$，从而 $|A|=-(a-1)^2(a+2)=0$，所以 $a=1$ 或 $a=-2$.

当 $a=1$ 时，$alpha_1=alpha_2=alpha_3=beta_1=(1,1,1)^T$，故 $alpha_1,alpha_2,alpha_3$ 可由 $beta_1,beta_2,beta_3$ 线性表示，但 $beta_2=(-2,1,4)^T$ 不能由 $alpha_1,alpha_2,alpha_3$ 线性表示，所以 $a=1$ 符合题意.

当 $a=-2$ 时，由于
$ (B dots.v A)=mat(augment:#3,1,-2,-2,1,1,-2;1,-2,-2,1,-2,1;-2,4,-2,-2,1,1) \
->mat(augment:#3,1,-2,-2,1,1,-2;0,0,-6,0,3,-3;0,0,0,0,-3,3), $
考虑线性方程组 $B x=alpha_2$，因为 $r(B)=2,r(B dots.v alpha_2)=3$，所以方程组 $B x=alpha_2$ 无解，即 $alpha_2$ 不能由 $beta_1,beta_2,beta_3$ 线性表示，与题设矛盾.因此 $a=1$.

解法2　记 $A=(alpha_1,alpha_2,alpha_3),B=(beta_1,beta_2,beta_3)$，对矩阵 $(A dots.v B)$ 施行初等行变换：
$ (A dots.v B)=mat(augment:#3,1,1,a,1,-2,-2;1,a,1,1,a,a;a,1,1,a,4,a) \
->mat(augment:#3,1,1,a,1,-2,-2;0,a-1,1-a,0,a+2,a+2;0,1-a,1-a^2,0,4+2a,3a) \
->mat(augment:#3,1,1,a,1,-2,-2;0,a-1,1-a,0,a+2,a+2;0,0,-(a-1)(a+2),0,3a+6,4a+2). $
由于 $beta_1,beta_2,beta_3$ 不能由 $alpha_1,alpha_2,alpha_3$ 线性表示，故 $r(A)<3$，因此 $a=1$ 或 $a=-2$.

当 $a=1$ 时，
$ (A dots.v B)=mat(augment:#3,1,1,1,1,-2,-2;1,1,1,1,1,1;1,1,1,1,4,1) \
->mat(augment:#3,1,1,1,1,-2,-2;0,0,0,0,3,3;0,0,0,0,0,-3). $
考虑线性方程组 $A x=beta_2$，由于 $r(A)=1,r(A dots.v beta_2)=2$，故方程组 $A x=beta_2$ 无解，所以 $beta_2$ 不能由 $alpha_1,alpha_2,alpha_3$ 线性表示.另一方面，由于 $|B|=-9!=0$，故 $B x=alpha_i (i=1,2,3)$ 有唯一解，即 $alpha_1,alpha_2,alpha_3$ 可由 $beta_1,beta_2,beta_3$ 线性表示，所以 $a=1$ 符合题意.

当 $a=-2$ 时，
$ (A dots.v B)=mat(augment:#3,1,1,-2,1,-2,-2;1,-2,1,1,-2,-2;-2,1,1,-2,4,-2) \
->mat(augment:#3,1,1,-2,1,-2,-2;0,-3,3,0,0,0;0,0,0,0,0,-6). $
考虑线性方程组 $B x=alpha_2$，由于
$ (B dots.v alpha_2)=mat(augment:#3,1,-2,-2,1;1,-2,-2,-2;-2,4,-2,1) \
->mat(augment:#3,1,-2,-2,1;0,0,0,-3;0,0,-6,0), $
$r(B)=2,r(B dots.v alpha_2)=3$，故方程组 $B x=alpha_2$ 无解，即 $alpha_2$ 不能由 $beta_1,beta_2,beta_3$ 线性表示，与题设矛盾.因此 $a=1$.
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

