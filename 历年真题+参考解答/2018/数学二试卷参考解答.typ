#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2018, subject: "二", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2018 数学二试卷参考解答

= 一、选择题


#answer("1.")[
B. 【解法1】取对数后，$lim_(x->0)ln(e^x+a x^2+b x)/x^2=0$. 先由一次项得 $b=-1$，再用洛必达法则，
$ lim_(x->0)frac(e^x+2a x-1,2x)=(1+2a)/2=0, $
故 $a=-1/2$.
【解法2】由 $e^x=1+x+x^2/2+o(x^2)$，以及 $ln(1+u)tilde u$，原对数极限等价于
$ lim_(x->0)frac((b+1)x+(a+1/2)x^2+o(x^2),x^2)=0. $
所以 $b+1=a+1/2=0$.
【解法3】用重要极限 $(1+u)^(1/u)->e$，原式为 $e^(lim_(x->0)(e^x-1+a x^2+b x)/x^2)$，故指数极限为0，再按前两法求出参数.
【典型错误】原极限为1，取对数后的极限应为0，不能仍写为1.
]

#answer("2.")[

D. 【解】由导数定义，考察 $lim_(x->0)(f(x)-f(0))/x$. A、B、C分别有
$ lim_(x->0)frac(abs(x)sin abs(x),x)=lim_(x->0)x=0, $
$ lim_(x->0)frac(abs(x)sin sqrt(abs(x)),x)=lim_(x->0)frac(abs(x),x)sqrt(abs(x))=0, $
$ lim_(x->0)frac(cos abs(x)-1,x)=-lim_(x->0)frac(abs(x)^2,2x)=0. $
D的差商与 $-abs(x)/(2x)$ 等价，左右极限不同，故在0处不可导.

]

#answer("3.")[
D. 【解】
$ f(x)+g(x)=cases(1-a x & x<=-1,x-1 & -1<x<0,x-b+1 & x>=0). $
在分段点−1和0连续，分别要求 $1+a=-2,-1=1-b$，故 $a=-3,b=2$.
【典型错误】将 $x=-1$ 代入 $1-a x$ 时，应得到 $1+a$，注意负号.
]

#answer("4.")[
D. 【解】以 $1/2$ 为中心的泰勒公式给出
$ f(x)=f(1/2)+f'(1/2)(x-1/2)+1/2 f''(xi)(x-1/2)^2, $
其中 $xi$ 在 $x$ 与 $1/2$ 之间. 对 $[0,1]$ 积分，线性项积分为0；若 $f''>0$，余项在除中点外均为正，所以
$ 0=integral_0^1 f(x)dif x>f(1/2). $
故D正确. 【典型错误】不能颠倒二阶导数的符号与曲线凹凸性的关系.
]

#answer("5.")[

C. 【解】$2x/(1+x^2)$ 是奇函数，故
$ M=integral_(-pi/2)^(pi/2)(1+frac(2x,1+x^2))dif x=pi. $
由于 $sqrt(cos x)>=0$ 且不恒为0，$K=pi+integral_(-pi/2)^(pi/2)sqrt(cos x)dif x>pi$.
曲线 $y=e^x$ 位于在 $(0,1)$ 处的切线 $y=1+x$ 上方，故 $(1+x)/e^x<=1$ 且不恒等，得 $N<pi$. 所以 $K>M>N$.

]

#answer("6.")[
C. 【解】合并积分区域得
$ I=integral_(-1)^1 dif x integral_(abs(x))^(2-x^2)(1-x y)dif y. $
区域关于 $y$ 轴对称，而 $x y$ 关于 $x$ 为奇函数，故其积分为0. 因而
$ I=2integral_0^1 dif x integral_x^(2-x^2)dif y=2integral_0^1(2-x^2-x)dif x=7/3. $
【典型错误】利用对称性后，不能漏掉倍数2.
]

#answer("7.")[

A. 【解】题中矩阵有三重特征值1，特征空间只有一个线性无关向量 $(1,0,0)^T$. 四个选项也均有三重特征值1. A的特征空间同样只有一个独立向量；B、C、D各有两个独立向量，分别可取
$ B: mat(1;0;0),mat(1;1;0);quad C:mat(1;0;0),mat(0;1;1);quad D:mat(1;0;0),mat(0;1;0). $
B、C、D不能与题中矩阵相似. A与题中矩阵均为一个三阶Jordan块，故相似，选A.

]

#answer("8.")[

A. 【解】设 $"r"(A)=r$，存在可逆矩阵 $P$ 使 $P A=mat(A_1;0)$，其中 $A_1$ 行满秩，故
$ "r"(A,A B)="r"(P A,P A B)="r"mat(A_1,A_1 B;0,0)=r. $
B项反例 $A=mat(1,0;0,0),B=mat(0,1;1,0)$，则 $"r"(A,B A)=2$.
C项反例 $A=mat(1,0;0,0),B=mat(0,0;1,0)$，两者秩均为1，而 $"r"(A,B)=2$.
D项反例 $A=mat(1,0;0,0),B=mat(0,1;0,0)$，则 $"r"(A,B)=1$，$"r"(A^T,B^T)=2$.
【典型错误】分块矩阵的秩不能照搬矩阵乘积的秩或转置的秩公式.

]


= 二、填空题

#answer("9.")[
$1$. 【解法1】洛必达法则给出
$ lim_(x->infinity)x^2[arctan(x+1)-arctan x]=lim_(x->infinity)frac(1/(1+(x+1)^2)-1/(1+x^2),-2/x^3) $
$ =lim_(x->infinity)frac(2x^4+x^3,2[1+(x+1)^2](1+x^2))=1. $
【解法2】令 $t=1/x$，再用洛必达法则，得
$ lim_(t->0^+)frac(arctan(1/t+1)-arctan(1/t),t^2) $
$ =lim_(t->0^+)frac(1/(t^2+1)-1/(t^2+(1+t)^2),2t)=1. $
【解法3】由拉格朗日中值定理，差值为 $1/(1+xi^2)$，其中 $x<xi<x+1$. 对 $x>0$，
$ frac(x^2,1+(x+1)^2)<frac(x^2,1+xi^2)<frac(x^2,1+x^2). $
两端极限均为1，由夹逼准则得原极限为1. 【典型错误】分式运算须核对，特别注意幂次和系数.
]

#answer("10.")[
$y=4x-3$. 【解】$y'=2x+2/x,y''=2-2/x^2$. 因定义域 $x>0$，二阶导数为0的点只有 $x=1$，且两侧符号由负变正，故 $(1,1)$ 是唯一拐点. 此处斜率 $y'(1)=4$，切线为 $y-1=4(x-1)$，即 $y=4x-3$.
]

#answer("11.")[
$ln 2/2$. 【解】
$ integral_5^infinity frac(1,x^2-4x+3)dif x=1/2 integral_5^infinity (frac(1,x-3)-frac(1,x-1))dif x $
$ =1/2[ln frac(x-3,x-1)]_5^infinity=-1/2 ln(1/2)=ln 2/2. $
【典型错误】反常积分须取极限，最后的负号和系数1/2应核对.
]

#answer("12.")[
$2/3$. 【解】参数求导得
$ frac(dif y,dif x)=frac(3sin^2 t cos t,-3cos^2 t sin t)=-tan t, $
$ frac(dif^2 y,dif x^2)=frac(-sec^2 t,-3cos^2 t sin t)=frac(1,3cos^4 t sin t). $
故曲率 $K=abs(y'')/(1+y'^2)^(3/2)=1/(3abs(cos t sin t))$，在 $t=pi/4$ 时为 $2/3$.
【典型错误】二阶导数须再除以 $dif x/dif t$，不能直接对一阶导数求参数导数.
]

#answer("13.")[
$1/4$. 【解法1】直接求偏导，得 $(1/z+e^(z-1))z_x=y$，所以 $z_x=y/(1/z+e^(z-1))$. 在 $(2,1/2)$ 处，由原式知 $z=1$，故 $z_x=1/4$.
【解法2】令 $F(x,y,z)=ln z+e^(z-1)-x y$，则 $z_x=-F_x/F_z=y/(1/z+e^(z-1))$，代入同样得到1/4.
【解法3】取全微分，$(1/z+e^(z-1))dif z=y dif x+x dif y$，从 $dif x$ 的系数读出 $z_x$，再代入对应点.
【典型错误】必须先算出该点的 $z=1$，不能把含有 $z$ 的表达式作为最终结果.
]

#answer("14.")[
$2$. 【解】令 $P=(alpha_1,alpha_2,alpha_3)$，由线性无关知 $P$ 可逆. 题设为
$ A P=P B,quad B=mat(2,0,0;1,1,-1;1,2,1), $
因此 $A$ 与 $B$ 相似，具有相同特征值. 特征多项式为
$ det(lambda E-B)=(lambda-2)(lambda^2-2lambda+3). $
第二因式无实根，故唯一实特征值为2. 【典型错误】不必先求出A的具体元素，应利用所给基下的表示矩阵.
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
解　（Ⅰ）令 $u=x-t$，则
$ integral_0^x t f(x-t) dif t=integral_0^x (x-u)f(u) dif u \
 =x integral_0^x f(u) dif u-integral_0^x u f(u) dif u. $
由题设知
$ integral_0^x f(t) dif t+x integral_0^x f(u) dif u-integral_0^x u f(u) dif u=a x^2. $
对上式两端求导得
$ f(x)+integral_0^x f(u) dif u=2a x, $
所以 $f(x)$ 可导，$f(0)=0$，且 $f'(x)+f(x)=2a$.

于是，
$ f(x)=e^(-x)(C+integral 2a e^x dif x)=C e^(-x)+2a. $
由 $f(0)=0$，得 $C=-2a$，从而 $f(x)=2a(1-e^(-x))$.

（Ⅱ）$integral_0^1 2a(1-e^(-x)) dif x=(2a)/e$，由题设得 $(2a)/e=1$，故 $a=e/2$.

【典型错误】先换元把卷积写为两个变上限积分，再求导；由积分方程得到的初值不能遗漏. 第二问应用平均值条件确定常数.
]

#answer("17.")[
解
$ integral.double_D (x+2y) dif x dif y \
 =integral.double_D (x-pi) dif x dif y+integral.double_D (2y+pi) dif x dif y. $
因为 $D$ 关于直线 $x=pi$ 对称，所以 $integral.double_D (x-pi) dif x dif y=0$.

设曲线 $cases(x=t-sin t,y=1-cos t)$（$0<=t<=2pi$）的直角坐标方程为 $y=y(x)$（$0<=x<=2pi$），则
$ integral.double_D (2y+pi) dif x dif y \
 =integral_0^(2pi) dif x integral_0^(y(x)) (2y+pi) dif y \
 =integral_0^(2pi) [y^2(x)+pi y(x)] dif x. $
又
$ integral_0^(2pi) y^2(x) dif x=integral_0^(2pi) (1-cos t)^3 dif t \
 =integral_0^(2pi) (1-3cos t+3cos^2 t-cos^3 t) dif t=5pi, \
 integral_0^(2pi) y(x) dif x=integral_0^(2pi) (1-cos t)^2 dif t \
 =integral_0^(2pi) (1-2cos t+cos^2 t) dif t=3pi, $
所以 $integral.double_D (x+2y) dif x dif y=pi(5+3pi)$.

【解法1】设摆线为 $y=y(x)$，则
$ integral.double_D (x+2y)dif x dif y=integral_0^(2pi)[x y(x)+y^2(x)]dif x. $
令 $x=t-sin t,y=1-cos t$，有
$ integral_0^(2pi)x y(x)dif x=integral_0^(2pi)(t-sin t)(1-cos t)^2 dif t=3pi^2, $
$ integral_0^(2pi)y^2(x)dif x=integral_0^(2pi)(1-cos t)^3 dif t=5pi. $
其中第一积分展开后，含 $sin t$ 的各项积分为0，$integral_0^(2pi)t dif t=2pi^2$，$integral_0^(2pi)t cos t dif t=0$，$integral_0^(2pi)t cos^2 t dif t=pi^2$. 故结果为 $3pi^2+5pi$.
【典型错误】积分上限可用 $y(x)$ 表示，不必显式求出摆线的反函数；换元时应同时代入微分.
]

#answer("18.")[
解　设 $f(x)=x-ln^2 x+2k ln x-1$. 只需证明：当 $0<x<1$ 时，$f(x)<0$；当 $x>1$ 时，$f(x)>0$.
$ f'(x)=1-(2ln x)/x+(2k)/x=1/x (x-2ln x+2k). $
设 $g(x)=x-2ln x+2k$，则 $g'(x)=1-2/x$.

令 $g'(x)=0$，得 $g(x)$ 的唯一驻点 $x=2$.

又 $g''(x)=2/x^2>0$，故 $x=2$ 为 $g(x)$ 的唯一极小值点，于是 $g(2)$ 为 $g(x)$ 的最小值.

因为 $k>=ln 2-1$，所以 $g(2)=2-2ln 2+2k>=0$，从而 $g(x)>0$（$x!=2$）.

综上可知 $f'(x)>0$（$x!=2$），所以 $f(x)$ 单调增加.

又 $f(1)=0$，故当 $0<x<1$ 时，$f(x)<0$，当 $x>1$ 时，$f(x)>0$.

【典型错误】把不等式转化为函数的符号，再以单调性证明. 因 x>0，导数的符号由辅助函数g决定，不能遗漏参数条件.
]

#answer("19.")[
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

#answer("20.")[
解　设 $P$ 点的坐标为 $(m,n)$，则直线 $A P$ 的方程为
$ y=(4/9 m-1/m)x+1. $
直线 $O A$ 与直线 $A P$ 及曲线 $L$ 所围图形的面积为
$ S=integral_0^m [(4/9 m-1/m)x+1-4/9 x^2] dif x \
 =(4/9 m-1/m)m^2/2+m-4/27 m^3 \
 =2/27 m^3+1/2 m. $
所以 $(dif S)/(dif t)=(2/9 m^2+1/2)(dif m)/(dif t)$.

由题设，当 $m=3$ 时，$(dif m)/(dif t)=4$.

所以当 $P$ 运动到点 $(3,4)$ 时，$S$ 对时间 $t$ 的变化率为 $(dif S)/(dif t)=10$.

【解法2】令 $P(t)=(x(t),4/9 x^2(t))$，面积为三角形面积减去曲线下的面积：
$ S(t)=1/2[1+4/9 x^2(t)]x(t)-integral_0^(x(t))4/9 u^2 dif u=1/2 x(t)+2/27 x^3(t). $
所以 $S'(t)=[1/2+2/9 x^2(t)]x'(t)$，在 $x(t)=3,x'(t)=4$ 时为10.
【典型错误】不必求出x(t)的具体表达式，应先建立面积与横坐标的关系，再用链式法则求瞬时变化率.
]

#answer("21.")[
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

#answer("22.")[

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

#answer("23.")[

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

