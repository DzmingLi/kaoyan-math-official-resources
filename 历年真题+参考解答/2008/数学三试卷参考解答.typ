#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2008, subject: "三", title: "2008年全国硕士研究生入学统一考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#import "@preview/cetz:0.5.2": canvas, draw
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2008 数学三试卷参考解答

= 一、选择题

#answer("1.")[
选 B.
*分析* 利用变上限积分求导研究间断点类型.
解　由洛必达法则，
$ lim_(x->0)g(x)=lim_(x->0)frac(integral_0^x f(t)dif t,x)=lim_(x->0)f(x)=f(0). $
函数在 $x=0$ 无定义，而极限存在且有限，故为可去间断点.
*另一解法* 积分中值定理给出 $integral_0^x f(t)dif t=x f(xi)$，其中 $xi$ 在0与 $x$ 之间. 当 $x->0$ 时 $xi->0$，同样得到极限 $f(0)$.
]

#answer("2.")[
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

#answer("3.")[
选 B.
*分析* 应按偏导数定义研究原点，不能直接把原点代入仅在非原点成立的求导式.
解　
$ lim_(h->0)frac(f(h,0)-f(0,0),h)=lim_(h->0)frac(e^(abs(h))-1,h) \
=lim_(h->0)frac(abs(h),h), $
左右极限不同，故 $f'_x(0,0)$ 不存在. 又
$ lim_(h->0)frac(f(0,h)-f(0,0),h)=lim_(h->0)frac(e^(h^2)-1,h)=0, $
所以 $f'_y(0,0)=0$.
*常见错误* 对非原点求导得
$ f'_x=e^(sqrt(x^2+y^4))frac(x,sqrt(x^2+y^4)), $
$ f'_y=e^(sqrt(x^2+y^4))frac(2y^3,sqrt(x^2+y^4)), $
再因原点分母为零而判定两个偏导数均不存在. 这些公式在原点并不适用.
]

#answer("4.")[

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

#answer("10.")[应填 $1/2 ln 3$.
解　将所给等式改写为
$ f(x+1/x)=frac(x+1/x,(x+1/x)^2-2), $
得 $f(u)=u/(u^2-2)$，于是
$ integral_2^(2sqrt(2))f(x)dif x=1/2[ln(x^2-2)]_2^(2sqrt(2))=1/2 ln 3. $
*分析* 先由复合函数关系求出被积函数，再积分.
]

#answer("11.")[应填 $pi/4$.
解　区域关于 $y=0$ 对称，故 $integral.double_D y dif x dif y=0$. 利用对称性转为第一象限，再用极坐标，
$ integral.double_D(x^2-y)dif x dif y=4integral_0^(pi/2)dif theta integral_0^1 r^3 cos^2 theta dif r \
=integral_0^(pi/2)cos^2 theta dif theta=pi/4. $
*分析* 利用积分区域和被积函数的对称性简化计算.
]

#answer("12.")[
解　根据初始条件，只需考虑 $(0,+infinity)$ 内的非零解. 分离变量，
$ (dif y)/y=-(dif x)/x,quad ln abs(y)=-ln abs(x)+C, $
故 $y=C/x$. 代入 $y(1)=1$，得 $C=1$，所以 $y=1/x$.
*常见错误* 写成 $1/abs(x)$ 或 $plus.minus 1/x$，没有正确利用初始条件.

]

#answer("13.")[应填3.
解法1　$A^(-1)$ 的特征值为 $1,1/2,1/2$，故 $4A^(-1)-E$ 的特征值为3、1、1，行列式为3.
解法2　$det A=1 times 2 times 2=4$，所以
$ det(4A^(-1)-E)=det(A^(-1))det(4E-A) \
=1/4(4-1)(4-2)(4-2)=3. $
这里利用行列式等于全部特征值之积，不需要矩阵可对角化.
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

#answer("17.")[
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

#answer("18.")[
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

#answer("19.")[
解法1　设 $A_n$ 为用于第 $n$ 年提取 $(10+9n)$ 万元的贴现值，则
$ A_n=(1+r)^(-n)(10+9n), $
故
$ A=sum_(n=1)^infinity A_n=sum_(n=1)^infinity (10+9n)/(1+r)^n \
=10sum_(n=1)^infinity 1/(1+r)^n+sum_(n=1)^infinity (9n)/(1+r)^n \
=200+9sum_(n=1)^infinity n/(1+r)^n. $
设 $S(x)=sum_(n=1)^infinity n x^n$，$x in (-1,1)$.

因为
$ S(x)=x(sum_(n=1)^infinity x^n)'=x(x/(1-x))'=x/(1-x)^2, quad x in (-1,1), $
所以 $S(1/(1+r))=S(1/1.05)=420$（万元），故 $A=200+9 times 420=3980$（万元），即至少应存入3980万元.

*分析* 每年提款的贴现值相加，得到初始存款；也可研究每次提款后的余额递推.
解法2　设第 $t$ 年提款后余额为 $y_t$，则
$ y_t-1.05y_(t-1)=-(10+9t). $
齐次解为 $C(1.05)^t$，设特解为 $a t+b$，解得 $a=180,b=3980$. 因此
$ y_t=C(1.05)^t+180t+3980. $
由 $y_0=A$ 及对所有 $t$ 有 $y_t>=0$，得 $A=C+3980,C>=0$，故至少3980万元.
解法3　记前 $n$ 年贴现值之和为 $A^(n)$，则
$ A^(n)=frac(19,1.05)+frac(28,1.05^2)+dots+frac(10+9n,1.05^n). $
错位相减，得
$ 0.05 A^(n)=19+9frac(1/1.05(1-1/1.05^(n-1)),1-1/1.05)-frac(10+9n,1.05^n). $
令 $n->infinity$，得 $0.05A=19+180=199$，即 $A=3980$.
解法4　利用等比及等差乘等比数列求和公式，
$ A^(n)=frac(10/1.05(1-1/1.05^n),1-1/1.05) \
+frac(9/1.05(1-(n+1)/1.05^n+n/1.05^(n+1)),(1-1/1.05)^2). $
令 $n->infinity$，得 $A=200+3780=3980$.
*常见错误* 未写出贴现值；用连续复利 $e^(-r n)(10+9n)$ 代替题目的离散年复利.
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

