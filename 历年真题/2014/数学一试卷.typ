#import "../template.typ": exam
#show: exam.with(year: 2014, subject: "一")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#ezexam.answer-state.update(false)


= 一、选择题：1—8小题，每小题4分，共32分.在每小题给出的四个选项中，只有一项符合题目要求，把所选项前的字母填在题后的括号内.

#ezexam.question[
下列曲线中有渐近线的是
#choices([$y=x+sin x$.],[$y=x^2+sin x$.],[$y=x+sin(1/x)$.],[$y=x^2+sin(1/x)$.])
]

#ezexam.question[
设函数 $f(x)$ 具有2阶导数，$g(x)=f(0)(1-x)+f(1)x$，则在区间 $[0,1]$ 上
#choices([当 $f'(x)>=0$ 时，$f(x)>=g(x)$.],[当 $f'(x)>=0$ 时，$f(x)<=g(x)$.],[当 $f''(x)>=0$ 时，$f(x)>=g(x)$.],[当 $f''(x)>=0$ 时，$f(x)<=g(x)$.])
]

#ezexam.question[
设 $f(x,y)$ 是连续函数，则 $integral_0^1 dif y integral_(-sqrt(1-y^2))^(1-y)f(x,y)dif x=$
#choices([$integral_0^1 dif x integral_0^(x-1)f(x,y)dif y+integral_(-1)^0 dif x integral_0^(sqrt(1-x^2))f(x,y)dif y$.],[$integral_0^1 dif x integral_0^(1-x)f(x,y)dif y+integral_(-1)^0 dif x integral_(-sqrt(1-x^2))^0 f(x,y)dif y$.],[$integral_0^(pi/2)dif theta integral_0^(1/(cos theta+sin theta))f(r cos theta,r sin theta)dif r+integral_(pi/2)^pi dif theta integral_0^1 f(r cos theta,r sin theta)dif r$.],[$integral_0^(pi/2)dif theta integral_0^(1/(cos theta+sin theta))f(r cos theta,r sin theta)r dif r+integral_(pi/2)^pi dif theta integral_0^1 f(r cos theta,r sin theta)r dif r$.])
]

#ezexam.question[
若 $integral_(-pi)^pi(x-a_1 cos x-b_1 sin x)^2 dif x=min_(a,b in bold(upright(R))){integral_(-pi)^pi(x-a cos x-b sin x)^2 dif x}$，则 $a_1 cos x+b_1 sin x=$
#choices([$2sin x$.],[$2cos x$.],[$2pi sin x$.],[$2pi cos x$.])
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
设连续型随机变量 $X_1$ 与 $X_2$ 相互独立且方差均存在，$X_1$ 与 $X_2$ 的概率密度分别为 $f_1(x)$ 与 $f_2(x)$，随机变量 $Y_1$ 的概率密度为 $f_(Y_1)(y)=1/2[f_1(y)+f_2(y)]$，随机变量 $Y_2=1/2(X_1+X_2)$，则
#choices([$E Y_1>E Y_2,D Y_1>D Y_2$.],[$E Y_1=E Y_2,D Y_1=D Y_2$.],[$E Y_1=E Y_2,D Y_1<D Y_2$.],[$E Y_1=E Y_2,D Y_1>D Y_2$.])
]

= 二、填空题：9—14小题，每小题4分，共24分.把答案填在题中横线上.

#ezexam.question[
曲面 $z=x^2(1-sin y)+y^2(1-sin x)$ 在点 $(1,0,1)$ 处的切平面方程为#h(3em).
]

#ezexam.question[
设 $f(x)$ 是周期为4的可导奇函数，且 $f'(x)=2(x-1),x in [0,2]$，则 $f(7)=$#h(3em).
]

#ezexam.question[
微分方程 $x y'+y(ln x-ln y)=0$ 满足条件 $y(1)=e^3$ 的解为 $y=$#h(3em).
]

#ezexam.question[
设 $L$ 是柱面 $x^2+y^2=1$ 与平面 $y+z=0$ 的交线，从 $z$ 轴正向往 $z$ 轴负向看去为逆时针方向，则曲线积分 $integral.cont_L z dif x+y dif z=$#h(3em).
]

#ezexam.question[
设二次型 $f(x_1,x_2,x_3)=x_1^2-x_2^2+2a x_1 x_3+4x_2 x_3$ 的负惯性指数为1，则 $a$ 的取值范围是#h(3em).
]

#ezexam.question[
设总体 $X$ 的概率密度为 $f(x;theta)=cases((2x)/(3theta^2) & theta<x<2theta,0 & "其他")$，其中 $theta$ 是未知参数，$X_1,X_2,dots,X_n$ 为来自总体 $X$ 的简单随机样本.若 $c sum_(i=1)^n X_i^2$ 是 $theta^2$ 的无偏估计，则 $c=$#h(3em).
]

= 三、解答题：15—23小题，共94分.解答应写出文字说明、证明过程或演算步骤.

#ezexam.question[
（本题满分10分）求极限 $lim_(x->+infinity)(integral_1^x[t^2(e^(1/t)-1)-t]dif t)/(x^2 ln(1+1/x))$.
]

#ezexam.question[
（本题满分10分）设函数 $y=f(x)$ 由方程 $y^3+x y^2+x^2 y+6=0$ 确定，求 $f(x)$ 的极值.
]

#ezexam.question[
（本题满分10分）设函数 $f(u)$ 具有2阶连续导数，$z=f(e^x cos y)$ 满足
$ (partial^2 z)/(partial x^2)+(partial^2 z)/(partial y^2)=(4z+e^x cos y)e^(2x). $
若 $f(0)=0,f'(0)=0$，求 $f(u)$ 的表达式.
]

#ezexam.question[
（本题满分10分）设 $Sigma$ 为曲面 $z=x^2+y^2 (z<=1)$ 的上侧，计算曲面积分
$ I=integral.double_Sigma(x-1)^3 dif y dif z+(y-1)^3 dif z dif x+(z-1)dif x dif y. $
]

#ezexam.question[
（本题满分10分）设数列 $a_n,b_n$ 满足 $0<a_n<pi/2,0<b_n<pi/2,cos a_n-a_n=cos b_n$，且级数 $sum_(n=1)^infinity b_n$ 收敛.

（Ⅰ）证明 $lim_(n->infinity)a_n=0$；

（Ⅱ）证明级数 $sum_(n=1)^infinity a_n/b_n$ 收敛.
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
（本题满分11分）设总体 $X$ 的分布函数为 $F(x;theta)=cases(1-e^(-x^2/theta) & x>=0,0 & x<0)$，其中 $theta$ 是未知参数且大于零，$X_1,X_2,dots,X_n$ 为来自总体 $X$ 的简单随机样本.

（Ⅰ）求 $E X$ 与 $E X^2$；

（Ⅱ）求 $theta$ 的最大似然估计量 $hat(theta)_n$；

（Ⅲ）是否存在实数 $a$，使得对任何 $epsilon>0$，都有 $lim_(n->infinity)P{|hat(theta)_n-a|>=epsilon}=0$？
]

