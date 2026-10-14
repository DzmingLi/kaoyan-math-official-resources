#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2002, subject: "三", title: "2002年全国硕士研究生入学统一考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2002 数学三试卷参考解答

= 一、填空题

#answer("1（1）")[
*解* 利用重要极限得
$ lim_(n->infinity)ln[frac(n-2n a+1,n(1-2a))]^n=ln e^(1/(1-2a))=frac(1,1-2a). $
这里将底数改写为 $1+1/(n(1-2a))$，再将指数写成 $n(1-2a)/(1-2a)$.
]

#answer("1（2）")[
*分析* 画出积分区域后，写出先对 $y$ 后对 $x$ 的二次积分. 区域为 $0<=x<=1/2,x^2<=y<=x$.
#import "@preview/cetz:0.5.2"
#align(center,cetz.canvas({
 import cetz.draw: *
 set-style(stroke:.65pt)
 line((0,0),..range(1,41).map(i=>{let x=.5*i/40;(3*x,3*x*x)}),(1.5,1.5),(0,0),close:true,fill:luma(85%))
 line((-.2,0),(3.7,0),mark:(end:">"));line((0,-.2),(0,3.7),mark:(end:">"))
 line((0,0),(3.3,3.3));line(..range(0,51).map(i=>{let x=1.1*i/50;(3*x,3*x*x)}))
 line((1.5,0),(1.5,1.5),stroke:(dash:"dashed"));line((0,.75),(1.5,.75),stroke:(dash:"dashed"));line((0,1.5),(1.5,1.5),stroke:(dash:"dashed"))
 content((3.7,0),$x$,anchor:"north");content((0,3.7),$y$,anchor:"east");content((0,0),$O$,anchor:"north-east")
 content((1.5,0),$1/2$,anchor:"north");content((0,.75),$1/4$,anchor:"east");content((0,1.5),$1/2$,anchor:"east")
 content((3,3),$(1,1)$,anchor:"west");content((2.6,3.6),$y=x^2$,anchor:"east");content((3.3,3.3),$y=x$,anchor:"west");content((1,.65),$D$)
}))
*解* 交换积分次序后为
$ integral_0^(1/2)dif x integral_(x^2)^x f(x,y)dif y. $
]

#answer("1（3）")[
*解* $ A alpha=mat(1,2,-2;2,1,2;3,0,4)mat(a;1;1)=mat(a;2a+3;3a+4). $
由线性相关，存在常数 $k$ 使 $A alpha=k alpha$，即
$ cases((1-k)a=0,2a+3-k=0,3a+4-k=0). $
解得 $a=-1,k=1$，应填−1.
]

#answer("1（4）")[
*解* 由联合分布可求出
$ X^2~mat(0,1;.4,.6),quad Y^2~mat(0,1;.5,.5),quad X^2 Y^2~mat(0,1;.72,.28). $
故 $E X^2=.6,E Y^2=.5,E(X^2 Y^2)=.28$，从而
$ op("cov")(X^2,Y^2)=E(X^2 Y^2)-E X^2 dot E Y^2=.28-.6 times .5=-.02. $
*注* 直接计算 $E[(X^2-E X^2)(Y^2-E Y^2)]$ 会复杂得多，使用协方差的等价公式更简便.
]

#answer("1（5）")[
*解* $ E X=integral_theta^(+infinity)x e^(-(x-theta))dif x=theta+1. $
由矩估计定义令 $theta+1=overline(X)$，得 $hat(theta)=overline(X)-1=frac(1,n)sum_(i=1)^n X_i-1$.
]

= 二、选择题

#answer("2（1）")[
*分析* 题设没有给出闭区间上的连续性，故不能直接用零点定理、罗尔定理或拉格朗日中值定理排除端点不连续的情形. 但开区间内可导必连续，所以任意 $xi in(a,b)$ 都有 $lim_(x->xi)[f(x)-f(xi)]=0$，选 B.
]

#answer("2（2）")[
*解* 记 $c_n=a_n^2/b_n^2$，则
$ lim_(n->infinity)abs(c_(n+1)/c_n)=frac((3/sqrt(5))^2,3^2)=frac(1,5). $
由比值法求收敛半径得 $R=5$，选 A.
]

#answer("2（3）")[
*分析* $A B$ 是 $m$ 阶方阵，齐次方程是否有非零解由其秩是否小于 $m$ 决定.
当 $m>n$ 时，若 $r(A B)=m$，则
$ n<m=r(A B)<=min(r(A),r(B))<=n, $
矛盾. 故 $r(A B)<m$，方程必有非零解，选 D.
]

#answer("2（4）")[
*解* 由 $A alpha=lambda alpha$ 和 $A^T=A$ 得
$ (P^(-1)A P)^T(P^T alpha)=P^T A^T(P^(-1))^T P^T alpha=P^T A alpha=lambda P^T alpha. $
因此 $P^T alpha$ 为对应特征向量，选 B.
]

#answer("2（5）")[
*分析* 标准正态变量的平方服从自由度为1的 $chi^2$ 分布，所以C成立. 若再给出 $X,Y$ 独立，则四个选项均成立；题设没有独立条件，所以A、B、D不一定成立. 选 C.
]

= 解答题

#answer("三、")[
*分析* 用洛必达法则，并正确应用变上限积分求导法则. 可先以等价无穷小 $x^2/2$ 替换 $1-cos x$，简化运算.


*解法1*
$ lim_(x->0) (integral_0^x [integral_0^(u^2) arctan(1+t) dif t] dif u)/(x(1-cos x)) \
=lim_(x->0) (integral_0^(x^2) arctan(1+t) dif t)/(1-cos x+x sin x) \
=lim_(x->0) (2x arctan(1+x^2))/(sin x+sin x+x cos x) \
=2lim_(x->0) arctan(1+x^2) lim_(x->0) 1/((2sin x)/x+cos x)=2dot pi/4 dot 1/3=pi/6. $
*解法2*
$ lim_(x->0) (integral_0^x [integral_0^(u^2) arctan(1+t) dif t] dif u)/(x(1-cos x)) \
=2lim_(x->0) (integral_0^x [integral_0^(u^2) arctan(1+t) dif t] dif u)/x^3 \
=2lim_(x->0) (integral_0^(x^2) arctan(1+t) dif t)/(3x^2) \
=2lim_(x->0) (2x arctan(1+x^2))/(6x)=2/3 dot pi/4=pi/6. $
]

#answer("四、")[
*分析* 本题综合考查多元复合函数的微分法则和隐函数求导方法，两种方法分别由偏导数与全微分入手.


*解法1* 设 $F(x,y,z)=x e^x-y e^y-z e^z$，则
$ F'_x=(x+1)e^x, quad F'_y=-(y+1)e^y, quad F'_z=-(z+1)e^z. $
故
$ (partial z)/(partial x)=-F'_x/F'_z=(x+1)/(z+1)e^(x-z), \
(partial z)/(partial y)=-F'_y/F'_z=-(y+1)/(z+1)e^(y-z), $
而
$ (partial u)/(partial x)=f'_x+f'_z (partial z)/(partial x)=f'_x+f'_z (x+1)/(z+1)e^(x-z), \
(partial u)/(partial y)=f'_y+f'_z (partial z)/(partial y)=f'_y-f'_z (y+1)/(z+1)e^(y-z), $
所以
$ dif u&=(partial u)/(partial x)dif x+(partial u)/(partial y)dif y \
&=(f'_x+f'_z (x+1)/(z+1)e^(x-z))dif x+(f'_y-f'_z (y+1)/(z+1)e^(y-z))dif y. $
*解法2* 在 $x e^x-y e^y=z e^z$ 两边微分，得
$ e^x dif x+x e^x dif x-e^y dif y-y e^y dif y=e^z dif z+z e^z dif z, $
故 $dif z=((1+x)e^x dif x-(1+y)e^y dif y)/((1+z)e^z)$.

由 $u=f(x,y,z)$，得 $dif u=f'_x dif x+f'_y dif y+f'_z dif z$，故
$ dif u=(f'_x+f'_z (x+1)/(z+1)e^(x-z))dif x+(f'_y-f'_z (y+1)/(z+1)e^(y-z))dif y. $
]

#answer("五、")[
*分析* 先通过代换求出 $f(x)$ 的表达式，再代入被积函数，进行分部积分.


*解* 令 $u=sin^2 x$，则有 $sin x=sqrt(u),x=arcsin sqrt(u)$，$f(x)=(arcsin sqrt(x))/sqrt(x)$.

于是
$ integral sqrt(x)/sqrt(1-x) f(x) dif x \
=integral (arcsin sqrt(x))/sqrt(1-x) dif x \
=-integral (arcsin sqrt(x))/sqrt(1-x) dif(1-x) \
=-2integral arcsin sqrt(x) dif sqrt(1-x) \
=-2sqrt(1-x)arcsin sqrt(x)+2integral sqrt(1-x)1/sqrt(1-x)dif sqrt(x) \
=-2sqrt(1-x)arcsin sqrt(x)+2sqrt(x)+C. $
]

#answer("六、")[
*分析* 作出区域图，明确两个区域分别绕哪条坐标轴旋转，再用定积分求体积. 第二问是对参数求最大值.


*解* （1）
$ V_1=pi integral_a^2 (2x^2)^2 dif x=(4pi)/5 (32-a^5); \
V_2=pi a^2 dot 2a^2-pi integral_0^(2a^2) y/2 dif y=2pi a^4-pi a^4=pi a^4. $
#import "@preview/cetz:0.5.2"
#cetz.canvas({
 import cetz.draw: *
 set-style(stroke:.65pt)
 line((0,0),..range(0,41).map(i=>{let x=1.3*i/40;(x,.7*x*x)}),(1.3,0),close:true,fill:luma(80%))
 line((1.3,0),(1.3,.7*1.3*1.3),..range(1,41).map(i=>{let x=1.3+.7*i/40;(x,.7*x*x)}),(2,0),close:true,fill:luma(92%))
 line((-.3,0),(2.7,0),mark:(end:">"));line((0,-.3),(0,3.2),mark:(end:">"))
 content((2.7,0),$x$,anchor:"north");content((0,3.2),$y$,anchor:"east");content((0,0),$O$,anchor:"north-east")
 content((1.3,0),$a$,anchor:"north");content((2,0),[2],anchor:"north");content((2,2.8),$y=2x^2$,anchor:"west")
 content((.9,.25),$D_2$);content((1.65,.55),$D_1$)
})
（2）设 $V=V_1+V_2=(4pi)/5 (32-a^5)+pi a^4$.

由 $V'=4pi a^3(1-a)=0$，得区间 $(0,2)$ 内的唯一驻点 $a=1$.

当 $0<a<1$ 时，$V'>0$；当 $a>1$ 时，$V'<0$. 因此 $a=1$ 是极大值点即最大值点.

此时 $V_1+V_2$ 取得最大值，等于 $129/5 pi$.
]

#answer("七、")[
*分析* 考查幂级数逐项求导、指数函数的麦克劳林展开，以及二阶常系数非齐次线性微分方程的初值问题.


*解* （1）因为
$ y(x)=1+x^3/(3!)+x^6/(6!)+x^9/(9!)+dots+x^(3n)/((3n)!)+dots, \
y'(x)=x^2/(2!)+x^5/(5!)+x^8/(8!)+dots+x^(3n-1)/((3n-1)!)+dots, \
y''(x)=x+x^4/(4!)+x^7/(7!)+dots+x^(3n-2)/((3n-2)!)+dots, $
所以 $y''+y'+y=e^x$.

（2）与 $y''+y'+y=e^x$ 相应的齐次微分方程为 $y''+y'+y=0$，其特征方程为 $lambda^2+lambda+1=0$，特征根为 $lambda_(1,2)=-1/2 plus.minus sqrt(3)/2 i$. 因此齐次微分方程的通解为
$ Y=e^(-x/2)[C_1 cos(sqrt(3)/2 x)+C_2 sin(sqrt(3)/2 x)]. $
设非齐次微分方程的特解为 $y^*=A e^x$，将 $y^*$ 代入方程 $y''+y'+y=e^x$ 得 $A=1/3$，于是 $y^*=1/3 e^x$，方程通解为
$ y=Y+y^*=e^(-x/2)[C_1 cos(sqrt(3)/2 x)+C_2 sin(sqrt(3)/2 x)]+1/3 e^x. $
当 $x=0$ 时，有
$ cases(y(0)=1=C_1+1/3,y'(0)=0=-1/2 C_1+sqrt(3)/2 C_2+1/3); $
由此，得 $C_1=2/3,C_2=0$.

于是幂级数 $sum_(n=0)^infinity x^(3n)/((3n)!)$ 的和函数为
$ y(x)=2/3 e^(-x/2)cos(sqrt(3)/2 x)+1/3 e^x quad (-infinity<x<+infinity). $


*典型错误* 未由级数确定 $y(0)=1,y'(0)=0$，初值写错，积分常数计算错误或特解设错.
*注* 若题目不先给出方程，而要求求 $y+y'+y''$ 并用初等函数表示 $y$，内容相同，但须自己发现与 $e^x$ 展开的关系.
]

#answer("八、")[
*分析* 将加权积分与权函数积分的比值夹在 $f$ 的最小值和最大值之间，再由连续函数的介值定理得到结论.


*证明* 因为 $f(x),g(x)$ 在 $[a,b]$ 上连续，且 $g(x)>0$，由最值定理，知 $f(x)$ 在 $[a,b]$ 上有最大值 $M$ 和最小值 $m$，即 $m<=f(x)<=M$，故
$ m g(x)<=f(x)g(x)<=M g(x). \
integral_a^b m g(x) dif x<=integral_a^b f(x)g(x) dif x<=integral_a^b M g(x) dif x, \
m<=(integral_a^b f(x)g(x) dif x)/(integral_a^b g(x) dif x)<=M. $
由介值定理知，存在 $xi in [a,b]$，使
$ f(xi)=(integral_a^b f(x)g(x) dif x)/(integral_a^b g(x) dif x), $
即 $integral_a^b f(x)g(x) dif x=f(xi)integral_a^b g(x) dif x$.
]

#answer("九、")[
*分析* 满秩时齐次方程仅有零解；秩为 $m<n$ 时解空间维数为 $n-m$. 先讨论系数行列式何时非零，再在退化情形用初等变换求基础解系.


*解* 方程组的系数行列式
$ |A|=mat(delim:"|",a,b,b,dots,b;b,a,b,dots,b;b,b,a,dots,b;dots.v,dots.v,dots.v,,dots.v;b,b,b,dots,a)=[a+(n-1)b](a-b)^(n-1). $
（1）当 $a!=b$ 且 $a!=(1-n)b$ 时，方程组仅有零解.

（2）当 $a=b$ 时，对系数矩阵 $A$ 作行初等变换，有
$ A=mat(a,a,a,dots,a;a,a,a,dots,a;dots.v,dots.v,dots.v,,dots.v;a,a,a,dots,a)->mat(1,1,1,dots,1;0,0,0,dots,0;dots.v,dots.v,dots.v,,dots.v;0,0,0,dots,0). $
原方程组的同解方程组为 $x_1+x_2+dots+x_n=0$，其基础解系为
$ alpha_1=(-1,1,0,dots,0)^T, quad alpha_2=(-1,0,1,dots,0)^T,dots, \
alpha_(n-1)=(-1,0,0,dots,1)^T. $
方程组的全部解是 $x=c_1 alpha_1+c_2 alpha_2+dots+c_(n-1)alpha_(n-1)$（$c_1,c_2,dots,c_(n-1)$ 为任意常数）.

（3）当 $a=(1-n)b$ 时，对系数矩阵 $A$ 作行初等变换，有
$ A=mat((1-n)b,b,b,dots,b,b;b,(1-n)b,b,dots,b,b;b,b,(1-n)b,dots,b,b;dots.v,dots.v,dots.v,,dots.v,dots.v;b,b,b,dots,b,(1-n)b) \
->mat(1-n,1,1,dots,1,1;1,1-n,1,dots,1,1;1,1,1-n,dots,1,1;dots.v,dots.v,dots.v,,dots.v,dots.v;1,1,1,dots,1,1-n) \
->mat(1,0,0,dots,0,-1;0,1,0,dots,0,-1;0,0,1,dots,0,-1;dots.v,dots.v,dots.v,,dots.v,dots.v;0,0,0,dots,1,-1;0,0,0,dots,0,0). $
原方程组的同解方程组为
$ cases(x_1=x_n,x_2=x_n,dots quad dots,x_(n-1)=x_n). $
其基础解系为 $beta=(1,1,dots,1)^T$.

方程组的全部解是 $x=c beta$（$c$ 为任意常数）.
]

#answer("十、")[
*分析* 先由矩阵多项式确定特征值可能为0或−2，再结合三阶、秩为2确定重数. 第二问利用正定矩阵全部特征值为正的判别条件.


*解法1* （1）设 $lambda$ 为 $A$ 的一个特征值，对应的特征向量为 $alpha$，则
$ A alpha=lambda alpha, (alpha!=0), quad A^2 alpha=lambda^2 alpha. $
于是 $(A^2+2A)alpha=(lambda^2+2lambda)alpha$.

由条件 $A^2+2A=O$ 推知 $(lambda^2+2lambda)alpha=0$.

又由于 $alpha!=0$，故有 $lambda^2+2lambda=0$，解得 $lambda=-2,lambda=0$.

因为实对称矩阵 $A$ 必可对角化，且 $r(A)=2$，所以
$ A~mat(-2,,;,-2,;,,0)=Lambda. $
因此，矩阵 $A$ 的全部特征值为 $lambda_1=lambda_2=-2,lambda_3=0$.

（2）矩阵 $A+k E$ 仍为实对称矩阵，由（1）知，$A+k E$ 的全部特征值为 $-2+k,-2+k,k$.

于是，当 $k>2$ 时，矩阵 $A+k E$ 的全部特征值大于零. 因此，矩阵 $A+k E$ 为正定矩阵.

*解法2* （1）同解法1.

（2）实对称矩阵必可对角化，故存在可逆矩阵 $P$，使得 $P^(-1)A P=Lambda,A=P Lambda P^(-1)$.

于是
$ A+k E=P Lambda P^(-1)+k P P^(-1)=P(Lambda+k E)P^(-1), $
所以 $A+k E~Lambda+k E$.

而 $Lambda+k E=mat(k-2,,;,k-2,;,,k)$.

$A+k E$ 为正定矩阵，只需其顺序主子式均大于0，即 $k$ 需满足 $k-2>0,(k-2)^2>0,(k-2)^2 k>0$.

因此，当 $k>2$ 时，矩阵 $A+k E$ 为正定矩阵.
]

#answer("十一、")[
*分析* 先写出 $(X,Y)$ 的可能值及其对应的 $U$ 的取值范围，由均匀分布求联合概率，再求 $X+Y$ 和其平方的分布，计算方差.


*解* （1）随机向量 $(X,Y)$ 有四个可能值：$(-1,-1),(-1,1),(1,-1),(1,1)$.
$ P{X=-1,Y=-1}=P{U<=-1,U<=1}=1/4; \
P{X=-1,Y=1}=P{U<=-1,U>1}=0; \
P{X=1,Y=-1}=P{U>-1,U<=1}=1/2; \
P{X=1,Y=1}=P{U>-1,U>1}=1/4. $
于是，得 $X$ 和 $Y$ 的联合概率分布为
$ (X,Y)~mat((-1,-1),(-1,1),(1,-1),(1,1);1/4,0,1/2,1/4). $
（2）$X+Y$ 和 $(X+Y)^2$ 的概率分布相应为
$ X+Y~mat(-2,0,2;1/4,1/2,1/4), quad (X+Y)^2~mat(0,4;1/2,1/2). $
由此可见
$ E(X+Y)=-2/4+2/4=0; quad D(X+Y)=E(X+Y)^2=2. $
]

#answer("十二、")[
*分析* 由平均无故障时间确定指数分布参数；实际工作时间为 $Y=min(X,2)$，分区间求其分布函数.


*解* 设 $X$ 的分布参数为 $lambda$. 由于 $E X=1/lambda=5$，可见 $lambda=1/5$.

显然，$Y=min{X,2}$.

对于 $y<0,F(y)=0$；对于 $y>=2,F(y)=1$.

设 $0<=y<2$，有
$ F(y)=P{Y<=y}=P{min{X,2}<=y}=P{X<=y}=1-e^(-y/5). $
于是，$Y$ 的分布函数为
$ F(y)=cases(0 & y<0,1-e^(-y/5) & 0<=y<2,1 & y>=2). $
]

