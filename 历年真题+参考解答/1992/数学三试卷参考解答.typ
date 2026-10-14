#import "../template.typ": exam, answer
#show: exam.with(year:1992,subject:"三",title:"1992年全国硕士研究生入学统一考试",solutions:true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 1992 数学三试卷参考解答

= 一、填空题

#answer("（1）")[
由 $Q=100-5P$ 得 $Q'(P)=-5$，需求弹性为
$ epsilon=P frac(Q'(P),Q(P))=-frac(5P,100-5P). $
令 $|epsilon|=|frac(5P,100-5P)|>1$，解得 $P>20$ 或 $10<P<20$. 又由 $Q(P)=0$ 得最高价格 $P=20$，故价格范围为 $(10,20]$.
]

#answer("（2）")[
分析：级数为缺项级数，可用比值判别法.
$x=2$ 时显然收敛；当 $x!=2$ 时，
$ lim_(n->infinity)|frac(u_(n+1)(x),u_n(x))|=lim_(n->infinity)frac(n,4(n+1))(x-2)^2=frac(1,4)(x-2)^2<1. $
解得 $0<x<4$，即级数在 $(0,4)$ 内收敛. 当 $x=0$ 或 $x=4$ 时，均得调和级数 $sum_(n=1)^infinity frac(1,n)$，发散. 故收敛域为 $(0,4)$.
]

#answer("（3）")[
积分区域为 $D:0<=y<=1,sqrt(y)<=x<=sqrt(2-y^2)$. 将 $D$ 分为
$ D_1:0<=x<=1,0<=y<=x^2; quad D_2:1<=x<=sqrt(2),0<=y<=sqrt(2-x^2). $
#align(center)[#image("1992-数学三-交换积分次序.svg",width:45%)]
于是
$ integral_0^1 dif y integral_(sqrt(y))^(sqrt(2-y^2)) f(x,y)dif x=integral_0^1 dif x integral_0^(x^2) f(x,y)dif y+integral_1^(sqrt(2))dif x integral_0^(sqrt(2-x^2))f(x,y)dif y. $
]

#answer("（4）")[
解法一：将 $C$ 中 $B$ 所在的 $n$ 列记为 $beta_1,dots,beta_n$，$A$ 所在的 $m$ 列记为 $alpha_1,dots,alpha_m$，则
$ C=(beta_1,dots,beta_n,alpha_1,dots,alpha_m). $
交换两列共 $m n$ 次，可将其化为分块对角矩阵 $mat(A,O;O,B)$，其行列式为 $|A||B|=a b$. 所以
$ |C|=(-1)^(m n)a b. $
解法二：$C$ 的 $n$ 阶子式 $|B|$ 的代数余子式为
$ (-1)^((m+1)+(m+2)+dots+(m+n)+1+2+dots+n)|A|=(-1)^(m n)|A|. $
由拉普拉斯展开定理，得 $|C|=|B|(-1)^(m n)|A|=(-1)^(m n)a b$.
注：解法一利用交换两列行列式变号，解法二利用拉普拉斯展开定理.
]

#answer("（5）")[
将七个字母的一种排列作为基本事件，全部基本事件为 $7!$ 个，有利基本事件为 $1times 2times 1times 2times 1times 1times 1=4$ 个. 故所求概率为
$ frac(4,7!)=frac(1,1260). $
]

= 二、选择题

#answer("（1）")[
解法一：
$ lim_(x->a)F(x)=a^2 lim_(x->a)frac(integral_a^x f(t)dif t,x-a)=a^2 lim_(x->a)f(x)=a^2 f(a). $
解法二：举特例，令 $f(x)=3$，则
$ F(x)=frac(x^2,x-a)integral_a^x 3dif t=3x^2, quad lim_(x->a)F(x)=3a^2. $
A、C、D 均不正确，选 B.
解法三：利用积分中值定理，
$ lim_(x->a)F(x)=a^2 lim_(x->a)frac((x-a)f(xi),x-a)=a^2 lim_(x->a)f(xi)=a^2 f(a), $
其中 $xi$ 介于 $a$ 与 $x$ 之间.
]

#answer("（2）")[
分析：无穷小阶的比较实质是求极限，可使用等价无穷小代换. 当 $x->0$ 时，
$ 1-cos x~frac(1,2)x^2, quad sqrt(1-x^2)-1~-frac(1,2)x^2. $
故 A、B、C 都是同阶无穷小，应选 D. 事实上，
$ lim_(x->0)frac(x-tan x,x^2)=lim_(x->0)frac(1-sec^2 x,2x)=lim_(x->0)frac(-tan^2 x,2x)=lim_(x->0)(-frac(tan x,2))frac(tan x,x)=0. $
所以 $x-tan x$ 是比 $x^2$ 高阶的无穷小.
]

#answer("（3）")[
由解的判定定理，$A x=0$ 仅有零解当且仅当 $r(A)=n$，即 $A$ 的 $n$ 个列向量线性无关，故选 A.
注：$A$ 为 $m times n$ 矩阵，未知量个数为 $n$. 行秩与列秩相等，但行向量组与列向量组的线性相关性可不同.
]

#answer("（4）")[
解法一：由 $C supset A B$ 得
$ P(C)>=P(A B)=P(A)+P(B)-P(A union B)>=P(A)+P(B)-1. $
故选 B.
解法二：取 $A=B=emptyset,C=Omega$，显然 $A B subset C$. 代入四选项，分别得 $1<=-1$、$1>=-1$、$1=0$、$1=0$，只有 B 正确.
]

#answer("（5）")[
选 C，理由如下：
① $S^2$ 是 $sigma^2$ 的无偏估计，但 $S$ 不是 $sigma$ 的无偏估计，排除 A.
② 若总体为正态分布 $N(mu,sigma^2)$，则 $frac(n-1,n)S^2$ 是 $sigma^2$ 的最大似然估计，即 $sqrt(frac(n-1,n))S$ 是 $sigma$ 的最大似然估计，排除 B.
③ 若总体为正态分布，$overline(X)$ 与 $S^2$ 独立；一般总体不能保证独立，排除 D.
$S^2$ 是 $sigma^2$ 的相合估计，所以 $S$ 是 $sigma$ 的相合估计.
]

= 解答题

#answer("三、")[
分析：若函数在某点不连续，而极限存在，则应将该点函数值改为此极限值.
先求极限：
$ lim_(x->1)f(x)&=lim_(x->1)frac(ln cos(x-1),1-sin(pi x/2)) \
&=lim_(x->1)frac(-sin(x-1)/cos(x-1),-(pi/2)cos(pi x/2)) \
&=frac(2,pi)lim_(x->1)frac(tan(x-1),cos(pi x/2)) \
&=frac(2,pi)lim_(x->1)frac(sec^2(x-1),-(pi/2)sin(pi x/2))=-frac(4,pi^2). $
此极限不等于 $f(1)=1$，故不连续. 若令 $f(1)=-4/pi^2$，函数即在 $x=1$ 处连续.
注：本题关键在求极限，也可变换变量后使用等价无穷小代换.
]

#answer("四、")[
解法一：
$ I&=-integral op("arccot")(e^x)dif e^(-x)=-e^(-x)op("arccot")(e^x)-integral frac(1,1+e^(2x))dif x \
&=-e^(-x)op("arccot")(e^x)-integral (1-frac(e^(2x),1+e^(2x)))dif x \
&=-e^(-x)op("arccot")(e^x)-x+frac(1,2)ln(1+e^(2x))+C. $
解法二：令 $t=e^x$，则
$ I&=integral frac(op("arccot")t,t^2)dif t=-integral op("arccot")t dif (1/t) \
&=-frac(op("arccot")t,t)-integral frac(1,t(1+t^2))dif t \
&=-frac(op("arccot")t,t)-integral frac(1,t)dif t+integral frac(t,1+t^2)dif t \
&=-e^(-x)op("arccot")(e^x)-x+frac(1,2)ln(1+e^(2x))+C. $
]

#answer("五、")[
利用复合函数求偏导公式. 记 $u=x,v=x/y$，则
$ frac(partial z,partial x)=y cos(x y)+phi_u+frac(1,y)phi_v. $
因此
$ frac(partial^2 z,partial x partial y)&=cos(x y)-x y sin(x y)-frac(x,y^2)phi_(u v)-frac(1,y^2)phi_v+frac(1,y)(-frac(x,y^2))phi_(v v) \
&=cos(x y)-x y sin(x y)-frac(x,y^2)phi_(u v)-frac(1,y^2)phi_v-frac(x,y^3)phi_(v v). $
]

#answer("六、")[
两端求导，得 $f'(x)+2f(x)=2x$. 通解为
$ f(x)=e^(-2x)(integral 2x e^(2x)dif x+C)=C e^(-2x)+x-frac(1,2). $
将 $x=0$ 代入原方程，得 $f(0)=0$，所以 $C=1/2$. 所求函数为
$ f(x)=frac(1,2)e^(-2x)+x-frac(1,2). $
注：未知函数出现在积分号内的方程称为积分方程. 一般先令 $x$ 取适当值确定初始条件，再利用变上限积分求导，将问题化为微分方程初值问题.
]

#answer("七、")[
证明一：令 $f(x)=arctan x-frac(1,2)arccos(frac(2x,1+x^2))-pi/4$，则对于 $x>1$，
$ f'(x)=frac(1,1+x^2)+frac(2,2)frac((1+x^2)(1-x^2),(x^2-1)(1+x^2)^2)=0. $
又 $f$ 在 $[1,+infinity)$ 连续，所以它在此区间为常数，从而 $f(x)=f(1)=0$，即结论成立.
证明二：$f$ 在 $[1,x]$ 连续，在 $(1,x)$ 可导，由拉格朗日中值定理存在 $xi in (1,x)$，使
$ f(x)-f(1)=f'(xi)(x-1)=0. $
因为 $f(1)=0$，所以 $f(x)=0$，得证.
]

#answer("八、")[
分析：先求旋转体体积及其极限；第（2）问建立切线与坐标轴所围面积关于切点横坐标的函数，再求极值.
（1）
$ V(xi)=pi integral_0^xi y^2 dif x=pi integral_0^xi e^(-2x)dif x=frac(pi,2)(1-e^(-2xi)), quad lim_(xi->+infinity)V(xi)=frac(pi,2). $
由 $V(a)=pi/4$，得 $a=frac(1,2)ln 2$.
（2）设切点为 $(a,e^(-a))$，切线方程为 $y-e^(-a)=-e^(-a)(x-a)$. 令 $x=0$，得 $y=(1+a)e^(-a)$；令 $y=0$，得 $x=1+a$. 所围面积为
$ S=frac(1,2)(1+a)^2 e^(-a), quad S'=(1+a)e^(-a)-frac(1,2)(1+a)^2 e^(-a)=frac(1,2)(1-a^2)e^(-a). $
令 $S'=0$，得 $a=1$（$a=-1$ 舍去）. 当 $a<1$ 时 $S'>0$，当 $a>1$ 时 $S'<0$，所以切点为 $(1,e^(-1))$ 时面积最大，最大面积为 $2e^(-1)$.
]

#answer("九、")[
分析：相似矩阵具有相同的特征多项式.
（1）由 $A~B$，得
$ (lambda+2)[lambda^2-(x+1)lambda+(x-2)]=(lambda+1)(lambda-2)(lambda-y). $
令 $lambda=0$，得 $y=x-2$；令 $lambda=1$，得 $y=-2$，所以 $x=0$.
（2）此时特征值为 $lambda_1=-1,lambda_2=2,lambda_3=-2$.
对 $lambda_1=-1$，将 $lambda_1 E-A$ 化为阶梯形：
$ mat(1,0,0;-2,-1,-2;-3,-1,-2) arrow.r mat(1,0,0;0,1,2;0,0,0), $
得特征向量 $xi_1=(0,2,-1)^T$.
对 $lambda_2=2$：
$ mat(4,0,0;-2,2,-2;-3,-1,1) arrow.r mat(1,0,0;0,1,-1;0,0,0), $
得 $xi_2=(0,1,1)^T$.
对 $lambda_3=-2$：
$ mat(0,0,0;-2,-2,-2;-3,-1,-3) arrow.r mat(1,1,1;0,1,0;0,0,0), $
得 $xi_3=(1,0,-1)^T$. 所以可逆矩阵
$ P=(xi_1,xi_2,xi_3)=mat(0,0,1;2,1,0;-1,1,-1) $
满足 $P^(-1)A P=B$.
注：相似矩阵具有相同的特征多项式、特征值.
]

#answer("十、")[
（1）因 $B!=O$，其中至少有一个非零列向量. 依题设，方程组有非零解，所以
$ |A|=mat(delim:"|",1,2,-2;2,-1,lambda;3,1,-1)=0. $
由此得 $lambda=1$.
（2）$B$ 的每个列向量都是原方程组的解，故 $A B=O$. 假设 $|B|!=0$，则 $B$ 可逆，两边右乘 $B^(-1)$，得 $A=O$，矛盾. 所以 $|B|=0$.
注：证明矩阵不可逆常用反证法. 要熟悉 $A B=O$ 当且仅当 $B$ 的列向量均为 $A x=0$ 的解，并意识到 $r(A)+r(B)<=n$.
]

#answer("十一、")[
解法一：$A,B$ 正定，故对称，从而 $C^T=C$. 设 $Z^T=(X^T,Y^T)$ 为 $m+n$ 维行向量，$X,Y$ 分别为 $m,n$ 维列向量. 若 $Z!=0$，则 $X,Y$ 不同时为零，不妨设 $X!=0$，于是 $X^T A X>0$，$Y^T B Y>=0$. 所以
$ Z^T C Z=X^T A X+Y^T B Y>0, $
故 $C$ 正定.
解法二：设 $A,B$ 的特征值分别为 $lambda_1,dots,lambda_m$ 与 $mu_1,dots,mu_n$，均大于零. 显然 $C$ 实对称，且
$ |lambda E-C|=|lambda E_m-A||lambda E_n-B|. $
故 $C$ 的全部特征值为上述两组正数，所以 $C$ 正定.
解法三：因 $A,B$ 正定，存在可逆矩阵 $C_1,C_2$，使 $C_1^T A C_1=E_m,C_2^T B C_2=E_n$. 令 $T=mat(C_1,O;O,C_2)$，则
$ T^T C T=mat(C_1^T A C_1,O;O,C_2^T B C_2)=mat(E_m,O;O,E_n)=E. $
又 $|T|=|C_1||C_2|!=0$，所以 $C$ 与单位阵合同，故正定.
注：抽象矩阵的正定性常用定义或特征值判定，也可用与单位矩阵合同判定；证明前应先说明实对称.
]

#answer("十二、")[
因为 $X~N(0,10^2)$，每次测量误差绝对值大于 $19.6$ 的概率为
$ p=P{|X|>19.6}=P{|X/10|>1.96}=2-2Phi(1.96)=0.05. $
设 $Y$ 为该事件出现次数，则 $Y~B(100,0.05)$，所以
$ alpha&=P{Y>=3}=1-P{Y=0}-P{Y=1}-P{Y=2} \
&=1-0.95^100-100times 0.05times 0.95^99-frac(100times 99,2)0.05^2 times 0.95^98. $
由泊松定理，$Y$ 近似服从参数 $lambda=n p=100times 0.05=5$ 的泊松分布，故
$ alpha&approx 1-e^(-lambda)-lambda e^(-lambda)-frac(lambda^2,2)e^(-lambda) \
&=1-e^(-lambda)(1+lambda+lambda^2/2)=1-0.007(1+5+12.5)approx 0.87. $
]

#answer("十三、")[
解法一：设 $A_i$ 表示第 $i$ 部件需要调整，则概率依次为 $0.1,0.2,0.3$. $X$ 可取 $0,1,2,3$，由独立性，
$ P{X=0}&=0.9times 0.8times 0.7=0.504, \
P{X=1}&=0.1times 0.8times 0.7+0.9times 0.2times 0.7+0.9times 0.8times 0.3=0.398, \
P{X=2}&=0.1times 0.2times 0.7+0.1times 0.8times 0.3+0.9times 0.2times 0.3=0.092, \
P{X=3}&=0.1times 0.2times 0.3=0.006. $
于是
$ E X=0.398+2times 0.092+3times 0.006=0.6, $
$ D X=0.398+4times 0.092+9times 0.006-0.6^2=0.46. $
解法二：令 $X_i=cases(1 & "第" i "部件需要调整",0 & "否则")$，则 $X=X_1+X_2+X_3$，且三者相互独立、各服从 0—1 分布，故
$ E X_i=p_i, quad D X_i=p_i(1-p_i). $
所以 $E X=0.1+0.2+0.3=0.6$，$D X=0.09+0.16+0.21=0.46$.
注：先求分布再求期望、方差容易想到；分解随机变量并利用数字特征的性质计算比较简单.
]

#block(breakable:false)[
#answer("十四、")[
分析：用边缘密度公式求 $f_X(x)$，对 $y$ 积分应注意 $y>x$. 求概率的关键是根据密度的非零区域与 $x+y<=1$ 正确确定积分区域.
（1）$x>0$ 时，$f_X(x)=integral_x^(+infinity)e^(-y)dif y=e^(-x)$；$x<=0$ 时为零. 故
$ f_X(x)=cases(e^(-x) & x>0,0 & x<=0). $
（2）
#align(center)[#image("1992-数学三-联合密度积分区域.svg",width:40%)]
$ P{X+Y<=1}&=integral_0^(1/2)dif x integral_x^(1-x)e^(-y)dif y \
&=-integral_0^(1/2)[e^(-(1-x))-e^(-x)]dif x=1+e^(-1)-2e^(-1/2). $
]
]
