#import "../template.typ": exam
#show: exam.with(year: 2015, subject: "三")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(true)


= 一、选择题：1—8小题，每小题4分，共32分.在每小题给出的四个选项中，只有一项符合题目要求，把所选项前的字母填在题后的括号内.

#ezexam.question[
设 $\{x_n\}$ 是数列，下列命题中不正确的是
#choices([若 $lim_(n->infinity)x_n=a$，则 $lim_(n->infinity)x_(2n)=lim_(n->infinity)x_(2n+1)=a$.], [若 $lim_(n->infinity)x_(2n)=lim_(n->infinity)x_(2n+1)=a$，则 $lim_(n->infinity)x_n=a$.], [若 $lim_(n->infinity)x_n=a$，则 $lim_(n->infinity)x_(3n)=lim_(n->infinity)x_(3n+1)=a$.], [若 $lim_(n->infinity)x_(3n)=lim_(n->infinity)x_(3n+1)=a$，则 $lim_(n->infinity)x_n=a$.])
#ezexam.solution(show-number: false)[
D.
]
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
#ezexam.solution(show-number: false)[
C.
]
]

#ezexam.question[
设 $D={(x,y)|x^2+y^2<=2x,x^2+y^2<=2y}$，函数 $f(x,y)$ 在 $D$ 上连续，则 $integral.double_D f(x,y)dif x dif y=$
#choices([$integral_0^(pi/4)dif theta integral_0^(2cos theta)f(r cos theta,r sin theta)r dif r+integral_(pi/4)^(pi/2)dif theta integral_0^(2sin theta)f(r cos theta,r sin theta)r dif r$.], [$integral_0^(pi/4)dif theta integral_0^(2sin theta)f(r cos theta,r sin theta)r dif r+integral_(pi/4)^(pi/2)dif theta integral_0^(2cos theta)f(r cos theta,r sin theta)r dif r$.], [$2integral_0^1 dif x integral_(1-sqrt(1-x^2))^x f(x,y)dif y$.], [$2integral_0^1 dif x integral_x^sqrt(2x-x^2)f(x,y)dif y$.])
#ezexam.solution(show-number: false)[
B.
]
]

#ezexam.question[
下列级数中发散的是
#choices([$sum_(n=1)^infinity n/3^n$.], [$sum_(n=1)^infinity 1/sqrt(n)ln(1+1/n)$.], [$sum_(n=2)^infinity (-1)^(n+1)/(ln n)$.], [$sum_(n=1)^infinity n!/n^n$.])
#ezexam.solution(show-number: false)[
C.
]
]

#ezexam.question[
设矩阵 $A=mat(1,1,1;1,2,a;1,4,a^2),b=mat(1;d;d^2)$，若集合 $Omega={1,2}$，则线性方程组 $A x=b$ 有无穷多解的充分必要条件为
#choices([$a in.not Omega,d in.not Omega$.], [$a in.not Omega,d in Omega$.], [$a in Omega,d in.not Omega$.], [$a in Omega,d in Omega$.])
#ezexam.solution(show-number: false)[
D.
]
]

#ezexam.question[
设二次型 $f(x_1,x_2,x_3)$ 在正交变换 $x=P y$ 下的标准形为 $2y_1^2+y_2^2-y_3^2$，其中 $P=(e_1,e_2,e_3)$.若 $Q=(e_1,-e_3,e_2)$，则 $f(x_1,x_2,x_3)$ 在正交变换 $x=Q y$ 下的标准形为
#choices([$2y_1^2-y_2^2+y_3^2$.], [$2y_1^2+y_2^2-y_3^2$.], [$2y_1^2-y_2^2-y_3^2$.], [$2y_1^2+y_2^2+y_3^2$.])
#ezexam.solution(show-number: false)[
A.
]
]

#ezexam.question[
若 $A,B$ 为任意两个随机事件，则
#choices([$P(A B)<=P(A)P(B)$.], [$P(A B)>=P(A)P(B)$.], [$P(A B)<=(P(A)+P(B))/2$.], [$P(A B)>=(P(A)+P(B))/2$.])
#ezexam.solution(show-number: false)[
C.
]
]

#ezexam.question[
设总体 $X tilde.op B(m,theta),X_1,X_2,dots,X_n$ 为来自该总体的简单随机样本，$overline(X)$ 为样本均值，则 $E[sum_(i=1)^n(X_i-overline(X))^2]=$
#choices([$(m-1)n theta(1-theta)$.], [$m(n-1)theta(1-theta)$.], [$(m-1)(n-1)theta(1-theta)$.], [$m n theta(1-theta)$.])
#ezexam.solution(show-number: false)[
B.
]
]

= 二、填空题：9—14小题，每小题4分，共24分.把答案填在题中横线上.

#ezexam.question[
$lim_(x->0)(ln(cos x))/x^2=$ #fillin(len: 3em)[].
#ezexam.solution(show-number: false)[
$-1/2$.
]
]

#ezexam.question[
设函数 $f(x)$ 连续，$phi(x)=integral_0^(x^2)x f(t)dif t$.若 $phi(1)=1,phi'(1)=5$，则 $f(1)=$ #fillin(len: 3em)[].
#ezexam.solution(show-number: false)[
2.
]
]

#ezexam.question[
若函数 $z=z(x,y)$ 由方程 $e^(x+2y+3z)+x y z=1$ 确定，则 $dif z|_((0,0))=$ #fillin(len: 3em)[].
#ezexam.solution(show-number: false)[
$-1/3 dif x-2/3 dif y$.
]
]

#ezexam.question[
设函数 $y=y(x)$ 是微分方程 $y''+y'-2y=0$ 的解，且在 $x=0$ 处 $y(x)$ 取得极值 3，则 $y(x)=$ #fillin(len: 3em)[].
#ezexam.solution(show-number: false)[
$2e^x+e^(-2x)$.
]
]

#ezexam.question[
设 3 阶矩阵 $A$ 的特征值为 $2,-2,1$，$B=A^2-A+E$，其中 $E$ 为 3 阶单位矩阵，则行列式 $abs(B)=$ #fillin(len: 3em)[].
#ezexam.solution(show-number: false)[
21.
]
]

#ezexam.question[
设二维随机变量 $(X,Y)$ 服从正态分布 $N(1,0;1,1;0)$，则 $P{X Y-Y<0}=$ #fillin(len: 3em)[].
#ezexam.solution(show-number: false)[
$1/2$.
]
]

= 三、解答题：15—23小题，共94分.解答应写出文字说明、证明过程或演算步骤.

#ezexam.question[
（本题满分 10 分）设函数 $f(x)=x+a ln(1+x)+b x sin x,g(x)=k x^3$，若 $f(x)$ 与 $g(x)$ 在 $x->0$ 时是等价无穷小，求 $a,b,k$ 的值.
#ezexam.solution(show-number: false)[
因为
$ lim_(x->0)f'(x)=lim_(x->0)[1+a/(1+x)+b(sin x+x cos x)]=1+a, $
$ lim_(x->0)g'(x)=lim_(x->0)3k x^2=0, $
所以当 $1+a!=0$ 时，$lim_(x->0)f(x)/g(x)=lim_(x->0)f'(x)/g'(x)=infinity$，与题设矛盾.故 $1+a=0$，即 $a=-1$.
又
$ lim_(x->0)f''(x)=lim_(x->0)[-a/(1+x)^2+b(2cos x-x sin x)]=-a+2b=1+2b, $
$ lim_(x->0)g''(x)=lim_(x->0)6k x=0, $
由题设，同理可知 $1+2b=0$，即 $b=-1/2$.由于
$ lim_(x->0)f'''(x)/g'''(x)&=lim_(x->0)(2a/(1+x)^3-b(3sin x+x cos x))/(6k) \
&=a/(3k)=-1/(3k), $
且 $lim_(x->0)f(x)/g(x)=1$，所以 $-1/(3k)=1$，即 $k=-1/3$.
]
]

#ezexam.question[
（本题满分 10 分）计算二重积分 $integral.double_D x(x+y)dif x dif y$，其中 $D={(x,y)|x^2+y^2<=2,y>=x^2}$.
#ezexam.solution(show-number: false)[
因为区域 $D$ 关于 $y$ 轴对称，所以 $integral.double_D x y dif x dif y=0$.
$ integral.double_D x(x+y)dif x dif y&=integral.double_D x^2 dif x dif y \
&=2integral_0^1 dif x integral_(x^2)^sqrt(2-x^2)x^2 dif y \
&=2integral_0^1 x^2(sqrt(2-x^2)-x^2)dif x \
&=2integral_0^1 x^2 sqrt(2-x^2)dif x-2integral_0^1 x^4 dif x. $
令 $x=sqrt(2)sin t$，则
$ integral_0^1 x^2 sqrt(2-x^2)dif x&=integral_0^(pi/4)4sin^2 t cos^2 t dif t \
&=1/2 integral_0^(pi/4)(1-cos 4t)dif t=pi/8, $
又 $integral_0^1 x^4 dif x=1/5$，所以
$ integral.double_D x(x+y)dif x dif y=pi/4-2/5. $
]
]

#ezexam.question[
（本题满分 10 分）为了实现利润最大化，厂商需要对某商品确定其定价模型.设 $Q$ 为该商品的需求量，$p$ 为价格，$M C$ 为边际成本，$eta$ 为需求弹性（$eta>0$）.

（Ⅰ）证明定价模型为 $p=(M C)/(1-1/eta)$；

（Ⅱ）若该商品的成本函数为 $C(Q)=1600+Q^2$，需求函数为 $Q=40-p$，试由（Ⅰ）中的定价模型确定此商品的价格.
#ezexam.solution(show-number: false)[
（Ⅰ）由收益 $R=p Q$，得边际收益
$ M R=dif R/dif Q=p+Q dif p/dif Q=p(1-1/eta). $
欲使利润最大，应有 $M R=M C$，即 $p(1-1/eta)=M C$，所以定价模型为
$ p=(M C)/(1-1/eta). $
（Ⅱ）由题设知 $M C=2Q,eta=-p/Q dif Q/dif p=p/(40-p)$.
由（Ⅰ）有 $p=(2(40-p))/(1-(40-p)/p)$，解得 $p=30$.
所以此商品的价格为 $p=30$.
]
]

#ezexam.question[
（本题满分 10 分）设函数 $f(x)$ 在定义域 $I$ 上的导数大于零.若对任意的 $x_0 in I$，曲线 $y=f(x)$ 在点 $(x_0,f(x_0))$ 处的切线与直线 $x=x_0$ 及 $x$ 轴所围成区域的面积为 4，且 $f(0)=2$，求 $f(x)$ 的表达式.
#ezexam.solution(show-number: false)[
曲线 $y=f(x)$ 在点 $(x_0,f(x_0))$ 处的切线方程为
$ y=f'(x_0)(x-x_0)+f(x_0), $
该切线与 $x$ 轴的交点为 $(x_0-f(x_0)/f'(x_0),0)$.
根据题设条件可知 $1/2 abs(f(x_0))/f'(x_0) dot abs(f(x_0))=4$，即 $y=f(x)$ 满足方程 $y'=1/8 y^2$.解得 $y=-8/(8C+x)$.
因为 $f(0)=2$，所以 $C=-1/2$.故 $f(x)=8/(4-x),x in I$.
]
]

#ezexam.question[
（本题满分 10 分）

（Ⅰ）设函数 $u(x),v(x)$ 可导，利用导数定义证明 $[u(x)v(x)]'=u'(x)v(x)+u(x)v'(x)$；

（Ⅱ）设函数 $u_1(x),u_2(x),dots,u_n(x)$ 可导，$f(x)=u_1(x)u_2(x)dots u_n(x)$，写出 $f(x)$ 的求导公式.
#ezexam.solution(show-number: false)[
（Ⅰ）因为函数 $u(x),v(x)$ 可导，所以
$ lim_(Delta x->0)(u(x+Delta x)-u(x))/(Delta x)=u'(x), $
$ lim_(Delta x->0)(v(x+Delta x)-v(x))/(Delta x)=v'(x), $
且 $lim_(Delta x->0)v(x+Delta x)=v(x)$.从而
$ [u(x)v(x)]'&=lim_(Delta x->0)(u(x+Delta x)v(x+Delta x)-u(x)v(x))/(Delta x) \
&=lim_(Delta x->0)[(u(x+Delta x)-u(x))/(Delta x)v(x+Delta x) \
&quad+u(x)(v(x+Delta x)-v(x))/(Delta x)] \
&=lim_(Delta x->0)(u(x+Delta x)-u(x))/(Delta x) dot lim_(Delta x->0)v(x+Delta x) \
&quad+u(x)lim_(Delta x->0)(v(x+Delta x)-v(x))/(Delta x) \
&=u'(x)v(x)+u(x)v'(x). $
（Ⅱ）$f'(x)=u'_1(x)u_2(x)dots u_n(x)+u_1(x)u'_2(x)dots u_n(x)+dots+u_1(x)u_2(x)dots u'_n(x)$.
]
]

#ezexam.question[
（本题满分 11 分）设矩阵 $A=mat(a,1,0;1,a,-1;0,1,a)$，且 $A^3=O$.

（Ⅰ）求 $a$ 的值；

（Ⅱ）若矩阵 $X$ 满足 $X-X A^2-A X+A X A^2=E$，其中 $E$ 为 3 阶单位矩阵，求 $X$.
#ezexam.solution(show-number: false)[
（Ⅰ）由于 $A^3=O$，所以 $abs(A)=mat(delim: "|",a,1,0;1,a,-1;0,1,a)=a^3=0$，于是 $a=0$.
（Ⅱ）由于 $X-X A^2-A X+A X A^2=E$，所以 $(E-A)X(E-A^2)=E$.
由（Ⅰ）知 $E-A=mat(1,-1,0;-1,1,1;0,-1,1),E-A^2=mat(0,0,1;0,1,0;-1,0,2)$.
因为 $E-A,E-A^2$ 均可逆，所以
$ X&=(E-A)^(-1)(E-A^2)^(-1) \
&=mat(2,1,-1;1,1,-1;1,1,0)mat(2,0,-1;0,1,0;1,0,0) \
&=mat(3,1,-2;1,1,-1;2,1,-1). $
]
]

#ezexam.question[
（本题满分 11 分）设矩阵 $A=mat(0,2,-3;-1,3,-3;1,-2,a)$ 相似于矩阵 $B=mat(1,-2,0;0,b,0;0,3,1)$.

（Ⅰ）求 $a,b$ 的值；

（Ⅱ）求可逆矩阵 $P$，使 $P^(-1)A P$ 为对角矩阵.
#ezexam.solution(show-number: false)[
（Ⅰ）由于矩阵 $A$ 与矩阵 $B$ 相似，所以 $upright("tr")(A)=upright("tr")(B),abs(A)=abs(B)$.
于是 $3+a=2+b,2a-3=b$，解得 $a=4,b=5$.
（Ⅱ）由（Ⅰ）知 $A=mat(0,2,-3;-1,3,-3;1,-2,4)$.
由于矩阵 $A$ 与矩阵 $B$ 相似，所以
$ abs(lambda E-A)=abs(lambda E-B)=(lambda-1)^2(lambda-5). $
故 $A$ 的特征值为 $lambda_1=lambda_2=1,lambda_3=5$.
当 $lambda_1=lambda_2=1$ 时，解方程组 $(E-A)x=0$，得线性无关的特征向量 $xi_1=mat(2;1;0),xi_2=mat(-3;0;1)$.
当 $lambda_3=5$ 时，解方程组 $(5E-A)x=0$，得特征向量 $xi_3=mat(-1;-1;1)$.
令 $P=(xi_1,xi_2,xi_3)=mat(2,-3,-1;1,0,-1;0,1,1)$，则
$ P^(-1)A P=mat(1,0,0;0,1,0;0,0,5), $
故 $P$ 为所求可逆矩阵.
]
]

#ezexam.question[
（本题满分 11 分）设随机变量 $X$ 的概率密度为
$ f(x)=cases(2^(-x)ln 2 & x>0,0 & x<=0). $
对 $X$ 进行独立重复的观测，直到第 2 个大于 3 的观测值出现时停止，记 $Y$ 为观测次数.

（Ⅰ）求 $Y$ 的概率分布；

（Ⅱ）求 $E Y$.
#ezexam.solution(show-number: false)[
（Ⅰ）每次观测中，观测值大于 3 的概率为
$ P{X>3}=integral_3^infinity f(x)dif x=integral_3^infinity 2^(-x)ln 2dif x=1/8, $
故 $Y$ 的概率分布为
$ P{Y=k}=(k-1)(7/8)^(k-2)(1/8)^2,quad k=2,3,dots. $
（Ⅱ）
$ E Y&=sum_(k=2)^infinity k(k-1)(7/8)^(k-2)(1/8)^2 \
&=(1/8)^2 (sum_(k=2)^infinity x^k)''|_(x=7/8) \
&=(1/8)^2 2/(1-x)^3|_(x=7/8) \
&=16. $
]
]

#ezexam.question[
（本题满分 11 分）设总体 $X$ 的概率密度为
$ f(x;theta)=cases(1/(1-theta) & theta<=x<=1,0 & "其他"), $
其中 $theta$ 为未知参数，$X_1,X_2,dots,X_n$ 为来自该总体的简单随机样本.

（Ⅰ）求 $theta$ 的矩估计量；

（Ⅱ）求 $theta$ 的最大似然估计量.
#ezexam.solution(show-number: false)[
（Ⅰ）由于总体 $X$ 服从区间 $[theta,1]$ 上的均匀分布，所以 $E X=(1+theta)/2$.
令 $(1+theta)/2=overline(X)$，其中 $overline(X)$ 为样本均值，得 $theta$ 的矩估计量 $hat(theta)=2overline(X)-1$.
（Ⅱ）记 $x_1,x_2,dots,x_n$ 为样本 $X_1,X_2,dots,X_n$ 的观测值，则似然函数为
$ L(theta)&=product_(i=1)^n f(x_i;theta) \
&=cases(1/(1-theta)^n & theta<=x_i<=1 (i=1,2,dots,n),0 & "其他") \
&=cases(1/(1-theta)^n & theta<=min{x_1,x_2,dots,x_n},0 & "其他"). $
由此可知，当 $theta=min{x_1,x_2,dots,x_n}$ 时，$L(theta)$ 达到最大，故 $theta$ 的最大似然估计量
$ hat(theta)=min{X_1,X_2,dots,X_n}. $
]
]

