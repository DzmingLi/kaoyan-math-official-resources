#import "../template.typ": exam
#show: exam.with(year: 2004, subject: "四", title: "2004年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#ezexam.answer-state.update(false)


= 一、填空题（本题共6小题，每小题4分，满分24分）

#ezexam.question[
若 $lim_(x->0)(sin x)/(e^x-a)(cos x-b)=5$，则 $a=$#h(3em)，$b=$#h(3em).
]

#ezexam.question[
设 $y=arctan e^x-ln sqrt(e^(2x)/(e^(2x)+1))$，则 $lr((dif y)/(dif x))|_(x=1)=$#h(3em).
]

#ezexam.question[
设 $f(x)=cases(x e^(x^2) & -1/2<=x<1/2,-1 & x>=1/2)$，则 $integral_(1/2)^2 f(x-1)dif x=$#h(3em).
]

#ezexam.question[
设 $A=mat(0,-1,0;1,0,0;0,0,-1),B=P^(-1)A P$，其中 $P$ 为三阶可逆矩阵，则 $B^2004-2A^2=$#h(3em).
]

#ezexam.question[
设 $A=(a_(i j))_(3 times 3)$ 是实正交矩阵，且 $a_(11)=1,bold(b)=(1,0,0)^"T"$，则线性方程组 $A bold(x)=bold(b)$ 的解是#h(3em).
]

#ezexam.question[
设随机变量 $X$ 服从参数为 $lambda$ 的指数分布，则 $P{X>sqrt(D X)}=$#h(3em).
]

= 二、选择题（本题共8小题，每小题4分，满分32分）

#ezexam.question[
函数 $f(x)=(|x|sin(x-2))/(x(x-1)(x-2)^2)$ 在下列哪个区间内有界？
#choices([$(-1,0)$.],[$(0,1)$.],[$(1,2)$.],[$(2,3)$.])
]

#ezexam.question[
设 $f(x)$ 在 $(-infinity,+infinity)$ 内有定义，且 $lim_(x->infinity) f(x)=a$，$g(x)=cases(f(1/x) & x!=0,0 & x=0)$，则
#choices([$x=0$ 必是 $g(x)$ 的第一类间断点.],[$x=0$ 必是 $g(x)$ 的第二类间断点.],[$x=0$ 必是 $g(x)$ 的连续点.],[$g(x)$ 在点 $x=0$ 处的连续性与 $a$ 的取值有关.])
]

#ezexam.question[
设 $f(x)=|x(1-x)|$，则
#choices([$x=0$ 是 $f(x)$ 的极值点，但 $(0,0)$ 不是曲线 $y=f(x)$ 的拐点.],[$x=0$ 不是 $f(x)$ 的极值点，但 $(0,0)$ 是曲线 $y=f(x)$ 的拐点.],[$x=0$ 是 $f(x)$ 的极值点，且 $(0,0)$ 是曲线 $y=f(x)$ 的拐点.],[$x=0$ 不是 $f(x)$ 的极值点，$(0,0)$ 也不是曲线 $y=f(x)$ 的拐点.])
]

#ezexam.question[
设 $f(x)=cases(1 & x>0,0 & x=0,-1 & x<0),F(x)=integral_0^x f(t)dif t$，则
#choices([$F(x)$ 在 $x=0$ 点不连续.],[$F(x)$ 在 $(-infinity,+infinity)$ 内连续，在 $x=0$ 点不可导.],[$F(x)$ 在 $(-infinity,+infinity)$ 内可导，且满足 $F'(x)=f(x)$.],[$F(x)$ 在 $(-infinity,+infinity)$ 内可导，但不一定满足 $F'(x)=f(x)$.])
]

#ezexam.question[
设 $f'(x)$ 在 $[a,b]$ 上连续，且 $f'(a)>0,f'(b)<0$，则下列结论中错误的是
#choices([至少存在一点 $x_0 in (a,b)$，使得 $f(x_0)>f(a)$.],[至少存在一点 $x_0 in (a,b)$，使得 $f(x_0)>f(b)$.],[至少存在一点 $x_0 in (a,b)$，使得 $f'(x_0)=0$.],[至少存在一点 $x_0 in (a,b)$，使得 $f(x_0)=0$.])
]

#ezexam.question[
设 $n$ 阶矩阵 $A$ 与 $B$ 等价，则必有
#choices([当 $|A|=a (a!=0)$ 时，$|B|=a$.],[当 $|A|=a (a!=0)$ 时，$|B|=-a$.],[当 $|A|!=0$ 时，$|B|=0$.],[当 $|A|=0$ 时，$|B|=0$.])
]

#ezexam.question[
设随机变量 $X$ 服从正态分布 $N(0,1)$，对给定的 $alpha in (0,1)$，数 $u_alpha$ 满足 $P{X>u_alpha}=alpha$.若 $P{|X|<x}=alpha$，则 $x$ 等于
#choices([$u_(alpha/2)$.],[$u_((1-alpha)/2)$.],[$u_(1-alpha/2)$.],[$u_(1-alpha)$.])
]

#ezexam.question[
设随机变量 $X_1,X_2,dots,X_n (n>1)$ 独立同分布，且其方差为 $sigma^2>0$.令随机变量 $Y=1/n sum_(i=1)^n X_i$，则
#choices([$D(X_1+Y)=(n+2)/n sigma^2$.],[$D(X_1-Y)=(n+1)/n sigma^2$.],[$op("Cov")(X_1,Y)=sigma^2/n$.],[$op("Cov")(X_1,Y)=sigma^2$.])
]

= 三、解答题（本题共9小题，满分94分.解答应写出文字说明、证明过程或演算步骤.）

#ezexam.question[
（本题满分8分）求 $lim_(x->0)(1/sin^2 x-(cos^2 x)/x^2)$.
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
]

#ezexam.question[
（本题满分8分）设 $f(u,v)$ 具有连续偏导数，且满足 $f'_u(u,v)+f'_v(u,v)=u v$，求 $y(x)=e^(-2x)f(x,x)$ 所满足的一阶微分方程，并求其通解.
]

#ezexam.question[
（本题满分9分）设某商品的需求函数为 $Q=100-5P$，其中价格 $P in (0,20)$，$Q$ 为需求量.

（Ⅰ）求需求量对价格的弹性 $E_d (E_d>0)$；

（Ⅱ）推导 $(dif R)/(dif P)=Q(1-E_d)$（其中 $R$ 为收益），并用弹性 $E_d$ 说明价格在何范围内变化时，降低价格反而使收益增加.
]

#ezexam.question[
（本题满分9分）设 $F(x)=cases(e^(2x) & x<=0,e^(-2x) & x>0)$，$S$ 表示夹在 $x$ 轴与曲线 $y=F(x)$ 之间的面积.对任何 $t>0$，$S_1(t)$ 表示矩形 $-t<=x<=t,0<=y<=F(t)$ 的面积.求：

（Ⅰ）$S(t)=S-S_1(t)$ 的表达式；

（Ⅱ）$S(t)$ 的最小值.
]

#ezexam.question[
（本题满分13分）设线性方程组
$ cases(x_1+lambda x_2+mu x_3+x_4=0,2x_1+x_2+x_3+2x_4=0,3x_1+(2+lambda)x_2+(4+mu)x_3+4x_4=1). $
已知 $(1,-1,1,-1)^"T"$ 是该方程组的一个解，试求：

（Ⅰ）方程组的全部解，并用对应的齐次线性方程组的基础解系表示全部解；

（Ⅱ）该方程组满足 $x_2=x_3$ 的全部解.
]

#ezexam.question[
（本题满分13分）设三阶实对称矩阵 $A$ 的秩为2，$lambda_1=lambda_2=6$ 是 $A$ 的二重特征值.若 $alpha_1=(1,1,0)^"T",alpha_2=(2,1,1)^"T",alpha_3=(-1,2,-3)^"T"$ 都是 $A$ 的属于特征值6的特征向量.

（Ⅰ）求 $A$ 的另一特征值和对应的特征向量；

（Ⅱ）求矩阵 $A$.
]

#ezexam.question[
（本题满分13分）设 $A,B$ 为两个随机事件，且 $P(A)=1/4,P(B|A)=1/3,P(A|B)=1/2$，令
$ X=cases(1 & A #text[发生],0 & A #text[不发生]),quad Y=cases(1 & B #text[发生],0 & B #text[不发生]). $
求：（Ⅰ）二维随机变量 $(X,Y)$ 的概率分布；

（Ⅱ）$X$ 与 $Y$ 的相关系数 $rho_(X Y)$；

（Ⅲ）$Z=X^2+Y^2$ 的概率分布.
]

#ezexam.question[
（本题满分13分）设随机变量 $X$ 在区间 $(0,1)$ 内服从均匀分布，在 $X=x (0<x<1)$ 的条件下，随机变量 $Y$ 在区间 $(0,x)$ 内服从均匀分布，求：

（Ⅰ）随机变量 $X$ 和 $Y$ 的联合概率密度；

（Ⅱ）$Y$ 的概率密度；

（Ⅲ）概率 $P{X+Y>1}$.
]

