#import "../template.typ": exam
#show: exam.with(year: 2015, subject: "一")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(true)


= 一、选择题：1—8小题，每小题4分，共32分.在每小题给出的四个选项中，只有一项符合题目要求，把所选项前的字母填在题后的括号内.

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
设 $y=1/2 e^(2x)+(x-1/3)e^x$ 是二阶常系数非齐次线性微分方程 $y''+a y'+b y=c e^x$ 的一个特解，则
#choices([$a=-3,b=2,c=-1$.], [$a=3,b=2,c=-1$.], [$a=-3,b=2,c=1$.], [$a=3,b=2,c=1$.])
#ezexam.solution(show-number: false)[
A.
]
]

#ezexam.question[
若级数 $sum_(n=1)^infinity a_n$ 条件收敛，则 $x=sqrt(3)$ 与 $x=3$ 依次为幂级数 $sum_(n=1)^infinity n a_n(x-1)^n$ 的
#choices([收敛点，收敛点.], [收敛点，发散点.], [发散点，收敛点.], [发散点，发散点.])
#ezexam.solution(show-number: false)[
B.
]
]

#ezexam.question[
设 $D$ 是第一象限中由曲线 $2x y=1,4x y=1$ 与直线 $y=x,y=sqrt(3)x$ 围成的平面区域，函数 $f(x,y)$ 在 $D$ 上连续，则 $integral.double_D f(x,y)dif x dif y=$
#choices([$integral_(pi/4)^(pi/3)dif theta integral_(1/(2sin 2theta))^(1/(sin 2theta)) f(r cos theta,r sin theta)dif r$.], [$integral_(pi/4)^(pi/3)dif theta integral_(1/sqrt(2sin 2theta))^(1/sqrt(sin 2theta)) r f(r cos theta,r sin theta)dif r$.], [$integral_(pi/4)^(pi/3)dif theta integral_(1/(2sin 2theta))^(1/(sin 2theta)) r f(r cos theta,r sin theta)dif r$.], [$integral_(pi/4)^(pi/3)dif theta integral_(1/sqrt(2sin 2theta))^(1/sqrt(sin 2theta)) f(r cos theta,r sin theta)dif r$.])
#ezexam.solution(show-number: false)[
B.
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
设随机变量 $X,Y$ 不相关，且 $E X=2,E Y=1,D X=3$，则 $E[X(X+Y-2)]=$
#choices([$-3$.], [$3$.], [$-5$.], [$5$.])
#ezexam.solution(show-number: false)[
D.
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
$integral_(-pi/2)^(pi/2)((sin x)/(1+cos x)+abs(x))dif x=$ #fillin(len: 3em)[].
#ezexam.solution(show-number: false)[
$pi^2/4$.
]
]

#ezexam.question[
若函数 $z=z(x,y)$ 由方程 $e^z+x y z+x+cos x=2$ 确定，则 $dif z|_((0,1))=$ #fillin(len: 3em)[].
#ezexam.solution(show-number: false)[
$-dif x$.
]
]

#ezexam.question[
设 $Omega$ 是由平面 $x+y+z=1$ 与三个坐标平面所围成的空间区域，则 $integral.triple_Omega(x+2y+3z)dif x dif y dif z=$ #fillin(len: 3em)[].
#ezexam.solution(show-number: false)[
$1/4$.
]
]

#ezexam.question[
$n$ 阶行列式
$ mat(delim: "|",2,0,dots,0,2;-1,2,dots,0,2;dots.v,dots.v,,dots.v,dots.v;0,0,dots,2,2;0,0,dots,-1,2)= $ #fillin(len: 3em)[].
#ezexam.solution(show-number: false)[
$2^(n+1)-2$.
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
由于 $ln(1+x)=x-x^2/2+x^3/3+o(x^3),sin x=x-x^3/6+o(x^3)$，所以
$ f(x)&=x+a ln(1+x)+b x sin x \
&=x+a(x-x^2/2+x^3/3)+b x^2+o(x^3) \
&=(1+a)x+(b-a/2)x^2+a/3 x^3+o(x^3). $
因为 $f(x)$ 与 $g(x)=k x^3$ 在 $x->0$ 时等价，所以
$ cases(1+a=0,b-a/2=0,k=a/3). $
解得 $a=-1,b=-1/2,k=-1/3$.
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
（本题满分 10 分）已知函数 $f(x,y)=x+y+x y$，曲线 $C:x^2+y^2+x y=3$，求 $f(x,y)$ 在曲线 $C$ 上的最大方向导数.
#ezexam.solution(show-number: false)[
因为函数在每一点沿梯度方向的方向导数最大，且最大方向导数为该点梯度向量的长度，而
$ upright("grad")f(x,y)&=(1+y,1+x), \
abs(upright("grad")f(x,y))&=sqrt((1+x)^2+(1+y)^2), $
因此，问题转化为求 $sqrt((1+x)^2+(1+y)^2)$ 在条件 $x^2+y^2+x y=3$ 下的最大值.
令 $F(x,y,lambda)=(1+x)^2+(1+y)^2+lambda(x^2+y^2+x y-3)$，由
$ cases(F'_x=2(1+x)+lambda(2x+y)=0,F'_y=2(1+y)+lambda(2y+x)=0,F'_lambda=x^2+y^2+x y-3=0) $
解得 $cases(x=1,y=1),cases(x=-1,y=-1),cases(x=2,y=-1),cases(x=-1,y=2)$.
又 $abs(upright("grad")f(1,1))=2sqrt(2),abs(upright("grad")f(-1,-1))=0$，$abs(upright("grad")f(2,-1))=abs(upright("grad")f(-1,2))=3$，所以 $f(x,y)$ 在曲线 $C$ 上的最大方向导数为 3.
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
（本题满分 10 分）已知曲线 $L$ 的方程为 $cases(z=sqrt(2-x^2-y^2),z=x)$，起点为 $A(0,sqrt(2),0)$，终点为 $B(0,-sqrt(2),0)$，计算曲线积分
$ I=integral_L(y+z)dif x+(z^2-x^2+y)dif y+x^2 y^2 dif z. $
#ezexam.solution(show-number: false)[
设 $L_1$ 是从点 $B$ 到点 $A$ 的直线段，$Sigma$ 为平面 $z=x$ 上由 $L$ 与 $L_1$ 围成的半圆面下侧，其法向量的方向余弦为 $(1/sqrt(2),0,-1/sqrt(2))$.
由 Stokes 公式
$ integral.cont_(L+L_1)(y+z)dif x+(z^2-x^2+y)dif y+x^2 y^2 dif z \
&=integral.double_Sigma mat(delim: "|",1/sqrt(2),0,-1/sqrt(2);partial/partial x,partial/partial y,partial/partial z;y+z,z^2-x^2+y,x^2 y^2)dif S \
&=1/sqrt(2)integral.double_Sigma(2x^2 y+1)dif S. $
由于曲面 $Sigma$ 关于 $x O z$ 平面对称，所以 $integral.double_Sigma 2x^2 y dif S=0$，故
$ integral.cont_(L+L_1)(y+z)dif x+(z^2-x^2+y)dif y+x^2 y^2 dif z \
&=1/sqrt(2)integral.double_Sigma dif S=sqrt(2)/2 pi. $
又 $L_1$ 的参数方程为 $x=0,y=y,z=0$（$y$ 从 $-sqrt(2)$ 到 $sqrt(2)$），所以
$ integral_(L_1)(y+z)dif x+(z^2-x^2+y)dif y+x^2 y^2 dif z \
&=integral_(-sqrt(2))^sqrt(2)y dif y=0. $
因此 $I=sqrt(2)/2 pi$.
]
]

#ezexam.question[
（本题满分 11 分）设向量组 $alpha_1,alpha_2,alpha_3$ 为 $bold(upright(R))^3$ 的一个基，$beta_1=2alpha_1+2k alpha_3,beta_2=2alpha_2,beta_3=alpha_1+(k+1)alpha_3$.

（Ⅰ）证明向量组 $beta_1,beta_2,beta_3$ 为 $bold(upright(R))^3$ 的一个基；

（Ⅱ）当 $k$ 为何值时，存在非零向量 $xi$ 在基 $alpha_1,alpha_2,alpha_3$ 与基 $beta_1,beta_2,beta_3$ 下的坐标相同，并求所有的 $xi$.
#ezexam.solution(show-number: false)[
（Ⅰ）由于
$ (beta_1,beta_2,beta_3)&=(2alpha_1+2k alpha_3,2alpha_2,alpha_1+(k+1)alpha_3) \
&=(alpha_1,alpha_2,alpha_3)P, $
其中 $P=mat(2,0,1;0,2,0;2k,0,k+1)$，且 $abs(P)=4!=0$，所以 $beta_1,beta_2,beta_3$ 为 $bold(upright(R))^3$ 的一个基.
（Ⅱ）设 $xi$ 在基 $alpha_1,alpha_2,alpha_3$ 与基 $beta_1,beta_2,beta_3$ 下的坐标向量为 $x$，则
$ xi=(alpha_1,alpha_2,alpha_3)x=(beta_1,beta_2,beta_3)x=(alpha_1,alpha_2,alpha_3)P x, $
所以 $(P-E)x=0$.对 $P-E$ 施以初等行变换
$ P-E=mat(1,0,1;0,1,0;2k,0,k) arrow.r mat(1,0,1;0,1,0;0,0,-k), $
所以当 $k=0$ 时，方程组 $(P-E)x=0$ 有非零解，且所有非零解为 $x=c mat(1;0;-1)$，$c$ 为任意非零常数.
故在两个基下坐标相同的所有非零向量为
$ xi=(alpha_1,alpha_2,alpha_3)mat(c;0;-c)=c(alpha_1-alpha_3), $
$c$ 为任意非零常数.
]
]

#ezexam.question[
（本题满分 11 分）设矩阵 $A=mat(0,2,-3;-1,3,-3;1,-2,a)$ 相似于矩阵 $B=mat(1,-2,0;0,b,0;0,3,1)$.

（Ⅰ）求 $a,b$ 的值；

（Ⅱ）求可逆矩阵 $P$，使 $P^(-1)A P$ 为对角矩阵.
#ezexam.solution(show-number: false)[
（Ⅰ）由于矩阵 $A$ 与矩阵 $B$ 相似，所以 $upright("tr")(A)=upright("tr")(B),abs(A)=abs(B)$.
于是 $3+a=2+b,2a-3=b$，解得 $a=4,b=5$.
（Ⅱ）由（Ⅰ）知 $A=mat(0,2,-3;-1,3,-3;1,-2,4),B=mat(1,-2,0;0,5,0;0,3,1)$.
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

