#import "../template.typ": exam
#show: exam.with(year: 2014, subject: "三")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#ezexam.answer-state.update(false)


= 一、选择题：1—8小题，每小题4分，共32分. 在每小题给出的四个选项中，只有一项符合题目要求，把所选项前的字母填在题后的括号内.

#ezexam.question[
设 $lim_(n->infinity)a_n=a$，且 $a!=0$，则当 $n$ 充分大时有
#choices([$|a_n|>|a|/2$.],[$|a_n|<|a|/2$.],[$a_n>a-1/n$.],[$a_n<a+1/n$.])
]

#ezexam.question[
下列曲线中有渐近线的是
#choices([$y=x+sin x$.],[$y=x^2+sin x$.],[$y=x+sin(1/x)$.],[$y=x^2+sin(1/x)$.])
]

#ezexam.question[
设 $p(x)=a+b x+c x^2+d x^3$.当 $x->0$ 时，若 $p(x)-tan x$ 是比 $x^3$ 高阶的无穷小，则下列选项中错误的是
#choices([$a=0$.],[$b=1$.],[$c=0$.],[$d=1/6$.])
]

#ezexam.question[
设函数 $f(x)$ 具有2阶导数，$g(x)=f(0)(1-x)+f(1)x$，则在区间 $[0,1]$ 上
#choices([当 $f'(x)>=0$ 时，$f(x)>=g(x)$.],[当 $f'(x)>=0$ 时，$f(x)<=g(x)$.],[当 $f''(x)>=0$ 时，$f(x)>=g(x)$.],[当 $f''(x)>=0$ 时，$f(x)<=g(x)$.])
]

#ezexam.question[
行列式 $mat(delim: "|", 0,a,b,0;a,0,0,b;0,c,d,0;c,0,0,d)=$
#choices([$(a d-b c)^2$.],[$-(a d-b c)^2$.],[$a^2 d^2-b^2 c^2$.],[$b^2 c^2-a^2 d^2$.])
]

#ezexam.question[
设 $alpha_1,alpha_2,alpha_3$ 均为3维向量，则对任意常数 $k,l$，向量组 $alpha_1+k alpha_3,alpha_2+l alpha_3$ 线性无关是向量组 $alpha_1,alpha_2,alpha_3$ 线性无关的
#choices([必要非充分条件.],[充分非必要条件.],[充分必要条件.],[既非充分也非必要条件.])
]

#ezexam.question[
设随机事件 $A$ 与 $B$ 相互独立，且 $P(B)=0.5,P(A-B)=0.3$，则 $P(B-A)=$
#choices([0.1.],[0.2.],[0.3.],[0.4.])
]

#ezexam.question[
设 $X_1,X_2,X_3$ 为来自正态总体 $N(0,sigma^2)$ 的简单随机样本，则统计量 $S=(X_1-X_2)/(sqrt(2)|X_3|)$ 服从的分布为
#choices([$F(1,1)$.],[$F(2,1)$.],[$t(1)$.],[$t(2)$.])
]

= 二、填空题：9—14小题，每小题4分，共24分. 把答案填在题中横线上.

#ezexam.question[
设某商品的需求函数为 $Q=40-2P$（$P$ 为商品的价格），则该商品的边际收益为#h(3em).
]

#ezexam.question[
设 $D$ 是由曲线 $x y+1=0$ 与直线 $y+x=0$ 及 $y=2$ 围成的有界区域，则 $D$ 的面积为#h(3em).
]

#ezexam.question[
设 $integral_0^a x e^(2x)dif x=1/4$，则 $a=$#h(3em).
]

#ezexam.question[
二次积分 $integral_0^1 dif y integral_y^1(e^(x^2)/x-e^(y^2))dif x=$#h(3em).
]

#ezexam.question[
设二次型 $f(x_1,x_2,x_3)=x_1^2-x_2^2+2a x_1 x_3+4x_2 x_3$ 的负惯性指数为1，则 $a$ 的取值范围是#h(3em).
]

#ezexam.question[
设总体 $X$ 的概率密度为 $f(x;theta)=cases((2x)/(3theta^2) & theta<x<2theta,0 & "其他")$，其中 $theta$ 是未知参数，$X_1,X_2,dots,X_n$ 为来自总体 $X$ 的简单随机样本.若 $c sum_(i=1)^n X_i^2$ 是 $theta^2$ 的无偏估计，则 $c=$#h(3em).
]

= 三、解答题：15—23小题，共94分. 解答应写出文字说明、证明过程或演算步骤.

#ezexam.question[
（本题满分10分）求极限 $lim_(x->+infinity)(integral_1^x[t^2(e^(1/t)-1)-t]dif t)/(x^2 ln(1+1/x))$.
]

#ezexam.question[
（本题满分10分）设平面区域 $D={(x,y) bar 1<=x^2+y^2<=4,x>=0,y>=0}$，计算 $integral.double_D (x sin(pi sqrt(x^2+y^2)))/(x+y)dif x dif y$.
]

#ezexam.question[
（本题满分10分）设函数 $f(u)$ 具有连续导数，且 $z=f(e^x cos y)$ 满足
$ cos y (partial z)/(partial x)-sin y (partial z)/(partial y)=(4z+e^x cos y)e^x. $
若 $f(0)=0$，求 $f(u)$ 的表达式.
]

#ezexam.question[
（本题满分10分）求幂级数 $sum_(n=0)^infinity(n+1)(n+3)x^n$ 的收敛域及和函数.
]

#ezexam.question[
（本题满分10分）设函数 $f(x),g(x)$ 在区间 $[a,b]$ 上连续，且 $f(x)$ 单调增加，$0<=g(x)<=1$.证明：

（Ⅰ）$0<=integral_a^x g(t)dif t<=x-a,x in [a,b]$；

（Ⅱ）$integral_a^(a+integral_a^b g(t)dif t)f(x)dif x<=integral_a^b f(x)g(x)dif x$.
]

#ezexam.question[
（本题满分11分）设 $A=mat(1,-2,3,-4;0,1,-1,1;1,2,0,-3)$，$E$ 为3阶单位矩阵.

（Ⅰ）求方程组 $A x=0$ 的一个基础解系；

（Ⅱ）求满足 $A B=E$ 的所有矩阵 $B$.
]

#ezexam.question[
（本题满分11分）证明 $n$ 阶矩阵 $mat(1,1,dots,1;1,1,dots,1;dots.v,dots.v,,dots.v;1,1,dots,1)$ 与 $mat(0,dots,0,1;0,dots,0,2;dots.v,,dots.v,dots.v;0,dots,0,n)$ 相似.
]

#ezexam.question[
（本题满分11分）设随机变量 $X$ 的概率分布为 $P{X=1}=P{X=2}=1/2$，在给定 $X=i$ 的条件下，随机变量 $Y$ 服从均匀分布 $U(0,i)(i=1,2)$.

（Ⅰ）求 $Y$ 的分布函数 $F_Y(y)$；

（Ⅱ）求 $E Y$.
]

#ezexam.question[
（本题满分11分）设随机变量 $X,Y$ 的概率分布相同，$X$ 的概率分布为 $P{X=0}=1/3,P{X=1}=2/3$，且 $X$ 与 $Y$ 的相关系数 $rho_(X Y)=1/2$.

（Ⅰ）求 $(X,Y)$ 的概率分布；

（Ⅱ）求 $P{X+Y<=1}$.
]

