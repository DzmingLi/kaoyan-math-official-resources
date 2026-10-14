#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2018, subject: "一", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2018 数学一试卷参考解答

= 一、选择题


#answer("1.")[
D. 【解】由导数定义，考察 $lim_(x->0)(f(x)-f(0))/x$. A、B、C分别有
$ lim_(x->0)frac(abs(x)sin abs(x),x)=lim_(x->0)x=0, $
$ lim_(x->0)frac(abs(x)sin sqrt(abs(x)),x)=lim_(x->0)frac(abs(x),x)sqrt(abs(x))=0, $
$ lim_(x->0)frac(cos abs(x)-1,x)=-lim_(x->0)frac(abs(x)^2,2x)=0. $
D的差商与 $-abs(x)/(2x)$ 等价，左右极限不同，故在0处不可导.
]
#answer("2.")[
B. 【解】设切点为 $(x_0,y_0,z_0)$，其中 $z_0=x_0^2+y_0^2$，曲面的法向量为 $(-2x_0,-2y_0,1)$. 由平面通过所给两点，得
$ cases(z_0=x_0^2+y_0^2,-2x_0(0-1)-2y_0(1-0)=0,-2x_0(x_0-1)-2y_0 y_0+z_0=0). $
解得切点为 $(0,0,0)$ 或 $(1,1,2)$，对应切平面 $z=0$ 或 $2x+2y-z=2$.
]
#answer("3.")[
B. 【解】拆分级数并用正弦、余弦的麦克劳林展开，
$ sum_(n=0)^infinity(-1)^n frac(2n+3,(2n+1)!)=sum_(n=0)^infinity frac((-1)^n,(2n)!)+2sum_(n=0)^infinity frac((-1)^n,(2n+1)!) $
$ =cos 1+2sin 1. $
]
#answer("4.")[
C. 【解】$2x/(1+x^2)$ 是奇函数，故
$ M=integral_(-pi/2)^(pi/2)(1+frac(2x,1+x^2))dif x=pi. $
由于 $sqrt(cos x)>=0$ 且不恒为0，$K=pi+integral_(-pi/2)^(pi/2)sqrt(cos x)dif x>pi$.
曲线 $y=e^x$ 位于在 $(0,1)$ 处的切线 $y=1+x$ 上方，故 $(1+x)/e^x<=1$ 且不恒等，得 $N<pi$. 所以 $K>M>N$.
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
D. 【解法1】同一检验中，水平0.01的拒绝域 $W_1$ 是水平0.05的拒绝域 $W_2$ 的子集. 样本不在 $W_2$ 内，必不在 $W_1$ 内；在 $W_2$ 内则可能在或不在 $W_1$ 内. 因此只有D成立.
【解法2】检验水平控制第一类错误的概率上限. 较小水平下能拒绝，在较大水平下也能拒绝；较大水平下接受，在较小水平下也接受.
【解法3】用检验的 $p$ 值判断. 在0.05下接受意味着 $p>0.05$，从而 $p>0.01$，所以在0.01下也接受. 在0.05下拒绝只说明 $p<=0.05$，不能确定它与0.01的大小关系.
【典型错误】不能将不同水平下的接受、拒绝关系颠倒，应结合拒绝域的包含关系判断.
]


= 二、填空题

#answer("9.")[
$-2$. 【解】将底数写为 $1-2tan x/(1+tan x)$，利用重要极限，
$ lim_(x->0)(frac(1-tan x,1+tan x))^(1/(sin k x))=e^(lim_(x->0)frac(-2tan x,(1+tan x)sin k x))=e^(-2/k). $
由 $e^(-2/k)=e$ 得 $k=-2$.
]

#answer("10.")[
$2(ln 2-1)$. 【解】由曲线相切得 $f(0)=0,f(1)=2,f'(1)=2ln 2$. 分部积分得
$ integral_0^1 x f''(x)dif x=[x f'(x)]_0^1-integral_0^1 f'(x)dif x=f'(1)-f(1)+f(0)=2ln 2-2. $
【典型错误】应从“过点”和“相切”条件准确读出函数值、导数值.
]

#answer("11.")[
$bold(i)-bold(k)$. 【解】由旋度公式，
$ op("rot")bold(F)=det(bold(i),bold(j),bold(k);partial/partial x,partial/partial y,partial/partial z;x y,-y z,z x)=y bold(i)-z bold(j)-x bold(k), $
故 $op("rot")bold(F)(1,1,0)=bold(i)-bold(k)$. 【典型错误】旋度是向量，不能把它当作数值，也不能与散度混淆.
]

#answer("12.")[
$-pi/3$. 【解】由对称性，$integral.cont_L x y dif s=integral.cont_L y z dif s=integral.cont_L x z dif s$. 又
$ x y+y z+x z=frac((x+y+z)^2-(x^2+y^2+z^2),2)=-1/2 $
在 $L$ 上成立. $L$ 为单位大圆，长度为 $2pi$，所以
$ 3integral.cont_L x y dif s=-1/2 integral.cont_L dif s=-pi. $
【典型错误】须先核对积分曲线和被积函数的对称性，不能只凭记忆套用结论.
]

#answer("13.")[
$-1$. 【解】设不同特征值 $lambda_1,lambda_2$ 分别对应 $alpha_1,alpha_2$，则
$ A^2(alpha_1+alpha_2)=lambda_1^2 alpha_1+lambda_2^2 alpha_2=alpha_1+alpha_2. $
由于两向量线性无关，$lambda_1^2=lambda_2^2=1$；又两特征值不同，必为1和−1，故 $det A=lambda_1 lambda_2=-1$.
【典型错误】不能仅从 $A^2=E$ 得行列式为 $plus.minus 1$ 就结束，应利用特征值不同的条件.
]

#answer("14.")[
$1/4$. 【解】因 $B C=emptyset$，且 $A$ 分别与 $B,C$ 独立，
$ P(A B union C)=P(A)P(B)+P(C)=1/4+P(C),quad P(A C)=1/2 P(C). $
又 $A C subset (A B union C)$，故
$ P(A C bar A B union C)=frac(P(A C),P(A B union C))=frac(P(C)/2,1/4+P(C))=1/4. $
解得 $P(C)=1/4$. 【典型错误】应先化简条件概率中事件的交与并，再使用独立性和互斥性.
]

= 三、解答题

#answer("15.")[
解
$ integral e^(2x) arctan sqrt(e^x-1) dif x
 =1/2 integral arctan sqrt(e^x-1) dif e^(2x) \
 =1/2 e^(2x) arctan sqrt(e^x-1)-1/4 integral e^(2x)/sqrt(e^x-1) dif x. $
又
$ integral e^(2x)/sqrt(e^x-1) dif x=integral e^x/sqrt(e^x-1) dif e^x \
 =integral sqrt(e^x-1) dif e^x+integral 1/sqrt(e^x-1) dif e^x \
 =2/3 (e^x-1)sqrt(e^x-1)+2sqrt(e^x-1)+C, $
所以
$ integral e^(2x) arctan sqrt(e^x-1) dif x \
 =1/2 e^(2x) arctan sqrt(e^x-1)-1/6 (e^x+2)sqrt(e^x-1)+C. $

【解法2】令 $u=sqrt(e^x-1)$，则 $e^x=1+u^2,dif x=2u/(1+u^2)dif u$，原积分成为 $integral 2u(1+u^2)arctan u dif u$.
分部积分得
$ integral u arctan u dif u=1/2 u^2 arctan u-1/2 integral frac(u^2,1+u^2)dif u $
$ =1/2 u^2 arctan u+1/2 arctan u-1/2 u+C, $
$ integral u^3 arctan u dif u=1/4 u^4 arctan u-1/4 integral frac(u^4,1+u^2)dif u $
$ =1/4 u^4 arctan u-1/4 arctan u-1/12 u^3+1/4 u+C. $
故原积分等于 $1/2(u^2+1)^2 arctan u-1/6(u^2+3)u+C$，代回得到同样结果.
【典型错误】不能漏掉积分常数；复合函数的微分须乘内层导数，指数函数换元的系数也应核对.
]

#answer("16.")[
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

#answer("17.")[
解　设 $Sigma_1$ 为平面 $x=0$ 被 $cases(3y^2+3z^2=1,x=0)$ 所围部分的后侧，$Omega$ 为 $Sigma$ 与 $Sigma_1$ 所围的立体. 根据高斯公式，
$ integral.double_(Sigma+Sigma_1) x dif y dif z+(y^3+2) dif z dif x+z^3 dif x dif y \
 =integral.triple_Omega (1+3y^2+3z^2) dif x dif y dif z. $
设 $y=r cos theta,z=r sin theta$，则
$ integral.triple_Omega (1+3y^2+3z^2) dif x dif y dif z \
 =integral_0^(2pi) dif theta integral_0^(sqrt(3)/3) dif r integral_0^sqrt(1-3r^2) (1+3r^2)r dif x \
 =2pi integral_0^(sqrt(3)/3) r(1+3r^2)sqrt(1-3r^2) dif r. $
设 $sqrt(1-3r^2)=t$，则
$ 2pi integral_0^(sqrt(3)/3) r(1+3r^2)sqrt(1-3r^2) dif r \
 =(2pi)/3 integral_0^1 (2-t^2)t^2 dif t=(14pi)/45. $
又 $integral.double_(Sigma_1) x dif y dif z+(y^3+2) dif z dif x+z^3 dif x dif y=0$，所以 $I=(14pi)/45$.

【解法2】补成封闭曲面后，先沿 $x$ 分层. 对 $0<=x<=1$，截面为 $D_x:y^2+z^2<=(1-x^2)/3$，故
$ I=integral_0^1 dif x integral_0^(2pi)dif theta integral_0^sqrt((1-x^2)/3)(1+3r^2)r dif r $
$ =pi integral_0^1 [frac(1-x^2,3)+frac((1-x^2)^2,6)]dif x $
$ =pi integral_0^1 (1/2-2/3 x^2+1/6 x^4)dif x=14pi/45. $
【解法3】直接化为二重积分. 正向法向量可取
$ (1,-x_y,-x_z)=(1,frac(3y,sqrt(1-3y^2-3z^2)),frac(3z,sqrt(1-3y^2-3z^2))). $
投影域 $D:y^2+z^2<=1/3$，由关于 $y$ 的对称性，含 $6y$ 的项积分为0，故
$ I=integral.double_D [sqrt(1-3y^2-3z^2)+frac(3(y^4+z^4),sqrt(1-3y^2-3z^2))]dif y dif z. $
令 $y=r cos theta,z=r sin theta$，并用 $cos^4 theta+sin^4 theta=(3+cos 4theta)/4$，得
$ I=2pi integral_0^(sqrt(3)/3)[sqrt(1-3r^2)+frac(9r^4,4sqrt(1-3r^2))]r dif r. $
再令 $t=sqrt(1-3r^2)$，得到
$ I=pi integral_0^1 [frac(2t^2,3)+1/2(1-t^2)^2]dif t=14pi/45. $
【典型错误】使用高斯公式前须补成封闭曲面；直接投影计算时，应核对法向量的方向、积分限和换元的微分.
]

#answer("18.")[
解　（Ⅰ）当 $f(x)=x$ 时，方程化为 $y'+y=x$，其通解为
$ y=e^(-x)(C+integral x e^x dif x) \
 =e^(-x)(C+x e^x-e^x)=C e^(-x)+x-1. $
（Ⅱ）方程 $y'+y=f(x)$ 的通解为
$ y=e^(-integral_0^x dif t)(C+integral_0^x e^(integral_0^t dif s) f(t) dif t), $
即 $y=e^(-x)(C+integral_0^x e^t f(t) dif t)$.

由 $y(x)=e^(-x)(C+integral_0^x e^t f(t) dif t)$，得
$ y(x+T)-y(x)=e^(-x)[(1/e^T-1)C+1/e^T integral_0^(x+T) e^t f(t) dif t-integral_0^x e^t f(t) dif t]. $
因为 $f(x)$ 是周期为 $T$ 的连续函数，所以
$ 1/e^T integral_0^(x+T) e^t f(t) dif t \
 =1/e^T integral_0^T e^t f(t) dif t+1/e^T integral_T^(x+T) e^t f(t) dif t \
 =1/e^T integral_0^T e^t f(t) dif t+1/e^T integral_0^x e^(u+T) f(u+T) dif u \
 =1/e^T integral_0^T e^t f(t) dif t+integral_0^x e^t f(t) dif t. $
从而
$ y(x+T)-y(x)=e^(-x)[(1/e^T-1)C+1/e^T integral_0^T e^t f(t) dif t]. $
所以，当且仅当 $C=1/(e^T-1) integral_0^T e^t f(t) dif t$ 时，$y(x+T)-y(x)=0$. 故方程存在唯一的以 $T$ 为周期的解.

（Ⅱ）【解法2】由通解，条件 $y(0)=y(T)$ 等价于
$ C=C e^(-T)+e^(-T)integral_0^T e^t f(t)dif t, $
故至多存在一个周期解，所需常数为 $C_0=integral_0^T e^t f(t)dif t/(e^T-1)$.
取此常数对应的解 $y(x)$，令 $z(x)=y(x+T)$，则 $z'+z=f(x+T)=f(x)$，且 $z(0)=y(T)=y(0)$. 由初值问题解的唯一性，$z(x)=y(x)$，即 $y(x+T)=y(x)$，从而此解确实为周期解.
【典型错误】通解中的不定积分代表一个原函数，可以改为变上限的定积分形式. 应据此利用周期条件，而不能仅停留在通解公式.
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

