#import "../template.typ": exam
#show: exam.with(year: 2008, subject: "二", title: "2008年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#ezexam.answer-state.update(true)


= 一、选择题：1—8小题，每小题4分，共32分. 在每小题给出的四个选项中，只有一项符合题目要求，把所选项前的字母填在题后的括号内.

#ezexam.question[
设函数 $f(x)=x^2(x-1)(x-2)$，则 $f'(x)$ 的零点个数为（　）.
#choices([0], [1], [2], [3])
#ezexam.solution(show-number: false)[
D.
]
]

#ezexam.question[
如图，曲线段的方程为 $y=f(x)$，函数 $f(x)$ 在区间 $[0,a]$ 上有连续的导数，则定积分 $integral_0^a x f'(x)dif x$ 等于（　）.
#import "@preview/cetz:0.3.4": canvas, draw
#canvas({
 import draw: *
 line((-0.3,0),(3.8,0),mark:(end:"stealth"));line((0,-0.3),(0,3.8),mark:(end:"stealth"))
 line((0,3),(3,3),(3,0));line((0,0.6),(3,3));bezier((0,0.6),(3,3),(0.9,2.2),(1.9,3))
 content((3.9,0),$x$);content((0,4),$y$);content((-0.2,-0.2),$O$)
 content((3.65,3.1),$A(a,f(a))$);content((3,-0.35),$B(a,0)$)
 content((-0.9,3),$C(0,f(a))$);content((-0.2,0.6),$D$);content((0.8,2.7),$y=f(x)$)
})
#choices([曲边梯形 $A B O D$ 的面积], [梯形 $A B O D$ 的面积], [曲边三角形 $A C D$ 的面积], [三角形 $A C D$ 的面积])
#ezexam.solution(show-number: false)[
C.
]
]

#ezexam.question[
在下列微分方程中，以 $y=C_1 e^x+C_2 cos 2x+C_3 sin 2x$（$C_1,C_2,C_3$ 为任意常数）为通解的是（　）.
#choices([$y'''+y''-4y'-4y=0$], [$y'''+y''+4y'+4y=0$], [$y'''-y''-4y'+4y=0$], [$y'''-y''+4y'-4y=0$])
#ezexam.solution(show-number: false)[
D.
]
]

#ezexam.question[
设函数 $f(x)=ln abs(x)/abs(x-1) sin x$，则 $f(x)$ 有（　）.
#choices([1个可去间断点，1个跳跃间断点], [1个可去间断点，1个无穷间断点], [2个跳跃间断点], [2个无穷间断点])
#ezexam.solution(show-number: false)[
A.
]
]

#ezexam.question[
设函数 $f(x)$ 在 $(-infinity,+infinity)$ 内单调有界，${x_n}$ 为数列，下列命题正确的是（　）.
#choices([若 ${x_n}$ 收敛，则 ${f(x_n)}$ 收敛], [若 ${x_n}$ 单调，则 ${f(x_n)}$ 收敛], [若 ${f(x_n)}$ 收敛，则 ${x_n}$ 收敛], [若 ${f(x_n)}$ 单调，则 ${x_n}$ 收敛])
#ezexam.solution(show-number: false)[
B.
]
]

#ezexam.question[
设函数 $f$ 连续.若 $F(u,v)=integral.double_(D_(u v)) f(x^2+y^2)/sqrt(x^2+y^2) dif x dif y$，其中区域 $D_(u v)$ 为图中阴影部分，则 $(partial F)/(partial u)=$（　）.
#import "@preview/cetz:0.3.4": canvas, draw
#canvas({
 import draw: *
 let pt(r,a)=(r*calc.cos(a),r*calc.sin(a))
 let v=35deg
 line((-0.3,0),(3.8,0),mark:(end:"stealth"));line((0,-0.3),(0,3.8),mark:(end:"stealth"))
 arc((0,0),anchor:"origin",start:0deg,stop:90deg,radius:1.5);arc((0,0),anchor:"origin",start:0deg,stop:90deg,radius:3)
 line((0,0),pt(3,v));arc((0,0),anchor:"origin",start:0deg,stop:v,radius:0.6)
 for a in range(0,35,step:5) {line(pt(1.55,a*1deg),pt(2.95,(a+4)*1deg),stroke:0.4pt)}
 content((3.9,0),$x$);content((0,4),$y$);content((-0.2,-0.2),$O$);content((0.8,0.2),$v$)
 content((1.25,1.85),$x^2+y^2=1$);content((2.4,3.1),$x^2+y^2=u^2$);content((2.25,0.65),$D_(u v)$)
})
#choices([$v f(u^2)$], [$v/u f(u^2)$], [$v f(u)$], [$v/u f(u)$])
#ezexam.solution(show-number: false)[
A.
]
]

#ezexam.question[
设 $A$ 为 $n$ 阶非零矩阵，$E$ 为 $n$ 阶单位矩阵.若 $A^3=O$，则（　）.
#choices([$E-A$ 不可逆，$E+A$ 不可逆], [$E-A$ 不可逆，$E+A$ 可逆], [$E-A$ 可逆，$E+A$ 可逆], [$E-A$ 可逆，$E+A$ 不可逆])
#ezexam.solution(show-number: false)[
C.
]
]

#ezexam.question[
设 $A=mat(1,2;2,1)$，则在实数域上与 $A$ 合同的矩阵为（　）.
#choices([$mat(-2,1;1,-2)$], [$mat(2,-1;-1,2)$], [$mat(2,1;1,2)$], [$mat(1,-2;-2,1)$])
#ezexam.solution(show-number: false)[
D.
]
]

= 二、填空题：9—14小题，每小题4分，共24分. 把答案填在题中横线上.

#ezexam.question[
已知函数 $f(x)$ 连续，且 $lim_(x->0) (1-cos[x f(x)])/((e^(x^2)-1)f(x))=1$，则 $f(0)=$#h(2cm).
#ezexam.solution(show-number: false)[
2.
]
]

#ezexam.question[
微分方程 $(y+x^2 e^(-x))dif x-x dif y=0$ 的通解是 $y=$#h(2cm).
#ezexam.solution(show-number: false)[
$x(C-e^(-x))$.
]
]

#ezexam.question[
曲线 $sin(x y)+ln(y-x)=x$ 在点 $(0,1)$ 处的切线方程是#h(2cm).
#ezexam.solution(show-number: false)[
$y=x+1$.
]
]

#ezexam.question[
曲线 $y=(x-5)x^(2/3)$ 的拐点坐标为#h(2cm).
#ezexam.solution(show-number: false)[
$(-1,-6)$.
]
]

#ezexam.question[
设 $z=(y/x)^(x/y)$，则 $lr.|(partial z)/(partial x)|_((1,2))=$#h(2cm).
#ezexam.solution(show-number: false)[
$sqrt(2)/2 (ln 2-1)$.
]
]

#ezexam.question[
设3阶矩阵 $A$ 的特征值为 $2,3,lambda$.若行列式 $abs(2A)=-48$，则 $lambda=$#h(2cm).
#ezexam.solution(show-number: false)[
$-1$.
]
]

= 三、解答题：15—23小题，共94分. 解答应写出文字说明、证明过程或演算步骤.

#ezexam.question[
（本题满分9分）
求极限 $lim_(x->0) ([sin x-sin(sin x)]sin x)/x^4$.
#ezexam.solution(show-number: false)[
解　$ lim_(x->0) ([sin x-sin(sin x)]sin x)/x^4 \
=lim_(x->0) (sin x-sin(sin x))/x^3 \
=lim_(x->0) (cos x-cos(sin x)cos x)/(3x^2) \
=lim_(x->0) (1-cos(sin x))/(3x^2) \
=lim_(x->0) ((1/2)sin^2 x)/(3x^2)=1/6. $
]
]

#ezexam.question[
（本题满分10分）
设函数 $y=y(x)$ 由参数方程 $cases(x=x(t),y=integral_0^(t^2) ln(1+u)dif u)$ 确定，其中 $x(t)$ 是初值问题 $cases((dif x)/(dif t)-2t e^(-x)=0,lr.|x|_(t=0)=0)$ 的解.求 $(dif^2 y)/(dif x^2)$.
#ezexam.solution(show-number: false)[
解　由 $(dif x)/(dif t)-2t e^(-x)=0$ 得 $e^x dif x=2t dif t$，积分并由条件 $lr.|x|_(t=0)=0$，得 $e^x=1+t^2$，即 $x=ln(1+t^2)$.
$ (dif y)/(dif x)=((dif y)/(dif t))/((dif x)/(dif t))=(ln(1+t^2)dot 2t)/(2t/(1+t^2))=(1+t^2)ln(1+t^2), $
$ (dif^2 y)/(dif x^2)=dif/(dif x)((dif y)/(dif x))=(dif/(dif t)[(1+t^2)ln(1+t^2)])/((dif x)/(dif t)) \
=(2t ln(1+t^2)+2t)/(2t/(1+t^2))=(1+t^2)[ln(1+t^2)+1]. $
]
]

#ezexam.question[
（本题满分9分）
计算 $integral_0^1 (x^2 arcsin x)/sqrt(1-x^2)dif x$.
#ezexam.solution(show-number: false)[
解　由于 $lim_(x->1^-) (x^2 arcsin x)/sqrt(1-x^2)=+infinity$，故 $integral_0^1 (x^2 arcsin x)/sqrt(1-x^2)dif x$ 是反常积分.

令 $arcsin x=t$，有 $x=sin t$，$t in [0,pi/2)$，
$ integral_0^1 (x^2 arcsin x)/sqrt(1-x^2)dif x \
=integral_0^(pi/2) (t sin^2 t)/(cos t)cos t dif t \
=integral_0^(pi/2) t sin^2 t dif t \
=integral_0^(pi/2) (t/2-(t cos 2t)/2)dif t \
=lr.|t^2/4|_0^(pi/2)-1/4 integral_0^(pi/2) t dif(sin 2t) \
=pi^2/16-lr.|(t sin 2t)/4|_0^(pi/2)+1/4 integral_0^(pi/2) sin 2t dif t \
=pi^2/16-lr.|1/8 cos 2t|_0^(pi/2)=pi^2/16+1/4. $
]
]

#ezexam.question[
（本题满分11分）
计算 $integral.double_D max{x y,1}dif x dif y$，其中 $D={(x,y)bar 0<=x<=2,0<=y<=2}$.
#ezexam.solution(show-number: false)[
解　曲线 $x y=1$ 将区域 $D$ 分成如图所示的两个区域 $D_1$ 和 $D_2$.
#import "@preview/cetz:0.3.4": canvas, draw
#canvas({
 import draw: *
 line((-0.3,0),(2.8,0),mark:(end:"stealth"));line((0,-0.3),(0,2.7),mark:(end:"stealth"))
 line((0,2),(2,2),(2,0));line((0.5,0),(0.5,2),stroke:(dash:"dashed"))
 let pts=range(0,41).map(i=>{let x=0.5+1.5*i/40;(x,1/x)})
 line(..pts)
 content((2.9,0),$x$);content((0,2.9),$y$);content((-0.2,-0.2),$O$);content((-0.2,2),[2]);content((2,-0.2),[2]);content((0.5,-0.35),$1/2$)
 content((1.3,1.6),$D_1$);content((0.35,0.55),$D_2$)
})
$ integral.double_D max{x y,1}dif x dif y \
=integral.double_(D_1) x y dif x dif y+integral.double_(D_2) dif x dif y \
=integral_(1/2)^2 dif x integral_(1/x)^2 x y dif y+integral_0^(1/2) dif x integral_0^2 dif y+integral_(1/2)^2 dif x integral_0^(1/x) dif y \
=15/4-ln 2+1+2ln 2=19/4+ln 2. $
]
]

#ezexam.question[
（本题满分11分）
设 $f(x)$ 是区间 $[0,+infinity)$ 上具有连续导数的单调增加函数，且 $f(0)=1$.对任意的 $t in [0,+infinity)$，直线 $x=0$，$x=t$，曲线 $y=f(x)$ 以及 $x$ 轴所围成的曲边梯形绕 $x$ 轴旋转一周生成一旋转体.若该旋转体的侧面积在数值上等于其体积的2倍，求函数 $f(x)$ 的表达式.
#ezexam.solution(show-number: false)[
解　旋转体的体积 $V=pi integral_0^t f^2(x)dif x$，侧面积 $S=2pi integral_0^t f(x)sqrt(1+f'^2(x))dif x$，由题设条件知
$ integral_0^t f^2(x)dif x=integral_0^t f(x)sqrt(1+f'^2(x))dif x. $
上式两端对 $t$ 求导，得 $f^2(t)=f(t)sqrt(1+f'^2(t))$，即
$ y'=sqrt(y^2-1). $
由分离变量法解得
$ ln(y+sqrt(y^2-1))=t+C_1, $
即 $y+sqrt(y^2-1)=C e^t$.

将 $y(0)=1$ 代入知 $C=1$，故
$ y+sqrt(y^2-1)=e^t, quad y=1/2 (e^t+e^(-t)), $
于是所求函数为
$ y=f(x)=1/2 (e^x+e^(-x)). $
]
]

#ezexam.question[
（本题满分11分）
（Ⅰ）证明积分中值定理：若函数 $f(x)$ 在闭区间 $[a,b]$ 上连续，则至少存在一点 $eta in [a,b]$，使得 $integral_a^b f(x)dif x=f(eta)(b-a)$；

（Ⅱ）若函数 $phi(x)$ 具有二阶导数，且满足 $phi(2)>phi(1)$，$phi(2)>integral_2^3 phi(x)dif x$，则至少存在一点 $xi in (1,3)$，使得 $phi''(xi)<0$.
#ezexam.solution(show-number: false)[
证　（Ⅰ）设 $M$ 与 $m$ 是连续函数 $f(x)$ 在 $[a,b]$ 上的最大值与最小值，即
$ m<=f(x)<=M, quad x in [a,b]. $
由定积分性质，有
$ m(b-a)<=integral_a^b f(x)dif x<=M(b-a), $
即 $m<=1/(b-a)integral_a^b f(x)dif x<=M$.

由连续函数介值定理可知，至少存在一点 $eta in [a,b]$，使得 $f(eta)=1/(b-a)integral_a^b f(x)dif x$，即
$ integral_a^b f(x)dif x=f(eta)(b-a). $
（Ⅱ）由（Ⅰ）的结论，可知至少存在一点 $eta in [2,3]$，使
$ integral_2^3 phi(x)dif x=phi(eta)(3-2)=phi(eta). $
又由 $phi(2)>integral_2^3 phi(x)dif x=phi(eta)$ 知，$2<eta<=3$.

对 $phi(x)$ 在 $[1,2]$ 和 $[2,eta]$ 上分别应用拉格朗日中值定理，并注意到 $phi(1)<phi(2)$，$phi(eta)<phi(2)$，得
$ phi'(xi_1)=(phi(2)-phi(1))/(2-1)>0, quad 1<xi_1<2, $
$ phi'(xi_2)=(phi(eta)-phi(2))/(eta-2)<0, quad 2<xi_2<eta<=3. $
在 $[xi_1,xi_2]$ 上对导函数 $phi'(x)$ 应用拉格朗日中值定理，有
$ phi''(xi)=(phi'(xi_2)-phi'(xi_1))/(xi_2-xi_1)<0, quad xi in (xi_1,xi_2) subset (1,3). $
]
]

#ezexam.question[
（本题满分11分）
求函数 $u=x^2+y^2+z^2$ 在约束条件 $z=x^2+y^2$ 和 $x+y+z=4$ 下的最大值与最小值.
#ezexam.solution(show-number: false)[
解　作拉格朗日函数
$ F(x,y,z,lambda,mu)=x^2+y^2+z^2+lambda(x^2+y^2-z)+mu(x+y+z-4), $
令
$ cases(F'_x=2x+2lambda x+mu=0,F'_y=2y+2lambda y+mu=0,F'_z=2z-lambda+mu=0,F'_lambda=x^2+y^2-z=0,F'_mu=x+y+z-4=0), $
解此方程组，得 $(x_1,y_1,z_1)=(1,1,2)$，$(x_2,y_2,z_2)=(-2,-2,8)$，故所求的最大值为72，最小值为6.
]
]

#ezexam.question[
（本题满分12分）
设 $n$ 元线性方程组 $A bold(x)=bold(b)$，其中
$ A=mat(2a,1,,,;a^2,2a,1,,;,a^2,2a,1,;,,dots.down,dots.down,dots.down;,,,a^2,2a,1;,,,,a^2,2a)_(n times n), quad bold(x)=mat(x_1;x_2; dots.v;x_n), quad bold(b)=mat(1;0; dots.v;0). $
（Ⅰ）证明行列式 $abs(A)=(n+1)a^n$；

（Ⅱ）当 $a$ 为何值时，该方程组有唯一解，并求 $x_1$；

（Ⅲ）当 $a$ 为何值时，该方程组有无穷多解，并求通解.
#ezexam.solution(show-number: false)[
（Ⅰ）证法1　记
$ D_n=abs(A)=mat(delim:"|",2a,1,,,;a^2,2a,1,,;,a^2,2a,1,;,,dots.down,dots.down,dots.down;,,,a^2,2a,1;,,,,a^2,2a)_n, $
以下用数学归纳法证明 $D_n=(n+1)a^n$.

当 $n=1$ 时，$D_1=2a$，结论成立.

当 $n=2$ 时，$D_2=mat(delim:"|",2a,1;a^2,2a)=3a^2$，结论成立.

假设结论对小于 $n$ 的情况成立.将 $D_n$ 按第1行展开，得
$ D_n=2a D_(n-1)-mat(delim:"|",a^2,1,,,;0,2a,1,,;,a^2,2a,1,;,,dots.down,dots.down,dots.down;,,,a^2,2a,1;,,,,a^2,2a)_(n-1) \
=2a D_(n-1)-a^2 D_(n-2) \
=2a n a^(n-1)-a^2(n-1)a^(n-2)=(n+1)a^n, $
故 $abs(A)=(n+1)a^n$.

证法2
$ abs(A)=mat(delim:"|",2a,1,,,;a^2,2a,1,,;,a^2,2a,1,;,,dots.down,dots.down,dots.down;,,,a^2,2a,1;,,,,a^2,2a)_n $
$ arrow.r.long^(r_2-1/2 a r_1) mat(delim:"|",2a,1,,,;0,3/2 a,1,,;,a^2,2a,1,;,,dots.down,dots.down,dots.down;,,,a^2,2a,1;,,,,a^2,2a)_n $
$ arrow.r.long^(r_3-2/3 a r_2) mat(delim:"|",2a,1,,,;0,3/2 a,1,,;,0,4/3 a,1,;,,dots.down,dots.down,dots.down;,,,a^2,2a,1;,,,,a^2,2a)_n=dots $
$ arrow.r.long^(r_n-(n-1)/n a r_(n-1)) mat(delim:"|",2a,1,,,;0,3/2 a,1,,;,0,4/3 a,1,;,,dots.down,dots.down,dots.down;,,,0,n/(n-1) a,1;,,,,0,(n+1)/n a)_n=(n+1)a^n. $
（Ⅱ）解　当 $a!=0$ 时，方程组系数行列式 $D_n!=0$，故方程组有唯一解.由克莱姆法则，将 $D_n$ 的第1列换成 $bold(b)$，得行列式为
$ mat(delim:"|",1,1,,,;0,2a,1,,;,a^2,2a,1,;,,dots.down,dots.down,dots.down;,,,a^2,2a,1;,,,,a^2,2a)_n \
=mat(delim:"|",2a,1,,,;a^2,2a,1,,;,a^2,2a,1,;,,dots.down,dots.down,dots.down;,,,a^2,2a,1;,,,,a^2,2a)_(n-1) \
=D_(n-1) \
=n a^(n-1), $
所以
$ x_1=D_(n-1)/D_n=n/((n+1)a). $
（Ⅲ）解　当 $a=0$ 时，方程组为
$ mat(0,1,,,;,0,1,,;,,dots.down,dots.down,;,,,0,1;,,,,0)mat(x_1;x_2;dots.v;x_(n-1);x_n)=mat(1;0;dots.v;0;0), $
此时方程组系数矩阵的秩和增广矩阵的秩均为 $n-1$，所以方程组有无穷多解.其通解为
$ bold(x)=(0,1,0,dots,0)^T+k(1,0,0,dots,0)^T, $
其中 $k$ 为任意常数.
]
]

#ezexam.question[
（本题满分10分）
设 $A$ 为3阶矩阵，$alpha_1,alpha_2$ 为 $A$ 的分别属于特征值 $-1,1$ 的特征向量，向量 $alpha_3$ 满足 $A alpha_3=alpha_2+alpha_3$.

（Ⅰ）证明 $alpha_1,alpha_2,alpha_3$ 线性无关；

（Ⅱ）令 $P=(alpha_1,alpha_2,alpha_3)$，求 $P^(-1)A P$.
#ezexam.solution(show-number: false)[
解　（Ⅰ）设存在数 $k_1,k_2,k_3$ 使得
$ k_1 alpha_1+k_2 alpha_2+k_3 alpha_3=0. quad "①" $
用 $A$ 左乘①的两边，并由 $A alpha_1=-alpha_1$，$A alpha_2=alpha_2$，得
$ -k_1 alpha_1+(k_2+k_3)alpha_2+k_3 alpha_3=0. quad "②" $
①−②得
$ 2k_1 alpha_1-k_3 alpha_2=0. quad "③" $
因为 $alpha_1,alpha_2$ 是 $A$ 的属于不同特征值的特征向量，所以 $alpha_1,alpha_2$ 线性无关，从而 $k_1=k_3=0$.

代入①得 $k_2 alpha_2=0$，由于 $alpha_2!=0$，所以 $k_2=0$，故 $alpha_1,alpha_2,alpha_3$ 线性无关.

（Ⅱ）由题设，可得
$ A P=A(alpha_1,alpha_2,alpha_3)=(A alpha_1,A alpha_2,A alpha_3) \
=(alpha_1,alpha_2,alpha_3)mat(-1,0,0;0,1,1;0,0,1)=P mat(-1,0,0;0,1,1;0,0,1). $
由（Ⅰ），$P$ 为可逆矩阵，从而
$ P^(-1)A P=mat(-1,0,0;0,1,1;0,0,1). $
]
]

