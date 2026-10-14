#import "../template.typ": exam, answer
#show: exam.with(year: 1987, subject: "三", title: "1987年全国硕士研究生入学统一考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 1987 数学三试卷参考解答

= 一、判断是非题

#answer("（1）")[
由于 $lim_(x->0^+) e^(1/x)=+infinity$，$lim_(x->0^-) e^(1/x)=0$，故题设错误.

注　此题实际考查函数极限存在的充要条件：左、右极限存在且相等.
]

#answer("（2）")[
此题正确，因为被积函数 $f(x)=x^4 sin x$ 在对称区间 $[-pi,pi]$ 上为奇函数，从而积分为零.
]

#answer("（3）")[
此判断错误. 易举出反例：令 $a_n=1,b_n=-1$，显然 $sum_(n=1)^infinity a_n$ 发散，$sum_(n=1)^infinity b_n$ 发散，但 $sum_(n=1)^infinity(a_n+b_n)$ 收敛.

注　敛散性有如下结论：

（1）若 $sum a_n$ 和 $sum b_n$ 均收敛，则 $sum(a_n+b_n)$ 也收敛；若 $sum a_n$ 收敛，$sum b_n$ 发散，则 $sum(a_n+b_n)$ 发散.

（2）若 $sum a_n$ 收敛，则任意加括号后组成的新级数仍收敛；若 $sum a_n$ 加括号后的级数发散，则原级数必定发散.
]

#answer("（4）")[
由题设秩 $r(A)=r$，故矩阵 $A$ 的一切 $r+1$ 阶子式均为0. 正确.
]

#answer("（5）")[
设连续型随机变量 $X$ 的分布函数为 $F(x)$，则对任意实数 $a$，$Delta x>0$，有
$ 0<=P(X=a)<=P(a-Delta x<X<=a)=F(a)-F(a-Delta x). $
由 $F(x)$ 连续性可知，$lim_(Delta x->0) F(a-Delta x)=F(a)$. 从而上式右端趋于0，即有 $P(X=a)=0$.

注　这是个简单但很重要的结论.
]

= 二、选择题

#answer("（1）")[
本题由基本初等函数的连续性及连续函数的四则运算法则易选出正确答案 A. B、C、D 都是分段函数，其连续性的讨论集中在分割点处，看其在分割点处左、右极限是否存在并等于该点的函数值. 如果函数式中含有绝对值符号，应去掉绝对值符号将其化为分段函数.
]

#answer("（2）")[
由题设 $f(x)$ 在 $(a,b)$ 内可导，则 $f(x)$ 在闭区间 $[x_1,x_2]$ 上连续，开区间 $(x_1,x_2)$ 内可导，满足拉格朗日中值定理的条件，故存在 $xi in (x_1,x_2)$，使得
$ f(x_2)-f(x_1)=f'(xi)(x_2-x_1), $
所以选 C.

A 中 $f(x)$ 在 $[a,b]$ 上不一定连续；B 中 $f(x)$ 在 $[x_1,b]$ 上不一定连续；D 中 $f(x)$ 在 $[a,x_2]$ 上也不一定连续，均不满足拉格朗日中值定理的条件，因此 A、B、D 均不一定成立.

注　对于微分中值定理，一定要注意其条件：$f(x)$ 在闭区间 $[a,b]$ 上连续，开区间 $(a,b)$ 上可导.
]

#answer("（3）")[
令 $t=ln x$，则四个积分可化为
$ integral_1^(+infinity) t dif t, quad integral_1^(+infinity) 1/t dif t, quad integral_1^(+infinity) 1/t^2 dif t, quad integral_1^(+infinity) 1/t^(1/2) dif t. $
故由 $integral_1^(+infinity) 1/x^alpha dif x$（$alpha>0$）的收敛性判别准则可知 C 收敛.

注　此题考查对广义积分 $integral_1^(+infinity) 1/x^alpha dif x$（$alpha>0$）敛散性的掌握.
]

#answer("（4）")[
由定义知，秩 $r(A)=r$，则 $A$ 的 $n$ 个行向量组的秩也为 $r$，即行向量组的极大无关组所含向量的个数为 $r$，从而必存在 $r$ 个线性无关的行向量，所以应选 A.

注　本题考查了矩阵秩和向量组秩的关系及向量组的相关性与向量组秩的关系. 矩阵的秩等于矩阵的行（列）向量组的秩.
]

#answer("（5）")[
若 $A B$ 恰是某连续型随机变量 $X$ 在某一点 $x_0$ 处的取值；例如 $A={X<=x_0},B={X>=x_0}$，则 $P(A B)=P{X=x_0}=0$，但 $A B={X=x_0}$，不是不可能事件. 故应选 C.

注　本题利用了“连续型随机变量取任何给定实数值的概率都等于0”这个性质. 实际上，选项 A、B、D 都是 $P(A B)=0$ 的充分条件，而不是必要条件.
]

= 解答题

#answer("三、")[
解　$ y=ln(sqrt(1+x^2)-1)-ln(sqrt(1+x^2)+1), $
$ y'=(sqrt(1+x^2)-1)'/(sqrt(1+x^2)-1)-(sqrt(1+x^2)+1)'/(sqrt(1+x^2)+1) $
$ = (2x)/(2sqrt(1+x^2)(sqrt(1+x^2)-1))-(2x)/(2sqrt(1+x^2)(sqrt(1+x^2)+1))=2/(x sqrt(1+x^2)). $

注　复合函数求导，应用公式 $(dif y)/(dif x)=(dif y)/(dif u) dot (dif u)/(dif x)$. 本题也可先有理化，再利用对数性质化简后求导.
]

#answer("四、")[
令 $t=sqrt(2x-1)$，则 $x=1/2(t^2+1)$，$dif x=t dif t$.
从而
$ "原式"=integral t e^t dif t=(t-1)e^t+C. $
]

#answer("五、")[
分析　$1^infinity$ 型. 显然利用重要极限 $lim_(x->0)(1+x)^(1/x)=e$ 较为方便，当然也可以使用洛必达法则.

解法一
$ "原式"=lim_(x->0)[(1+x e^x)^(1/(x e^x))]^(e^x)=e. $

解法二
$ "原式"=lim_(x->0)e^(ln(1+x e^x)/x)=e^(lim_(x->0) ln(1+x e^x)/x)=e. $

注　显然仅使用洛必达法则会增加繁杂项.
]

#answer("六、")[
分析　先利用定积分计算两部分图形面积之和，再求最值.

$ S(t)=S_1+S_2=integral_0^t (sin t-sin x)dif x+integral_t^(pi/2)(sin x-sin t)dif x $
$ =2t sin t+2cos t-pi/2 sin t-1. $
令
$ S'(t)=2sin t+2t cos t-2sin t-pi/2 cos t=(2t-pi/2)cos t=0, $
得 $t=pi/4$ 或 $pi/2$.
又在区间 $[0,pi/2]$ 上有 $S(0)=1$，$S(pi/4)=sqrt(2)-1$，$S(pi/2)=pi/2-1$.
可见当 $t=pi/4$ 时，$S$ 取最小值；当 $t=0$ 时，$S$ 取最大值.
]

#answer("七、")[
解法一
$ (partial z)/(partial x)=1/(1+((x+y)/(x-y))^2) dot ((x-y)-(x+y))/(x-y)^2=-(y)/(x^2+y^2), $
$ (partial z)/(partial y)=1/(1+((x+y)/(x-y))^2) dot ((x-y)+(x+y))/(x-y)^2=x/(x^2+y^2). $
故
$ dif z=(partial z)/(partial x)dif x+(partial z)/(partial y)dif y=1/(x^2+y^2)(-y dif x+x dif y). $

解法二
$ dif z=dif(arctan((x+y)/(x-y)))=1/(1+((x+y)/(x-y))^2)dif((x+y)/(x-y)) $
$ = (x-y)^2/((x-y)^2+(x+y)^2) dot ((x-y)(dif x+dif y)-(x+y)(dif x-dif y))/(x-y)^2 $
$ =(-y dif x+x dif y)/(x^2+y^2). $

注　解法二利用了一阶全微分形式不变性和全微分四则运算.
]

#answer("八、")[
分析　被积函数只含有变量 $x$，应先定 $x$ 后定 $y$，即先对 $y$ 积分后对 $x$ 积分.

$ integral.double_D e^(x^2)dif x dif y=integral_0^1 dif x integral_(x^3)^x e^(x^2)dif y=integral_0^1(x e^(x^2)-x^3 e^(x^2))dif x $
$ =1/2 integral_0^1 e^(x^2)dif x^2-1/2 integral_0^1 x^2 dif e^(x^2)=1/2 e-1. $
]

#block(breakable: false)[
#answer("九、")[
解　$ f(x)=1/(x^2-3x+2)=1/(1-x)-1/(2-x)=1/(1-x)-1/2 dot 1/(1-x/2). $
于是有
$ f(x)=sum_(n=0)^infinity x^n-1/2 sum_(n=0)^infinity (x/2)^n=sum_(n=0)^infinity(1-1/2^(n+1))x^n, quad x in (-1,1). $
其收敛区间为 $(-1,1)$.
]

]
#answer("十、")[
由弹性公式，得
$ eta=(dif x)/(dif p) dot p/x=-3p^3, $
即
$ 1/x dif x=-3p^2 dif p. $
两边积分得 $ln x=-p^3+C_1$，即 $x=e^(-p^3+C_1)=C e^(-p^3)$.
由 $x|_(p=0)=1$，解得 $C=1$.
故所求需求函数为 $x=e^(-p^3)$.
]

#answer("十一、")[
由 $A B=A+2B$，得 $(A-2E)B=A$.
由 $A=mat(4,2,3;1,1,0;-1,2,3)$，得
$ A-2E=mat(2,2,3;1,-1,0;-1,2,1). $
因为 $abs(A-2E)!=0$，所以 $A-2E$ 可逆，且由初等变换可求得其逆为
$ (A-2E)^(-1)=mat(1,-4,-3;1,-5,-3;-1,6,4). $
故
$ B=(A-2E)^(-1)A=mat(1,-4,-3;1,-5,-3;-1,6,4)mat(4,2,3;1,1,0;-1,2,3)=mat(3,-8,-6;2,-9,-6;-2,12,9). $

注　对矩阵方程，应先化简，再计算.
]

#answer("十二、")[
对增广矩阵作初等行变换：
$ overline(A)=mat(2,-1,4,-3,-4;1,0,1,-1,-3;3,1,1,0,1;7,0,7,-3,3) arrow.r mat(1,0,1,-1,-3;2,-1,4,-3,-4;3,1,1,0,1;7,0,7,-3,3) $
$ arrow.r mat(1,0,1,-1,-3;0,-1,2,-1,2;0,1,-2,3,10;0,0,0,4,24) arrow.r mat(1,0,1,0,3;0,1,-2,0,-8;0,0,0,1,6;0,0,0,0,0). $
故与原方程组同解的方程组为
$ cases(x_1+x_3=3,x_2-2x_3=-8,x_4=6). $
取 $x_3$ 为自由未知量，得通解为
$ mat(x_1;x_2;x_3;x_4)=mat(3;-8;0;6)+k mat(-1;2;1;0), $
其中 $k$ 为任意常数.
]

#answer("十三、")[
分析　求具体矩阵的特征值和特征向量，就是求解特征方程 $abs(lambda E-A)=0$ 和齐次线性方程组 $(lambda E-A)x=0$.

$ abs(lambda E-A)=mat(delim: "|", lambda+3,1,-2;0,lambda+1,-4;1,0,lambda-1) $
$ =mat(delim: "|", lambda+3,1,0;0,lambda+1,2(lambda-1);1,0,lambda-1) $
$ =(lambda-1)mat(delim: "|", lambda+3,1,0;0,lambda+1,2;1,0,1)=(lambda-1)(lambda^2+4lambda+5)=0, $
得实特征值为 $lambda=1$.
由 $A x=lambda x$，即
$ (lambda E-A)x=(E-A)x=mat(4,1,-2;0,2,-4;1,0,0)mat(x_1;x_2;x_3)=0, $
解得基础解系为 $alpha=(0,2,1)^T$.
故属于特征值 $lambda=1$ 的所有特征向量为 $k(0,2,1)^T$，其中 $k!=0$ 为任意常数.
]

#answer("十四、")[
设 $A_i$ 为“第 $i$ 箱被挑出”（$i=1,2$），$B_j$ 为“第 $j$ 次取出的零件是一等品”（$j=1,2$）.
则由题设可知
$ P(A_1)=P(A_2)=1/2, quad P(B_1|A_1)=10/50=1/5, quad P(B_1|A_2)=18/30=3/5, $
$ P(B_1 B_2|A_1)=binom(10,2)/binom(50,2)=9/245, quad P(B_1 B_2|A_2)=binom(18,2)/binom(30,2)=51/145. $

（1）由全概率公式，先取出的零件是一等品的概率
$ p=P(B_1)=P(B_1|A_1)P(A_1)+P(B_1|A_2)P(A_2)=1/5 dot 1/2+3/5 dot 1/2=2/5. $

（2）由条件概率的定义和全概率公式，有
$ q=P(B_2|B_1)=P(B_1 B_2)/P(B_1) $
$ =5/2[P(B_1 B_2|A_1)P(A_1)+P(B_1 B_2|A_2)P(A_2)] $
$ =5/2(9/245 dot 1/2+51/145 dot 1/2)=1/4(9/49+51/29) approx 0.486. $
]

#answer("十五、")[
由题设，当 $x<1$ 时，$F(x)=P(X<=x)=0$；

$1<=x<2$ 时，$F(x)=P(X<=x)=P(X=1)=0.2$；

$2<=x<3$ 时，$F(x)=P(X<=x)=P(X=1)+P(X=2)=0.5$；

$x>=3$ 时，$F(x)=P(X<=x)=P(X=1)+P(X=2)+P(X=3)=1$.
故分布函数
$ F(x)=cases(0 & x<1,0.2 & 1<=x<2,0.5 & 2<=x<3,1 & x>=3). $
]

#answer("十六、")[
解　$ E(Y)=E(1/X)=integral_(-infinity)^(+infinity) 1/x f(x)dif x=integral_0^(+infinity) 1/a^2 e^(-x^2/(2a^2))dif x $
$ =1/(2a^2)integral_(-infinity)^(+infinity)e^(-x^2/(2a^2))dif x $
$ =sqrt(2pi)a/(2a^2)integral_(-infinity)^(+infinity)1/(sqrt(2pi)a)e^(-x^2/(2a^2))dif x=sqrt(2pi)/(2a). $

注　此处用到泊松积分 $integral_0^(+infinity)e^(-x^2)dif x=1/2 sqrt(pi)$.
]
