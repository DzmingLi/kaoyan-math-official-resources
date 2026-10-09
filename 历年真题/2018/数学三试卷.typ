#import "../template.typ": exam
#show: exam.with(year: 2018, subject: "三")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)


= 一、选择题：1—8小题，每小题4分，共32分. 在每小题给出的四个选项中，只有一项符合题目要求，把所选项前的字母填在题后的括号内.

#ezexam.question[
下列函数中，在 $x=0$ 处不可导的是（　）.
#choices([$f(x)=abs(x) sin abs(x)$], [$f(x)=abs(x) sin sqrt(abs(x))$], [$f(x)=cos abs(x)$], [$f(x)=cos sqrt(abs(x))$])
]

#ezexam.question[
设函数 $f(x)$ 在 $[0,1]$ 上二阶可导，且 $integral_0^1 f(x) dif x=0$，则（　）.
#choices([当 $f'(x)<0$ 时，$f(1/2)<0$.], [当 $f''(x)<0$ 时，$f(1/2)<0$.], [当 $f'(x)>0$ 时，$f(1/2)<0$.], [当 $f''(x)>0$ 时，$f(1/2)<0$.])
]

#ezexam.question[
设 $M=integral_(-pi/2)^(pi/2) (1+x)^2/(1+x^2) dif x$，$N=integral_(-pi/2)^(pi/2) (1+x)/e^x dif x$，$K=integral_(-pi/2)^(pi/2) (1+sqrt(cos x)) dif x$，则（　）.
#choices([$M>N>K$], [$M>K>N$], [$K>M>N$], [$K>N>M$])
]

#ezexam.question[
设某产品的成本函数 $C(Q)$ 可导，其中 $Q$ 为产量.若产量为 $Q_0$ 时平均成本最小，则（　）.
#choices([$C'(Q_0)=0$], [$C'(Q_0)=C(Q_0)$], [$C'(Q_0)=Q_0 C(Q_0)$], [$Q_0 C'(Q_0)=C(Q_0)$])
]

#ezexam.question[
下列矩阵中，与矩阵 $mat(1,1,0;0,1,1;0,0,1)$ 相似的为（　）.
#choices([$mat(1,1,-1;0,1,1;0,0,1)$], [$mat(1,0,-1;0,1,1;0,0,1)$], [$mat(1,1,-1;0,1,0;0,0,1)$], [$mat(1,0,-1;0,1,0;0,0,1)$])
]

#ezexam.question[
设 $A,B$ 为 $n$ 阶矩阵，记 $r(X)$ 为矩阵 $X$ 的秩，$(X quad Y)$ 表示分块矩阵，则（　）.
#choices([$r(A quad A B)=r(A)$], [$r(A quad B A)=r(A)$], [$r(A quad B)=max{r(A),r(B)}$], [$r(A quad B)=r(A^"T" B^"T")$])
]

#ezexam.question[
设随机变量 $X$ 的概率密度 $f(x)$ 满足 $f(1+x)=f(1-x)$，且 $integral_0^2 f(x) dif x=0.6$，则 $P{X<0}=$（　）.
#choices([0.2], [0.3], [0.4], [0.5])
]

#ezexam.question[
设 $X_1,X_2,dots,X_n$（$n>=2$）为来自总体 $N(mu,sigma^2)$（$sigma>0$）的简单随机样本.令 $overline(X)=1/n sum_(i=1)^n X_i$，$S=sqrt(1/(n-1) sum_(i=1)^n (X_i-overline(X))^2)$，$S^*=sqrt(1/n sum_(i=1)^n (X_i-mu)^2)$，则（　）.
#choices([$sqrt(n)(overline(X)-mu)/S tilde.op t(n)$], [$sqrt(n)(overline(X)-mu)/S tilde.op t(n-1)$], [$sqrt(n)(overline(X)-mu)/(S^*) tilde.op t(n)$], [$sqrt(n)(overline(X)-mu)/(S^*) tilde.op t(n-1)$])
]

= 二、填空题：9—14小题，每小题4分，共24分. 把答案填在题中横线上.

#ezexam.question[
曲线 $y=x^2+2ln x$ 在其拐点处的切线方程是#fillin(len: 2.97656em)[].
]

#ezexam.question[
$integral e^x arcsin sqrt(1-e^(2x)) dif x=$#fillin(len: 2.97656em)[].
]

#ezexam.question[
差分方程 $Delta^2 y_x-y_x=5$ 的通解为#fillin(len: 2.97656em)[].
]

#ezexam.question[
设函数 $f(x)$ 满足 $f(x+Delta x)-f(x)=2x f(x)Delta x+o(Delta x)$（$Delta x->0$），且 $f(0)=2$，则 $f(1)=$#fillin(len: 2.97656em)[].
]

#ezexam.question[
设 $A$ 为 3 阶矩阵，$alpha_1,alpha_2,alpha_3$ 是线性无关的向量组.若 $A alpha_1=alpha_1+alpha_2$，$A alpha_2=alpha_2+alpha_3$，$A alpha_3=alpha_1+alpha_3$，则 $|A|=$#fillin(len: 2.97656em)[].
]

#ezexam.question[
随机事件 $A,B,C$ 相互独立，且 $P(A)=P(B)=P(C)=1/2$，则 $P(A C bar.v A union B)=$#fillin(len: 2.97656em)[].
]

= 三、解答题：15—23小题，共94分. 解答应写出文字说明、证明过程或演算步骤.

#ezexam.question[
（本题满分 10 分）

已知实数 $a,b$ 满足 $lim_(x->+infinity) [(a x+b)e^(1/x)-x]=2$，求 $a,b$.
]

#ezexam.question[
（本题满分 10 分）

设平面区域 $D$ 由曲线 $y=sqrt(3(1-x^2))$ 与直线 $y=sqrt(3)x$ 及 $y$ 轴围成，计算二重积分 $integral.double_D x^2 dif x dif y$.
]

#ezexam.question[
（本题满分 10 分）

将长为 2 m 的铁丝分成三段，依次围成圆、正方形与正三角形.三个图形的面积之和是否存在最小值？若存在，求出最小值.
]

#ezexam.question[
（本题满分 10 分）

已知 $cos 2x-1/(1+x)^2=sum_(n=0)^infinity a_n x^n$（$-1<x<1$），求 $a_n$.
]

#ezexam.question[
（本题满分 10 分）

设数列 $\{x_n\}$ 满足：$x_1>0$，$x_n e^(x_(n+1))=e^(x_n)-1$（$n=1,2,dots$）.证明 $\{x_n\}$ 收敛，并求 $lim_(n->infinity) x_n$.
]

#ezexam.question[
（本题满分 11 分）

设实二次型 $f(x_1,x_2,x_3)=(x_1-x_2+x_3)^2+(x_2+x_3)^2+(x_1+a x_3)^2$，其中 $a$ 是参数.

（Ⅰ）求 $f(x_1,x_2,x_3)=0$ 的解；

（Ⅱ）求 $f(x_1,x_2,x_3)$ 的规范形.
]

#ezexam.question[
（本题满分 11 分）

已知 $a$ 是常数，且矩阵 $A=mat(1,2,a;1,3,0;2,7,-a)$ 可经初等列变换化为矩阵 $B=mat(1,a,2;0,1,1;-1,1,1)$.

（Ⅰ）求 $a$；

（Ⅱ）求满足 $A P=B$ 的可逆矩阵 $P$.
]

#ezexam.question[
（本题满分 11 分）

设随机变量 $X$ 与 $Y$ 相互独立，$X$ 的概率分布为 $P{X=1}=P{X=-1}=1/2$，$Y$ 服从参数为 $lambda$ 的泊松分布.令 $Z=X Y$.

（Ⅰ）求 $op("Cov")(X,Z)$；

（Ⅱ）求 $Z$ 的概率分布.
]

#ezexam.question[
（本题满分 11 分）

设总体 $X$ 的概率密度为
$ f(x;sigma)=1/(2sigma)e^(-abs(x)/sigma),quad -infinity<x<+infinity, $
其中 $sigma in (0,+infinity)$ 为未知参数，$X_1,X_2,dots,X_n$ 为来自总体 $X$ 的简单随机样本.记 $sigma$ 的最大似然估计量为 $hat(sigma)$.

（Ⅰ）求 $hat(sigma)$；

（Ⅱ）求 $E hat(sigma)$ 和 $D hat(sigma)$.
]

