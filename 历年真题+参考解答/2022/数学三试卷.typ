#import "../template.typ": exam
#show: exam.with(year: 2022, subject: "三")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices.with(r-gap: 1.3em)
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)


= 一、选择题：第1—10小题，每小题5分，共50分. 下列每小题给出的四个选项中，只有一个选项是符合题目要求的.

#ezexam.question[
当 $x->0$ 时，$alpha(x),beta(x)$ 是非零无穷小量，给出以下四个命题：

① 若 $alpha(x)~beta(x)$，则 $alpha^2(x)~beta^2(x)$；

② 若 $alpha^2(x)~beta^2(x)$，则 $alpha(x)~beta(x)$；

③ 若 $alpha(x)~beta(x)$，则 $alpha(x)-beta(x)=o(alpha(x))$；

④ 若 $alpha(x)-beta(x)=o(alpha(x))$，则 $alpha(x)~beta(x)$. 其中所有真命题的序号是（　）.
#choices([①③.],[①④.],[①③④.],[②③④.])
]

#ezexam.question[
已知 $a_n=root(n,n)-(-1)^n/n$（$n=1,2,dots$），则数列 $a_n$（　）.
#choices([有最大值，有最小值.],[有最大值，没有最小值.],[没有最大值，有最小值.],[没有最大值，没有最小值.])
]

#ezexam.question[
设函数 $f(t)$ 连续，令 $F(x,y)=integral_0^(x-y)(x-y-t)f(t)dif t$，则（　）.
#choices([$F_x=F_y,F_(x x)=F_(y y)$.],[$F_x=F_y,F_(x x)=-F_(y y)$.],[$F_x=-F_y,F_(x x)=F_(y y)$.],[$F_x=-F_y,F_(x x)=-F_(y y)$.])
]

#ezexam.question[
已知 $I_1=integral_0^1 x/(2(1+cos x))dif x$，$I_2=integral_0^1 ln(1+x)/(1+cos x)dif x$，$I_3=integral_0^1 2x/(1+sin x)dif x$，则（　）.
#choices([$I_1<I_2<I_3$.],[$I_2<I_1<I_3$.],[$I_1<I_3<I_2$.],[$I_3<I_2<I_1$.])
]

#ezexam.question[
设 $A$ 为3阶矩阵，$Lambda=op("diag")(1,-1,0)$，则 $A$ 的特征值为1、−1、0的充分必要条件是（　）.
#choices([存在可逆矩阵 $P,Q$，使得 $A=P Lambda Q$.],[存在可逆矩阵 $P$，使得 $A=P Lambda P^(-1)$.],[存在正交矩阵 $Q$，使得 $A=Q Lambda Q^(-1)$.],[存在可逆矩阵 $P$，使得 $A=P Lambda P^T$.])
]

#ezexam.question[
设矩阵 $A=mat(1,1,1;1,a,a^2;1,b,b^2)$，$bold(b)=(1,2,4)^T$，则线性方程组 $A bold(x)=bold(b)$ 解的情况为（　）.
#choices([无解.],[有解.],[有无穷多解或无解.],[有唯一解或无解.])
]

#ezexam.question[
设 $bold(alpha)_1=(lambda,1,1)^T$，$bold(alpha)_2=(1,lambda,1)^T$，$bold(alpha)_3=(1,1,lambda)^T$，$bold(alpha)_4=(1,lambda,lambda^2)^T$. 若向量组 $bold(alpha)_1,bold(alpha)_2,bold(alpha)_3$ 与 $bold(alpha)_1,bold(alpha)_2,bold(alpha)_4$ 等价，则 $lambda$ 的取值范围是（　）.
#choices([${0,1}$.],[${lambda | lambda in bold(R),lambda!=-2}$.],[${lambda | lambda in bold(R),lambda!=-1,lambda!=-2}$.],[${lambda | lambda in bold(R),lambda!=-1}$.])
]

#ezexam.question[
设随机变量 $X~N(0,4)$，随机变量 $Y~B(3,1/3)$，且 $X$ 与 $Y$ 不相关，则 $D(X-3Y+1)=$（　）.
#choices([$2$.],[$4$.],[$6$.],[$10$.])
]

#ezexam.question[
设随机变量序列 $X_1,X_2,dots,X_n,dots$ 独立同分布，且 $X_1$ 的概率密度为 $f(x)=cases(1-abs(x) & abs(x)<1,0 & "其他")$，则当 $n->infinity$ 时，$1/n sum_(i=1)^n X_i^2$ 依概率收敛于（　）.
#choices([$1/8$.],[$1/6$.],[$1/3$.],[$1/2$.])
]

#ezexam.question[
设二维随机变量 $(X,Y)$ 的概率分布为
#table(columns:4,[$X backslash Y$],[0],[1],[2],[$-1$],[$0.1$],[$0.1$],[$b$],[1],[$a$],[$0.1$],[$0.1$])
若事件 ${max{X,Y}=2}$ 与事件 ${min{X,Y}=1}$ 相互独立，则 $op("Cov")(X,Y)=$（　）.
#choices([$-0.6$.],[$-0.36$.],[$0$.],[$0.48$.])
]


= 二、填空题：第11—16小题，每小题5分，共30分.

#ezexam.question[
求 $lim_(x->0)((1+e^x)/2)^(cot x)=$#fillin[].
]

#ezexam.question[
求 $integral_0^2 (2x-4)/(x^2+2x+4)dif x=$#fillin[].
]

#ezexam.question[
已知函数 $f(x)=e^(sin x)+e^(-sin x)$，则 $f^((3))(2pi)=$#fillin[].
]

#ezexam.question[
已知函数 $f(x)=cases(e^x & 0<=x<=1,0 & "其他")$，则 $integral_(-infinity)^infinity dif x integral_(-infinity)^infinity f(x)f(y-x)dif y=$#fillin[].
]

#ezexam.question[
设 $A$ 为3阶矩阵，交换 $A$ 的第2行和第3行，再将第2列的−1倍加到第1列，得到矩阵 $mat(-2,1,-1;1,-1,0;-1,0,0)$，则 $A^(-1)$ 的迹 $op("tr")(A^(-1))=$#fillin[].
]

#ezexam.question[
设 $A,B,C$ 为随机事件，且 $A$ 与 $B$ 互不相容，$A$ 与 $C$ 互不相容，$B$ 与 $C$ 相互独立，$P(A)=P(B)=P(C)=1/3$，则 $P(B union C | A union B union C)=$#fillin[].
]


= 三、解答题：第17—22小题，共70分. 解答应写出文字说明、证明过程或演算步骤.

#ezexam.question[
（本题满分10分）设函数 $y(x)$ 是微分方程 $y'+1/(2sqrt(x))y=2+sqrt(x)$ 满足条件 $y(1)=3$ 的解，求曲线 $y=y(x)$ 的渐近线.
]

#ezexam.question[
（本题满分12分）设某产品的产量 $Q$ 由资本投入量 $x$ 和劳动投入量 $y$ 决定，生产函数为 $Q=12x^(1/2)y^(1/6)$，该产品的销售单价 $p$ 与 $Q$ 的关系为 $p=1160-1.5Q$. 若单位资本投入和单位劳动投入的价格分别为6和8，求利润最大时的产量.
]

#ezexam.question[
（本题满分12分）已知平面区域 $D={(x,y) | y-2<=x<=sqrt(4-y^2),0<=y<=2}$，计算 $I=integral.double_D (x-y)^2/(x^2+y^2)dif x dif y$.
]

#ezexam.question[
（本题满分12分）求幂级数 $sum_(n=0)^infinity ((-4)^n+1)/(4^n(2n+1))x^(2n)$ 的收敛域及和函数 $S(x)$.
]

#ezexam.question[
（本题满分12分）已知二次型 $f(x_1,x_2,x_3)=3x_1^2+4x_2^2+3x_3^2+2x_1 x_3$.

（1）求正交变换 $bold(x)=Q bold(y)$ 将二次型化为标准形；

（2）证明：$min_(bold(x)!=bold(0))f(bold(x))/(bold(x)^T bold(x))=2$.
]

#ezexam.question[
（本题满分12分）设 $X_1,X_2,dots,X_n$ 为来自均值为 $theta$ 的指数分布总体的简单随机样本，$Y_1,Y_2,dots,Y_m$ 为来自均值为 $2theta$ 的指数分布总体的简单随机样本，且两样本相互独立，其中 $theta>0$ 为未知参数. 利用样本 $X_1,dots,X_n,Y_1,dots,Y_m$，求 $theta$ 的最大似然估计量 $hat(theta)$，并求 $D(hat(theta))$.
]

