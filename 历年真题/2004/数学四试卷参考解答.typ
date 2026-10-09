#import "../template.typ": exam
#show: exam.with(year: 2004, subject: "四", title: "2004年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#ezexam.answer-state.update(true)


= 一、填空题（本题共6小题，每小题4分，满分24分）

#ezexam.question[
若 $lim_(x->0)(sin x)/(e^x-a)(cos x-b)=5$，则 $a=$#h(3em)，$b=$#h(3em).
#ezexam.solution(show-number: false)[
1；$-4$.
]
]

#ezexam.question[
设 $y=arctan e^x-ln sqrt(e^(2x)/(e^(2x)+1))$，则 $lr((dif y)/(dif x))|_(x=1)=$#h(3em).
#ezexam.solution(show-number: false)[
$(e-1)/(e^2+1)$.
]
]

#ezexam.question[
设 $f(x)=cases(x e^(x^2) & -1/2<=x<1/2,-1 & x>=1/2)$，则 $integral_(1/2)^2 f(x-1)dif x=$#h(3em).
#ezexam.solution(show-number: false)[
$-1/2$.
]
]

#ezexam.question[
设 $A=mat(0,-1,0;1,0,0;0,0,-1),B=P^(-1)A P$，其中 $P$ 为三阶可逆矩阵，则 $B^2004-2A^2=$#h(3em).
#ezexam.solution(show-number: false)[
$mat(3,0,0;0,3,0;0,0,-1)$.
]
]

#ezexam.question[
设 $A=(a_(i j))_(3 times 3)$ 是实正交矩阵，且 $a_(11)=1,bold(b)=(1,0,0)^"T"$，则线性方程组 $A bold(x)=bold(b)$ 的解是#h(3em).
#ezexam.solution(show-number: false)[
$(1,0,0)^"T"$.
]
]

#ezexam.question[
设随机变量 $X$ 服从参数为 $lambda$ 的指数分布，则 $P{X>sqrt(D X)}=$#h(3em).
#ezexam.solution(show-number: false)[
$1/e$.
]
]

= 二、选择题（本题共8小题，每小题4分，满分32分）

#ezexam.question[
函数 $f(x)=(|x|sin(x-2))/(x(x-1)(x-2)^2)$ 在下列哪个区间内有界？
#choices([$(-1,0)$.],[$(0,1)$.],[$(1,2)$.],[$(2,3)$.])
#ezexam.solution(show-number: false)[
A.
]
]

#ezexam.question[
设 $f(x)$ 在 $(-infinity,+infinity)$ 内有定义，且 $lim_(x->infinity) f(x)=a$，$g(x)=cases(f(1/x) & x!=0,0 & x=0)$，则
#choices([$x=0$ 必是 $g(x)$ 的第一类间断点.],[$x=0$ 必是 $g(x)$ 的第二类间断点.],[$x=0$ 必是 $g(x)$ 的连续点.],[$g(x)$ 在点 $x=0$ 处的连续性与 $a$ 的取值有关.])
#ezexam.solution(show-number: false)[
D.
]
]

#ezexam.question[
设 $f(x)=|x(1-x)|$，则
#choices([$x=0$ 是 $f(x)$ 的极值点，但 $(0,0)$ 不是曲线 $y=f(x)$ 的拐点.],[$x=0$ 不是 $f(x)$ 的极值点，但 $(0,0)$ 是曲线 $y=f(x)$ 的拐点.],[$x=0$ 是 $f(x)$ 的极值点，且 $(0,0)$ 是曲线 $y=f(x)$ 的拐点.],[$x=0$ 不是 $f(x)$ 的极值点，$(0,0)$ 也不是曲线 $y=f(x)$ 的拐点.])
#ezexam.solution(show-number: false)[
C.
]
]

#ezexam.question[
设 $f(x)=cases(1 & x>0,0 & x=0,-1 & x<0),F(x)=integral_0^x f(t)dif t$，则
#choices([$F(x)$ 在 $x=0$ 点不连续.],[$F(x)$ 在 $(-infinity,+infinity)$ 内连续，在 $x=0$ 点不可导.],[$F(x)$ 在 $(-infinity,+infinity)$ 内可导，且满足 $F'(x)=f(x)$.],[$F(x)$ 在 $(-infinity,+infinity)$ 内可导，但不一定满足 $F'(x)=f(x)$.])
#ezexam.solution(show-number: false)[
B.
]
]

#ezexam.question[
设 $f'(x)$ 在 $[a,b]$ 上连续，且 $f'(a)>0,f'(b)<0$，则下列结论中错误的是
#choices([至少存在一点 $x_0 in (a,b)$，使得 $f(x_0)>f(a)$.],[至少存在一点 $x_0 in (a,b)$，使得 $f(x_0)>f(b)$.],[至少存在一点 $x_0 in (a,b)$，使得 $f'(x_0)=0$.],[至少存在一点 $x_0 in (a,b)$，使得 $f(x_0)=0$.])
#ezexam.solution(show-number: false)[
D.
]
]

#ezexam.question[
设 $n$ 阶矩阵 $A$ 与 $B$ 等价，则必有
#choices([当 $|A|=a (a!=0)$ 时，$|B|=a$.],[当 $|A|=a (a!=0)$ 时，$|B|=-a$.],[当 $|A|!=0$ 时，$|B|=0$.],[当 $|A|=0$ 时，$|B|=0$.])
#ezexam.solution(show-number: false)[
D.
]
]

#ezexam.question[
设随机变量 $X$ 服从正态分布 $N(0,1)$，对给定的 $alpha in (0,1)$，数 $u_alpha$ 满足 $P{X>u_alpha}=alpha$.若 $P{|X|<x}=alpha$，则 $x$ 等于
#choices([$u_(alpha/2)$.],[$u_((1-alpha)/2)$.],[$u_(1-alpha/2)$.],[$u_(1-alpha)$.])
#ezexam.solution(show-number: false)[
B.
]
]

#ezexam.question[
设随机变量 $X_1,X_2,dots,X_n (n>1)$ 独立同分布，且其方差为 $sigma^2>0$.令随机变量 $Y=1/n sum_(i=1)^n X_i$，则
#choices([$D(X_1+Y)=(n+2)/n sigma^2$.],[$D(X_1-Y)=(n+1)/n sigma^2$.],[$op("Cov")(X_1,Y)=sigma^2/n$.],[$op("Cov")(X_1,Y)=sigma^2$.])
#ezexam.solution(show-number: false)[
C.
]
]

= 三、解答题（本题共9小题，满分94分. 解答应写出文字说明、证明过程或演算步骤.）

#ezexam.question[
（本题满分8分）求 $lim_(x->0)(1/sin^2 x-(cos^2 x)/x^2)$.
#ezexam.solution(show-number: false)[
解
$ lim_(x->0)(1/sin^2 x-(cos^2 x)/x^2) \
=lim_(x->0)(x^2-sin^2 x cos^2 x)/(x^2 sin^2 x)=lim_(x->0)(x^2-1/4 sin^2 2x)/x^4 \
=lim_(x->0)(x-1/4 sin 4x)/(2x^3)=lim_(x->0)(1-cos 4x)/(6x^2) \
=lim_(x->0)(sin 4x)/(3x)=4/3. $
]
]

#ezexam.question[
（本题满分8分）求 $integral.double_D(sqrt(x^2+y^2)+y)dif sigma$，其中 $D$ 是由圆 $x^2+y^2=4$ 和 $(x+1)^2+y^2=1$ 所围成的平面区域（如下图）.
#import "@preview/cetz:0.5.2"
#cetz.canvas({
 import cetz.draw: *
 circle((0,0),radius:2,fill:rgb("eeeeee"));circle((-1,0),radius:1,fill:white)
 line((-2.5,0),(2.7,0),mark:(end:">"));line((0,-2.4),(0,2.6),mark:(end:">"))
 content((2.7,0),$x$,anchor:"north");content((0,2.6),$y$,anchor:"east");content((.1,-.1),$O$,anchor:"north-west");content((.8,.9),$D$)
})
#ezexam.solution(show-number: false)[
解法1
$ integral.double_D(sqrt(x^2+y^2)+y)dif sigma \
=integral.double_(D_#text[大圆])(sqrt(x^2+y^2)+y)dif sigma-integral.double_(D_#text[小圆])(sqrt(x^2+y^2)+y)dif sigma. $
$ integral.double_(D_#text[大圆])(sqrt(x^2+y^2)+y)dif sigma \
=integral.double_(D_#text[大圆])sqrt(x^2+y^2)dif sigma+integral.double_(D_#text[大圆])y dif sigma quad #text[（据对称性）] \
=integral_0^(2pi)dif theta integral_0^2 r^2 dif r+0=16/3 pi, $
$ integral.double_(D_#text[小圆])(sqrt(x^2+y^2)+y)dif sigma \
=integral.double_(D_#text[小圆])sqrt(x^2+y^2)dif sigma+integral.double_(D_#text[小圆])y dif sigma \
=integral_(pi/2)^((3pi)/2)dif theta integral_0^(-2cos theta)r^2 dif r+0=32/9, $
所以 $integral.double_D(sqrt(x^2+y^2)+y)dif sigma=16/9(3pi-2)$.

解法2　如下图所示，由积分区域对称性和被积函数的奇偶性知：
#cetz.canvas({
 import cetz.draw: *
 circle((0,0),radius:2)
 line(..range(0,81).map(i=>{let t=180deg*i/80;(2*calc.cos(t),2*calc.sin(t))}),close:true,fill:rgb("eeeeee"))
 circle((-1,0),radius:1,fill:white)
 line((-2.5,0),(2.7,0),mark:(end:">"));line((0,-2.4),(0,2.6),mark:(end:">"))
 content((2.7,0),$x$,anchor:"north");content((0,2.6),$y$,anchor:"east");content((.1,-.1),$O$,anchor:"north-west");content((.9,.8),$D_(#text[上]1)$);content((-.7,1.4),$D_(#text[上]2)$)
})
$ integral.double_D y dif sigma=0, $
原式
$ =integral.double_D sqrt(x^2+y^2)dif sigma+0 \
=2(integral.double_(D_(#text[上]1))sqrt(x^2+y^2)dif sigma+integral.double_(D_(#text[上]2))sqrt(x^2+y^2)dif sigma) \
=2(integral_0^(pi/2)dif theta integral_0^2 r^2 dif r+integral_(pi/2)^pi dif theta integral_(-2cos theta)^2 r^2 dif r) \
=2[4/3 pi+(4/3 pi-16/9)]=16/9(3pi-2). $
]
]

#ezexam.question[
（本题满分8分）设 $f(u,v)$ 具有连续偏导数，且满足 $f'_u(u,v)+f'_v(u,v)=u v$，求 $y(x)=e^(-2x)f(x,x)$ 所满足的一阶微分方程，并求其通解.
#ezexam.solution(show-number: false)[
解
$ y'&=-2e^(-2x)f(x,x)+e^(-2x)f'_u(x,x)+e^(-2x)f'_v(x,x) \
&=-2y+x^2 e^(-2x), $
因此，所求的一阶微分方程为 $y'+2y=x^2 e^(-2x)$，解得
$ y=e^(-integral 2 dif x)(integral x^2 e^(-2x)e^(integral 2dif x)dif x+C) \
=(x^3/3+C)e^(-2x) quad (C #text[为任意常数]). $
]
]

#ezexam.question[
（本题满分9分）设某商品的需求函数为 $Q=100-5P$，其中价格 $P in (0,20)$，$Q$ 为需求量.

（Ⅰ）求需求量对价格的弹性 $E_d (E_d>0)$；

（Ⅱ）推导 $(dif R)/(dif P)=Q(1-E_d)$（其中 $R$ 为收益），并用弹性 $E_d$ 说明价格在何范围内变化时，降低价格反而使收益增加.
#ezexam.solution(show-number: false)[
解　（Ⅰ）$E_d=|P/Q Q'|=P/(20-P)$.

（Ⅱ）由 $R=P Q$，得
$ (dif R)/(dif P)=Q+P Q'=Q(1+P/Q Q')=Q(1-E_d). $
又由 $E_d=P/(20-P)=1$，得 $P=10$.
当 $10<P<20$ 时，$E_d>1$，于是 $(dif R)/(dif P)<0$，故当 $10<P<20$ 时，降低价格反而使收益增加.
]
]

#ezexam.question[
（本题满分9分）设 $F(x)=cases(e^(2x) & x<=0,e^(-2x) & x>0)$，$S$ 表示夹在 $x$ 轴与曲线 $y=F(x)$ 之间的面积.对任何 $t>0$，$S_1(t)$ 表示矩形 $-t<=x<=t,0<=y<=F(t)$ 的面积.求：

（Ⅰ）$S(t)=S-S_1(t)$ 的表达式；

（Ⅱ）$S(t)$ 的最小值.
#ezexam.solution(show-number: false)[
解　（Ⅰ）$S=2integral_0^(+infinity)e^(-2x)dif x=-e^(-2x)|_0^(+infinity)=1$，$S_1(t)=2t e^(-2t)$，因此 $S(t)=1-2t e^(-2t),t in (0,+infinity)$.

（Ⅱ）由于 $S'(t)=-2(1-2t)e^(-2t)$，故 $S(t)$ 的唯一驻点为 $t=1/2$.
又 $S''(t)=8(1-t)e^(-2t),S''(1/2)=4/e>0$，所以 $S(1/2)=1-1/e$ 为极小值，它也是最小值.
]
]

#ezexam.question[
（本题满分13分）设线性方程组
$ cases(x_1+lambda x_2+mu x_3+x_4=0,2x_1+x_2+x_3+2x_4=0,3x_1+(2+lambda)x_2+(4+mu)x_3+4x_4=1). $
已知 $(1,-1,1,-1)^"T"$ 是该方程组的一个解，试求：

（Ⅰ）方程组的全部解，并用对应的齐次线性方程组的基础解系表示全部解；

（Ⅱ）该方程组满足 $x_2=x_3$ 的全部解.
#ezexam.solution(show-number: false)[
解　将 $(1,-1,1,-1)^"T"$ 代入方程组，得 $lambda=mu$.对方程组的增广矩阵施以初等行变换，得
$ overline(A)=mat(augment:#4,1,lambda,lambda,1,0;2,1,1,2,0;3,2+lambda,4+lambda,4,1) \
->mat(augment:#4,1,0,-2lambda,1-lambda,-lambda;0,1,3,1,1;0,0,2(2lambda-1),2lambda-1,2lambda-1). $
（Ⅰ）当 $lambda!=1/2$ 时，有
$ overline(A)->mat(augment:#4,1,0,0,1,0;0,1,0,-1/2,-1/2;0,0,1,1/2,1/2). $
因 $r(overline(A))=r(A)=3<4$，故方程组有无穷多解，全部解为
$ xi=(0,-1/2,1/2,0)^"T"+k(-2,1,-1,2)^"T", $
其中 $k$ 为任意常数.
当 $lambda=1/2$ 时，有
$ overline(A)->mat(augment:#4,1,0,-1,1/2,-1/2;0,1,3,1,1;0,0,0,0,0). $
因 $r(overline(A))=r(A)=2<4$，故方程组有无穷多解，全部解为
$ xi=(-1/2,1,0,0)^"T"+k_1(1,-3,1,0)^"T"+k_2(-1,-2,0,2)^"T", $
其中 $k_1,k_2$ 为任意常数.

（Ⅱ）当 $lambda!=1/2$ 时，由于 $x_2=x_3$，即 $-1/2+k=1/2-k$，解得 $k=1/2$，方程组的解为
$ xi=(0,-1/2,1/2,0)^"T"+1/2(-2,1,-1,2)^"T"=(-1,0,0,1)^"T". $
当 $lambda=1/2$ 时，由于 $x_2=x_3$，即 $1-3k_1-2k_2=k_1$，解得 $k_1=1/4-1/2 k_2$，故全部解为
$ xi=(-1/4,1/4,1/4,0)^"T"+k_2(-3/2,-1/2,-1/2,2)^"T", $
其中 $k_2$ 为任意常数.

注　在题（Ⅱ）中，当 $lambda=1/2$ 时，解得 $k_2=1/2-2k_1$，全部解也可以表示为
$ xi=(-1,0,0,1)^"T"+k_1(3,1,1,-4)^"T", $
其中 $k_1$ 为任意常数.
]
]

#ezexam.question[
（本题满分13分）设三阶实对称矩阵 $A$ 的秩为2，$lambda_1=lambda_2=6$ 是 $A$ 的二重特征值.若 $alpha_1=(1,1,0)^"T",alpha_2=(2,1,1)^"T",alpha_3=(-1,2,-3)^"T"$ 都是 $A$ 的属于特征值6的特征向量.

（Ⅰ）求 $A$ 的另一特征值和对应的特征向量；

（Ⅱ）求矩阵 $A$.
#ezexam.solution(show-number: false)[
解　（Ⅰ）因为 $lambda_1=lambda_2=6$ 是 $A$ 的二重特征值，故 $A$ 的属于特征值6的线性无关的特征向量有两个.由题设可得 $alpha_1,alpha_2,alpha_3$ 的一个极大无关组为 $alpha_1,alpha_2$，故 $alpha_1,alpha_2$ 为 $A$ 的属于特征值6的线性无关的特征向量.
由 $r(A)=2$ 可知，$|A|=0$，所以 $A$ 的另一特征值 $lambda_3=0$.
设 $lambda_3=0$ 所对应的特征向量为 $alpha=(x_1,x_2,x_3)^"T"$，则有 $alpha_1^"T" alpha=0,alpha_2^"T" alpha=0$，即
$ cases(x_1+x_2=0,2x_1+x_2+x_3=0), $
解得此方程组的基础解系为 $alpha=(-1,1,1)^"T"$，即 $A$ 的属于特征值 $lambda_3=0$ 的特征向量为 $c alpha=c(-1,1,1)^"T"$（$c$ 为不为零的任意常数）.

（Ⅱ）令矩阵 $P=(alpha_1,alpha_2,alpha)$，则
$ P^(-1)A P=mat(6,0,0;0,6,0;0,0,0), $
所以 $A=P mat(6,0,0;0,6,0;0,0,0)P^(-1)$.
又 $P^(-1)=mat(0,1,-1;1/3,-1/3,2/3;-1/3,1/3,1/3)$，故 $A=mat(4,2,2;2,4,-2;2,-2,4)$.
]
]

#ezexam.question[
（本题满分13分）设 $A,B$ 为两个随机事件，且 $P(A)=1/4,P(B|A)=1/3,P(A|B)=1/2$，令
$ X=cases(1 & A #text[发生],0 & A #text[不发生]),quad Y=cases(1 & B #text[发生],0 & B #text[不发生]). $
求：（Ⅰ）二维随机变量 $(X,Y)$ 的概率分布；

（Ⅱ）$X$ 与 $Y$ 的相关系数 $rho_(X Y)$；

（Ⅲ）$Z=X^2+Y^2$ 的概率分布.
#ezexam.solution(show-number: false)[
解　（Ⅰ）$P(A B)=P(A)P(B|A)=1/12$，$P(B)=(P(A B))/(P(A|B))=1/6$，则
$ P{X=1,Y=1}&=P(A B)=1/12, \
P{X=1,Y=0}&=P(A overline(B))=P(A)-P(A B)=1/6, \
P{X=0,Y=1}&=P(overline(A)B)=P(B)-P(A B)=1/12, \
P{X=0,Y=0}&=P(overline(A) overline(B))=1-P(A union B) \
&=1-[P(A)+P(B)-P(A B)]=2/3, $
（或 $P{X=0,Y=0}=1-1/12-1/6-1/12=2/3$），即 $(X,Y)$ 的概率分布为
#table(columns:3,[$X \ Y$],[0],[1],[0],[$2/3$],[$1/12$],[1],[$1/6$],[$1/12$])
（Ⅱ）方法1
$ E X=P(A)=1/4,E Y=P(B)=1/6,E(X Y)=1/12, $
则 $op("Cov")(X,Y)=E(X Y)-E X dot E Y=1/24$，
$ E X^2=P(A)=1/4,E Y^2=P(B)=1/6, \
D X=E X^2-(E X)^2=3/16,D Y=E Y^2-(E Y)^2=5/36, \
rho_(X Y)=(op("Cov")(X,Y))/sqrt(D X dot D Y)=1/sqrt(15). $
方法2　$X,Y$ 的概率分布分别为
#table(columns:3,[$X$],[0],[1],[$P$],[$3/4$],[$1/4$])
#table(columns:3,[$Y$],[0],[1],[$P$],[$5/6$],[$1/6$])
则 $E X=1/4,E Y=1/6$，而 $E(X Y)=1/12$，故
$ op("Cov")(X,Y)=E(X Y)-E X dot E Y=1/24, \
E X^2=1/4,quad E Y^2=1/6, \
D X=E X^2-(E X)^2=3/16,quad D Y=E Y^2-(E Y)^2=5/36, \
rho_(X Y)=(op("Cov")(X,Y))/sqrt(D X dot D Y)=1/sqrt(15). $
（Ⅲ）$Z$ 的可能取值为0，1，2.
$ P{Z=0}&=P{X=0,Y=0}=2/3, \
P{Z=1}&=P{X=0,Y=1}+P{X=1,Y=0}=1/4, \
P{Z=2}&=P{X=1,Y=1}=1/12, $
即 $Z$ 的概率分布为
#table(columns:4,[$Z$],[0],[1],[2],[$P$],[$2/3$],[$1/4$],[$1/12$])
]
]

#ezexam.question[
（本题满分13分）设随机变量 $X$ 在区间 $(0,1)$ 内服从均匀分布，在 $X=x (0<x<1)$ 的条件下，随机变量 $Y$ 在区间 $(0,x)$ 内服从均匀分布，求：

（Ⅰ）随机变量 $X$ 和 $Y$ 的联合概率密度；

（Ⅱ）$Y$ 的概率密度；

（Ⅲ）概率 $P{X+Y>1}$.
#ezexam.solution(show-number: false)[
解　（Ⅰ）$X$ 的概率密度为 $f_X(x)=cases(1 & 0<x<1,0 & #text[其他])$.
在 $X=x (0<x<1)$ 的条件下，$Y$ 的条件密度为
$ f_(Y|X)(y|x)=cases(1/x & 0<y<x,0 & #text[其他]). $
当 $0<y<x<1$ 时，随机变量 $X$ 和 $Y$ 的联合概率密度为
$ f(x,y)=f_X(x)f_(Y|X)(y|x)=1/x, $
在其他点 $(x,y)$ 处，有 $f(x,y)=0$，即 $f(x,y)=cases(1/x & 0<y<x<1,0 & #text[其他])$.

（Ⅱ）当 $0<y<1$ 时，$Y$ 的概率密度为
$ f_Y(y)=integral_(-infinity)^(+infinity)f(x,y)dif x=integral_y^1 1/x dif x=-ln y; $
当 $y<=0$ 或 $y>=1$ 时，$f_Y(y)=0$.因此 $f_Y(y)=cases(-ln y & 0<y<1,0 & #text[其他])$.

（Ⅲ）所求概率
$ P{X+Y>1}&=integral.double_(x+y>1)f(x,y)dif x dif y \
&=integral_(1/2)^1 dif x integral_(1-x)^x 1/x dif y \
&=integral_(1/2)^1(2-1/x)dif x=1-ln 2. $
]
]

