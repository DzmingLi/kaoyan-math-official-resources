#import "../template.typ": exam
#show: exam.with(year: 2012, subject: "三", title: "2012年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#ezexam.answer-state.update(true)


= 一、选择题：1—8小题，每小题4分，共32分. 在每小题给出的四个选项中，只有一项符合题目要求，把所选项前的字母填在题后的括号内.

#ezexam.question[
曲线 $y=(x^2+x)/(x^2-1)$ 的渐近线的条数为
#choices([0.],[1.],[2.],[3.])
#ezexam.solution(show-number: false)[
C.
]
]

#ezexam.question[
设函数 $f(x)=(e^x-1)(e^(2x)-2) dots (e^(n x)-n)$，其中 $n$ 为正整数，则 $f'(0)=$
#choices([$(-1)^(n-1)(n-1)!$.],[$(-1)^n(n-1)!$.],[$(-1)^(n-1)n!$.],[$(-1)^n n!$.])
#ezexam.solution(show-number: false)[
A.
]
]

#ezexam.question[
设函数 $f(t)$ 连续，则二次积分 $integral_0^(pi/2)dif theta integral_(2cos theta)^2 f(r^2)r dif r=$
#choices([$integral_0^2 dif x integral_sqrt(2x-x^2)^sqrt(4-x^2)sqrt(x^2+y^2)f(x^2+y^2)dif y$.],[$integral_0^2 dif x integral_sqrt(2x-x^2)^sqrt(4-x^2)f(x^2+y^2)dif y$.],[$integral_0^2 dif y integral_(1+sqrt(1-y^2))^sqrt(4-y^2)sqrt(x^2+y^2)f(x^2+y^2)dif x$.],[$integral_0^2 dif y integral_(1+sqrt(1-y^2))^sqrt(4-y^2)f(x^2+y^2)dif x$.])
#ezexam.solution(show-number: false)[
B.
]
]

#ezexam.question[
已知级数 $sum_(n=1)^infinity(-1)^n sqrt(n)sin(1/n^alpha)$ 绝对收敛，级数 $sum_(n=1)^infinity(-1)^n/n^(2-alpha)$ 条件收敛，则
#choices([$0<alpha<=1/2$.],[$1/2<alpha<=1$.],[$1<alpha<=3/2$.],[$3/2<alpha<2$.])
#ezexam.solution(show-number: false)[
D.
]
]

#ezexam.question[
设 $alpha_1=mat(0;0;c_1),alpha_2=mat(0;1;c_2),alpha_3=mat(1;-1;c_3),alpha_4=mat(-1;1;c_4)$，其中 $c_1,c_2,c_3,c_4$ 为任意常数，则下列向量组线性相关的为
#choices([$alpha_1,alpha_2,alpha_3$.],[$alpha_1,alpha_2,alpha_4$.],[$alpha_1,alpha_3,alpha_4$.],[$alpha_2,alpha_3,alpha_4$.])
#ezexam.solution(show-number: false)[
C.
]
]

#ezexam.question[
设 $A$ 为3阶矩阵，$P$ 为3阶可逆矩阵，且 $P^(-1)A P=mat(1,0,0;0,1,0;0,0,2)$.若 $P=(alpha_1,alpha_2,alpha_3),Q=(alpha_1+alpha_2,alpha_2,alpha_3)$，则 $Q^(-1)A Q=$
#choices([$mat(1,0,0;0,2,0;0,0,1)$.],[$mat(1,0,0;0,1,0;0,0,2)$.],[$mat(2,0,0;0,1,0;0,0,2)$.],[$mat(2,0,0;0,2,0;0,0,1)$.])
#ezexam.solution(show-number: false)[
B.
]
]

#ezexam.question[
设随机变量 $X$ 与 $Y$ 相互独立，且都服从区间 $(0,1)$ 上的均匀分布，则 $P{X^2+Y^2<=1}=$
#choices([$1/4$.],[$1/2$.],[$pi/8$.],[$pi/4$.])
#ezexam.solution(show-number: false)[
D.
]
]

#ezexam.question[
设 $X_1,X_2,X_3,X_4$ 为来自总体 $N(1,sigma^2) (sigma>0)$ 的简单随机样本，则统计量 $(X_1-X_2)/(|X_3+X_4-2|)$ 的分布为
#choices([$N(0,1)$.],[$t(1)$.],[$chi^2(1)$.],[$F(1,1)$.])
#ezexam.solution(show-number: false)[
B.
]
]

= 二、填空题：9—14小题，每小题4分，共24分. 把答案填在题中横线上.

#ezexam.question[
$lim_(x->pi/4)(tan x)^(1/(cos x-sin x))=$#h(3em).
#ezexam.solution(show-number: false)[
$e^(-sqrt(2))$.
]
]

#ezexam.question[
设函数 $f(x)=cases(ln sqrt(x) & x>=1,2x-1 & x<1),y=f(f(x))$，则 $lr((dif y)/(dif x))|_(x=e)=$#h(3em).
#ezexam.solution(show-number: false)[
$1/e$.
]
]

#ezexam.question[
设连续函数 $z=f(x,y)$ 满足 $lim_((x,y)->(0,1))(f(x,y)-2x+y-2)/sqrt(x^2+(y-1)^2)=0$，则 $lr(dif z)|_(0,1)=$#h(3em).
#ezexam.solution(show-number: false)[
$2dif x-dif y$.
]
]

#ezexam.question[
由曲线 $y=4/x$ 和直线 $y=x$ 及 $y=4x$ 在第一象限中围成的平面图形的面积为#h(3em).
#ezexam.solution(show-number: false)[
$4ln 2$.
]
]

#ezexam.question[
设 $A$ 为3阶矩阵，$|A|=3,A^*$ 为 $A$ 的伴随矩阵.若交换 $A$ 的第1行与第2行得矩阵 $B$，则 $|B A^*|=$#h(3em).
#ezexam.solution(show-number: false)[
$-27$.
]
]

#ezexam.question[
设 $A,B,C$ 是随机事件，$A$ 与 $C$ 互不相容，$P(A B)=1/2,P(C)=1/3$，则 $P(A B|overline(C))=$#h(3em).
#ezexam.solution(show-number: false)[
$3/4$.
]
]

= 三、解答题：15—23小题，共94分. 解答应写出文字说明、证明过程或演算步骤.

#ezexam.question[
（本题满分10分）求极限 $lim_(x->0)(e^(x^2)-e^(2-2cos x))/x^4$.
#ezexam.solution(show-number: false)[
解
$ lim_(x->0)(e^(x^2)-e^(2-2cos x))/x^4&=lim_(x->0)(e^(x^2-2+2cos x)-1)/x^4 dot e^(2-2cos x) \
 &=lim_(x->0)(x^2-2+2cos x)/x^4=lim_(x->0)(x-sin x)/(2x^3) \
 &=lim_(x->0)(1-cos x)/(6x^2)=1/12. $
]
]

#ezexam.question[
（本题满分10分）计算二重积分 $integral.double_D e^x x y dif x dif y$，其中 $D$ 是以曲线 $y=sqrt(x),y=1/sqrt(x)$ 及 $y$ 轴为边界的无界区域.
#ezexam.solution(show-number: false)[
解
$ integral.double_D e^x x y dif x dif y&=integral_0^1 dif x integral_sqrt(x)^(1/sqrt(x))e^x x y dif y \
 &=1/2 integral_0^1 e^x(1-x^2)dif x=lr(1/2 e^x(1-x^2))|_0^1+integral_0^1 x e^x dif x \
 &=-1/2+lr(x e^x)|_0^1-integral_0^1 e^x dif x=1/2. $
]
]

#ezexam.question[
（本题满分10分）某企业为生产甲、乙两种型号的产品投入的固定成本为10 000（万元）.设该企业生产甲、乙两种产品的产量分别为 $x$（件）和 $y$（件），且这两种产品的边际成本分别为 $20+x/2$（万元/件）与 $6+y$（万元/件）.

（Ⅰ）求生产甲、乙两种产品的总成本函数 $C(x,y)$（万元）；

（Ⅱ）当总产量为50件时，甲、乙两种产品的产量各为多少时可使总成本最小？求最小成本；

（Ⅲ）求总产量为50件且总成本最小时甲产品的边际成本，并解释其经济意义.
#ezexam.solution(show-number: false)[
解　（Ⅰ）由题设知 $(partial C)/(partial x)=20+x/2,(partial C)/(partial y)=6+y,C(0,0)=10 000$，从而有
$ C(x,y)=10 000+20x+x^2/4+6y+y^2/2. $

（Ⅱ）由题设知 $x+y=50$，此时的成本函数为
$ f(x)=C(x,50-x)=10 000+20x+x^2/4+6(50-x)+(50-x)^2/2,quad 0<=x<=50, $
求导得 $f'(x)=3x/2-36$，令 $f'(x)=0$，解得唯一驻点 $x=24$.
又 $f''(24)=3/2>0$，所以 $x=24$ 是成本函数 $C(x,50-x)$ 的最小值点.
故当甲为24件，乙为26件时，总成本达到最小，最小成本为 $C(24,26)=11 118$ 万元.

（Ⅲ）$lr((partial C)/(partial x))|_(x=24,y=26)=lr(20+x/2)|_(x=24,y=26)=32$，其经济意义为：当生产乙产品26件时，生产第25件甲产品需32万元.
]
]

#ezexam.question[
（本题满分10分）证明：$x ln((1+x)/(1-x))+cos x>=1+x^2/2 (-1<x<1)$.
#ezexam.solution(show-number: false)[
证　记 $f(x)=x ln((1+x)/(1-x))+cos x-x^2/2-1$，则
$ f'(x)=ln((1+x)/(1-x))+(2x)/(1-x^2)-sin x-x, quad f''(x)=4/(1-x^2)^2-1-cos x. $
当 $-1<x<1$ 时，由于 $4/(1-x^2)^2>=4,1+cos x<=2$，所以 $f''(x)>=2>0$，从而 $f'(x)$ 单调增加.
又因为 $f'(0)=0$，所以，当 $-1<x<0$ 时，$f'(x)<0$；当 $0<x<1$ 时，$f'(x)>0$，于是 $f(0)=0$ 是函数 $f(x)$ 在 $(-1,1)$ 内的最小值.
从而当 $-1<x<1$ 时，$f(x)>=f(0)=0$，即
$ x ln((1+x)/(1-x))+cos x>=1+x^2/2. $
]
]

#ezexam.question[
（本题满分10分）已知函数 $f(x)$ 满足方程 $f''(x)+f'(x)-2f(x)=0$ 及 $f''(x)+f(x)=2e^x$.

（Ⅰ）求 $f(x)$ 的表达式；

（Ⅱ）求曲线 $y=f(x^2)integral_0^x f(-t^2)dif t$ 的拐点.
#ezexam.solution(show-number: false)[
解　（Ⅰ）联立 $cases(f''(x)+f'(x)-2f(x)=0,f''(x)+f(x)=2e^x)$，得 $f'(x)-3f(x)=-2e^x$.因此
$ f(x)=e^(integral 3dif x)[integral(-2e^x)e^(-integral 3dif x)dif x+C]=e^x+C e^(3x), $
代入 $f''(x)+f(x)=2e^x$，得 $C=0$，所以 $f(x)=e^x$.

（Ⅱ）
$ y&=f(x^2)integral_0^x f(-t^2)dif t=e^(x^2)integral_0^x e^(-t^2)dif t, \
 y'&=2x e^(x^2)integral_0^x e^(-t^2)dif t+1, \
 y''&=2x+2(1+2x^2)e^(x^2)integral_0^x e^(-t^2)dif t. $
当 $x<0$ 时，$y''<0$；当 $x>0$ 时，$y''>0$.又 $y(0)=0$，所以曲线的拐点为 $(0,0)$.
]
]

#ezexam.question[
（本题满分11分）设 $A=mat(1,a,0,0;0,1,a,0;0,0,1,a;a,0,0,1),beta=mat(1;-1;0;0)$.

（Ⅰ）计算行列式 $|A|$；

（Ⅱ）当实数 $a$ 为何值时，方程组 $A x=beta$ 有无穷多解，并求其通解.
#ezexam.solution(show-number: false)[
解　（Ⅰ）$|A|=lr(|mat(1,a,0,0;0,1,a,0;0,0,1,a;a,0,0,1)|)=1-a^4$.

（Ⅱ）若方程组 $A x=beta$ 有无穷多解，则 $|A|=0$.由（Ⅰ）可得 $a=1$ 或 $a=-1$.
当 $a=1$ 时，
$ (A:beta)=mat(1,1,0,0,1;0,1,1,0,-1;0,0,1,1,0;1,0,0,1,0,augment:#4) arrow.r mat(1,1,0,0,1;0,1,1,0,-1;0,0,1,1,0;0,0,0,0,-2,augment:#4), $
于是 $r(A)!=r(A:beta)$，故方程组 $A x=beta$ 无解.
当 $a=-1$ 时，
$ (A:beta)=mat(1,-1,0,0,1;0,1,-1,0,-1;0,0,1,-1,0;-1,0,0,1,0,augment:#4) arrow.r mat(1,0,0,-1,0;0,1,0,-1,-1;0,0,1,-1,0;0,0,0,0,0,augment:#4), $
于是 $r(A)=r(A:beta)=3<4$，故方程组 $A x=beta$ 有无穷多解.
此时其通解为 $x=mat(0;-1;0;0)+k mat(1;1;1;1)$，$k$ 为任意常数.
]
]

#ezexam.question[
（本题满分11分）已知 $A=mat(1,0,1;0,1,1;-1,0,a;0,a,-1)$，二次型 $f(x_1,x_2,x_3)=x^T(A^T A)x$ 的秩为2.

（Ⅰ）求实数 $a$ 的值；

（Ⅱ）求正交变换 $x=Q y$ 将 $f$ 化为标准形.
#ezexam.solution(show-number: false)[
解　（Ⅰ）因为 $r(A^T A)=r(A)$，对 $A$ 施以初等行变换
$ A=mat(1,0,1;0,1,1;-1,0,a;0,a,-1) arrow.r mat(1,0,1;0,1,1;0,0,a+1;0,0,0), $
所以当 $a=-1$ 时，$r(A)=2$.

（Ⅱ）由于 $a=-1$，所以 $A^T A=mat(2,0,2;0,2,2;2,2,4)$.矩阵 $A^T A$ 的特征多项式为
$ |lambda E-A^T A|=lr(|mat(lambda-2,0,-2;0,lambda-2,-2;-2,-2,lambda-4)|)=lambda(lambda-2)(lambda-6), $
于是 $A^T A$ 的特征值为 $lambda_1=2,lambda_2=6,lambda_3=0$.
当 $lambda_1=2$ 时，由方程组 $(2E-A^T A)x=0$，可得属于2的一个单位特征向量 $1/sqrt(2)mat(1;-1;0)$；
当 $lambda_2=6$ 时，由方程组 $(6E-A^T A)x=0$，可得属于6的一个单位特征向量 $1/sqrt(6)mat(1;1;2)$；
当 $lambda_3=0$ 时，由方程组 $A^T A x=0$，可得属于0的一个单位特征向量 $1/sqrt(3)mat(1;1;-1)$.
令 $Q=mat(1/sqrt(2),1/sqrt(6),1/sqrt(3);-1/sqrt(2),1/sqrt(6),1/sqrt(3);0,2/sqrt(6),-1/sqrt(3))$，则 $f$ 在正交变换 $x=Q y$ 下的标准形为 $f=2y_1^2+6y_2^2$.
]
]

#ezexam.question[
（本题满分11分）设二维离散型随机变量 $(X,Y)$ 的概率分布为
#table(columns:4,[$X$ / $Y$],[0],[1],[2],[0],[$1/4$],[0],[$1/4$],[1],[0],[$1/3$],[0],[2],[$1/12$],[0],[$1/12$])
（Ⅰ）求 $P{X=2Y}$；

（Ⅱ）求 $op("Cov")(X-Y,Y)$.
#ezexam.solution(show-number: false)[
解　（Ⅰ）$P{X=2Y}=P{X=0,Y=0}+P{X=2,Y=1}=1/4$.

（Ⅱ）由 $(X,Y)$ 的概率分布可得，$X,Y,X Y$ 的概率分布分别为
#table(columns:4,[$X$],[0],[1],[2],[$P$],[$1/2$],[$1/3$],[$1/6$])
#table(columns:4,[$Y$],[0],[1],[2],[$P$],[$1/3$],[$1/3$],[$1/3$])
#table(columns:4,[$X Y$],[0],[1],[4],[$P$],[$7/12$],[$1/3$],[$1/12$])
所以
$ E X=2/3,E Y=1,E(Y^2)=5/3,D Y=2/3,quad E(X Y)=2/3,op("Cov")(X,Y)=E(X Y)-E X dot E Y=0, $
故 $op("Cov")(X-Y,Y)=op("Cov")(X,Y)-D Y=-2/3$.
]
]

#ezexam.question[
（本题满分11分）设随机变量 $X$ 与 $Y$ 相互独立，且都服从参数为1的指数分布.记 $U=max{X,Y},V=min{X,Y}$.

（Ⅰ）求 $V$ 的概率密度 $f_V(v)$；

（Ⅱ）求 $E(U+V)$.
#ezexam.solution(show-number: false)[
（Ⅰ）解　$X$ 与 $Y$ 的分布函数均为
$ F(x)=cases(1-e^(-x) & x>=0,0 & x<0). $
$V=min{X,Y}$ 的分布函数为
$ F_V(v)&=P{min{X,Y}<=v}=1-P{min{X,Y}>v} \
 &=1-P{X>v,Y>v}=1-[1-F(v)]^2=cases(1-e^(-2v) & v>=0,0 & v<0), $
故 $V$ 的概率密度为 $f_V(v)=F'_V(v)=cases(2e^(-2v) & v>0,0 & v<=0)$.

（Ⅱ）*解法1* $U=max{X,Y}$ 的分布函数为
$ F_U(u)&=P{max{X,Y}<=u}=P{X<=u,Y<=u}=F^2(u) \
 &=cases((1-e^(-u))^2 & u>=0,0 & u<0), $
故 $U$ 的概率密度为 $f_U(u)=F'_U(u)=cases(2e^(-u)(1-e^(-u)) & u>0,0 & u<=0)$，
$ E(U+V)&=E U+E V=integral_0^(+infinity)2u e^(-u)(1-e^(-u))dif u+integral_0^(+infinity)2v e^(-2v)dif v \
 &=integral_0^(+infinity)2u e^(-u)dif u=2. $

*解法2* 因为 $U+V=min{X,Y}+max{X,Y}=X+Y$，故 $E(U+V)=E(X+Y)=E X+E Y=2$.
]
]

