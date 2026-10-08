#import "../template.typ": exam
#show: exam.with(year: 2016, subject: "二")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(true)


= 一、选择题：1—8小题，每小题4分，共32分.在每小题给出的四个选项中，只有一项符合题目要求，把所选项前的字母填在题后的括号内.

#ezexam.question[
设 $alpha_1=x(cos sqrt(x)-1)$，$alpha_2=sqrt(x) ln(1+root(3,x))$，$alpha_3=root(3,x+1)-1$.当 $x->0^+$ 时，以上三个无穷小量按照从低阶到高阶的排序是（　）.
#choices([$alpha_1,alpha_2,alpha_3$],[$alpha_2,alpha_3,alpha_1$],[$alpha_2,alpha_1,alpha_3$],[$alpha_3,alpha_2,alpha_1$])
#ezexam.solution(show-number: false)[
B.
]
]

#ezexam.question[
已知函数 $f(x)=cases(2(x-1)&x<1,ln x&x>=1)$，则 $f(x)$ 的一个原函数是（　）.
#choices([$F(x)=cases((x-1)^2&x<1,x(ln x-1)&x>=1)$],[$F(x)=cases((x-1)^2&x<1,x(ln x+1)-1&x>=1)$],[$F(x)=cases((x-1)^2&x<1,x(ln x+1)+1&x>=1)$],[$F(x)=cases((x-1)^2&x<1,x(ln x-1)+1&x>=1)$])
#ezexam.solution(show-number: false)[
D.
]
]

#ezexam.question[
反常积分① $integral_(-infinity)^0 1/x^2 e^(1/x) dif x$，② $integral_0^(+infinity) 1/x^2 e^(1/x) dif x$ 的敛散性为（　）.
#choices([①收敛，②收敛.],[①收敛，②发散.],[①发散，②收敛.],[①发散，②发散.])
#ezexam.solution(show-number: false)[
B.
]
]

#ezexam.question[
函数 $f(x)$ 在 $(-infinity,+infinity)$ 内连续，其导函数的图形如图所示，则（　）.
#import "@preview/cetz:0.3.4"
#cetz.canvas({
 import cetz.draw: *
 line((-0.7,0),(4.3,0),mark:(end: ">")); line((0,-2),(0,2.1),mark:(end: ">"))
 content((4.3,-0.2),$x$); content((-0.2,2.1),$y$); content((-0.2,-0.2),$O$)
 line((0.8,-1.8),(0.8,1.8),stroke:(dash:"dashed"))
 bezier((-0.5,1.5),(0.68,-1.7),(0.4,1.5),(0.5,0.8))
 bezier((0.95,-1.7),(2.1,1),(1.25,0),(1.55,1))
 bezier((2.1,1),(3.2,0),(2.6,1),(2.7,0))
 bezier((3.2,0),(4,1.1),(3.6,0),(3.8,0.5))
})
#choices([函数 $f(x)$ 有2个极值点，曲线 $y=f(x)$ 有2个拐点.],[函数 $f(x)$ 有2个极值点，曲线 $y=f(x)$ 有3个拐点.],[函数 $f(x)$ 有3个极值点，曲线 $y=f(x)$ 有1个拐点.],[函数 $f(x)$ 有3个极值点，曲线 $y=f(x)$ 有2个拐点.])
#ezexam.solution(show-number: false)[
B.
]
]

#ezexam.question[
设函数 $f_i(x)$（$i=1,2$）具有二阶连续导数，且 $f_i''(x_0)<0$（$i=1,2$）.若两条曲线 $y=f_i(x)$（$i=1,2$）在点 $(x_0,y_0)$ 处具有公切线 $y=g(x)$，且在该点处曲线 $y=f_1(x)$ 的曲率大于曲线 $y=f_2(x)$ 的曲率，则在 $x_0$ 的某个邻域内，有（　）.
#choices([$f_1(x)<=f_2(x)<=g(x)$],[$f_2(x)<=f_1(x)<=g(x)$],[$f_1(x)<=g(x)<=f_2(x)$],[$f_2(x)<=g(x)<=f_1(x)$])
#ezexam.solution(show-number: false)[
A.
]
]

#ezexam.question[
已知函数 $f(x,y)=e^x/(x-y)$，则（　）.
#choices([$f_x'-f_y'=0$],[$f_x'+f_y'=0$],[$f_x'-f_y'=f$],[$f_x'+f_y'=f$])
#ezexam.solution(show-number: false)[
D.
]
]

#ezexam.question[
设 $A,B$ 是可逆矩阵，且 $A$ 与 $B$ 相似，则下列结论错误的是（　）.
#choices([$A^T$ 与 $B^T$ 相似.],[$A^(-1)$ 与 $B^(-1)$ 相似.],[$A+A^T$ 与 $B+B^T$ 相似.],[$A+A^(-1)$ 与 $B+B^(-1)$ 相似.])
#ezexam.solution(show-number: false)[
C.
]
]

#ezexam.question[
设二次型 $f(x_1,x_2,x_3)=a(x_1^2+x_2^2+x_3^2)+2x_1 x_2+2x_2 x_3+2x_1 x_3$ 的正、负惯性指数分别为1、2，则（　）.
#choices([$a>1$],[$a<-2$],[$-2<a<1$],[$a=1$ 或 $a=-2$])
#ezexam.solution(show-number: false)[
C.
]
]

= 二、填空题：9—14小题，每小题4分，共24分.把答案填在题中横线上.

#ezexam.question[
曲线 $y=x^3/(1+x^2)+arctan(1+x^2)$ 的斜渐近线方程为#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$y=x+pi/2$.
]
]

#ezexam.question[
极限 $lim_(n->infinity) 1/n^2 (sin 1/n+2sin 2/n+dots+n sin n/n)=$#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$sin 1-cos 1$.
]
]

#ezexam.question[
以 $y=x^2-e^x$ 和 $y=x^2$ 为特解的一阶非齐次线性微分方程为#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$y'-y=2x-x^2$.
]
]

#ezexam.question[
已知函数 $f(x)$ 在 $(-infinity,+infinity)$ 上连续，且 $f(x)=(x+1)^2+2integral_0^x f(t) dif t$，则当 $n>=2$ 时，$f^((n))(0)=$#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$5 dot 2^(n-1)$.
]
]

#ezexam.question[
已知动点 $P$ 在曲线 $y=x^3$ 上运动，记坐标原点与点 $P$ 间的距离为 $l$.若点 $P$ 的横坐标对时间的变化率为常数 $v_0$，则当点 $P$ 运动到点 $(1,1)$ 时，$l$ 对时间的变化率是#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$2sqrt(2)v_0$.
]
]

#ezexam.question[
设矩阵 $mat(a,-1,-1;-1,a,-1;-1,-1,a)$ 与 $mat(1,1,0;0,-1,1;1,0,1)$ 等价，则 $a=$#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
2.
]
]

= 三、解答题：15—23小题，共94分.解答应写出文字说明、证明过程或演算步骤.

#ezexam.question[
（本题满分10分）
求极限 $lim_(x->0)(cos 2x+2x sin x)^(1/x^4)$.
#ezexam.solution(show-number: false)[
解　因为
$ lim_(x->0)(cos 2x+2x sin x)^(1/x^4)=e^(lim_(x->0)(ln(cos 2x+2x sin x))/x^4), $
且
$ lim_(x->0)(ln(cos 2x+2x sin x))/x^4
 &=lim_(x->0)1/(cos 2x+2x sin x) dot (-2sin 2x+2sin x+2x cos x)/(4x^3) \
 &=lim_(x->0)(-2cos 2x+2cos x-x sin x)/(6x^2) \
 &=lim_(x->0)(4sin 2x-3sin x-x cos x)/(12x)=1/3, $
所以 $lim_(x->0)(cos 2x+2x sin x)^(1/x^4)=e^(1/3)$.
]
]

#ezexam.question[
（本题满分10分）
设函数 $f(x)=integral_0^1 abs(t^2-x^2) dif t$（$x>0$），求 $f'(x)$，并求 $f(x)$ 的最小值.
#ezexam.solution(show-number: false)[
解　当 $0<x<=1$ 时，
$ f(x)&=integral_0^x abs(t^2-x^2) dif t+integral_x^1 abs(t^2-x^2) dif t \
 &=integral_0^x(x^2-t^2)dif t+integral_x^1 (t^2-x^2)dif t=4/3 x^3-x^2+1/3; $
当 $x>1$ 时，$f(x)=integral_0^1(x^2-t^2)dif t=x^2-1/3$，所以
$ f(x)=cases(4/3 x^3-x^2+1/3&0<x<=1,x^2-1/3&x>1), $
而
$ f_-'(1)=lim_(x->1^-)(4/3 x^3-x^2+1/3-2/3)/(x-1)=2,
quad f_+'(1)=lim_(x->1^+)(x^2-1/3-2/3)/(x-1)=2, $
故 $f'(x)=cases(4x^2-2x&0<x<=1,2x&x>1)$.
由 $f'(x)=0$ 求得唯一驻点 $x=1/2$，又 $f''(1/2)>0$，从而 $x=1/2$ 为 $f(x)$ 的最小值点，最小值为 $f(1/2)=1/4$.
]
]

#ezexam.question[
（本题满分10分）
已知函数 $z=z(x,y)$ 由方程 $(x^2+y^2)z+ln z+2(x+y+1)=0$ 确定，求 $z=z(x,y)$ 的极值.
#ezexam.solution(show-number: false)[
解　在 $(x^2+y^2)z+ln z+2(x+y+1)=0$ 两边分别对 $x$ 和 $y$ 求偏导数，得
$ cases(2x z+(x^2+y^2)(partial z)/(partial x)+1/z (partial z)/(partial x)+2=0,
2y z+(x^2+y^2)(partial z)/(partial y)+1/z (partial z)/(partial y)+2=0). quad "①" $
令 $(partial z)/(partial x)=0$，$(partial z)/(partial y)=0$，得 $x=-1/z$，$y=-1/z$.
将其代入原方程，得 $ln z-2/z+2=0$，可知 $z=1$，从而 $x=y=-1$.
对①中两式两边分别再对 $x,y$ 求偏导数，得
$ cases(2z+4x z_x'+(x^2+y^2)z_(x x)''-1/z^2(z_x')^2+1/z z_(x x)''=0,
2x z_y'+2y z_x'+(x^2+y^2)z_(x y)''-1/z^2 z_x' z_y'+1/z z_(x y)''=0,
2z+4y z_y'+(x^2+y^2)z_(y y)''-1/z^2(z_y')^2+1/z z_(y y)''=0). $
从而 $A=z_(x x)''(-1,-1)=-2/3$，$B=z_(x y)''(-1,-1)=0$，$C=z_(y y)''(-1,-1)=-2/3$.
由于 $A C-B^2>0$，$A<0$，所以 $z(-1,-1)=1$ 是 $z(x,y)$ 的极大值.
]
]

#ezexam.question[
（本题满分10分）
设 $D$ 是由直线 $y=1$，$y=x$，$y=-x$ 围成的有界区域，计算二重积分 $integral.double_D (x^2-x y-y^2)/(x^2+y^2) dif x dif y$.
#ezexam.solution(show-number: false)[
解　因为区域 $D$ 关于 $y$ 轴对称，所以 $integral.double_D (x y)/(x^2+y^2) dif x dif y=0$.
$ integral.double_D (x^2-x y-y^2)/(x^2+y^2) dif x dif y
 &=integral.double_D (x^2-y^2)/(x^2+y^2) dif x dif y \
 &=integral_(pi/4)^(3pi/4) dif theta integral_0^(1/sin theta)(r^2(cos^2 theta-sin^2 theta))/r^2 r dif r \
 &=1/2 integral_(pi/4)^(3pi/4) (csc^2 theta-2)dif theta \
 &=1/2[-cot theta-2theta]_(pi/4)^(3pi/4)=1-pi/2. $
]
]

#ezexam.question[
（本题满分10分）
已知 $y_1(x)=e^x$，$y_2(x)=u(x)e^x$ 是二阶微分方程
$ (2x-1)y''-(2x+1)y'+2y=0 $
的两个解.若 $u(-1)=e$，$u(0)=-1$，求 $u(x)$，并写出该微分方程的通解.
#ezexam.solution(show-number: false)[
解　将 $y_2(x)=u(x)e^x$ 代入原方程整理得
$ (2x-1)u''+(2x-3)u'=0. $
令 $u'(x)=z$，则 $(2x-1)z'+(2x-3)z=0$，解得 $z=tilde(C)_1(2x-1)e^(-x)$，从而
$ u(x)=integral tilde(C)_1(2x-1)e^(-x)dif x=-tilde(C)_1[(2x-1)e^(-x)+2e^(-x)]+tilde(C)_2. $
由 $u(-1)=e$，$u(0)=-1$，得 $tilde(C)_1=1$，$tilde(C)_2=0$，所以 $u(x)=-(2x+1)e^(-x)$.
所以原微分方程的通解为 $y=C_1 e^x-C_2(2x+1)$.
]
]

#ezexam.question[
（本题满分11分）
设 $D$ 是由曲线 $y=sqrt(1-x^2)$（$0<=x<=1$）与 $cases(x=cos^3 t,y=sin^3 t)$（$0<=t<=pi/2$）围成的平面区域，求 $D$ 绕 $x$ 轴旋转一周所得旋转体的体积和表面积.
#ezexam.solution(show-number: false)[
解　设 $D$ 绕 $x$ 轴旋转一周所得旋转体的体积为 $V$，表面积为 $S$，则
$ V&=2/3 pi-integral_0^1 pi y^2 dif x \
 &=2/3 pi-integral_(pi/2)^0 pi sin^6 t (cos^3 t)'dif t \
 &=2/3 pi+3pi integral_0^(pi/2)(1-cos^2 t)^3 cos^2 t dif(cos t) \
 &=2/3 pi-16/105 pi=18/35 pi, \
 S&=2pi+integral_0^(pi/2)2pi y(t)sqrt((x'(t))^2+(y'(t))^2)dif t \
 &=2pi+2pi integral_0^(pi/2)sin^3 t sqrt(9cos^4 t sin^2 t+9sin^4 t cos^2 t)dif t \
 &=2pi+6pi integral_0^(pi/2)sin^4 t cos t dif t=16/5 pi. $
]
]

#ezexam.question[
（本题满分11分）
已知函数 $f(x)$ 在 $[0,3pi/2]$ 上连续，在 $(0,3pi/2)$ 内是函数 $cos x/(2x-3pi)$ 的一个原函数，且 $f(0)=0$.

（Ⅰ）求 $f(x)$ 在区间 $[0,3pi/2]$ 上的平均值；

（Ⅱ）证明 $f(x)$ 在区间 $(0,3pi/2)$ 内存在唯一零点.
#ezexam.solution(show-number: false)[
解　（Ⅰ）$f(x)$ 在区间 $[0,3pi/2]$ 上的平均值
$ overline(f)&=2/(3pi)integral_0^(3pi/2)f(x)dif x \
 &=2/(3pi)integral_0^(3pi/2)(integral_0^x cos t/(2t-3pi)dif t)dif x \
 &=2/(3pi)integral_0^(3pi/2)dif t integral_t^(3pi/2)cos t/(2t-3pi)dif x \
 &=-1/(3pi)integral_0^(3pi/2)cos t dif t=1/(3pi). $
（Ⅱ）由题意，得 $f'(x)=cos x/(2x-3pi)$，$x in (0,3pi/2)$.
当 $0<x<pi/2$ 时，因为 $f'(x)<0$，所以 $f(x)<f(0)=0$，故 $f(x)$ 在 $(0,pi/2)$ 内无零点，且 $f(pi/2)<0$.
由积分中值定理，存在 $x_0 in [0,3pi/2]$，使得 $f(x_0)=overline(f)=1/(3pi)>0$.由于当 $x in (0,pi/2]$ 时 $f(x)<0$，所以 $x_0 in (pi/2,3pi/2]$.
根据连续函数介值定理，存在 $xi in (pi/2,x_0) subset (pi/2,3pi/2]$，使得 $f(xi)=0$.又因为当 $pi/2<x<3pi/2$ 时，$f'(x)>0$，所以 $f(x)$ 在 $(pi/2,3pi/2)$ 内至多有一个零点.
综上所述，$f(x)$ 在 $(0,3pi/2)$ 内存在唯一的零点.
]
]

#ezexam.question[
（本题满分11分）
设矩阵 $A=mat(1,1,1-a;1,0,a;a+1,1,a+1)$，$beta=mat(0;1;2a-2)$，且方程组 $A x=beta$ 无解.

（Ⅰ）求 $a$ 的值；

（Ⅱ）求方程组 $A^T A x=A^T beta$ 的通解.
#ezexam.solution(show-number: false)[
解　（Ⅰ）对矩阵 $(A bar.v beta)$ 施以初等行变换
$ (A bar.v beta)=mat(1,1,1-a,0;1,0,a,1;a+1,1,a+1,2a-2,augment: #3)->mat(1,1,1-a,0;0,-1,2a-1,1;0,0,-a^2+2a,a-2,augment: #3), $
由方程组 $A x=beta$ 无解，知 $"秩"(A bar.v beta)>"秩" A$，即 $-a^2+2a=0$，且 $a-2 !=0$，解得 $a=0$.
（Ⅱ）对矩阵 $(A^T A bar.v A^T beta)$ 施以初等行变换
$ (A^T A bar.v A^T beta)=mat(3,2,2,-1;2,2,2,-2;2,2,2,-2,augment: #3)->mat(1,0,0,1;0,1,1,-2;0,0,0,0,augment: #3), $
所以，方程组 $A^T A x=A^T beta$ 的通解 $x=mat(1;-2;0)+k mat(0;-1;1)$（$k$ 为任意常数）.
]
]

#ezexam.question[
（本题满分 11 分）已知矩阵 $A=mat(0,-1,1;2,-3,0;0,0,0)$.

（Ⅰ）求 $A^99$；

（Ⅱ）设 3 阶矩阵 $B=(alpha_1,alpha_2,alpha_3)$ 满足 $B^2=B A$.记 $B^100=(beta_1,beta_2,beta_3)$，将 $beta_1,beta_2,beta_3$ 分别表示为 $alpha_1,alpha_2,alpha_3$ 的线性组合.
#ezexam.solution(show-number: false)[
（Ⅰ）因为
$ abs(lambda E-A)=mat(delim: "|",lambda,1,-1;-2,lambda+3,0;0,0,lambda)=lambda(lambda+1)(lambda+2), $
所以 $A$ 的特征值为 $lambda_1=-1,lambda_2=-2,lambda_3=0$.
当 $lambda_1=-1$ 时，解方程组 $(-E-A)x=0$，得特征向量 $xi_1=(1,1,0)^T$；当 $lambda_2=-2$ 时，解方程组 $(-2E-A)x=0$，得特征向量 $xi_2=(1,2,0)^T$；当 $lambda_3=0$ 时，解方程组 $A x=0$，得特征向量 $xi_3=(3,2,2)^T$.
令 $P=(xi_1,xi_2,xi_3)=mat(1,1,3;1,2,2;0,0,2)$，则 $P^(-1)A P=mat(-1,0,0;0,-2,0;0,0,0)$，所以
$ A^99&=P mat((-1)^99,0,0;0,(-2)^99,0;0,0,0)P^(-1) \
&=mat(1,1,3;1,2,2;0,0,2)mat((-1)^99,0,0;0,(-2)^99,0;0,0,0)mat(2,-1,-2;-1,1,1/2;0,0,1/2) \
&=mat(2^99-2,1-2^99,2-2^98;2^100-2,1-2^100,2-2^99;0,0,0). $
（Ⅱ）因为 $B^2=B A$，所以
$ B^100=B^98 B^2=B^99 A=B^97 B^2 A=B^98 A^2=dots=B A^99, $
即
$ (beta_1,beta_2,beta_3)=(alpha_1,alpha_2,alpha_3)mat(2^99-2,1-2^99,2-2^98;2^100-2,1-2^100,2-2^99;0,0,0). $
所以
$ cases(beta_1=(2^99-2)alpha_1+(2^100-2)alpha_2,beta_2=(1-2^99)alpha_1+(1-2^100)alpha_2,beta_3=(2-2^98)alpha_1+(2-2^99)alpha_2). $
]
]

