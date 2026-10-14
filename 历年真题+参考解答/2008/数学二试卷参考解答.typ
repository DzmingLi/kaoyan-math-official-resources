#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2008, subject: "二", title: "2008年全国硕士研究生入学统一考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#import "@preview/cetz:0.5.2": canvas, draw
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2008 数学二试卷参考解答

= 一、选择题

#answer("1.")[
选 D.
解　$f$ 在 $[0,1]$ 和 $[1,2]$ 满足罗尔定理条件，故 $f'$ 在 $(0,1)$ 和 $(1,2)$ 各至少有一个零点. 又 $f'$ 含有因子 $x$，$x=0$ 也是零点. 直接计算，
$ f(x)=x^4-3x^3+2x^2,quad f'(x)=x(4x^2-9x+4), $
可见共有三个零点.
*常见错误* 只考虑罗尔定理得到的两个零点，漏掉 $x=0$，误选 C.
]

#answer("2.")[
选 C.
解　分部积分，
$ integral_0^a x f'(x)dif x=[x f(x)]_0^a-integral_0^a f(x)dif x \
=a f(a)-integral_0^a f(x)dif x. $
因此结果是曲边三角形 $A C D$ 的面积.
*常见错误* 未考虑 $f'(x)dif x=dif f(x)$，只能猜测结果.

#align(center)[#canvas({
 import draw: *
 line((-0.3,0),(3.8,0),mark:(end:"stealth"));line((0,-0.3),(0,3.8),mark:(end:"stealth"))
 line((0,3),(3,3),(3,0));line((0,0.6),(3,3));bezier((0,0.6),(3,3),(0.9,2.2),(1.9,3))
 content((3.9,0),$x$);content((0,4),$y$);content((-0.2,-0.2),$O$)
 content((3.65,3.1),$A(a,f(a))$);content((3,-0.35),$B(a,0)$)
 content((-0.9,3),$C(0,f(a))$);content((-0.2,0.6),$D$);content((0.8,2.7),$y=f(x)$)
})
]

]

#answer("3.")[

选 D.
解　由通解的形式可知三个特征根为 $1,2i,-2i$，所以特征方程为
$ (lambda-1)(lambda^2+4)=lambda^3-lambda^2+4lambda-4=0. $
故微分方程为 $y'''-y''+4y'-4y=0$.
*常见错误* 把特征根写成 $1,2,-2$ 而误选 C；或把 $lambda-1$ 写成 $lambda+1$，误选 B.

]

#answer("4.")[
选 A.
解　$x=0,1$ 为间断点. 因
$ lim_(x->0)(ln abs(x))/abs(x-1)sin x=lim_(x->0)(ln abs(x))/(csc x) \
=lim_(x->0)(-sin^2 x)/(x cos x)=0, $
$x=0$ 是可去间断点. 又
$ lim_(x->1^-)(ln abs(x))/abs(x-1)sin x=-sin 1, $
$ lim_(x->1^+)(ln abs(x))/abs(x-1)sin x=sin 1, $
所以 $x=1$ 是跳跃间断点.
*常见错误* 只看到分母为零或对数趋于无穷就判断为无穷间断点，必须计算极限后再下结论.
]

#answer("5.")[

选 B.
解　若 $x_n$ 单调，因为 $f(x)$ 是单调有界函数，所以 $f(x_n)$ 不仅单调，而且有界，因而收敛.
*辨析* 取 $f(x)=cases(1 & x>=0,-1 & x<0)$，$x_n=(-1)^n/n$，虽 $x_n->0$，但 $f(x_n)=(-1)^n$ 不收敛，排除 A. 取 $f(x)=arctan x,x_n=n$，则 $f(x_n)$ 收敛且单调，而 $x_n$ 发散，排除 C、D.

]

#answer("6.")[
选 A.
解　先转成极坐标，
$ F(u,v)=integral_0^v dif theta integral_1^u f(r^2)/r dot r dif r \
=v integral_1^u f(r^2)dif r, $
故 $partial F/partial u=v f(u^2)$.
*常见错误* 面积元素 $r dif r dif theta$ 中漏掉 $r$，导致误选 B.

#align(center)[#canvas({
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
]

]

#answer("7.")[

选 C.
*分析* 判断可逆性可以依据定义或计算行列式；本题直接构造逆矩阵更适合.
解　由 $A^3=0$，
$ E=E+A^3=(E+A)(E-A+A^2), $
$ E=E-A^3=(E-A)(E+A+A^2). $
分别存在矩阵 $E-A+A^2$ 和 $E+A+A^2$，使以上乘积为 $E$，故 $E+A$ 与 $E-A$ 都可逆.

]

#answer("8.")[
选 D.
*分析* 合同可用定义、秩及正惯性指数或配方法判断. 本题可先用行列式符号筛选.
解法1　各矩阵秩均为2. $A$ 的特征方程为
$ det(lambda E-A)=(lambda-1)^2-4=(lambda-3)(lambda+1)=0, $
特征值为3、$-1$，正惯性指数为1. A项矩阵特征值为 $-3,-1$，B、C项均为1、3，D项为3、$-1$，只有D与原矩阵的惯性相同.
解法2　若 $B=C^T A C$，则 $det B=(det C)^2 det A$，所以行列式同号. 原矩阵行列式为 $-3$，各选项中只有D为负，故选D.
*常见错误* 只交换两行不能保证合同，必须做对应的同类型列变换，不能据此误选C.
]

= 二、填空题

#answer("9.")[
解　$f$ 连续，故 $lim_(x->0)f(x)=f(0)$. 由等价无穷小，
$ 1=lim_(x->0)(1-cos[x f(x)])/((e^(x^2)-1)f(x)) \
=lim_(x->0)(1/2 x^2 f^2(x))/(x^2 f(x))=1/2 f(0). $
所以 $f(0)=2$.
]

#answer("10.")[
解法1　方程化为 $y'-y/x=x e^(-x)$，用一阶线性方程公式，
$ y=x(integral e^(-x)dif x+C)=x(C-e^(-x)). $
解法2　对应齐次方程通解为 $y=C x$. 令非齐次方程的解为 $y=u(x)x$，代入得 $u'(x)=e^(-x)$，所以 $u(x)=-e^(-x)+C$，仍得 $y=x(C-e^(-x))$.
*常见错误* 方程变形时符号错误，或颠倒积分因子及其倒数.
]

#answer("11.")[

解　将 $y$ 视为 $x$ 的函数，两边对 $x$ 求导，得
$ (y+x y')cos(x y)+(y'-1)/(y-x)=1. $
代入 $x=0,y=1$，得 $y'(0)=1$，所求切线为 $y-1=x$，即 $y=x+1$.
*常见错误* 导数计算错误，写成 $y=-x+1$ 或 $y=x/2+1$；切线方程必须包含 $y=$.

*另解* 令 $F(x,y)=sin(x y)+ln(y-x)-x$，有 $F'_x(0,1)=-1,F'_y(0,1)=1$，所以 $y'(0)=-F'_x/F'_y=1$，切线为 $y=x+1$.

]

#answer("12.")[
解　$y=x^(5/3)-5x^(2/3)$，
$ y'=5/3 x^(2/3)-10/3 x^(-1/3), $
$ y''=10/9 x^(-1/3)+10/9 x^(-4/3)=10(x+1)/(9 root(3,x^4)). $
令 $y''=0$ 得 $x=-1$. $x->0$ 时 $y''->+infinity$，但零点两侧不变号；而 $x=-1$ 两侧变号，故拐点为 $(-1,-6)$.
*常见错误* 只填横坐标 $-1$，没有填写拐点坐标.
]

#answer("13.")[
解法1　将幂指函数写成 $z=e^(x/y(ln y-ln x))$，得
$ partial z/partial x=(y/x)^(x/y)[1/y ln(y/x)-1/y], $
故 $partial z/partial x|_((1,2))=sqrt(2)/2(ln 2-1)$.
解法2　两边取对数，$ln z=x/y(ln y-ln x)$，求偏导，
$ 1/z partial z/partial x=1/y(ln y-ln x)-1/y. $
代入 $x=1,y=2$，得同一结果.
*注* 幂指函数求导有两项，分别来自底数变化和指数变化；也可直接写出这两项再代入.
]

#answer("14.")[
解　行列式等于特征值之积，故 $det A=6lambda$. 又三阶矩阵满足 $det(2A)=2^3 det A$，从而
$ -48=det(2A)=8det A=48lambda, $
所以 $lambda=-1$.
]

= 三、解答题

#answer("15.")[
解　$ lim_(x->0) ([sin x-sin(sin x)]sin x)/x^4 \
=lim_(x->0) (sin x-sin(sin x))/x^3 \
=lim_(x->0) (cos x-cos(sin x)cos x)/(3x^2) \
=lim_(x->0) (1-cos(sin x))/(3x^2) \
=lim_(x->0) ((1/2)sin^2 x)/(3x^2)=1/6. $

*分析* 可用等价无穷小、重要极限、洛必达法则或泰勒公式.
*解法2* 由 $sin x tilde x$ 及
$ sin(sin x)=sin x-1/6 sin^3 x+o(x^3), $
有
$ lim_(x->0)([sin x-sin(sin x)]sin x)/x^4 \
=lim_(x->0)(sin x-sin(sin x))/x^3 \
=lim_(x->0)(1/6 sin^3 x+o(x^3))/x^3=1/6. $
*解法3* 令 $t=sin x$，则
$ lim_(x->0)([sin x-sin(sin x)]sin x)/x^4 \
=lim_(t->0)((t-sin t)t)/t^4=lim_(t->0)(t-sin t)/t^3 \
=lim_(t->0)(1-cos t)/(3t^2)=1/6. $
*常见错误* 两个发散项的差不能分别用等价无穷小替换，从而把极限写成 $lim_(x->0)(1/x^2-1/x^2)=0$. 可以将 $sin x-sin(sin x)$ 换成 $x-sin x$，但需要证明
$ lim_(x->0)(sin x-sin(sin x))/(x-sin x) \
=lim_(x->0)([1-cos(sin x)]cos x)/(1-cos x)=1. $
不能仅凭 $sin x tilde x,sin(sin x) tilde sin x$，就断言两者的差也等价.


]

#answer("16.")[
解　由 $(dif x)/(dif t)-2t e^(-x)=0$ 得 $e^x dif x=2t dif t$，积分并由条件 $lr.|x|_(t=0)=0$，得 $e^x=1+t^2$，即 $x=ln(1+t^2)$.
$ (dif y)/(dif x)=((dif y)/(dif t))/((dif x)/(dif t))=(ln(1+t^2)dot 2t)/(2t/(1+t^2))=(1+t^2)ln(1+t^2), $
$ (dif^2 y)/(dif x^2)=dif/(dif x)((dif y)/(dif x))=(dif/(dif t)[(1+t^2)ln(1+t^2)])/((dif x)/(dif t)) \
=(2t ln(1+t^2)+2t)/(2t/(1+t^2))=(1+t^2)[ln(1+t^2)+1]. $

*分析* 先解一阶方程的初值问题，再用变上限积分求导和参数方程求二阶导数.
*常见错误* 只用 $x'=2t e^(-x)$ 而没有继续求解初值问题，最终留下 $x$ 与 $t$ 两种变量：
$ y'=e^x ln(1+t^2),quad y''=[ln(1+t^2)+e^x/(1+t^2)]e^x. $
应再代入 $e^x=1+t^2$，化成仅含参数的表达式.

]

#answer("17.")[
解　由于 $lim_(x->1^-) (x^2 arcsin x)/sqrt(1-x^2)=+infinity$，故 $integral_0^1 (x^2 arcsin x)/sqrt(1-x^2)dif x$ 是反常积分.

令 $arcsin x=t$，有 $x=sin t$，$t in [0,pi/2)$，
$ integral_0^1 (x^2 arcsin x)/sqrt(1-x^2)dif x \
=integral_0^(pi/2) (t sin^2 t)/(cos t)cos t dif t \
=integral_0^(pi/2) t sin^2 t dif t \
=integral_0^(pi/2) (t/2-(t cos 2t)/2)dif t \
=lr.|t^2/4|_0^(pi/2)-1/4 integral_0^(pi/2) t dif(sin 2t) \
=pi^2/16-lr.|(t sin 2t)/4|_0^(pi/2)+1/4 integral_0^(pi/2) sin 2t dif t \
=pi^2/16-lr.|1/8 cos 2t|_0^(pi/2)=pi^2/16+1/4. $

*解法2* 先分部积分，再换元，
$ I=-integral_0^1 x arcsin x dif sqrt(1-x^2) \
=[-x sqrt(1-x^2)arcsin x]_0^1 \
+integral_0^1[sqrt(1-x^2)arcsin x+x]dif x \
=integral_0^(pi/2)t cos^2 t dif t+1/2 \
=integral_0^(pi/2)[t/2+t cos 2t/2]dif t+1/2 \
=pi^2/16+[t sin 2t/4]_0^(pi/2) \
-1/4 integral_0^(pi/2)sin 2t dif t+1/2 \
=pi^2/16+[cos 2t/8]_0^(pi/2)+1/2=pi^2/16+1/4. $
*常见错误* 三角换元后忘记降幂公式或计算出错.

]

#answer("18.")[
解　曲线 $x y=1$ 将区域 $D$ 分成如图所示的两个区域 $D_1$ 和 $D_2$.
#import "@preview/cetz:0.5.2": canvas, draw
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

*解法2* 将 $D_2$ 上的面积积分用补区域计算，
$ integral.double_D max{x y,1}dif x dif y \
=integral.double_(D_1)x y dif x dif y+integral.double_D dif x dif y \
-integral.double_(D_1)dif x dif y \
=(15/4-ln 2)+4-(3-2ln 2)=19/4+ln 2. $
*常见错误* 应先写出被积函数的分段表达式，并相应划分区域，不能只讨论 $x y>1$、$x y<1$ 而忽略区域. 使用最大值或最小值作被积函数时均应这样处理.

]

#answer("19.")[
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

*分析* 先写旋转体的体积及侧面积公式，建立积分方程，对上限求导，得到一阶微分方程，再利用初值求解.
*常见错误* 不熟悉旋转体侧面积公式、积分方程求导出错，或得到方程后不能正确解出.

]

#answer("20.")[
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

*（Ⅱ）证法2* 由积分中值定理，存在 $2<eta<=3$，使 $phi(eta)=integral_2^3 phi(x)dif x<phi(2)$. 又 $phi(1)<phi(2)$，所以 $phi$ 在 $[1,eta]$ 上的最大值点位于 $(1,eta)$ 内，设为 $x_0$，有 $phi'(x_0)=0$.
在 $x_0$ 处作泰勒展开，
$ phi(x)=phi(x_0)+1/2 phi''(xi)(x-x_0)^2. $
因 $phi$ 不恒为常数，可以取到 $x$ 使 $phi(x)<phi(x_0)$，故存在 $xi in(1,eta) subset(1,3)$，使 $phi''(xi)<0$.
*注意* 应掌握定理的证明，运用积分中值定理与微分中值定理时，需要说明区间和条件，叙述应严密.

]

#answer("21.")[
解　作拉格朗日函数
$ F(x,y,z,lambda,mu)=x^2+y^2+z^2+lambda(x^2+y^2-z)+mu(x+y+z-4), $
令
$ cases(F'_x=2x+2lambda x+mu=0,F'_y=2y+2lambda y+mu=0,F'_z=2z-lambda+mu=0,F'_lambda=x^2+y^2-z=0,F'_mu=x+y+z-4=0), $
解此方程组，得 $(x_1,y_1,z_1)=(1,1,2)$，$(x_2,y_2,z_2)=(-2,-2,8)$，故所求的最大值为72，最小值为6.


*解法2* 消去 $z=x^2+y^2$，约束为 $x^2+y^2+x+y-4=0$. 令
$ F(x,y,lambda)=x^2+y^2+(x^2+y^2)^2 \
+lambda(x^2+y^2+x+y-4). $
由
$ cases(2x+4x(x^2+y^2)+2lambda x+lambda=0,
2y+4y(x^2+y^2)+2lambda y+lambda=0,
x^2+y^2+x+y-4=0), $
解得 $(x,y)=(1,1),(-2,-2)$，对应 $z=2,8$，最大值72、最小值6.
*解法3* 先由 $(x+y)^2<=2(x^2+y^2)$ 和约束得 $(4-z)^2<=2z$，即 $2<=z<=8$. 目标函数为 $z+z^2$，在此区间严格递增，所以极值在z的两个端点取得，此时不等式取等号，故 $x=y$. 代入约束，得 $z=2x^2=4-2x$，故 $x^2+x-2=0$，解得 $x=-2,1$，对应 $(x,y,z)=(-2,-2,8),(1,1,2)$，分别给出72、6.
*解法4* 由上一解法的取等条件，极值点处 $x=y$，有 $(x+y)^2=2(x^2+y^2)$，从约束得到 $(4-z)^2=2z$，即 $z^2-10z+16=0$，解得 $z=2,8$，代入得最小值6、最大值72.
*常见错误* 两个约束条件时不会建立拉格朗日函数，或列出方程组后不能正确求解.

]

#answer("22.")[
（Ⅰ）证法1　记
$ D_n=abs(A)=mat(delim:"|",2a,1,,,;a^2,2a,1,,;,a^2,2a,1,;,,dots.down,dots.down,dots.down;,,,a^2,2a,1;,,,,a^2,2a)_n, $
以下用数学归纳法证明 $D_n=(n+1)a^n$.

当 $n=1$ 时，$D_1=2a$，结论成立.

当 $n=2$ 时，$D_2=mat(delim:"|",2a,1;a^2,2a)=3a^2$，结论成立.

假设结论对小于 $n$ 的情况成立. 将 $D_n$ 按第1行展开，得
$ D_n=2a D_(n-1)-mat(delim:"|",a^2,1,,,;0,2a,1,,;,a^2,2a,1,;,,dots.down,dots.down,dots.down;,,,a^2,2a,1;,,,,a^2,2a)_(n-1) \
=2a D_(n-1)-a^2 D_(n-2) \
=2a n a^(n-1)-a^2(n-1)a^(n-2)=(n+1)a^n, $
故 $abs(A)=(n+1)a^n$.

证法2
$ abs(A)=mat(delim:"|",2a,1,,,;a^2,2a,1,,;,a^2,2a,1,;,,dots.down,dots.down,dots.down;,,,a^2,2a,1;,,,,a^2,2a)_n $
$ arrow.r.long^(r_2-1/2 a r_1) mat(delim:"|",2a,1,,,;0,3/2 a,1,,;,a^2,2a,1,;,,dots.down,dots.down,dots.down;,,,a^2,2a,1;,,,,a^2,2a)_n $
$ arrow.r.long^(r_3-2/3 a r_2) mat(delim:"|",2a,1,,,;0,3/2 a,1,,;,0,4/3 a,1,;,,dots.down,dots.down,dots.down;,,,a^2,2a,1;,,,,a^2,2a)_n=dots $
$ arrow.r.long^(r_n-(n-1)/n a r_(n-1)) mat(delim:"|",2a,1,,,;0,3/2 a,1,,;,0,4/3 a,1,;,,dots.down,dots.down,dots.down;,,,0,n/(n-1) a,1;,,,,0,(n+1)/n a)_n=(n+1)a^n. $
（Ⅱ）解　当 $a!=0$ 时，方程组系数行列式 $D_n!=0$，故方程组有唯一解. 由克莱姆法则，将 $D_n$ 的第1列换成 $bold(b)$，得行列式为
$ mat(delim:"|",1,1,,,;0,2a,1,,;,a^2,2a,1,;,,dots.down,dots.down,dots.down;,,,a^2,2a,1;,,,,a^2,2a)_n \
=mat(delim:"|",2a,1,,,;a^2,2a,1,,;,a^2,2a,1,;,,dots.down,dots.down,dots.down;,,,a^2,2a,1;,,,,a^2,2a)_(n-1) \
=D_(n-1) \
=n a^(n-1), $
所以
$ x_1=D_(n-1)/D_n=n/((n+1)a). $
（Ⅲ）解　当 $a=0$ 时，方程组为
$ mat(0,1,,,;,0,1,,;,,dots.down,dots.down,;,,,0,1;,,,,0)mat(x_1;x_2;dots.v;x_(n-1);x_n)=mat(1;0;dots.v;0;0), $
此时方程组系数矩阵的秩和增广矩阵的秩均为 $n-1$，所以方程组有无穷多解. 其通解为
$ bold(x)=(0,1,0,dots,0)^T+k(1,0,0,dots,0)^T, $
其中 $k$ 为任意常数.

*（Ⅰ）证法3* 沿用 $D_n$ 的记号，按第一行展开得 $D_n=2a D_(n-1)-a^2 D_(n-2)$，即
$ D_n-a D_(n-1)=a(D_(n-1)-a D_(n-2)) \
=a^(n-2)(D_2-a D_1)=a^n. $
所以
$ D_n=a^n+a D_(n-1)=2a^n+a^2 D_(n-2) \
=dots=(n-1)a^n+a^(n-1)D_1=(n+1)a^n. $
*分析* 三种方法分别利用数学归纳法、消元法和递推公式. 唯一解时用克莱姆法则，无穷多解时求出基础解系和特解.
*常见错误* 仅验证 $n=1,2$ 就断言一般结论，归纳证明不完整；克莱姆法则中替换列算错；将特解与基础解系颠倒. 参数条件应为 $a!=0$ 或 $a=0$，不能写成 $a=1$、$a=-1$.


]

#answer("23.")[
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


*（Ⅰ）证法2* 反证法. 假设三向量线性相关. 因 $alpha_1,alpha_2$ 对应不同特征值而线性无关，存在 $k_1,k_2$，使
$ alpha_3=k_1 alpha_1+k_2 alpha_2. $
左乘 $A$，得 $alpha_2+alpha_3=-k_1 alpha_1+k_2 alpha_2$. 两式相减，得到 $-alpha_2=2k_1 alpha_1$，与 $alpha_1,alpha_2$ 线性无关矛盾. 所以三向量线性无关.
*常见错误* 不能误认为 $alpha_3$ 也是特征向量，特征值为2或0. 证明关键是先使用不同特征值的特征向量线性无关，再对线性组合等式左乘 $A$ 或 $A-E$.

]

