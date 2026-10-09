#import "../template.typ": exam
#show: exam.with(year: 2009, subject: "三", title: "2009年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(true)


= 一、选择题：1—8小题，每小题4分，共32分. 在每小题给出的四个选项中，只有一项符合题目要求，把所选项前的字母填在题后的括号内.

#ezexam.question[
函数 $f(x)=(x-x^3)/(sin pi x)$ 的可去间断点的个数为
#choices([1.],[2.],[3.],[无穷多个.])
#ezexam.solution(show-number: false)[
C.
]
]

#ezexam.question[
当 $x->0$ 时，$f(x)=x-sin(a x)$ 与 $g(x)=x^2 ln(1-b x)$ 是等价无穷小，则
#choices([$a=1,b=-1/6$.],[$a=1,b=1/6$.],[$a=-1,b=-1/6$.],[$a=-1,b=1/6$.])
#ezexam.solution(show-number: false)[
A.
]
]

#ezexam.question[
使不等式 $integral_1^x (sin t)/t dif t>ln x$ 成立的 $x$ 的范围是
#choices([$(0,1)$.],[$(1,pi/2)$.],[$(pi/2,pi)$.],[$(pi,+infinity)$.])
#ezexam.solution(show-number: false)[
A.
]
]

#ezexam.question[
设函数 $y=f(x)$ 在区间 $[-1,3]$ 上的图形如下，则函数 $F(x)=integral_0^x f(t)dif t$ 的图形为
#import "@preview/cetz:0.3.4": canvas, draw
#canvas({
 import draw: *
 line((-1.3,0),(3.4,0),mark:(end:">"));line((0,-1.5),(0,2.7),mark:(end:">"))
 line((-1,1),(0,1));circle((0,1),radius:.04,fill:white)
 bezier((0,-1),(1,0),(.4,-.7),(.8,-.3));bezier((1,0),(2,2),(1.3,1.1),(1.6,1.7))
 line((2,0),(3,0));circle((2,0),radius:.04,fill:white)
 line((-1,0),(-1,1),stroke:(dash:"dashed"));line((2,0),(2,2),stroke:(dash:"dashed"))
 for i in (-1,1,2,3){content((i,-.15),[#i])}
 content((-.2,-.2),$O$);content((-.15,1),[1]);content((-.15,2),[2]);content((-.2,-1),[−1]);content((3.4,-.15),$x$);content((-.2,2.7),$f(x)$)
})
#let graph-option(k) = canvas({
 import draw: *
 scale(.7)
 line((-1.3,0),(3.4,0),mark:(end:">"));line((0,-1.3),(0,1.8),mark:(end:">"))
 let h=if k==2 {1} else {0}
 line((-1,if k==0 {1} else if k==2 {0} else {-1}),(0,h))
 bezier((0,h),(1,h - 0.75),(.45,h - 0.45),(.75,h - 0.85))
 bezier((1,h - 0.75),(2,if k==1 {.5} else if k==2 {1.5} else {.5}),(1.35,h - 0.7),(1.7,h + 0.05))
 if k==1 {line((2,0),(3,0));line((2,0),(2,.5),stroke:(dash:"dashed"))} else {line((2,if k==2 {1.5} else {.5}),(3,if k==2 {1.5} else {.5}))}
 for i in (-1,1,2,3){content((i,-.12),[#i])}
 content((-.15,-.15),$O$);content((3.4,-.1),$x$);content((-.2,1.8),$F(x)$)
})
#choices(columns: 2, box(graph-option(0)), box(graph-option(1)), box(graph-option(2)), box(graph-option(3)))
#ezexam.solution(show-number: false)[
D.
]
]

#ezexam.question[
设 $A,B$ 均为2阶矩阵，$A^*,B^*$ 分别为 $A,B$ 的伴随矩阵.若 $|A|=2,|B|=3$，则分块矩阵 $mat(O,A;B,O)$ 的伴随矩阵为
#choices([$mat(O,3B^*;2A^*,O)$.],[$mat(O,2B^*;3A^*,O)$.],[$mat(O,3A^*;2B^*,O)$.],[$mat(O,2A^*;3B^*,O)$.])
#ezexam.solution(show-number: false)[
B.
]
]

#ezexam.question[
设 $A,P$ 均为3阶矩阵，$P^T$ 为 $P$ 的转置矩阵，且 $P^T A P=mat(1,0,0;0,1,0;0,0,2)$.若 $P=(alpha_1,alpha_2,alpha_3),Q=(alpha_1+alpha_2,alpha_2,alpha_3)$，则 $Q^T A Q$ 为
#choices([$mat(2,1,0;1,1,0;0,0,2)$.],[$mat(1,1,0;1,2,0;0,0,2)$.],[$mat(2,0,0;0,1,0;0,0,2)$.],[$mat(1,0,0;0,2,0;0,0,2)$.])
#ezexam.solution(show-number: false)[
A.
]
]

#ezexam.question[
设事件 $A$ 与事件 $B$ 互不相容，则
#choices([$P(overline(A) overline(B))=0$.],[$P(A B)=P(A)P(B)$.],[$P(A)=1-P(B)$.],[$P(overline(A) union overline(B))=1$.])
#ezexam.solution(show-number: false)[
D.
]
]

#ezexam.question[
设随机变量 $X$ 与 $Y$ 相互独立，且 $X$ 服从标准正态分布 $N(0,1)$，$Y$ 的概率分布为 $P{Y=0}=P{Y=1}=1/2$.记 $F_Z(z)$ 为随机变量 $Z=X Y$ 的分布函数，则函数 $F_Z(z)$ 的间断点个数为
#choices([0.],[1.],[2.],[3.])
#ezexam.solution(show-number: false)[
B.
]
]

= 二、填空题：9—14小题，每小题4分，共24分. 把答案填在题中横线上.

#ezexam.question[
$lim_(x->0)(e-e^(cos x))/(root(3,1+x^2)-1)=$ #fillin(len: 1.98438em)[].
#ezexam.solution(show-number: false)[
$(3e)/2$.
]
]

#ezexam.question[
设 $z=(x+e^y)^x$，则 $(partial z)/(partial x)|_((1,0))=$ #fillin(len: 1.98438em)[].
#ezexam.solution(show-number: false)[
$1+2ln 2$.
]
]

#ezexam.question[
幂级数 $sum_(n=1)^infinity(e^n-(-1)^n)/n^2 x^n$ 的收敛半径为 #fillin(len: 1.98438em)[].
#ezexam.solution(show-number: false)[
$e^(-1)$.
]
]

#ezexam.question[
设某产品的需求函数为 $Q=Q(p)$，其对价格 $p$ 的弹性 $epsilon_p=0.2$，则当需求量为10000件时，价格增加1元会使产品收益增加 #fillin(len: 1.98438em)[] 元.
#ezexam.solution(show-number: false)[
8000.
]
]

#ezexam.question[
设 $alpha=(1,1,1)^T,beta=(1,0,k)^T$.若矩阵 $alpha beta^T$ 相似于 $mat(3,0,0;0,0,0;0,0,0)$，则 $k=$ #fillin(len: 1.98438em)[].
#ezexam.solution(show-number: false)[
2.
]
]

#ezexam.question[
设 $X_1,X_2,dots,X_m$ 为来自二项分布总体 $B(n,p)$ 的简单随机样本，$overline(X)$ 和 $S^2$ 分别为样本均值和样本方差.记统计量 $T=overline(X)-S^2$，则 $E T=$ #fillin(len: 1.98438em)[].
#ezexam.solution(show-number: false)[
$n p^2$.
]
]

= 三、解答题：15—23小题，共94分. 解答应写出文字说明、证明过程或演算步骤.

#ezexam.question[
（本题满分9分）求二元函数 $f(x,y)=x^2(2+y^2)+y ln y$ 的极值.
#ezexam.solution(show-number: false)[
解　$f'_x(x,y)=2x(2+y^2),f'_y(x,y)=2x^2 y+ln y+1$.
令 $cases(f'_x(x,y)=0,f'_y(x,y)=0)$，解得唯一驻点 $(0,1/e)$.
由于
$ A=f''_(x x)(0,1/e)=2(2+y^2)|_((0,1/e))=2(2+1/e^2), $
$ B=f''_(x y)(0,1/e)=4x y|_((0,1/e))=0, $
$ C=f''_(y y)(0,1/e)=(2x^2+1/y)|_((0,1/e))=e, $
所以 $B^2-A C=-2e(2+1/e^2)<0$，且 $A>0$，从而 $f(0,1/e)$ 是 $f(x,y)$ 的极小值，极小值为 $f(0,1/e)=-1/e$.
]
]

#ezexam.question[
（本题满分10分）计算不定积分 $integral ln(1+sqrt((1+x)/x))dif x(x>0)$.
#ezexam.solution(show-number: false)[
解　设 $sqrt((1+x)/x)=t$，则 $x=1/(t^2-1)$，故有
$ integral ln(1+sqrt((1+x)/x))dif x \
=integral ln(1+t)dif(1/(t^2-1)) \
=(ln(1+t))/(t^2-1)-integral 1/(t^2-1) dot 1/(t+1)dif t, $
而
$ integral 1/((t^2-1)(t+1))dif t \
=1/4 integral[1/(t-1)-1/(t+1)-2/(t+1)^2]dif t \
=1/4 ln(t-1)-1/4 ln(t+1)+1/(2(t+1))-C, $
所以
$ integral ln(1+sqrt((1+x)/x))dif x \
=(ln(1+t))/(t^2-1)+1/4 ln((t+1)/(t-1))-1/(2(t+1))+C \
=x ln(1+sqrt((1+x)/x))+1/2 ln(sqrt(1+x)+sqrt(x)) \
-1/2 sqrt(x)/(sqrt(1+x)+sqrt(x))+C. $
]
]

#ezexam.question[
（本题满分10分）计算二重积分 $integral.double_D(x-y)dif x dif y$，其中 $D={(x,y)|(x-1)^2+(y-1)^2<=2,y>=x}$.
#ezexam.solution(show-number: false)[
解法1　如下图，区域 $D$ 的极坐标表示为 $0<=r<=2(sin theta+cos theta),pi/4<=theta<=3pi/4$.
#import "@preview/cetz:0.3.4": canvas, draw
#let region-diagram(split: false) = canvas({
 import draw: *
 let r=calc.sqrt(2)
 circle((1,1),radius:r)
 line((-.8,0),(3,0),mark:(end:">"));line((0,-.7),(0,3),mark:(end:">"));line((-.1,-.1),(2.7,2.7))
 for x in range(-4,21).map(i=>i/10) {
  let a=1-calc.sqrt(2-calc.pow(x - 1,2));let b=1+calc.sqrt(2-calc.pow(x - 1,2))
  line((x,calc.max(x,a)),(x,b),stroke:.3pt)
 }
 content((3,-.15),$x$);content((-.15,3),$y$);content((-.15,-.15),$O$)
 if split {content((-.2,1),$D_1$);content((.7,1.7),$D_2$);content((2.2,2.1),[(2,2)]);content((-.5,-.2),$1-sqrt(2)$)} else {content((.5,1.4),$D$)}
})
#region-diagram()
$ integral.double_D(x-y)dif x dif y \
=integral_(pi/4)^(3pi/4)dif theta integral_0^(2(sin theta+cos theta))r^2(cos theta-sin theta)dif r \
=8/3 integral_(pi/4)^(3pi/4)(sin theta+cos theta)^3 dif(sin theta+cos theta) \
=2/3(sin theta+cos theta)^4|_(pi/4)^(3pi/4)=-8/3. $

解法2　#parbreak()#region-diagram(split:true)
将区域 $D$ 分成 $D_1,D_2$ 两部分（如下图），其中
$ D_1={(x,y)|1-sqrt(2-(x-1)^2)<=y<=1+sqrt(2-(x-1)^2),1-sqrt(2)<=x<=0}, $
$ D_2={(x,y)|x<=y<=1+sqrt(2-(x-1)^2),0<=x<=2}. $
由二重积分的性质知
$ integral.double_D(x-y)dif x dif y=integral.double_(D_1)(x-y)dif x dif y+integral.double_(D_2)(x-y)dif x dif y, $
而
$ integral.double_(D_1)(x-y)dif x dif y \
=integral_(1-sqrt(2))^0 dif x integral_(1-sqrt(2-(x-1)^2))^(1+sqrt(2-(x-1)^2))(x-y)dif y \
=integral_(1-sqrt(2))^0 2(x-1)sqrt(2-(x-1)^2)dif x \
=-2/3[sqrt(2-(x-1)^2)]^3|_(1-sqrt(2))^0=-2/3, $
$ integral.double_(D_2)(x-y)dif x dif y \
=integral_0^2 dif x integral_x^(1+sqrt(2-(x-1)^2))(x-y)dif y \
=-1/2 integral_0^2[2-2(x-1)sqrt(2-(x-1)^2)]dif x \
=-1/2[2x+2/3(sqrt(2-(x-1)^2))^3]|_0^2=-2, $
所以 $integral.double_D(x-y)dif x dif y=-2/3-2=-8/3$.
]
]

#ezexam.question[
（本题满分11分）

（Ⅰ）证明拉格朗日中值定理：若函数 $f(x)$ 在 $[a,b]$ 上连续，在 $(a,b)$ 内可导，则存在 $xi in(a,b)$，使得 $f(b)-f(a)=f'(xi)(b-a)$.

（Ⅱ）证明：若函数 $f(x)$ 在 $x=0$ 处连续，在 $(0,delta)(delta>0)$ 内可导，且 $lim_(x->0^+)f'(x)=A$，则 $f'_+(0)$ 存在，且 $f'_+(0)=A$.
#ezexam.solution(show-number: false)[
证　（Ⅰ）取 $F(x)=f(x)-(f(b)-f(a))/(b-a)(x-a)$，由题意知 $F(x)$ 在 $[a,b]$ 上连续，在 $(a,b)$ 内可导，且
$ F(a)=f(a)-(f(b)-f(a))/(b-a)(a-a)=f(a), $
$ F(b)=f(b)-(f(b)-f(a))/(b-a)(b-a)=f(a). $
根据罗尔定理，存在 $xi in(a,b)$，使得
$ F'(xi)=f'(xi)-(f(b)-f(a))/(b-a)=0, $
即 $f(b)-f(a)=f'(xi)(b-a)$.

（Ⅱ）对于任意的 $t in(0,delta)$，函数 $f(x)$ 在 $[0,t]$ 上连续，在 $(0,t)$ 内可导，由右导数定义及拉格朗日中值定理可得
$ f'_+(0)=lim_(t->0^+)(f(t)-f(0))/(t-0) \
=lim_(t->0^+)(f'(xi)t)/t=lim_(t->0^+)f'(xi), $
其中 $xi in(0,t)$.
由于 $lim_(t->0^+)f'(t)=A$，且当 $t->0^+$ 时，$xi->0^+$，所以 $lim_(t->0^+)f'(xi)=A$，故 $f'_+(0)$ 存在，且 $f'_+(0)=A$.
]
]

#ezexam.question[
（本题满分10分）设曲线 $y=f(x)$，其中 $f(x)$ 是可导函数，且 $f(x)>0$.已知曲线 $y=f(x)$ 与直线 $y=0,x=1$ 及 $x=t(t>1)$ 所围成的曲边梯形绕 $x$ 轴旋转一周所得的立体体积值是该曲边梯形面积值的 $pi t$ 倍，求该曲线的方程.
#ezexam.solution(show-number: false)[
解法1　由题意知 $pi integral_1^t f^2(x)dif x=pi t integral_1^t f(x)dif x$，两边对 $t$ 求导得
$ f^2(t)=integral_1^t f(x)dif x+t f(t), $
代入 $t=1$，得 $f(1)=1$ 或 $f(1)=0$（舍去）.
再求导，得 $2f(t)f'(t)=2f(t)+t f'(t)$.
记 $f(t)=y$，则 $(dif t)/(dif y)+1/(2y)t=1$，因此
$ t=e^(-integral 1/(2y)dif y)(integral e^(integral 1/(2y)dif y)dif y+C) \
=y^(-1/2)(integral sqrt(y)dif y+C) \
=y^(-1/2)(2/3 y^(3/2)+C)=C/sqrt(y)+2/3 y. $
代入 $t=1,y=1$ 得 $C=1/3$，从而 $t=2/3 y+1/(3sqrt(y))$.
故所求曲线方程为 $x=2/3 y+1/(3sqrt(y))$.

解法2　同解法1，得 $2f(t)f'(t)=2f(t)+t f'(t),f(1)=1$，整理得 $(dif y)/(dif t)=(2y)/(2y-t)$.
令 $y/t=u$，则 $(dif y)/(dif t)=u+t(dif u)/(dif t)$，原方程变成
$ t(dif u)/(dif t)=(3u-2u^2)/(2u-1), $
分离变量得 $(2u-1)/(u(3-2u))dif u=1/t dif t$，即 $1/3(-1/u+4/(3-2u))dif u=(dif t)/t$.
积分得 $-1/3 ln[u(3-2u)^2]=ln(C t)$，即 $u^(-1/3)(3-2u)^(-2/3)=C t$.
代入 $t=1,u=1$ 得 $C=1$，所以 $u(3-2u)^2=1/t^3$.
代入 $u=y/t$，化简得 $y(3t-2y)^2=1$，即 $t=1/(3sqrt(y))+2/3 y$，故所求曲线方程为 $x=2/3 y+1/(3sqrt(y))$.
]
]

#ezexam.question[
（本题满分11分）设 $A=mat(1,-1,-1;-1,1,1;0,-4,-2),xi_1=mat(-1;1;-2)$.

（Ⅰ）求满足 $A xi_2=xi_1,A^2 xi_3=xi_1$ 的所有向量 $xi_2,xi_3$；

（Ⅱ）对（Ⅰ）中的任意向量 $xi_2,xi_3$，证明 $xi_1,xi_2,xi_3$ 线性无关.
#ezexam.solution(show-number: false)[
（Ⅰ）解　对矩阵 $(A:xi_1)$ 施以初等行变换，得
$ (A:xi_1)=mat(1,-1,-1,-1;-1,1,1,1;0,-4,-2,-2,augment: #3) \
->mat(1,0,-1/2,-1/2;0,1,1/2,1/2;0,0,0,0,augment: #3), $
可求得 $xi_2=mat(-1/2+k/2;1/2-k/2;k)$，其中 $k$ 为任意常数.
又 $A^2=mat(2,2,0;-2,-2,0;4,4,0)$，对矩阵 $(A^2:xi_1)$ 施以初等行变换，得
$ (A^2:xi_1)=mat(2,2,0,-1;-2,-2,0,1;4,4,0,-2,augment: #3) \
->mat(1,1,0,-1/2;0,0,0,0;0,0,0,0,augment: #3), $
可求得 $xi_3=mat(-1/2-a;a;b)$，其中 $a,b$ 为任意常数.

（Ⅱ）证法1　由（Ⅰ）知
$ |xi_1,xi_2,xi_3|=det(-1,-1/2+k/2,-1/2-a;1,1/2-k/2,a;-2,k,b)=-1/2!=0, $
所以 $xi_1,xi_2,xi_3$ 线性无关.

证法2　由题设可得 $A xi_1=0$.设存在数 $k_1,k_2,k_3$，使得
$ k_1 xi_1+k_2 xi_2+k_3 xi_3=0. quad "①" $
等式两端左乘 $A$，得 $k_2 A xi_2+k_3 A xi_3=0$，即
$ k_2 xi_1+k_3 A xi_3=0. quad "②" $
等式两端再左乘 $A$，得 $k_3 A^2 xi_3=0$，即 $k_3 xi_1=0$.
于是 $k_3=0$.代入②式，得 $k_2 xi_1=0$，故 $k_2=0$.将 $k_2=k_3=0$ 代入①式，可得 $k_1=0$，从而 $xi_1,xi_2,xi_3$ 线性无关.
]
]

#ezexam.question[
（本题满分11分）设二次型 $f(x_1,x_2,x_3)=a x_1^2+a x_2^2+(a-1)x_3^2+2x_1 x_3-2x_2 x_3$.

（Ⅰ）求二次型 $f$ 的矩阵的所有特征值；

（Ⅱ）若二次型 $f$ 的规范形为 $y_1^2+y_2^2$，求 $a$ 的值.
#ezexam.solution(show-number: false)[
（Ⅰ）解　二次型 $f$ 的矩阵 $A=mat(a,0,1;0,a,-1;1,-1,a-1)$.
由于
$ |lambda E-A|=det(lambda-a,0,-1;0,lambda-a,1;-1,1,lambda-a+1) \
=(lambda-a)(lambda-(a+1))(lambda-(a-2)), $
所以 $A$ 的特征值为 $lambda_1=a,lambda_2=a+1,lambda_3=a-2$.

（Ⅱ）解法1　由于 $f$ 的规范形为 $y_1^2+y_2^2$，所以 $A$ 合同于 $mat(1,0,0;0,1,0;0,0,0)$，其秩为2，故 $|A|=lambda_1 lambda_2 lambda_3=0$，于是 $a=0$ 或 $a=-1$ 或 $a=2$.
当 $a=0$ 时，$lambda_1=0,lambda_2=1,lambda_3=-2$，此时 $f$ 的规范形为 $y_1^2-y_2^2$，不合题意.
当 $a=-1$ 时，$lambda_1=-1,lambda_2=0,lambda_3=-3$，此时 $f$ 的规范形为 $-y_1^2-y_2^2$，不合题意.
当 $a=2$ 时，$lambda_1=2,lambda_2=3,lambda_3=0$，此时 $f$ 的规范形为 $y_1^2+y_2^2$.
综上可知，$a=2$.

解法2　由于 $f$ 的规范形为 $y_1^2+y_2^2$，所以 $A$ 的特征值有2个为正数，1个为零.
又 $a-2<a<a+1$，所以 $a=2$.
]
]

#ezexam.question[
（本题满分11分）设二维随机变量 $(X,Y)$ 的概率密度为 $f(x,y)=cases(e^(-x) quad 0<y<x,0 quad "其他")$.

（Ⅰ）求条件概率密度 $f_(Y|X)(y|x)$；

（Ⅱ）求条件概率 $P{X<=1|Y<=1}$.
#ezexam.solution(show-number: false)[
解　（Ⅰ）$X$ 的概率密度
$ f_X(x)=integral_(-infinity)^(+infinity)f(x,y)dif y \
=cases(integral_0^x e^(-x)dif y quad x>0,0 quad x<=0) \
=cases(x e^(-x) quad x>0,0 quad x<=0). $
当 $x>0$ 时，$Y$ 的条件概率密度
$ f_(Y|X)(y|x)=(f(x,y))/(f_X(x))=cases(1/x quad 0<y<x,0 quad "其他"). $
（Ⅱ）$Y$ 的概率密度
$ f_Y(y)=integral_(-infinity)^(+infinity)f(x,y)dif x=cases(e^(-y) quad y>0,0 quad y<=0). $
$ P{X<=1|Y<=1}=(P{X<=1,Y<=1})/(P{Y<=1}) \
=(integral_(-infinity)^1 integral_(-infinity)^1 f(x,y)dif x dif y)/(integral_0^1 e^(-y)dif y) \
=(integral_0^1 dif x integral_0^x e^(-x)dif y)/(1-e^(-1))=(e-2)/(e-1). $
]
]

#ezexam.question[
（本题满分11分）袋中有1个红球、2个黑球与3个白球.现有放回地从袋中取两次，每次取一个球，以 $X,Y,Z$ 分别表示两次取球所取得的红球、黑球与白球的个数.

（Ⅰ）求 $P{X=1|Z=0}$；

（Ⅱ）求二维随机变量 $(X,Y)$ 的概率分布.
#ezexam.solution(show-number: false)[
解　（Ⅰ）
$ P{X=1|Z=0}=(P{X=1,Z=0})/(P{Z=0}) \
=(binom(2,1) dot 1/6 dot 1/3)/((1/2)^2)=4/9. $
（Ⅱ）由题意知 $X$ 与 $Y$ 的所有可能取值均为0，1，2.
$(X,Y)$ 的概率分布为
#table(columns:4,[$X slash Y$],[0],[1],[2],[0],[$1/4$],[$1/3$],[$1/9$],[1],[$1/6$],[$1/9$],[0],[2],[$1/36$],[0],[0])
]
]

