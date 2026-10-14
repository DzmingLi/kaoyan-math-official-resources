#import "@preview/cetz:0.5.2" as cetz
#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2012, subject: "三", title: "2012年全国硕士研究生入学统一考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2012 数学三试卷参考解答

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
解　被积函数是 $f(x^2+y^2)$，极坐标中的积分区域为
$ D={ (r,theta): 2cos theta<=r<=2,0<=theta<=pi/2 }. $
化为直角坐标，
$ D={ (x,y): 0<=x<=2,sqrt(2x-x^2)<=y<=sqrt(4-x^2) }. $
因此
$ integral_0^(pi/2)dif theta integral_(2cos theta)^2 f(r^2)r dif r \
=integral_0^2 dif x integral_sqrt(2x-x^2)^sqrt(4-x^2)f(x^2+y^2)dif y. $
*常见错误* 判断积分区域或面积元错误.
]

#answer("4.")[
选 D.
解　绝对收敛要求正项级数 $sum sqrt(n)sin(1/n^alpha)$ 收敛. 由于
$ sqrt(n)sin(1/n^alpha) tilde frac(1,n^(alpha-1/2)), $
由比较判别法和 $p$ 级数的收敛条件，得 $alpha-1/2>1$，即 $alpha>3/2$.
另一个交错级数条件收敛，要求 $0<2-alpha<=1$，所以 $1<=alpha<2$. 合并得 $3/2<alpha<2$.
*常见错误* 混淆绝对收敛与条件收敛的条件.
]

#answer("5.")[
选 C.
解　当 $c_1=1$ 时，$det(alpha_1,alpha_2,alpha_3)=-1$，$det(alpha_1,alpha_2,alpha_4)=1$，排除 A、B. 当 $c_2=0,c_3=c_4=1$ 时，$det(alpha_2,alpha_3,alpha_4)=-2$，排除 D.
当 $c_1=0$ 时 $alpha_1=0$，C 中向量组相关；当 $c_1!=0$ 时，
$ (c_3+c_4)alpha_1-c_1(alpha_3+alpha_4)=0, $
且系数不全为零，故对任意参数 C 中向量组都相关.
*分析* 要证明对任意参数均相关，须给出一般证明；否定某项只需举一个反例.
]

#answer("6.")[
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

#answer("7.")[
选 D.
解　由独立性，$(X,Y)$ 在单位正方形上均匀分布. 事件 $X^2+Y^2<=1$ 对应第一象限的单位圆四分之一，故
$ P{X^2+Y^2<=1}=frac(pi/4,1)=pi/4. $
*分析* 可积分计算，也可用几何概型的面积比直接判断.
]

#answer("8.")[
选 B.
解　由独立性，
$ U=frac(X_1-X_2,sqrt(2)sigma) tilde N(0,1),quad V=frac(X_3+X_4-2,sqrt(2)sigma) tilde N(0,1), $
且 $U,V$ 独立，$V^2 tilde chi^2(1)$. 因此
$ frac(X_1-X_2,abs(X_3+X_4-2))=frac(U,sqrt(V^2/1)) tilde t(1). $
*常见错误* 未掌握 $t$、$chi^2$、$F$ 分布的结构特点.
]

= 二、填空题

#answer("9.")[
应填 $e^(-sqrt(2))$.
解法1　将原式改写为
$ lr((1+tan x-1)^(1/(tan x-1)))^((tan x-1)/(cos x-sin x)). $
第一因子的极限为 $e$，且
$ lim_(x->pi/4)frac(tan x-1,cos x-sin x) \
=lim_(x->pi/4)frac(sec^2 x,-sin x-cos x)=-sqrt(2). $
故原极限为 $e^(-sqrt(2))$.
解法2　令 $y=(tan x)^(1/(cos x-sin x))$，则
$ ln y=frac(ln(sin x)-ln(cos x),cos x-sin x), $
$ lim_(x->pi/4)ln y=lim_(x->pi/4)frac(cot x+tan x,-sin x-cos x)=-sqrt(2). $
所以 $lim y=e^(-sqrt(2))$.
*常见错误* 取对数后忘记还原，误填 $-sqrt(2)$.
]

#answer("10.")[
应填 $1/e$.
解　复合函数求导得 $y'(e)=f'(f(e))f'(e)$. 因为
$ f(e)=1/2,quad f'(1/2)=2,quad f'(e)=1/(2e), $
所以 $y'(e)=1/e$.
*分析* 内层与外层自变量所在分段不同，必须分别选择表达式.
*常见错误* 漏掉外层导数，填 $1/(2e)$.
]

#answer("11.")[
应填 $2dif x-dif y$.
解　由给定极限及连续性，$f(0,1)=1$，且
$ f(x,y)-f(0,1)=2x-(y-1)+o(sqrt(x^2+(y-1)^2)). $
按照可微和全微分的定义，$f'_x(0,1)=2,f'_y(0,1)=-1$，故
$ lr(dif z)|_(0,1)=2dif x-dif y. $
*常见错误* 未写出可微定义而猜测偏导数，导致符号弄反.
]

#answer("12.")[
应填 $4ln 2$.
解　两条直线与双曲线的交点横坐标分别为1、2. 所求面积为
$ A=integral_0^1(4x-x)dif x+integral_1^2(4/x-x)dif x \
=3/2+4ln 2-3/2=4ln 2. $
*分析* 先确定所围区域，再将积分区间分成两段.

#align(center,cetz.canvas({
 import cetz.draw: *
 line((0,0),(1,4),..range(0,81).map(i=>{let x=1+i/80;(x,4/x)}),(0,0),close:true,fill:rgb("eeeeee"))
 line((-.1,0),(4.3,0),mark:(end:">"));line((0,-.1),(0,4.6),mark:(end:">"))
 line((0,0),(4,4));line((0,0),(1.1,4.4))
 line(..range(0,101).map(i=>{let x=.9+i/100*3.1;(x,4/x)}))
 line((1,0),(1,4),stroke:(dash:"dashed"));line((2,0),(2,2),stroke:(dash:"dashed"))
 content((4.3,0),$x$,anchor:"north");content((0,4.6),$y$,anchor:"east");content((-.1,-.1),$O$)
 content((1,-.12),[1],anchor:"north");content((2,-.12),[2],anchor:"north")
 content((1.15,4.4),$y=4x$);content((3.4,3.7),$y=x$);content((3.65,1.3),$y=4/x$)
}))
]

#answer("13.")[
应填 $-27$.
解　交换两行得 $det B=-det A=-3$，而三阶矩阵的伴随矩阵满足 $det A^*=(det A)^2=9$. 故
$ det(B A^*)=det B dot det A^*=-3 dot 9=-27. $
*分析* 使用行交换对行列式的影响、乘积的行列式和伴随矩阵的行列式公式.

*常见错误* 忽略交换两行造成的负号；误算伴随矩阵的行列式.
]

#answer("14.")[
应填 $3/4$.
解　$A,C$ 互不相容，所以 $P(A C)=0$，又 $A B C subset A C$，故 $P(A B C)=0$. 于是
$ P(A B|overline(C))=frac(P(A B overline(C)),P(overline(C))) \
=frac(P(A B)-P(A B C),1-P(C))=frac(1/2,1-1/3)=3/4. $
*常见错误* 混淆条件概率或计算错误，得到 $1/4$ 或1.
]

= 三、解答题

#answer("15.")[
解
$ lim_(x->0)(e^(x^2)-e^(2-2cos x))/x^4&=lim_(x->0)(e^(x^2-2+2cos x)-1)/x^4 dot e^(2-2cos x) \
 &=lim_(x->0)(x^2-2+2cos x)/x^4=lim_(x->0)(x-sin x)/(2x^3) \
 &=lim_(x->0)(1-cos x)/(6x^2)=1/12. $

解法2　由泰勒公式，
$ e^(x^2)=1+x^2+x^4/2+o(x^4), $
$ e^(2-2cos x)=1+2(1-cos x)+2(1-cos x)^2+o((1-cos x)^2) \
=1+2(x^2/2-x^4/24)+x^4/2+o(x^4). $
因此两者相减为 $x^4/12+o(x^4)$，除以 $x^4$ 后极限为 $1/12$.
解法3　直接应用洛必达法则两次，
$ lim_(x->0)frac(e^(x^2)-e^(2-2cos x),x^4) \
=lim_(x->0)frac(2x e^(x^2)-2sin x e^(2-2cos x),4x^3) $
$ =lim_(x->0)lr(frac(4x^2 e^(x^2)-4sin^2 x e^(2-2cos x),12x^2) \
+frac(2e^(x^2)-2cos x e^(2-2cos x),12x^2)). $
第一项趋于0，第二项再用洛必达法则得
$ lim_(x->0)lr(frac(e^(x^2),6)-frac(e^(2-2cos x)sin x cos x,6x) \
+frac(e^(2-2cos x)sin x,12x))=1/6-1/6+1/12=1/12. $
*常见错误* 泰勒展开各项写错；反复求导时不及时拆项，使运算过于复杂.
]

#answer("16.")[
解
$ integral.double_D e^x x y dif x dif y&=integral_0^1 dif x integral_sqrt(x)^(1/sqrt(x))e^x x y dif y \
 &=1/2 integral_0^1 e^x(1-x^2)dif x=lr(1/2 e^x(1-x^2))|_0^1+integral_0^1 x e^x dif x \
 &=-1/2+lr(x e^x)|_0^1-integral_0^1 e^x dif x=1/2. $

*分析* 无界区域可表示为 $0<x<=1,sqrt(x)<=y<=1/sqrt(x)$. 选先对 $y$ 积分可大幅简化计算.
*常见错误* 先对 $x$ 积分会得到
$ integral_0^1 dif y integral_0^(y^2)e^x x y dif x \
+integral_1^infinity dif y integral_0^(1/y^2)e^x x y dif x, $
后续表达式较复杂. 一种积分次序难以计算时，应及时交换积分次序.
]

#answer("17.")[
解　（Ⅰ）由题设知 $(partial C)/(partial x)=20+x/2,(partial C)/(partial y)=6+y,C(0,0)=10 000$，从而有
$ C(x,y)=10 000+20x+x^2/4+6y+y^2/2. $

（Ⅱ）由题设知 $x+y=50$，此时的成本函数为
$ f(x)=C(x,50-x)=10 000+20x+x^2/4+6(50-x)+(50-x)^2/2,quad 0<=x<=50, $
求导得 $f'(x)=3x/2-36$，令 $f'(x)=0$，解得唯一驻点 $x=24$.
又 $f''(24)=3/2>0$，所以 $x=24$ 是成本函数 $C(x,50-x)$ 的最小值点.
故当甲为24件，乙为26件时，总成本达到最小，最小成本为 $C(24,26)=11 118$ 万元.

（Ⅲ）$lr((partial C)/(partial x))|_(x=24,y=26)=lr(20+x/2)|_(x=24,y=26)=32$，其经济意义为：当生产乙产品26件时，生产第25件甲产品需32万元.

（Ⅱ）解法2　利用拉格朗日乘数法，令
$ F(x,y,lambda)=C(x,y)+lambda(x+y-50). $
解方程组
$ cases(20+x/2+lambda=0,6+y+lambda=0,x+y-50=0), $
得到 $x=24,y=26$，最小成本仍为11 118万元.
*分析* 利用边际成本确定总成本函数，再求约束条件下的最小值.
*常见错误* 总成本漏加固定成本10 000万元；未说明边际成本32的经济意义.
]

#answer("18.")[
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

#answer("21.")[
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

#answer("22.")[
解　（Ⅰ）$P{X=2Y}=P{X=0,Y=0}+P{X=2,Y=1}=1/4$.

（Ⅱ）由 $(X,Y)$ 的概率分布可得，$X,Y,X Y$ 的概率分布分别为
#table(columns:4,[$X$],[0],[1],[2],[$P$],[$1/2$],[$1/3$],[$1/6$])
#table(columns:4,[$Y$],[0],[1],[2],[$P$],[$1/3$],[$1/3$],[$1/3$])
#table(columns:4,[$X Y$],[0],[1],[4],[$P$],[$7/12$],[$1/3$],[$1/12$])
所以
$ E X=2/3,E Y=1,E(Y^2)=5/3,D Y=2/3,quad E(X Y)=2/3,op("Cov")(X,Y)=E(X Y)-E X dot E Y=0, $
故 $op("Cov")(X-Y,Y)=op("Cov")(X,Y)-D Y=-2/3$.

（Ⅱ）解法2　直接按协方差定义展开：
$ op("Cov")(X-Y,Y)=E[(X-Y)Y]-E(X-Y) dot E Y \
=E(X Y)-E(Y^2)-E X dot E Y+(E Y)^2 \
=2/3-5/3-2/3 dot 1+1=-2/3. $
解法3　由联合分布得到 $(X-Y,Y)$ 的分布：
#table(columns:4,[$X-Y$ / $Y$],[0],[1],[2],[-2],[0],[0],[$1/4$],[0],[$1/4$],[$1/3$],[$1/12$],[2],[$1/12$],[0],[0])
于是 $(X-Y)Y$ 在 $-4,0$ 处的概率为 $1/4,3/4$；$X-Y$ 在 $-2,0,2$ 处的概率为 $1/4,2/3,1/12$.
因此
$ E[(X-Y)Y]=-1,quad E(X-Y)=-1/3,quad E Y=1, $
$ op("Cov")(X-Y,Y)=-1-(-1/3) dot 1=-2/3. $
*分析* 从联合分布求边缘分布与相关数字特征，再用协方差定义或性质求解.
]

#answer("23.")[
（Ⅰ）解　$X$ 与 $Y$ 的分布函数均为
$ F(x)=cases(1-e^(-x) & x>=0,0 & x<0). $
$V=min{X,Y}$ 的分布函数为
$ F_V(v)&=P{min{X,Y}<=v}=1-P{min{X,Y}>v} \
 &=1-P{X>v,Y>v}=1-[1-F(v)]^2=cases(1-e^(-2v) & v>=0,0 & v<0), $
故 $V$ 的概率密度为 $f_V(v)=F'_V(v)=cases(2e^(-2v) & v>0,0 & v<=0)$.

（Ⅱ）*解法1* $U=max{X,Y}$ 的分布函数为
$ F_U(u)&=P{max{X,Y}<=u}=P{X<=u,Y<=u}=F^2(u) \
 &=cases((1-e^(-u))^2 & u>=0,0 & u<0), $
故 $U$ 的概率密度为 $f_U(u)=F'_U(u)=cases(2e^(-u)(1-e^(-u)) & u>0,0 & u<=0)$，
$ E(U+V)&=E U+E V=integral_0^(+infinity)2u e^(-u)(1-e^(-u))dif u+integral_0^(+infinity)2v e^(-2v)dif v \
 &=integral_0^(+infinity)2u e^(-u)dif u=2. $

*解法2* 因为 $U+V=min{X,Y}+max{X,Y}=X+Y$，故 $E(U+V)=E(X+Y)=E X+E Y=2$.

（Ⅱ）解法3　$(U,V)$ 的联合密度为
$ f_(U,V)(u,v)=cases(2e^(-(u+v))&0<v<u,0&"其他"). $
从而
$ f_(U+V)(t)=integral_(t/2)^t 2e^(-t)dif u=t e^(-t),quad t>0. $
所以可以由联合密度或和的密度求期望：
$ E(U+V)=integral_0^infinity dif u integral_0^u(u+v)2e^(-(u+v))dif v=2, $
或
$ E(U+V)=integral_0^infinity t^2 e^(-t)dif t=2. $
*分析* 第一问用分布函数法. 第二问若注意到最大值与最小值之和等于 $X+Y$，则无需再求分布.
*常见错误* 选择较繁的积分解法时，计算错误或未完成计算.
]

