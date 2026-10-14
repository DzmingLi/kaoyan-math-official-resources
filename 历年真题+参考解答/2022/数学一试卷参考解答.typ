#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2022, subject: "一", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2022 数学一试卷参考解答

= 一、选择题

#answer-key(
  [1. B.],
  [2. B.],
  [3. D.],
  [4. A.],
  [5. A.],
  [6. C.],
  [7. C.],
  [8. C.],
  [9. A.],
  [10. D.],
)

#answer("1.")[
应选 B.

分析　本题考查极限运算及函数在一点连续与可导的定义.

解　$lim_(x->1)f(x)=lim_(x->1)[f(x)/(ln x) dot ln x]=1 times 0=0$.
若另外假设在1处连续，则可得 $f(1)=0$，且由导数定义得 $f'(1)=1$，但题设没有连续条件，不能得到 A、C 的结论.
导函数的极限更需要可导及导函数连续等条件，所以 D 不成立.

典型错误　附加题中没有的条件，错用连续与可导定义，或暗中假定导函数连续.
]

#answer("2.")[
应选 B.

分析　本题考查乘积求导与复合函数链式求导.

解　
$ z_x=y f(y/x)-y^2/x f'(y/x)，quad z_y=x f(y/x)+y f'(y/x). $
所以 $x z_x+y z_y=2x y f(y/x)$.
由题设得 $f(y/x)=y/(2x)ln(y/x)$，即 $f(u)=1/2 u ln u$，$f'(u)=1/2 ln u+1/2$.
因此 $f(1)=0,f'(1)=1/2$.

典型错误　基本求导运算不熟练，计算出错.
]

#answer("3.")[
应选 D.

分析　本题考查函数极限与数列极限的关系、复合极限，以及三角函数的单调性、奇偶性和连续性.

解　因为 $cos x_n in [0,1]$，且正弦在此区间单调、连续，所以 $sin(cos x_n)$ 有极限时，$cos x_n=arcsin(sin(cos x_n))$ 有极限.
但取 $x_n=(-1)^n pi/2$ 时，$sin x_n=(-1)^n$，$cos x_n=0$，$cos(sin x_n)=cos 1$，$sin(cos x_n)=0$.
此例表明 A、B、C 均不成立，而 D 正确.

典型错误　不清楚本题运用的单调性、连续性和奇偶性，不能正确处理复合极限.
]

#answer("4.")[
应选 A.

分析　本题考查定积分比较及对数函数不等式.

解　当 $0<x<1$ 时，由拉格朗日中值定理得 $x/(1+x)<ln(1+x)<x$.
又 $1<1+x<2$，故 $x/2<ln(1+x)$，从而
$ x/(2(1+cos x))<ln(1+x)/(1+cos x)， $
所以 $I_1<I_2$.
另一方面 $2/(1+sin x)>1>1/(1+cos x)>0$，故
$ 2x/(1+sin x)>x>ln(1+x)>ln(1+x)/(1+cos x)， $
所以 $I_3>I_2$.

典型错误　不熟悉 $x/(1+x)<ln(1+x)<x$，不会进行适当放缩.
]

#answer("5.")[
应选 A.

分析　本题考查不同特征值、线性无关特征向量与对角化之间的关系.

解　属于不同特征值的特征向量线性无关，因此有3个不同特征值足以保证对角化，但有重特征值的矩阵也可能对角化.
B 为充分必要条件，不符合题意.C 的“两两线性无关”不保证三个向量整体线性无关，如 $(1,0,0)^"T"$、$(0,1,0)^"T"$、$(1,1,0)^"T"$；它是必要而非充分条件.
D 是对称矩阵关于不同特征值特征向量的性质，与一般矩阵的对角化没有直接关系.

典型错误　把题意看成充分必要条件；混淆充分与必要条件.
]

#answer("6.")[
应选 C.

分析　本题考查分块矩阵、线性方程组同解及判别方法.

解　取 $A=mat(1,0;0,0)$，$B=mat(1,0;1,0)$，则 $A bold(x)=0$ 与 $B bold(x)=0$ 同解，且 $A B=mat(1,0;0,0)$，$B A=mat(1,0;1,0)$.
此时 A、B 项的4阶系数矩阵秩均为2，均有非零解；D 项的两个系数矩阵秩分别为1和2，不同解.
对于 C 项，令 $bold(y)=(bold(u),bold(v))$，两个方程组分别等价于
$ cases(A bold(u)+B bold(v)=0,B bold(v)=0) $ 与 $cases(B bold(u)+A bold(v)=0,A bold(v)=0)$.
消元后为 $A bold(u)=0,B bold(v)=0$ 与 $B bold(u)=0,A bold(v)=0$，由题设知同解.

典型错误　求解时错误地把 $A bold(u)=0$ 与 $B A bold(u)=0$ 视为同解.
]

#answer("7.")[
应选 C.

分析　本题考查向量组等价、线性表示与线性方程组有解判别.

解　首先要求 $bold(alpha)_3$ 可由 $bold(alpha)_1,bold(alpha)_2,bold(alpha)_4$ 表示，其系数行列式为
$ abs(mat(lambda,1,1;1,lambda,lambda;1,1,lambda^2))=(lambda^2-1)^2. $
当 $lambda!=plus.minus 1$ 时可表示；当 $lambda=1$ 时四个向量相等，仍可表示；当 $lambda=-1$ 时增广矩阵秩为3而系数矩阵秩为2，不能表示.
其次要求 $bold(alpha)_4$ 可由前三向量表示，其系数行列式为
$ abs(mat(lambda,1,1;1,lambda,1;1,1,lambda))=(lambda-1)^2(lambda+2). $
当 $lambda!=1,-2$ 时可表示；当 $lambda=1$ 时仍可表示；当 $lambda=-2$ 时增广矩阵秩为3而系数矩阵秩为2，不能表示.
综上 $lambda!=-1,-2$.

典型错误　只考虑一个方向的线性表示，漏掉等价所要求的反向表示.
]

#answer("8.")[
应选 C.

分析　本题考查方差、协方差、均匀分布及泊松分布的性质.

解　$D X=3/4,D Y=2,op("Cov")(X,Y)=-1$，所以
$ D(2X-Y+1)=4D X+D Y-4op("Cov")(X,Y)=9. $

典型错误　不熟悉两个常见分布的方差，或方差运算公式.
]

#answer("9.")[
应选 A.

分析　本题考查切比雪夫不等式、期望与方差计算及随机变量矩的概念.

解　由独立同分布，
$ E(1/n sum_(i=1)^n X_i^2)=mu_2，quad D(X_1^2)=mu_4-mu_2^2， $
$ D(1/n sum_(i=1)^n X_i^2)=(mu_4-mu_2^2)/n. $
代入切比雪夫不等式得
$ P{abs(1/n sum_(i=1)^n X_i^2-mu_2)>=epsilon}<=(mu_4-mu_2^2)/(n epsilon^2). $

典型错误　不清楚切比雪夫不等式，或计算两个方差时出错.
]

#answer("10.")[
应选 D.

分析　本题考查联合、边缘与条件分布、二维正态分布参数意义及相关系数计算.

解法1　由题设，联合密度为
$ f(x,y)=1/(2pi)e^(-x^2/2-(y-x)^2/2)=1/(2pi)e^(-x^2+x y-y^2/2). $
将其与二维正态密度的标准形式比较，知服从 $N(0,0;1,2;sqrt(2)/2)$，故相关系数为 $sqrt(2)/2$.

解法2　利用联合密度积分，并将内部积分视为正态分布的矩，得
$ E Y=integral_(-infinity)^(+infinity)x/(sqrt(2pi))e^(-x^2/2)dif x=0， $
$ E(Y^2)=integral_(-infinity)^(+infinity)(x^2+1)/(sqrt(2pi))e^(-x^2/2)dif x=2， $
$ E(X Y)=integral_(-infinity)^(+infinity)x^2/(sqrt(2pi))e^(-x^2/2)dif x=1. $
所以 $D Y=2$、$op("Cov")(X,Y)=1$，相关系数为 $1/sqrt(2)$.

解法3　由 $E(Y|X)=X$，$D(Y|X)=1$，利用条件期望与条件方差公式，
$ E Y=E[E(Y|X)]=0，quad D Y=E[D(Y|X)]+D[E(Y|X)]=2， $
$ E(X Y)=E[X E(Y|X)]=E(X^2)=1. $
从而得到相同结果.

解法4　设二维正态参数为 $N(0,mu_2;1,sigma_2^2;rho)$，由条件分布参数得
$ mu_2+rho sigma_2 x=x，quad sigma_2^2(1-rho^2)=1. $
解得 $mu_2=0,sigma_2^2=2,rho=sqrt(2)/2$.

典型错误　不熟悉二维正态密度及参数的概率意义；不会利用正态分布的矩计算积分；方差或协方差计算错误.
]

= 二、填空题

#answer("11.")[
$4$.

分析　本题考查梯度的概念与几何意义及方向导数.

解　$f_x=2x,f_y=4y$，所以在 $(0,1)$ 处梯度为 $(0,4)$.
梯度向量的长度即为该点方向导数的最大值，因此为4.

典型错误　把梯度向量、方向导数与全微分混淆.
]

#answer("12.")[
$4$.

分析　本题考查分部积分法、基本积分公式与牛顿—莱布尼茨公式.

解　
$ integral_1^(e^2)(ln x)/sqrt(x)dif x=2sqrt(x)ln x|_1^(e^2)-integral_1^(e^2)2sqrt(x)/x dif x=2e ln e^2-4sqrt(x)|_1^(e^2)=4. $

典型错误　对数运算不熟练，不能正确化简.
]

#answer("13.")[
$k>=4e^(-2)$.

分析　本题考查二元函数最大值及问题转化.

解　原不等式等价于 $k>=(x^2+y^2)e^(-x-y)$ 的最大值.
记 $f=(x^2+y^2)e^(-x-y)$，令其两个偏导为零，得驻点 $(0,0)$ 和 $(1,1)$.
边界上 $max_(x>=0)f(x,0)=f(2,0)=4/e^2$，同理 $max_(y>=0)f(0,y)=4/e^2$.
又 $f(1,1)=2/e^2$，所以区域上的最大值为 $4/e^2$.
因此 $k in [4e^(-2),+infinity)$.

典型错误　只考虑驻点而忽略边界；漏掉端点；把求范围写成只求一个值.
]

#answer("14.")[
$-1$.

分析　本题考查函数项级数的收敛域、比值判别法及极限运算.

解　记 $u_n(x)=n!/n^n e^(-n x)>0$，则
$ lim_(n->infinity)u_(n+1)(x)/u_n(x)=lim_(n->infinity)e^(-x)/(1+1/n)^n=e^(-x-1). $
因此 $x>-1$ 时收敛，$x<-1$ 时发散.由给定的收敛域为开区间，可得 $a=-1$.

典型错误　比值极限计算错误.
]

#answer("15.")[
$-E$.

分析　本题考查可逆矩阵及矩阵运算.

解　由原式得 $B-(E-A)^(-1)B=A$，移项并左乘 $E-A$ 得
$ (E-A)(B-A)=B. $
整理为 $A(B-A)=-A$，由于 $A$ 可逆，左乘 $A^(-1)$ 得 $B-A=-E$.

典型错误　矩阵运算不熟练.
]

#answer("16.")[
$5/8$.

分析　本题考查条件概率、和事件、积事件及互不相容与独立的区别.

解法1　由题设，$P(A B)=P(A C)=P(A B C)=0$，$P(B C)=1/9$，所以
$ P(A union B union C)=8/9，quad P(B union C)=5/9. $
因 $B union C subset A union B union C$，所求条件概率为 $(5/9)/(8/9)=5/8$.

解法2　先由独立性得 $P(B union C)=5/9$，再由 $A$ 与 $B union C$ 互不相容，得其总和概率为 $1/3+5/9=8/9$，同样得到 $5/8$.

典型错误　计算三个事件的和时直接相加；混淆互不相容与相互独立；不知条件概率分子可化为 $P(B union C)$.
]

= 三、解答题

#answer("17.")[
分析　本题考查一阶线性微分方程、换元与分部积分法及曲线渐近线.

解法1　根据通解公式，
$ y=e^(-sqrt(x))[C+integral(2+sqrt(x))e^(sqrt(x))dif x]. $
令 $sqrt(x)=t$，则
$ integral(2+sqrt(x))e^(sqrt(x))dif x=integral(4t+2t^2)e^t dif t=2t^2 e^t=2x e^(sqrt(x)). $
所以 $y=2x+C e^(-sqrt(x))$，由 $y(1)=3$ 得 $C=e$，故 $y=2x+e^(1-sqrt(x))$，$x>0$.
因为 $lim_(x->0^+)y=e$，所以无铅直渐近线；又 $lim_(x->infinity)(y-2x)=0$，所以斜渐近线为 $y=2x$.

解法2　方程两边乘 $e^(sqrt(x))$ 得 $(y e^(sqrt(x)))'=(2+sqrt(x))e^(sqrt(x))$，积分后同解法1.

典型错误　写错一阶线性方程通解公式；误以为找到特解 $2x$ 后通解就是 $2x+C$；不定积分算错；把渐近线写成曲线.
]

#answer("18.")[
分析　本题考查二重积分、区域可加性及区域对称性.

解法1　按两象限分为
$ D_1={ (r,theta)|0<=r<=2,0<=theta<=pi/2}， $
$ D_2={ (r,theta)|0<=r<=2/(sin theta-cos theta),pi/2<=theta<=pi}. $
所以
$ I=integral_0^(pi/2)dif theta integral_0^2(cos theta-sin theta)^2 r dif r+integral_(pi/2)^pi dif theta integral_0^(2/(sin theta-cos theta))(cos theta-sin theta)^2 r dif r $
$ =2integral_0^(pi/2)(1-2sin theta cos theta)dif theta+integral_(pi/2)^pi 2dif theta=2pi-2. $

解法2　令 $D_1={(x,y)|y-2<=x<=0,0<=y<=2}$，$D_2={(x,y)|0<=x<=sqrt(4-y^2),0<=y<=2}$.
$ I=pi+2-integral.double_(D_1)2x y/(x^2+y^2)dif x dif y-integral.double_(D_2)2x y/(x^2+y^2)dif x dif y. $
第一项重积分用极坐标并令 $t=tan theta$，得
$ integral_(-infinity)^0 4t/((1+t^2)(1-t)^2)dif t=integral_(-infinity)^0[2/(1-t)^2-2/(1+t^2)]dif t=2-pi. $
第二项重积分为 $integral_0^(pi/2)4cos theta sin theta dif theta=2$，所以 $I=pi+2-(2-pi)-2=2pi-2$.

解法3　令 $D_1={(x,y)|2-x<=y<=sqrt(4-x^2),0<=x<=2}$，由对称性，
$ integral.double_D 2x y/(x^2+y^2)dif x dif y=integral.double_(D_1)2x y/(x^2+y^2)dif x dif y $
$ =integral_0^(pi/2)4cos theta sin theta dif theta-integral_0^(pi/2)4cos theta sin theta/(cos theta+sin theta)^2 dif theta=4-pi. $
于是 $I=pi+2-(4-pi)=2pi-2$.

解法4　直接用直角坐标：
$ integral.double_D 2x y/(x^2+y^2)dif x dif y=integral_0^2 y[ln 4-ln(2y^2-4y+4)]dif y $
$ =integral_0^2 y^2(y-1)/(y^2-2y+2)dif y=integral_0^2[y+1-2/(y^2-2y+2)]dif y=4-pi. $
所以 $I=2pi-2$.

典型错误　不利用 $ (x-y)^2/(x^2+y^2)=1-2x y/(x^2+y^2)$；不熟悉区域边界及极坐标积分限；漏写极坐标面积微元；原函数运算不熟练.
]

#answer("19.")[
分析　本题考查斯托克斯公式、曲面积分化为二重积分、路径可加性及曲线积分.

解法1　记 $P=y z^2-cos z$，$Q=2x z^2$，$R=2x y z+x sin z$.
根据斯托克斯公式，
$ I=integral.surf_Sigma(-2x z)dif y dif z+z^2 dif x dif y. $
记 $D={(x,y)|4x^2+y^2<=1,x>=0,y>=0}$，曲面上 $z=sqrt(1-4x^2-y^2)$，取上侧，则
$ I=integral.double_D [2x sqrt(1-4x^2-y^2)z_x+1-4x^2-y^2]dif x dif y=integral.double_D(1-12x^2-y^2)dif x dif y. $
令 $x=r/2 cos theta,y=r sin theta$，得
$ I=1/2 integral_0^(pi/2)dif theta integral_0^1(1-r^2)r dif r-integral_0^(pi/2)dif theta integral_0^1 r^3 cos^2 theta dif r=pi/16-pi/16=0. $

解法2　边界分为三段：$L_x$ 在 $x=0$ 面，由 $(0,1,0)$ 至 $(0,0,1)$；$L_y$ 在 $y=0$ 面，由 $(0,0,1)$ 至 $(1/2,0,0)$；$L_z$ 在 $z=0$ 面，由 $(1/2,0,0)$ 至 $(0,1,0)$.
第一段积分为0.第二段
$ I_y=integral_(L_y)(-cos z)dif x+x sin z dif z=integral_(L_y)dif(-x cos z)=-1/2. $
第三段 $I_z=-integral_(L_z)dif x=1/2$，故 $I=0$.

典型错误　斯托克斯公式使用错误；曲面积分化为二重积分错误；不能选择适当方法或基本运算出错.
]

#answer("20.")[
必要性：记 $c=(a+b)/2$，由泰勒公式及 $f''>=0$，有 $f(x)>=f(c)+f'(c)(x-c)$. 对 $a<b$ 在 $[a,b]$ 上积分，线性项积分为0，得 $integral_a^b f(x)dif x>=f(c)(b-a)$，即所求不等式. $a>b$ 时同理.

充分性：若某点 $x_0$ 有 $f''(x_0)<0$，由连续性存在 $delta>0$，使 $[x_0-delta,x_0+delta]$ 内 $f''<0$. 对 $0<abs(x-x_0)<=delta$，泰勒公式得 $f(x)<f(x_0)+f'(x_0)(x-x_0)$. 在该对称区间积分，得到
$ 1/(2delta)integral_(x_0-delta)^(x_0+delta)f(x)dif x<f(x_0), $
与题设不等式矛盾. 故处处 $f''>=0$.

必要性另证　由 $f''>=0$，$f'$ 单调不减.记 $c=(a+b)/2$，由牛顿—莱布尼茨公式得
$ f(x)-f(c)=integral_c^x f'(t)dif t>=f'(c)(x-c). $
在两端点之间积分，即得所求不等式.

充分性另证　对任意 $x_0$ 和 $delta>0$，条件给出 $integral_(x_0-delta)^(x_0+delta)f(x)dif x-2delta f(x_0)>=0$.
连续用洛必达法则，
$ lim_(delta->0^+)(integral_(x_0-delta)^(x_0+delta)f(x)dif x-2delta f(x_0))/delta^3 $
$ =lim_(delta->0^+)(f(x_0+delta)+f(x_0-delta)-2f(x_0))/(3delta^2) $
$ =lim_(delta->0^+)(f'(x_0+delta)-f'(x_0-delta))/(6delta)=f''(x_0)/3. $
所以 $f''(x_0)>=0$，由任意性得结论.

典型错误　不会运用条件 $f''>=0$；泰勒公式的展开点或余项错误；混淆充分性与必要性.
]

#answer("21.")[
分析　本题考查二次型、特征值与特征向量、正交变换及施密特正交化.

解　（1）对应矩阵 $A=mat(1,2,3;2,4,6;3,6,9)$.

（2）$abs(lambda E-A)=lambda^2(lambda-14)$，所以特征值为14、0、0.
对应14的单位特征向量为 $bold(eta)_1=(1,2,3)^"T"/sqrt(14)$.
对应0的两个线性无关特征向量可取 $(-2,1,0)^"T"$、$(-3,0,1)^"T"$，正交规范化后为
$ bold(eta)_2=(-2,1,0)^"T"/sqrt(5)，quad bold(eta)_3=(-3,-6,5)^"T"/sqrt(70). $
令
$ Q=mat(1/sqrt(14),-2/sqrt(5),-3/sqrt(70);2/sqrt(14),1/sqrt(5),-6/sqrt(70);3/sqrt(14),0,5/sqrt(70))， $
则 $Q^"T" A Q=op("diag")(14,0,0)$，标准形为 $14y_1^2$.

（3）由标准形知 $y_1=0$，即 $x_1+2x_2+3x_3=0$.
解为 $bold(x)=k_1(-2,1,0)^"T"+k_2(-3,0,1)^"T"$，其中 $k_1,k_2$ 为任意常数.

典型错误　从求和表达式写矩阵时弄错交叉项；特征值或特征向量计算错误；没有正交规范化；列向量与对角特征值次序不对应.一般不能由 $bold(x)^"T" A bold(x)=0$ 推出 $A bold(x)=0$，本题成立是因为 $A=(1,2,3)^"T"(1,2,3)$ 的特殊结构.
]

#answer("22.")[
记观测值为 $x_1,dots,x_n,y_1,dots,y_m$，似然函数为
$ L(theta)=1/(2^m theta^(n+m))e^(-sum x_i/theta-sum y_j/(2theta)). $
取对数并求导，令 $-(n+m)/theta+sum x_i/theta^2+sum y_j/(2theta^2)=0$，得
$ hat(theta)=(2n overline(X)+m overline(Y))/(2(n+m)). $
由 $D(overline(X))=theta^2/n$、$D(overline(Y))=4theta^2/m$，及样本独立性，
$ D(hat(theta))=(4n^2 D(overline(X))+m^2 D(overline(Y)))/(4(n+m)^2)=theta^2/(n+m). $

分析　本题考查似然函数、最大似然估计，以及估计量方差、指数分布的性质.

典型错误　把不是同分布的两组样本错误地当作同分布；不会从联合概率密度构造似然函数；把均值为 $theta$ 的指数密度写成 $theta e^(-theta x)$，弄错参数意义；估计量方差计算错误.
]

