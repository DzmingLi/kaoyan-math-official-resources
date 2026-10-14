#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2022, subject: "三", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2022 数学三试卷参考解答

= 一、选择题

#answer-key(
  [1. C.],
  [2. A.],
  [3. C.],
  [4. A.],
  [5. B.],
  [6. D.],
  [7. C.],
  [8. D.],
  [9. B.],
  [10. B.],
)

#answer("1.")[
应选 C.

分析　本题考查等价无穷小、高阶无穷小及极限运算.

解　若 $alpha tilde beta$，则 $lim alpha/beta=1$，所以 $lim alpha^2/beta^2=1$，且 $lim(alpha-beta)/alpha=0$，①③为真.
②为假：取 $alpha=-beta$，平方比为1但本身比为−1；或取 $alpha=abs(x)/x beta$，本身比的极限不存在.
若 $alpha-beta=o(alpha)$，则 $lim (alpha-beta)/alpha=0$，从而 $lim beta/alpha=1$，所以④为真.

典型错误　没有掌握等价无穷小与高阶无穷小的定义，导致对③或④判断错误.
]

#answer("3.")[
应选 C.

分析　本题考查多元函数求导、复合函数求导和变上限积分求导.

解　将 $F$ 写成
$ F(x,y)=(x-y)integral_0^(x-y)f(t)dif t-integral_0^(x-y)t f(t)dif t. $
由求导法则得 $F_x=integral_0^(x-y)f(t)dif t$，$F_y=-integral_0^(x-y)f(t)dif t$，所以 $F_x=-F_y$.
再次求导，$F_(x x)=f(x-y)$，$F_(y y)=f(x-y)$，故相等.

典型错误　对 $y$ 求偏导时漏乘−1.
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
应选 B.

分析　本题考查矩阵等价、合同、相似与正交相似之间的关系.

解　A 项只说明等价，即秩相等，是必要而非充分条件.
B 项说明与 $Lambda$ 相似，三阶矩阵有三个不同特征值时可对角化；反过来相似矩阵具有相同特征值，故为充分必要条件.
C 项与 D 项均会使 $A$ 为对称矩阵，但题设没有对称性要求，故不能成立.

典型错误　混淆等价、合同和相似的概念，或默认 $A$ 是对称矩阵.
]

#answer("6.")[
应选 D.

分析　本题考查线性方程组有解的判别方法.

解　$abs(A)=(b-a)(a-1)(b-1)$，非零时有唯一解.
当 $a=b$ 时，将增广矩阵行变换得
$ mat(1,1,1,1;0,a-1,a^2-1,1;0,0,0,2)， $
故系数矩阵与增广矩阵秩不同，无解.当 $a=1$ 或 $b=1$ 时同样无解.
因此只有唯一解或无解两种情况.

典型错误　不从行列式入手，直接对含参数的增广矩阵反复行变换，计算复杂.
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

#answer("2.")[
应选 A.

分析　本题考查数列极限的定义与性质.

解　$a_1=2>1$，$a_2=sqrt(2)-1/2<1$，且 $lim_(n->infinity)a_n=1$.
取 $epsilon=min{a_1-1,1-a_2}$，根据极限定义，存在正整数 $N$，当 $n>N$ 时 $abs(a_n-1)<epsilon$，所以 $a_2<a_n<a_1$.
故最大值和最小值都在有限个数 $a_1,a_2,dots,a_N$ 中取得，二者均存在.

典型错误　仅作原始逐项计算和观察，未利用极限定义处理问题.
]

#answer("8.")[
应选 D.

分析　本题考查随机变量方差、不相关性及正态、二项分布性质.

解　$D X=4,D Y=3 times 1/3 times 2/3=2/3$，$op("Cov")(X,Y)=0$.
故 $D(X-3Y+1)=D X+9D Y-6op("Cov")(X,Y)=10$.

典型错误　常见分布的方差不熟悉；方差运算公式不熟悉；不理解“不相关”的含义.
]

#answer("9.")[
应选 B.

分析　本题考查大数定律及随机变量函数的数学期望.

解　
$ E(X_1^2)=integral_(-1)^1 x^2(1-abs(x))dif x=2integral_0^1 x^2(1-x)dif x=1/6. $
随机变量序列 $X_i^2$ 也独立同分布，由辛钦大数定律，样本均值 $1/n sum X_i^2$ 依概率收敛于 $1/6$.

典型错误　期望计算错误；不熟悉大数定律.
]

#answer("10.")[
应选 B.

分析　本题考查二维离散分布、事件独立性及期望、协方差计算.

解　$P{max{X,Y}=2}=b+0.1$，$P{min{X,Y}=1}=0.2$，两个事件的交概率为0.1.
由独立性，$0.1=(b+0.1)times 0.2$，所以 $b=0.4$.
由总概率为1得 $a=0.2$.
于是 $E X=-0.2$，$E Y=1.2$，$E(X Y)=-0.6$.
故 $op("Cov")(X,Y)=-0.6-(-0.2)times 1.2=-0.36$.

典型错误　不会利用事件独立条件求参数；期望计算错误；不熟悉协方差公式.
]

= 二、填空题

#answer("11.")[
$sqrt(e)$.

分析　本题考查极限运算和重要极限.

解　写成
$ ((1+e^x)/2)^(cot x)=[(1+(e^x-1)/2)^(2/(e^x-1))]^((e^x-1)/(2tan x)). $
第一个因子的极限为 $e$，外层指数极限为 $1/2$，故所求极限为 $sqrt(e)$.

典型错误　等价无穷小使用不当，运算出错，或只求出指数中的 $1/2$ 就作答.
]

#answer("12.")[
$ln 3-pi/sqrt(3)$.

分析　本题考查有理函数积分.

解　
$ integral_0^2(2x-4)/(x^2+2x+4)dif x=integral_0^2(2x+2)/(x^2+2x+4)dif x-integral_0^2 6/((x+1)^2+3)dif x $
$ =[ln(x^2+2x+4)-6/sqrt(3)arctan((x+1)/sqrt(3))]|_0^2=ln 3-pi/sqrt(3). $

典型错误　反正切基本积分公式不熟悉；运算出错.
]

#answer("13.")[
$0$.

分析　本题考查导数运算及奇偶性、周期性.

解　$f(-x)=f(x)$，所以 $f$ 为偶函数，$f'$ 为奇函数，$f''$ 为偶函数，三阶导数为奇函数.
又 $f(x+2pi)=f(x)$，其各阶导数也以 $2pi$ 为周期，因此 $f^((3))(2pi)=f^((3))(0)=0$.

典型错误　直接计算三阶导数虽然可行，但计算繁复且容易出错.
]

#answer("14.")[
$(e-1)^2$.

分析　本题考查二重反常积分.

解　根据函数的支集，区域为 $D={(x,y)|0<=x<=1,0<=y-x<=1}$.
所以
$ integral_(-infinity)^(+infinity)dif x integral_(-infinity)^(+infinity)f(x)f(y-x)dif y=integral_0^1 dif x integral_x^(x+1)e^y dif y $
$ =integral_0^1(e^(x+1)-e^x)dif x=(e-1)^2. $

典型错误　未观察 $f(y-x)$ 的支集，把区域误写成 $0<=x<=1,0<=y<=1$.
]

#answer("15.")[
$-1$.

分析　本题考查初等变换、逆矩阵的迹与特征值.

解　用初等矩阵还原，得 $A=mat(-1,1,-1;-1,0,0;0,-1,0)$.
其特征多项式为 $(lambda+1)(lambda-i)(lambda+i)$，所以特征值为−1、$i$、$-i$.
逆矩阵的特征值为−1、$-i$、$i$，相加得 $op("tr")(A^(-1))=-1$.

典型错误　误把初等变换的方向倒置；只考虑实特征值；错误地使用 $op("tr")(A^(-1))=1/op("tr")(A)$，此式一般不成立.
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
分析　本题考查利用数学知识建立经济学模型.

收益为 $R=Q p=13920x^(1/2)y^(1/6)-216x y^(1/3)$，成本为 $6x+8y$，故利润为
$ L=13920x^(1/2)y^(1/6)-216x y^(1/3)-6x-8y. $
令偏导数为0，得
$ cases(6960x^(-1/2)y^(1/6)-216y^(1/3)=6,2320x^(1/2)y^(-5/6)-72x y^(-2/3)=8). $
由 $x>0,y>0$ 解得唯一驻点 $(256,64)$，此时 $Q=384$. 故利润最大时的产量为384.

典型错误　不熟悉经济学名词，不能写出利润与产量的关系；数据较大而出现计算错误.
]

#answer("19.")[
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

#answer("20.")[
分析　本题考查根值判别法、收敛域、莱布尼茨定理、逐项求导与积分.

根值法得当 $abs(x)<1$ 时绝对收敛，当 $abs(x)>1$ 时通项不是无穷小量. 在 $abs(x)=1$ 时，级数为 $sum[(-1)^n/(2n+1)+1/(4^n(2n+1))]$，收敛. 故收敛域为 $[-1,1]$.

令 $S_1(x)=sum_(n=0)^infinity(-1)^n x^(2n+1)/(2n+1)$，$S_2(x)=sum_(n=0)^infinity x^(2n+1)/(4^n(2n+1))$. 逐项求导得 $S_1'=1/(1+x^2)$、$S_2'=4/(4-x^2)$，又二者在0处均为0，故 $S_1=arctan x$、$S_2=ln((2+x)/(2-x))$. 因而
$ S(x)=cases((arctan x)/x+1/x ln((2+x)/(2-x)) & 0<abs(x)<=1,2 & x=0). $

典型错误　不熟悉根值判别法；不掌握收敛区间内逐项求导性质；求导后的积分出错；没有单列 $S(0)=2$.
]

#answer("21.")[
分析　本题考查二次型、正交变换、相似、特征值与特征向量.

（1）对应矩阵为 $A=mat(3,0,1;0,4,0;1,0,3)$，特征多项式为 $(lambda-2)(lambda-4)^2$. 单位正交特征向量可取
$ bold(epsilon)_1=(-1,0,1)^T/sqrt(2), quad bold(epsilon)_2=(0,1,0)^T, quad bold(epsilon)_3=(1,0,1)^T/sqrt(2). $
令 $Q=(bold(epsilon)_1,bold(epsilon)_2,bold(epsilon)_3)$，则 $Q^T A Q=op("diag")(2,4,4)$，标准形为 $2y_1^2+4y_2^2+4y_3^2$.

（2）由正交性，$f(bold(x))>=2(y_1^2+y_2^2+y_3^2)=2bold(x)^T bold(x)$. 当 $bold(x)_0=Q(1,0,0)^T$ 时等号成立，故所求最小值为2.
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

