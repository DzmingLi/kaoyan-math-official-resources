#import "../template.typ": exam
#show: exam.with(year: 2010, subject: "一", title: "2010年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)


= 一、选择题：1—8小题，每小题4分，共32分. 在每小题给出的四个选项中，只有一项符合题目要求，把所选项前的字母填在题后的括号内.

#ezexam.question[
极限 $lim_(x->infinity)[x^2/((x-a)(x+b))]^x=$
#choices([1.],[$e$.],[$e^(a-b)$.],[$e^(b-a)$.])
]

#ezexam.question[
设函数 $z=z(x,y)$ 由方程 $F(y/x,z/x)=0$ 确定，其中 $F$ 为可微函数，且 $F'_2!=0$，则 $x(partial z)/(partial x)+y(partial z)/(partial y)=$
#choices([$x$.],[$z$.],[$-x$.],[$-z$.])
]

#ezexam.question[
设 $m,n$ 均是正整数，则反常积分 $integral_0^1 (root(m,ln^2(1-x)))/(root(n,x))dif x$ 的收敛性
#choices([仅与 $m$ 的取值有关.],[仅与 $n$ 的取值有关.],[与 $m,n$ 的取值都有关.],[与 $m,n$ 的取值都无关.])
]

#ezexam.question[
$lim_(n->infinity)sum_(i=1)^n sum_(j=1)^n n/((n+i)(n^2+j^2))=$
#choices([$integral_0^1 dif x integral_0^x 1/((1+x)(1+y^2))dif y$.],[$integral_0^1 dif x integral_0^x 1/((1+x)(1+y))dif y$.],[$integral_0^1 dif x integral_0^1 1/((1+x)(1+y))dif y$.],[$integral_0^1 dif x integral_0^1 1/((1+x)(1+y^2))dif y$.])
]

#ezexam.question[
设 $A$ 为 $m times n$ 矩阵，$B$ 为 $n times m$ 矩阵，$E$ 为 $m$ 阶单位矩阵.若 $A B=E$，则
#choices([秩 $r(A)=m$，秩 $r(B)=m$.],[秩 $r(A)=m$，秩 $r(B)=n$.],[秩 $r(A)=n$，秩 $r(B)=m$.],[秩 $r(A)=n$，秩 $r(B)=n$.])
]

#ezexam.question[
设 $A$ 为4阶实对称矩阵，且 $A^2+A=O$.若 $A$ 的秩为3，则 $A$ 相似于
#choices([$mat(1,0,0,0;0,1,0,0;0,0,1,0;0,0,0,0)$.],[$mat(1,0,0,0;0,1,0,0;0,0,-1,0;0,0,0,0)$.],[$mat(1,0,0,0;0,-1,0,0;0,0,-1,0;0,0,0,0)$.],[$mat(-1,0,0,0;0,-1,0,0;0,0,-1,0;0,0,0,0)$.])
]

#ezexam.question[
设随机变量 $X$ 的分布函数 $F(x)=cases(0 quad x<0,1/2 quad 0<=x<1,1-e^(-x) quad x>=1)$，则 $P{X=1}=$
#choices([0.],[$1/2$.],[$1/2-e^(-1)$.],[$1-e^(-1)$.])
]

#ezexam.question[
设 $f_1(x)$ 为标准正态分布的概率密度，$f_2(x)$ 为 $[-1,3]$ 上均匀分布的概率密度，若 $f(x)=cases(a f_1(x) quad x<=0,b f_2(x) quad x>0)(a>0,b>0)$ 为概率密度，则 $a,b$ 应满足
#choices([$2a+3b=4$.],[$3a+2b=4$.],[$a+b=1$.],[$a+b=2$.])
]

= 二、填空题：9—14小题，每小题4分，共24分. 把答案填在题中横线上.

#ezexam.question[
设 $cases(x=e^(-t),y=integral_0^t ln(1+u^2)dif u)$，则 $(dif^2 y)/(dif x^2)|_(t=0)=$ #fillin(len: 1.98438em)[].
]

#ezexam.question[
$integral_0^(pi^2)sqrt(x)cos sqrt(x)dif x=$ #fillin(len: 1.98438em)[].
]

#ezexam.question[
已知曲线 $L$ 的方程为 $y=1-|x|(x in[-1,1])$，起点是 $(-1,0)$，终点为 $(1,0)$，则曲线积分 $integral_L x y dif x+x^2 dif y=$ #fillin(len: 1.98438em)[].
]

#ezexam.question[
设 $Omega={(x,y,z)|x^2+y^2<=z<=1}$，则 $Omega$ 的形心的竖坐标 $overline(z)=$ #fillin(len: 1.98438em)[].
]

#ezexam.question[
设 $alpha_1=(1,2,-1,0)^T,alpha_2=(1,1,0,2)^T,alpha_3=(2,1,1,a)^T$.若由 $alpha_1,alpha_2,alpha_3$ 生成的向量空间的维数为2，则 $a=$ #fillin(len: 1.98438em)[].
]

#ezexam.question[
设随机变量 $X$ 的概率分布为 $P{X=k}=C/(k!),k=0,1,2,dots$，则 $E X^2=$ #fillin(len: 1.98438em)[].
]

= 三、解答题：15—23小题，共94分. 解答应写出文字说明、证明过程或演算步骤.

#ezexam.question[
（本题满分10分）求微分方程 $y''-3y'+2y=2x e^x$ 的通解.
]

#ezexam.question[
（本题满分10分）求函数 $f(x)=integral_1^(x^2)(x^2-t)e^(-t^2)dif t$ 的单调区间与极值.
]

#ezexam.question[
（本题满分10分）

（Ⅰ）比较 $integral_0^1|ln t[ln(1+t)]^n|dif t$ 与 $integral_0^1 t^n|ln t|dif t(n=1,2,dots)$ 的大小，说明理由；

（Ⅱ）记 $u_n=integral_0^1|ln t[ln(1+t)]^n|dif t(n=1,2,dots)$，求极限 $lim_(n->infinity)u_n$.
]

#ezexam.question[
（本题满分10分）求幂级数 $sum_(n=1)^infinity((-1)^(n-1))/(2n-1)x^(2n)$ 的收敛域及和函数.
]

#ezexam.question[
（本题满分10分）设 $P$ 为椭球面 $S:x^2+y^2+z^2-y z=1$ 上的动点，若 $S$ 在点 $P$ 处的切平面与 $x O y$ 面垂直，求点 $P$ 的轨迹 $C$，并计算曲面积分 $I=integral.double_Sigma ((x+sqrt(3))|y-2z|)/(sqrt(4+y^2+z^2-4y z))dif S$，其中 $Sigma$ 是椭球面 $S$ 位于曲线 $C$ 上方的部分.
]

#ezexam.question[
（本题满分11分）设 $A=mat(lambda,1,1;0,lambda-1,0;1,1,lambda),bold(b)=mat(a;1;1)$.已知线性方程组 $A bold(x)=bold(b)$ 存在2个不同的解，

（Ⅰ）求 $lambda,a$；

（Ⅱ）求方程组 $A bold(x)=bold(b)$ 的通解.
]

#ezexam.question[
（本题满分11分）已知二次型 $f(x_1,x_2,x_3)=bold(x)^T A bold(x)$ 在正交变换 $bold(x)=Q bold(y)$ 下的标准形为 $y_1^2+y_2^2$，且 $Q$ 的第3列为 $(sqrt(2)/2,0,sqrt(2)/2)^T$.

（Ⅰ）求矩阵 $A$；

（Ⅱ）证明 $A+E$ 为正定矩阵，其中 $E$ 为3阶单位矩阵.
]

#ezexam.question[
（本题满分11分）设二维随机变量 $(X,Y)$ 的概率密度为 $f(x,y)=A e^(-2x^2+2x y-y^2),-infinity<x<+infinity,-infinity<y<+infinity$，求常数 $A$ 及条件概率密度 $f_(Y|X)(y|x)$.
]

#ezexam.question[
（本题满分11分）设总体 $X$ 的概率分布为
#table(columns:4,[$X$],[1],[2],[3],[$P$],[$1-theta$],[$theta-theta^2$],[$theta^2$])
其中参数 $theta in(0,1)$ 未知.以 $N_i$ 表示来自总体 $X$ 的简单随机样本（样本容量为 $n$）中等于 $i$ 的个数 $(i=1,2,3)$.试求常数 $a_1,a_2,a_3$，使 $T=sum_(i=1)^3 a_i N_i$ 为 $theta$ 的无偏估计量，并求 $T$ 的方差.
]

