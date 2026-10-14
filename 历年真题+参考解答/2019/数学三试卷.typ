#import "../template.typ": exam
#show: exam.with(year: 2019, subject: "三")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices.with(r-gap: 1.3em)
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)


= 一、选择题：第1—8小题，每小题4分，共32分. 下列每小题给出的四个选项中，只有一个选项是符合题目要求的.

#ezexam.question[
当 $x->0$ 时，若 $x-tan x$ 与 $x^k$ 是同阶无穷小量，则 $k=$（　）.
#choices([$1$.],[$2$.],[$3$.],[$4$.])
]

#ezexam.question[
已知方程 $x^5-5x+k=0$ 有3个不同的实根，则 $k$ 的取值范围是（　）.
#choices([$(-infinity,-4)$.],[$(4,+infinity)$.],[${-4,4}$.],[$(-4,4)$.])
]

#ezexam.question[
已知微分方程 $y''+a y'+b y=c e^x$ 的通解为 $y=(C_1+C_2 x)e^(-x)+e^x$，则 $a,b,c$ 依次为（　）.
#choices([$1,0,1$.],[$1,0,2$.],[$2,1,3$.],[$2,1,4$.])
]

#ezexam.question[
若 $sum_(n=1)^infinity n u_n$ 绝对收敛，$sum_(n=1)^infinity v_n/n$ 条件收敛，则（　）.
#choices([$sum_(n=1)^infinity u_n v_n$ 条件收敛.],[$sum_(n=1)^infinity u_n v_n$ 绝对收敛.],[$sum_(n=1)^infinity(u_n+v_n)$ 收敛.],[$sum_(n=1)^infinity(u_n+v_n)$ 发散.])
]

#ezexam.question[
设 $A$ 是4阶矩阵，$A^*$ 为 $A$ 的伴随矩阵. 若线性方程组 $A bold(x)=bold(0)$ 的基础解系中只有2个向量，则 $r(A^*)=$（　）.
#choices([$0$.],[$1$.],[$2$.],[$3$.])
]

#ezexam.question[
设 $A$ 是3阶实对称矩阵，$E$ 是3阶单位矩阵. 若 $A^2+A=2E$，且 $abs(A)=4$，则二次型 $bold(x)^T A bold(x)$ 的规范形为（　）.
#choices([$y_1^2+y_2^2+y_3^2$.],[$y_1^2+y_2^2-y_3^2$.],[$y_1^2-y_2^2-y_3^2$.],[$-y_1^2-y_2^2-y_3^2$.])
]

#ezexam.question[
设 $A,B$ 为随机事件，则 $P(A)=P(B)$ 的充分必要条件是（　）.
#choices([$P(A union B)=P(A)+P(B)$.],[$P(A B)=P(A)P(B)$.],[$P(A overline(B))=P(overline(A)B)$.],[$P(A B)=P(A overline(B))$.])
]

#ezexam.question[
设随机变量 $X$ 与 $Y$ 相互独立，且都服从正态分布 $N(mu,sigma^2)$，则 $P{abs(X-Y)<1}$（　）.
#choices([与 $mu$ 无关，而与 $sigma$ 有关.],[与 $mu$ 有关，而与 $sigma$ 无关.],[与 $mu,sigma$ 都有关.],[与 $mu,sigma$ 都无关.])
]


= 二、填空题：第9—14小题，每小题4分，共24分.

#ezexam.question[
求 $lim_(n->infinity)[1/(1 dot 2)+1/(2 dot 3)+dots+1/(n(n+1))]^n=$#fillin[].
]

#ezexam.question[
曲线 $y=x sin x+2cos x$（$-pi/2<x<3pi/2$）的拐点坐标为#fillin[].
]

#ezexam.question[
已知函数 $f(x)=integral_1^x sqrt(1+t^4)dif t$，则 $integral_0^1 x^3 f(x)dif x=$#fillin[].
]

#ezexam.question[
以 $p_A,p_B$ 分别表示 $A,B$ 两种商品的价格，设商品 $A$ 的需求函数为 $Q_A=500-p_A^2-p_A p_B+2p_B^2$，则当 $p_A=10,p_B=20$ 时，商品 $A$ 的需求量对自身价格的弹性 $eta_(A A)$（$eta_(A A)>0$）为#fillin[].
]

#ezexam.question[
已知矩阵 $A=mat(1,0,-1;1,1,-1;0,1,a^2-1)$，$bold(b)=(0,1,a)^T$. 若线性方程组 $A bold(x)=bold(b)$ 有无穷多个解，则 $a=$#fillin[].
]

#ezexam.question[
设随机变量 $X$ 的概率密度为 $f(x)=cases(x/2 & 0<x<2,0 & "其他")$，$F(x)$ 为 $X$ 的分布函数，$E X$ 为 $X$ 的数学期望，则 $P{F(X)>E X-1}=$#fillin[].
]


= 三、解答题：第15—23小题，共94分. 解答应写出文字说明、证明过程或演算步骤.

#ezexam.question[
（本题满分10分）已知函数 $f(x)=cases(x^(2x) & x>0,x e^x+1 & x<=0)$，求 $f'(x)$，并求 $f(x)$ 的极值.
]

#ezexam.question[
（本题满分10分）设函数 $f(u,v)$ 具有二阶连续偏导数，函数 $g(x,y)=x y-f(x+y,x-y)$，求 $(partial^2 g)/(partial x^2)+(partial^2 g)/(partial x partial y)+(partial^2 g)/(partial y^2)$.
]

#ezexam.question[
（本题满分10分）设函数 $y(x)$ 是微分方程 $y'-x y=1/(2sqrt(x))e^(x^2/2)$ 满足条件 $y(1)=sqrt(e)$ 的特解.

（1）求 $y(x)$；

（2）设平面区域 $D={(x,y) | 1<=x<=2,0<=y<=y(x)}$，求 $D$ 绕 $x$ 轴旋转所得旋转体的体积.
]

#ezexam.question[
（本题满分10分）求由曲线 $y=e^(-x)sin x$（$x>=0$）与 $x$ 轴之间图形的面积.
]

#ezexam.question[
（本题满分10分）设 $a_n=integral_0^1 x^n sqrt(1-x^2)dif x$（$n=0,1,2,dots$）.

（1）证明：数列 $a_n$ 单调减少，且 $a_n=(n-1)/(n+2)a_(n-2)$（$n=2,3,dots$）；

（2）求 $lim_(n->infinity)a_n/a_(n-1)$.
]

#ezexam.question[
（本题满分11分）已知向量组Ⅰ：$bold(alpha)_1=(1,1,4)^T$，$bold(alpha)_2=(1,0,4)^T$，$bold(alpha)_3=(1,2,a^2+3)^T$；向量组Ⅱ：$bold(beta)_1=(1,1,a+3)^T$，$bold(beta)_2=(0,2,1-a)^T$，$bold(beta)_3=(1,3,a^2+3)^T$. 若向量组Ⅰ与向量组Ⅱ等价，求 $a$ 的取值，并将 $bold(beta)_3$ 用 $bold(alpha)_1,bold(alpha)_2,bold(alpha)_3$ 线性表示.
]

#ezexam.question[
（本题满分11分）已知矩阵 $A=mat(-2,-2,1;2,x,-2;0,0,-2)$ 与 $B=mat(2,1,0;0,-1,0;0,0,y)$ 相似.

（1）求 $x,y$；

（2）求可逆矩阵 $P$ 使得 $P^(-1)A P=B$.
]

#ezexam.question[
（本题满分11分）设随机变量 $X$ 与 $Y$ 相互独立，$X$ 服从参数为1的指数分布，$Y$ 的概率分布为 $P{Y=-1}=p,P{Y=1}=1-p$（$0<p<1$）. 令 $Z=X Y$.

（1）求 $Z$ 的概率密度；

（2）$p$ 为何值时，$X$ 与 $Z$ 不相关？

（3）$X$ 与 $Z$ 是否相互独立？
]

#ezexam.question[
（本题满分11分）设总体 $X$ 的概率密度为 $f(x;sigma^2)=cases(A/sigma e^(-(x-mu)^2/(2sigma^2)) & x>=mu,0 & x<mu)$，其中 $mu$ 是已知参数，$sigma>0$ 是未知参数，$A$ 是常数. $X_1,X_2,dots,X_n$ 是来自总体 $X$ 的简单随机样本.

（1）求 $A$；

（2）求 $sigma^2$ 的最大似然估计量.
]

