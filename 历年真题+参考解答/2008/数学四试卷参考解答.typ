#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2008, subject: "四", title: "2008年全国硕士研究生入学统一考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#import "@preview/cetz:0.5.2": canvas, draw
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2008 数学四试卷参考解答

= 一、选择题

#answer("1.")[
选 B.
*分析* 提取 $a^(-n)$ 后可直接确定极限.
解　因 $0<a/b<1$，
$ lim_(n->infinity)(a^(-n)+b^(-n))^(1/n) \
=lim_(n->infinity)a^(-1)[1+(a/b)^n]^(1/n)=a^(-1). $
*常见错误* 提取 $b^(-n)$ 后误认 $(b/a)^n->0$，从而误选 D.
]

#answer("2.")[

选 B.
*分析* 利用变上限积分求导研究间断点类型.
解　由洛必达法则，
$ lim_(x->0)g(x)=lim_(x->0)frac(integral_0^x f(t)dif t,x)=lim_(x->0)f(x)=f(0). $
函数在 $x=0$ 无定义，而极限存在且有限，故为可去间断点.
*另一解法* 积分中值定理给出 $integral_0^x f(t)dif t=x f(xi)$，其中 $xi$ 在0与 $x$ 之间. 当 $x->0$ 时 $xi->0$，同样得到极限 $f(0)$.

]

#answer("3.")[
选 A.
*分析* 利用区域的对称性及被积函数的奇偶性.
解　区域关于 $x$ 轴对称，$f(y)g(x)$ 关于 $y$ 为奇函数，故它在 $D$ 上的积分为零. 其余选项中的被积函数不具有这一性质，不能保证积分为零.
*常见错误* 混淆对称性对应的变量，误选 B.
]

#answer("4.")[

选 C.
*分析* 将 $x f'(x)dif x$ 写成 $x dif f(x)$，用分部积分结合几何意义.
解　
$ integral_0^a x f'(x)dif x=[x f(x)]_0^a-integral_0^a f(x)dif x \
=a f(a)-integral_0^a f(x)dif x. $
第一项是矩形 $O B A C$ 的面积，第二项是曲边梯形 $A B O D$ 的面积，二者之差为曲边三角形 $A C D$ 的面积.
*常见错误* 将曲边三角形与直边三角形混淆而选 D.


#canvas({
 import draw: *
 line((-0.3,0),(3.8,0),mark:(end:"stealth"));line((0,-0.3),(0,3.8),mark:(end:"stealth"))
 line((0,3),(3,3),(3,0));line((0,0.6),(3,3));bezier((0,0.6),(3,3),(0.9,2.2),(1.9,3))
 content((3.9,0),$x$);content((0,4),$y$);content((-0.2,-0.2),$O$)
 content((3.65,3.1),$A(a,f(a))$);content((3,-0.35),$B(a,0)$)
 content((-0.9,3),$C(0,f(a))$);content((-0.2,0.6),$D$);content((0.8,2.7),$y=f(x)$)
})
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


选 D.
*分析* 合同可用定义、秩及正惯性指数或配方法判断. 本题可先用行列式符号筛选.
解法1　各矩阵秩均为2. $A$ 的特征方程为
$ det(lambda E-A)=(lambda-1)^2-4=(lambda-3)(lambda+1)=0, $
特征值为3、$-1$，正惯性指数为1. A项矩阵特征值为 $-3,-1$，B、C项均为1、3，D项为3、$-1$，只有D与原矩阵的惯性相同.
解法2　若 $B=C^T A C$，则 $det B=(det C)^2 det A$，所以行列式同号. 原矩阵行列式为 $-3$，各选项中只有D为负，故选D.
*常见错误* 只交换两行不能保证合同，必须做对应的同类型列变换，不能据此误选C.


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

#answer("9.")[应填1.
解　只需在分段点 $x=+-c$ 连续. 两处均要求
$ frac(2,c)=c^2+1,quad c^3+c-2=0. $
因 $c^3+c$ 在正半轴严格递增，且 $c=1$ 满足方程，所以 $c=1$.
*常见错误* 在 $x=-c$ 处漏掉绝对值，误得负值或矛盾.

]

#answer("10.")[应填 $y=2x$.
解　连续性给出 $lim_(x->0)f(x)=f(0)$，而
$ lim_(x->0)f(x)=lim_(x->0)x frac(f(x),x)=0, $
故 $f(0)=0$. 再按导数定义，
$ f'(0)=lim_(x->0)frac(f(x)-f(0),x)=2. $
切线为 $y-f(0)=f'(0)x$，即 $y=2x$.
*常见错误* 未求出 $f(0)$，只写 $y=2x+f(0)$；擅自用洛必达法则并假定 $f'$ 在原点连续.
]

#answer("11.")[应填 $1/2$.
解　直接积分，
$ integral_1^2 dif x integral_0^1 x^y ln x dif y=integral_1^2[x^y]_0^1 dif x \
=integral_1^2(x-1)dif x=1/2. $
*常见错误* 计算内层积分时漏掉下限的1，得到 $3/2$.
]

#answer("12.")[应填 $x(C-e^(-x))$.
*分析* 化为一阶线性非齐次方程的标准形.
解　原方程为 $y'-y/x=x e^(-x)$，通解
$ y=e^(integral 1/x dif x)(integral x e^(-x)e^(-integral 1/x dif x)dif x+C) \
=x(integral e^(-x)dif x+C)=x(C-e^(-x)). $
*常见错误* 未识别一阶线性方程，未先化成标准形式.
]

#answer("13.")[应填2.
解　由 $det A=0$ 知 $r(A)<=2$ 且0为特征值. 三个特征值互异，因此另外两个均非零，它们的特征向量线性无关，故 $r(A)>=2$. 所以 $r(A)=2$.
]

#answer("14.")[
解　由泊松分布，$E X=D X=1$，故 $E X^2=D X+(E X)^2=2$，于是
$ P{X=E X^2}=P{X=2}=1/(2e). $
*常见错误* 把 $E X^2$ 与 $(E X)^2$ 混淆，误认为 $E X^2=1$，得到 $1/e$.


]

= 三、解答题

#answer("15.")[*分析* 将对数放在分子上，成为 $0/0$ 型极限，可用洛必达法则或等价无穷小.
解法1　连续应用洛必达法则，
$ lim_(x->0)frac(ln((sin x)/x),x^2)=lim_(x->0)frac(x cos x-sin x,2x^2 sin x) \
=lim_(x->0)frac(-sin x,4sin x+2x cos x) \
=lim_(x->0)frac(-cos x,6cos x-2x sin x)=-1/6. $
解法2　当 $x->0$ 时 $ln((sin x)/x)~(sin x)/x-1$，且 $1-cos x~x^2/2$，故
$ lim_(x->0)frac(ln((sin x)/x),x^2)=lim_(x->0)frac(sin x-x,x^3) \
=lim_(x->0)frac(cos x-1,3x^2)=-1/6. $
*注* 解法1中也可适时用 $sin x~x$ 简化.
*常见错误* 漏负号，或误用 $cos x-1~x^2/2$、$(cos x)'=sin x$，得到 $1/6$.

]

#answer("16.")[
解　$ f(x)=integral_0^x t(x-t)dif t+integral_x^1 t(t-x)dif t=1/3 x^3-x/2+1/3. $
令 $f'(x)=x^2-1/2=0$，得 $x=sqrt(2)/2$，$x=-sqrt(2)/2$（舍去）.

因 $f''(x)=2x>0$（$0<x<1$），故 $x=sqrt(2)/2$ 为 $f(x)$ 的极小值点，极小值 $f(sqrt(2)/2)=1/3 (1-sqrt(2)/2)$，且曲线 $y=f(x)$ 在 $(0,1)$ 内是凹的.

由 $f'(x)=x^2-1/2$ 知，$f(x)$ 在 $(0,sqrt(2)/2)$ 内单调递减，在 $(sqrt(2)/2,1)$ 内单调递增.

*分析* 先分段去掉绝对值、求出积分，再求一阶及二阶导数.
*常见错误* 把两个区间上的积分结果写成分段函数，而不是相加. 定积分的可加性要求将 $integral_0^x$ 与 $integral_x^1$ 相加，积分后不应再保留关于积分变量 $t$ 的条件.
]

#answer("17.")[
解法1　作拉格朗日函数
$ F(x,y,z,lambda,mu)=x^2+y^2+z^2+lambda(x^2+y^2-z)+mu(x+y+z-4), $
令
$ cases(F'_x=2x+2lambda x+mu=0,F'_y=2y+2lambda y+mu=0,F'_z=2z-lambda+mu=0,F'_lambda=x^2+y^2-z=0,F'_mu=x+y+z-4=0), $
解此方程组，得 $(x_1,y_1,z_1)=(1,1,2)$，$(x_2,y_2,z_2)=(-2,-2,8)$，故所求的最大值为72，最小值为6.

*分析* 可用两个约束的拉格朗日乘数法；消去一个变量后用一个约束的乘数法；也可把目标函数视为一个变量的函数.
解法2　代入 $z=x^2+y^2$，目标为 $u=x^2+y^2+(x^2+y^2)^2$，约束为 $x+y+x^2+y^2=4$. 令
$ F=x^4+y^4+2x^2 y^2+x^2+y^2+lambda(x+y+x^2+y^2-4). $
则
$ cases(F'_x=4x^3+4x y^2+2x+lambda(1+2x)=0,
F'_y=4y^3+4x^2 y+2y+lambda(1+2y)=0,
x+y+x^2+y^2=4). $
解得 $(x,y)=(1,1),(-2,-2)$，相应 $z=2,8$，得到最大值72、最小值6.
解法3　用 $z=4-x-y$ 代入，目标可写成 $u=4-(x+y)+(4-x-y)^2$. 令
$ F=4-(x+y)+(4-x-y)^2+lambda(x+y+x^2+y^2-4). $
则
$ cases(F'_x=-1-2(4-x-y)+lambda(1+2x)=0,
F'_y=-1-2(4-x-y)+lambda(1+2y)=0,
x+y+x^2+y^2=4). $
同样解得 $(1,1,2)$ 与 $(-2,-2,8)$，最大值72、最小值6.
解法4　把 $y,z$ 看成由约束确定的 $x$ 的隐函数. 求导得
$ cases(z'=2x+2y y',1+y'+z'=0), $
所以
$ y'=frac(-1-2x,2y+1),quad z'=frac(2x-2y,2y+1). $
从而
$ frac(dif u,dif x)=2x+2y frac(-1-2x,2y+1)+2z frac(2x-2y,2y+1) \
=frac(2(x-y)(1+2z),2y+1). $
令其为零得 $x=y$ 或 $z=-1/2$（舍去）. 代入约束得 $x=1,-2$，相应两点如上，得到最小值6、最大值72.
解法5　目标函数为 $u=z+z^2$. 先求 $z=x^2+y^2$ 在 $x+y+x^2+y^2=4$ 下的极值. 设
$ F=x^2+y^2+lambda(x+y+x^2+y^2-4), $
由
$ cases(2x+lambda(1+2x)=0,2y+lambda(1+2y)=0,x+y+x^2+y^2=4) $
解得 $(x,y)=(1,1),(-2,-2)$，所以 $2<=z<=8$. 因 $(z+z^2)'=1+2z>0$，最小值为6、最大值为72.
*常见错误* 消去一个变量后仍将它看作独立变量，求偏导时遗漏链式法则项. 例如以 $z=x^2+y^2$ 代入后，$z^2$ 的偏导中必须保留 $2z partial z/partial x$ 和 $2z partial z/partial y$.
]

#answer("18.")[
解法1　（Ⅰ）设 $F(x,y,z)=x^2+y^2-z-phi(x+y+z)$，则有
$ F'_x=2x-phi', quad F'_y=2y-phi', quad F'_z=-1-phi', $
由公式
$ (partial z)/(partial x)=-F'_x/F'_z, quad (partial z)/(partial y)=-F'_y/F'_z, $
得
$ (partial z)/(partial x)=(2x-phi')/(1+phi'), quad (partial z)/(partial y)=(2y-phi')/(1+phi'), $
所以
$ dif z=(partial z)/(partial x)dif x+(partial z)/(partial y)dif y=1/(1+phi')[(2x-phi')dif x+(2y-phi')dif y]. $
（Ⅱ）由于 $u(x,y)=2/(1+phi')$，所以
$ (partial u)/(partial x)=-2/(1+phi')^2 (1+(partial z)/(partial x))phi''=-(2(2x+1)phi'')/(1+phi')^3. $
解法2　（Ⅰ）对等式
$ x^2+y^2-z=phi(x+y+z) $
两端求微分得
$ 2x dif x+2y dif y-dif z=phi' dot (dif x+dif y+dif z), $
解出 $dif z$ 得
$ dif z=(2x-phi')/(1+phi')dif x+(2y-phi')/(1+phi')dif y. $
（Ⅱ）同解法1.

*分析* 考查隐函数求偏导、全微分及高阶偏导.
*常见错误* $phi(x+y+z)$ 是一元函数与多元函数的复合，$phi'$ 是对其一元自变量的导数，不能写成 $phi'_x,phi'_y,phi'_z$. 第（Ⅱ）问应先将已得偏导代入，化简为 $u=2/(1+phi')$，避免直接对原式求导造成冗长运算.

]

#answer("19.")[
证法1　（Ⅰ）由积分的性质知对任意的实数 $t$，
$ integral_t^(t+2) f(x)dif x=integral_t^0 f(x)dif x+integral_0^2 f(x)dif x+integral_2^(t+2) f(x)dif x. $
令 $s=x-2$，则有
$ integral_2^(t+2) f(x)dif x=integral_0^t f(s+2)dif s=integral_0^t f(s)dif s=-integral_t^0 f(x)dif x, $
所以
$ integral_t^(t+2) f(x)dif x=integral_t^0 f(x)dif x+integral_0^2 f(x)dif x-integral_t^0 f(x)dif x \
=integral_0^2 f(x)dif x. $
（Ⅱ）由（Ⅰ）知对任意的 $t$ 有 $integral_t^(t+2) f(s)dif s=integral_0^2 f(s)dif s$.

记 $integral_0^2 f(s)dif s=a$，则
$ G(x)=2integral_0^x f(t)dif t-a x. $
因为对任意的 $x$，均有
$ G(x+2)-G(x)=2integral_0^(x+2) f(t)dif t-a(x+2)-2integral_0^x f(t)dif t+a x \
=2integral_x^(x+2) f(t)dif t-2a=2integral_0^2 f(t)dif t-2a=0, $
所以 $G(x)$ 是周期为2的周期函数.

证法2　（Ⅰ）设 $F(t)=integral_t^(t+2) f(x)dif x$，由于
$ F'(t)=f(t+2)-f(t)=0, $
所以 $F(t)$ 为常数，从而有 $F(t)=F(0)$.

因为 $F(0)=integral_0^2 f(x)dif x$，所以 $F(t)=integral_0^2 f(x)dif x$，即
$ integral_t^(t+2) f(x)dif x=integral_0^2 f(x)dif x. $
（Ⅱ）由（Ⅰ）知对任意的 $t$ 有 $integral_t^(t+2) f(s)dif s=integral_0^2 f(s)dif s$.

记 $integral_0^2 f(s)dif s=a$，则
$ G(x)=2integral_0^x f(t)dif t-a x, quad G(x+2)=2integral_0^(x+2) f(t)dif t-a(x+2). $
由于对任意 $x$，均有
$ (G(x+2))'=2f(x+2)-a=2f(x)-a, quad (G(x))'=2f(x)-a, $
所以 $(G(x+2)-G(x))'=0$，从而 $G(x+2)-G(x)$ 是常数，即有
$ G(x+2)-G(x)=G(2)-G(0)=0, $
所以 $G(x)$ 是周期为2的周期函数.

*分析* 第（Ⅰ）问可由积分可加性或对变限积分求导证明. 第（Ⅱ）问先用（Ⅰ）将内层积分化成常数.
*常见错误* 换元 $x=u+t$ 后又把 $u+t$ 改名为 $y$，却不同时改变上下限，误得任意函数在等长区间积分相同；仅用几何直观代替证明；第（Ⅱ）问未先利用（Ⅰ）化简.

]

#answer("20.")[
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

#answer("21.")[
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
解法1　进行再加工后，产品的合格率
$ p=0.96+0.04 times 0.75 times 0.8=0.984. $
记 $X$ 为 $n$ 件产品中的合格产品数，$T(n)$ 为 $n$ 件产品的利润，则
$ X tilde B(n,p), quad E X=n p=0.984n, $
$ T(n)=80X-20(n-X), $
$ E T(n)=80E X-20n+20E X=100E X-20n=78.4n. $
要 $E T(n)>=20000$，则 $n>=256$，即该企业每天至少应生产256件产品.

*分析* 把实际问题转为概率模型，先求再加工后的合格率，再利用二项分布的期望求利润.
解法2　令 $X_i$ 为第 $i$ 件产品的利润，则
$ P{X_i=80}=0.96+0.04 times 3/4 times 0.8=0.984, $
$ P{X_i=-20}=0.016,quad E X_i=80 times 0.984-20 times 0.016=78.4. $
每天 $n$ 件产品的总利润为 $T(n)=sum_(i=1)^n X_i$，所以 $E T(n)=78.4n$. 要求 $78.4n>=20000$，即 $n>=255.1$，每天至少256件.
*常见错误* 将随机合格品数直接写成确定的 $0.984n$；未用概率语言表达；计算废品率时漏掉未经再加工或再加工仍不合格的部分，正确废品率为
$ 0.04 times 1/4+0.04 times 3/4 times 0.2=0.016. $
]

