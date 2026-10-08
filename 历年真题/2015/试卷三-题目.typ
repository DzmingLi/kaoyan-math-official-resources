#import "../template.typ": exam
#show: exam.with(year: 2015, subject: "三")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)


= 一、选择题：1—8小题，每小题4分，共32分.在每小题给出的四个选项中，只有一项符合题目要求，把所选项前的字母填在题后的括号内.

#ezexam.question[
设 $\{x_n\}$ 是数列，下列命题中不正确的是
#choices([若 $lim_(n->infinity)x_n=a$，则 $lim_(n->infinity)x_(2n)=lim_(n->infinity)x_(2n+1)=a$.], [若 $lim_(n->infinity)x_(2n)=lim_(n->infinity)x_(2n+1)=a$，则 $lim_(n->infinity)x_n=a$.], [若 $lim_(n->infinity)x_n=a$，则 $lim_(n->infinity)x_(3n)=lim_(n->infinity)x_(3n+1)=a$.], [若 $lim_(n->infinity)x_(3n)=lim_(n->infinity)x_(3n+1)=a$，则 $lim_(n->infinity)x_n=a$.])
]

#ezexam.question[
设函数 $f(x)$ 在 $(-infinity,+infinity)$ 内连续，其 2 阶导数 $f''(x)$ 的图形如图所示，则曲线 $y=f(x)$ 的拐点个数为

#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
 import draw: *
 line((-2.2,0),(2.3,0),mark:(end: ">"))
 line((0,-1.3),(0,3.3),mark:(end: ">"))
 bezier((-1.7,1.5),(-0.85,0),(-1.65,0.3),(-1.15,0))
 bezier((-0.85,0),(-0.2,2.4),(-0.4,0),(-0.25,1.2))
 bezier((0.08,-1.25),(1.7,1.35),(0.25,0.4),(0.8,0.9))
 content((-0.85,-0.22),$O$)
 content((2.4,-0.15),$x$)
 content((-0.1,3.5),$f''(x)$)
})
#choices([0.], [1.], [2.], [3.])
]

#ezexam.question[
设 $D={(x,y)|x^2+y^2<=2x,x^2+y^2<=2y}$，函数 $f(x,y)$ 在 $D$ 上连续，则 $integral.double_D f(x,y)dif x dif y=$
#choices([$integral_0^(pi/4)dif theta integral_0^(2cos theta)f(r cos theta,r sin theta)r dif r+integral_(pi/4)^(pi/2)dif theta integral_0^(2sin theta)f(r cos theta,r sin theta)r dif r$.], [$integral_0^(pi/4)dif theta integral_0^(2sin theta)f(r cos theta,r sin theta)r dif r+integral_(pi/4)^(pi/2)dif theta integral_0^(2cos theta)f(r cos theta,r sin theta)r dif r$.], [$2integral_0^1 dif x integral_(1-sqrt(1-x^2))^x f(x,y)dif y$.], [$2integral_0^1 dif x integral_x^sqrt(2x-x^2)f(x,y)dif y$.])
]

#ezexam.question[
下列级数中发散的是
#choices([$sum_(n=1)^infinity n/3^n$.], [$sum_(n=1)^infinity 1/sqrt(n)ln(1+1/n)$.], [$sum_(n=2)^infinity (-1)^(n+1)/(ln n)$.], [$sum_(n=1)^infinity n!/n^n$.])
]

#ezexam.question[
设矩阵 $A=mat(1,1,1;1,2,a;1,4,a^2),b=mat(1;d;d^2)$，若集合 $Omega={1,2}$，则线性方程组 $A x=b$ 有无穷多解的充分必要条件为
#choices([$a in.not Omega,d in.not Omega$.], [$a in.not Omega,d in Omega$.], [$a in Omega,d in.not Omega$.], [$a in Omega,d in Omega$.])
]

#ezexam.question[
设二次型 $f(x_1,x_2,x_3)$ 在正交变换 $x=P y$ 下的标准形为 $2y_1^2+y_2^2-y_3^2$，其中 $P=(e_1,e_2,e_3)$.若 $Q=(e_1,-e_3,e_2)$，则 $f(x_1,x_2,x_3)$ 在正交变换 $x=Q y$ 下的标准形为
#choices([$2y_1^2-y_2^2+y_3^2$.], [$2y_1^2+y_2^2-y_3^2$.], [$2y_1^2-y_2^2-y_3^2$.], [$2y_1^2+y_2^2+y_3^2$.])
]

#ezexam.question[
若 $A,B$ 为任意两个随机事件，则
#choices([$P(A B)<=P(A)P(B)$.], [$P(A B)>=P(A)P(B)$.], [$P(A B)<=(P(A)+P(B))/2$.], [$P(A B)>=(P(A)+P(B))/2$.])
]

#ezexam.question[
设总体 $X tilde.op B(m,theta),X_1,X_2,dots,X_n$ 为来自该总体的简单随机样本，$overline(X)$ 为样本均值，则 $E[sum_(i=1)^n(X_i-overline(X))^2]=$
#choices([$(m-1)n theta(1-theta)$.], [$m(n-1)theta(1-theta)$.], [$(m-1)(n-1)theta(1-theta)$.], [$m n theta(1-theta)$.])
]

= 二、填空题：9—14小题，每小题4分，共24分.把答案填在题中横线上.

#ezexam.question[
$lim_(x->0)(ln(cos x))/x^2=$ #fillin(len: 3em)[].
]

#ezexam.question[
设函数 $f(x)$ 连续，$phi(x)=integral_0^(x^2)x f(t)dif t$.若 $phi(1)=1,phi'(1)=5$，则 $f(1)=$ #fillin(len: 3em)[].
]

#ezexam.question[
若函数 $z=z(x,y)$ 由方程 $e^(x+2y+3z)+x y z=1$ 确定，则 $dif z|_((0,0))=$ #fillin(len: 3em)[].
]

#ezexam.question[
设函数 $y=y(x)$ 是微分方程 $y''+y'-2y=0$ 的解，且在 $x=0$ 处 $y(x)$ 取得极值 3，则 $y(x)=$ #fillin(len: 3em)[].
]

#ezexam.question[
设 3 阶矩阵 $A$ 的特征值为 $2,-2,1$，$B=A^2-A+E$，其中 $E$ 为 3 阶单位矩阵，则行列式 $abs(B)=$ #fillin(len: 3em)[].
]

#ezexam.question[
设二维随机变量 $(X,Y)$ 服从正态分布 $N(1,0;1,1;0)$，则 $P{X Y-Y<0}=$ #fillin(len: 3em)[].
]

= 三、解答题：15—23小题，共94分.解答应写出文字说明、证明过程或演算步骤.

#ezexam.question[
（本题满分 10 分）设函数 $f(x)=x+a ln(1+x)+b x sin x,g(x)=k x^3$，若 $f(x)$ 与 $g(x)$ 在 $x->0$ 时是等价无穷小，求 $a,b,k$ 的值.
]

#ezexam.question[
（本题满分 10 分）计算二重积分 $integral.double_D x(x+y)dif x dif y$，其中 $D={(x,y)|x^2+y^2<=2,y>=x^2}$.
]

#ezexam.question[
（本题满分 10 分）为了实现利润最大化，厂商需要对某商品确定其定价模型.设 $Q$ 为该商品的需求量，$p$ 为价格，$M C$ 为边际成本，$eta$ 为需求弹性（$eta>0$）.

（Ⅰ）证明定价模型为 $p=(M C)/(1-1/eta)$；

（Ⅱ）若该商品的成本函数为 $C(Q)=1600+Q^2$，需求函数为 $Q=40-p$，试由（Ⅰ）中的定价模型确定此商品的价格.
]

#ezexam.question[
（本题满分 10 分）设函数 $f(x)$ 在定义域 $I$ 上的导数大于零.若对任意的 $x_0 in I$，曲线 $y=f(x)$ 在点 $(x_0,f(x_0))$ 处的切线与直线 $x=x_0$ 及 $x$ 轴所围成区域的面积为 4，且 $f(0)=2$，求 $f(x)$ 的表达式.
]

#ezexam.question[
（本题满分 10 分）

（Ⅰ）设函数 $u(x),v(x)$ 可导，利用导数定义证明 $[u(x)v(x)]'=u'(x)v(x)+u(x)v'(x)$；

（Ⅱ）设函数 $u_1(x),u_2(x),dots,u_n(x)$ 可导，$f(x)=u_1(x)u_2(x)dots u_n(x)$，写出 $f(x)$ 的求导公式.
]

#ezexam.question[
（本题满分 11 分）设矩阵 $A=mat(a,1,0;1,a,-1;0,1,a)$，且 $A^3=O$.

（Ⅰ）求 $a$ 的值；

（Ⅱ）若矩阵 $X$ 满足 $X-X A^2-A X+A X A^2=E$，其中 $E$ 为 3 阶单位矩阵，求 $X$.
]

#ezexam.question[
（本题满分 11 分）设矩阵 $A=mat(0,2,-3;-1,3,-3;1,-2,a)$ 相似于矩阵 $B=mat(1,-2,0;0,b,0;0,3,1)$.

（Ⅰ）求 $a,b$ 的值；

（Ⅱ）求可逆矩阵 $P$，使 $P^(-1)A P$ 为对角矩阵.
]

#ezexam.question[
（本题满分 11 分）设随机变量 $X$ 的概率密度为
$ f(x)=cases(2^(-x)ln 2 & x>0,0 & x<=0). $
对 $X$ 进行独立重复的观测，直到第 2 个大于 3 的观测值出现时停止，记 $Y$ 为观测次数.

（Ⅰ）求 $Y$ 的概率分布；

（Ⅱ）求 $E Y$.
]

#ezexam.question[
（本题满分 11 分）设总体 $X$ 的概率密度为
$ f(x;theta)=cases(1/(1-theta) & theta<=x<=1,0 & "其他"), $
其中 $theta$ 为未知参数，$X_1,X_2,dots,X_n$ 为来自该总体的简单随机样本.

（Ⅰ）求 $theta$ 的矩估计量；

（Ⅱ）求 $theta$ 的最大似然估计量.
]

