#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2001, subject: "三", title: "2001年全国硕士研究生入学统一考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2001 数学三试卷参考解答

= 一、填空题

#answer("1（1）")[
*分析* 当产出量固定为 $Q=1$ 时，资本投入量是劳动投入量的函数. 对 $A L^alpha K^beta=1$ 两边取对数，再对 $L$ 求导，得
$ alpha/L+beta/K frac(dif K,dif L)=0. $
因此 $K$ 关于 $L$ 的弹性为 $frac(L,K)frac(dif K,dif L)=-alpha/beta$.
]

#answer("1（2）")[
*分析* 第 $t$ 年比上一年增加20%后的工资总额为 $1.2W_(t-1)$，再追加2百万元，故差分方程为 $W_t=1.2W_(t-1)+2$.
]

#answer("1（3）")[
*分析* 由秩 $(A)=3$ 知 $det A=0$，而
$ det A=(k-1)^3(k+3). $
故 $k=1$ 或 $k=-3$. 当 $k=1$ 时，矩阵各行相同，秩为1，不符合题意；当 $k=-3$ 时秩为3. 所以填 $-3$.
]

#answer("1（4）")[
*分析* 令 $Z=X+Y$，则 $E Z=0$，且
$ D Z=D X+D Y+2rho sqrt(D X)sqrt(D Y)=1+4+2(-0.5)dot 1 dot 2=3. $
由切比雪夫不等式，
$ P{|X+Y|>=6}=P{|Z-E Z|>=6}<=frac(D Z,6^2)=frac(1,12). $
]

#answer("1（5）")[
*分析* 由正态总体简单随机样本构成的平方和，按总体方差标准化后服从卡方分布. 令
$ U=frac(1,4)sum_(i=1)^10 X_i^2,quad V=frac(1,4)sum_(i=11)^15 X_i^2. $
则 $U tilde chi^2(10)$，$V tilde chi^2(5)$，且二者相互独立. 因为
$ Y=frac(U/10,V/5), $
故 $Y$ 服从 $F$ 分布，参数为 $(10,5)$.
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
*分析* 该齐次方程组有 $n+1$ 个未知量，而系数矩阵的秩等于秩 $(A)<=n$，所以系数矩阵的秩小于未知量个数，必有非零解，选 D.
条件并不能保证 $A$ 必可逆或必不可逆，因此不能断言 $A X=alpha$ 必有唯一解或必有无穷多解.
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
*分析* 先把面积表示成 $p,q$ 的函数，再利用相切条件建立参数关系，将其化为一元函数求最大值.


*解* 依题意知，抛物线如图所示，求得它与 $x$ 轴交点的横坐标为：$x_1=0$，$x_2=-q/p$.
#import "@preview/cetz:0.5.2"
#cetz.canvas({
 import cetz.draw: *
 let pts=range(0,76).map(i=>{let x=i*3.75/75;(x*.6,(-.8*x*x+3*x)*.6)})
 line(..pts,close:true,fill:rgb("eeeeee"))
 line((-.7,0),(3.65,0),mark:(end:">"));line((0,-.6),(0,3.55),mark:(end:">"))
 line((-.1,3.1),(3.4,-.4));line(..range(0,86).map(i=>{let x=-.12+i*4.05/85;(x*.6,(-.8*x*x+3*x)*.6)}))
 content((3.7,-.1),$x$);content((-.15,3.6),$y$);content((-.16,-.15),$O$);content((-.18,3),$5$);content((3,.18),$5$);content((2.3,-.45),$-q/p$);content((1.1,.7),$S$);content((1.5,2.65),$x+y=5$)
})
面积
$ S=integral_0^(-q/p) (p x^2+q x) dif x=lr((p/3 x^3+q/2 x^2)|)_0^(-q/p)=q^3/(6p^2). quad (*) $
因直线 $x+y=5$ 与抛物线 $y=p x^2+q x$ 相切，故它们有唯一公共点. 由方程组
$ cases(x+y=5,y=p x^2+q x), $
得 $p x^2+(q+1)x-5=0$，其判别式必等于零，即
$ Delta=(q+1)^2+20p=0, quad p=-1/20 (1+q)^2. $
将 $p$ 代入（\*）式得 $S(q)=(200q^3)/(3(q+1)^4)$.

令 $S'(q)=(200q^2(3-q))/(3(q+1)^5)=0$，得驻点 $q=3$. 当 $0<q<3$ 时，$S'(q)>0$；当 $q>3$ 时，$S'(q)<0$. 于是，当 $q=3$ 时，$S(q)$ 取极大值，即最大值.

此时，$p=-4/5$，从而最大值 $S=225/32$.
]

#answer("七、")[
*分析* 用积分中值定理把积分等式化为函数值等式，再构造辅助函数，应用罗尔定理.


*证* 由 $f(1)=k integral_0^(1/k) x e^(1-x) f(x) dif x$ 及积分中值定理，知至少存在一点 $xi_1 in [0,1/k] subset [0,1)$，使得
$ f(1)=k integral_0^(1/k) x e^(1-x) f(x) dif x=xi_1 e^(1-xi_1) f(xi_1). $
在 $[xi_1,1]$ 上，令 $phi(x)=x e^(1-x) f(x)$. 那么，$phi(x)$ 在 $[xi_1,1]$ 上连续，在 $(xi_1,1)$ 内可导，且 $phi(xi_1)=f(1)=phi(1)$.

由罗尔定理知，至少存在一点 $xi in (xi_1,1) subset (0,1)$，使得
$ phi'(xi)=e^(1-xi) [f(xi)-xi f(xi)+xi f'(xi)]=0, $
即 $f'(xi)=(1-xi^(-1))f(xi)$.
]

#answer("八、")[
*分析* 先解一阶线性微分方程求出各项，再利用幂级数逐项求导、积分求和. 还应讨论收敛区间的端点.


*解* 由已知条件可见，$f'_n (x)-f_n (x)=x^(n-1)e^x$，其通解为
$ f_n (x)=e^(integral dif x)(integral x^(n-1)e^x e^(-integral dif x) dif x+C)=e^x (x^n/n+C). $
由条件 $f_n (1)=e/n$，得 $C=0$，故 $f_n (x)=(x^n e^x)/n$.

从而
$ sum_(n=1)^infinity f_n (x)=sum_(n=1)^infinity (x^n e^x)/n=e^x sum_(n=1)^infinity x^n/n. $
记 $s(x)=sum_(n=1)^infinity x^n/n$，其收敛域为 $[-1,1)$，当 $x in (-1,1)$ 时，有
$ s'(x)=sum_(n=1)^infinity x^(n-1)=1/(1-x), $
故 $s(x)=integral_0^x 1/(1-t) dif t=-ln(1-x)$.

当 $x=-1$ 时，$sum_(n=1)^infinity f_n (x)=-e^(-1) ln 2$.

于是，当 $-1<=x<1$ 时，有
$ sum_(n=1)^infinity f_n (x)=-e^x ln(1-x). $
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
*分析* 先正确写出二次型的矩阵，并验证 $A^(-1)$ 是实对称矩阵. 第二问的关键是证明 $A$ 与 $A^(-1)$ 合同，因为合同矩阵对应的二次型具有相同规范形.


*解法1* （1）二次型 $f(x_1,x_2,dots,x_n)$ 的矩阵形式为
$ f(X)=(x_1,x_2,dots,x_n)1/|A| mat(A_11,A_21,dots,A_(n 1);A_12,A_22,dots,A_(n 2);dots.v,dots.v,,dots.v;A_(1 n),A_(2 n),dots,A_(n n))mat(x_1;x_2;dots.v;x_n). $
因秩 $(A)=n$，故 $A$ 可逆，且 $A^(-1)=1/|A| A^*$.

从而 $(A^(-1))^T=(A^T)^(-1)=A^(-1)$.

故 $A^(-1)$ 也是实对称矩阵，因此二次型 $f(X)$ 的矩阵为 $A^(-1)$.

（2）因为
$ (A^(-1))^T A A^(-1)=(A^T)^(-1)E=A^(-1), $
所以 $A$ 与 $A^(-1)$ 合同，于是 $g(X)=X^T A X$ 与 $f(X)$ 有相同的规范形.

*解法2* （1）同解法1.

（2）对二次型 $g(X)=X^T A X$ 作可逆线性变换 $X=A^(-1)Y$，其中 $Y=(y_1,y_2,dots,y_n)^T$，
$ g(X)=X^T A X &=(A^(-1)Y)^T A(A^(-1)Y) \
&=Y^T (A^(-1))^T A A^(-1)Y \
&=Y^T (A^T)^(-1)A A^(-1)Y \
&=Y^T A^(-1)Y. $
由此得知 $A$ 与 $A^(-1)$ 合同. 于是 $f(X)$ 与 $g(X)$ 必有相同的规范形.
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
*分析* 先写出正方形上的联合密度，再由分布函数定义求出 $U$ 的分布函数. 应合理划分 $u$ 的取值区间，最后求导得到概率密度.


*解* 由条件知 $X$ 和 $Y$ 的联合密度为
$ f(x,y)=cases(1/4 & #text[若] 1<=x<=3,1<=y<=3,0 & #text[其他]). $
#import "@preview/cetz:0.5.2"
#cetz.canvas({
 import cetz.draw: *
 line((1,1),(2.35,1),(3,1.65),(3,3),(1.65,3),(1,2.35),close:true,fill:rgb("eeeeee"))
 rect((1,1),(3,3));line((-.6,0),(4.2,0),mark:(end:">"));line((0,-.5),(0,3.7),mark:(end:">"))
 line((.75,2.1),(1.95,3.3));line((2.05,.7),(3.35,2))
 line((0,1),(1,1),stroke:(dash:"dashed"));line((0,3),(1,3),stroke:(dash:"dashed"));line((1,0),(1,1),stroke:(dash:"dashed"));line((3,0),(3,1),stroke:(dash:"dashed"))
 for v in (1,2,3) {content((v,-.2),[#v]);content((-.18,v),[#v])}
 content((-.17,-.17),$O$);content((4.25,-.12),$x$);content((-.12,3.8),$y$)
 content((2.7,3.42),$y-x=u$);content((4,1.9),$y-x=-u$);content((2,2.05),$|x-y|<=u$)
})
以 $F(u)=P{U<=u} (-infinity<u<infinity)$ 表示随机变量 $U$ 的分布函数. 显然，当 $u<=0$ 时，$F(u)=0$；当 $u>=2$ 时，$F(u)=1$.

设 $0<u<2$，则
$ F(u)&=integral.double_(|x-y|<=u) f(x,y) dif x dif y \
&=integral.double_(|x-y|<=u) 1/4 dif x dif y \
&=1/4 [4-(2-u)^2]=1-1/4 (2-u)^2. $
于是，随机变量的密度为
$ p(u)=cases(1/2 (2-u) & #text[若] 0<u<2,0 & #text[其他]). $
]

