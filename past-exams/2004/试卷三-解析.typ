#import "../template.typ": exam
#show: exam.with(year: 2004, subject: "三", title: "2004年全国硕士研究生入学统一考试")
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
函数 $f(u,v)$ 由关系式 $f[x g(y),y]=x+g(y)$ 确定，其中函数 $g(y)$ 可微，且 $g(y)!=0$，则 $(partial^2 f)/(partial u partial v)=$#h(3em).
#ezexam.solution(show-number: false)[
$-(g'(v))/([g(v)]^2)$.
]
]

#ezexam.question[
设 $f(x)=cases(x e^(x^2) & -1/2<=x<1/2,-1 & x>=1/2)$，则 $integral_(1/2)^2 f(x-1)dif x=$#h(3em).
#ezexam.solution(show-number: false)[
$-1/2$.
]
]

#ezexam.question[
二次型 $f(x_1,x_2,x_3)=(x_1+x_2)^2+(x_2-x_3)^2+(x_3+x_1)^2$ 的秩为#h(3em).
#ezexam.solution(show-number: false)[
2.
]
]

#ezexam.question[
设随机变量 $X$ 服从参数为 $lambda$ 的指数分布，则 $P{X>sqrt(D X)}=$#h(3em).
#ezexam.solution(show-number: false)[
$1/e$.
]
]

#ezexam.question[
设总体 $X$ 服从正态分布 $N(mu_1,sigma^2)$，总体 $Y$ 服从正态分布 $N(mu_2,sigma^2)$，$X_1,X_2,dots,X_(n_1)$ 和 $Y_1,Y_2,dots,Y_(n_2)$ 分别是来自总体 $X$ 和 $Y$ 的简单随机样本，则
$ E[(sum_(i=1)^(n_1)(X_i-overline(X))^2+sum_(j=1)^(n_2)(Y_j-overline(Y))^2)/(n_1+n_2-2)]=$#h(3em).
#ezexam.solution(show-number: false)[
$sigma^2$.
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
设有以下命题：

①若 $sum_(n=1)^infinity(u_(2n-1)+u_(2n))$ 收敛，则 $sum_(n=1)^infinity u_n$ 收敛；

②若 $sum_(n=1)^infinity u_n$ 收敛，则 $sum_(n=1)^infinity u_(n+1000)$ 收敛；

③若 $lim_(n->infinity)u_(n+1)/u_n>1$，则 $sum_(n=1)^infinity u_n$ 发散；

④若 $sum_(n=1)^infinity(u_n+v_n)$ 收敛，则 $sum_(n=1)^infinity u_n,sum_(n=1)^infinity v_n$ 都收敛.

则以上命题中正确的是
#choices[①②.][②③.][③④.][①④.]
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
设 $n$ 阶矩阵 $A$ 的伴随矩阵 $A^*!=O$，若 $xi_1,xi_2,xi_3,xi_4$ 是非齐次线性方程组 $A bold(x)=bold(b)$ 的互不相等的解，则对应的齐次线性方程组 $A bold(x)=bold(0)$ 的基础解系
#choices[不存在.][仅含一个非零解向量.][含有两个线性无关的解向量.][含有三个线性无关的解向量.]
#ezexam.solution(show-number: false)[
B.
]
]

#ezexam.question[
设随机变量 $X$ 服从正态分布 $N(0,1)$，对给定的 $alpha (0<alpha<1)$，数 $u_alpha$ 满足 $P{X>u_alpha}=alpha$.若 $P{|X|<x}=alpha$，则 $x$ 等于
#choices([$u_(alpha/2)$.],[$u_(1-alpha/2)$.],[$u_((1-alpha)/2)$.],[$u_(1-alpha)$.])
#ezexam.solution(show-number: false)[
C.
]
]

= 三、解答题（本题共9小题，满分94分.解答应写出文字说明、证明过程或演算步骤.）

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
（本题满分8分）设 $f(x),g(x)$ 在 $[a,b]$ 上连续，且满足
$ integral_a^x f(t)dif t>=integral_a^x g(t)dif t,quad x in [a,b), \
integral_a^b f(t)dif t=integral_a^b g(t)dif t. $
证明：$integral_a^b x f(x)dif x<=integral_a^b x g(x)dif x$.
#ezexam.solution(show-number: false)[
证　令 $F(x)=f(x)-g(x),G(x)=integral_a^x F(t)dif t$.
由题设知
$ G(x)>=0,quad x in [a,b], \
G(a)=G(b)=0,G'(x)=F(x), $
从而 $integral_a^b x F(x)dif x=integral_a^b x dif G(x)$
$ =x G(x)|_a^b-integral_a^b G(x)dif x=-integral_a^b G(x)dif x. $
由于 $G(x)>=0,x in [a,b]$，故有 $-integral_a^b G(x)dif x<=0$，即 $integral_a^b x F(x)dif x<=0$，因此 $integral_a^b x f(x)dif x<=integral_a^b x g(x)dif x$.
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
（本题满分9分）设级数
$ x^4/(2 dot 4)+x^6/(2 dot 4 dot 6)+x^8/(2 dot 4 dot 6 dot 8)+dots quad (-infinity<x<+infinity) $
的和函数为 $S(x)$，求：

（Ⅰ）$S(x)$ 所满足的一阶微分方程；

（Ⅱ）$S(x)$ 的表达式.
#ezexam.solution(show-number: false)[
解　（Ⅰ）$S(x)=x^4/(2 dot 4)+x^6/(2 dot 4 dot 6)+x^8/(2 dot 4 dot 6 dot 8)+dots$，易见 $S(0)=0$，
$ S'(x)&=x^3/2+x^5/(2 dot 4)+x^7/(2 dot 4 dot 6)+dots \
&=x(x^2/2+x^4/(2 dot 4)+x^6/(2 dot 4 dot 6)+dots) \
&=x[x^2/2+S(x)], $
因此 $S(x)$ 是初值问题 $y'=x y+x^3/2,y(0)=0$ 的解.

（Ⅱ）方程 $y'=x y+x^3/2$ 的通解为
$ y=e^(integral x dif x)(integral x^3/2 e^(-integral x dif x)dif x+C)=-x^2/2-1+C e^(x^2/2). $
由初始条件 $y(0)=0$，求得 $C=1$，故 $y=-x^2/2+e^(x^2/2)-1$，因此和函数 $S(x)=-x^2/2+e^(x^2/2)-1$.
]
]

#ezexam.question[
（本题满分13分）设
$ alpha_1=(1,2,0)^"T",quad alpha_2=(1,a+2,-3a)^"T", \
alpha_3=(-1,-b-2,a+2b)^"T",quad beta=(1,3,-3)^"T", $
试讨论当 $a,b$ 为何值时，

（Ⅰ）$beta$ 不能由 $alpha_1,alpha_2,alpha_3$ 线性表示；

（Ⅱ）$beta$ 可由 $alpha_1,alpha_2,alpha_3$ 唯一地线性表示，并求出表示式；

（Ⅲ）$beta$ 可由 $alpha_1,alpha_2,alpha_3$ 线性表示，但表示式不唯一，并求出表示式.
#ezexam.solution(show-number: false)[
解　设有数 $k_1,k_2,k_3$，使得
$ k_1 alpha_1+k_2 alpha_2+k_3 alpha_3=beta. quad (ast) $
记 $A=(alpha_1,alpha_2,alpha_3)$.对矩阵 $(A quad beta)$ 施以初等行变换，有
$ (A quad beta)=mat(augment: #3,1,1,-1,1;2,a+2,-b-2,3;0,-3a,a+2b,-3) \
->mat(augment: #3,1,1,-1,1;0,a,-b,1;0,0,a-b,0). $
（Ⅰ）当 $a=0,b$ 为任意常数时，有
$ (A quad beta)->mat(augment: #3,1,1,-1,1;0,0,-b,1;0,0,0,-1), $
可知 $r(A)!=r(A quad beta)$，故方程组（$ast$）无解，$beta$ 不能由 $alpha_1,alpha_2,alpha_3$ 线性表示.

（Ⅱ）当 $a!=0$ 且 $a!=b$ 时，$r(A)=r(A quad beta)=3$，故方程组（$ast$）有唯一解
$ k_1=1-1/a,k_2=1/a,k_3=0, $
则 $beta$ 可由 $alpha_1,alpha_2,alpha_3$ 唯一地线性表示，其表示式为 $beta=(1-1/a)alpha_1+1/a alpha_2$.

（Ⅲ）当 $a=b!=0$ 时，对 $(A quad beta)$ 施以初等行变换，有
$ (A quad beta)->mat(augment: #3,1,0,0,1-1/a;0,1,-1,1/a;0,0,0,0), $
可知 $r(A)=r(A quad beta)=2$，故方程组（$ast$）有无穷多解，其全部解为
$ k_1=1-1/a,k_2=1/a+c,k_3=c, $
其中 $c$ 为任意常数.
此时 $beta$ 可由 $alpha_1,alpha_2,alpha_3$ 线性表示，但表示式不唯一，其表示式为
$ beta=(1-1/a)alpha_1+(1/a+c)alpha_2+c alpha_3. $
]
]

#ezexam.question[
（本题满分13分）设 $n$ 阶矩阵
$ A=mat(1,b,dots,b;b,1,dots,b;dots.v,dots.v,,dots.v;b,b,dots,1). $
（Ⅰ）求 $A$ 的特征值和特征向量；

（Ⅱ）求可逆矩阵 $P$，使得 $P^(-1)A P$ 为对角矩阵.
#ezexam.solution(show-number: false)[
解　（Ⅰ）（ⅰ）当 $b!=0$ 时，
$ |lambda E-A|=mat(delim:"|",lambda-1,-b,dots,-b;-b,lambda-1,dots,-b;dots.v,dots.v,,dots.v;-b,-b,dots,lambda-1) \
=[lambda-1-(n-1)b][lambda-(1-b)]^(n-1). $
故 $A$ 的特征值为 $lambda_1=1+(n-1)b,lambda_2=dots=lambda_n=1-b$.
对于 $lambda_1=1+(n-1)b$，设 $A$ 的属于特征值 $lambda_1$ 的一个特征向量为 $xi_1$，则
$ mat(1,b,dots,b;b,1,dots,b;dots.v,dots.v,,dots.v;b,b,dots,1)xi_1=[1+(n-1)b]xi_1, $
解得 $xi_1=(1,1,dots,1)^"T"$，所以全部特征向量为 $k xi_1=k(1,1,dots,1)^"T"$（$k$ 为任意非零常数）.
对于 $lambda_2=dots=lambda_n=1-b$，解齐次线性方程组 $[(1-b)E-A]bold(x)=bold(0)$，由
$ (1-b)E-A=mat(-b,-b,dots,-b;-b,-b,dots,-b;dots.v,dots.v,,dots.v;-b,-b,dots,-b) \
->mat(1,1,dots,1;0,0,dots,0;dots.v,dots.v,,dots.v;0,0,dots,0), $
解得基础解系
$ xi_2=(1,-1,0,dots,0)^"T", \
xi_3=(1,0,-1,dots,0)^"T", \
dots \
xi_n=(1,0,0,dots,-1)^"T", $
故全部特征向量为 $k_2 xi_2+k_3 xi_3+dots+k_n xi_n$（$k_2,dots,k_n$ 是不全为零的常数）.

（ⅱ）当 $b=0$ 时，特征值 $lambda_1=dots=lambda_n=1$，任意非零列向量均为特征向量.

（Ⅱ）（ⅰ）当 $b!=0$ 时，$A$ 有 $n$ 个线性无关的特征向量，令 $P=(xi_1,xi_2,dots,xi_n)$，则
$ P^(-1)A P=op("diag"){1+(n-1)b,1-b,dots,1-b}. $
（ⅱ）当 $b=0$ 时，$A=E$，对任意可逆矩阵 $P$，均有 $P^(-1)A P=E$.

注　$xi_1=(1,1,dots,1)^"T"$ 也可由求解齐次线性方程组 $(lambda_1 E-A)bold(x)=bold(0)$ 得出.
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
（本题满分13分）设随机变量 $X$ 的分布函数为
$ F(x;alpha,beta)=cases(1-(alpha/x)^beta & x>alpha,0 & x<=alpha), $
其中参数 $alpha>0,beta>1$.设 $X_1,X_2,dots,X_n$ 为来自总体 $X$ 的简单随机样本，

（Ⅰ）当 $alpha=1$ 时，求未知参数 $beta$ 的矩估计量；

（Ⅱ）当 $alpha=1$ 时，求未知参数 $beta$ 的最大似然估计量；

（Ⅲ）当 $beta=2$ 时，求未知参数 $alpha$ 的最大似然估计量.
#ezexam.solution(show-number: false)[
解　当 $alpha=1$ 时，$X$ 的概率密度为
$ f(x;beta)=cases(beta/x^(beta+1) & x>1,0 & x<=1). $
（Ⅰ）由于
$ E X=integral_(-infinity)^(+infinity)x f(x;beta)dif x=integral_1^(+infinity)x beta/x^(beta+1)dif x=beta/(beta-1), $
令 $beta/(beta-1)=overline(X)$，解得 $beta=overline(X)/(overline(X)-1)$，所以，参数 $beta$ 的矩估计量为 $hat(beta)=overline(X)/(overline(X)-1)$.

（Ⅱ）对于总体 $X$ 的样本值 $x_1,x_2,dots,x_n$，似然函数为
$ L(beta)=product_(i=1)^n f(x_i;beta)=cases(beta^n/(x_1 x_2 dots x_n)^(beta+1) & x_i>1 (i=1,2,dots,n),0 & #text[其他]). $
当 $x_i>1 (i=1,2,dots,n)$ 时，$L(beta)>0$，取对数得
$ ln L(beta)=n ln beta-(beta+1)sum_(i=1)^n ln x_i, $
两边对 $beta$ 求导数，得
$ (dif ln L(beta))/(dif beta)=n/beta-sum_(i=1)^n ln x_i. $
令 $(dif ln L(beta))/(dif beta)=0$，解得 $beta=n/(sum_(i=1)^n ln x_i)$，$beta$ 的最大似然估计量为 $hat(beta)=n/(sum_(i=1)^n ln X_i)$.

（Ⅲ）当 $beta=2$ 时，$X$ 的概率密度为
$ f(x;alpha)=cases((2alpha^2)/x^3 & x>alpha,0 & x<=alpha). $
对于总体 $X$ 的样本值 $x_1,x_2,dots,x_n$，似然函数为
$ L(alpha)=product_(i=1)^n f(x_i;alpha)=cases((2^n alpha^(2n))/(x_1 x_2 dots x_n)^3 & x_i>alpha (i=1,2,dots,n),0 & #text[其他]). $
当 $x_i>alpha (i=1,2,dots,n)$ 时，$alpha$ 越大，$L(alpha)$ 越大，因而 $alpha$ 的最大似然估计值为 $hat(alpha)=min{x_1,x_2,dots,x_n}$，则 $alpha$ 的最大似然估计量为 $hat(alpha)=min{X_1,X_2,dots,X_n}$.
]
]

