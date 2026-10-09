#import "../template.typ": exam
#show: exam.with(year: 2014, subject: "二")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#ezexam.answer-state.update(true)


= 一、选择题：1—8小题，每小题4分，共32分. 在每小题给出的四个选项中，只有一项符合题目要求，把所选项前的字母填在题后的括号内.

#ezexam.question[
当 $x->0^+$ 时，若 $ln^alpha(1+2x),(1-cos x)^(1/alpha)$ 均是比 $x$ 高阶的无穷小，则 $alpha$ 的取值范围是
#choices([$(2,+infinity)$.],[$(1,2)$.],[$(1/2,1)$.],[$(0,1/2)$.])
#ezexam.solution(show-number: false)[
B.
]
]

#ezexam.question[
下列曲线中有渐近线的是
#choices([$y=x+sin x$.],[$y=x^2+sin x$.],[$y=x+sin(1/x)$.],[$y=x^2+sin(1/x)$.])
#ezexam.solution(show-number: false)[
C.
]
]

#ezexam.question[
设函数 $f(x)$ 具有2阶导数，$g(x)=f(0)(1-x)+f(1)x$，则在区间 $[0,1]$ 上
#choices([当 $f'(x)>=0$ 时，$f(x)>=g(x)$.],[当 $f'(x)>=0$ 时，$f(x)<=g(x)$.],[当 $f''(x)>=0$ 时，$f(x)>=g(x)$.],[当 $f''(x)>=0$ 时，$f(x)<=g(x)$.])
#ezexam.solution(show-number: false)[
D.
]
]

#ezexam.question[
曲线 $cases(x=t^2+7,y=t^2+4t+1)$ 上对应于 $t=1$ 的点处的曲率半径是
#choices([$sqrt(10)/50$.],[$sqrt(10)/100$.],[$10sqrt(10)$.],[$5sqrt(10)$.])
#ezexam.solution(show-number: false)[
C.
]
]

#ezexam.question[
设函数 $f(x)=arctan x$.若 $f(x)=x f'(xi)$，则 $lim_(x->0)xi^2/x^2=$
#choices([1.],[$2/3$.],[$1/2$.],[$1/3$.])
#ezexam.solution(show-number: false)[
D.
]
]

#ezexam.question[
设函数 $u(x,y)$ 在有界闭区域 $D$ 上连续，在 $D$ 的内部具有2阶连续偏导数，且满足 $(partial^2 u)/(partial x partial y)!=0$ 及 $(partial^2 u)/(partial x^2)+(partial^2 u)/(partial y^2)=0$，则
#choices([$u(x,y)$ 的最大值和最小值都在 $D$ 的边界上取得.],[$u(x,y)$ 的最大值和最小值都在 $D$ 的内部取得.],[$u(x,y)$ 的最大值在 $D$ 的内部取得，最小值在 $D$ 的边界上取得.],[$u(x,y)$ 的最小值在 $D$ 的内部取得，最大值在 $D$ 的边界上取得.])
#ezexam.solution(show-number: false)[
A.
]
]

#ezexam.question[
行列式 $mat(delim: "|", 0,a,b,0;a,0,0,b;0,c,d,0;c,0,0,d)=$
#choices([$(a d-b c)^2$.],[$-(a d-b c)^2$.],[$a^2 d^2-b^2 c^2$.],[$b^2 c^2-a^2 d^2$.])
#ezexam.solution(show-number: false)[
B.
]
]

#ezexam.question[
设 $alpha_1,alpha_2,alpha_3$ 均为3维向量，则对任意常数 $k,l$，向量组 $alpha_1+k alpha_3,alpha_2+l alpha_3$ 线性无关是向量组 $alpha_1,alpha_2,alpha_3$ 线性无关的
#choices([必要非充分条件.],[充分非必要条件.],[充分必要条件.],[既非充分也非必要条件.])
#ezexam.solution(show-number: false)[
A.
]
]

= 二、填空题：9—14小题，每小题4分，共24分. 把答案填在题中横线上.

#ezexam.question[
$integral_(-infinity)^1 1/(x^2+2x+5)dif x=$#h(3em).
#ezexam.solution(show-number: false)[
$(3pi)/8$.
]
]

#ezexam.question[
设 $f(x)$ 是周期为4的可导奇函数，且 $f'(x)=2(x-1),x in [0,2]$，则 $f(7)=$#h(3em).
#ezexam.solution(show-number: false)[
1.
]
]

#ezexam.question[
设 $z=z(x,y)$ 是由方程 $e^(2y z)+x+y^2+z=7/4$ 确定的函数，则 $dif z|_((1/2,1/2))=$#h(3em).
#ezexam.solution(show-number: false)[
$-1/2(dif x+dif y)$.
]
]

#ezexam.question[
曲线 $L$ 的极坐标方程是 $r=theta$，则 $L$ 在点 $(r,theta)=(pi/2,pi/2)$ 处的切线的直角坐标方程是#h(3em).
#ezexam.solution(show-number: false)[
$2/pi x+y-pi/2=0$.
]
]

#ezexam.question[
一根长度为1的细棒位于 $x$ 轴的区间 $[0,1]$ 上，若其线密度 $rho(x)=-x^2+2x+1$，则该细棒的质心坐标 $overline(x)=$#h(3em).
#ezexam.solution(show-number: false)[
$11/20$.
]
]

#ezexam.question[
设二次型 $f(x_1,x_2,x_3)=x_1^2-x_2^2+2a x_1 x_3+4x_2 x_3$ 的负惯性指数为1，则 $a$ 的取值范围是#h(3em).
#ezexam.solution(show-number: false)[
$[-2,2]$.
]
]

= 三、解答题：15—23小题，共94分. 解答应写出文字说明、证明过程或演算步骤.

#ezexam.question[
（本题满分10分）求极限 $lim_(x->+infinity)(integral_1^x[t^2(e^(1/t)-1)-t]dif t)/(x^2 ln(1+1/x))$.
#ezexam.solution(show-number: false)[
$ &lim_(x->+infinity)(integral_1^x[t^2(e^(1/t)-1)-t]dif t)/(x^2 ln(1+1/x)) \
&=lim_(x->+infinity)(integral_1^x[t^2(e^(1/t)-1)-t]dif t)/x \
&=lim_(x->+infinity)[x^2(e^(1/x)-1)-x]. $
令 $u=1/x$，则
$ lim_(x->+infinity)[x^2(e^(1/x)-1)-x]&=lim_(u->0^+)(e^u-1-u)/u^2 \
&=lim_(u->0^+)(e^u-1)/(2u)=1/2. $
]
]

#ezexam.question[
（本题满分10分）已知函数 $y=y(x)$ 满足微分方程 $x^2+y^2 y'=1-y'$，且 $y(2)=0$，求 $y(x)$ 的极大值与极小值.
#ezexam.solution(show-number: false)[
由 $x^2+y^2 y'=1-y'$ 得 $y'=(1-x^2)/(1+y^2)$.令 $y'=0$，得 $x=+-1$.

当 $x<-1$ 时，$y'<0$；当 $-1<x<1$ 时，$y'>0$；当 $x>1$ 时，$y'<0$.因此，$x=-1$ 为极小值点，$x=1$ 为极大值点.

将原方程分离变量后得 $(1+y^2)dif y=(1-x^2)dif x$，其通解为 $x^3+y^3-3x+3y=C$.又 $y(2)=0$，得 $C=2$.故 $x^3+y^3-3x+3y=2$.

所以 $y(x)$ 的极小值为 $y(-1)=0$，$y(x)$ 的极大值为 $y(1)=1$.
]
]

#ezexam.question[
（本题满分10分）设平面区域 $D={(x,y) bar 1<=x^2+y^2<=4,x>=0,y>=0}$，计算 $integral.double_D (x sin(pi sqrt(x^2+y^2)))/(x+y)dif x dif y$.
#ezexam.solution(show-number: false)[
$ &integral.double_D (x sin(pi sqrt(x^2+y^2)))/(x+y)dif x dif y \
&=integral_0^(pi/2)(cos theta)/(cos theta+sin theta)dif theta dot integral_1^2 r sin(pi r)dif r. $
由于
$ &integral_0^(pi/2)(cos theta)/(cos theta+sin theta)dif theta \
&=integral_0^(pi/2)(sin theta)/(cos theta+sin theta)dif theta \
&=1/2 integral_0^(pi/2)(cos theta+sin theta)/(cos theta+sin theta)dif theta=pi/4, $
$ integral_1^2 r sin(pi r)dif r=1/pi(-r cos(pi r)+1/pi sin(pi r))|_1^2=-3/pi, $
故所求积分为 $-3/4$.
]
]

#ezexam.question[
（本题满分10分）设函数 $f(u)$ 具有2阶连续导数，$z=f(e^x cos y)$ 满足
$ (partial^2 z)/(partial x^2)+(partial^2 z)/(partial y^2)=(4z+e^x cos y)e^(2x). $
若 $f(0)=0,f'(0)=0$，求 $f(u)$ 的表达式.
#ezexam.solution(show-number: false)[
因为
$ (partial z)/(partial x)=f'(e^x cos y)e^x cos y, $
$ (partial^2 z)/(partial x^2)=f''(e^x cos y)e^(2x)cos^2 y+f'(e^x cos y)e^x cos y, $
$ (partial z)/(partial y)=-f'(e^x cos y)e^x sin y, $
$ (partial^2 z)/(partial y^2)=f''(e^x cos y)e^(2x)sin^2 y-f'(e^x cos y)e^x cos y, $
所以所给方程化为
$ f''(e^x cos y)e^(2x)=[4f(e^x cos y)+e^x cos y]e^(2x). $
从而函数 $f(u)$ 满足方程 $f''(u)=4f(u)+u$.对应的齐次方程通解为 $f(u)=C_1 e^(2u)+C_2 e^(-2u)$，非齐次方程的一个特解为 $-u/4$，故通解为
$ f(u)=C_1 e^(2u)+C_2 e^(-2u)-u/4. $
由 $f(0)=0,f'(0)=0$ 得 $cases(C_1+C_2=0,2C_1-2C_2-1/4=0)$，解得 $C_1=1/16,C_2=-1/16$.故
$ f(u)=1/16(e^(2u)-e^(-2u)-4u). $
]
]

#ezexam.question[
（本题满分10分）设函数 $f(x),g(x)$ 在区间 $[a,b]$ 上连续，且 $f(x)$ 单调增加，$0<=g(x)<=1$.证明：

（Ⅰ）$0<=integral_a^x g(t)dif t<=x-a,x in [a,b]$；

（Ⅱ）$integral_a^(a+integral_a^b g(t)dif t)f(x)dif x<=integral_a^b f(x)g(x)dif x$.
#ezexam.solution(show-number: false)[
（Ⅰ）因为 $0<=g(x)<=1$，所以当 $x in [a,b]$ 时，有
$ integral_a^x 0 dif t<=integral_a^x g(t)dif t<=integral_a^x 1 dif t, $
即 $0<=integral_a^x g(t)dif t<=x-a$.

（Ⅱ）令
$ F(x)=integral_a^(a+integral_a^x g(u)dif u)f(t)dif t-integral_a^x f(t)g(t)dif t,quad x in [a,b]. $
因为 $f(x),g(x)$ 在区间 $[a,b]$ 上连续，所以 $F(x)$ 在区间 $[a,b]$ 上可导，且
$ F'(x)=[f(a+integral_a^x g(u)dif u)-f(x)]g(x). $
由（Ⅰ）知 $a+integral_a^x g(u)dif u<=x$，又因为 $f(x)$ 单调增加，且 $g(x)>=0$，所以 $F'(x)<=0$，从而 $F(x)$ 在区间 $[a,b]$ 上单调减少.

又 $F(a)=0$，故 $F(b)<=0$，即
$ integral_a^(a+integral_a^b g(t)dif t)f(x)dif x<=integral_a^b f(x)g(x)dif x. $
]
]

#ezexam.question[
（本题满分11分）设函数 $f(x)=x/(1+x),x in [0,1]$.定义函数列：$f_1(x)=f(x),f_2(x)=f(f_1(x)),dots,f_n(x)=f(f_(n-1)(x)),dots$.记 $S_n$ 是由曲线 $y=f_n(x)$、直线 $x=1$ 及 $x$ 轴所围平面图形的面积，求极限 $lim_(n->infinity)n S_n$.
#ezexam.solution(show-number: false)[
$ f_2(x)=f(f_1(x))=f_1(x)/(1+f_1(x))=(x/(1+x))/(1+x/(1+x))=x/(1+2x); $
$ f_3(x)=f(f_2(x))=f_2(x)/(1+f_2(x))=x/(1+3x). $
由数学归纳法得 $f_n(x)=x/(1+n x)(n=1,2,3,dots)$.于是
$ S_n&=integral_0^1 x/(1+n x)dif x=1/n integral_0^1(1-1/(1+n x))dif x \
&=1/n-(ln(1+n))/n^2. $
故 $lim_(n->infinity)n S_n=lim_(n->infinity)(1-(ln(1+n))/n)=1$.
]
]

#ezexam.question[
（本题满分11分）已知函数 $f(x,y)$ 满足 $(partial f)/(partial y)=2(y+1)$，且 $f(y,y)=(y+1)^2-(2-y)ln y$，求曲线 $f(x,y)=0$ 所围图形绕直线 $y=-1$ 旋转所成旋转体的体积.
#ezexam.solution(show-number: false)[
由 $(partial f)/(partial y)=2(y+1)$ 得 $f(x,y)=(y+1)^2+g(x)$.又 $f(y,y)=(y+1)^2-(2-y)ln y$，得 $g(y)=-(2-y)ln y$，因此
$ f(x,y)=(y+1)^2-(2-x)ln x. $
于是，曲线 $f(x,y)=0$ 的方程为 $(y+1)^2=(2-x)ln x (1<=x<=2)$.其所围图形绕直线 $y=-1$ 旋转所成旋转体的体积
$ V&=pi integral_1^2(y+1)^2 dif x=pi integral_1^2(2-x)ln x dif x \
&=pi[-1/2(2-x)^2 ln x+1/4 x^2-2x+2ln x]_1^2 \
&=(2ln 2-5/4)pi. $
]
]

#ezexam.question[
（本题满分11分）设 $A=mat(1,-2,3,-4;0,1,-1,1;1,2,0,-3)$，$E$ 为3阶单位矩阵.

（Ⅰ）求方程组 $A x=0$ 的一个基础解系；

（Ⅱ）求满足 $A B=E$ 的所有矩阵 $B$.
#ezexam.solution(show-number: false)[
（Ⅰ）对矩阵 $A$ 施以初等行变换
$ A=mat(1,-2,3,-4;0,1,-1,1;1,2,0,-3)arrow.r mat(1,0,0,1;0,1,0,-2;0,0,1,-3), $
则方程组 $A x=0$ 的一个基础解系为 $alpha=mat(-1;2;3;1)$.

（Ⅱ）对矩阵 $(A colon E)$ 施以初等行变换
$ &mat(1,-2,3,-4,1,0,0;0,1,-1,1,0,1,0;1,2,0,-3,0,0,1,augment: #4) \
&arrow.r mat(1,0,0,1,2,6,-1;0,1,0,-2,-1,-3,1;0,0,1,-3,-1,-4,1,augment: #4). $
记 $E=(e_1,e_2,e_3)$，则
$ A x=e_1 $ 的通解为 $x=mat(2;-1;-1;0)+k_1 alpha$；

$ A x=e_2 $ 的通解为 $x=mat(6;-3;-4;0)+k_2 alpha$；

$ A x=e_3 $ 的通解为 $x=mat(-1;1;1;0)+k_3 alpha$，其中 $k_1,k_2,k_3$ 为任意常数.

于是，所求矩阵为
$ B=mat(2,6,-1;-1,-3,1;-1,-4,1;0,0,0)+(k_1 alpha,k_2 alpha,k_3 alpha), $
$k_1,k_2,k_3$ 为任意常数.
]
]

#ezexam.question[
（本题满分11分）证明 $n$ 阶矩阵 $mat(1,1,dots,1;1,1,dots,1;dots.v,dots.v,,dots.v;1,1,dots,1)$ 与 $mat(0,dots,0,1;0,dots,0,2;dots.v,,dots.v,dots.v;0,dots,0,n)$ 相似.
#ezexam.solution(show-number: false)[
设 $A=mat(1,1,dots,1;1,1,dots,1;dots.v,dots.v,,dots.v;1,1,dots,1),B=mat(0,dots,0,1;0,dots,0,2;dots.v,,dots.v,dots.v;0,dots,0,n)$.
因为
$ |lambda E-A|=mat(delim: "|", lambda-1,-1,dots,-1;-1,lambda-1,dots,-1;dots.v,dots.v,,dots.v;-1,-1,dots,lambda-1)=(lambda-n)lambda^(n-1), $
$ |lambda E-B|=mat(delim: "|", lambda,0,dots,-1;0,lambda,dots,-2;dots.v,dots.v,,dots.v;0,0,dots,lambda-n)=(lambda-n)lambda^(n-1), $
所以 $A$ 与 $B$ 有相同的特征值 $lambda_1=n,lambda_2=0$（$n-1$ 重）.

由于 $A$ 为实对称矩阵，所以 $A$ 相似于对角矩阵 $Lambda=mat(n,0,dots,0;0,0,dots,0;dots.v,dots.v,dots.down,dots.v;0,0,dots,0)$.

因为 $"r"(lambda_2 E-B)="r"(B)=1$，所以 $B$ 对应于特征值 $lambda_2=0$ 有 $n-1$ 个线性无关的特征向量，于是 $B$ 也相似于 $Lambda$.故 $A$ 与 $B$ 相似.
]
]

