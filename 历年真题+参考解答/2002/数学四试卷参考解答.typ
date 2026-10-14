#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2002, subject: "四", title: "2002年全国硕士研究生入学统一考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2002 数学四试卷参考解答

= 一、填空题

#answer("1（1）")[
*解* 利用重要极限得
$ lim_(n->infinity)ln[frac(n-2n a+1,n(1-2a))]^n=ln e^(1/(1-2a))=frac(1,1-2a). $
这里将底数改写为 $1+1/(n(1-2a))$，再将指数写成 $n(1-2a)/(1-2a)$.
]

#answer("1（2）")[
*解* 由原函数定义，$f(x)=(ln^2 x)'=2ln x/x$，所以
$ integral x f'(x)dif x=2integral frac(1-ln x,x)dif x=-2integral(1-ln x)dif(1-ln x)=-(1-ln x)^2+C=2ln x-ln^2 x+C. $
]

#answer("1（3）")[
*解* $ B=A^2-3A+2E=(A-2E)(A-E)=mat(-1,-1;2,1)mat(0,-1;2,2)=mat(-2,-1;2,0). $
故 $B^(-1)=mat(0,1/2;-1,-1)$.
]

#answer("1（4）")[
*分析* 向量组线性无关等价于以它们为列的方阵可逆，即对应齐次方程仅有零解.
*解* $ A=mat(a,b,0;0,c,a;c,0,b),quad det A=2a b c. $
由 $det A!=0$，得 $a b c!=0$.
]

#answer("1（5）")[
*解* 由联合分布可知
$ X~mat(0,1;.4,.6),quad Y~mat(-1,0,1;.15,.5,.35),quad X Y~mat(-1,0,1;.08,.72,.20). $
因此 $E X=.6,E Y=.2,E(X Y)=.12$，故
$ op("cov")(X,Y)=E(X Y)-E X dot E Y=.12-.6 times .2=0. $
两者方差均非零，相关系数为0.
]

= 二、选择题

#answer("2（1）")[
*分析* 题设没有给出闭区间上的连续性，故不能直接用零点定理、罗尔定理或拉格朗日中值定理排除端点不连续的情形. 但开区间内可导必连续，所以任意 $xi in(a,b)$ 都有 $lim_(x->xi)[f(x)-f(xi)]=0$，选 B.
]

#answer("2（2）")[
*分析* $f(t)+f(-t)$ 为偶函数，乘以 $t$ 后为奇函数；奇函数的原函数必为偶函数.
*解* 设 $F(x)=integral_0^x t[f(t)+f(-t)]dif t$，令 $u=-t$，得
$ F(-x)=integral_0^x(-u)[f(-u)+f(u)]dif(-u)=integral_0^x u[f(u)+f(-u)]dif u=F(x). $
所以选 A. 同样可证B、C、D为奇函数.
]

#answer("2（3）")[
*解* 利用 $A A^*=det(A)E,B B^*=det(B)E$，分块矩阵 $C$ 的行列式为 $det A dot det B$，且
$ mat(A,O;O,B)mat(det(B)A^*,O;O,det(A)B^*)=mat(det(B)A A^*,O;O,det(A)B B^*)=det(C)mat(E,O;O,E). $
相应代数余子式给出的伴随矩阵为 $C^*=mat(det(B)A^*,O;O,det(A)B^*)$，选 D.
]

#answer("2（4）")[
*解* 概率密度应非负且全轴积分为1；分布函数应单调不减，两端极限分别为0和1. A的全轴积分为2，C的正无穷极限为2，均不成立. 对B，取
$ f_1(x)=cases(1 & 0<x<=1,0 & #text[其他]),quad f_2(x)=cases(e^x & x<=0,0 & #text[其他]), $
则乘积恒为零，不能作为概率密度.
若 $X_((2))=max(X_1,X_2)$，由独立性，
$ F(x)=P\{X_1<=x,X_2<=x\}=F_1(x)F_2(x). $
故D确为某随机变量的分布函数，选 D.
]

#answer("2（5）")[
*分析* 列维—林德伯格中心极限定理要求随机变量独立同分布，且具有有限的数学期望 $mu$ 和方差 $sigma^2>0$；此时 $S_n$ 在 $n$ 充分大时近似服从 $N(n mu,n sigma^2)$.
四个选项中，服从同一指数分布既保证同分布，也保证有限的期望与方差，所以选 C. 仅有相同期望或相同方差不保证同分布；同一离散分布也未必有有限的期望和方差.
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
*分析* 二重积分的积分变量只是哑变量，故 $integral.double_D f(u,v)dif u dif v$ 是与 $(x,y)$ 无关的常数. 将已知等式在区域上再积分，先求出这一常数，再代回求函数.


*解* 设 $integral.double_D f(u,v) dif u dif v=A$，在已知等式两边求区域 $D$ 上的二重积分，有
$ integral.double_D f(x,y) dif x dif y=integral.double_D sqrt(1-x^2-y^2) dif x dif y-(8A)/pi integral.double_D dif x dif y, $
从而 $A=integral.double_D sqrt(1-x^2-y^2) dif x dif y-A$.
#import "@preview/cetz:0.5.2"
#cetz.canvas({
 import cetz.draw: *
 set-style(stroke:.65pt)
 line(..range(0,81).map(i=>{let a=(-90+i*180/80)*1deg;(1.1*calc.cos(a),1.1+1.1*calc.sin(a))}),close:true,fill:luma(90%))
 line((-.3,0),(1.55,0),mark:(end:">"));line((0,-.3),(0,2.6),mark:(end:">"));line((1.1,0),(1.1,1.1),stroke:(dash:"dashed"))
 content((1.55,0),$x$,anchor:"north");content((0,2.6),$y$,anchor:"east");content((0,0),$O$,anchor:"north-east")
 content((0,1.1),$1/2$,anchor:"east");content((0,2.2),[1],anchor:"east");content((1.1,0),$1/2$,anchor:"north");content((.5,1.1),$D$)
})
所以
$ 2A=integral_0^(pi/2) dif theta integral_0^(sin theta) sqrt(1-r^2)dot r dif r=1/3 integral_0^(pi/2)(1-cos^3 theta) dif theta=1/3 (pi/2-2/3). $
故 $A=1/6 (pi/2-2/3)$.

于是 $f(x,y)=sqrt(1-x^2-y^2)-4/(3pi)(pi/2-2/3)$.
]

#answer("七、")[
*分析* 先写出总收益 $R(p)=p Q(p)$，并使用需求弹性 $eta=-p Q'(p)/Q(p)$ 的定义；第二问利用总收益弹性的定义及第一问结果计算.


*解* （1）$R(p)=p Q(p)$. 上式两边对 $p$ 求导数，得
$ (dif R)/(dif p)=Q+p(dif Q)/(dif p)=Q(1+p/Q (dif Q)/(dif p))=Q(1-eta). $
（2）
$ (E R)/(E p)=p/R (dif R)/(dif p)=p/(p Q)Q(1-eta)=1-eta=1-(2p^2)/(192-p^2)=(192-3p^2)/(192-p^2). \
lr((E R)/(E p)|)_(p=6)=(192-3times 6^2)/(192-6^2)=7/13 approx 0.54. $
经济意义：当 $p=6$ 时，若价格上涨1%，则总收益将增加0.54%.
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
*分析* 先求第一个齐次方程的基础解系，再将第二个方程的通解代入第一个方程；也可将两组基础解系的线性组合相等转化成关于组合系数的齐次方程.


*解法1* （1）对方程组（Ⅰ）的系数矩阵作行初等变换，有
$ A=mat(2,3,-1,0;1,2,1,-1)->mat(1,0,-5,3;0,1,3,-2). $
得方程组（Ⅰ）的同解方程组
$ cases(x_1=5x_3-3x_4,x_2=-3x_3+2x_4). $
由此可得方程组（Ⅰ）的一个基础解系为
$ beta_1=(5,-3,1,0)^T,beta_2=(-3,2,0,1)^T. $
（2）由题设条件，方程组（Ⅱ）的全部解为
$ mat(x_1;x_2;x_3;x_4)=k_1 alpha_1+k_2 alpha_2=mat(2k_1-k_2;-k_1+2k_2;(a+2)k_1+4k_2;k_1+(a+8)k_2) quad #text[①] $
（$k_1,k_2$ 为任意常数）.

将上式代入方程组（Ⅰ），得
$ cases((a+1)k_1=0,(a+1)k_1-(a+1)k_2=0). quad #text[②] $
要使方程组（Ⅰ）与（Ⅱ）有非零公共解，只需关于 $k_1,k_2$ 的方程组②有非零解. 因为
$ mat(delim:"|",a+1,0;a+1,-(a+1))=-(a+1)^2, $
所以，当 $a!=-1$ 时，方程组（Ⅰ）与（Ⅱ）无非零公共解.

当 $a=-1$ 时，方程组②有非零解，且 $k_1,k_2$ 为不全为零的任意常数. 此时，由①可得方程组（Ⅰ）与（Ⅱ）的全部非零公共解为
$ mat(x_1;x_2;x_3;x_4)=k_1 mat(2;-1;1;1)+k_2 mat(-1;2;4;7) $
（$k_1,k_2$ 为不全为零的任意常数）.

*解法2* （1）对方程组（Ⅰ）的系数矩阵作行初等变换，有
$ A=mat(2,3,-1,0;1,2,1,-1)->mat(-2,-3,1,0;-3,-5,0,1). $
得方程组（Ⅰ）的同解方程组 $cases(x_3=2x_1+3x_2,x_4=3x_1+5x_2)$.

由此可得方程组（Ⅰ）的一个基础解系为
$ beta_1=(1,0,2,3)^T,beta_2=(0,1,3,5)^T. $
（2）设方程组（Ⅰ）与（Ⅱ）的公共解为 $eta$，则有数 $k_1,k_2,k_3,k_4$，使得
$ eta=k_1 beta_1+k_2 beta_2=k_3 alpha_1+k_4 alpha_2. $
由此得线性方程组
$ #text[（Ⅲ）] quad cases(-k_1+2k_3-k_4=0,-k_2-k_3+2k_4=0,-2k_1-3k_2+(a+2)k_3+4k_4=0,-3k_1-5k_2+k_3+(a+8)k_4=0). $
对方程组（Ⅲ）的系数矩阵作行初等变换，有
$ mat(-1,0,2,-1;0,-1,-1,2;-2,-3,a+2,4;-3,-5,1,a+8)->mat(1,0,-2,1;0,1,1,-2;0,0,a+1,0;0,0,0,a+1). $
由此可知，当 $a!=-1$ 时，方程组（Ⅲ）仅有零解，故方程组（Ⅰ）与（Ⅱ）无非零公共解.

当 $a=-1$ 时，方程组（Ⅲ）的同解方程组为 $cases(k_1=2k_3-k_4,k_2=-k_3+2k_4)$.

令 $k_3=c_1,k_4=c_2$，得方程组（Ⅰ）与（Ⅱ）的非零公共解为
$ eta=c_1 mat(2;-1;1;1)+c_2 mat(-1;2;4;7) $
（$c_1,c_2$ 为不全为零的任意常数）.
]

#answer("十、")[
*分析* 求特征值及各特征空间的基，将独立特征向量列成可逆矩阵实现相似对角化，再用行列式的乘积性质计算 $det(A-E)$.


*解* 矩阵 $A$ 的特征多项式
$ |lambda E-A|=mat(delim:"|",lambda-a,-1,-1;-1,lambda-a,1;-1,1,lambda-a)=(lambda-a-1)^2(lambda-a+2). $
由此得矩阵 $A$ 的特征值 $lambda_1=lambda_2=a+1,lambda_3=a-2$.

对于特征值 $lambda_1=lambda_2=a+1$，可得对应的两个线性无关的特征向量
$ alpha_1=(1,1,0)^T,quad alpha_2=(1,0,1)^T. $
对于特征值 $lambda_3=a-2$，可得对应的特征向量 $alpha_3=(-1,1,1)^T$.

令矩阵
$ P=(alpha_1,alpha_2,alpha_3)=mat(1,1,-1;1,0,1;0,1,1), quad Lambda=mat(a+1,,;,a+1,;,,a-2), $
则 $P^(-1)A P=Lambda=mat(a+1,,;,a+1,;,,a-2)$.
$ |A-E|&=|P Lambda P^(-1)-P P^(-1)|=|P|dot |Lambda-E|dot |P^(-1)| \
&=mat(delim:"|",a,0,0;0,a,0;0,0,a-3)=a^2(a-3). $
]

#answer("十一、")[
*分析* 利用条件概率与事件独立的定义，分别证明必要性和充分性. $0<P(A)<1$ 保证两个条件概率均有意义.


*证* 由于 $A$ 的概率不等于0和1，知题中两个条件概率都存在.

（1）必要性. 由事件 $A$ 与 $B$ 独立，知事件 $overline(A)$ 与 $B$ 也独立，因此 $P(B|A)=P(B),P(B|overline(A))=P(B)$，从而 $P(B|A)=P(B|overline(A))$.

（2）充分性. 由 $P(B|A)=P(B|overline(A))$，可见
$ (P(A B))/(P(A))=(P(overline(A)B))/(P(overline(A)))=(P(B)-P(A B))/(1-P(A)), \
P(A B)[1-P(A)]=P(A)P(B)-P(A)P(A B), \
P(A B)=P(A)P(B), $
因此 $A$ 和 $B$ 独立.
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

