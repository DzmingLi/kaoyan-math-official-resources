#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2018, subject: "三", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2018 数学三试卷参考解答

= 一、选择题


#answer("1.")[

D. 【解】由导数定义，考察 $lim_(x->0)(f(x)-f(0))/x$. A、B、C分别有
$ lim_(x->0)frac(abs(x)sin abs(x),x)=lim_(x->0)x=0, $
$ lim_(x->0)frac(abs(x)sin sqrt(abs(x)),x)=lim_(x->0)frac(abs(x),x)sqrt(abs(x))=0, $
$ lim_(x->0)frac(cos abs(x)-1,x)=-lim_(x->0)frac(abs(x)^2,2x)=0. $
D的差商与 $-abs(x)/(2x)$ 等价，左右极限不同，故在0处不可导.

]

#answer("2.")[

D. 【解】以 $1/2$ 为中心的泰勒公式给出
$ f(x)=f(1/2)+f'(1/2)(x-1/2)+1/2 f''(xi)(x-1/2)^2, $
其中 $xi$ 在 $x$ 与 $1/2$ 之间. 对 $[0,1]$ 积分，线性项积分为0；若 $f''>0$，余项在除中点外均为正，所以
$ 0=integral_0^1 f(x)dif x>f(1/2). $
故D正确. 【典型错误】不能颠倒二阶导数的符号与曲线凹凸性的关系.

]

#answer("3.")[

C. 【解】$2x/(1+x^2)$ 是奇函数，故
$ M=integral_(-pi/2)^(pi/2)(1+frac(2x,1+x^2))dif x=pi. $
由于 $sqrt(cos x)>=0$ 且不恒为0，$K=pi+integral_(-pi/2)^(pi/2)sqrt(cos x)dif x>pi$.
曲线 $y=e^x$ 位于在 $(0,1)$ 处的切线 $y=1+x$ 上方，故 $(1+x)/e^x<=1$ 且不恒等，得 $N<pi$. 所以 $K>M>N$.

]

#answer("4.")[
D. 【解】平均成本为 $bar(C)(Q)=C(Q)/Q$. 在产量 $Q_0$ 处取最小值，故
$ bar(C)'(Q_0)=frac(Q_0 C'(Q_0)-C(Q_0),Q_0^2)=0, $
即 $Q_0 C'(Q_0)=C(Q_0)$. 【典型错误】不能将平均成本与总成本混淆，也应正确计算商的导数.
]

#answer("5.")[

A. 【解】题中矩阵有三重特征值1，特征空间只有一个线性无关向量 $(1,0,0)^T$. 四个选项也均有三重特征值1. A的特征空间同样只有一个独立向量；B、C、D各有两个独立向量，分别可取
$ B: mat(1;0;0),mat(1;1;0);quad C:mat(1;0;0),mat(0;1;1);quad D:mat(1;0;0),mat(0;1;0). $
B、C、D不能与题中矩阵相似. A与题中矩阵均为一个三阶Jordan块，故相似，选A.

]

#answer("6.")[

A. 【解】设 $"r"(A)=r$，存在可逆矩阵 $P$ 使 $P A=mat(A_1;0)$，其中 $A_1$ 行满秩，故
$ "r"(A,A B)="r"(P A,P A B)="r"mat(A_1,A_1 B;0,0)=r. $
B项反例 $A=mat(1,0;0,0),B=mat(0,1;1,0)$，则 $"r"(A,B A)=2$.
C项反例 $A=mat(1,0;0,0),B=mat(0,0;1,0)$，两者秩均为1，而 $"r"(A,B)=2$.
D项反例 $A=mat(1,0;0,0),B=mat(0,1;0,0)$，则 $"r"(A,B)=1$，$"r"(A^T,B^T)=2$.
【典型错误】分块矩阵的秩不能照搬矩阵乘积的秩或转置的秩公式.

]

#answer("7.")[

A. 【解法1】条件表明密度曲线关于 $x=1$ 对称，所以 $P{X<0}=P{X>2}$. 结合 $P{0<=X<=2}=0.6$，得 $P{X<0}=(1-0.6)/2=0.2$.
【解法2】在 $integral_(-infinity)^0 f(x)dif x$ 中令 $t=2-x$，由 $f(2-t)=f(t)$ 得
$ P{X<0}=integral_2^infinity f(2-t)dif t=integral_2^infinity f(t)dif t=P{X>2}. $
再由概率总和为1得0.2. 【典型错误】应识别所给条件的对称性，才能正确换元或比较两侧面积.

]

#answer("8.")[
B. 【解】正态总体的抽样定理给出 $sqrt(n)(bar(X)-mu)/S tilde t(n-1)$. 对C、D，$bar(X)$ 与 $S^*$ 不相互独立，相应比值不服从所列t分布.
【典型错误】应区分总体均值已知时的平方和与用样本均值计算的样本方差，并核对自由度.
]


= 二、填空题

#answer("9.")[

$y=4x-3$. 【解】$y'=2x+2/x,y''=2-2/x^2$. 因定义域 $x>0$，二阶导数为0的点只有 $x=1$，且两侧符号由负变正，故 $(1,1)$ 是唯一拐点. 此处斜率 $y'(1)=4$，切线为 $y-1=4(x-1)$，即 $y=4x-3$.

]

#answer("10.")[
$e^x arcsin sqrt(1-e^(2x))-sqrt(1-e^(2x))+C$. 【解】凑微分后分部积分：
$ integral e^x arcsin sqrt(1-e^(2x))dif x=integral arcsin sqrt(1-e^(2x))dif(e^x) $
$ =e^x arcsin sqrt(1-e^(2x))+integral frac(e^(2x),sqrt(1-e^(2x)))dif x $
$ =e^x arcsin sqrt(1-e^(2x))-sqrt(1-e^(2x))+C. $
【典型错误】最后一个积分的符号和系数容易算错，不能漏掉任意常数.
]

#answer("11.")[
$C 2^x-5$. 【解】按差分定义，$Delta y_x=y_(x+1)-y_x$，所以
$ Delta^2 y_x=y_(x+2)-2y_(x+1)+y_x. $
代入后得 $y_(x+2)-2y_(x+1)=5$，等价于 $y_(x+1)-2y_x=5$. 齐次解为 $C 2^x$，取常数特解−5，故通解为 $y_x=C 2^x-5$.
【典型错误】差分方程不能当成微分方程；递推中的倍数是2，不能倒写为1/2.
]

#answer("12.")[
$2e$. 【解】由微分存在的定义，$y=f(x)$ 满足 $dif y=2x f(x)dif x$. 分离变量并积分得
$ integral frac(dif y,y)=integral 2x dif x,quad ln abs(y)=x^2+ln C_1, $
故 $f(x)=C e^(x^2)$. 由 $f(0)=2$ 得C=2，因此 $f(1)=2e$.
【典型错误】正负号可吸收到任意常数中，初值已经确定符号，不能再给出±2e.
]

#answer("13.")[
$2$. 【解】令 $P=(alpha_1,alpha_2,alpha_3)$，则P可逆，且
$ A P=P mat(1,0,1;1,1,0;0,1,1). $
所以 $A=P mat(1,0,1;1,1,0;0,1,1)P^(-1)$，取行列式得
$ det A=det mat(1,0,1;1,1,0;0,1,1)=2. $
【典型错误】注意矩阵乘法中各列的排列和行列式计算.
]

#answer("14.")[
$1/3$. 【解】由独立性，$P(A union B)=1/2+1/2-1/4=3/4$，$P(A C)=1/4$. 又 $A C subset A union B$，故
$ P(A C|A union B)=frac(P(A C),P(A union B))=1/3. $
【典型错误】应准确使用独立性、加法公式和条件概率公式.
]

= 三、解答题

#answer("15.")[
解　令 $t=1/x$，则
$ lim_(x->+infinity) [(a x+b)e^(1/x)-x]=lim_(t->0^+) ((a+b t)e^t-1)/t, $
由题设及 $lim_(t->0^+) [(a+b t)e^t-1]=a-1$ 可得 $a-1=0$，即 $a=1$.

又因为
$ lim_(t->0^+) ((a+b t)e^t-1)/t=lim_(t->0^+) ((1+b t)e^t-1)/t \
 =lim_(t->0^+) (b e^t+(e^t-1)/t)=b+1, $
从而由题设得 $b=1$.

【解法2】当 $x->infinity$ 时，$e^(1/x)=1+1/x+o(1/x)$，所以
$ (a x+b)e^(1/x)-x=(a-1)x+a+b+b/x+o(1). $
极限等于2，先得a=1，再得b=1.
【典型错误】不能在原表达式中先把 $e^(1/x)$ 单独替换为其极限1；也不能未确定a就对分子中的 $e^t-1$ 作等价无穷小替换.
]

#answer("16.")[
解
$ integral.double_D x^2 dif x dif y=integral_0^(1/sqrt(2)) dif x integral_(sqrt(3)x)^sqrt(3(1-x^2)) x^2 dif y \
 =sqrt(3) integral_0^(1/sqrt(2)) x^2(sqrt(1-x^2)-x) dif x \
 =sqrt(3) integral_0^(1/sqrt(2)) x^2 sqrt(1-x^2) dif x-sqrt(3) integral_0^(1/sqrt(2)) x^3 dif x. $
令 $x=sin t$，则
$ integral_0^(1/sqrt(2)) x^2 sqrt(1-x^2) dif x=integral_0^(pi/4) sin^2 t cos^2 t dif t \
 =1/8 integral_0^(pi/4) (1-cos 4t) dif t=pi/32. $
又 $integral_0^(1/sqrt(2)) x^3 dif x=1/16$，所以
$ integral.double_D x^2 dif x dif y=sqrt(3)/16 (pi/2-1). $

【解法2】作广义极坐标变换 $x=r cos theta,y=sqrt(3)r sin theta$. 椭圆变为r=1，直线变为 $theta=pi/4$，y轴变为 $theta=pi/2$，雅可比行列式为 $sqrt(3)r$. 因而
$ integral.double_D x^2 dif x dif y=sqrt(3)integral_(pi/4)^(pi/2)cos^2 theta dif theta integral_0^1 r^3 dif r $
$ =sqrt(3)/8 integral_(pi/4)^(pi/2)(1+cos 2theta)dif theta=sqrt(3)/16(pi/2-1). $
【典型错误】区域只在第一象限，边界是y轴而不是x轴. 变换后直线对应的角度为π/4，不能照搬原坐标系下的π/3.
]

#answer("17.")[

解　设圆的半径为 $x$，正方形与正三角形的边长分别为 $y$ 和 $z$，则问题化为：函数 $f(x,y,z)=pi x^2+y^2+sqrt(3)/4 z^2$ 在条件 $2pi x+4y+3z=2$（$x>0,y>0,z>0$）下是否存在最小值.

令 $L(x,y,z,lambda)=pi x^2+y^2+sqrt(3)/4 z^2+lambda(2pi x+4y+3z-2)$.

考虑方程组
$ cases(
 (partial L)/(partial x)=2pi x+2pi lambda=0,
 (partial L)/(partial y)=2y+4lambda=0,
 (partial L)/(partial z)=sqrt(3)/2 z+3lambda=0,
 (partial L)/(partial lambda)=2pi x+4y+3z-2=0,
) $
解得
$ x_0=1/(pi+4+3sqrt(3)),quad y_0=2/(pi+4+3sqrt(3)),quad z_0=(2sqrt(3))/(pi+4+3sqrt(3)), \
 f(x_0,y_0,z_0)=1/(pi+4+3sqrt(3)). $
又当 $2pi x+4y+3z=2$ 且 $x y z=0$ 时，$f(x,y,z)$ 的最小值为
$ f(0,2/(4+3sqrt(3)),(2sqrt(3))/(4+3sqrt(3)))=1/(4+3sqrt(3)), $
所以三个图形的面积之和存在最小值，最小值为
$ f(x_0,y_0,z_0)=1/(pi+4+3sqrt(3)) quad ("单位：m"^2). $

【解法2】由约束得 $z=(2-2pi x-4y)/3$，代入目标函数，得到
$ g(x,y)=pi x^2+y^2+sqrt(3)/9(1-pi x-2y)^2. $
在有界闭域 $x>=0,y>=0,pi x+2y<=1$ 上，连续函数 $g$ 必有最小值. 解
$ cases(2pi x-(2sqrt(3)pi)/9(1-pi x-2y)=0,2y-(4sqrt(3))/9(1-pi x-2y)=0), $
得内部驻点 $(x_0,y_0)$ 如前，函数值为 $1/(pi+4+3sqrt(3))$.
在边界 $x=0$ 上，驻点 $(0,2/(3sqrt(3)+4))$ 的函数值为 $1/(3sqrt(3)+4)$，两端点 $(0,0),(0,1/2)$ 的值分别为 $sqrt(3)/9,1/4$.
在边界 $y=0$ 上，驻点 $(1/(3sqrt(3)+pi),0)$ 的值为 $1/(3sqrt(3)+pi)$，另一端点 $(1/pi,0)$ 的值为 $1/pi$.
在边界 $pi x+2y=1$ 上，驻点 $(1/(4+pi),2/(4+pi))$ 的值为 $1/(4+pi)$.
比较这些函数值，最小者为内部驻点的值，即 $1/(pi+4+3sqrt(3))$.
【典型错误】拉格朗日乘子法只找出候选点，须论证全局最小值存在并比较边界. 消去变量后，三条边界均须检查.

]

#answer("18.")[
解　因为
$ cos 2x=sum_(n=0)^infinity ((-1)^n (2x)^(2n))/((2n)!) \
 =sum_(n=0)^infinity ((-1)^n 4^n x^(2n))/((2n)!),quad x in (-infinity,+infinity), \
 1/(1+x)^2=(-1/(1+x))' \
 =-(sum_(n=0)^infinity (-1)^n x^n)' \
 =-sum_(n=1)^infinity (-1)^n n x^(n-1) \
 =-sum_(n=0)^infinity (-1)^(n+1)(n+1)x^n,quad -1<x<1, $
所以
$ cos 2x-1/(1+x)^2 \
 =sum_(n=0)^infinity ((-1)^n 4^n x^(2n))/((2n)!)+sum_(n=0)^infinity (-1)^(n+1)(n+1)x^n, $
$-1<x<1$.

由题设知
$ sum_(n=0)^infinity a_n x^n \
 =sum_(n=0)^infinity ((-1)^n 4^n x^(2n))/((2n)!)+sum_(n=0)^infinity (-1)^(n+1)(n+1)x^n $
（$-1<x<1$）. 故
$ cases(a_(2n)=((-1)^n 4^n)/((2n)!)-2n-1, a_(2n+1)=2n+2),quad (n=0,1,2,dots). $

【典型错误】cos 2x的展开仅有偶数幂，应同时核对幂次、阶乘和4ⁿ. 对几何级数求导时，应注意负号及求和指标的改变.
]

#answer("19.")[

解　由于 $x_1!=0$，所以 $e^(x_2)=(e^(x_1)-1)/x_1$.

根据微分中值定理，存在 $xi in (0,x_1)$，使得 $(e^(x_1)-1)/x_1=e^xi$. 所以 $e^(x_2)=e^xi$，故 $0<x_2<x_1$.

假设 $0<x_(n+1)<x_n$，则
$ e^(x_(n+2))=(e^(x_(n+1))-1)/x_(n+1)=e^eta quad (0<eta<x_(n+1)), $
所以 $0<x_(n+2)<x_(n+1)$.

故 $\{x_n\}$ 是单调减少的数列，且有下界，从而 $\{x_n\}$ 收敛.

设 $lim_(n->infinity) x_n=a$，得 $a e^a=e^a-1$，易知 $a=0$ 为其解.

令 $f(x)=x e^x-e^x+1$，则 $f'(x)=x e^x$.

当 $x>0$ 时，$f'(x)>0$，函数 $f(x)$ 在 $[0,+infinity)$ 上单调增加，所以 $a=0$ 是方程 $a e^a=e^a-1$ 在 $[0,+infinity)$ 上的唯一解，故 $lim_(n->infinity) x_n=0$.

【典型错误】须先证明数列收敛，才能在递推式两边取极限；求得 $a=0$ 后，还要证明它是非负范围内的唯一解. 直接比较两个无限展开式的系数，不能代替单调性的证明.

]

#answer("20.")[
解　（Ⅰ）$f(x_1,x_2,x_3)=0$ 当且仅当
$ cases(x_1-x_2+x_3=0,x_2+x_3=0,x_1+a x_3=0). $
对方程组的系数矩阵施以初等行变换得
$ mat(1,-1,1;0,1,1;1,0,a) arrow mat(1,0,2;0,1,1;0,0,a-2). $
当 $a!=2$ 时，方程组只有零解，故 $f(x_1,x_2,x_3)=0$ 的解为 $bold(x)=0$.

当 $a=2$ 时，方程组有无穷多解，通解为 $bold(x)=k mat(-2;-1;1)$，$k$ 为任意常数，故 $f(x_1,x_2,x_3)=0$ 的解是 $bold(x)=k mat(-2;-1;1)$，$k$ 为任意常数.

（Ⅱ）由（Ⅰ）知当 $a!=2$ 时，$f(x_1,x_2,x_3)$ 正定，$f(x_1,x_2,x_3)$ 的规范形为 $y_1^2+y_2^2+y_3^2$.

当 $a=2$ 时，
$ f(x_1,x_2,x_3)=2x_1^2+2x_2^2+6x_3^2-2x_1 x_2+6x_1 x_3 \
 =2(x_1-1/2 x_2+3/2 x_3)^2+3/2 (x_2+x_3)^2, $
所以 $f(x_1,x_2,x_3)$ 的规范形为 $y_1^2+y_2^2$.

【典型错误】应区分二次型的矩阵与变量替换的系数矩阵，分别讨论 $a=2$ 与 $a!=2$. 化为规范形时，变量替换必须非退化；规范形的非零系数为1或−1，不能将有任意系数的标准形作为规范形.
]

#answer("21.")[
解　（Ⅰ）对矩阵 $A,B$ 分别施以初等行变换得
$ A=mat(1,2,a;1,3,0;2,7,-a) arrow mat(1,0,3a;0,1,-a;0,0,0), \
 B=mat(1,a,2;0,1,1;-1,1,1) arrow mat(1,0,0;0,1,1;0,0,2-a). $
由题设知 $a=2$.

（Ⅱ）由（Ⅰ）知 $a=2$. 对矩阵 $(A bar.v B)$ 施以初等行变换得
$ (A bar.v B)=mat(1,2,2,1,2,2;1,3,0,0,1,1;2,7,-2,-1,1,1;augment:#3) \
 arrow mat(1,0,6,3,4,4;0,1,-2,-1,-1,-1;0,0,0,0,0,0;augment:#3). $
记 $B=(beta_1,beta_2,beta_3)$，由于
$ A mat(-6;2;1)=0,quad A mat(3;-1;0)=beta_1, \
 A mat(4;-1;0)=beta_2,quad A mat(4;-1;0)=beta_3, $
故 $A X=B$ 的解为
$ X=mat(3-6k_1,4-6k_2,4-6k_3;-1+2k_1,-1+2k_2,-1+2k_3;k_1,k_2,k_3), $
其中 $k_1,k_2,k_3$ 为任意常数.

由于 $|X|=k_3-k_2$，所以满足 $A P=B$ 的可逆矩阵为
$ P=mat(3-6k_1,4-6k_2,4-6k_3;-1+2k_1,-1+2k_2,-1+2k_3;k_1,k_2,k_3),quad k_2!=k_3. $

【典型错误】初等变换保留秩，不能用行列式或迹相等判断列等价. 本题A不可逆，不能写 P=A⁻¹B；求得一般矩阵解后，还须利用行列式非零保证P可逆.
]

#answer("22.")[
解　（Ⅰ）由题设可得
$ E X=(-1)times 1/2+1times 1/2=0, \
 E(X Z)=E(X^2 Y)=E X^2 dot E Y=lambda. $
所以 $op("Cov")(X,Z)=E(X Z)-E X dot E Z=lambda$.

（Ⅱ）$Z$ 的所有可能取值为全体整数值，且
$ P{Z=0}=P{Y=0}=e^(-lambda). $
对于 $n=plus.minus 1,plus.minus 2,dots$，有
$ P{Z=n}=P{X Y=n} \
 =P{X=n/abs(n),Y=abs(n)} \
 =P{X=n/abs(n)}P{Y=abs(n)} \
 =e^(-lambda) lambda^abs(n)/(2 dot abs(n)!). $

【典型错误】计算 E(XZ) 应利用X与Y独立，协方差不能与相关系数混淆. Z为离散变量，求分布列较分布函数直接；零值与非零整数值应分开讨论.
]

#answer("23.")[
解　（Ⅰ）设 $x_1,x_2,dots,x_n$ 为样本观测值，似然函数为
$ L(sigma)=product_(i=1)^n f(x_i;sigma)=1/(2^n sigma^n)e^(-1/sigma sum_(i=1)^n abs(x_i)), $
则 $ln L(sigma)=-n ln 2-n ln sigma-1/sigma sum_(i=1)^n abs(x_i)$.

令 $(dif ln L(sigma))/(dif sigma)=-n/sigma+1/sigma^2 sum_(i=1)^n abs(x_i)=0$，解得
$ sigma=1/n sum_(i=1)^n abs(x_i), $
所以 $hat(sigma)=1/n sum_(i=1)^n abs(X_i)$.

（Ⅱ）由于
$ E abs(X)=integral_(-infinity)^(+infinity) abs(x)f(x;sigma) dif x \
 =integral_(-infinity)^(+infinity) abs(x)1/(2sigma)e^(-abs(x)/sigma) dif x \
 =1/sigma integral_0^(+infinity) x e^(-x/sigma) dif x=sigma, $
所以
$ E hat(sigma)=1/n sum_(i=1)^n E abs(X_i)=E abs(X)=sigma. $
又因为
$ E abs(X)^2=E X^2=integral_(-infinity)^(+infinity) x^2 f(x;sigma) dif x \
 =integral_(-infinity)^(+infinity) x^2 1/(2sigma)e^(-abs(x)/sigma) dif x \
 =1/sigma integral_0^(+infinity) x^2 e^(-x/sigma) dif x=2sigma^2, \
 D(abs(X))=E abs(X)^2-(E abs(X))^2=sigma^2, $
所以
$ D hat(sigma)=1/n^2 sum_(i=1)^n D(abs(X_i))=(D(abs(X)))/n=sigma^2/n. $

【典型错误】应准确写出似然函数和对数似然函数，并核对参数导数. 求估计量的方差要利用样本独立同分布，先求 E|X| 和 D(|X|)，不能漏掉样本平均中1/n²的因子.
]

