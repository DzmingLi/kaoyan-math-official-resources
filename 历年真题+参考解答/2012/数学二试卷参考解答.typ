#import "@preview/cetz:0.5.2" as cetz
#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2012, subject: "二", title: "2012年全国硕士研究生入学统一考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2012 数学二试卷参考解答

= 一、选择题

#answer("1.")[
选 C.
解　对 $x!=-1$，$y=x/(x-1)$，因此 $x=1$ 为唯一竖直渐近线. 又
$ lim_(x->+-infinity)y=1,quad lim_(x->+-infinity)frac(y,x)=0, $
所以 $y=1$ 是水平渐近线，无斜渐近线，共两条.
*常见错误* 只因分母在 $x=-1$ 为零，就误认其也是竖直渐近线. 必须按极限定义判断.
]

#answer("2.")[
选 A.
*分析* 可用多因子乘积求导，也可由一点处导数定义直接计算.
解法1　令 $g_k(x)=e^(k x)-k$，则
$ f'(x)=sum_(k=1)^n k e^(k x) product_(j!=k)(e^(j x)-j). $
在 $x=0$，除 $k=1$ 项外都含因子 $e^0-1=0$，所以
$ f'(0)=product_(j=2)^n(1-j)=(-1)^(n-1)(n-1)!. $
解法2　由 $f(0)=0$，
$ f'(0)=lim_(x->0)frac(e^x-1,x) dot lim_(x->0)product_(j=2)^n(e^(j x)-j) \
=(-1)^(n-1)(n-1)!. $
*常见错误* 运算出错而选择 C.
]

#answer("3.")[
选 B.
解　因为 $a_n>0$，$S_n$ 单调增加. 若 $S_n$ 有界，由单调有界准则知 $S_n->S$，因而
$ lim_(n->infinity)a_n=lim_(n->infinity)(S_n-S_(n-1))=S-S=0. $
故 $S_n$ 有界是 $a_n$ 收敛的充分条件. 反之取 $a_n=1$，则 $a_n$ 收敛而 $S_n=n$ 无界，所以不是必要条件.
*常见错误* 误以为选项针对 $S_n$ 收敛；未建立 $a_n=S_n-S_(n-1)$ 的关系.
]

#answer("4.")[
选 D.
解　
$ I_2=I_1+integral_pi^(2pi)e^(x^2)sin x dif x<I_1, $
因为在 $(pi,2pi)$ 上被积函数为负. 又分别令 $x=2pi-t$ 和 $x=2pi+t$，得
$ I_3-I_1=integral_pi^(3pi)e^(x^2)sin x dif x \
=integral_0^pi[e^((2pi+t)^2)-e^((2pi-t)^2)]sin t dif t>0. $
所以 $I_2<I_1<I_3$.
*分析* 利用定积分的可加性、比较定理及换元，将两个区间化为相同积分区间.
*常见错误* 未完成 $I_1$ 与 $I_3$ 的比较，误选 C.
]

#answer("5.")[
选 D.
解　由 $f'_x>0$，固定 $y$ 时 $f$ 关于 $x$ 严格增加；由 $f'_y<0$，固定 $x$ 时 $f$ 关于 $y$ 严格减少. 当 $x_1<x_2,y_1>y_2$ 时，
$ f(x_1,y_1)<f(x_2,y_1)<f(x_2,y_2). $
*分析* 关键是理解偏导数在固定另一变量时的含义.
]

#answer("6.")[
选 D.
解法1　
$ integral.double_D(x y^5-1)dif x dif y \
=integral_(-pi/2)^(pi/2)dif x integral_(sin x)^1(x y^5-1)dif y \
=integral_(-pi/2)^(pi/2)(x/6-x sin^6 x/6-1+sin x)dif x=-pi. $
因为 $x/6$、$x sin^6 x/6$、$sin x$ 均为奇函数.
解法2　将 $D$ 分成关于 $x$ 轴对称的左侧区域 $D_1$ 与关于 $y$ 轴对称的上方区域 $D_2$：
$ D_1={ (x,y): -pi/2<=x<=0, sin x<=y<=-sin x }, $
$ D_2={ (x,y): -pi/2<=x<=pi/2, abs(sin x)<=y<=1 }. $
在 $D_1$ 上被积函数 $x y^5$ 关于 $y$ 为奇函数；在 $D_2$ 上关于 $x$ 为奇函数. 故其在两部分上的积分均为0. 区域 $D$ 的面积为 $pi$，所以原积分为 $-pi$.
*常见错误* 不利用奇偶性，而将 $sin^6 x$ 反复降幂、分部积分，导致运算冗长并容易出错.

#align(center,cetz.canvas({
 import cetz.draw: *
 line(..range(0,81).map(i=>{let x=-calc.pi/2+i/80*calc.pi/2;(x,calc.sin(x*1rad))}),..range(0,81).map(i=>{let x=-i/80*calc.pi/2;(x,-calc.sin(x*1rad))}),close:true,fill:rgb("dddddd"))
 line((-calc.pi/2,1),(calc.pi/2,1),..range(0,101).map(i=>{let x=calc.pi/2-i/100*calc.pi;(x,calc.abs(calc.sin(x*1rad)))}),close:true,fill:rgb("eeeeee"))
 line((-1.9,0),(1.95,0),mark:(end:">"));line((0,-1.2),(0,1.35),mark:(end:">"))
 line(..range(0,101).map(i=>{let x=-calc.pi/2+i/100*calc.pi;(x,calc.sin(x*1rad))}))
 line((-calc.pi/2,-1),(-calc.pi/2,1));line((calc.pi/2,0),(calc.pi/2,1),stroke:(dash:"dashed"))
 content((-1.1,-.3),$D_1$);content((0,.7),$D_2$);content((1.95,0),$x$,anchor:"north");content((0,1.35),$y$,anchor:"east")
 content((-.1,-.1),$O$);content((-calc.pi/2,-1.08),$-pi/2$,anchor:"north");content((calc.pi/2,-.08),$pi/2$,anchor:"north");content((-.08,1),[1],anchor:"east")
}))
]

#answer("7.")[
选 C.
解　当 $c_1=1$ 时，$det(alpha_1,alpha_2,alpha_3)=-1$，$det(alpha_1,alpha_2,alpha_4)=1$，排除 A、B. 当 $c_2=0,c_3=c_4=1$ 时，$det(alpha_2,alpha_3,alpha_4)=-2$，排除 D.
当 $c_1=0$ 时 $alpha_1=0$，C 中向量组相关；当 $c_1!=0$ 时，
$ (c_3+c_4)alpha_1-c_1(alpha_3+alpha_4)=0, $
且系数不全为零，故对任意参数 C 中向量组都相关.
*分析* 要证明对任意参数均相关，须给出一般证明；否定某项只需举一个反例.
]

#answer("8.")[
选 B.
解法1　$alpha_1,alpha_2,alpha_3$ 分别是 $A$ 属于1、1、2的特征向量. $alpha_1+alpha_2$ 仍属于特征值1，因此
$ Q^(-1)A Q=mat(1,0,0;0,1,0;0,0,2). $
解法2　$Q$ 由 $P$ 的第二列加到第一列得到，故
$ Q=P C,quad C=mat(1,0,0;1,1,0;0,0,1), $
$ Q^(-1)A Q=C^(-1)(P^(-1)A P)C \
=mat(1,0,0;-1,1,0;0,0,1)mat(1,0,0;0,1,0;0,0,2)mat(1,0,0;1,1,0;0,0,1) \
=mat(1,0,0;0,1,0;0,0,2). $
*分析* 可利用特征向量性质，也可用初等列变换对应的初等矩阵.
]

= 二、填空题

#answer("9.")[
应填1.
解　代入 $x=0$ 得 $y=0$. 对隐函数方程两边求导，
$ 2x-y'=e^y y', $
故 $y'(0)=0$. 再求导，
$ 2-y''=e^y(y')^2+e^y y'', $
代入 $x=y=y'=0$ 得 $y''(0)=1$.
另一种计算方式是先写 $y'=2x/(e^y+1)$，再得
$ y''=frac(2(e^y+1)-2x e^y y',(e^y+1)^2). $
*常见错误* 求零点处的函数值、一阶导数值出错；采用较繁的商求导运算时计算出错.
]

#answer("10.")[
应填 $pi/4$.
解　将和式化为黎曼和，
$ lim_(n->infinity)n sum_(k=1)^n frac(1,k^2+n^2) \
=lim_(n->infinity)1/n sum_(k=1)^n frac(1,1+(k/n)^2) \
=integral_0^1 frac(1,1+x^2)dif x=lr(arctan x)|_0^1=pi/4. $
*常见错误* 未联系定积分定义；粗略夹逼所得上下界分别趋于 $1/2$ 和1，不能由此确定极限；只填积分式而未算出数值.
]

#answer("11.")[
应填0.
解　记 $u=ln x+1/y$，则
$ z'_x=f'(u)/x,quad z'_y=-f'(u)/y^2, $
所以 $x z'_x+y^2 z'_y=f'(u)-f'(u)=0$.
*常见错误* 将只有一个中间变量的复合函数误当成含两个中间变量，使计算复杂化.
]

#answer("12.")[
应填 $sqrt(x)$.
解　以 $y$ 为自变量，方程改写为
$ frac(dif x,dif y)+x/y=3y. $
其通解为
$ x=e^(-integral 1/y dif y)(integral 3y e^(integral 1/y dif y)dif y+C) \
=1/y(integral 3y^2 dif y+C)=y^2+C/y. $
由 $y(1)=1$ 得 $C=0$，故 $y=+-sqrt(x)$；初值条件排除负号，得 $y=sqrt(x)$.
*常见错误* 未转为 $x=x(y)$ 的一阶线性方程；得到正负两支后未用初值选择.
]

#answer("13.")[
应填 $(-1,0)$.
解　由 $y'=2x+1,y''=2$ 及曲率公式，
$ K=frac(abs(y''),(1+(y')^2)^(3/2))=frac(2,[1+(2x+1)^2]^(3/2))=sqrt(2)/2. $
整理得 $x^2+x=0$，由 $x<0$ 取 $x=-1$，此时 $y=0$.
*常见错误* 忘记曲率公式；忽略 $x<0$ 而选 $(0,0)$；颠倒坐标.
]

#answer("14.")[
应填 $-27$.
解　交换两行得 $det B=-det A=-3$，而三阶矩阵的伴随矩阵满足 $det A^*=(det A)^2=9$. 故
$ det(B A^*)=det B dot det A^*=-3 dot 9=-27. $
*分析* 使用行交换对行列式的影响、乘积的行列式和伴随矩阵的行列式公式.

*常见错误* 忽略交换两行造成的负号；误算伴随矩阵的行列式.
]

= 三、解答题

#answer("15.")[
（Ⅰ）解　由题意
$ a&=lim_(x->0)((1+x)/(sin x)-1/x)=lim_(x->0)(x+x^2-sin x)/(x sin x) \
 &=lim_(x->0)(x+x^2-sin x)/x^2=lim_(x->0)(1+2x-cos x)/(2x)=1. $

（Ⅱ）*解法1* 因为
$ f(x)-a=(1+x)/(sin x)-1/x-1=(x+x^2-sin x-x sin x)/(x sin x), $
$ lim_(x->0)(f(x)-a)/x^k&=lim_(x->0)(x+x^2-sin x-x sin x)/x^(k+2) \
 &=lim_(x->0)(1+2x-cos x-sin x-x cos x)/((k+2)x^(k+1)) \
 &=lim_(x->0)(2+sin x-2cos x+x sin x)/((k+2)(k+1)x^k) \
 &=lim_(x->0)(cos x+3sin x+x cos x)/((k+2)(k+1)k x^(k-1)). $
所以，当 $k=1$ 时，有 $lim_(x->0)(f(x)-a)/x^k=1/6$. 此时 $f(x)-a$ 与 $x$ 是同阶无穷小量 $(x->0)$，因此 $k=1$.

*解法2* 因为 $sin x=x-x^3/6+o(x^3)$，所以
$ lim_(x->0)(f(x)-a)/x^k&=lim_(x->0)(x+x^2-sin x-x sin x)/x^(k+2) \
 &=lim_(x->0)(x+x^2-(x-x^3/6)-x^2+o(x^3))/x^(k+2) \
 &=lim_(x->0)(x^3/6+o(x^3))/x^(k+2), $
可知当 $3=k+2$ 时，$f(x)-a$ 与 $x$ 是同阶无穷小量，因此 $k=1$.

*分析* 先将差式通分，再用等价无穷小量、洛必达法则或泰勒公式求极限和阶.
*常见错误* 未先将分母 $x sin x$ 用等价的 $x^2$ 替换，增加了求导运算量.
]

#answer("16.")[
解　因为
$ f'_x=(1-x^2)e^(-(x^2+y^2)/2),quad f'_y=-x y e^(-(x^2+y^2)/2), $
令 $cases(f'_x=0,f'_y=0)$，得驻点 $(1,0)$ 和 $(-1,0)$.
记
$ A=f''_(x x)=x(x^2-3)e^(-(x^2+y^2)/2),quad B=f''_(x y)=y(x^2-1)e^(-(x^2+y^2)/2),quad C=f''_(y y)=x(y^2-1)e^(-(x^2+y^2)/2). $
在点 $(1,0)$ 处，由于 $B^2-A C=-2e^(-1)<0,A=-2e^(-1/2)<0$，所以 $f(1,0)=e^(-1/2)$ 是 $f(x,y)$ 的极大值.
在点 $(-1,0)$ 处，由于 $B^2-A C=-2e^(-1)<0,A=2e^(-1/2)>0$，所以 $f(-1,0)=-e^(-1/2)$ 是 $f(x,y)$ 的极小值.

*分析* 先由一阶偏导数求出所有驻点，再用二阶偏导数判别极值.
*常见错误* 偏导数计算错误；求出驻点而没有判别；只给极值点而未给极值.
]

#answer("17.")[
解　设切点 $A$ 的坐标为 $(x_1,y_1)$，则切线方程为
$ y-y_1=1/x_1(x-x_1), $
将点 $(0,1)$ 代入，得 $x_1=e^2,y_1=2$.
所求面积为
$ S&=integral_1^(e^2)ln x dif x-1/2(e^2-1) dot 2 \
 &=lr(x ln x)|_1^(e^2)-integral_1^(e^2)dif x-e^2+1 \
 &=2e^2-e^2+1-e^2+1=2. $
所求体积为
$ V&=pi integral_1^(e^2)ln^2 x dif x-pi/3 dot 4 dot (e^2-1) \
 &=pi lr(x ln^2 x-2x ln x+2x)|_1^(e^2)-(4pi)/3(e^2-1)=(2pi)/3(e^2-1). $

*分析* 面积可视为曲边梯形与三角形面积之差；体积可视为曲边梯形旋转体与圆锥体积之差.
另一种列式是直接使用直线 $A B$ 的方程 $y=2(x-1)/(e^2-1)$：
$ S=integral_1^(e^2)ln x dif x-integral_1^(e^2)frac(2(x-1),e^2-1)dif x, $
$ V=pi integral_1^(e^2)ln^2 x dif x-pi integral_1^(e^2)lr(frac(2(x-1),e^2-1))^2 dif x. $
*常见错误* 将 $A B$ 误认为切线，从而取错所围区域；较繁的积分运算中算错.
]

#answer("18.")[
*解法1*
$ integral.double_D x y dif sigma&=integral.double_D r^3 cos theta sin theta dif r dif theta \
 &=integral_0^pi dif theta integral_0^(1+cos theta)r^3 cos theta sin theta dif r \
 &=1/4 integral_0^pi(1+cos theta)^4 cos theta sin theta dif theta \
 &=1/4 integral_0^pi(1+cos theta)^4[1-(1+cos theta)]dif(1+cos theta) \
 &=1/4[lr(1/5(1+cos theta)^5)|_0^pi-lr(1/6(1+cos theta)^6)|_0^pi] \
 &=1/4(-2^5/5+2^6/6)=16/15. $

*解法2*
$ integral.double_D x y dif sigma&=1/4 integral_0^pi(1+cos theta)^4 cos theta sin theta dif theta. $
令 $cos theta=t$，
$ &=1/4 integral_(-1)^1(1+t)^4 t dif t \
 &=1/4 integral_(-1)^1(t+4t^2+6t^3+4t^4+t^5)dif t \
 &=2integral_0^1(t^2+t^4)dif t=16/15. $

*分析* 化为极坐标后，可直接凑微分，也可令 $t=cos theta$ 再利用奇偶性.
*常见错误* 面积元漏乘 $r$；展开 $(1+t)^4 t$ 出错；使用半角公式后整理错误.
]

#answer("19.")[
解　（Ⅰ）联立 $cases(f''(x)+f'(x)-2f(x)=0,f''(x)+f(x)=2e^x)$，得 $f'(x)-3f(x)=-2e^x$. 因此
$ f(x)=e^(integral 3dif x)[integral(-2e^x)e^(-integral 3dif x)dif x+C]=e^x+C e^(3x), $
代入 $f''(x)+f(x)=2e^x$，得 $C=0$，所以 $f(x)=e^x$.

（Ⅱ）
$ y&=f(x^2)integral_0^x f(-t^2)dif t=e^(x^2)integral_0^x e^(-t^2)dif t, \
 y'&=2x e^(x^2)integral_0^x e^(-t^2)dif t+1, \
 y''&=2x+2(1+2x^2)e^(x^2)integral_0^x e^(-t^2)dif t. $
当 $x<0$ 时，$y''<0$；当 $x>0$ 时，$y''>0$. 又 $y(0)=0$，所以曲线的拐点为 $(0,0)$.

（Ⅰ）解法2　第一条齐次方程的特征方程为 $lambda^2+lambda-2=0$，根为1、$-2$，故
$ f(x)=C_1 e^x+C_2 e^(-2x), $
$ f'(x)=C_1 e^x-2C_2 e^(-2x),quad f''(x)=C_1 e^x+4C_2 e^(-2x). $
代入第二条方程得 $2C_1 e^x+5C_2 e^(-2x)=2e^x$，所以 $C_1=1,C_2=0$，即 $f(x)=e^x$.
*常见错误* 用第二式消去 $f$ 后转而求二阶非齐次方程，徒增运算；第一阶方程通解公式记错；第二问没有代入已求得的 $f(x)=e^x$；仅以 $y''(0)=0$ 便断言拐点，未验证两侧符号改变.
]

#answer("20.")[
证　记 $f(x)=x ln((1+x)/(1-x))+cos x-x^2/2-1$，则
$ f'(x)=ln((1+x)/(1-x))+(2x)/(1-x^2)-sin x-x, quad f''(x)=4/(1-x^2)^2-1-cos x. $
当 $-1<x<1$ 时，由于 $4/(1-x^2)^2>=4,1+cos x<=2$，所以 $f''(x)>=2>0$，从而 $f'(x)$ 单调增加.
又因为 $f'(0)=0$，所以，当 $-1<x<0$ 时，$f'(x)<0$；当 $0<x<1$ 时，$f'(x)>0$，于是 $f(0)=0$ 是函数 $f(x)$ 在 $(-1,1)$ 内的最小值.
从而当 $-1<x<1$ 时，$f(x)>=f(0)=0$，即
$ x ln((1+x)/(1-x))+cos x>=1+x^2/2. $

证明2　利用带拉格朗日余项的泰勒公式，有
$ x ln(1+x)=x(x-x^2/2+frac(x^3,3(1+theta_1 x)^3)), $
$ x ln(1-x)=x(-x-x^2/2-frac(x^3,3(1-theta_2 x)^3)), $
$ cos x=1-x^2/2+frac(cos(theta_3 x),4!)x^4,quad 0<theta_i<1. $
相减相加得
$ x ln((1+x)/(1-x))+cos x=1+3/2 x^2 \
+lr(frac(1,3(1+theta_1 x)^3)+frac(1,3(1-theta_2 x)^3)+frac(cos(theta_3 x),4!))x^4 \
>=1+3/2 x^2>=1+x^2/2. $
证明3　上述辅助函数为偶函数，只需考虑 $0<=x<1$. 此时
$ f'(x)=ln((1+x)/(1-x))+frac(x(1+x^2),1-x^2)-sin x \
>=ln((1+x)/(1-x))+x-sin x>=0. $
故 $f(x)>=f(0)=0$.
证明4（原书列出的展开式）　
$ x ln(1+x)=x(x-x^2/2+x^3/3-x^4/4+x^5/5)+o(x^6), $
$ x ln(1-x)=x(-x-x^2/2-x^3/3-x^4/4-x^5/5)+o(x^6), $
$ cos x=1-x^2/2!+x^4/4!-x^6/6!+o(x^6). $
相加相减得到
$ x ln((1+x)/(1-x))+cos x \
=1+3/2 x^2+(2/3+1/4!)x^4+(2/5-1/6!)x^6+o(x^6). $
*常见错误* 只给出导数在零点的值，就断言函数在整个区间单调；未说明偶性便只证明正半轴；或把未确定符号的余项当作正数.
]

#answer("21.")[
（Ⅰ）证　令 $f(x)=x^n+x^(n-1)+dots+x-1 (n>1)$，则 $f(x)$ 在 $[1/2,1]$ 上连续，且
$ f(1/2)=((1/2)(1-1/2^n))/(1-1/2)-1=-1/2^n<0,f(1)=n-1>0, $
由闭区间上连续函数的介值定理知，方程 $f(x)=0$ 在 $(1/2,1)$ 内至少有一个实根.
当 $x in (1/2,1)$ 时，$f'(x)=n x^(n-1)+(n-1)x^(n-2)+dots+2x+1>0$，故 $f(x)$ 在 $(1/2,1)$ 内单调增加.
综上所述，方程 $f(x)=0$ 在 $(1/2,1)$ 内有且仅有一个实根.

（Ⅱ）解　由 $x_n in (1/2,1)$ 知数列 ${x_n}$ 有界，又
$ x_n^n+x_n^(n-1)+dots+x_n=1,quad x_(n+1)^(n+1)+x_(n+1)^n+x_(n+1)^(n-1)+dots+x_(n+1)=1. $
因为 $x_(n+1)^(n+1)>0$，所以
$ x_n^n+x_n^(n-1)+dots+x_n>x_(n+1)^n+x_(n+1)^(n-1)+dots+x_(n+1), $
于是有 $x_n>x_(n+1),n=2,3,dots$，即 ${x_n}$ 单调减少.
综上所述，数列 ${x_n}$ 单调有界，故 ${x_n}$ 收敛.
记 $a=lim_(n->infinity)x_n$. 由于 $(x_n-x_n^(n+1))/(1-x_n)=1$，令 $n->infinity$ 并注意到 $1/2<x_n<=x_2<1$，则有 $a/(1-a)=1$，解得 $a=1/2$，即 $lim_(n->infinity)x_n=1/2$.

*分析* 第一问分别证明根的存在性和唯一性；第二问先用单调有界准则证明收敛，再求极限.
为严格说明递减性，将两个等式相减并因式分解，得
$ (x_n-x_(n+1))sum_(k=1)^n sum_(j=0)^(k-1)x_n^(k-1-j)x_(n+1)^j>0. $
双重和中各项为正，故 $x_n>x_(n+1)$，$n>=2$. 又 $x_n^(n+1)<=x_2^(n+1)->0$，所以等比和公式中该项确实趋于0.
*常见错误* 只证存在而未证唯一；单调性的论证不严谨；跳过收敛证明而直接求极限.
]

#answer("22.")[
解　（Ⅰ）$|A|=lr(|mat(1,a,0,0;0,1,a,0;0,0,1,a;a,0,0,1)|)=1-a^4$.

（Ⅱ）若方程组 $A x=beta$ 有无穷多解，则 $|A|=0$. 由（Ⅰ）可得 $a=1$ 或 $a=-1$.
当 $a=1$ 时，
$ (A:beta)=mat(1,1,0,0,1;0,1,1,0,-1;0,0,1,1,0;1,0,0,1,0,augment:#4) arrow.r mat(1,1,0,0,1;0,1,1,0,-1;0,0,1,1,0;0,0,0,0,-2,augment:#4), $
于是 $r(A)!=r(A:beta)$，故方程组 $A x=beta$ 无解.
当 $a=-1$ 时，
$ (A:beta)=mat(1,-1,0,0,1;0,1,-1,0,-1;0,0,1,-1,0;-1,0,0,1,0,augment:#4) arrow.r mat(1,0,0,-1,0;0,1,0,-1,-1;0,0,1,-1,0;0,0,0,0,0,augment:#4), $
于是 $r(A)=r(A:beta)=3<4$，故方程组 $A x=beta$ 有无穷多解.
此时其通解为 $x=mat(0;-1;0;0)+k mat(1;1;1;1)$，$k$ 为任意常数.

（Ⅱ）解法2　直接对含参数的增广矩阵消元，得
$ (A:beta) arrow.r mat(1,a,0,0,1;0,1,a,0,-1;0,0,1,a,0;0,-a^2,0,1,-a,augment:#4) $
$ arrow.r mat(1,a,0,0,1;0,1,a,0,-1;0,0,1,a,0;0,0,a^3,1,-a-a^2,augment:#4) $
$ arrow.r mat(1,a,0,0,1;0,1,a,0,-1;0,0,1,a,0;0,0,0,1-a^4,-a-a^2,augment:#4). $
有无穷多解必须同时满足 $1-a^4=0$ 和 $-a-a^2=0$，所以 $a=-1$，通解同上.
*常见错误* 混淆非齐次方程特解与对应齐次方程基础解系. 通解为特解加上齐次通解，特解不能再乘任意常数.
]

#answer("23.")[
解　（Ⅰ）因为 $r(A^T A)=r(A)$，对 $A$ 施以初等行变换
$ A=mat(1,0,1;0,1,1;-1,0,a;0,a,-1) arrow.r mat(1,0,1;0,1,1;0,0,a+1;0,0,0), $
所以当 $a=-1$ 时，$r(A)=2$.

（Ⅱ）由于 $a=-1$，所以 $A^T A=mat(2,0,2;0,2,2;2,2,4)$. 矩阵 $A^T A$ 的特征多项式为
$ |lambda E-A^T A|=lr(|mat(lambda-2,0,-2;0,lambda-2,-2;-2,-2,lambda-4)|)=lambda(lambda-2)(lambda-6), $
于是 $A^T A$ 的特征值为 $lambda_1=2,lambda_2=6,lambda_3=0$.
当 $lambda_1=2$ 时，由方程组 $(2E-A^T A)x=0$，可得属于2的一个单位特征向量 $1/sqrt(2)mat(1;-1;0)$；
当 $lambda_2=6$ 时，由方程组 $(6E-A^T A)x=0$，可得属于6的一个单位特征向量 $1/sqrt(6)mat(1;1;2)$；
当 $lambda_3=0$ 时，由方程组 $A^T A x=0$，可得属于0的一个单位特征向量 $1/sqrt(3)mat(1;1;-1)$.
令 $Q=mat(1/sqrt(2),1/sqrt(6),1/sqrt(3);-1/sqrt(2),1/sqrt(6),1/sqrt(3);0,2/sqrt(6),-1/sqrt(3))$，则 $f$ 在正交变换 $x=Q y$ 下的标准形为 $f=2y_1^2+6y_2^2$.

（Ⅰ）解法2　
$ A^T A=mat(2,0,1-a;0,1+a^2,1-a;1-a,1-a,3+a^2). $
它的一个二阶子式为 $2(1+a^2)!=0$，故秩为2当且仅当
$ det(A^T A)=(a+1)^2(3+a^2)=0, $
从而 $a=-1$.
*常见错误* 将零向量当成特征向量；未将特征向量单位化就构成正交矩阵；$Q$ 的列顺序与标准形中特征值顺序不对应；将 $A^T A$ 误算成 $A A^T$.
]

