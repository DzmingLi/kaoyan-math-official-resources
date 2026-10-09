#import "../template.typ": exam
#show: exam.with(year: 2009, subject: "二", title: "2009年全国硕士研究生入学统一考试")
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
设函数 $z=f(x,y)$ 的全微分为 $dif z=x dif x+y dif y$，则点 $(0,0)$
#choices([不是 $f(x,y)$ 的连续点.],[不是 $f(x,y)$ 的极值点.],[是 $f(x,y)$ 的极大值点.],[是 $f(x,y)$ 的极小值点.])
#ezexam.solution(show-number: false)[
D.
]
]

#ezexam.question[
设函数 $f(x,y)$ 连续，则 $integral_1^2 dif x integral_x^2 f(x,y)dif y+integral_1^2 dif y integral_2^(4-y)f(x,y)dif x=$
#choices([$integral_1^2 dif x integral_1^(4-x)f(x,y)dif y$.],[$integral_1^2 dif x integral_x^(4-x)f(x,y)dif y$.],[$integral_1^2 dif y integral_1^(4-y)f(x,y)dif x$.],[$integral_1^2 dif y integral_y^2 f(x,y)dif x$.])
#ezexam.solution(show-number: false)[
C.
]
]

#ezexam.question[
若 $f''(x)$ 不变号，且曲线 $y=f(x)$ 在点 $(1,1)$ 处的曲率圆为 $x^2+y^2=2$，则函数 $f(x)$ 在区间 $(1,2)$ 内
#choices([有极值点，无零点.],[无极值点，有零点.],[有极值点，有零点.],[无极值点，无零点.])
#ezexam.solution(show-number: false)[
B.
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

= 二、填空题：9—14小题，每小题4分，共24分. 把答案填在题中横线上.

#ezexam.question[
曲线 $cases(x=integral_0^(1-t)e^(-u^2)dif u,y=t^2 ln(2-t^2))$ 在点 $(0,0)$ 处的切线方程为 #fillin(len: 1.98438em)[].
#ezexam.solution(show-number: false)[
$y=2x$.
]
]

#ezexam.question[
已知 $integral_(-infinity)^(+infinity)e^(k|x|)dif x=1$，则 $k=$ #fillin(len: 1.98438em)[].
#ezexam.solution(show-number: false)[
−2.
]
]

#ezexam.question[
$lim_(n->infinity)integral_0^1 e^(-x)sin(n x)dif x=$ #fillin(len: 1.98438em)[].
#ezexam.solution(show-number: false)[
0.
]
]

#ezexam.question[
设 $y=y(x)$ 是由方程 $x y+e^y=x+1$ 确定的隐函数，则 $(dif^2 y)/(dif x^2)|_(x=0)=$ #fillin(len: 1.98438em)[].
#ezexam.solution(show-number: false)[
−3.
]
]

#ezexam.question[
函数 $y=x^(2x)$ 在区间 $(0,1]$ 上的最小值为 #fillin(len: 1.98438em)[].
#ezexam.solution(show-number: false)[
$e^(-2/e)$.
]
]

#ezexam.question[
设 $alpha,beta$ 为3维列向量，$beta^T$ 为 $beta$ 的转置.若矩阵 $alpha beta^T$ 相似于 $mat(2,0,0;0,0,0;0,0,0)$，则 $beta^T alpha=$ #fillin(len: 1.98438em)[].
#ezexam.solution(show-number: false)[
2.
]
]

= 三、解答题：15—23小题，共94分. 解答应写出文字说明、证明过程或演算步骤.

#ezexam.question[
（本题满分9分）求极限 $lim_(x->0)((1-cos x)[x-ln(1+tan x)])/(sin^4 x)$.
#ezexam.solution(show-number: false)[
解
$ lim_(x->0)((1-cos x)[x-ln(1+tan x)])/(sin^4 x) \
=lim_(x->0)(x-ln(1+tan x))/(2x^2) \
=lim_(x->0)(1-(sec^2 x)/(1+tan x))/(4x) \
=lim_(x->0)(1+tan x-sec^2 x)/(4x) \
=lim_(x->0)(sec^2 x-2sec^2 x tan x)/4=1/4. $
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
-1/2 sqrt(x)/(sqrt(1+x)+sqrt(x))+C \
=x ln(1+sqrt((1+x)/x))+1/2 ln(sqrt(1+x)+sqrt(x)) \
+1/2 x-1/2 sqrt(x+x^2)+C. $
]
]

#ezexam.question[
（本题满分10分）设 $z=f(x+y,x-y,x y)$，其中 $f$ 具有二阶连续偏导数，求 $dif z$ 与 $(partial^2 z)/(partial x partial y)$.
#ezexam.solution(show-number: false)[
解　由于 $(partial z)/(partial x)=f'_1+f'_2+y f'_3$，$(partial z)/(partial y)=f'_1-f'_2+x f'_3$，所以
$ dif z=(partial z)/(partial x)dif x+(partial z)/(partial y)dif y \
=(f'_1+f'_2+y f'_3)dif x+(f'_1-f'_2+x f'_3)dif y, $
$ (partial^2 z)/(partial x partial y)=f''_(11)-f''_(12)+x f''_(13)+f''_(21)-f''_(22)+x f''_(23) \
+f'_3+y(f''_(31)-f''_(32)+x f''_(33)) \
=f''_(11)+(x+y)f''_(13)-f''_(22)+(x-y)f''_(23)+x y f''_(33)+f'_3. $
]
]

#ezexam.question[
（本题满分10分）设非负函数 $y=y(x)(x>=0)$ 满足微分方程 $x y''-y'+2=0$.当曲线 $y=y(x)$ 过原点时，其与直线 $x=1$ 及 $y=0$ 围成的平面区域 $D$ 的面积为2，求 $D$ 绕 $y$ 轴旋转所得旋转体的体积.
#ezexam.solution(show-number: false)[
解法1　记 $y'=p$，则 $y''=p'$，代入微分方程，当 $x>0$ 时，$p'-1/x p=-2/x$，解得
$ y'=p=e^(integral 1/x dif x)(integral -2/x e^(-integral 1/x dif x)dif x+C_1) \
=x(integral -2/x^2 dif x+C_1)=2+C_1 x, $
因此 $y=2x+1/2 C_1 x^2+C_2(x>0)$.
由已知 $y(0)=0$，有 $lim_(x->0^+)y=0$，于是 $C_2=0,y=2x+1/2 C_1 x^2$.
由于 $2=integral_0^1(2x+1/2 C_1 x^2)dif x=1+1/6 C_1$，所以 $C_1=6$，故 $y=2x+3x^2$.
由于 $x=1/3(sqrt(3y+1)-1),0<=y<=5$，故所求体积为
$ V=5pi-pi integral_0^5 x^2 dif y \
=5pi-pi/9 integral_0^5(sqrt(3y+1)-1)^2 dif y \
=5pi-(13pi)/6=(17pi)/6. $

解法2　（同解法1）$y=2x+3x^2$.
所求体积为
$ V=2pi integral_0^1 x y(x)dif x \
=2pi integral_0^1(2x^2+3x^3)dif x=(17pi)/6. $
]
]

#ezexam.question[
（本题满分10分）计算二重积分 $integral.double_D(x-y)dif x dif y$，其中 $D={(x,y)|(x-1)^2+(y-1)^2<=2,y>=x}$.
#ezexam.solution(show-number: false)[
解法1　如下左图，区域 $D$ 的极坐标表示为 $0<=r<=2(sin theta+cos theta),pi/4<=theta<=3pi/4$.
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
#grid(columns:2,gutter:1em,region-diagram(),region-diagram(split:true))
$ integral.double_D(x-y)dif x dif y \
=integral_(pi/4)^(3pi/4)dif theta integral_0^(2(sin theta+cos theta))r^2(cos theta-sin theta)dif r \
=8/3 integral_(pi/4)^(3pi/4)(sin theta+cos theta)^3 dif(sin theta+cos theta) \
=2/3(sin theta+cos theta)^4|_(pi/4)^(3pi/4)=-8/3. $

解法2　将区域 $D$ 分成 $D_1,D_2$ 两部分（如上右图），其中
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
（本题满分12分）设 $y=y(x)$ 是区间 $(-pi,pi)$ 内过点 $(-pi/sqrt(2),pi/sqrt(2))$ 的光滑曲线.当 $-pi<x<0$ 时，曲线上任一点处的法线都过原点；当 $0<=x<pi$ 时，函数 $y(x)$ 满足 $y''+y+x=0$.求函数 $y(x)$ 的表达式.
#ezexam.solution(show-number: false)[
解　当 $-pi<x<0$ 时，设 $(x,y)$ 为曲线上任一点，由导数几何意义，法线斜率为 $k=-1/((dif y)/(dif x))$.
由题意，法线斜率为 $y/x$，所以有 $(dif y)/(dif x)=-x/y$.分离变量，解得 $x^2+y^2=C$.
由初始条件 $y(-pi/sqrt(2))=pi/sqrt(2)$，得 $C=pi^2$，所以
$ y=sqrt(pi^2-x^2),quad -pi<x<0. quad "①" $
当 $0<=x<pi$ 时，$y''+y+x=0$ 的通解为
$ y=C_1 cos x+C_2 sin x-x,quad "②" $
$ y'=-C_1 sin x+C_2 cos x-1. quad "③" $
因为曲线 $y=y(x)$ 光滑，所以 $y(x)$ 连续且可导，由①式知
$ y(0)=lim_(x->0^-)y(x)=lim_(x->0^-)sqrt(pi^2-x^2)=pi, $
$ y'(0)=y'_-(0)=lim_(x->0^-)(sqrt(pi^2-x^2)-pi)/x=0, $
代入②、③式，得 $C_1=pi,C_2=1$，故 $y=pi cos x+sin x-x,0<=x<pi$.
因此
$ y(x)=cases(sqrt(pi^2-x^2) quad -pi<x<0,pi cos x+sin x-x quad 0<=x<pi). $
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

