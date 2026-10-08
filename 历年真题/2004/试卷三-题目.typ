#import "../template.typ": exam
#show: exam.with(year: 2004, subject: "三", title: "2004年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#ezexam.answer-state.update(false)


= 一、填空题（本题共6小题，每小题4分，满分24分）

#ezexam.question[
若 $lim_(x->0)(sin x)/(e^x-a)(cos x-b)=5$，则 $a=$#h(3em)，$b=$#h(3em).
]

#ezexam.question[
函数 $f(u,v)$ 由关系式 $f[x g(y),y]=x+g(y)$ 确定，其中函数 $g(y)$ 可微，且 $g(y)!=0$，则 $(partial^2 f)/(partial u partial v)=$#h(3em).
]

#ezexam.question[
设 $f(x)=cases(x e^(x^2) & -1/2<=x<1/2,-1 & x>=1/2)$，则 $integral_(1/2)^2 f(x-1)dif x=$#h(3em).
]

#ezexam.question[
二次型 $f(x_1,x_2,x_3)=(x_1+x_2)^2+(x_2-x_3)^2+(x_3+x_1)^2$ 的秩为#h(3em).
]

#ezexam.question[
设随机变量 $X$ 服从参数为 $lambda$ 的指数分布，则 $P{X>sqrt(D X)}=$#h(3em).
]

#ezexam.question[
设总体 $X$ 服从正态分布 $N(mu_1,sigma^2)$，总体 $Y$ 服从正态分布 $N(mu_2,sigma^2)$，$X_1,X_2,dots,X_(n_1)$ 和 $Y_1,Y_2,dots,Y_(n_2)$ 分别是来自总体 $X$ 和 $Y$ 的简单随机样本，则
$ E[(sum_(i=1)^(n_1)(X_i-overline(X))^2+sum_(j=1)^(n_2)(Y_j-overline(Y))^2)/(n_1+n_2-2)]=$#h(3em).
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
设有以下命题：

①若 $sum_(n=1)^infinity(u_(2n-1)+u_(2n))$ 收敛，则 $sum_(n=1)^infinity u_n$ 收敛；

②若 $sum_(n=1)^infinity u_n$ 收敛，则 $sum_(n=1)^infinity u_(n+1000)$ 收敛；

③若 $lim_(n->infinity)u_(n+1)/u_n>1$，则 $sum_(n=1)^infinity u_n$ 发散；

④若 $sum_(n=1)^infinity(u_n+v_n)$ 收敛，则 $sum_(n=1)^infinity u_n,sum_(n=1)^infinity v_n$ 都收敛.

则以上命题中正确的是
#choices[①②.][②③.][③④.][①④.]
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
设 $n$ 阶矩阵 $A$ 的伴随矩阵 $A^*!=O$，若 $xi_1,xi_2,xi_3,xi_4$ 是非齐次线性方程组 $A bold(x)=bold(b)$ 的互不相等的解，则对应的齐次线性方程组 $A bold(x)=bold(0)$ 的基础解系
#choices[不存在.][仅含一个非零解向量.][含有两个线性无关的解向量.][含有三个线性无关的解向量.]
]

#ezexam.question[
设随机变量 $X$ 服从正态分布 $N(0,1)$，对给定的 $alpha (0<alpha<1)$，数 $u_alpha$ 满足 $P{X>u_alpha}=alpha$.若 $P{|X|<x}=alpha$，则 $x$ 等于
#choices([$u_(alpha/2)$.],[$u_(1-alpha/2)$.],[$u_((1-alpha)/2)$.],[$u_(1-alpha)$.])
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
（本题满分8分）设 $f(x),g(x)$ 在 $[a,b]$ 上连续，且满足
$ integral_a^x f(t)dif t>=integral_a^x g(t)dif t,quad x in [a,b), \
integral_a^b f(t)dif t=integral_a^b g(t)dif t. $
证明：$integral_a^b x f(x)dif x<=integral_a^b x g(x)dif x$.
]

#ezexam.question[
（本题满分9分）设某商品的需求函数为 $Q=100-5P$，其中价格 $P in (0,20)$，$Q$ 为需求量.

（Ⅰ）求需求量对价格的弹性 $E_d (E_d>0)$；

（Ⅱ）推导 $(dif R)/(dif P)=Q(1-E_d)$（其中 $R$ 为收益），并用弹性 $E_d$ 说明价格在何范围内变化时，降低价格反而使收益增加.
]

#ezexam.question[
（本题满分9分）设级数
$ x^4/(2 dot 4)+x^6/(2 dot 4 dot 6)+x^8/(2 dot 4 dot 6 dot 8)+dots quad (-infinity<x<+infinity) $
的和函数为 $S(x)$，求：

（Ⅰ）$S(x)$ 所满足的一阶微分方程；

（Ⅱ）$S(x)$ 的表达式.
]

#ezexam.question[
（本题满分13分）设
$ alpha_1=(1,2,0)^"T",quad alpha_2=(1,a+2,-3a)^"T", \
alpha_3=(-1,-b-2,a+2b)^"T",quad beta=(1,3,-3)^"T", $
试讨论当 $a,b$ 为何值时，

（Ⅰ）$beta$ 不能由 $alpha_1,alpha_2,alpha_3$ 线性表示；

（Ⅱ）$beta$ 可由 $alpha_1,alpha_2,alpha_3$ 唯一地线性表示，并求出表示式；

（Ⅲ）$beta$ 可由 $alpha_1,alpha_2,alpha_3$ 线性表示，但表示式不唯一，并求出表示式.
]

#ezexam.question[
（本题满分13分）设 $n$ 阶矩阵
$ A=mat(1,b,dots,b;b,1,dots,b;dots.v,dots.v,,dots.v;b,b,dots,1). $
（Ⅰ）求 $A$ 的特征值和特征向量；

（Ⅱ）求可逆矩阵 $P$，使得 $P^(-1)A P$ 为对角矩阵.
]

#ezexam.question[
（本题满分13分）设 $A,B$ 为两个随机事件，且 $P(A)=1/4,P(B|A)=1/3,P(A|B)=1/2$，令
$ X=cases(1 & A #text[发生],0 & A #text[不发生]),quad Y=cases(1 & B #text[发生],0 & B #text[不发生]). $
求：（Ⅰ）二维随机变量 $(X,Y)$ 的概率分布；

（Ⅱ）$X$ 与 $Y$ 的相关系数 $rho_(X Y)$；

（Ⅲ）$Z=X^2+Y^2$ 的概率分布.
]

#ezexam.question[
（本题满分13分）设随机变量 $X$ 的分布函数为
$ F(x;alpha,beta)=cases(1-(alpha/x)^beta & x>alpha,0 & x<=alpha), $
其中参数 $alpha>0,beta>1$.设 $X_1,X_2,dots,X_n$ 为来自总体 $X$ 的简单随机样本，

（Ⅰ）当 $alpha=1$ 时，求未知参数 $beta$ 的矩估计量；

（Ⅱ）当 $alpha=1$ 时，求未知参数 $beta$ 的最大似然估计量；

（Ⅲ）当 $beta=2$ 时，求未知参数 $alpha$ 的最大似然估计量.
]

