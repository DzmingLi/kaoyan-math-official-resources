#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2022, subject: "二", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2022 数学二试卷参考解答

= 一、选择题

#answer-key(
  [1. C.],
  [2. D.],
  [3. B.],
  [4. C.],
  [5. A.],
  [6. D.],
  [7. A.],
  [8. B.],
  [9. D.],
  [10. C.],
)

#answer("6.")[
应选 D.

分析　本题考查函数极限与数列极限的关系、复合极限，以及三角函数的单调性、奇偶性和连续性.

解　因为 $cos x_n in [0,1]$，且正弦在此区间单调、连续，所以 $sin(cos x_n)$ 有极限时，$cos x_n=arcsin(sin(cos x_n))$ 有极限.
但取 $x_n=(-1)^n pi/2$ 时，$sin x_n=(-1)^n$，$cos x_n=0$，$cos(sin x_n)=cos 1$，$sin(cos x_n)=0$.
此例表明 A、B、C 均不成立，而 D 正确.

典型错误　不清楚本题运用的单调性、连续性和奇偶性，不能正确处理复合极限.
]

#answer("7.")[
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

#answer("10.")[
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

#answer("1.")[
应选 C.

分析　本题考查等价无穷小、高阶无穷小及极限运算.

解　若 $alpha tilde beta$，则 $lim alpha/beta=1$，所以 $lim alpha^2/beta^2=1$，且 $lim(alpha-beta)/alpha=0$，①③为真.
②为假：取 $alpha=-beta$，平方比为1但本身比为−1；或取 $alpha=abs(x)/x beta$，本身比的极限不存在.
若 $alpha-beta=o(alpha)$，则 $lim (alpha-beta)/alpha=0$，从而 $lim beta/alpha=1$，所以④为真.

典型错误　没有掌握等价无穷小与高阶无穷小的定义，导致对③或④判断错误.
]

#answer("2.")[
应选 D.

分析　本题考查积分次序交换与二重积分计算.

解　区域为 $D={(x,y)|0<=y<=x<=2}$，交换次序得
$ integral_0^2 dif y integral_y^2 y/sqrt(1+x^3)dif x=integral_0^2 dif x integral_0^x y/sqrt(1+x^3)dif y $
$ =1/2 integral_0^2 x^2/sqrt(1+x^3)dif x=1/6 integral_0^2 1/sqrt(1+x^3)dif(1+x^3)=1/3 sqrt(1+x^3)|_0^2=2/3. $

典型错误　积分次序交换时写错积分限，或运算错误.
]

#answer("3.")[
应选 B.

分析　本题考查导数、可导与连续的关系以及导数的应用.

解　邻域内单调增加只能推出 $f'(x_0)>=0$，如 $f(x)=x^3$ 在0处导数为0，排除 A.
凹函数也只能保证 $f''(x_0)>=0$，如 $f(x)=x^4$ 在0处二阶导数为0，排除 C.
由于题设在 $x_0$ 处具有二阶导数，$f'$ 在该点连续.若 $f'(x_0)>0$，由保号性，某邻域内 $f'>0$，所以在此邻域单调增加，B 正确.
$f''(x_0)>0$ 本身不能决定某邻域的凹凸性，还需要二阶导数的其他条件，D 不正确.

典型错误　仅依赖排除法而不能正确判断 A、C、D；忽略题设的二阶可导条件.
]

#answer("4.")[
应选 C.

分析　本题考查多元函数求导、复合函数求导和变上限积分求导.

解　将 $F$ 写成
$ F(x,y)=(x-y)integral_0^(x-y)f(t)dif t-integral_0^(x-y)t f(t)dif t. $
由求导法则得 $F_x=integral_0^(x-y)f(t)dif t$，$F_y=-integral_0^(x-y)f(t)dif t$，所以 $F_x=-F_y$.
再次求导，$F_(x x)=f(x-y)$，$F_(y y)=f(x-y)$，故相等.

典型错误　对 $y$ 求偏导时漏乘−1.
]

#answer("5.")[
应选 A.

分析　本题考查反常积分收敛性、等价无穷小及极限运算.

解　两个瑕点为0、1，将积分在 $1/2$ 处分开.
在0附近，被积函数与 $(ln x)/x^p$ 同时敛散.通过与 $x^(-(p+1)/2)$ 比较可知，这段收敛当且仅当 $p<1$.
在1附近，$-ln x tilde 1-x$，所以被积函数与 $-(1-x)^p$ 同时敛散，此段收敛当且仅当 $p>-1$.
综上 $-1<p<1$.

典型错误　只检查一个瑕点；不熟悉反常积分比较判别法；混淆瑕积分与无穷区间反常积分的判敛结果.
]

#answer("8.")[
应选 B.

分析　本题考查矩阵等价、合同、相似与正交相似之间的关系.

解　A 项只说明等价，即秩相等，是必要而非充分条件.
B 项说明与 $Lambda$ 相似，三阶矩阵有三个不同特征值时可对角化；反过来相似矩阵具有相同特征值，故为充分必要条件.
C 项与 D 项均会使 $A$ 为对称矩阵，但题设没有对称性要求，故不能成立.

典型错误　混淆等价、合同和相似的概念，或默认 $A$ 是对称矩阵.
]

#answer("9.")[
应选 D.

分析　本题考查线性方程组有解的判别方法.

解　$abs(A)=(b-a)(a-1)(b-1)$，非零时有唯一解.
当 $a=b$ 时，将增广矩阵行变换得
$ mat(1,1,1,1;0,a-1,a^2-1,1;0,0,0,2)， $
故系数矩阵与增广矩阵秩不同，无解.当 $a=1$ 或 $b=1$ 时同样无解.
因此只有唯一解或无解两种情况.

典型错误　不从行列式入手，直接对含参数的增广矩阵反复行变换，计算复杂.
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
$-31/32$.

分析　本题考查隐函数求导.

解　方程给出 $y(1)+y(1)^3=2$，所以 $y(1)=1$.
求导得 $2x+y+x y'+3y^2 y'=0$，代入得 $y'(1)=-3/4$.
再次求导得 $2+2y'+(x+3y^2)y''+6y(y')^2=0$，代入初值得 $y''(1)=-31/32$.

典型错误　二阶求导出错；代数方程计算错误.
]

#answer("13.")[
$8sqrt(3)pi/9$.

分析　本题考查定积分性质与有理函数积分.

解　将被积函数拆分为
$ (2x+3)/(x^2-x+1)=(2x-1)/(x^2-x+1)+4/((x-1/2)^2+3/4). $
第一项在 $[0,1]$ 积分为0，第二项积分得
$ 8/sqrt(3)arctan((2x-1)/sqrt(3))|_0^1=8sqrt(3)pi/9. $

典型错误　没有利用对称性；不熟悉反正切基本积分公式.
]

#answer("14.")[
$C_1 e^x cos 2x+C_2 e^x sin 2x+C_3$.

分析　本题考查高阶常系数齐次线性微分方程的解的结构.

解　特征方程为 $lambda^3-2lambda^2+5lambda=0$，根为0、$1+2i$、$1-2i$，所以通解为上述表达式.

典型错误　特征方程或特征根计算错误；通解形式写错.
]

#answer("15.")[
$pi/12$.

分析　本题考查定积分的几何应用及积分计算.

解　面积
$ S=1/2 integral_0^(pi/3)r^2 dif theta=1/2 integral_0^(pi/3)sin^2 3theta dif theta=1/4 integral_0^(pi/3)(1-cos 6theta)dif theta=pi/12. $

典型错误　混淆极坐标弧长与面积公式；计算错误.
]

#answer("16.")[
$-1$.

分析　本题考查初等变换、逆矩阵的迹与特征值.

解　用初等矩阵还原，得 $A=mat(-1,1,-1;-1,0,0;0,-1,0)$.
其特征多项式为 $(lambda+1)(lambda-i)(lambda+i)$，所以特征值为−1、$i$、$-i$.
逆矩阵的特征值为−1、$-i$、$i$，相加得 $op("tr")(A^(-1))=-1$.

典型错误　误把初等变换的方向倒置；只考虑实特征值；错误地使用 $op("tr")(A^(-1))=1/op("tr")(A)$，此式一般不成立.
]

= 三、解答题

#answer("17.")[
分析　本题考查导数定义、可导与连续的关系、等价无穷小及重要极限.

由可导性知 $f$ 在1处连续，故分子极限为 $-2f(1)$. 因题设极限有限，分子趋于0，故 $f(1)=0$. 所以
$ 2=lim_(x->0)[frac(f(e^(x^2))-f(1),e^(x^2)-1)frac(e^(x^2)-1,x^2)-3frac(f(1+sin^2 x)-f(1),sin^2 x)frac(sin^2 x,x^2)]
=f'(1)-3f'(1)=-2f'(1). $
故 $f'(1)=-1$.

典型错误　直接用洛必达法则，但题设只保证在1处可导，未保证其邻域可导或导函数连续；没有利用可导与连续的关系；书写中漏掉极限符号.
]

#answer("18.")[
分析　本题考查一阶线性微分方程与曲线弧长.

方程化为 $y'-2y/x=(ln x-1/2)/x$. 通解为
$ y=x^2[C+integral(ln x-1/2)/x^3 dif x]=C x^2-1/2 ln x. $
由初值条件得 $C=1/4$，故 $y=x^2/4-ln x/2$. 因而弧长为
$ s=integral_1^e sqrt(1+(x/2-1/(2x))^2)dif x
=1/2 integral_1^e(x+1/x)dif x=(e^2+1)/4. $

典型错误　不熟悉一阶线性方程解法；不熟悉弧微分公式；计算错误.
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
分析　本题考查复合函数求导及二元函数极值.

（1）由复合函数求导，
$ g_x=f_u(x,y-x)-f_v(x,y-x)=(4x-2y)e^(-y). $
（2）对 $x$ 积分得 $g(x,y)=(2x^2-2x y)e^(-y)+h(y)$. 由 $g(y,y)=f(y,0)=y^2 e^(-y)$，得 $h(y)=y^2 e^(-y)$，故 $f(u,v)=(u^2+v^2)e^(-(u+v))$.

其一阶偏导为 $f_u=(-u^2-v^2+2u)e^(-(u+v))$、$f_v=(-u^2-v^2+2v)e^(-(u+v))$，驻点为 $(0,0)$、$(1,1)$. 二阶偏导为
$ f_(u u)=(u^2+v^2-4u+2)e^(-(u+v)), $
$ f_(u v)=(u^2+v^2-2u-2v)e^(-(u+v)), $
$ f_(v v)=(u^2+v^2-4v+2)e^(-(u+v)). $
在 $(0,0)$ 处，$A=C=2,B=0$，故为极小值点，极小值为0. 在 $(1,1)$ 处，$A=C=0,B=-2/e^2$，$A C-B^2<0$，故不是极值点.

典型错误　混淆 $x,y,u,v,y-x$ 的关系；把对 $x$ 积分后的任意函数 $h(y)$ 误写成常数；极值计算或判别错误.
]

#answer("21.")[
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

#answer("22.")[
分析　本题考查二次型、正交变换、相似、特征值与特征向量.

（1）对应矩阵为 $A=mat(3,0,1;0,4,0;1,0,3)$，特征多项式为 $(lambda-2)(lambda-4)^2$. 单位正交特征向量可取
$ bold(epsilon)_1=(-1,0,1)^T/sqrt(2), quad bold(epsilon)_2=(0,1,0)^T, quad bold(epsilon)_3=(1,0,1)^T/sqrt(2). $
令 $Q=(bold(epsilon)_1,bold(epsilon)_2,bold(epsilon)_3)$，则 $Q^T A Q=op("diag")(2,4,4)$，标准形为 $2y_1^2+4y_2^2+4y_3^2$.

（2）由正交性，$f(bold(x))>=2(y_1^2+y_2^2+y_3^2)=2bold(x)^T bold(x)$. 当 $bold(x)_0=Q(1,0,0)^T$ 时等号成立，故所求最小值为2.
]

