#import "../template.typ": exam
#show: exam.with(year: 2013, subject: "二")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#ezexam.answer-state.update(true)


= 一、选择题：1—8小题，每小题4分，共32分. 在每小题给出的四个选项中，只有一项符合题目要求，把所选项前的字母填在题后的括号内.

#ezexam.question[
设 $cos x-1=x sin alpha(x)$，其中 $|alpha(x)|<pi/2$，则当 $x->0$ 时，$alpha(x)$ 是
#choices([比 $x$ 高阶的无穷小量.],[比 $x$ 低阶的无穷小量.],[与 $x$ 同阶但不等价的无穷小量.],[与 $x$ 等价的无穷小量.])
#ezexam.solution(show-number: false)[
C.
]
]

#ezexam.question[
设函数 $y=f(x)$ 由方程 $cos(x y)+ln y-x=1$ 确定，则 $lim_(n->infinity)n[f(2/n)-1]=$
#choices([2.],[1.],[$-1$.],[$-2$.])
#ezexam.solution(show-number: false)[
A.
]
]

#ezexam.question[
设函数 $f(x)=cases(sin x & 0<=x<pi,2 & pi<=x<=2pi)$，$F(x)=integral_0^x f(t)dif t$，则
#choices([$x=pi$ 是函数 $F(x)$ 的跳跃间断点.],[$x=pi$ 是函数 $F(x)$ 的可去间断点.],[$F(x)$ 在 $x=pi$ 处连续但不可导.],[$F(x)$ 在 $x=pi$ 处可导.])
#ezexam.solution(show-number: false)[
C.
]
]

#ezexam.question[
设函数 $f(x)=cases(1/(x-1)^(alpha-1) & 1<x<e,1/(x ln^(alpha+1)x) & x>=e)$.若反常积分 $integral_1^infinity f(x)dif x$ 收敛，则
#choices([$alpha<-2$.],[$alpha>2$.],[$-2<alpha<0$.],[$0<alpha<2$.])
#ezexam.solution(show-number: false)[
D.
]
]

#ezexam.question[
设 $z=y/x f(x y)$，其中函数 $f$ 可微，则 $x/y (partial z)/(partial x)+(partial z)/(partial y)=$
#choices([$2y f'(x y)$.],[$-2y f'(x y)$.],[$2/x f(x y)$.],[$-2/x f(x y)$.])
#ezexam.solution(show-number: false)[
A.
]
]

#ezexam.question[
设 $D_k$ 是圆域 $D={(x,y) bar x^2+y^2<=1}$ 在第 $k$ 象限的部分，记 $I_k=integral.double_(D_k)(y-x)dif x dif y (k=1,2,3,4)$，则
#choices([$I_1>0$.],[$I_2>0$.],[$I_3>0$.],[$I_4>0$.])
#ezexam.solution(show-number: false)[
B.
]
]

#ezexam.question[
设 $A,B,C$ 均为 $n$ 阶矩阵，且 $A B=C$.若 $B$ 可逆，则
#choices([$C$ 的行向量组与 $A$ 的行向量组等价.],[$C$ 的列向量组与 $A$ 的列向量组等价.],[$C$ 的行向量组与 $B$ 的行向量组等价.],[$C$ 的列向量组与 $B$ 的列向量组等价.])
#ezexam.solution(show-number: false)[
B.
]
]

#ezexam.question[
矩阵 $mat(1,a,1;a,b,a;1,a,1)$ 与 $mat(2,0,0;0,b,0;0,0,0)$ 相似的充分必要条件为
#choices([$a=0,b=2$.],[$a=0,b$ 为任意常数.],[$a=2,b=0$.],[$a=2,b$ 为任意常数.])
#ezexam.solution(show-number: false)[
B.
]
]

= 二、填空题：9—14小题，每小题4分，共24分. 把答案填在题中横线上.

#ezexam.question[
$lim_(x->0)[2-(ln(1+x))/x]^(1/x)=$#h(3em).
#ezexam.solution(show-number: false)[
$sqrt(e)$.
]
]

#ezexam.question[
设函数 $f(x)=integral_(-1)^x sqrt(1-e^t)dif t$，则 $y=f(x)$ 的反函数 $x=f^(-1)(y)$ 在 $y=0$ 处的导数 $(dif x)/(dif y)|_(y=0)=$#h(3em).
#ezexam.solution(show-number: false)[
$1/sqrt(1-e^(-1))$.
]
]

#ezexam.question[
设封闭曲线 $L$ 的极坐标方程为 $r=cos 3theta (-pi/6<=theta<=pi/6)$，则 $L$ 所围平面图形的面积是#h(3em).
#ezexam.solution(show-number: false)[
$pi/12$.
]
]

#ezexam.question[
曲线 $cases(x=arctan t,y=ln sqrt(1+t^2))$ 上对应于 $t=1$ 的点处的法线方程为#h(3em).
#ezexam.solution(show-number: false)[
$x+y=pi/4+1/2 ln 2$.
]
]

#ezexam.question[
已知 $y_1=e^(3x)-x e^(2x),y_2=e^x-x e^(2x),y_3=-x e^(2x)$ 是某二阶常系数非齐次线性微分方程的3个解，则该方程满足条件 $y|_(x=0)=0,y'|_(x=0)=1$ 的解为 $y=$#h(3em).
#ezexam.solution(show-number: false)[
$-e^x+e^(3x)-x e^(2x)$.
]
]

#ezexam.question[
设 $A=(a_(i j))$ 是3阶非零矩阵，$A_(i j)$ 为元素 $a_(i j)$ 的代数余子式，若 $a_(i j)+A_(i j)=0 (i,j=1,2,3)$，则 $|A|=$#h(3em).
#ezexam.solution(show-number: false)[
$-1$.
]
]

= 三、解答题：15—23小题，共94分. 解答应写出文字说明、证明过程或演算步骤.

#ezexam.question[
（本题满分10分）当 $x->0$ 时，$1-cos x cos 2x cos 3x$ 与 $a x^n$ 为等价无穷小量，求 $n$ 与 $a$ 的值.
#ezexam.solution(show-number: false)[
$ &lim_(x->0)(1-cos x cos 2x cos 3x)/(a x^n) \
&=lim_(x->0)(sin x cos 2x cos 3x+2cos x sin 2x cos 3x+3cos x cos 2x sin 3x)/(a n x^(n-1)). $
由于当 $n=2$ 时，
$ lim_(x->0)(sin x cos 2x cos 3x)/(a n x^(n-1))=1/(2a), $
$ lim_(x->0)(2cos x sin 2x cos 3x)/(a n x^(n-1))=4/(2a), $
$ lim_(x->0)(3cos x cos 2x sin 3x)/(a n x^(n-1))=9/(2a), $
所以 $lim_(x->0)(1-cos x cos 2x cos 3x)/(a x^n)=7/a$.

由题设知 $7/a=1$，故 $a=7$.当 $n!=2$ 时，显然不合题意，所以 $a=7,n=2$.
]
]

#ezexam.question[
（本题满分10分）设 $D$ 是由曲线 $y=x^(1/3)$、直线 $x=a (a>0)$ 及 $x$ 轴所围成的平面图形，$V_x,V_y$ 分别是 $D$ 绕 $x$ 轴、$y$ 轴旋转一周所得旋转体的体积.若 $V_y=10V_x$，求 $a$ 的值.
#ezexam.solution(show-number: false)[
$ V_x=pi integral_0^a x^(2/3)dif x=(3pi a^(5/3))/5, $
$ V_y&=pi a^(7/3)-pi integral_0^(a^(1/3))y^6 dif y \
&=pi a^(7/3)-(pi a^(7/3))/7=(6pi a^(7/3))/7. $
由 $V_y=10V_x$，即 $(6pi a^(7/3))/7=10 dot (3pi a^(5/3))/5$，解得 $a=7sqrt(7)$.
]
]

#ezexam.question[
（本题满分10分）设平面区域 $D$ 由直线 $x=3y,y=3x$ 及 $x+y=8$ 围成，计算 $integral.double_D x^2 dif x dif y$.
#ezexam.solution(show-number: false)[
$ integral.double_D x^2 dif x dif y&=integral_0^2 dif x integral_(x/3)^(3x)x^2 dif y+integral_2^6 dif x integral_(x/3)^(8-x)x^2 dif y \
&=8/3 integral_0^2 x^3 dif x+integral_2^6(8x^2-4/3 x^3)dif x \
&=2/3 x^4|_0^2+(8/3 x^3-1/3 x^4)|_2^6=416/3. $
]
]

#ezexam.question[
（本题满分10分）设 $f(x)$ 是区间 $[-1,1]$ 上具有二阶导数的奇函数，且 $f(1)=1$.证明：

（Ⅰ）存在 $xi in (0,1)$，使得 $f'(xi)=1$；

（Ⅱ）存在 $eta in (-1,1)$，使得 $f''(eta)+f'(eta)=1$.
#ezexam.solution(show-number: false)[
（Ⅰ）因为 $f(x)$ 是奇函数，所以 $f(0)=0$.由拉格朗日中值定理，存在 $xi in (0,1)$，使得
$ f'(xi)=(f(1)-f(0))/(1-0)=1. $

（Ⅱ）由于 $f(x)$ 是奇函数，故 $f'(x)$ 是偶函数，即 $f'(-xi)=f'(xi)=1$.

令 $F(x)=[f'(x)-1]e^x$，则 $F(-xi)=F(xi)=0$.由罗尔定理，存在 $eta in (-xi,xi) subset (-1,1)$，使得
$ F'(eta)=e^eta[f''(eta)+f'(eta)-1]=0. $
因 $e^eta!=0$，故 $f''(eta)+f'(eta)=1$.
]
]

#ezexam.question[
（本题满分10分）求曲线 $x^3-x y+y^3=1 (x>=0,y>=0)$ 上的点到坐标原点的最长距离与最短距离.
#ezexam.solution(show-number: false)[
设 $(x,y)$ 为曲线上的点，目标函数为 $f(x,y)=x^2+y^2$.构造拉格朗日函数
$ L(x,y,lambda)=x^2+y^2+lambda(x^3-x y+y^3-1). $
令
$ (partial L)/(partial x)=2x+(3x^2-y)lambda=0, quad "①" $
$ (partial L)/(partial y)=2y+(3y^2-x)lambda=0, quad "②" $
$ (partial L)/(partial lambda)=x^3-x y+y^3-1=0. quad "③" $
当 $x>0,y>0$ 时，由①、②得
$ x/y=(3x^2-y)/(3y^2-x), $
即 $3x y(y-x)=(x+y)(x-y)$，得 $y=x$ 或 $3x y=-(x+y)$（由于 $x>0,y>0$，舍去）.

将 $y=x$ 代入③得 $2x^3-x^2-1=0$，即 $(2x^2+x+1)(x-1)=0$，所以 $(1,1)$ 为唯一可能的极值点，此时 $sqrt(x^2+y^2)=sqrt(2)$.

当 $x=0,y=1$ 或 $x=1,y=0$ 时，$sqrt(x^2+y^2)=1$.

故所求最长距离为 $sqrt(2)$，最短距离为1.
]
]

#ezexam.question[
（本题满分11分）设函数 $f(x)=ln x+1/x$.

（Ⅰ）求 $f(x)$ 的最小值；

（Ⅱ）设数列 $x_n$ 满足 $ln x_n+1/x_(n+1)<1$，证明 $lim_(n->infinity)x_n$ 存在，并求此极限.
#ezexam.solution(show-number: false)[
（Ⅰ）$f'(x)=(x-1)/x^2$.令 $f'(x)=0$，解得 $f(x)$ 的唯一驻点 $x=1$.又 $f''(1)=(2-x)/x^3|_(x=1)=1>0$，故 $f(1)=1$ 是唯一极小值，即最小值.

（Ⅱ）由（Ⅰ）的结果知 $ln x+1/x>=1$，从而有
$ ln x_n+1/x_(n+1)<1<=ln x_n+1/x_n, $
于是 $x_n<=x_(n+1)$，即数列 $x_n$ 单调增加.

又由 $ln x_n+1/x_(n+1)<1$ 知 $ln x_n<1$，得 $x_n<e$.从而数列 $x_n$ 单调增加且有上界，故 $lim_(n->infinity)x_n$ 存在.

记 $lim_(n->infinity)x_n=a$，可知 $a>=x_1>0$.在不等式 $ln x_n+1/x_(n+1)<1$ 两边取极限，得 $ln a+1/a<=1$.又 $ln a+1/a>=1$，故 $ln a+1/a=1$，可得 $a=1$，即 $lim_(n->infinity)x_n=1$.
]
]

#ezexam.question[
（本题满分11分）设曲线 $L$ 的方程为 $y=1/4 x^2-1/2 ln x (1<=x<=e)$.

（Ⅰ）求 $L$ 的弧长；

（Ⅱ）设 $D$ 是由曲线 $L$、直线 $x=1,x=e$ 及 $x$ 轴所围平面图形，求 $D$ 的形心的横坐标.
#ezexam.solution(show-number: false)[
（Ⅰ）$y'=1/2(x-1/x)$，则 $L$ 的弧长
$ s&=integral_1^e sqrt(1+(y')^2)dif x=1/2 integral_1^e(x+1/x)dif x \
&=1/2(x^2/2+ln x)|_1^e=(e^2+1)/4. $

（Ⅱ）
$ integral_1^e x(1/4 x^2-1/2 ln x)dif x&=(1/16 x^4-1/4 x^2 ln x+1/8 x^2)|_1^e \
&=1/16(e^2+1)(e^2-3), $
$ integral_1^e(1/4 x^2-1/2 ln x)dif x&=(1/12 x^3-1/2 x ln x+1/2 x)|_1^e \
&=1/12 e^3-7/12. $
所以 $D$ 的形心的横坐标为 $(3(e^2+1)(e^2-3))/(4(e^3-7))$.
]
]

#ezexam.question[
（本题满分11分）设 $A=mat(1,a;1,0),B=mat(0,1;1,b)$.问 $a,b$ 为何值时，存在矩阵 $C$ 使得 $A C-C A=B$，并求所有矩阵 $C$.
#ezexam.solution(show-number: false)[
令 $C=mat(x_1,x_2;x_3,x_4)$，则 $A C-C A=B$ 等价于方程组
$ cases(-x_2+a x_3=0,-a x_1+x_2+a x_4=1,x_1-x_3-x_4=1,x_2-a x_3=b). $
其增广矩阵经初等行变换化为
$ &mat(0,-1,a,0,0;-a,1,0,a,1;1,0,-1,-1,1;0,1,-a,0,b,augment: #4) \
&arrow.r mat(1,0,-1,-1,1;0,1,-a,0,0;0,0,0,0,a+1;0,0,0,0,b,augment: #4). $
当 $a!=-1$ 或 $b!=0$ 时，方程组无解.当 $a=-1,b=0$ 时，方程组的通解为
$ mat(x_1;x_2;x_3;x_4)=mat(1;0;0;0)+k_1 mat(1;-1;1;0)+k_2 mat(1;0;0;1). $
故当且仅当 $a=-1,b=0$ 时，存在矩阵 $C$，且所有矩阵为
$ C=mat(1+k_1+k_2,-k_1;k_1,k_2), $
其中 $k_1,k_2$ 为任意常数.
]
]

#ezexam.question[
（本题满分11分）设二次型 $f(x_1,x_2,x_3)=2(a_1 x_1+a_2 x_2+a_3 x_3)^2+(b_1 x_1+b_2 x_2+b_3 x_3)^2$，记 $alpha=(a_1,a_2,a_3)^T,beta=(b_1,b_2,b_3)^T$.

（Ⅰ）证明二次型 $f$ 的矩阵为 $A=2alpha alpha^T+beta beta^T$；

（Ⅱ）若 $alpha,beta$ 为正交单位向量，证明 $f$ 在正交变换下的标准形为 $2y_1^2+y_2^2$.
#ezexam.solution(show-number: false)[
（Ⅰ）记 $x=(x_1,x_2,x_3)^T$，则
$ f&=2(x^T alpha)(alpha^T x)+(x^T beta)(beta^T x) \
&=2x^T alpha alpha^T x+x^T beta beta^T x \
&=x^T(2alpha alpha^T+beta beta^T)x. $
由于 $2alpha alpha^T+beta beta^T$ 为对称矩阵，故二次型 $f$ 的矩阵为 $A=2alpha alpha^T+beta beta^T$.

（Ⅱ）由 $alpha^T alpha=beta^T beta=1,alpha^T beta=0$ 得
$ A alpha=2alpha,quad A beta=beta. $
所以 $A$ 的两个特征值为2和1.又
$ "r"(A)<="r"(2alpha alpha^T)+"r"(beta beta^T)<=2, $
故 $A$ 的另一个特征值为0.因此二次型 $f$ 的标准形为
$ 2y_1^2+y_2^2. $
]
]

