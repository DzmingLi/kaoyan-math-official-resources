#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2011, subject: "一", title: "2011年全国硕士研究生入学统一考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2011 数学一试卷参考解答

= 一、选择题

#answer("1.")[
C. 【解】$x=3$ 是 $y$ 的三重零点，所以是 $y''$ 的单根，$y''$ 在其两侧变号，故 $(3,0)$ 是拐点. 其余三个点不是拐点. 注意二阶导数在一点为零并不足以判定该点是拐点，还须考察两侧凹凸性的变化.
]

#answer("2.")[
C. 【解】由 $a_n$ 单调减少且趋于零，交错级数 $sum_(n=1)^infinity(-1)^n a_n$ 收敛；由部分和无界，$sum_(n=1)^infinity a_n$ 发散. 因而幂级数在 $x=0$ 条件收敛，在 $x=2$ 发散，收敛半径为 $1$，收敛区间为 $0<=x<2$.
]

#answer("3.")[
A. 【解】由 $z=f(x)ln f(y)$，有
$ z'_x=f'(x)ln f(y), quad z'_y=f(x)frac(f'(y),f(y)). $
因为 $f'(0)=0$，故 $(0,0)$ 是驻点. 令
$ A=z''_(x x)(0,0)=f''(0)ln f(0), quad B=z''_(x y)(0,0)=0, quad C=z''_(y y)(0,0)=f''(0). $
当 $f(0)>1$ 且 $f''(0)>0$ 时，$B^2-A C=-[f''(0)]^2 ln f(0)<0$，且 $A>0$，因此 $(0,0)$ 是极小值点.
]

#answer("4.")[
B. 【解】在 $0<x<pi/4$ 上，$sin x<cos x$，故 $I<K$. 又
$ J=integral_0^(pi/4)ln cot x dif x=K-I>K, $
其中 $I<0$，所以 $I<K<J$. 本题虽涉及反常积分，比较大小并不需要先求出三个积分.
]

#answer("5.")[
D. 【解】将第 $2$ 列加到第 $1$ 列对应右乘初等矩阵 $P_1$，交换第 $2,3$ 行对应左乘 $P_2$，其中
$ P_1=mat(1,0,0;1,1,0;0,0,1), quad P_2=mat(1,0,0;0,0,1;0,1,0). $
由 $P_2 A P_1=E$ 得 $A=P_2^(-1)P_1^(-1)=P_2 P_1^(-1)$. 注意行变换与列变换的乘法位置不同.
]

#answer("6.")[
D. 【解】$A x=0$ 的基础解系含一个向量，故 $r(A)=3$，$r(A^*)=1$，$A^*x=0$ 的基础解系含三个向量. 由 $A^*A=|A|E=O$，$A$ 的各列都是 $A^*x=0$ 的解. 又 $alpha_1+alpha_3=0$，而 $r(A)=3$，故 $alpha_2,alpha_3,alpha_4$ 线性无关，构成所求基础解系.
]

#answer("7.")[
D. 【解】$f_1(x)F_2(x)+f_2(x)F_1(x)>=0$，且
$ integral_(-infinity)^infinity[f_1(x)F_2(x)+f_2(x)F_1(x)]dif x=[F_1(x)F_2(x)]_(-infinity)^infinity=1. $
因此它满足概率密度的两个条件.
]

#answer("8.")[
B. 【解】$U=max(X,Y)$，$V=min(X,Y)$，所以 $U V=X Y$. 由独立性，$E(U V)=E(X Y)=E X E Y$.
]

= 二、填空题

#answer("9.")[
$ln(1+sqrt(2))$. 【解】$y'=tan x$，弧长为
$ s=integral_0^(pi/4)sqrt(1+(y')^2)dif x=integral_0^(pi/4)sec x dif x=[ln(sec x+tan x)]_0^(pi/4)=ln(1+sqrt(2)). $
]

#answer("10.")[
$e^(-x)sin x$. 【解】方程 $y'+y=e^(-x)cos x$ 的通解为
$ y=e^(-x)(C+integral cos x dif x)=e^(-x)(C+sin x). $
由 $y(0)=0$ 得 $C=0$.
]

#answer("11.")[
$4$. 【解】令 $F(x,y)=integral_0^(x y)frac(sin t,1+t^2)dif t$，则
$ F'_x=frac(y sin(x y),1+x^2 y^2), $
$ F''_(x x)=frac(y^2 cos(x y)(1+x^2 y^2)-2x y^3 sin(x y),(1+x^2 y^2)^2). $
代入 $x=0,y=2$，得 $F''_(x x)(0,2)=4$.
]

#answer("12.")[
$pi$. 【解法1】取参数方程 $x=cos t,y=sin t,z=cos t+sin t$，$0<=t<=2pi$，则
$ I=integral_0^(2pi)[-cos t(cos t+sin t)sin t+cos^2 t+frac(sin^2 t,2)(-sin t+cos t)]dif t=pi. $
【解法2】用斯托克斯公式，取平面 $z=x+y$ 上的圆盘为曲面，法向量为 $(-1,-1,1)/sqrt(3)$，则
$ I=integral.double_S frac(1-x-y,sqrt(3))dif S=integral.double_(x^2+y^2<=1)(1-x-y)dif x dif y=pi. $
注意法向量方向应与曲线方向相适应，且投影时 $dif S=sqrt(3)dif x dif y$.
]

#answer("13.")[
$1$. 【解】二次型的秩为 $2$，故其矩阵行列式为零：
$ det(1,a,1;a,3,1;1,1,1)=-(a-1)^2=0. $
所以 $a=1$. 也可先化为 $mat(1,a,1;0,3-a^2,1-a;0,1-a,0)$ 再判断秩.
]

#answer("14.")[
$mu sigma^2+mu^3$. 【解】二维正态分布中相关系数为零等价于独立，因此
$ E(X Y^2)=E X E Y^2=mu(sigma^2+mu^2)=mu sigma^2+mu^3. $
注意 $E Y^2=D Y+(E Y)^2$.
]

= 三、解答题

#answer("15.")[
解　记 $y=[(ln(1+x))/x]^(1/(e^x-1))$. 当 $x>0$ 时，$ln y=(ln[ln(1+x)]-ln x)/(e^x-1)$，
$ lim_(x->0^+)ln y=lim_(x->0^+)(ln[ln(1+x)]-ln x)/(e^x-1) $
$ =lim_(x->0^+) (1/((1+x)ln(1+x))-1/x)/1=lim_(x->0^+)(x-(1+x)ln(1+x))/(x(1+x)ln(1+x)) $
$ =lim_(x->0^+)(x-(1+x)ln(1+x))/x^2=lim_(x->0^+)(1-ln(1+x)-1)/(2x)=-1/2. $
当 $x<0$ 时，$ln y=(ln[-ln(1+x)]-ln(-x))/(e^x-1)$，同样可得
$ lim_(x->0^-)ln y=lim_(x->0^-)(ln[-ln(1+x)]-ln(-x))/(e^x-1)=-1/2. $
综上可知，$lim_(x->0)[(ln(1+x))/x]^(1/(e^x-1))=1/sqrt(e)$.

【解法2】利用重要极限，
$ lim_(x->0){1+[frac(ln(1+x),x)-1]}^(1/(frac(ln(1+x),x)-1))=e, $
而
$ lim_(x->0)[frac(ln(1+x),x)-1]frac(1,e^x-1)=lim_(x->0)frac(ln(1+x)-x,x^2)=-frac(1,2). $
所以原极限为 $e^(-1/2)=1/sqrt(e)$.
【注】由泰勒公式 $ln(1+x)=x-x^2/2+o(x^2)$，也可迅速得到上式中的指数极限. 注意 $-1/2$ 是对数的极限，并非原式的极限.
]

#answer("16.")[
解　由题意 $g'(1)=0$.
因为
$ (partial z)/(partial x)=y f'_1+y g'(x)f'_2, $
$ (partial^2 z)/(partial x partial y)=f'_1+y[x f''_(11)+g(x)f''_(12)]+g'(x)f'_2+y g'(x)[x f''_(21)+g(x)f''_(22)], $
所以
$ ((partial^2 z)/(partial x partial y))|_((x=1,y=1))=f'_1(1,1)+f''_(11)(1,1)+f''_(12)(1,1). $

【解法2】先代入 $x=1$，由 $g(1)=1,g'(1)=0$ 得
$ z'_x|_(x=1)=y f'_1(y,y). $
再对 $y$ 求导并令 $y=1$，得
$ z''_(x y)(1,1)=f'_1(1,1)+f''_(11)(1,1)+f''_(12)(1,1). $
注意对 $f'_1,f'_2$ 求偏导时，应继续运用复合函数求导法则.
]

#answer("17.")[
解　令 $f(x)=k arctan x-x$，则 $f(x)$ 是 $(-infinity,+infinity)$ 内的奇函数，且
$ f(0)=0,quad f'(x)=(k-1-x^2)/(1+x^2). $
当 $k-1<=0$ 即 $k<=1$ 时，$f'(x)<0(x!=0)$，$f(x)$ 在 $(-infinity,+infinity)$ 内单调减少，方程 $f(x)=0$ 只有一个实根 $x=0$.
当 $k-1>0$ 即 $k>1$ 时，在区间 $(0,sqrt(k-1))$ 内 $f'(x)>0$，$f(x)$ 单调增加；在区间 $(sqrt(k-1),+infinity)$ 内 $f'(x)<0$，$f(x)$ 单调减少，所以 $f(sqrt(k-1))$ 是 $f(x)$ 在 $(0,+infinity)$ 内的最大值.
由于 $f(0)=0$，所以 $f(sqrt(k-1))>0$.
又因 $lim_(x->+infinity)f(x)=lim_(x->+infinity)x((k arctan x)/x-1)=-infinity$，所以存在 $xi in (sqrt(k-1),+infinity)$，使得 $f(xi)=0$.
由 $f(x)$ 是奇函数及其单调性可知：当 $k>1$ 时，方程 $f(x)=0$ 有且仅有3个不同实根 $x=-xi,x=0,x=xi$.

【典型错误】$k>1$ 时须说明正半轴上的最大值大于零，并证明函数随后能取负值. 不能仅凭驻点数目断言根的数目，也不能按 $k<=0$ 与 $k>0$ 划分参数.
]

#answer("18.")[
证　（Ⅰ）根据拉格朗日中值定理，存在 $xi in (n,n+1)$，使得
$ ln(1+1/n)=ln(n+1)-ln n=1/xi, $
所以
$ 1/(n+1)<ln(1+1/n)=1/xi<1/n. $
（Ⅱ）当 $n>=1$ 时，由（Ⅰ）知
$ a_(n+1)-a_n=1/(n+1)-ln(1+1/n)<0, $
且
$ a_n=1+1/2+dots+1/n-ln n $
$ >ln(1+1)+ln(1+1/2)+dots+ln(1+1/n)-ln n $
$ =ln(1+n)-ln n>0, $
所以数列 ${a_n}$ 单调减少且有下界，故 ${a_n}$ 收敛.

（Ⅰ）【证法2】令 $F(x)=x-ln(1+x)$，$G(x)=ln(1+x)-x/(1+x)$，则
$ F'(x)=1-frac(1,1+x)>0, quad G'(x)=frac(x,(1+x)^2)>0 quad (x>0). $
结合 $F(0)=G(0)=0$，代入 $x=1/n$ 即得所需两边不等式.
【证法3】令 $F(x)=1/x-ln(1+1/x)$，$G(x)=ln(1+1/x)-1/(1+x)$，二者在 $x>0$ 时均严格递减，且在无穷远趋于零，故 $F(n)>0,G(n)>0$.
【证法4】由
$ integral_n^(n+1)frac(1,n+1)dif x<integral_n^(n+1)frac(1,x)dif x<integral_n^(n+1)frac(1,n)dif x $
即得结论.
（Ⅱ）【证法2】改写为
$ a_n=frac(1,n)+sum_(k=1)^(n-1)[frac(1,k)-ln(1+frac(1,k))]. $
因 $1/k-ln(1+1/k) tilde.op 1/(2k^2)$，且 $sum 1/k^2$ 收敛，故 $a_n$ 收敛.
【典型错误】应利用（Ⅰ）为（Ⅱ）提供的单调性和有界性，不能直接用夹逼定理断言收敛.
]

#answer("19.")[
解　因为 $f(1,y)=0,f(x,1)=0$，所以
$ f'_y(1,y)=0,quad f'_x(x,1)=0, $
从而
$ I=integral_0^1 x dif x integral_0^1 y f''_(x y)(x,y)dif y $
$ =integral_0^1 x[y f'_x(x,y)|_(y=0)^(y=1)-integral_0^1 f'_x(x,y)dif y]dif x $
$ =-integral_0^1 dif y integral_0^1 x f'_x(x,y)dif x $
$ =-integral_0^1[x f(x,y)|_(x=0)^(x=1)-integral_0^1 f(x,y)dif x]dif y $
$ =integral_0^1 dif y integral_0^1 f(x,y)dif x=a. $

【典型错误】取特殊函数 $f(x,y)=4a(x-1)(y-1)$ 虽能算出 $I=a$，但不能由一个特殊函数推断一般函数均如此. 本题须运用分部积分和积分次序交换.
]

#answer("20.")[
解　（Ⅰ）4个3维向量 $beta_1,beta_2,beta_3,alpha_i$ 线性相关 $(i=1,2,3)$，若 $beta_1,beta_2,beta_3$ 线性无关，则 $alpha_i$ 可由 $beta_1,beta_2,beta_3$ 线性表示 $(i=1,2,3)$，与题设矛盾，于是 $beta_1,beta_2,beta_3$ 线性相关. 从而
$ |beta_1,beta_2,beta_3|=det(1,1,3;1,2,4;1,3,a)=a-5=0, $
于是 $a=5$. 此时，$alpha_1$ 不能由向量组 $beta_1,beta_2,beta_3$ 线性表示.
（Ⅱ）令 $A=(alpha_1,alpha_2,alpha_3;beta_1,beta_2,beta_3)$，对 $A$ 施以初等行变换：
$ A=mat(1,0,1,1,1,3;0,1,3,1,2,4;1,1,5,1,3,5,augment:#3)->mat(1,0,0,2,1,5;0,1,0,4,2,10;0,0,1,-1,0,-2,augment:#3), $
从而
$ beta_1=2alpha_1+4alpha_2-alpha_3,quad beta_2=alpha_1+2alpha_2,quad beta_3=5alpha_1+10alpha_2-2alpha_3. $

（Ⅰ）补充验证：当 $a=5$ 时，方程 $x_1 beta_1+x_2 beta_2+x_3 beta_3=alpha_1$ 的增广矩阵化为
$ mat(1,1,3,1;1,2,4,0;1,3,5,1,augment:#3)->mat(1,1,3,1;0,1,1,-1;0,0,0,2,augment:#3). $
系数矩阵与增广矩阵秩不同，故无解.
【典型错误】第（Ⅱ）问三个方程组具有同一系数矩阵，可一起作行变换，逐个求解会增加运算量.
]

#answer("21.")[
解　（Ⅰ）由于 $A$ 的秩为2，故0是 $A$ 的一个特征值. 由题设可得
$ A vec(1,0,-1)=-vec(1,0,-1),quad A vec(1,0,1)=vec(1,0,1). $
所以 −1 是 $A$ 的一个特征值，且属于 −1 的特征向量为 $k_1 vec(1,0,-1)$，$k_1$ 为任意非零常数；1也是 $A$ 的一个特征值，且属于1的特征向量为 $k_2 vec(1,0,1)$，$k_2$ 为任意非零常数.
设 $vec(x_1,x_2,x_3)$ 是 $A$ 的属于0的特征向量，由于 $A$ 为实对称矩阵，则
$ (1,0,-1)vec(x_1,x_2,x_3)=0,quad (1,0,1)vec(x_1,x_2,x_3)=0, $
即 $cases(x_1-x_3=0,x_1+x_3=0)$，于是属于0的特征向量为 $k_3 vec(0,1,0)$，$k_3$ 为任意非零常数.
（Ⅱ）令 $P=mat(1,1,0;0,0,1;-1,1,0)$，则 $P^(-1)A P=mat(-1,0,0;0,1,0;0,0,0)$，于是
$ A=P mat(-1,0,0;0,1,0;0,0,0)P^(-1) $
$ =mat(1,1,0;0,0,1;-1,1,0)mat(-1,0,0;0,1,0;0,0,0)mat(1/2,0,-1/2;1/2,0,1/2;0,1,0) $
$ =mat(0,0,1;0,0,0;1,0,0). $

【解法2】设 $A=mat(a,b,c;b,d,e;c,e,f)$，代入题设得
$ cases(a-c=-1,a+c=1,b-e=0,b+e=0,c-f=1,c+f=1). $
故 $a=b=e=f=0,c=1$，又 $r(A)=2$，得 $d=0$，于是
$ A=mat(0,0,1;0,0,0;1,0,0). $
其特征多项式为
$ det(lambda,0,-1;0,lambda,0;-1,0,lambda)=lambda(lambda-1)(lambda+1). $
分别解 $(lambda E-A)x=0$，得到特征值 $0,1,-1$ 及对应特征向量 $k_1 vec(0,1,0),k_2 vec(1,0,1),k_3 vec(1,0,-1)$，其中常数均非零.
【注】也可将解法1中各列单位化，取正交矩阵
$ Q=mat(1/sqrt(2),1/sqrt(2),0;0,0,1;-1/sqrt(2),1/sqrt(2),0), $
则 $A=Q op("diag")(-1,1,0)Q^T$.
【典型错误】特征向量必须非零. 特征值为零时，其特征向量仍须是 $A x=0$ 的非零解，不能任取向量.
]

#answer("22.")[
解　（Ⅰ）由 $P{X^2=Y^2}=1$ 得 $P{X^2!=Y^2}=0$，所以
$ P{X=0,Y=-1}=P{X=0,Y=1}=P{X=1,Y=0}=0, $
故 $(X,Y)$ 的概率分布为
#table(columns:4,[$X$ / $Y$],[−1],[0],[1],[0],[0],[$1/3$],[0],[1],[$1/3$],[0],[$1/3$])
（Ⅱ）$Z=X Y$ 的可能取值为 −1，0，1. 由 $(X,Y)$ 的概率分布可得 $Z$ 的概率分布为
#table(columns:4,[$Z$],[−1],[0],[1],[$P$],[$1/3$],[$1/3$],[$1/3$])
（Ⅲ）由 $X,Y$ 及 $Z$ 的概率分布得
$ E X=2/3,quad D X=2/9, $
$ E Y=0,quad D Y=2/3, $
$ E Z=E(X Y)=0, $
所以 $op("Cov")(X,Y)=0,rho_(X Y)=0$.
]

#answer("23.")[
（Ⅰ）解　设 $x_1,x_2,dots,x_n$ 为样本观测值，则似然函数
$ L(sigma^2)=(2pi sigma^2)^(-n/2) dot e^(-1/(2sigma^2)sum_(i=1)^n(x_i-mu_0)^2), $
$ ln L(sigma^2)=-n/2 ln(2pi sigma^2)-1/(2sigma^2)sum_(i=1)^n(x_i-mu_0)^2. $
令 $(dif(ln L))/(dif(sigma^2))=0$，得
$ -n/(2sigma^2)+1/(2sigma^4)sum_(i=1)^n(x_i-mu_0)^2=0, $
从而得 $sigma^2$ 的最大似然估计
$ hat(sigma)^2=1/n sum_(i=1)^n(X_i-mu_0)^2. $
（Ⅱ）解法1　由于 $(n hat(sigma)^2)/sigma^2=(sum_(i=1)^n(X_i-mu_0)^2)/sigma^2 tilde.op chi^2(n)$，所以
$ E hat(sigma)^2=sigma^2/n dot n=sigma^2,quad D hat(sigma)^2=sigma^4/n^2 dot 2n=(2sigma^4)/n. $
解法2
$ E hat(sigma)^2=1/n sum_(i=1)^n E(X_i-mu_0)^2=sigma^2. $
$ D hat(sigma)^2=1/n^2 sum_(i=1)^n D(X_i-mu_0)^2=1/n D(X_1-mu_0)^2 $
$ =sigma^4/n D((X_1-mu_0)/sigma)^2=(2sigma^4)/n. $

【注】估计量也可写成
$ hat(sigma)^2=frac(n-1,n)S^2+(overline(X)-mu_0)^2. $
在解法2中，令 $Z=(X_1-mu_0)/sigma tilde.op N(0,1)$，则 $E Z^2=1,E Z^4=3$，所以
$ D hat(sigma)^2=frac(sigma^4,n)[E Z^4-(E Z^2)^2]=frac(2sigma^4,n). $
注意已知均值与未知均值两种情形的最大似然估计不同，卡方分布的自由度也不同.
]

