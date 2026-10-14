#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2017, subject: "二", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#import "@preview/cetz:0.5.2"
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2017 数学二试卷参考解答

= 一、选择题


#answer("1.")[

A. 【解】由右连续性及等价无穷小，
$ b=f(0)=lim_(x->0^+)frac(1-cos sqrt(x),a x)=lim_(x->0^+)frac(x/2,a x)=1/(2a), $
故ab=1/2. 也可用洛必达法则，右极限为 $lim_(x->0^+)sin sqrt(x)/(2a sqrt(x))=1/(2a)$.

]

#answer("2.")[
B. 【解法1】因f''＞0，曲线在弦下. 对0＜x＜1，有 $f(x)<2x-1$，故 $integral_0^1 f(x)dif x<0$；同理 $integral_(-1)^0 f(x)dif x<0$，相加得B.
【解法2】对0＜x＜1，令 $G(x)=(f(x)-f(0))/x$. 由中值定理，$G'(x)=[f'(x)-f'(xi)]/x>0$，其中0＜ξ＜x. 故G(x)＜G(1)=2，仍得f(x)＜2x−1，另一半区间同理.
【解法3】取 $f(x)=2x^2-1$，其积分为−2/3，两半区间积分相等，排除A、C、D.
【典型错误】应将曲线的凹凸性与定积分的几何意义结合.
]

#answer("3.")[
D. 【解】A取常数数列 $x_n=pi$，B、C取 $x_n=-1$ 即为反例. 对D，设 $x_n->a$，则连续性给出a+sin a=0，它的唯一解为0，故D成立.
【典型错误】反例应满足数列收敛的条件.
]

#answer("4.")[
C. 【解】齐次特征根为2±2i. 将右端分为 $e^(2x)$ 和 $e^(2x)cos 2x$，分别设特解 $A e^(2x)$ 与 $x e^(2x)(B cos 2x+C sin 2x)$，因为2不是特征根，而2+2i为单根. 由叠加原理取两者之和.
【典型错误】应根据特征根判断是否乘x，不能只比对右端的形式.
]

#answer("5.")[
D. 【解】固定y，f随x严格递增，故f(0,1)＜f(1,1)；固定x，f随y严格递减，故f(1,1)＜f(1,0). 因此f(0,1)＜f(1,0).
【典型错误】使用偏导数判断单调性时，另一变量应固定.
]

#answer("6.")[

C. 【解】初始甲领先10m. 从0到10s，甲又比乙多走10m，故此时领先20m. 从10到25s，乙比甲多走20m，故在25s时首次追上甲.

]

#answer("7.")[
B. 【解】由相似对角化式，$A alpha_1=0,A alpha_2=alpha_2,A alpha_3=2alpha_3$，所以
$ A(alpha_1+alpha_2+alpha_3)=alpha_2+2alpha_3. $
【典型错误】应准确理解对角化矩阵的各列是对应特征向量.
]

#answer("8.")[

B. 【解】三个矩阵的特征多项式均为 $(lambda-2)^2(lambda-1)$. A有三个线性无关特征向量，故与对角阵C相似；B只有两个线性无关特征向量，不能与C相似.
【典型错误】特征多项式相同不一定相似.

]


= 二、填空题

#answer("9.")[
$y=x+2$. 【解】斜率 $k=lim_(x->infinity)y/x=1$，截距
$ b=lim_(x->infinity)[x(1+arcsin(2/x))-x]=lim_(x->infinity)frac(arcsin(2/x),1/x)=2. $
故斜渐近线为y=x+2. 【典型错误】应分别求斜率和截距，核对反三角函数极限.
]

#answer("10.")[
$-1/8$. 【解】$dif x/dif t=1+e^t,dif y/dif t=cos t$，所以
$ frac(dif y,dif x)=frac(cos t,1+e^t),quad frac(dif^2 y,dif x^2)=frac(-sin t(1+e^t)-e^t cos t,(1+e^t)^3). $
代入t=0得−1/8. 【典型错误】对一阶导数关于t求导后，还须除以dif x/dif t.
]

#answer("11.")[
1. 【解】先在有限区间上分部积分，
$ integral_0^b frac(ln(1+x),(1+x)^2)dif x=-[frac(ln(1+x),1+x)]_0^b+integral_0^b frac(1,(1+x)^2)dif x $
$ =-frac(ln(1+b),1+b)-frac(1,1+b)+1. $
令b→+∞即得1. 【典型错误】凑微分 $dif(1/(1+x))$ 时有负号.
]

#answer("12.")[
$x y e^y$. 【解】由全微分得 $f_x=y e^y,f_y=x(1+y)e^y$. 对x积分得 $f=x y e^y+c(y)$，再对y求导比较得c'(y)=0，故c为常数. 由f(0,0)=0，c=0.
【典型错误】不能将从两项偏导分别积分所得的相同函数再相加，最终应核对全微分.
]

#answer("13.")[
$-ln(cos 1)$. 【解】交换积分次序，区域为 $0<=y<=x<=1$，故
$ integral_0^1 dif y integral_y^1 frac(tan x,x)dif x=integral_0^1 dif x integral_0^x frac(tan x,x)dif y $
$ =integral_0^1 tan x dif x=-[ln(cos x)]_0^1=-ln(cos 1). $
【典型错误】内层换为对y积分时，下限是0、上限是x，不能颠倒区域；积分tan x须注意负号.
]

#answer("14.")[
$-1$. 【解】由特征向量定义，
$ lambda mat(1;1;2)=mat(4,1,-2;1,2,a;3,1,-1)mat(1;1;2)=mat(1;3+2a;2). $
所以λ=1、a=−1. 【典型错误】即使特征值未给出，也可将它作为未知量，与a一并求解.
]

= 三、解答题

#answer("15.")[

解　令 $x-t=u$，则 $t=x-u$，$dif t=-dif u$.
$ lim_(x->0^+)(integral_0^x sqrt(x-t)e^t dif t)/sqrt(x^3)
 &=lim_(x->0^+)(e^x integral_0^x sqrt(u)e^(-u)dif u)/sqrt(x^3) \
 &=lim_(x->0^+)(integral_0^x sqrt(u)e^(-u)dif u)/sqrt(x^3) \
 &=lim_(x->0^+)(sqrt(x)e^(-x))/(3/2 sqrt(x))=2/3. $

【解法2】令 $u=sqrt(x-t)$，则分子为 $2e^x integral_0^(sqrt(x))u^2 e^(-u^2)dif u$. 去掉趋于1的因子e^x，再用洛必达法则得
$ lim_(x->0^+)frac(2 integral_0^(sqrt(x))u^2 e^(-u^2)dif u,x^(3/2))=lim_(x->0^+)frac(sqrt(x)e^(-x),3/2 sqrt(x))=2/3. $
【解法3】由积分中值定理，存在 $0<=xi<=x$，使分子为 $e^xi integral_0^x sqrt(x-t)dif t=2/3 e^xi x^(3/2)$，故极限为2/3.
【典型错误】原被积函数含有参数x，不能直接按单纯变上限积分求导；换元后应正确处理因子和积分限.

]

#answer("16.")[

解　因为 $y=f(e^x,cos x)$，所以
$ (dif y)/(dif x)&=(partial f(u,v))/(partial u)e^x-(partial f(u,v))/(partial v)sin x, \
(dif^2 y)/(dif x^2)&=(partial f(u,v))/(partial u)e^x+((partial^2 f(u,v))/(partial u^2)e^x-(partial^2 f(u,v))/(partial u partial v)sin x)e^x \
&quad -(partial f(u,v))/(partial v)cos x-((partial^2 f(u,v))/(partial u partial v)e^x-(partial^2 f(u,v))/(partial v^2)sin x)sin x. $
当 $x=0$ 时，$u=e^0=1$，$v=cos 0=1$，所以
$ (dif y)/(dif x)|_(x=0)&=(partial f(1,1))/(partial u), \
(dif^2 y)/(dif x^2)|_(x=0)&=(partial f(1,1))/(partial u)+(partial^2 f(1,1))/(partial u^2)-(partial f(1,1))/(partial v). $

【典型错误】应先求导再代入x=0，不能先把函数替换为f(1,1)再求导. 二阶求导时既要对偏导数使用链式法则，也要对外部的指数和三角因子求导.

]

#answer("17.")[

解
$ lim_(n->+infinity)sum_(k=1)^n k/n^2 ln(1+k/n)
 &=lim_(n->+infinity)sum_(k=1)^n k/n ln(1+k/n)dot 1/n \
 &=integral_0^1 x ln(1+x)dif x \
 &=1/2 x^2 ln(1+x)|_0^1-1/2 integral_0^1 x^2/(1+x)dif x \
 &=1/2 ln 2-1/2 integral_0^1(x-1+1/(1+x))dif x \
 &=1/2 ln 2-1/4(x-1)^2|_0^1-1/2 ln(1+x)|_0^1=1/4. $

【典型错误】项数随n变化，不能逐项取极限后直接相加；k/n不对全部k一致趋于0，不能把ln(1+k/n)直接替换为k/n. 分部积分中应保留1/2，牛顿—莱布尼茨公式须核对符号.

]

#answer("18.")[

解　由 $x^3+y^3-3x+3y-2=0$，得
$ 3x^2+3y^2 y'-3+3y'=0,quad "①" \
6x+6y(y')^2+3y^2 y''+3y''=0.quad "②" $
在①式中令 $y'=0$ 得 $x=-1$，$x=1$.
当 $x$ 分别取 $-1$ 和1时，由原方程得 $y(-1)=0$，$y(1)=1$.
将 $x=-1$，$y(-1)=0$ 及 $y'(-1)=0$ 代入②式得 $y''(-1)=2$.
因为 $y'(-1)=0$，$y''(-1)>0$，所以 $y(-1)=0$ 是 $y(x)$ 的极小值.
将 $x=1$，$y(1)=1$ 及 $y'(1)=0$ 代入②式得 $y''(1)=-1$.
因为 $y'(1)=0$，$y''(1)<0$，所以 $y(1)=1$ 是 $y(x)$ 的极大值.

【解法2】令 $F(x,y)=x^3+y^3-3x+3y-2$，则
$ y'=-F_x/F_y=frac(1-x^2,1+y^2), $
$ y''=frac(-2x(1+y^2)-2y y'(1-x^2),(1+y^2)^2). $
令y'=0得x=±1，代入原式得y(1)=1、y(−1)=0，再得y''(1)=−1、y''(−1)=2，分别为极大值和极小值.
【解法3】由同一导数表达式，$-1<x<1$ 时y'＞0，$x<-1$ 或x＞1时y'＜0，故同样得到上述极值.
【典型错误】本题求的是一元隐函数y(x)的极值，不能当成二元函数F(x,y)的极值或条件极值. 求导不能把y视为常数，求驻点后还须判断极值.

]

#answer("19.")[

解　（Ⅰ）由题设知 $f(x)$ 连续且 $lim_(x->0^+)f(x)/x$ 存在，所以 $f(0)=0$.
由 $lim_(x->0^+)f(x)/x<0$ 与极限的保号性可知，存在 $a in (0,1)$，使得 $f(a)/a<0$，即 $f(a)<0$.
又 $f(1)>0$，所以存在 $b in (a,1) subset (0,1)$，使得 $f(b)=0$，即方程 $f(x)=0$ 在区间 $(0,1)$ 内至少存在一个实根.
（Ⅱ）由（Ⅰ）知 $f(0)=f(b)=0$，根据罗尔定理，存在 $c in (0,b) subset (0,1)$，使得 $f'(c)=0$.
令 $F(x)=f(x)f'(x)$，由题设知 $F(x)$ 在区间 $[0,b]$ 可导，且 $F(0)=0$，$F(c)=0$，$F(b)=0$.
根据罗尔定理，存在 $xi in (0,c)$，$eta in (c,b)$，使得 $F'(xi)=F'(eta)=0$，即 $xi,eta$ 是方程 $f(x)f''(x)+(f'(x))^2=0$ 在区间 $(0,1)$ 内的两个不同实根.

（Ⅰ）【证法2】令 $g(x)=f(x)/x$，它在 $0<x<=1$ 连续，且零点两侧的符号由 $lim_(x->0^+)g(x)<0$、g(1)＞0保证，故在(0,1)内存在零点，也就是f的零点.
（Ⅱ）【证法2】由f(0)=0可得 $f'(0)=lim_(x->0^+)f(x)/x<0$. 在第一问的[a,b]上用拉格朗日中值定理，存在 $xi in(a,b)$，使 $f'(xi)=(f(b)-f(a))/(b-a)>0$. 因f'连续，在 $(0,xi)$ 内存在c使f'(c)=0，以下用第一种证法的辅助函数F再应用两次罗尔定理.
【证法3】因f(0)=f(b)=0而f(a)＜0，f在[0,b]上的最小值必在内部某点c取得，故f'(c)=0，再按第一种证法完成证明.
【典型错误】不能由商的极限为负推出f(0)＜0；单点导数为负也不能直接断言邻域内单调. 方程存在零点不等于其左端恒为0，不能将存在性问题变为微分方程求解.

]

#answer("20.")[
【解】D关于y轴对称，故奇函数2x的积分为0；D为半径1的圆域，面积为π. 因此
$ integral.double_D(x+1)^2 dif x dif y=integral.double_D x^2 dif x dif y+pi. $
极坐标边界为 $r=2sin theta,0<=theta<=pi$，于是
$ integral.double_D x^2 dif x dif y=integral_0^pi dif theta integral_0^(2sin theta)r^3 cos^2 theta dif r $
$ =4integral_0^pi sin^4 theta cos^2 theta dif theta=integral_0^pi sin^2 theta sin^2(2theta)dif theta $
$ =1/2 integral_0^pi sin^2(2theta)dif theta-1/4 integral_0^pi sin^2(2theta)dif(sin 2theta)=pi/4. $
故原积分为 $5pi/4$.
【另一计算】利用对称性与华里士公式，
$ integral.double_D x^2 dif x dif y=8integral_0^(pi/2)(sin^4 theta-sin^6 theta)dif theta $
$ =8(frac(1 dot 3,2 dot 4)frac(pi,2)-frac(1 dot 3 dot 5,2 dot 4 dot 6)frac(pi,2))=pi/4. $
【典型错误】先利用奇偶性可减少运算；边界应为r=2sinθ，极坐标变换不能遗漏雅可比因子r，降幂后须仔细整理系数.

]

#answer("21.")[

解　曲线 $l:y=y(x)$ 在点 $P(x,y)$ 的切线方程为 $Y-y=y'(X-x)$.
令 $X=0$ 得 $Y_P=y-x y'$.
曲线 $l:y=y(x)$ 在点 $P(x,y)$ 的法线方程为 $y'(Y-y)=-X+x$.
令 $Y=0$ 得 $X_P=x+y y'$.
由题设知 $x+y y'=y-x y'$，整理得
$ y'=(y-x)/(y+x)=(y/x-1)/(y/x+1). $
令 $y/x=u$，则 $(dif y)/(dif x)=u+x(dif u)/(dif x)$，代入上述方程并分离变量得
$ (1+u)/(1+u^2)dif u=-1/x dif x. $
两边积分得 $arctan u+1/2 ln(1+u^2)=-ln abs(x)+C$，即 $arctan(y/x)+1/2 ln(x^2+y^2)=C$.
因为曲线 $l$ 过点 $(1,0)$，所以 $C=0$，于是曲线 $l$ 上点的坐标 $(x,y)$ 满足的方程为
$ arctan(y/x)+1/2 ln(x^2+y^2)=0. $

【典型错误】整理后为齐次方程，应令u=y/x. 分离变量时须正确整理为 $(1+u)/(1+u^2)dif u=-dif x/x$，不能错误拆分有理式.

]

#answer("22.")[

解　（Ⅰ）由 $alpha_3=alpha_1+2alpha_2$，知 $alpha_1,alpha_2,alpha_3$ 线性相关，故 $r(A)<=2$.
又因为 $A$ 有3个不同的特征值，所以 $A$ 至少有2个不为零的特征值，从而 $r(A)>=2$.
故 $r(A)=2$.
（Ⅱ）由 $alpha_1+2alpha_2-alpha_3=0$，知 $A mat(1;2;-1)=0$，故 $mat(1;2;-1)$ 为方程组 $A x=0$ 的一个解.
又 $r(A)=2$，所以 $mat(1;2;-1)$ 为 $A x=0$ 的一个基础解系.
因为 $beta=alpha_1+alpha_2+alpha_3=A mat(1;1;1)$，所以 $mat(1;1;1)$ 为方程组 $A x=beta$ 的一个特解.
故 $A x=beta$ 的通解为 $x=mat(1;1;1)+k mat(1;2;-1)$，其中 $k$ 为任意常数.

【典型错误】α₁、α₂、α₃是矩阵的列向量，不能擅自视为三个特征向量. 非齐次方程的通解应为一个特解加导出齐次方程的通解，特解前不能再乘任意常数.

]

#answer("23.")[

解　二次型 $f$ 的矩阵为 $A=mat(2,1,-4;1,-1,1;-4,1,a)$.
由题设知 $abs(A)=0$. 又 $abs(A)=6-3a$，于是 $a=2$.
矩阵 $A$ 的特征多项式为 $abs(lambda E-A)=lambda(lambda+3)(lambda-6)$，所以特征值为 $-3,6,0$.
不妨设 $lambda_1=-3$，$lambda_2=6$，$lambda_3=0$.
矩阵 $A$ 属于特征值 $lambda_1=-3$ 的单位特征向量为 $beta_1=1/sqrt(3)(1,-1,1)^T$；
属于特征值 $lambda_2=6$ 的单位特征向量为 $beta_2=1/sqrt(2)(-1,0,1)^T$；
属于特征值 $lambda_3=0$ 的单位特征向量为 $beta_3=1/sqrt(6)(1,2,1)^T$.
故所求的一个正交矩阵为
$ Q=(beta_1,beta_2,beta_3)=mat(1/sqrt(3),-1/sqrt(2),1/sqrt(6);-1/sqrt(3),0,2/sqrt(6);1/sqrt(3),1/sqrt(2),1/sqrt(6)). $

【典型错误】所求Q的列须为单位正交向量，不能只取正交但未单位化的特征向量. 实对称矩阵不同特征值对应的特征向量已经正交，不必再作多余的正交化.

]

