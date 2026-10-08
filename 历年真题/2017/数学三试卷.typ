#import "../template.typ": exam
#show: exam.with(year: 2017, subject: "三")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)


= 一、选择题：1—8小题，每小题4分，共32分.在每小题给出的四个选项中，只有一项符合题目要求，把所选项前的字母填在题后的括号内.

#ezexam.question[
若函数 $f(x)=cases((1-cos sqrt(x))/(a x)&x>0,b&x<=0)$ 在 $x=0$ 处连续，则（　）.
#choices([$a b=1/2$],[$a b=-1/2$],[$a b=0$],[$a b=2$])
]

#ezexam.question[
二元函数 $z=x y(3-x-y)$ 的极值点是（　）.
#choices([$(0,0)$],[$(0,3)$],[$(3,0)$],[$(1,1)$])
]

#ezexam.question[
设函数 $f(x)$ 可导，且 $f(x)f'(x)>0$，则（　）.
#choices([$f(1)>f(-1)$],[$f(1)<f(-1)$],[$abs(f(1))>abs(f(-1))$],[$abs(f(1))<abs(f(-1))$])
]

#ezexam.question[
若级数 $sum_(n=2)^infinity[sin(1/n)-k ln(1-1/n)]$ 收敛，则 $k=$（　）.
#choices([1.],[2.],[$-1$.],[$-2$.])
]

#ezexam.question[
设 $alpha$ 为 $n$ 维单位列向量，$E$ 为 $n$ 阶单位矩阵，则（　）.
#choices([$E-alpha alpha^T$ 不可逆.],[$E+alpha alpha^T$ 不可逆.],[$E+2alpha alpha^T$ 不可逆.],[$E-2alpha alpha^T$ 不可逆.])
]

#ezexam.question[
已知矩阵 $A=mat(2,0,0;0,2,1;0,0,1)$，$B=mat(2,1,0;0,2,0;0,0,1)$，$C=mat(1,0,0;0,2,0;0,0,2)$，则（　）.
#choices([$A$ 与 $C$ 相似，$B$ 与 $C$ 相似.],[$A$ 与 $C$ 相似，$B$ 与 $C$ 不相似.],[$A$ 与 $C$ 不相似，$B$ 与 $C$ 相似.],[$A$ 与 $C$ 不相似，$B$ 与 $C$ 不相似.])
]

#ezexam.question[
设 $A,B,C$ 为三个随机事件，且 $A$ 与 $C$ 相互独立，$B$ 与 $C$ 相互独立，则 $A union B$ 与 $C$ 相互独立的充分必要条件是（　）.
#choices([$A$ 与 $B$ 相互独立.],[$A$ 与 $B$ 互不相容.],[$A B$ 与 $C$ 相互独立.],[$A B$ 与 $C$ 互不相容.])
]

#ezexam.question[
设 $X_1,X_2,dots,X_n$（$n>=2$）为来自总体 $N(mu,1)$ 的简单随机样本，记 $overline(X)=1/n sum_(i=1)^n X_i$，则下列结论中不正确的是（　）.
#choices([$sum_(i=1)^n (X_i-mu)^2$ 服从 $chi^2$ 分布.],[$2(X_n-X_1)^2$ 服从 $chi^2$ 分布.],[$sum_(i=1)^n (X_i-overline(X))^2$ 服从 $chi^2$ 分布.],[$n(overline(X)-mu)^2$ 服从 $chi^2$ 分布.])
]

= 二、填空题：9—14小题，每小题4分，共24分.把答案填在题中横线上.

#ezexam.question[
$integral_(-pi)^pi (sin^3 x+sqrt(pi^2-x^2))dif x=$#fillin(len: 4em)[].
]

#ezexam.question[
差分方程 $y_(t+1)-2y_t=2^t$ 的通解为 $y_t=$#fillin(len: 4em)[].
]

#ezexam.question[
设生产某产品的平均成本 $overline(C)(Q)=1+e^(-Q)$，其中 $Q$ 为产量，则边际成本为#fillin(len: 4em)[].
]

#ezexam.question[
设函数 $f(x,y)$ 具有一阶连续偏导数，且 $dif f(x,y)=y e^y dif x+x(1+y)e^y dif y$，$f(0,0)=0$，则 $f(x,y)=$#fillin(len: 4em)[].
]

#ezexam.question[
设矩阵 $A=mat(1,0,1;1,1,2;0,1,1)$，$alpha_1,alpha_2,alpha_3$ 为线性无关的3维列向量组，则向量组 $A alpha_1,A alpha_2,A alpha_3$ 的秩为#fillin(len: 4em)[].
]

#ezexam.question[
设随机变量 $X$ 的概率分布为 $P{X=-2}=1/2$，$P{X=1}=a$，$P{X=3}=b$.若 $E X=0$，则 $D X=$#fillin(len: 4em)[].
]

= 三、解答题：15—23小题，共94分.解答应写出文字说明、证明过程或演算步骤.

#ezexam.question[
（本题满分10分）
求 $lim_(x->0^+)(integral_0^x sqrt(x-t)e^t dif t)/sqrt(x^3)$.
]

#ezexam.question[
（本题满分10分）
计算积分 $integral.double_D y^3/(1+x^2+y^4)^2 dif x dif y$，其中 $D$ 是第一象限中以曲线 $y=sqrt(x)$ 与 $x$ 轴为边界的无界区域.
]

#ezexam.question[
（本题满分10分）
求 $lim_(n->+infinity)sum_(k=1)^n k/n^2 ln(1+k/n)$.
]

#ezexam.question[
（本题满分10分）
已知方程 $1/ln(1+x)-1/x=k$ 在区间 $(0,1)$ 内有实根，确定常数 $k$ 的取值范围.
]

#ezexam.question[
（本题满分10分）
设 $a_0=1$，$a_1=0$，$a_(n+1)=1/(n+1)(n a_n+a_(n-1))$（$n=1,2,3,dots$），$S(x)$ 为幂级数 $sum_(n=0)^infinity a_n x^n$ 的和函数.

（Ⅰ）证明幂级数 $sum_(n=0)^infinity a_n x^n$ 的收敛半径不小于1；

（Ⅱ）证明 $(1-x)S'(x)-x S(x)=0$（$x in (-1,1)$），并求 $S(x)$ 的表达式.
]

#ezexam.question[
（本题满分11分）
设3阶矩阵 $A=(alpha_1,alpha_2,alpha_3)$ 有3个不同的特征值，且 $alpha_3=alpha_1+2alpha_2$.

（Ⅰ）证明 $r(A)=2$；

（Ⅱ）若 $beta=alpha_1+alpha_2+alpha_3$，求方程组 $A x=beta$ 的通解.
]

#ezexam.question[
（本题满分11分）
设二次型 $f(x_1,x_2,x_3)=2x_1^2-x_2^2+a x_3^2+2x_1 x_2-8x_1 x_3+2x_2 x_3$ 在正交变换 $x=Q y$ 下的标准形为 $lambda_1 y_1^2+lambda_2 y_2^2$，求 $a$ 的值及一个正交矩阵 $Q$.
]

#ezexam.question[
（本题满分11分）
设随机变量 $X,Y$ 相互独立，且 $X$ 的概率分布为 $P{X=0}=P{X=2}=1/2$，$Y$ 的概率密度为 $f(y)=cases(2y&0<y<1,0&"其他")$.

（Ⅰ）求 $P{Y<=E Y}$；

（Ⅱ）求 $Z=X+Y$ 的概率密度.
]

#ezexam.question[
（本题满分11分）
某工程师为了解一台天平的精度，用该天平对一物体的质量做 $n$ 次测量，该物体的质量 $mu$ 是已知的.设 $n$ 次测量结果 $X_1,X_2,dots,X_n$ 相互独立且均服从正态分布 $N(mu,sigma^2)$，该工程师记录的是 $n$ 次测量的绝对误差 $Z_i=abs(X_i-mu)$（$i=1,2,dots,n$）.利用 $Z_1,Z_2,dots,Z_n$ 估计 $sigma$.

（Ⅰ）求 $Z_1$ 的概率密度；

（Ⅱ）利用一阶矩求 $sigma$ 的矩估计量；

（Ⅲ）求 $sigma$ 的最大似然估计量.
]

