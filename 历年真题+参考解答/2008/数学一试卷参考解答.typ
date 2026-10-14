#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2008, subject: "一", title: "2008年全国硕士研究生入学统一考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#import "@preview/cetz:0.5.2": canvas, draw
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2008 数学一试卷参考解答

= 一、选择题

#answer("1.")[
选 B.
解　由变上限积分求导公式，$f'(x)=2x ln(2+x^2)$. 因 $ln(2+x^2)!=0$，所以 $x=0$ 是 $f'(x)$ 的唯一零点.
]

#answer("2.")[
选 A.
解　由二元函数梯度的计算公式，
$ f'_x(x,y)=y/(x^2+y^2),quad f'_y(x,y)=-x/(x^2+y^2). $
因此 $f'_x(0,1)=1,f'_y(0,1)=0$，故 $nabla f(0,1)=bold(i)$.
*常见错误* 偏导计算错误导致误选 B 或 C.
]

#answer("3.")[
选 D.
解　由通解的形式可知三个特征根为 $1,2i,-2i$，所以特征方程为
$ (lambda-1)(lambda^2+4)=lambda^3-lambda^2+4lambda-4=0. $
故微分方程为 $y'''-y''+4y'-4y=0$.
*常见错误* 把特征根写成 $1,2,-2$ 而误选 C；或把 $lambda-1$ 写成 $lambda+1$，误选 B.
]

#answer("4.")[
选 B.
解　若 $x_n$ 单调，因为 $f(x)$ 是单调有界函数，所以 $f(x_n)$ 不仅单调，而且有界，因而收敛.
*辨析* 取 $f(x)=cases(1 & x>=0,-1 & x<0)$，$x_n=(-1)^n/n$，虽 $x_n->0$，但 $f(x_n)=(-1)^n$ 不收敛，排除 A. 取 $f(x)=arctan x,x_n=n$，则 $f(x_n)$ 收敛且单调，而 $x_n$ 发散，排除 C、D.
]

#answer("5.")[
选 C.
*分析* 判断可逆性可以依据定义或计算行列式；本题直接构造逆矩阵更适合.
解　由 $A^3=0$，
$ E=E+A^3=(E+A)(E-A+A^2), $
$ E=E-A^3=(E-A)(E+A+A^2). $
分别存在矩阵 $E-A+A^2$ 和 $E+A+A^2$，使以上乘积为 $E$，故 $E+A$ 与 $E-A$ 都可逆.
]

#answer("6.")[
选 B.
*分析* 图形为双叶双曲面，其标准方程为
$ x'^2/a^2-y'^2/b^2-z'^2/c^2=1. $
在题设正交变换下，$A$ 的正特征值个数就是标准方程中正项的项数，因此只有一个正特征值.
*常见错误* 虽可将方程写成 $-x'^2/a^2+y'^2/b^2+z'^2/c^2=-1$，但不能忽略右端符号而断言有两个正特征值.
#align(center)[#canvas({
 import draw: *
 line((-3.1,0),(3.1,0),mark:(end:"stealth"))
 line((0,-1.7),(0,1.9),mark:(end:"stealth"))
 line((-1.8,-1.4),(1.5,1.3),mark:(end:"stealth"))
 for s in (-1,1) {
  bezier((s*2.3,1.25),(s*0.85,0),(s*1.5,1.15),(s*0.85,0.4))
  bezier((s*0.85,0),(s*2.3,-1.25),(s*0.85,-0.4),(s*1.5,-1.15))
  bezier((s*2.3,-1.25),(s*2.3,1.25),(s*2.85,-0.95),(s*2.85,0.95))
  bezier((s*2.3,1.25),(s*2.3,-1.25),(s*1.8,0.95),(s*1.8,-0.95),stroke:(dash:"dashed"))
  line((s*2.3,-1.25),(s*2.3,1.25),stroke:(dash:"dashed"))
 }
 content((3.1,0.15),$x'$);content((0.2,1.9),$z'$);content((1.5,1.5),$y'$);content((0.2,-0.2),$O$)
})
]

]

#answer("7.")[
选 A.
解　由独立同分布，
$ F_Z(x)=P{max{X,Y}<=x}=P{X<=x,Y<=x} \
=P{X<=x}P{Y<=x}=F^2(x). $
*辨析* $F(x)F(y)$ 是 $(X,Y)$ 的联合分布函数，不能选 B、D；$Z$ 的分布函数是一元函数. 此外，
$ P{min{X,Y}<=x}=1-P{X>x,Y>x} \
=1-[1-F(x)]^2, $
所以 C 实际是 $min{X,Y}$ 的分布函数.
]

#answer("8.")[
选 D.
解　由正态分布，$E X=0,D X=1,E Y=1,D Y=4$. 因 $rho_(X Y)=1$，存在常数 $a,b$，使 $P{Y=a X+b}=1$. 由 $E Y=a E X+b$ 得 $b=1$；又
$ 1=rho_(X Y)=(E(X Y)-E X dot E Y)/(sqrt(D X)sqrt(D Y)) \
=(E[X(a X+b)]-0)/2=a/2, $
故 $a=2$.
*常见错误* 只由 $D Y=a^2 D X$ 得到 $a^2=4$，未利用相关系数的符号排除 $a=-2$，误选 C.
]

= 二、填空题

#answer("9.")[
解　根据初始条件，只需考虑 $(0,+infinity)$ 内的非零解. 分离变量，
$ (dif y)/y=-(dif x)/x,quad ln abs(y)=-ln abs(x)+C, $
故 $y=C/x$. 代入 $y(1)=1$，得 $C=1$，所以 $y=1/x$.
*常见错误* 写成 $1/abs(x)$ 或 $plus.minus 1/x$，没有正确利用初始条件.
]

#answer("10.")[
解　将 $y$ 视为 $x$ 的函数，两边对 $x$ 求导，得
$ (y+x y')cos(x y)+(y'-1)/(y-x)=1. $
代入 $x=0,y=1$，得 $y'(0)=1$，所求切线为 $y-1=x$，即 $y=x+1$.
*常见错误* 导数计算错误，写成 $y=-x+1$ 或 $y=x/2+1$；切线方程必须包含 $y=$.
]

#answer("11.")[
解　原幂级数以 $x=-2$ 为中心，在 $x=0$ 收敛，在 $x=-4$ 发散，故收敛半径为2，收敛域为 $(-4,0]$. 即 $-2<x+2<=2$ 时收敛. 平移不改变系数幂级数的收敛性，所以新级数在 $-2<x-3<=2$ 收敛，收敛域为 $(1,5]$.
*常见错误* 平移方向弄反，得到 $(-9,-5]$；或没有正确判断端点，写成 $(1,5)$、$[1,5)$ 等.
]

#answer("12.")[
解　取 $D={ (x,y,0)|x^2+y^2<=4 }$ 的下侧，由 $Sigma$ 与 $D$ 围成半球体 $Omega$. 根据高斯公式，
$ I=integral.surf_(Sigma+D)(x y dif y dif z+x dif z dif x+x^2 dif x dif y) \
-integral.double_D(x y dif y dif z+x dif z dif x+x^2 dif x dif y) \
=integral.triple_Omega y dif x dif y dif z+integral.double_(x^2+y^2<=4)x^2 dif x dif y. $
由对称性，第一项为零. 又
$ integral.double_(x^2+y^2<=4)x^2 dif x dif y \
=1/2 integral.double_(x^2+y^2<=4)(x^2+y^2)dif x dif y \
=1/2 integral_0^(2pi)dif phi integral_0^2 r^3 dif r=4pi. $
或者直接用极坐标，
$ integral_0^(2pi)cos^2 theta dif theta integral_0^2 r^3 dif r=4pi. $
故 $I=4pi$.
*常见错误* 第二型曲面积分方向处理错误，得到 $-4pi$.
]

#answer("13.")[
*分析* 可寻找与 $A$ 相似的矩阵，或构造非零特征值的特征向量.
解法1　由已知，
$ A(alpha_1,alpha_2)=(alpha_1,alpha_2)mat(0,2;0,1). $
因为 $alpha_1,alpha_2$ 线性无关，矩阵 $(alpha_1,alpha_2)$ 可逆，故 $A$ 与 $mat(0,2;0,1)$ 相似. 其特征值为0、1，非零特征值为1.
解法2　左乘 $A$，得 $A^2 alpha_2=2A alpha_1+A alpha_2=A alpha_2$，而 $A alpha_2=2alpha_1+alpha_2!=0$，所以它是对应于特征值1的特征向量. 亦可直接验证 $A(2alpha_1+alpha_2)=2alpha_1+alpha_2$.
*注意* 所求为非零特征值，不应同时填写0、1.
]

#answer("14.")[
解　由泊松分布，$E X=D X=1$，故 $E X^2=D X+(E X)^2=2$，于是
$ P{X=E X^2}=P{X=2}=1/(2e). $
*常见错误* 把 $E X^2$ 与 $(E X)^2$ 混淆，误认为 $E X^2=1$，得到 $1/e$.
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
解法1　$ integral_L sin 2x dif x+2(x^2-1)y dif y \
=integral_0^pi [sin 2x+2(x^2-1)sin x dot cos x]dif x \
=integral_0^pi x^2 sin 2x dif x \
=lr.|-x^2/2 cos 2x|_0^pi+integral_0^pi x cos 2x dif x \
=-pi^2/2+lr.|x/2 sin 2x|_0^pi-1/2 integral_0^pi sin 2x dif x=-pi^2/2. $
解法2　取 $L_1$ 为 $x$ 轴上从点 $(pi,0)$ 到点 $(0,0)$ 的一段，$D$ 是由 $L$ 与 $L_1$ 围成的区域.
$ integral_L sin 2x dif x+2(x^2-1)y dif y \
=integral_(L+L_1) sin 2x dif x+2(x^2-1)y dif y-integral_(L_1) sin 2x dif x+2(x^2-1)y dif y \
=-integral.double_D 4x y dif x dif y-integral_pi^0 sin 2x dif x \
=-integral_0^pi dif x integral_0^(sin x) 4x y dif y-lr.|-1/2 cos 2x|_pi^0 \
=-integral_0^pi 2x sin^2 x dif x \
=-integral_0^pi x(1-cos 2x)dif x \
=lr.|-x^2/2|_0^pi+lr.|x/2 sin 2x|_0^pi-1/2 integral_0^pi sin 2x dif x=-pi^2/2. $

*解法3* 将原积分分成两部分，
$ I=integral_L(sin 2x dif x-2y dif y)+integral_L 2x^2 y dif y=I_1+I_2. $
因为 $partial(-2y)/partial x-partial(sin 2x)/partial y=0$，$I_1$ 与路径无关，取 $x$ 轴上一段，得 $I_1=0$. 又
$ I_2=integral_0^pi 2x^2 sin x cos x dif x \
=integral_0^pi x^2 sin 2x dif x \
=[-1/2 x^2 cos 2x]_0^pi+integral_0^pi x cos 2x dif x \
=-pi^2/2+[x/2 sin 2x]_0^pi-1/2 integral_0^pi sin 2x dif x \
=-pi^2/2. $
所以 $I=I_1+I_2=-pi^2/2$.
*常见错误* 使用格林公式时方向符号错误，或分部积分时系数、符号错误.

]

#answer("17.")[
解　点 $(x,y,z)$ 到 $x O y$ 面的距离为 $abs(z)$，故求 $C$ 上距离 $x O y$ 面最远点和最近点的坐标，等价于求函数 $H=z^2$ 在条件 $x^2+y^2-2z^2=0$ 与 $x+y+3z=5$ 下的最大值点和最小值点.

令 $L(x,y,z,lambda,mu)=z^2+lambda(x^2+y^2-2z^2)+mu(x+y+3z-5)$.由
$ cases(L'_x=2lambda x+mu=0, L'_y=2lambda y+mu=0, L'_z=2z-4lambda z+3mu=0, x^2+y^2-2z^2=0, x+y+3z=5) $
得 $x=y$，从而
$ cases(2x^2-2z^2=0, 2x+3z=5), $
解得
$ cases(x=-5,y=-5,z=5), quad "或" quad cases(x=1,y=1,z=1). $
根据几何意义，曲线 $C$ 上存在距离 $x O y$ 面最远的点和最近的点，故所求点依次为 $(-5,-5,5)$ 和 $(1,1,1)$.

*分析* 将点到平面的距离转化为多元函数的条件极值，关键是正确写出目标函数及约束条件.
*解法2* 消去 $z=(5-x-y)/3$，求 $H=x^2+y^2$ 在条件 $x^2+y^2-2/9(x+y-5)^2=0$ 下的极值. 令
$ L=x^2+y^2+lambda[x^2+y^2-2/9(x+y-5)^2]. $
由
$ cases(2x+lambda[2x-4/9(x+y-5)]=0,
2y+lambda[2y-4/9(x+y-5)]=0,
x^2+y^2-2/9(x+y-5)^2=0), $
得 $x=y$，故 $2x^2-2/9(2x-5)^2=0$，解得 $(x,y,z)=(-5,-5,5)$ 或 $(1,1,1)$. 根据几何意义，所求最远、最近点依次为以上两点.
*解法3* 将 $x=5-y-3z$ 代入约束，得
$ 7z^2-6(5-y)z+2y^2-10y+25=0, $
从而
$ z=(3(5-y) plus.minus sqrt(-5(y^2+4y-10)))/7. $
求导，
$ (dif z)/(dif y)=(-3 plus.minus (-5(2y+4))/(2sqrt(-5(y^2+4y-10))))/7. $
令导数为零，得 $y=-5,1$，进而 $z=5,1$，$x=-5,1$. 所求点依次为 $(-5,-5,5)$ 和 $(1,1,1)$.
*解法4* 用参数表示 $x=sqrt(2)z cos theta,y=sqrt(2)z sin theta$，代入平面，得
$ z=5/(3+sqrt(2)(cos theta+sin theta)). $
于是求 $z(theta)$ 的最值，
$ z'(theta)=-(5sqrt(2)(-sin theta+cos theta))/(3+sqrt(2)(cos theta+sin theta))^2. $
令 $z'(theta)=0$，得 $theta=pi/4,5pi/4$，对应点为 $(1,1,1)$、$(-5,-5,5)$. 最远、最近点依次为后者、前者.
*解法5* 将两个约束分别代入 $2(x^2+y^2)>=(x+y)^2$，得
$ 4z^2>=(5-3z)^2,quad z^2-6z+5<=0. $
解得 $1<=z<=5$. 等号对应 $x=y$，故最远、最近点为 $(-5,-5,5)$、$(1,1,1)$.
*解法6* 曲线切向量为
$ bold(T)=det(bold(i),bold(j),bold(k);2x,2y,-4z;1,1,3) \
=(6y+4z)bold(i)-(6x+4z)bold(j)+(2x-2y)bold(k). $
$x O y$ 面的法向量为 $bold(n)=bold(k)$. 距离最远、最近处 $bold(n) dot bold(T)=0$，故 $x=y$，联立原约束，仍得 $(-5,-5,5)$、$(1,1,1)$.
*常见错误* 两个约束确定的是一条曲线，不能将 $z$ 直接当作以 $x,y$ 为独立变量的二元函数分别求偏导. 若用全微分消元法，必须说明所选择的曲线参数以及导数为零的依据，不能不加说明地写出两个偏导公式.

]

#answer("18.")[
（Ⅰ）证　对任意的 $x$，由于 $f$ 是连续函数，所以
$ lim_(Delta x->0) (F(x+Delta x)-F(x))/(Delta x) \
=lim_(Delta x->0) (integral_0^(x+Delta x) f(t)dif t-integral_0^x f(t)dif t)/(Delta x) \
=lim_(Delta x->0) (integral_x^(x+Delta x) f(t)dif t)/(Delta x) \
=lim_(Delta x->0) (f(xi)Delta x)/(Delta x)=lim_(Delta x->0) f(xi), $
其中 $xi$ 介于 $x$ 与 $x+Delta x$ 之间.

由 $lim_(Delta x->0) f(xi)=f(x)$，可知函数 $F(x)$ 在 $x$ 处可导，且 $F'(x)=f(x)$.

（Ⅱ）证法1　要证明 $G(x)$ 以2为周期，即要证明对任意的 $x$，都有 $G(x+2)=G(x)$.

记 $H(x)=G(x+2)-G(x)$，则
$ H'(x)=(2integral_0^(x+2) f(t)dif t-(x+2)integral_0^2 f(t)dif t)'-(2integral_0^x f(t)dif t-x integral_0^2 f(t)dif t)' \
=2f(x+2)-integral_0^2 f(t)dif t-2f(x)+integral_0^2 f(t)dif t=0, $
又因为
$ H(0)=G(2)-G(0)=(2integral_0^2 f(t)dif t-2integral_0^2 f(t)dif t)-0=0, $
所以 $H(x)=0$，即 $G(x+2)=G(x)$.

证法2　由于 $f$ 是以2为周期的连续函数，所以对任意的 $x$，有
$ G(x+2)-G(x)=2integral_0^(x+2) f(t)dif t-(x+2)integral_0^2 f(t)dif t \
-2integral_0^x f(t)dif t+x integral_0^2 f(t)dif t \
=2[integral_0^2 f(t)dif t+integral_2^(x+2) f(t)dif t-integral_0^2 f(t)dif t-integral_0^x f(t)dif t] \
=2[integral_0^x f(u+2)dif u-integral_0^x f(t)dif t] \
=2integral_0^x [f(t+2)-f(t)]dif t=0, $
即 $G(x)$ 是以2为周期的周期函数.

*（Ⅱ）证法3* 由周期函数在任意一个周期上的积分相同，
$ G(x+2)-G(x)=2integral_x^(x+2)f(t)dif t-2integral_0^2 f(t)dif t=0. $
故 $G(x)$ 以2为周期.
*（Ⅱ）证法4* 在 $G(x+2)$ 中令 $u=t-2$，则
$ G(x+2)=2integral_(-2)^x f(u+2)dif u-(x+2)integral_0^2 f(t)dif t \
=2integral_(-2)^0 f(u)dif u+2integral_0^x f(u)dif u \
-x integral_0^2 f(t)dif t-2integral_0^2 f(t)dif t \
=G(x)+2integral_(-2)^0 f(u)dif u-2integral_0^2 f(t)dif t=G(x). $
*常见错误* （Ⅰ）要求由定义证明，不能使用洛必达法则或将 $F'(xi)=f(xi)$ 代入拉格朗日中值定理，因为这已经使用了待证结论；还应正确书写导数定义. （Ⅱ）$f$ 以2为周期，不代表 $integral_0^x f(t)dif t=integral_0^(x+2)f(t)dif t$；$G'$ 以2为周期也不能直接推出 $G$ 以2为周期.

]

#answer("19.")[
解　由于
$ a_0=2/pi integral_0^pi (1-x^2)dif x=2-(2pi^2)/3, $
$ a_n=2/pi integral_0^pi (1-x^2)cos n x dif x=4/n^2 (-1)^(n+1), quad n=1,2,dots, $
所以
$ f(x)=a_0/2+sum_(n=1)^infinity a_n cos n x \
=1-pi^2/3+4sum_(n=1)^infinity (-1)^(n+1)/n^2 cos n x, quad 0<=x<=pi. $
令 $x=0$，有
$ f(0)=1-pi^2/3+4sum_(n=1)^infinity (-1)^(n+1)/n^2, $
又 $f(0)=1$，所以
$ sum_(n=1)^infinity (-1)^(n-1)/n^2=pi^2/12. $

*分析* 先用余弦级数系数公式展开，再令 $x=0$ 求数项级数之和.
*常见错误* 系数公式中的 $2/pi$、常数项 $a_0/2$ 或三角函数的频率书写错误；不能把余弦级数写成幂级数.

]

#answer("20.")[
证　（Ⅰ）$ r(A)=r(alpha alpha^T+beta beta^T) \
<=r(alpha alpha^T)+r(beta beta^T) \
<=r(alpha)+r(beta)<=2. $
（Ⅱ）由于 $alpha,beta$ 线性相关，不妨设 $alpha=k beta$，于是
$ r(A)=r(alpha alpha^T+beta beta^T)=r((1+k^2)beta beta^T)<=r(beta)<=1<2. $

*证法2* （Ⅰ）因 $alpha,beta$ 是三维列向量，存在非零列向量 $bold(x)$，使 $alpha^T bold(x)=beta^T bold(x)=0$，从而 $A bold(x)=0$. 所以三阶矩阵 $A$ 的秩不超过2.
（Ⅱ）若 $beta=k alpha$，存在两个线性无关的列向量 $bold(x)_1,bold(x)_2$，使 $alpha^T bold(x)_1=alpha^T bold(x)_2=0$，亦有 $beta^T bold(x)_1=beta^T bold(x)_2=0$. 因而 $A bold(x)=0$ 至少有两个线性无关解，故 $r(A)<=3-2=1<2$.
*（Ⅰ）证法3* 利用分块矩阵乘法，
$ A=(alpha,beta,bold(0))mat(alpha^T;beta^T;bold(0)^T). $
第一个因子的行列式为零，所以 $det A=0$，从而 $r(A)<=2$.
*注意* 应熟悉 $r(B+C)<=r(B)+r(C)$，以及秩与齐次方程组解空间维数的关系.

]

#answer("21.")[
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

#answer("22.")[
解　（Ⅰ）
$ P{Z<=1/2 bar X=0}=frac(P{X=0,Z<=1/2},P{X=0}) \
=frac(P{X=0,Y<=1/2},P{X=0}) \
=P{Y<=1/2}=1/2. $
（Ⅱ）$ F_Z(z)=P{Z<=z}=P{X+Y<=z} \
=P{X+Y<=z,X=-1}+P{X+Y<=z,X=0}+P{X+Y<=z,X=1} \
=P{Y<=z+1,X=-1}+P{Y<=z,X=0}+P{Y<=z-1,X=1} \
=P{Y<=z+1}P{X=-1}+P{Y<=z}P{X=0}+P{Y<=z-1}P{X=1} \
=1/3 [P{Y<=z+1}+P{Y<=z}+P{Y<=z-1}] \
=1/3 [F_Y(z+1)+F_Y(z)+F_Y(z-1)], $
$ f_Z(z)=F'_Z(z)=1/3 [f_Y(z+1)+f_Y(z)+f_Y(z-1)]=cases(1/3 & -1<=z<2,0 & "其他"). $

*（Ⅰ）解法2* 因 $X,Y$ 独立，
$ P{Z<=1/2|X=0}=P{Y<=1/2|X=0}=P{Y<=1/2}=1/2. $
*分析* 离散型与连续型随机变量之和不能直接套用两个连续型随机变量的卷积公式，应先通过全概率公式求分布函数，再求导.
*常见错误* 条件概率的分子必须是交事件概率，不能直接用 $P{Y<=1/2}/P{X=0}$；$X,Y$ 独立不能推断 $Z,X$ 独立. 全概率公式不能漏掉 $P{X=i}$ 的权重，也不能把每个分段上的贡献单独当作总分布函数. $(X,Y)$ 并不存在二维概率密度，不应尝试先求它.

]

#answer("23.")[
（Ⅰ）证　因为
$ E T=E(overline(X)^2-1/n S^2)=E overline(X)^2-1/n E S^2 \
=(E overline(X))^2+D overline(X)-1/n E S^2 \
=mu^2+sigma^2/n-sigma^2/n=mu^2, $
所以 $T$ 是 $mu^2$ 的无偏估计量.

（Ⅱ）解　当 $mu=0$，$sigma=1$ 时，有
$ D T=D(overline(X)^2-1/n S^2) quad ("注意" overline(X) "与" S^2 "独立") $
$ =D overline(X)^2+1/n^2 D S^2 \
=1/n^2 D(sqrt(n)overline(X))^2+1/n^2 dot 1/(n-1)^2 D[(n-1)S^2] \
=1/n^2 dot 2+1/n^2 dot 1/(n-1)^2 dot 2(n-1) \
=2/n^2 dot (1+1/(n-1))=2/(n(n-1)). $

*（Ⅰ）证法2* 由
$ S^2=1/(n-1)sum_(i=1)^n X_i^2-n/(n-1)overline(X)^2, $
得
$ E T=n/(n-1)E overline(X)^2-1/(n(n-1))sum_(i=1)^n E X_i^2 \
=n/(n-1)(mu^2+sigma^2/n)-1/(n-1)(mu^2+sigma^2)=mu^2. $
所以 $T$ 是 $mu^2$ 的无偏估计量.
*（Ⅱ）解法2* 当 $mu=0,sigma=1$ 时，
$ overline(X) tilde N(0,1/n),quad E overline(X)^2=1/n,quad E overline(X)^4=3/n^2, $
$ (n-1)S^2 tilde chi^2(n-1),quad D S^2=2/(n-1). $
于是 $E S^4=D S^2+(E S^2)^2=(n+1)/(n-1)$. 因 $E T=0$，且 $overline(X)$ 与 $S^2$ 独立，
$ D T=E T^2=E overline(X)^4-2/n E(overline(X)^2 S^2)+1/n^2 E S^4 \
=E overline(X)^4-2/n E overline(X)^2 dot E S^2+1/n^2 E S^4 \
=3/n^2-2/n dot 1/n+1/n^2 dot (n+1)/(n-1)=2/(n(n-1)). $
*常见错误* 不熟悉 $E S^2=sigma^2$、卡方分布的期望与方差，或未说明 $overline(X)$ 与 $S^2$ 的独立性，导致期望和方差的计算缺少依据.

]

