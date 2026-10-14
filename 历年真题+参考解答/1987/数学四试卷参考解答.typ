#import "../template.typ": exam, answer
#show: exam.with(year: 1987, subject: "四", title: "1987年全国硕士研究生入学统一考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 1987 数学四试卷参考解答

= 一、判断是非题

#answer("（1）")[
由于 $lim_(x->0^+) e^(1/x)=+infinity$，$lim_(x->0^-) e^(1/x)=0$，故题设错误.

注　此题实际考查函数极限存在的充要条件：左、右极限存在且相等.
]

#answer("（2）")[
此题错，可举反例如下：$f(x)=x^3$ 在 $(-infinity,+infinity)$ 内严格单调增加，但 $f'(x)=3x^2$，$f'(0)=0$.

注　$f'(x)>0$ 是 $f(x)$ 在 $(a,b)$ 内单增的充分而非必要条件.
]

#answer("（3）")[
此题正确，因为被积函数 $f(x)=x^4 sin x$ 在对称区间 $[-pi,pi]$ 上为奇函数，从而积分为零.
]

#answer("（4）")[
解　$ abs(k A)=mat(delim: "|", k a_(11),dots,k a_(1 n);dots,dots,dots;k a_(n 1),dots,k a_(n n))=k^n abs(A), $
故原题设错.

注　$abs(k A)=k^n abs(A)$，这个公式常被用到，也是易出错的地方.
]

#answer("（5）")[
设连续型随机变量 $X$ 的分布函数为 $F(x)$，则对任意实数 $a$，$Delta x>0$，有
$ 0<=P(X=a)<=P(a-Delta x<X<=a)=F(a)-F(a-Delta x). $
由 $F(x)$ 连续性可知，$lim_(Delta x->0) F(a-Delta x)=F(a)$. 从而上式右端趋于0，即有 $P(X=a)=0$.
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
解法一　由于 $A=(A-B) union (A B)$，$(A-B) inter (A B)=emptyset$，由加法公式可得 $P(A)=P(A B)+P(A-B)$，即 $P(A-B)=P(A)-P(A B)$. 因此选 C.

解法二　由文氏图可知 $B=(B-A) union (A B)$，且 $A-B$、$A B$、$B-A$ 互不相容，从而 $A-B=A-(A B)$.
于是 $P(A-B)=P(A)-P(A B)$.
#align(center)[#image("1987-数学四-事件.svg", width: 50mm)]
]
= 解答题

#answer("三、")[
解　$ y=ln(sqrt(1+x^2)-1)-ln(sqrt(1+x^2)+1), $
$ y'=(sqrt(1+x^2)-1)'/(sqrt(1+x^2)-1)-(sqrt(1+x^2)+1)'/(sqrt(1+x^2)+1) $
$ = (2x)/(2sqrt(1+x^2)(sqrt(1+x^2)-1))-(2x)/(2sqrt(1+x^2)(sqrt(1+x^2)+1))=2/(x sqrt(1+x^2)). $

注　复合函数求导，应用公式 $(dif y)/(dif x)=(dif y)/(dif u) dot (dif u)/(dif x)$. 本题也可先有理化，再利用对数性质化简后求导.
]

#answer("四、")[
分析　仅含 $arctan x$ 和 $ln(1+x)$，易想到无穷小代换.

$ "原式"=lim_(x->+infinity)(1/x)/(1/x)=1. $

注　要掌握常见的等价无穷小：$x->0$ 时，
$ x tilde sin x tilde arcsin x tilde tan x tilde arctan x, quad x tilde ln(1+x) tilde e^x-1, $
$ 1-cos x tilde 1/2 x^2, quad (1+x)^alpha-1 tilde alpha x, quad a^x-1 tilde x ln a quad (a>0,a!=1). $
利用等价无穷小代换求极限需注意，代换只能用于乘除运算中，而不能用于加减；必须 $x->0$，上述公式中的 $x$ 位置可以是任意无穷小函数.
]

#answer("五、")[
解　$ integral x/(x^4+2x^2+5)dif x=integral (x dif x)/((x^2+1)^2+4) $
$ =1/2 integral (dif(x^2+1))/((x^2+1)^2+4)=1/4 arctan((1+x^2)/2)+C. $
]

#answer("六、")[
令 $t=sqrt(2x-1)$，则 $x=(t^2+1)/2$，$dif x=t dif t$.
$ integral_(1/2)^1 e^(sqrt(2x-1))dif x=integral_0^1 t e^t dif t=(t-1)e^t|_0^1=1. $
]

#answer("七、")[
分析　先求出成本函数、收益函数、利润函数，然后分别求导，即得相应的边际成本、边际收益、边际利润.

（1）成本函数为 $C(x)=400+3x+1/2 x^2$，所以边际成本 $C'(x)=3+x$.

（2）收益函数为 $R(x)=p x=100/sqrt(x) dot x=100sqrt(x)$，所以边际收益为 $R'(x)=50/sqrt(x)$.

（3）利润函数为 $L(x)=R(x)-C(x)$，所以边际利润为
$ L'(x)=R'(x)-C'(x)=50/sqrt(x)-x-3. $

（4）由 $p=100/sqrt(x)$，解得 $x=10000/p^2$，所以 $R(p)=10000/p$.
于是收益对价格的弹性为 $epsilon=p dot R'(p)/R(p)=-1$.
]

#answer("八、")[
解　$ S(t)=S_1(t)+S_2(t)=integral_0^t(t^2-x^2)dif x+integral_t^1(x^2-t^2)dif x $
$ =(t^2 x-1/3 x^3)|_0^t+(1/3 x^3-t^2 x)|_t^1=4/3 t^3-t^2+1/3. $
令 $S'(t)=4t^2-2t=2t(2t-1)=0$，得 $t=0$ 或 $t=1/2$.
在闭区间 $[0,1]$ 上，有 $S(0)=1/3$，$S(1/2)=1/4$，$S(1)=2/3$，可知当 $t=1/2$ 时，$S$ 取最小值；当 $t=1$ 时，$S$ 取最大值.
]

#answer("九、")[
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

#answer("十、")[
分析　被积函数只含有变量 $x$，应先定 $x$ 后定 $y$，即先对 $y$ 积分后对 $x$ 积分.

$ integral.double_D e^(x^2)dif x dif y=integral_0^1 dif x integral_(x^3)^x e^(x^2)dif y=integral_0^1(x e^(x^2)-x^3 e^(x^2))dif x $
$ =1/2 integral_0^1 e^(x^2)dif x^2-1/2 integral_0^1 x^2 dif e^(x^2)=1/2 e-1. $
]

#answer("十一、")[
分析　首先由矩阵方程分解出因子 $B$.

由等式 $A B=A+2B$ 知 $(A-2E)B=A$，又 $abs(A-2E)!=0$，所以
$ B=(A-2E)^(-1)A=mat(2,2,3;1,-1,0;-1,2,1)^(-1)mat(4,2,3;1,1,0;-1,2,3)=mat(3,-8,-6;2,-9,-6;-2,12,9). $
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

（2）
$ E X=1P(X=1)+2P(X=2)+3P(X=3)=1 times 0.2+2 times 0.3+3 times 0.5=2.3. $
而
$ E(X^2)=1^2 P(X=1)+2^2 P(X=2)+3^2 P(X=3)=1 times 0.2+4 times 0.3+9 times 0.5=5.9. $
从而 $D X=E(X^2)-(E X)^2=5.9-2.3^2=0.61$.
]
