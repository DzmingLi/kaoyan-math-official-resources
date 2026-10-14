#import "../template.typ": exam
#show: exam.with(year: 2026, subject: "三")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices.with(r-gap: 1.3em)
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)


= 一、选择题：第1—10小题，每小题5分，共50分. 下列每小题给出的四个选项中，只有一个选项是符合题目要求的.

#ezexam.question[
曲线 $y=x e^(1/x)$（　）.
#choices([无水平渐近线，无铅直渐近线.],[有水平渐近线，有铅直渐近线.],[无水平渐近线，有铅直渐近线.],[有水平渐近线，无铅直渐近线.])
]

#ezexam.question[
设函数 $z=z(x,y)$ 由方程 $x-a z=e^(y+a z)$（$a$ 是非零常数）确定，则（　）.
#choices([$(partial z)/(partial x)-(partial z)/(partial y)=1/a$],[$(partial z)/(partial x)+(partial z)/(partial y)=1/a$],[$(partial z)/(partial x)-(partial z)/(partial y)=-1/a$],[$(partial z)/(partial x)+(partial z)/(partial y)=-1/a$])
]

#ezexam.question[
已知函数 $f(x)=integral_1^(x^3) e^t/(1+t^2) dif t$，$f$ 的反函数为 $g$，则（　）.
#choices([$g(0)=1,g'(0)=3/2 e$.],[$g(0)=1,g'(0)=2/(3e)$.],[$g(1)=0,g'(1)=3/2 e$.],[$g(1)=0,g'(1)=2/(3e)$.])
]

#ezexam.question[
设 $t$ 时刻某证券的交易单价为 $p(t)$，某机构持有该证券的份额为 $q(t)$.若该机构在 $t in [0,T]$ 持续购入一定份额该证券，则这些证券的平均购入价格为（　）.
#choices([$1/T integral_0^T p(t) dif t$],[$1/(q(T)-q(0)) integral_0^T p(t) dif t$],[$1/T integral_0^T p(t)q'(t) dif t$],[$1/(q(T)-q(0)) integral_0^T p(t)q'(t) dif t$])
]

#ezexam.question[
设矩阵 $A=mat(1,0,1;0,0,1;1,1,3;1,1,1)$，$C=mat(2,0;1,1;1,1;a,b)$.若存在矩阵 $B$ 满足 $A B=C$，则（　）.
#choices([$a=-1,b=-1$.],[$a=2,b=2$.],[$a=-1,b=2$.],[$a=2,b=-1$.])
]

#ezexam.question[
设 $A$ 为3阶非零矩阵，$A^*$ 为 $A$ 的伴随矩阵.若 $A^*=-2A$，则 $A^2=$（　）.
#choices([$mat(-4,0,0;0,-4,0;0,0,-4)$],[$mat(-4,0,0;0,-4,0;0,0,4)$],[$mat(-4,0,0;0,4,0;0,0,4)$],[$mat(4,0,0;0,4,0;0,0,4)$])
]

#ezexam.question[
设3阶矩阵 $A,B$ 满足 $A B+B A=A^2+B^2$，且 $A!=B$，则下列结论错误的是（　）.
#choices([$(A-B)^3=O$.],[$A-B$ 只有零特征值.],[$A,B$ 不能都是对角矩阵.],[$A-B$ 只有一个线性无关的特征向量.])
]

#ezexam.question[
设随机变量 $X$ 和 $Y$ 独立同分布，$X$ 的概率密度为 $f(x)=cases(1/(1+x)^2 & x>0,0 & x<=0)$，则 $P{X Y<=1}=$（　）.
#choices([$3/4$],[$1/2$],[$1/3$],[$1/6$])
]

#ezexam.question[
设随机变量 $X tilde N(0,1)$，随机变量 $Y tilde B(2,1/2)$，且 $X$ 与 $Y$ 独立，则 $X Y$ 与 $X+Y$ 的相关系数为（　）.
#choices([$sqrt(6)/3$],[$sqrt(2)/2$],[$2/3$],[$1/2$])
]

#ezexam.question[
设随机变量 $X$ 的概率分布为 $P{X=k}=1/2^(k+1)+1/3^k$（$k=1,2,dots$），则对于正整数 $m,n$，有（　）.
#choices([$P{X>m+n|X>m}=P{X>m}$.],[$P{X>m+n|X>m}=P{X>n}$.],[$P{X>m+n|X>m}>P{X>m}$.],[$P{X>m+n|X>m}>P{X>n}$.])
]


= 二、填空题：第11—16小题，每小题5分，共30分.

#ezexam.question[
$integral_0^1 x(x-1)(x-1/2) dif x=$#fillin(len: 2.97656em)[].
]

#ezexam.question[
$lim_(x->0) 1/x (sqrt(1+x^2)/(sin x)-1/(tan x))=$#fillin(len: 2.97656em)[].
]

#ezexam.question[
设 $p$ 为常数，若反常积分 $integral_0^(+infinity) arctan x/(x^p(x+1)) dif x$ 收敛，则 $p$ 的取值范围是#fillin(len: 2.97656em)[].
]

#ezexam.question[
微分方程 $y''-2y'=e^x$ 满足条件 $y(0)=1,y'(0)=1$ 的解为 $y=$#fillin(len: 2.97656em)[].
]

#ezexam.question[
设矩阵 $A=mat(1,b,-1;a+2,3,-3a)$.若二次型 $bold(x)^"T"(A A^"T")bold(x)$ 的规范形为 $y_1^2$，则 $a+b=$#fillin(len: 2.97656em)[].
]

#ezexam.question[
设随机变量 $X$ 服从参数为1的泊松分布，随机变量 $Y$ 服从参数为3的泊松分布，$X$ 与 $Y-X$ 相互独立，则 $E(X Y)=$#fillin(len: 2.97656em)[].
]


= 三、解答题：第17—22小题，共70分. 解答应写出文字说明、证明过程或演算步骤.

#ezexam.question[
（本题满分10分）

已知函数 $f(x)$ 满足 $f(x)=1/(2-x)^2-integral_0^1 f(x) dif x$，将 $f(x)$ 展开成 $x$ 的幂级数.
]

#ezexam.question[
（本题满分12分）

已知函数 $g(x)$ 连续.设 $f(x)=integral_0^(x^2) g(x t) dif t$，求 $f'(x)$ 的表达式，并判断 $f'(x)$ 在 $x=0$ 处的连续性.
]

#ezexam.question[
（本题满分10分）

求函数 $f(x,y)=(2x^2-y^2)e^x$ 的极值.
]

#ezexam.question[
（本题满分12分）

设平面区域 $D={(x,y) bar.v 0<=x<=1,0<=y<=1}$，计算二重积分 $integral.double_D y/(1+x^2+y^2)^(3/2) dif x dif y$.
]

#ezexam.question[
（本题满分12分）

已知向量组 $bold(alpha)_1=(1,0,-1,-1)^"T"$，$bold(alpha)_2=(1,-1,0,-2)^"T"$，$bold(alpha)_3=(0,-1,1,-1)^"T"$，$bold(alpha)_4=(0,1,-1,1)^"T"$.记 $A=(bold(alpha)_1,bold(alpha)_2,bold(alpha)_3,bold(alpha)_4)$，$G=(bold(alpha)_1,bold(alpha)_2)$.

（1）证明：$bold(alpha)_1,bold(alpha)_2$ 是向量组的极大线性无关组；

（2）求矩阵 $H$ 使得 $A=G H$，并求 $A^10$.
]

#ezexam.question[
（本题满分12分）

假设某种元件的寿命服从指数分布，其均值 $theta$ 是未知参数.为估计 $theta$，取 $n$ 个这种元件同时做寿命试验，试验到出现 $k$（$1<=k<=n$）个元件失效时停止.

（1）若 $k=1$，失效元件的寿命记为 $T$，（i）求 $T$ 的概率密度；（ii）确定 $a$，使得 $hat(theta)=a T$ 是 $theta$ 的无偏估计，并求 $D(hat(theta))$；

（2）已知 $k$ 个失效元件的寿命值分别为 $t_1,t_2,dots,t_k$，且 $t_1<=t_2<=dots<=t_k$，似然函数为 $L(theta)=1/theta^k e^(-1/theta [sum_(i=1)^k t_i+(n-k)t_k])$，求 $theta$ 的最大似然估计值.
]

