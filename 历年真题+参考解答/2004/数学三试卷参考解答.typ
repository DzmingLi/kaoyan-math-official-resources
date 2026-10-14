#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2004, subject: "三", title: "2004年全国硕士研究生入学统一考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#import "@preview/cetz:0.5.2"
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2004 数学三试卷参考解答

= 一、填空题

#answer("1.")[
*分析* 使用同阶无穷小、等价无穷小替换和极限的四则运算法则.
*解* 分子 $sin x(cos x-b)$ 趋于0，给定极限非零，分母必须趋于0，故 $1-a=0$，得 $a=1$. 代入后由 $e^x-1~x$，
$ lim_(x->0)frac(sin x,e^x-1)(cos x-b)=lim_(x->0)frac(sin x,x)(cos x-b)=1-b=5, $
所以 $b=-4$.
]

#answer("2.")[
*分析* 先表示出 $f(u,v)$，再计算混合偏导数.
*解* 设 $u=x g(y),v=y$，则 $f(u,v)=u/g(v)+g(v)$，所以
$ frac(partial f,partial u)=frac(1,g(v)),quad frac(partial^2 f,partial u partial v)=frac(partial,partial v)frac(1,g(v))=-frac(g'(v),[g(v)]^2). $
]

#answer("3.")[
*分析* 使用定积分换元、奇函数在对称区间上的积分性质及分段积分.
*解* 令 $t=x-1$，得
$ integral_(1/2)^2 f(x-1)dif x=integral_(-1/2)^1 f(t)dif t=integral_(-1/2)^(1/2)t e^(t^2)dif t+integral_(1/2)^1(-1)dif t=0-frac(1,2)=-frac(1,2). $
]

#answer("4.")[
*分析* 二次型的秩等于其矩阵的秩，也等于经非奇异线性变换所得标准形中非零平方项的个数.
*解法1* 二次型的矩阵
$ A=mat(2,1,1;1,2,-1;1,-1,2)->mat(1,0,0;0,1,0;0,0,0), $
故 $r(A)=2$，二次型的秩为2.
*解法2* 作非奇异线性变换
$ mat(x_1;x_2;x_3)=mat(1,-1/2,-1;0,1,1;0,0,1)mat(y_1;y_2;y_3), $
化为等价二次型 $2y_1^2+frac(3,2)y_2^2$，故秩为2.
*典型错误* 使用奇异变换 $mat(y_1;y_2;y_3)=mat(1,1,0;0,1,-1;1,0,1)mat(x_1;x_2;x_3)$，得到 $y_1^2+y_2^2+y_3^2$ 后误判秩为3. 等价变换必须非奇异.
]

#answer("5.")[
*分析* 考查指数分布的概率密度与数字特征.
*解* 由指数分布知 $D X=1/lambda^2$，所以
$ P{X>sqrt(D X)}=P{X>1/lambda}=integral_(1/lambda)^infinity lambda e^(-lambda x)dif x=frac(1,e). $
*典型错误* 没有理解 $D X$ 是一个常数，或记错指数分布的密度和方差.
]

#answer("6.")[
*分析* 使用样本方差的无偏性与数学期望的线性性质.
*解* 记
$ S_1^2=frac(1,n_1-1)sum_(i=1)^(n_1)(X_i-overline(X))^2,quad S_2^2=frac(1,n_2-1)sum_(i=1)^(n_2)(Y_i-overline(Y))^2. $
有 $E S_1^2=E S_2^2=sigma^2$，故原式
$ E frac((n_1-1)S_1^2+(n_2-1)S_2^2,n_1+n_2-2)=frac((n_1-1)E S_1^2+(n_2-1)E S_2^2,n_1+n_2-2)=sigma^2. $
*典型错误* 没有联系样本方差的无偏性，直接展开计算期望，导致计算错误或无从下手.
]

= 二、选择题

#answer("7.")[
*分析* 判断各区间端点附近的单侧极限，使用闭区间连续函数的有界性.
在 $(-1,0)$ 内 $|x|=-x$，且
$ lim_(x->-1^+)f(x)=-frac(sin 3,18),quad lim_(x->0^-)f(x)=-frac(sin 2,4). $
以两个有限极限补定义端点值，得到在 $[-1,0]$ 上连续的函数，因此 $f$ 在 $(-1,0)$ 内有界.
在 $x=1,2$ 附近函数的绝对值趋于无穷，故另外三个区间内都无界. 选 A.
]

#answer("8.")[
*分析* 由 $x->0$ 时 $|1/x|->infinity$ 判断极限，再与函数值比较.
令 $t=1/x$，则 $lim_(x->0)g(x)=lim_(|t|->infinity)f(t)=a$. 当 $a=0$ 时极限等于 $g(0)=0$，函数连续；当 $a!=0$ 时不连续. 因而连续性与 $a$ 有关，选 D.
]

#answer("9.")[
*分析* 把绝对值函数写成分段函数，分别讨论分界点的连续性、可导性、极值与凹凸性.
$ f(x)=cases(-x(1-x) & x<0,x(1-x) & 0<=x<1,x(x-1) & x>=1). $
函数在实数域连续，其导数为
$ f'(x)=cases(2x-1 & x<0,1-2x & 0<x<1,2x-1 & x>1). $
在0处，$f'_-(0)=lim_(x->0^-)(-x(1-x))/x=-1$，$f'_+(0)=lim_(x->0^+)(x(1-x))/x=1$，所以不可导. 但在 $x<0$ 时导数为负，在 $0<x<1/2$ 时导数为正，故0是极小值点，极小值为 $f(0)=0$.
又
$ f''(x)=cases(2 & x<0,-2 & 0<x<1,2 & x>1). $
曲线在0的左右两侧凹凸性改变，故 $(0,0)$ 是拐点. 选 C.
#cetz.canvas({
 import cetz.draw: *
 line((-.8,0),(2.1,0),mark:(end:">"));line((0,-.3),(0,1.4),mark:(end:">"))
 line(..range(0,101).map(i=>{let x=-.5+2*i/100;(x,2*calc.abs(x*(1-x)))}))
 line((.5,0),(.5,.8),stroke:(dash:"dashed"));content((.5,-.1),$1/2$,anchor:"north");content((1,-.1),$1$,anchor:"north");content((.08,-.1),$O$,anchor:"north-west");content((2.1,0),$x$,anchor:"north");content((0,1.4),$y$,anchor:"east")
})
]

#answer("10.")[
*分析* 利用级数敛散性的基本性质.
加括号后的级数收敛，原级数未必收敛，所以①错误. 增加或减少有限项不改变级数敛散性，所以②正确. 比值极限存在且大于1时，级数发散，所以③正确. 两个级数的和收敛，不能推出它们各自收敛，所以④错误. 选 B.
]

#answer("11.")[
*分析* 使用导数的符号、连续函数的零点定理与反例.
由 $f'(a)>0$，可在 $a$ 的右邻域找到 $x_0$ 使 $f(x_0)>f(a)$，故 A正确. 由 $f'(b)<0$，可在 $b$ 的左邻域找到 $x_0$ 使 $f(x_0)>f(b)$，故 B正确. 又 $f'$ 连续且两端异号，所以存在内点使 $f'(x_0)=0$，故 C正确.
但取 $f(x)=-x^2+2$，在 $[-1,1]$ 上 $f'(-1)=2>0,f'(1)=-2<0$，而 $f(x)>0$ 始终成立，所以不能推出 $f(x_0)=0$. 选 D.
]

#answer("12.")[
*分析* 区分矩阵等价与矩阵相似.
由等价的定义，存在可逆矩阵 $P,Q$ 使 $A=P B Q$，故 $|A|=|P||B||Q|$. 因 $|P||Q|!=0$，当 $|A|=0$ 时必有 $|B|=0$，选 D.
也可由 $r(A)=r(B)$ 判断：$|A|=0$ 意味着 $r(A)<n$，所以 $r(B)<n$，即 $|B|=0$. 或用等价矩阵 $2E,E$ 排除另外三项.
*典型错误* 混淆等价与相似，误认为行列式必相等.
]

#answer("13.")[
*分析* 联系伴随矩阵的秩、非齐次方程组解的唯一性与齐次方程组解空间的维数.
由
$ r(A^*)=cases(0 & r(A)<n-1,1 & r(A)=n-1,n & r(A)=n) $
及 $A^*!=0$，知 $r(A)=n$ 或 $n-1$. 非齐次方程组有互不相同的解，排除 $r(A)=n$，所以 $r(A)=n-1$，基础解系仅含一个非零解向量. 选 B.
*典型错误* 虽然 $xi_2-xi_1,xi_3-xi_1,xi_4-xi_1$ 是互不相同的齐次解，但互不相同不代表线性无关.
]

#answer("14.")[
*分析* 利用标准正态分布的对称性与上侧分位数的定义.
由 $P{X<=-x}=P{X>=x}$，得
$ alpha=P{|X|<x}=1-[P{X>=x}+P{X<=-x}]=1-2P{X>=x}. $
所以 $P{X>x}=(1-alpha)/2$，由定义 $x=u_((1-alpha)/2)$，选 C.
*典型错误* 没有正确理解上侧分位数 $u_alpha$ 的定义.
]

= 三、解答题

#answer("15.")[
*分析* 这是 $infinity-infinity$ 型未定式，通分化为 $0/0$ 型，再用无穷小量代换和洛必达法则.
解
$ lim_(x->0)(1/sin^2 x-(cos^2 x)/x^2) \
=lim_(x->0)(x^2-sin^2 x cos^2 x)/(x^2 sin^2 x)=lim_(x->0)(x^2-1/4 sin^2 2x)/x^4 \
=lim_(x->0)(x-1/4 sin 4x)/(2x^3)=lim_(x->0)(1-cos 4x)/(6x^2) \
=lim_(x->0)(sin 4x)/(3x)=4/3. $

]

#answer("16.")[
*分析* 区域为大圆内部与小圆外部的交集，且关于横轴对称. 对含 $sqrt(x^2+y^2)$ 的被积函数，宜换为极坐标积分；可先算大圆再减小圆，也可把剩余区域分块.
解法1
$ integral.double_D(sqrt(x^2+y^2)+y)dif sigma \
=integral.double_(D_#text[大圆])(sqrt(x^2+y^2)+y)dif sigma-integral.double_(D_#text[小圆])(sqrt(x^2+y^2)+y)dif sigma. $
$ integral.double_(D_#text[大圆])(sqrt(x^2+y^2)+y)dif sigma \
=integral.double_(D_#text[大圆])sqrt(x^2+y^2)dif sigma+integral.double_(D_#text[大圆])y dif sigma quad #text[（据对称性）] \
=integral_0^(2pi)dif theta integral_0^2 r^2 dif r+0=16/3 pi, $
$ integral.double_(D_#text[小圆])(sqrt(x^2+y^2)+y)dif sigma \
=integral.double_(D_#text[小圆])sqrt(x^2+y^2)dif sigma+integral.double_(D_#text[小圆])y dif sigma \
=integral_(pi/2)^((3pi)/2)dif theta integral_0^(-2cos theta)r^2 dif r+0=32/9, $
所以 $integral.double_D(sqrt(x^2+y^2)+y)dif sigma=16/9(3pi-2)$.

解法2　如下图所示，由积分区域对称性和被积函数的奇偶性知：
#cetz.canvas({
 import cetz.draw: *
 circle((0,0),radius:2)
 line(..range(0,81).map(i=>{let t=180deg*i/80;(2*calc.cos(t),2*calc.sin(t))}),close:true,fill:rgb("eeeeee"))
 circle((-1,0),radius:1,fill:white)
 line((-2.5,0),(2.7,0),mark:(end:">"));line((0,-2.4),(0,2.6),mark:(end:">"))
 content((2.7,0),$x$,anchor:"north");content((0,2.6),$y$,anchor:"east");content((.1,-.1),$O$,anchor:"north-west");content((.9,.8),$D_(#text[上]1)$);content((-.7,1.4),$D_(#text[上]2)$)
})
$ integral.double_D y dif sigma=0, $
原式
$ =integral.double_D sqrt(x^2+y^2)dif sigma+0 \
=2(integral.double_(D_(#text[上]1))sqrt(x^2+y^2)dif sigma+integral.double_(D_(#text[上]2))sqrt(x^2+y^2)dif sigma) \
=2(integral_0^(pi/2)dif theta integral_0^2 r^2 dif r+integral_(pi/2)^pi dif theta integral_(-2cos theta)^2 r^2 dif r) \
=2[4/3 pi+(4/3 pi-16/9)]=16/9(3pi-2). $
*注* 还可采用其他分块方法. 计算中要正确确定累次积分上下限及极坐标面积元.
]

#answer("17.")[
*分析* 移项后构造新的变上限积分函数，再利用定积分的性质和分部积分法证明不等式.
证　令 $F(x)=f(x)-g(x),G(x)=integral_a^x F(t)dif t$.
由题设知
$ G(x)>=0,quad x in [a,b], \
G(a)=G(b)=0,G'(x)=F(x), $
从而 $integral_a^b x F(x)dif x=integral_a^b x dif G(x)$
$ =x G(x)|_a^b-integral_a^b G(x)dif x=-integral_a^b G(x)dif x. $
由于 $G(x)>=0,x in [a,b]$，故有 $-integral_a^b G(x)dif x<=0$，即 $integral_a^b x F(x)dif x<=0$，因此 $integral_a^b x f(x)dif x<=integral_a^b x g(x)dif x$.

]

#answer("18.")[
*分析* 使用需求函数的弹性公式，以及边际收益与需求弹性之间的关系.
解　（Ⅰ）$E_d=|P/Q Q'|=P/(20-P)$.

（Ⅱ）由 $R=P Q$，得
$ (dif R)/(dif P)=Q+P Q'=Q(1+P/Q Q')=Q(1-E_d). $
又由 $E_d=P/(20-P)=1$，得 $P=10$.
当 $10<P<20$ 时，$E_d>1$，于是 $(dif R)/(dif P)<0$，故当 $10<P<20$ 时，降低价格反而使收益增加.

]

#answer("19.")[
*分析* 逐项求导建立和函数与其导数的关系，再解初值问题. 也可先利用指数函数的幂级数展开求和，再建立微分方程.
解　（Ⅰ）$S(x)=x^4/(2 dot 4)+x^6/(2 dot 4 dot 6)+x^8/(2 dot 4 dot 6 dot 8)+dots$，易见 $S(0)=0$，
$ S'(x)&=x^3/2+x^5/(2 dot 4)+x^7/(2 dot 4 dot 6)+dots \
&=x(x^2/2+x^4/(2 dot 4)+x^6/(2 dot 4 dot 6)+dots) \
&=x[x^2/2+S(x)], $
因此 $S(x)$ 是初值问题 $y'=x y+x^3/2,y(0)=0$ 的解.

（Ⅱ）方程 $y'=x y+x^3/2$ 的通解为
$ y=e^(integral x dif x)(integral x^3/2 e^(-integral x dif x)dif x+C)=-x^2/2-1+C e^(x^2/2). $
由初始条件 $y(0)=0$，求得 $C=1$，故 $y=-x^2/2+e^(x^2/2)-1$，因此和函数 $S(x)=-x^2/2+e^(x^2/2)-1$.
*解法2* 先求和函数：
$ S(x)=sum_(n=2)^infinity frac((x^2)^n,2^n n!)=sum_(n=0)^infinity frac((x^2/2)^n,n!)-frac(x^2,2)-1=e^(x^2/2)-frac(x^2,2)-1. $
所以 $S'(x)=x e^(x^2/2)-x=x(S(x)+x^2/2+1)-x=x S(x)+x^3/2$，且 $S(0)=0$.
]

#answer("20.")[
*分析* 将向量的线性表示问题化为以表示系数为未知数的非齐次方程组，比较系数矩阵与增广矩阵的秩.
解　设有数 $k_1,k_2,k_3$，使得
$ k_1 alpha_1+k_2 alpha_2+k_3 alpha_3=beta. quad (ast) $
记 $A=(alpha_1,alpha_2,alpha_3)$. 对矩阵 $(A quad beta)$ 施以初等行变换，有
$ (A quad beta)=mat(augment: #3,1,1,-1,1;2,a+2,-b-2,3;0,-3a,a+2b,-3) \
->mat(augment: #3,1,1,-1,1;0,a,-b,1;0,0,a-b,0). $
（Ⅰ）当 $a=0,b$ 为任意常数时，有
$ (A quad beta)->mat(augment: #3,1,1,-1,1;0,0,-b,1;0,0,0,-1), $
可知 $r(A)!=r(A quad beta)$，故方程组（$ast$）无解，$beta$ 不能由 $alpha_1,alpha_2,alpha_3$ 线性表示.

（Ⅱ）当 $a!=0$ 且 $a!=b$ 时，$r(A)=r(A quad beta)=3$，故方程组（$ast$）有唯一解
$ k_1=1-1/a,k_2=1/a,k_3=0, $
则 $beta$ 可由 $alpha_1,alpha_2,alpha_3$ 唯一地线性表示，其表示式为 $beta=(1-1/a)alpha_1+1/a alpha_2$.

（Ⅲ）当 $a=b!=0$ 时，对 $(A quad beta)$ 施以初等行变换，有
$ (A quad beta)->mat(augment: #3,1,0,0,1-1/a;0,1,-1,1/a;0,0,0,0), $
可知 $r(A)=r(A quad beta)=2$，故方程组（$ast$）有无穷多解，其全部解为
$ k_1=1-1/a,k_2=1/a+c,k_3=c, $
其中 $c$ 为任意常数.
此时 $beta$ 可由 $alpha_1,alpha_2,alpha_3$ 线性表示，但表示式不唯一，其表示式为
$ beta=(1-1/a)alpha_1+(1/a+c)alpha_2+c alpha_3. $
*典型错误* 参数分类不完整或相互重叠. 只讨论 $a=b$ 与 $a!=b$ 会遗漏 $a=0$ 的特殊情况；把 $a=0,a=b,a!=b$ 直接并列也没有形成互不重叠的分类.
]

#answer("21.")[
*分析* 求特征多项式，再解相应齐次方程组得到特征向量，并以线性无关的特征向量构造可逆矩阵.
解　（Ⅰ）（ⅰ）当 $b!=0$ 时，
$ |lambda E-A|=mat(delim:"|",lambda-1,-b,dots,-b;-b,lambda-1,dots,-b;dots.v,dots.v,,dots.v;-b,-b,dots,lambda-1) \
=[lambda-1-(n-1)b][lambda-(1-b)]^(n-1). $
故 $A$ 的特征值为 $lambda_1=1+(n-1)b,lambda_2=dots=lambda_n=1-b$.
对于 $lambda_1=1+(n-1)b$，设 $A$ 的属于特征值 $lambda_1$ 的一个特征向量为 $xi_1$，则
$ mat(1,b,dots,b;b,1,dots,b;dots.v,dots.v,,dots.v;b,b,dots,1)xi_1=[1+(n-1)b]xi_1, $
解得 $xi_1=(1,1,dots,1)^"T"$，所以全部特征向量为 $k xi_1=k(1,1,dots,1)^"T"$（$k$ 为任意非零常数）.
对于 $lambda_2=dots=lambda_n=1-b$，解齐次线性方程组 $[(1-b)E-A]bold(x)=bold(0)$，由
$ (1-b)E-A=mat(-b,-b,dots,-b;-b,-b,dots,-b;dots.v,dots.v,,dots.v;-b,-b,dots,-b) \
->mat(1,1,dots,1;0,0,dots,0;dots.v,dots.v,,dots.v;0,0,dots,0), $
解得基础解系
$ xi_2=(1,-1,0,dots,0)^"T", \
xi_3=(1,0,-1,dots,0)^"T", \
dots \
xi_n=(1,0,0,dots,-1)^"T", $
故全部特征向量为 $k_2 xi_2+k_3 xi_3+dots+k_n xi_n$（$k_2,dots,k_n$ 是不全为零的常数）.

（ⅱ）当 $b=0$ 时，特征值 $lambda_1=dots=lambda_n=1$，任意非零列向量均为特征向量.

（Ⅱ）（ⅰ）当 $b!=0$ 时，$A$ 有 $n$ 个线性无关的特征向量，令 $P=(xi_1,xi_2,dots,xi_n)$，则
$ P^(-1)A P=op("diag"){1+(n-1)b,1-b,dots,1-b}. $
（ⅱ）当 $b=0$ 时，$A=E$，对任意可逆矩阵 $P$，均有 $P^(-1)A P=E$.

注　$xi_1=(1,1,dots,1)^"T"$ 也可由求解齐次线性方程组 $(lambda_1 E-A)bold(x)=bold(0)$ 得出.
*补充* 当 $n=1$ 时也有 $A=E$，特征值为1，任意非零列向量都是特征向量. 在 $b!=0,n>=2$ 时，对 $lambda_1 E-A$ 作初等行变换，得到
$ mat(1,0,dots,0,-1;0,1,dots,0,-1;dots.v,dots.v,,dots.v,dots.v;0,0,dots,1,-1;0,0,dots,0,0), $
故基础解系为 $xi_1=(1,1,dots,1)^T$.
*典型错误* 遗漏 $b=0$ 的情况；特征多项式或初等变换计算错误.
]

#answer("22.")[
*分析* 先把联合分布的计算转化为事件概率，再求相关系数以及二维离散变量函数的分布.
解　（Ⅰ）$P(A B)=P(A)P(B|A)=1/12$，$P(B)=(P(A B))/(P(A|B))=1/6$，则
$ P{X=1,Y=1}&=P(A B)=1/12, \
P{X=1,Y=0}&=P(A overline(B))=P(A)-P(A B)=1/6, \
P{X=0,Y=1}&=P(overline(A)B)=P(B)-P(A B)=1/12, \
P{X=0,Y=0}&=P(overline(A) overline(B))=1-P(A union B) \
&=1-[P(A)+P(B)-P(A B)]=2/3, $
（或 $P{X=0,Y=0}=1-1/12-1/6-1/12=2/3$），即 $(X,Y)$ 的概率分布为
#table(columns:3,[$X \ Y$],[0],[1],[0],[$2/3$],[$1/12$],[1],[$1/6$],[$1/12$])
（Ⅱ）方法1
$ E X=P(A)=1/4,E Y=P(B)=1/6,E(X Y)=1/12, $
则 $op("Cov")(X,Y)=E(X Y)-E X dot E Y=1/24$，
$ E X^2=P(A)=1/4,E Y^2=P(B)=1/6, \
D X=E X^2-(E X)^2=3/16,D Y=E Y^2-(E Y)^2=5/36, \
rho_(X Y)=(op("Cov")(X,Y))/sqrt(D X dot D Y)=1/sqrt(15). $
方法2　$X,Y$ 的概率分布分别为
#table(columns:3,[$X$],[0],[1],[$P$],[$3/4$],[$1/4$])
#table(columns:3,[$Y$],[0],[1],[$P$],[$5/6$],[$1/6$])
则 $E X=1/4,E Y=1/6$，而 $E(X Y)=1/12$，故
$ op("Cov")(X,Y)=E(X Y)-E X dot E Y=1/24, \
E X^2=1/4,quad E Y^2=1/6, \
D X=E X^2-(E X)^2=3/16,quad D Y=E Y^2-(E Y)^2=5/36, \
rho_(X Y)=(op("Cov")(X,Y))/sqrt(D X dot D Y)=1/sqrt(15). $
（Ⅲ）$Z$ 的可能取值为0，1，2.
$ P{Z=0}&=P{X=0,Y=0}=2/3, \
P{Z=1}&=P{X=0,Y=1}+P{X=1,Y=0}=1/4, \
P{Z=2}&=P{X=1,Y=1}=1/12, $
即 $Z$ 的概率分布为
#table(columns:4,[$Z$],[0],[1],[2],[$P$],[$2/3$],[$1/4$],[$1/12$])
*典型错误* 不会把联合分布转化为事件概率；相关系数计算不熟悉；没有认清 $Z$ 是离散型随机变量而错误地尝试求概率密度.
]

#answer("23.")[
*分析* 使用矩估计法和最大似然估计法，注意参数出现在取值范围中的情况.
解　当 $alpha=1$ 时，$X$ 的概率密度为
$ f(x;beta)=cases(beta/x^(beta+1) & x>1,0 & x<=1). $
（Ⅰ）由于
$ E X=integral_(-infinity)^(+infinity)x f(x;beta)dif x=integral_1^(+infinity)x beta/x^(beta+1)dif x=beta/(beta-1), $
令 $beta/(beta-1)=overline(X)$，解得 $beta=overline(X)/(overline(X)-1)$，所以，参数 $beta$ 的矩估计量为 $hat(beta)=overline(X)/(overline(X)-1)$.

（Ⅱ）对于总体 $X$ 的样本值 $x_1,x_2,dots,x_n$，似然函数为
$ L(beta)=product_(i=1)^n f(x_i;beta)=cases(beta^n/(x_1 x_2 dots x_n)^(beta+1) & x_i>1 (i=1,2,dots,n),0 & #text[其他]). $
当 $x_i>1 (i=1,2,dots,n)$ 时，$L(beta)>0$，取对数得
$ ln L(beta)=n ln beta-(beta+1)sum_(i=1)^n ln x_i, $
两边对 $beta$ 求导数，得
$ (dif ln L(beta))/(dif beta)=n/beta-sum_(i=1)^n ln x_i. $
令 $(dif ln L(beta))/(dif beta)=0$，解得 $beta=n/(sum_(i=1)^n ln x_i)$，$beta$ 的最大似然估计量为 $hat(beta)=n/(sum_(i=1)^n ln X_i)$.

（Ⅲ）当 $beta=2$ 时，$X$ 的概率密度为
$ f(x;alpha)=cases((2alpha^2)/x^3 & x>alpha,0 & x<=alpha). $
对于总体 $X$ 的样本值 $x_1,x_2,dots,x_n$，似然函数为
$ L(alpha)=product_(i=1)^n f(x_i;alpha)=cases((2^n alpha^(2n))/(x_1 x_2 dots x_n)^3 & x_i>alpha (i=1,2,dots,n),0 & #text[其他]). $
当 $x_i>alpha (i=1,2,dots,n)$ 时，$alpha$ 越大，$L(alpha)$ 越大，因而 $alpha$ 的最大似然估计值为 $hat(alpha)=min{x_1,x_2,dots,x_n}$，则 $alpha$ 的最大似然估计量为 $hat(alpha)=min{X_1,X_2,dots,X_n}$.
*典型错误* 把分布函数当作概率密度，误写 $L(beta)=product_(i=1)^n F(x_i;beta)$；不会构造似然函数；第三问仍试图用导数寻找最大值而忽略取值范围；把 $alpha$ 的估计错误地取为样本最大值，导致似然为0.
]

