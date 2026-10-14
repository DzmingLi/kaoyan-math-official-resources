#import "../template.typ": exam, answer
#show: exam.with(year:1990,subject:"四",title:"1990年全国硕士研究生入学统一考试",solutions:true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 1990 数学四试卷参考解答

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
由题设 $X~N(-3,1),Y~N(2,1)$，且 $X,Y$ 相互独立，所以它们的线性组合 $Z=X-2Y+7$ 也服从正态分布. 又
$ E Z=E X-2E Y+7=-3-2times 2+7=0, $
$ D Z=D X+4D Y=1+4=5. $
故 $Z~N(0,5)$.
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
涉及伴随矩阵 $A^*$，首先想到公式 $A A^*=A^* A=|A|E$. 由于 $A$ 可逆，所以
$ A^*=|A|A^(-1), quad |A^*|=|\,|A|A^(-1)\,|=|A|^n |A^(-1)|=|A|^(n-1). $
故选 A.
]

#answer("（5）")[
根据公式 $E(X)=n p,D(X)=n p(1-p)$，可得方程组
$ cases(n p=2.4,n p(1-p)=1.44). $
解得 $n=6,p=0.4$，故选 B.
]

= 三、计算题

#answer("（1）")[
$ "原式"=lim_(x->+infinity)frac(e^(-x^2)integral_0^x (1+t^2)e^(t^2)dif t,x)=lim_(x->+infinity)frac(integral_0^x (1+t^2)e^(t^2)dif t,x e^(x^2)). $
由于分子、分母均趋于 $+infinity$，可用洛必达法则：
$ "原式"=lim_(x->+infinity)frac((1+x^2)e^(x^2),e^(x^2)+2x^2 e^(x^2))=frac(1,2). $
]

#answer("（2）")[
分析：被积函数是三角函数与幂函数的乘积，一般采用分部积分法.
解法一：
$ "原式"&=integral frac(x cos^4(x/2),8sin^3(x/2)cos^3(x/2))dif x=frac(1,8)integral frac(x cos(x/2),sin^3(x/2))dif x \
&=frac(1,4)integral x sin^(-3)(x/2)dif sin(x/2)=-frac(1,8)integral x dif sin^(-2)(x/2) \
&=-frac(1,8)x sin^(-2)(x/2)+frac(1,8)integral frac(1,sin^2(x/2))dif x \
&=-frac(1,8)x sin^(-2)(x/2)-frac(1,4)cot(x/2)+C. $
解法二：
$ "原式"&=frac(1,8)integral frac(x cos(x/2),sin^3(x/2))dif x=-frac(1,4)integral x cot(x/2)dif cot(x/2) \
&=-frac(1,8)integral x dif cot^2(x/2)=-frac(1,8)x cot^2(x/2)+frac(1,8)integral cot^2(x/2)dif x \
&=-frac(1,8)x cot^2(x/2)+frac(1,8)integral (csc^2(x/2)-1)dif x \
&=-frac(1,8)x cot^2(x/2)-frac(1,8)x+frac(1,4)integral csc^2(x/2)dif (x/2) \
&=-frac(1,8)x csc^2(x/2)-frac(1,4)cot(x/2)+C. $
]

#answer("（3）")[
解法一：设 $F(x,y,z)=x^2+z^2-y phi(z/y)$，则
$ F'_y=-phi(z/y)+z/y phi'(z/y), quad F'_z=2z-phi'(z/y). $
所以
$ frac(partial z,partial y)=-frac(F'_y,F'_z)=frac(y phi(z/y)-z phi'(z/y),2y z-y phi'(z/y)). $
解法二：将原式两边同时对 $y$ 求偏导，得
$ 2z frac(partial z,partial y)=phi(z/y)+y phi'(z/y)(frac(1,y)frac(partial z,partial y)-frac(z,y^2)). $
故
$ frac(partial z,partial y)=frac(phi(z/y)-z/y phi'(z/y),2z-phi'(z/y))=frac(y phi(z/y)-z phi'(z/y),2y z-y phi'(z/y)). $
]

#answer("（4）")[
分析：画出草图，可知这是广义二重积分. 根据被积函数的特点，应先对 $x$ 积分.
#align(center)[#image("1990-数学四-二重积分区域.svg",width:48mm)]
$ "原式"&=integral_0^(+infinity)e^(-y^2)dif y integral_(sqrt(y)/3)^(sqrt(y)/2)x dif x \
&=frac(1,2)integral_0^(+infinity)(frac(1,4)y-frac(1,9)y)e^(-y^2)dif y \
&=frac(5,72)integral_0^(+infinity)y e^(-y^2)dif y=frac(5,144). $
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
设 $f(x)=1+x ln(x+sqrt(1+x^2))-sqrt(1+x^2)$，则
$ f'(x)=ln(x+sqrt(1+x^2))+x frac(1+x/sqrt(1+x^2),x+sqrt(1+x^2))-frac(x,sqrt(1+x^2))=ln(x+sqrt(1+x^2)). $
令 $f'(x)=0$，得驻点 $x=0$. 而
$ f''(x)=frac(1,sqrt(1+x^2))>0, $
故 $x=0$ 为极小值点，亦即最小值点. 最小值 $f(0)=0$，所以 $f(x)>=0$，即
$ 1+x ln(x+sqrt(1+x^2))>=sqrt(1+x^2), quad -infinity<x<+infinity. $
注：通过极值的判定证明不等式，是证明函数不等式的常用方法之一.
]

#answer("六、")[
$ |A-lambda E|=mat(delim:"|",-lambda,1,0,dots,0,0;0,-lambda,1,dots,0,0;dots.v,dots.v,dots.v,,dots.v,dots.v;0,0,0,dots,-lambda,1;10^10,0,0,dots,0,-lambda). $
根据行列式特点，按第一列展开，得
$ |A-lambda E|&=(-lambda)mat(delim:"|",-lambda,1,0,dots,0;0,-lambda,1,dots,0;dots.v,dots.v,dots.v,,dots.v;0,0,0,dots,1;0,0,0,dots,-lambda) \
& quad -10^10 mat(delim:"|",1,0,0,dots,0;-lambda,1,0,dots,0;dots.v,dots.v,dots.v,,dots.v;0,0,0,dots,0;0,0,0,dots,1) \
&=(-lambda)(-lambda)^9-10^10=lambda^10-10^10. $
]

#answer("七、")[
设 $x$ 是 $A$ 的实特征向量，对应特征值为 $lambda$，则 $A x=lambda x$，$x^T A^T=lambda x^T$. 因而
$ x^T A^T A x=lambda^2 x^T x, quad x^T x=lambda^2 x^T x, quad (lambda^2-1)x^T x=0. $
因为 $x$ 为实特征向量，故 $x^T x>0$，所以 $lambda^2-1=0$，即 $|lambda|=1$.
注：抽象矩阵满足一定关系式，讨论其特征值、特征向量问题时一般用定义.
]

#answer("八、")[
（1）考虑增广矩阵：
$ mat(augment:#(vline:5),1,1,1,1,1,a;3,2,1,1,-3,0;0,1,2,2,6,b;5,4,3,3,-1,2) \
arrow.r mat(augment:#(vline:5),1,1,1,1,1,a;0,1,2,2,6,3a;0,0,0,0,0,b-3a;0,0,0,0,0,2-2a). $
当且仅当 $b-3a=0,2-2a=0$，即 $a=1,b=3$ 时有解.
（2）此时继续变换，得
$ mat(augment:#(vline:5),1,0,-1,-1,-5,-2;0,1,2,2,6,3;0,0,0,0,0,0;0,0,0,0,0,0). $
对应的齐次方程组的一个基础解系为
$ bold(xi)_1=mat(1;-2;1;0;0), quad bold(xi)_2=mat(1;-2;0;1;0), quad bold(xi)_3=mat(5;-6;0;0;1). $
（3）令 $x_3=x_4=x_5=0$，得特解 $bold(eta)=(-2,3,0,0,0)^T$. 故全部解为
$ bold(x)=bold(eta)+C_1bold(xi)_1+C_2bold(xi)_2+C_3bold(xi)_3, $
其中 $C_1,C_2,C_3$ 为任意常数.
]

#answer("九、")[
解法一：将从十个数字中任取三个不同数字作为基本事件，基本事件总数为 $binom(10,3)$.
（1）$A_1$ 中不含 $0$ 和 $5$，只须从其余八个数字中选三个，因此
$ P(A_1)=frac(binom(8,3),binom(10,3))=frac(7,15). $
（2）$A_2$ 含 $0$，只须从其余九个数字中选两个；又不含 $5$，所以从其余八个数字中选两个，因此
$ P(A_2)=frac(binom(8,2),binom(10,3))=frac(7,30). $
解法二：记 $B$ 为“三个数字中不含 $0$”，$C$ 为“三个数字中不含 $5$”，则
$ P(B)=P(C)=frac(binom(9,3),binom(10,3))=frac(7,10), quad P(B C)=frac(binom(8,3),binom(10,3))=frac(7,15). $
从而
$ P(A_1)=P(B C)=frac(7,15), $
$ P(A_2)=P(overline(B)C)=P(C)-P(B C)=frac(7,10)-frac(7,15)=frac(7,30). $
]

#block(breakable:false)[
#answer("十、")[
由题意 $X~B(2,0.2),Y~B(2,0.5)$，根据公式 $P{X=k}=binom(n,k)p^k q^(n-k)$，可得概率分布分别为
#align(center)[#table(columns:4,align:center,[$X$],[0],[1],[2],[$p_k$],[0.64],[0.32],[0.04])]
#align(center)[#table(columns:4,align:center,[$Y$],[0],[1],[2],[$p_k$],[0.25],[0.5],[0.25])]
由 $X,Y$ 的独立性知其联合概率分布为
#align(center)[#table(columns:4,align:center,[$Y backslash X$],[0],[1],[2],[0],[0.16],[0.08],[0.01],[1],[0.32],[0.16],[0.02],[2],[0.16],[0.08],[0.01])]
]

]

#answer("十一、")[
设 $X$ 为外语成绩，由题设 $X~N(72,sigma^2)$. 则
$ 0.023=P{X>=96}=1-Phi(frac(24,sigma)), $
所以 $Phi(frac(24,sigma))=0.977$，查表得 $frac(24,sigma)=2$，即 $sigma=12$.
故所求概率为
$ P{60<=X<=84}=P{-1<=frac(X-72,12)<=1}=2Phi(1)-1=2times 0.841-1=0.682. $
注：求正态随机变量在区间内取值的概率，先标准化，再查标准正态分布函数表. 本题应先根据条件求出 $sigma$.
]
