#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2004, subject: "四", title: "2004年全国硕士研究生入学统一考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#import "@preview/cetz:0.5.2"
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2004 数学四试卷参考解答

= 一、填空题

#answer("1.")[
*分析* 使用同阶无穷小、等价无穷小替换和极限的四则运算法则.
*解* 分子 $sin x(cos x-b)$ 趋于0，给定极限非零，分母必须趋于0，故 $1-a=0$，得 $a=1$. 代入后由 $e^x-1~x$，
$ lim_(x->0)frac(sin x,e^x-1)(cos x-b)=lim_(x->0)frac(sin x,x)(cos x-b)=1-b=5, $
所以 $b=-4$.
]

#answer("2.")[
*分析* 考查初等函数求导.
*解* $y'=frac(e^x,1+e^(2x))-frac(1,2)(2-frac(2e^(2x),1+e^(2x)))=frac(e^x-1,1+e^(2x))$，故 $y'(1)=frac(e-1,e^2+1)$.
]

#answer("3.")[
*分析* 使用定积分换元、奇函数在对称区间上的积分性质及分段积分.
*解* 令 $t=x-1$，得
$ integral_(1/2)^2 f(x-1)dif x=integral_(-1/2)^1 f(t)dif t=integral_(-1/2)^(1/2)t e^(t^2)dif t+integral_(1/2)^1(-1)dif t=0-frac(1,2)=-frac(1,2). $
]

#answer("4.")[
*分析* 利用相似矩阵的幂，以及矩阵幂、数乘和减法的运算法则.
*解* $B^2004=P^(-1)A^2004 P$，而 $A^2=mat(-1,0,0;0,-1,0;0,0,1),A^4=E$，因此
$ B^2004-2A^2=(B^4)^501-2A^2=E-2A^2=mat(3,0,0;0,3,0;0,0,-1). $
]

#answer("5.")[
*分析* 使用正交矩阵的性质和可逆矩阵方程的解法.
*解* $A^T=A^(-1)$，所以唯一解 $x=A^(-1)b=A^T b=(a_(11),a_(12),a_(13))^T$. 由 $A A^T=E$ 得 $a_(11)^2+a_(12)^2+a_(13)^2=1$. 因 $A$ 实且 $a_(11)=1$，所以 $a_(12)=a_(13)=0$，解为 $(1,0,0)^T$.
]

#answer("6.")[
*分析* 考查指数分布的概率密度与数字特征.
*解* 由指数分布知 $D X=1/lambda^2$，所以
$ P{X>sqrt(D X)}=P{X>1/lambda}=integral_(1/lambda)^infinity lambda e^(-lambda x)dif x=frac(1,e). $
*典型错误* 没有理解 $D X$ 是一个常数，或记错指数分布的密度和方差.
]

= 二、选择题

#answer("7.")[
*分析* 判断各区间端点附近的单侧极限，使用闭区间连续函数的有界性.
在 $(-1,0)$ 内 $|x|=-x$，且
$ lim_(x->-1^+)f(x)=-frac(sin 3,18),quad lim_(x->0^-)f(x)=-frac(sin 2,4). $
以两个有限极限补定义端点值，得到在 $[-1,0]$ 上连续的函数，因此 $f$ 在 $(-1,0)$ 内有界.
在 $x=1,2$ 附近函数的绝对值趋于无穷，故另外三个区间内都无界. 选 A.
]

#answer("8.")[
*分析* 由 $x->0$ 时 $|1/x|->infinity$ 判断极限，再与函数值比较.
令 $t=1/x$，则 $lim_(x->0)g(x)=lim_(|t|->infinity)f(t)=a$. 当 $a=0$ 时极限等于 $g(0)=0$，函数连续；当 $a!=0$ 时不连续. 因而连续性与 $a$ 有关，选 D.
]

#answer("9.")[
*分析* 把绝对值函数写成分段函数，分别讨论分界点的连续性、可导性、极值与凹凸性.
$ f(x)=cases(-x(1-x) & x<0,x(1-x) & 0<=x<1,x(x-1) & x>=1). $
函数在实数域连续，其导数为
$ f'(x)=cases(2x-1 & x<0,1-2x & 0<x<1,2x-1 & x>1). $
在0处，$f'_-(0)=lim_(x->0^-)(-x(1-x))/x=-1$，$f'_+(0)=lim_(x->0^+)(x(1-x))/x=1$，所以不可导. 但在 $x<0$ 时导数为负，在 $0<x<1/2$ 时导数为正，故0是极小值点，极小值为 $f(0)=0$.
又
$ f''(x)=cases(2 & x<0,-2 & 0<x<1,2 & x>1). $
曲线在0的左右两侧凹凸性改变，故 $(0,0)$ 是拐点. 选 C.
#cetz.canvas({
 import cetz.draw: *
 line((-.8,0),(2.1,0),mark:(end:">"));line((0,-.3),(0,1.4),mark:(end:">"))
 line(..range(0,101).map(i=>{let x=-.5+2*i/100;(x,2*calc.abs(x*(1-x)))}))
 line((.5,0),(.5,.8),stroke:(dash:"dashed"));content((.5,-.1),$1/2$,anchor:"north");content((1,-.1),$1$,anchor:"north");content((.08,-.1),$O$,anchor:"north-west");content((2.1,0),$x$,anchor:"north");content((0,1.4),$y$,anchor:"east")
})
]

#answer("10.")[
*分析* 先计算分段函数的变上限积分，再判断连续性与左右导数.
$ F(x)=cases(x & x>=0,-x & x<0). $
左右极限均为0，等于 $F(0)$，所以 $F$ 在实数域连续. 但
$ F'_-(0)=lim_(x->0^-)frac(-x-0,x-0)=-1,quad F'_+(0)=lim_(x->0^+)frac(x-0,x-0)=1, $
左右导数不相等，在0处不可导. 选 B.
]

#answer("11.")[
*分析* 使用导数的符号、连续函数的零点定理与反例.
由 $f'(a)>0$，可在 $a$ 的右邻域找到 $x_0$ 使 $f(x_0)>f(a)$，故 A正确. 由 $f'(b)<0$，可在 $b$ 的左邻域找到 $x_0$ 使 $f(x_0)>f(b)$，故 B正确. 又 $f'$ 连续且两端异号，所以存在内点使 $f'(x_0)=0$，故 C正确.
但取 $f(x)=-x^2+2$，在 $[-1,1]$ 上 $f'(-1)=2>0,f'(1)=-2<0$，而 $f(x)>0$ 始终成立，所以不能推出 $f(x_0)=0$. 选 D.
]

#answer("12.")[
*分析* 区分矩阵等价与矩阵相似.
由等价的定义，存在可逆矩阵 $P,Q$ 使 $A=P B Q$，故 $|A|=|P||B||Q|$. 因 $|P||Q|!=0$，当 $|A|=0$ 时必有 $|B|=0$，选 D.
也可由 $r(A)=r(B)$ 判断：$|A|=0$ 意味着 $r(A)<n$，所以 $r(B)<n$，即 $|B|=0$. 或用等价矩阵 $2E,E$ 排除另外三项.
*典型错误* 混淆等价与相似，误认为行列式必相等.
]

#answer("13.")[
*分析* 利用标准正态分布的对称性与上侧分位数的定义.
由 $P{X<=-x}=P{X>=x}$，得
$ alpha=P{|X|<x}=1-[P{X>=x}+P{X<=-x}]=1-2P{X>=x}. $
所以 $P{X>x}=(1-alpha)/2$，由定义 $x=u_((1-alpha)/2)$，选 C.
*典型错误* 没有正确理解上侧分位数 $u_alpha$ 的定义.
]

#answer("14.")[
*分析* 使用方差与协方差的运算性质及独立性.
$ op("Cov")(X_1,Y)=frac(1,n)op("Cov")(X_1,X_1)+frac(1,n)sum_(i=2)^n op("Cov")(X_1,X_i)=frac(1,n)D X_1=frac(sigma^2,n). $
这里 $X_1$ 与 $X_i$ 独立，故 $op("Cov")(X_1,X_i)=0$（$i>=2$）. 选 A.
此外，
$ D(X_1+Y)=frac((n+1)^2,n^2)sigma^2+frac(n-1,n^2)sigma^2=frac(n+3,n)sigma^2, $
$ D(X_1-Y)=frac((n-1)^2,n^2)sigma^2+frac(n-1,n^2)sigma^2=frac(n-1,n)sigma^2. $
故 C、D均不正确.
*典型错误* 误认为 $X_1$ 与 $Y$ 独立，错误地把 $D(X_1-Y)$ 写成 $D X_1+D Y$.
]

= 三、解答题

#answer("15.")[
*分析* 这是 $infinity-infinity$ 型未定式，通分化为 $0/0$ 型，再用无穷小量代换和洛必达法则.
解
$ lim_(x->0)(1/sin^2 x-(cos^2 x)/x^2) \
=lim_(x->0)(x^2-sin^2 x cos^2 x)/(x^2 sin^2 x)=lim_(x->0)(x^2-1/4 sin^2 2x)/x^4 \
=lim_(x->0)(x-1/4 sin 4x)/(2x^3)=lim_(x->0)(1-cos 4x)/(6x^2) \
=lim_(x->0)(sin 4x)/(3x)=4/3. $
]

#answer("16.")[
*分析* 区域为大圆内部与小圆外部的交集，且关于横轴对称. 对含 $sqrt(x^2+y^2)$ 的被积函数，宜换为极坐标积分；可先算大圆再减小圆，也可把剩余区域分块.
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
*注* 还可采用其他分块方法. 计算中要正确确定累次积分上下限及极坐标面积元.
]

#answer("17.")[
*分析* 对乘积求导，并把 $f(x,x)$ 看作中间变量 $u=x,v=x$ 的复合函数，用全导数公式及题设条件建立一阶线性微分方程，再使用通解公式.
解
$ y'&=-2e^(-2x)f(x,x)+e^(-2x)f'_u(x,x)+e^(-2x)f'_v(x,x) \
&=-2y+x^2 e^(-2x), $
因此，所求的一阶微分方程为 $y'+2y=x^2 e^(-2x)$，解得
$ y=e^(-integral 2 dif x)(integral x^2 e^(-2x)e^(integral 2dif x)dif x+C) \
=(x^3/3+C)e^(-2x) quad (C #text[为任意常数]). $

]

#answer("18.")[
*分析* 使用需求函数的弹性公式，以及边际收益与需求弹性之间的关系.
解　（Ⅰ）$E_d=|P/Q Q'|=P/(20-P)$.

（Ⅱ）由 $R=P Q$，得
$ (dif R)/(dif P)=Q+P Q'=Q(1+P/Q Q')=Q(1-E_d). $
又由 $E_d=P/(20-P)=1$，得 $P=10$.
当 $10<P<20$ 时，$E_d>1$，于是 $(dif R)/(dif P)<0$，故当 $10<P<20$ 时，降低价格反而使收益增加.
]

#answer("19.")[
*分析* 画出面积与矩形的图形，用反常积分求总面积，再求差值函数的最小值.
解　（Ⅰ）$S=2integral_0^(+infinity)e^(-2x)dif x=-e^(-2x)|_0^(+infinity)=1$，$S_1(t)=2t e^(-2t)$，因此 $S(t)=1-2t e^(-2t),t in (0,+infinity)$.

（Ⅱ）由于 $S'(t)=-2(1-2t)e^(-2t)$，故 $S(t)$ 的唯一驻点为 $t=1/2$.
又 $S''(t)=8(1-t)e^(-2t),S''(1/2)=4/e>0$，所以 $S(1/2)=1-1/e$ 为极小值，它也是最小值.
#cetz.canvas({
 import cetz.draw: *
 line((-2.3,0),(2.4,0),mark:(end:">"));line((0,-.3),(0,2.5),mark:(end:">"))
 line(..range(0,101).map(i=>{let x=-2+4*i/100;(x,calc.exp(-2*calc.abs(x)))}))
 line((-.8,0),(-.8,calc.exp(-1.6)),(.8,calc.exp(-1.6)),(.8,0))
 content((-.8,-.1),$-t$,anchor:"north");content((.8,-.1),$t$,anchor:"north");content((.08,-.1),$O$,anchor:"north-west");content((2.4,0),$x$,anchor:"north");content((0,2.5),$y$,anchor:"east");content((-1.6,1.1),$y=e^(2x)$);content((1.6,1.1),$y=e^(-2x)$)
})
]

#answer("20.")[
*分析* 代入已知解求参数关系，将问题化为单参数方程组，再把增广矩阵化为阶梯形讨论全部解.
解　将 $(1,-1,1,-1)^"T"$ 代入方程组，得 $lambda=mu$. 对方程组的增广矩阵施以初等行变换，得
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
*典型错误* 遗漏 $lambda=1/2$ 的情况；第二问直接令 $x_2=x_3$ 后解三元方程，却没有把结果恢复为四维列向量.
]

#answer("21.")[
*分析* 利用实对称矩阵不同特征值的特征向量正交的性质求另一个特征向量，再构造相似变换；也可利用特征向量定义和迹求矩阵.
解　（Ⅰ）因为 $lambda_1=lambda_2=6$ 是 $A$ 的二重特征值，故 $A$ 的属于特征值6的线性无关的特征向量有两个. 由题设可得 $alpha_1,alpha_2,alpha_3$ 的一个极大无关组为 $alpha_1,alpha_2$，故 $alpha_1,alpha_2$ 为 $A$ 的属于特征值6的线性无关的特征向量.
由 $r(A)=2$ 可知，$|A|=0$，所以 $A$ 的另一特征值 $lambda_3=0$.
设 $lambda_3=0$ 所对应的特征向量为 $alpha=(x_1,x_2,x_3)^"T"$，则有 $alpha_1^"T" alpha=0,alpha_2^"T" alpha=0$，即
$ cases(x_1+x_2=0,2x_1+x_2+x_3=0), $
解得此方程组的基础解系为 $alpha=(-1,1,1)^"T"$，即 $A$ 的属于特征值 $lambda_3=0$ 的特征向量为 $c alpha=c(-1,1,1)^"T"$（$c$ 为不为零的任意常数）.

（Ⅱ）令矩阵 $P=(alpha_1,alpha_2,alpha)$，则
$ P^(-1)A P=mat(6,0,0;0,6,0;0,0,0), $
所以 $A=P mat(6,0,0;0,6,0;0,0,0)P^(-1)$.
又 $P^(-1)=mat(0,1,-1;1/3,-1/3,2/3;-1/3,1/3,1/3)$，故 $A=mat(4,2,2;2,4,-2;2,-2,4)$.
*解法2* 由 $r(A)=2$ 知第三个特征值为0. 设
$ A=mat(a,d,e;d,b,f;e,f,c). $
利用 $A alpha_i=6alpha_i$（$i=1,2$）及迹 $a+b+c=12$ 建立方程组，得到 $A=mat(4,2,2;2,4,-2;2,-2,4)$. 再解 $A x=0$ 得属于0的特征向量 $k(-1,1,1)^T$，$k!=0$.
*典型错误* 不知道实对称矩阵不同特征值的特征向量正交；第二种方法漏掉迹方程 $a+b+c=12$；计算 $P^(-1)$ 错误.
]

#answer("22.")[
*分析* 先把联合分布的计算转化为事件概率，再求相关系数以及二维离散变量函数的分布.
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
*典型错误* 不会把联合分布转化为事件概率；相关系数计算不熟悉；没有认清 $Z$ 是离散型随机变量而错误地尝试求概率密度.
]

#answer("23.")[
*分析* 根据给定条件写出条件密度，再使用联合密度、边缘密度和条件密度的关系求解；最后在相应区域上积分计算概率.
解　（Ⅰ）$X$ 的概率密度为 $f_X(x)=cases(1 & 0<x<1,0 & #text[其他])$.
在 $X=x (0<x<1)$ 的条件下，$Y$ 的条件密度为
$ f_(Y|X)(y|x)=cases(1/x & 0<y<x,0 & #text[其他]). $
当 $0<y<x<1$ 时，随机变量 $X$ 和 $Y$ 的联合概率密度为
$ f(x,y)=f_X(x)f_(Y|X)(y|x)=1/x, $
在其他点 $(x,y)$ 处，有 $f(x,y)=0$，即 $f(x,y)=cases(1/x & 0<y<x<1,0 & #text[其他])$.

（Ⅱ）当 $0<y<1$ 时，$Y$ 的概率密度为
$ f_Y(y)=integral_(-infinity)^(+infinity)f(x,y)dif x=integral_y^1 1/x dif x=-ln y; $
当 $y<=0$ 或 $y>=1$ 时，$f_Y(y)=0$. 因此 $f_Y(y)=cases(-ln y & 0<y<1,0 & #text[其他])$.

（Ⅲ）所求概率
$ P{X+Y>1}&=integral.double_(x+y>1)f(x,y)dif x dif y \
&=integral_(1/2)^1 dif x integral_(1-x)^x 1/x dif y \
&=integral_(1/2)^1(2-1/x)dif x=1-ln 2. $
*典型错误* 不会写条件密度或不知道 $f(x,y)=f_X(x)f_(Y|X)(y|x)$；没有在取值范围之外写出密度为0；只写 $f_Y(y)=-ln y$ 而没有分段；计算概率时误用 $x+y<1$ 的区域，得到 $ln 2$ 而非 $1-ln 2$.
]

