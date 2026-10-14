#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2001, subject: "四", title: "2001年全国硕士研究生入学统一考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2001 数学四试卷参考解答

= 一、填空题

#answer("1（1）")[
*分析* 当产出量固定为 $Q=1$ 时，资本投入量是劳动投入量的函数. 对 $A L^alpha K^beta=1$ 两边取对数，再对 $L$ 求导，得
$ alpha/L+beta/K frac(dif K,dif L)=0. $
因此 $K$ 关于 $L$ 的弹性为 $frac(L,K)frac(dif K,dif L)=-alpha/beta$.
]

#answer("1（2）")[
*分析* $f$ 是一元函数，由给定条件先确定它的表达式，再求偏导数. 当 $y=0$ 时，$e^(-x)-f(x)=x^2$，故
$ f(x)=e^(-x)-x^2,quad f'(x)=-e^(-x)-2x. $
令 $u=x-2y$，则
$ frac(partial z,partial x)=-e^(-x)-f'(u)=-e^(-x)+e^(-u)+2u=2(x-2y)-e^(-x)+e^(2y-x). $
]

#answer("1（3）")[
*分析* 题目要求余子式而非代数余子式. 按第四行展开，相应替换元素为 $-1,1,-1,1$，于是所求和为
$ det mat(3,0,4,0;2,2,2,2;0,-7,0,0;-1,1,-1,1)=-28. $
]

#answer("1（4）")[
*分析* 由秩 $(A)=3$ 知 $det A=0$，而
$ det A=(k-1)^3(k+3). $
故 $k=1$ 或 $k=-3$. 当 $k=1$ 时，矩阵各行相同，秩为1，不符合题意；当 $k=-3$ 时秩为3. 所以填 $-3$.
]

#answer("1（5）")[
*分析* $E(X-Y)=2-2=0$，且
$ D(X-Y)=D X+D Y-2rho sqrt(D X)sqrt(D Y)=1+4-2dot 0.5dot 1dot 2=3. $
根据切比雪夫不等式，
$ P{|X-Y|>=6}=P{|X-Y-E(X-Y)|>=6}<=frac(D(X-Y),36)=frac(1,12). $
]

= 二、选择题

#answer("2（1）")[

*分析* 由 $lim_(x->a)frac(f'(x),x-a)=-1$ 及导数在 $a$ 处连续，得 $f'(a)=0$. 在 $a$ 的充分小邻域内，$f'(x)/(x-a)<0$，所以 $x<a$ 时 $f'(x)>0$，$x>a$ 时 $f'(x)<0$. 因此 $x=a$ 是极大值点，选 B.

]

#answer("2（2）")[

*分析* $f$ 在 $x=1$ 处不连续，但在 $[0,2]$ 上有界且可积. 变上限积分 $g(x)=integral_0^x f(u)dif u$ 在 $[0,2]$ 上连续，选 D. 不能把被积函数的间断误认为变上限积分的间断.

]

#answer("2（3）")[

*分析* 右乘 $P_2$ 交换第二、第三列，右乘 $P_1$ 交换第一、第四列，所以 $B=A P_2 P_1$. 又 $P_1^(-1)=P_1$，$P_2^(-1)=P_2$，故
$ B^(-1)=P_1^(-1)P_2^(-1)A^(-1)=P_1 P_2 A^(-1). $
选 C.

]

#answer("2（4）")[
*分析* $A union B=B$ 表示 $A subset.eq B$，而
$ A subset.eq B <=> overline(B)subset.eq overline(A) <=> A overline(B)=nothing. $
只有 $overline(A)B=nothing$ 与之不等价，所以选 D.
本题四个选项中，A、B、C相互等价，利用单项选择题只有一个正确选项也可排除这三项；原书指出，这种设置会给投机作答留下机会.
]

#answer("2（5）")[


*分析* 正面和反面的次数满足 $X+Y=n$，即 $Y=n-X$. 两个随机变量具有线性关系 $Y=a+b X$ 时，$b>0$ 对应相关系数1，$b<0$ 对应相关系数 $-1$，所以选 A.
也可按定义计算：
$ D Y=D(n-X)=D X,quad "Cov"(X,Y)="Cov"(X,n-X)=-D X, $
$ rho_(X Y)=frac("Cov"(X,Y),sqrt(D X)sqrt(D Y))=-1. $


]

= 解答题

#answer("三、")[
*分析* 这是复合函数求导问题. 先由两个方程分别求出隐函数的导数，再用多元复合函数求导公式.


*解*
$ (dif u)/(dif x)=(partial f)/(partial x)+(partial f)/(partial y)(dif y)/(dif x)+(partial f)/(partial z)(dif z)/(dif x). quad (*) $
由 $e^(x y)-x y=2$ 两边对 $x$ 求导，得
$ e^(x y)(y+x (dif y)/(dif x))-(y+x (dif y)/(dif x))=0, $
即 $(dif y)/(dif x)=-y/x$.

又由 $e^x=integral_0^(x-z) (sin t)/t dif t$ 两边对 $x$ 求导，得
$ e^x=(sin(x-z))/(x-z)dot (1-(dif z)/(dif x)), $
即 $(dif z)/(dif x)=1-(e^x (x-z))/(sin(x-z))$；将其代入（\*）式，得
$ (dif u)/(dif x)=(partial f)/(partial x)-y/x (partial f)/(partial y)+[1-(e^x (x-z))/(sin(x-z))](partial f)/(partial z). $
]

#answer("四、")[
*分析* 左边用重要极限求出，右边用拉格朗日中值定理化为导函数的极限，再比较两边.


*解* 由条件易见 $c != 0$.
$ lim_(x->infinity) ((x+c)/(x-c))^x=lim_(x->infinity) [(1+(2c)/(x-c))^((x-c)/(2c))]^((2c x)/(x-c))=e^(2c). $
由拉格朗日定理，有 $f(x)-f(x-1)=f'(xi)dot 1$，其中 $xi$ 介于 $x-1$ 与 $x$ 之间，那么
$ lim_(x->infinity) [f(x)-f(x-1)]=lim_(x->infinity) f'(xi)=e. $
于是，$e^(2c)=e$，故 $c=1/2$.
]

#answer("五、")[
*分析* 先画出积分区域，拆成两个二重积分，再按先对 $x$ 积分、后对 $y$ 积分的顺序计算. 第二项积分所得函数是奇函数，可利用对称区间简化.


*解* 积分区域 $D$ 如图.
#import "@preview/cetz:0.5.2"
#cetz.canvas({
 import cetz.draw: *
 line((-1,-1),(1,-1),(1,1),close:true,fill:rgb("eeeeee"))
 line((-1.6,0),(1.7,0),mark:(end:">"));line((0,-1.5),(0,1.6),mark:(end:">"))
 line((-1.3,-1.3),(1.35,1.35));content((1.55,1.35),$y=x$)
 content((1.8,0),$x$);content((0,1.75),$y$);content((-.12,.15),$O$)
 content((-.95,.15),$-1$);content((1.12,-.15),$1$);content((-.13,1),$1$);content((.17,-1.14),$-1$);content((.63,-.6),$D$)
})
$ integral.double_D y[1+x e^(1/2 (x^2+y^2))] dif x dif y=integral.double_D y dif x dif y+integral.double_D x y e^(1/2 (x^2+y^2)) dif x dif y, $
其中
$ integral.double_D y dif x dif y &= integral_(-1)^1 dif y integral_y^1 y dif x=integral_(-1)^1 y(1-y) dif y=-2/3; \
integral.double_D x y e^(1/2 (x^2+y^2)) dif x dif y &= integral_(-1)^1 y dif y integral_y^1 x e^(1/2 (x^2+y^2)) dif x \
&= integral_(-1)^1 y[e^(1/2 (1+y^2))-e^(y^2)] dif y=0. $
于是
$ integral.double_D y[1+x e^(1/2 (x^2+y^2))] dif x dif y=-2/3. $
]

#answer("六、")[
*分析* 抓住“销售价每下降10%，销售量可增加40%”建立变量关系. 设降价后售价为 $p$，增加销售量为 $x$，则下降的售价 $b-p$ 是原售价10%的 $(b-p)/(0.1b)$ 倍，销售量增加 $4(b-p)c/b$. 总销量为 $c+x$，总利润为 $(p-a)(c+x)$，从而可转化为一元函数最值问题.


*解* 设 $p$ 表示降价后的销售价，$x$ 为增加的销售量，$L(x)$ 为总利润，那么
$ x/(b-p)=(0.4c)/(0.1b), $
则 $p=b-b/(4c)x$，从而 $L(x)=(b-b/(4c)x-a)(c+x)$.

对 $x$ 求导，得 $L'(x)=-b/(2c)x+3/4 b-a$.

令 $L'(x)=0$，得唯一驻点 $x_0=((3b-4a)c)/(2b)$.

由问题的实际意义或 $L''(x_0)=-b/(2c)<0$ 可知，$x_0$ 为极大值点，也是最大值点，故定价为
$ p=b-(3/8 b-1/2 a)=5/8 b+1/2 a #text[（元）] $
时，得最大利润
$ L(x_0)=c/(16b)(5b-4a)^2 #text[（元）]. $
]

#answer("七、")[
*分析* 先用积分中值定理构造两个点处的函数值相等，再应用罗尔定理.


*证* 由积分中值定理，得
$ f(1)=e^(1-xi_1^2) f(xi_1), quad xi_1 in [0,1/3]. $
令 $F(x)=e^(1-x^2) f(x)$，则 $F(x)$ 在 $[xi_1,1]$ 上连续，在 $(xi_1,1)$ 内可导，且
$ F(1)=f(1)=e^(1-xi_1^2) f(xi_1)=F(xi_1). $
由罗尔定理，在 $(xi_1,1)$ 内至少有一点 $xi$，使得
$ F'(xi)=e^(1-xi^2) [f'(xi)-2xi f(xi)]=0. $
于是 $f'(xi)=2xi f(xi)$，$xi in (xi_1,1) subset (0,1)$.
]

#answer("八、")[
*分析* 等式两边先对 $x$ 求导，代入 $x=1$ 和 $f(1)=5/2$，化为关于 $t$ 的等式. 再对 $t$ 求导，将所求函数问题化为微分方程或定积分问题.


*解* 由题意可知，等式的每一项都是 $x$ 的可导函数. 于是等式两边对 $x$ 求导，得
$ t f(x t)=t f(x)+integral_1^t f(u) dif u. quad (1) $
在（1）式中，令 $x=1$，由 $f(1)=5/2$，得
$ t f(t)=5/2 t+integral_1^t f(u) dif u, quad (2) $
则 $f(t)$ 是 $(0,+infinity)$ 内的可导函数.（2）式两边对 $t$ 求导，得
$ f(t)+t f'(t)=5/2+f(t), $
即 $f'(t)=5/(2t)$.

上式两边求积分，得 $f(t)=5/2 ln t+c$.

由 $f(1)=5/2$，得 $c=5/2$. 故 $f(x)=5/2(ln x+1)$.
]

#answer("九、")[
*分析* 第一问可化增广矩阵为阶梯形，比较系数矩阵与增广矩阵的秩；也可先用行列式找出参数候选值，再检验是否有解. 第二问求特征值及单位正交特征向量，以这些向量为列构造正交矩阵.


*解法1* （1）对线性方程组 $A X=beta$ 的增广矩阵作行的初等变换，有
$ (A beta)=mat(augment:#3,1,1,a,1;1,a,1,1;a,1,1,-2) -> mat(augment:#3,1,1,a,1;0,a-1,1-a,0;0,0,(a-1)(a+2),a+2). $
因为方程组 $A X=beta$ 有解但不唯一，所以秩 $(A)=$ 秩 $(A beta)<3$，故 $a=-2$.

（2）由（1），有 $A=mat(1,1,-2;1,-2,1;-2,1,1)$.

$A$ 的特征多项式 $|lambda E-A|=lambda (lambda-3)(lambda+3)$，故 $A$ 的特征值为 $lambda_1=3,lambda_2=-3,lambda_3=0$. 对应的特征向量依次是
$ alpha_1=(1,0,-1)^T, quad alpha_2=(1,-2,1)^T, quad alpha_3=(1,1,1)^T. $
将 $alpha_1,alpha_2,alpha_3$ 单位化，得
$ beta_1=(1/sqrt(2),0,-1/sqrt(2))^T, quad beta_2=(1/sqrt(6),-2/sqrt(6),1/sqrt(6))^T, quad beta_3=(1/sqrt(3),1/sqrt(3),1/sqrt(3))^T. $
令
$ Q=mat(1/sqrt(2),1/sqrt(6),1/sqrt(3);0,-2/sqrt(6),1/sqrt(3);-1/sqrt(2),1/sqrt(6),1/sqrt(3)), $
则有 $Q^T A Q=mat(3,0,0;0,-3,0;0,0,0)$.

*解法2* （1）因为线性方程组 $A X=beta$ 有解但不唯一，所以
$ |A|=mat(delim:"|",1,1,a;1,a,1;a,1,1)=-(a-1)^2(a+2)=0. $
当 $a=1$ 时，秩 $(A)$ 不等于秩 $(A beta)$，此时方程组无解；当 $a=-2$ 时，秩 $(A)$ 等于秩 $(A beta)$，此时方程组的解存在但不唯一. 于是，$a=-2$.

（2）同解法1.
]

#answer("十、")[
*分析* $beta$ 是齐次方程组的非零解，所以与各系数行向量正交，即 $alpha_i^T beta=beta^T alpha_i=0$. 再按判定向量组线性无关的基本方法，证明所有线性组合系数为零.


*解* 设有一组数 $k_1,k_2,dots,k_r,k$，使得
$ k_1 alpha_1+k_2 alpha_2+dots+k_r alpha_r+k beta=0 quad (*) $
成立. 因为 $beta=(b_1,b_2,dots,b_n)^T$ 是线性方程组
$ cases(a_11 x_1+a_12 x_2+dots+a_(1 n)x_n=0,a_21 x_1+a_22 x_2+dots+a_(2 n)x_n=0,dots quad dots quad dots quad dots,a_(r 1)x_1+a_(r 2)x_2+dots+a_(r n)x_n=0) $
的解，且 $beta != 0$，故有 $alpha_i^T beta=0 (i=1,2,dots,r)$，即 $beta^T alpha_i=0 (i=1,2,dots,r)$，于是，由
$ k_1 beta^T alpha_1+k_2 beta^T alpha_2+dots+k_r beta^T alpha_r+k beta^T beta=0, $
得 $k beta^T beta=0$. 但 $beta^T beta != 0$，故 $k=0$.

从而（\*）式为 $k_1 alpha_1+k_2 alpha_2+dots+k_r alpha_r=0$. 由于向量组 $alpha_1,alpha_2,dots,alpha_r$ 线性无关，所以有 $k_1=k_2=dots=k_r=0$.

因此，向量组 $alpha_1,alpha_2,dots,alpha_r,beta$ 线性无关.
]

#answer("十一、")[
*分析* 中心极限定理针对独立同分布随机变量之和. 先根据题意构造总重量，再把概率要求转化为关于箱数的不等式.


*解* 设 $X_i (i=1,2,dots,n)$ 是装运的第 $i$ 箱的重量（单位：千克），$n$ 是所求箱数. 由条件可以把 $X_1,X_2,dots,X_n$ 视为独立同分布随机变量，而 $n$ 箱的总重量
$ T_n=X_1+X_2+dots+X_n $
是独立同分布随机变量之和.

由条件知 $E X_i=50,sqrt(D X_i)=5$；$E T_n=50n,sqrt(D T_n)=5sqrt(n)$（单位：千克）.

根据列维—林德伯格中心极限定理，$T_n$ 近似服从正态分布 $N(50n,25n)$.

箱数 $n$ 决定于条件
$ P{T_n<=5000} &= P{(T_n-50n)/(5sqrt(n))<=(5000-50n)/(5sqrt(n))} \
&approx Phi((1000-10n)/sqrt(n))>0.977=Phi(2). $
由此可见 $(1000-10n)/sqrt(n)>2$，从而 $n<98.0199$，即最多可以装98箱.
]

#answer("十二、")[
*分析* 先由题意写出联合密度，再求边缘密度和 $E X,D X,E Y,D Y$. 由对称性，只需计算其中一组. 利用联合密度求 $E X Y$，从而求协方差，再由 $D(X+Y)=D X+D Y+2op("cov")(X,Y)$ 求结果. 也可直接求 $U=X+Y$ 的密度，再求方差.


*解法1* 三角形区域为 $G={(x,y):0<=x<=1,0<=y<=1,x+y>=1}$；随机变量 $X$ 和 $Y$ 的联合密度为：
$ f(x,y)=cases(2 & #text[若] (x,y) in G,0 & #text[若] (x,y) in.not G). $
以 $f_1(x)$ 表示 $X$ 的概率密度，则当 $x<=0$ 或 $x>=1$ 时，$f_1(x)=0$；当 $0<x<1$ 时，有
$ f_1(x)=integral_(-infinity)^infinity f(x,y) dif y=integral_(1-x)^1 2dif y=2x. $
因此
$ E X=integral_0^1 2x^2 dif x=2/3; quad E X^2=integral_0^1 2x^3 dif x=1/2; \
D X=E X^2-(E X)^2=1/2-4/9=1/18. $
同理可得 $E Y=2/3$；$D Y=1/18$.

现在求 $X$ 和 $Y$ 的协方差.
$ E X Y=integral.double_G 2x y dif x dif y=2integral_0^1 x dif x integral_(1-x)^1 y dif y=5/12; \
op("cov")(X,Y)=E X Y-E X dot E Y=5/12-4/9=-1/36. $
于是
$ D U=D(X+Y)=D X+D Y+2op("cov")(X,Y)=1/18+1/18-2/36=1/18. $
*解法2* 三角形区域为 $G={(x,y):0<=x<=1,0<=y<=1,x+y>=1}$；随机变量 $X$ 和 $Y$ 的联合密度为：
$ f(x,y)=cases(2 & #text[若] (x,y) in G,0 & #text[若] (x,y) in.not G). $
以 $f(u)$ 表示 $U=X+Y$ 的概率密度. 当 $u<1$ 或 $u>2$ 时，显然 $f(u)=0$.

设 $1<=u<=2$，当 $0<=x<=1$ 且 $0<=u-x<=1$ 时，$f(x,u-x)=2$，否则 $f(x,u-x)=0$. 由随机变量之和的概率密度公式，有
$ f(u)=integral_(-infinity)^infinity f(x,u-x) dif x=integral_(u-1)^1 2dif x=2(2-u). $
因此
$ E(X+Y)=E U &= integral_(-infinity)^infinity u f(u) dif u=2integral_1^2 u(2-u) dif u=4/3; \
E(X+Y)^2=E U^2 &= integral_(-infinity)^infinity u^2 f(u) dif u=2integral_1^2 u^2(2-u) dif u=11/6; \
D U=D(X+Y) &= E(X+Y)^2-[E(X+Y)]^2 \
&=11/6-16/9=1/18. $
]

