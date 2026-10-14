#import "../template.typ": exam, answer
#show: exam.with(year:1990,subject:"三",title:"1990年全国硕士研究生入学统一考试",solutions:true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 1990 数学三试卷参考解答

= 一、填空题

#answer("（1）")[
分析：函数为无理根式，自然想到将其有理化.
$ "原式"=lim_(n->infinity)frac(n+3sqrt(n)-(n-sqrt(n)),sqrt(n+3sqrt(n))+sqrt(n-sqrt(n)))=lim_(n->infinity)frac(4,sqrt(1+3/sqrt(n))+sqrt(1-1/sqrt(n)))=2. $
]

#answer("（2）")[
由连续的定义，$lim_(x->0)F(x)=F(0)=A$，而
$ lim_(x->0)frac(f(x)+a sin x,x)=lim_(x->0)(f'(x)+a cos x)=b+a. $
所以 $A=a+b$.
注：连续的问题实质是极限问题，极限的求法一定要熟练.
]

#answer("（3）")[
联立 $y=x^2,y=x+2$，得交点 $(-1,1)$ 和 $(2,4)$. 所求面积为
$ A=integral_(-1)^2[(x+2)-x^2]dif x=[frac(1,2)x^2+2x-frac(1,3)x^3]_(-1)^2=frac(9,2). $
]

#answer("（4）")[
解法一：有解时，系数矩阵 $A$ 与增广矩阵 $overline(A)$ 秩相同. 由于
$ |A|=mat(delim:"|",1,1,0,0;0,1,1,0;0,0,1,1;1,0,0,1)=0, $
其秩小于 $4$，所以增广矩阵的秩也小于 $4$，于是
$ mat(delim:"|",1,1,0,-a_1;0,1,1,a_2;0,0,1,-a_3;1,0,0,a_4)=0, $
即 $a_1+a_2+a_3+a_4=0$.
解法二：化增广矩阵，得
$ mat(augment:#(vline:4),1,1,0,0,-a_1;0,1,1,0,a_2;0,0,1,1,-a_3;1,0,0,1,a_4) \
arrow.r mat(augment:#(vline:4),1,1,0,0,-a_1;0,1,1,0,a_2;0,0,1,1,-a_3;0,-1,0,1,a_1+a_4) \
arrow.r mat(augment:#(vline:4),1,1,0,0,-a_1;0,1,1,0,a_2;0,0,1,1,-a_3;0,0,0,0,a_1+a_2+a_3+a_4). $
所以有解的条件为 $a_1+a_2+a_3+a_4=0$.
]

#answer("（5）")[
设命中率为 $p$，命中次数为 $X$，则 $X~B(4,p)$. 由题设，
$ frac(80,81)=P{X>=1}=1-P{X=0}=1-(1-p)^4. $
于是 $(1-p)^4=frac(1,81)$，得 $p=frac(2,3)$.
注：“至少发生”或“至多发生”问题，往往通过对立事件求解. 在 $n$ 次独立重复试验中，至少成功一次的概率为 $1-(1-p)^n$，至少失败一次的概率为 $1-p^n$.
]

= 二、选择题

#answer("（1）")[
分析：从函数表达式判断其单调性、奇偶性、周期性和有界性.
观察三个因子 $x,tan x,e^(sin x)$，当 $x$ 趋于 $k pi+pi/2$ 时，$tan x$ 无界，故 $f(x)$ 无界，选 B.
对于其余选项：
A：$f(-x)=x tan x e^(-sin x)!=f(x)$，故非偶函数.
D：当 $x->(pi/2)^-$ 时 $f(x)->+infinity$，当 $x->(pi/2)^+$ 时 $f(x)->-infinity$，且 $f(0)=0$，故非单调函数.
C：反证法. 若 $T>0$ 是周期，令 $x=0$，得 $T tan T e^(sin T)=0$，故 $T=k pi$，其中 $k$ 为正整数. 则 $2k pi$ 也是周期，应有
$ f(x+2k pi)-f(x)=2k pi tan x e^(sin x)=0. $
这不可能对所有定义域内的 $x$ 成立，矛盾.
]

#answer("（2）")[
用导数定义，得
$ f'(1)=lim_(Delta x->0)frac(f(1+Delta x)-f(1),Delta x)=lim_(Delta x->0)frac(a f(Delta x)-a f(0),Delta x)=a f'(0)=a b. $
选 D.
注：题设只知 $f$ 在 $0$ 处可导，还不知道它在 $1$ 处可导，不能直接对 $f(1+x)=a f(x)$ 两边求导后令 $x=0$；应先使用定义证明可导.
]

#answer("（3）")[
A、B、D 均可举反例，只有 C 正确. 用反证法：若向量组线性相关，则至少有一个向量可由其余向量线性表示，与 C 矛盾.
注：含有零向量的向量组线性相关；两个向量的分量成比例，则向量组线性相关；向量组中一部分向量线性相关，则整个向量组线性相关，这三命题的否命题均不成立. 但“线性相关当且仅当至少有一个向量可由其余向量线性表示”成立.
]

#answer("（4）")[
因为 $B subset A$，所以 $A+B=A$，故 $P(A+B)=P(A)$，选 A.
]

#answer("（5）")[
$X,Y$ 可以取不同的值，也可以取相同的值，排除 A、D、B，故选 C.
事实上，由独立性，
$ P{X=Y}&=P{X=-1,Y=-1}+P{X=1,Y=1} \
&=P{X=-1}P{Y=-1}+P{X=1}P{Y=1}=frac(1,2). $
]

= 三、计算题

#answer("（1）")[
先求最大值点，再代入积分计算.
$ I'(x)=frac(ln x,x^2-2x+1)=frac(ln x,(1-x)^2)>0, quad x in [e,e^2]. $
所以最大值在 $x=e^2$ 处取得. 由分部积分，
$ I(e^2)&=integral_e^(e^2)frac(ln t,(t-1)^2)dif t=-integral_e^(e^2)ln t dif(frac(1,t-1)) \
&=-[frac(ln t,t-1)]_e^(e^2)+integral_e^(e^2)frac(dif t,t(t-1)) \
&=-frac(2,e^2-1)+frac(1,e-1)+integral_e^(e^2)(frac(1,t-1)-frac(1,t))dif t \
&=frac(1,e+1)+ln frac(e+1,e)=ln(1+e)-frac(e,1+e). $
]

#answer("（2）")[
分析：画出草图，可知这是广义二重积分. 根据被积函数的特点，应先对 $x$ 积分.
#align(center)[#image("1990-数学三-二重积分区域.svg",width:48mm)]
$ "原式"&=integral_0^(+infinity)e^(-y^2)dif y integral_(sqrt(y)/3)^(sqrt(y)/2)x dif x \
&=frac(1,2)integral_0^(+infinity)(frac(1,4)y-frac(1,9)y)e^(-y^2)dif y \
&=frac(5,72)integral_0^(+infinity)y e^(-y^2)dif y=frac(5,144). $
]

#answer("（3）")[
收敛半径为 $R=lim_(n->infinity)frac((n+1)^2,n^2)=1$，所以 $2<x<4$ 时收敛.
在 $x=2$ 处为交错级数 $sum_(n=1)^infinity frac((-1)^n,n^2)$，满足莱布尼茨条件，收敛.
在 $x=4$ 处为 $sum_(n=1)^infinity frac(1,n^2)$，收敛.
故收敛域为 $[2,4]$.
]

#block(breakable:false)[
#answer("（4）")[
分析：这是一个一阶线性非齐次方程，可用通解公式，或先将左端凑成一个函数的导数，再积分.
解法一：由通解公式，
$ y&=e^(-integral cos x dif x)[integral (ln x)e^(-sin x)e^(integral cos x dif x)dif x+C] \
&=e^(-sin x)(integral ln x dif x+C)=e^(-sin x)(x ln x-x+C). $
解法二：用积分因子 $e^(sin x)$ 乘方程两端，得
$ (y e^(sin x))'=ln x. $
积分得 $y e^(sin x)=C+x ln x-x$，再乘 $e^(-sin x)$，即得上述通解.
注：解法二实际上就是通解公式的推导过程.
]

]

= 解答题

#answer("四、")[
分析：最佳广告策略是使利润最大. 第一问为无条件极值，第二问为条件极值，可用拉格朗日乘数法.
（1）利润函数为
$ pi=R-(x_1+x_2)=15+13x_1+31x_2-8x_1x_2-2x_1^2-10x_2^2. $
由极值的必要条件，
$ cases(frac(partial pi,partial x_1)=13-8x_2-4x_1=0,frac(partial pi,partial x_2)=31-8x_1-20x_2=0). $
解得 $x_1=0.75,x_2=1.25$（万元）. 驻点唯一，实际问题必有最大值，所以最佳策略为电台广告投入 $0.75$ 万元、报纸广告投入 $1.25$ 万元.
（2）在约束 $x_1+x_2=1.5$ 下，作
$ L=pi+lambda(x_1+x_2-1.5). $
必要条件为
$ cases(13-8x_2-4x_1+lambda=0,31-8x_1-20x_2+lambda=0,x_1+x_2-1.5=0). $
解得 $x_1=0,x_2=1.5$，即全部广告费 $1.5$ 万元投入报纸广告为最佳策略.
]

#answer("五、")[
分析：将不等式改写为 $f(a+b)-f(b)<=f(a)-f(0)$，想到在 $[0,a]$ 和 $[b,a+b]$ 上使用中值定理.
证法一：$a=0$ 时等号成立. $a>0$ 时，由拉格朗日中值定理，
$ f'(xi_1)=frac(f(a)-f(0),a)=frac(f(a),a), quad 0<xi_1<a, $
$ f'(xi_2)=frac(f(a+b)-f(b),a), quad b<xi_2<a+b. $
因为 $xi_1<a<=b<xi_2$，且导数单调减少，所以 $f'(xi_2)<=f'(xi_1)$，即
$ frac(f(a+b)-f(b),a)<=frac(f(a),a). $
乘以 $a>0$，得 $f(a+b)<=f(a)+f(b)$.
证法二：作 $F(x)=f(x)-f(a+x),x in [0,b]$. 则 $F(0)=-f(a)$，
$ F'(x)=f'(x)-f'(a+x)>=0. $
所以 $F(b)>=F(0)$，即 $f(b)-f(a+b)>=-f(a)$，仍得所求不等式.
]

#answer("六、")[
（1）考虑增广矩阵：
$ mat(augment:#(vline:5),1,1,1,1,1,a;3,2,1,1,-3,0;0,1,2,2,6,b;5,4,3,3,-1,2) \
arrow.r mat(augment:#(vline:5),1,1,1,1,1,a;0,1,2,2,6,3a;0,0,0,0,0,b-3a;0,0,0,0,0,2-2a). $
当且仅当 $b-3a=0,2-2a=0$，即 $a=1,b=3$ 时有解.
（2）此时继续变换，得
$ mat(augment:#(vline:5),1,0,-1,-1,-5,-2;0,1,2,2,6,3;0,0,0,0,0,0;0,0,0,0,0,0). $
 #block(breakable:false)[
对应的齐次方程组的一个基础解系为
$ bold(xi)_1=mat(1;-2;1;0;0), quad bold(xi)_2=mat(1;-2;0;1;0), quad bold(xi)_3=mat(5;-6;0;0;1). $
]
（3）令 $x_3=x_4=x_5=0$，得特解 $bold(eta)=(-2,3,0,0,0)^T$. 故全部解为
$ bold(x)=bold(eta)+C_1bold(xi)_1+C_2bold(xi)_2+C_3bold(xi)_3, $
其中 $C_1,C_2,C_3$ 为任意常数.
]

#answer("七、")[
因为 $A$ 与 $E$ 可交换，有
$ E-A^k=(E-A)(E+A+dots+A^(k-1)). $
由 $A^k=O$，得 $(E-A)(E+A+dots+A^(k-1))=E$，所以 $E-A$ 可逆，且
$ (E-A)^(-1)=E+A+dots+A^(k-1). $
注：这里使用了逆矩阵的定义. 也可由特征值证明：$A^k=O$ 意味着 $A$ 的特征值全为 $0$，因而 $E-A$ 的特征值全为 $1$，故可逆.
]

#answer("八、")[
反证法：若 $bold(x)_1+bold(x)_2$ 是对应特征值 $lambda$ 的特征向量，则
$ A(bold(x)_1+bold(x)_2)=lambda(bold(x)_1+bold(x)_2). $
又 $A bold(x)_1=lambda_1bold(x)_1,A bold(x)_2=lambda_2bold(x)_2$，所以
$ (lambda_1-lambda)bold(x)_1+(lambda_2-lambda)bold(x)_2=bold(0). $
因不同特征值对应的特征向量线性无关，得 $lambda_1=lambda_2=lambda$，与假设矛盾.
注：抽象矩阵的特征值、特征向量问题，往往从定义入手.
]

#answer("九、")[
解法一：从十个数字中任选三个的基本事件总数为 $binom(10,3)$.
（1）只须从除 $0,5$ 外的八个数字中选三个，所以
$ P(A_1)=frac(binom(8,3),binom(10,3))=frac(7,15). $
 #block(breakable:false)[
（2）对立事件为“三个数字中含 $0$ 和 $5$”，剩下一个从八个数字中选，所以
$ P(A_2)=1-frac(binom(8,1),binom(10,3))=frac(14,15). $
]
解法二：记 $B$ 为“三个数字中不含 $0$”，$C$ 为“三个数字中不含 $5$”，则
$ P(B)=P(C)=frac(binom(9,3),binom(10,3))=frac(7,10), quad P(B C)=frac(7,15). $
于是 $P(A_1)=P(B C)=frac(7,15)$，
$ P(A_2)=P(B union C)=P(B)+P(C)-P(B C)=frac(14,15). $
]

#answer("十、")[
解法一：（1）边缘分布函数分别为
$ F_X(x)=cases(1-e^(-0.5x) & x>=0,0 & x<0), quad F_Y(y)=cases(1-e^(-0.5y) & y>=0,0 & y<0). $
因 $F(x,y)=F_X(x)F_Y(y)$，所以 $X,Y$ 独立.
（2）$100$ 小时为 $0.1$ 千小时，故
$ P{X>0.1,Y>0.1}=[1-F_X(0.1)][1-F_Y(0.1)]=e^(-0.05)e^(-0.05)=e^(-0.1). $
解法二：（1）联合密度为
$ f(x,y)=cases(0.25e^(-0.5(x+y)) & x>=0 quad y>=0,0 & "其他"). $
积分得
$ f_X(x)=cases(0.5e^(-0.5x) & x>=0,0 & x<0), quad f_Y(y)=cases(0.5e^(-0.5y) & y>=0,0 & y<0). $
因为 $f(x,y)=f_X(x)f_Y(y)$，所以独立.
（2）所求概率为
$ integral_(0.1)^(+infinity)dif x integral_(0.1)^(+infinity)0.25e^(-0.5(x+y))dif y=e^(-0.1). $
]

#block(breakable:false)[
#answer("十一、")[
设 $X$ 为外语成绩，由题设 $X~N(72,sigma^2)$. 则
$ 0.023=P{X>=96}=1-Phi(frac(24,sigma)), $
所以 $Phi(frac(24,sigma))=0.977$，查表得 $frac(24,sigma)=2$，即 $sigma=12$.
故所求概率为
$ P{60<=X<=84}=P{-1<=frac(X-72,12)<=1}=2Phi(1)-1=2times 0.841-1=0.682. $
注：求正态随机变量在区间内取值的概率，先标准化，再查标准正态分布函数表. 本题应先根据条件求出 $sigma$.
]

]
