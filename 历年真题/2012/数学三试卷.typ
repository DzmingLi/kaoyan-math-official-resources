#import "../template.typ": exam
#show: exam.with(year: 2012, subject: "三", title: "2012年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#ezexam.answer-state.update(false)


= 一、选择题：1—8小题，每小题4分，共32分. 在每小题给出的四个选项中，只有一项符合题目要求，把所选项前的字母填在题后的括号内.

#ezexam.question[
曲线 $y=(x^2+x)/(x^2-1)$ 的渐近线的条数为
#choices([0.],[1.],[2.],[3.])
]

#ezexam.question[
设函数 $f(x)=(e^x-1)(e^(2x)-2) dots (e^(n x)-n)$，其中 $n$ 为正整数，则 $f'(0)=$
#choices([$(-1)^(n-1)(n-1)!$.],[$(-1)^n(n-1)!$.],[$(-1)^(n-1)n!$.],[$(-1)^n n!$.])
]

#ezexam.question[
设函数 $f(t)$ 连续，则二次积分 $integral_0^(pi/2)dif theta integral_(2cos theta)^2 f(r^2)r dif r=$
#choices([$integral_0^2 dif x integral_sqrt(2x-x^2)^sqrt(4-x^2)sqrt(x^2+y^2)f(x^2+y^2)dif y$.],[$integral_0^2 dif x integral_sqrt(2x-x^2)^sqrt(4-x^2)f(x^2+y^2)dif y$.],[$integral_0^2 dif y integral_(1+sqrt(1-y^2))^sqrt(4-y^2)sqrt(x^2+y^2)f(x^2+y^2)dif x$.],[$integral_0^2 dif y integral_(1+sqrt(1-y^2))^sqrt(4-y^2)f(x^2+y^2)dif x$.])
]

#ezexam.question[
已知级数 $sum_(n=1)^infinity(-1)^n sqrt(n)sin(1/n^alpha)$ 绝对收敛，级数 $sum_(n=1)^infinity(-1)^n/n^(2-alpha)$ 条件收敛，则
#choices([$0<alpha<=1/2$.],[$1/2<alpha<=1$.],[$1<alpha<=3/2$.],[$3/2<alpha<2$.])
]

#ezexam.question[
设 $alpha_1=mat(0;0;c_1),alpha_2=mat(0;1;c_2),alpha_3=mat(1;-1;c_3),alpha_4=mat(-1;1;c_4)$，其中 $c_1,c_2,c_3,c_4$ 为任意常数，则下列向量组线性相关的为
#choices([$alpha_1,alpha_2,alpha_3$.],[$alpha_1,alpha_2,alpha_4$.],[$alpha_1,alpha_3,alpha_4$.],[$alpha_2,alpha_3,alpha_4$.])
]

#ezexam.question[
设 $A$ 为3阶矩阵，$P$ 为3阶可逆矩阵，且 $P^(-1)A P=mat(1,0,0;0,1,0;0,0,2)$.若 $P=(alpha_1,alpha_2,alpha_3),Q=(alpha_1+alpha_2,alpha_2,alpha_3)$，则 $Q^(-1)A Q=$
#choices([$mat(1,0,0;0,2,0;0,0,1)$.],[$mat(1,0,0;0,1,0;0,0,2)$.],[$mat(2,0,0;0,1,0;0,0,2)$.],[$mat(2,0,0;0,2,0;0,0,1)$.])
]

#ezexam.question[
设随机变量 $X$ 与 $Y$ 相互独立，且都服从区间 $(0,1)$ 上的均匀分布，则 $P{X^2+Y^2<=1}=$
#choices([$1/4$.],[$1/2$.],[$pi/8$.],[$pi/4$.])
]

#ezexam.question[
设 $X_1,X_2,X_3,X_4$ 为来自总体 $N(1,sigma^2) (sigma>0)$ 的简单随机样本，则统计量 $(X_1-X_2)/(|X_3+X_4-2|)$ 的分布为
#choices([$N(0,1)$.],[$t(1)$.],[$chi^2(1)$.],[$F(1,1)$.])
]

= 二、填空题：9—14小题，每小题4分，共24分. 把答案填在题中横线上.

#ezexam.question[
$lim_(x->pi/4)(tan x)^(1/(cos x-sin x))=$#h(3em).
]

#ezexam.question[
设函数 $f(x)=cases(ln sqrt(x) & x>=1,2x-1 & x<1),y=f(f(x))$，则 $lr((dif y)/(dif x))|_(x=e)=$#h(3em).
]

#ezexam.question[
设连续函数 $z=f(x,y)$ 满足 $lim_((x,y)->(0,1))(f(x,y)-2x+y-2)/sqrt(x^2+(y-1)^2)=0$，则 $lr(dif z)|_(0,1)=$#h(3em).
]

#ezexam.question[
由曲线 $y=4/x$ 和直线 $y=x$ 及 $y=4x$ 在第一象限中围成的平面图形的面积为#h(3em).
]

#ezexam.question[
设 $A$ 为3阶矩阵，$|A|=3,A^*$ 为 $A$ 的伴随矩阵.若交换 $A$ 的第1行与第2行得矩阵 $B$，则 $|B A^*|=$#h(3em).
]

#ezexam.question[
设 $A,B,C$ 是随机事件，$A$ 与 $C$ 互不相容，$P(A B)=1/2,P(C)=1/3$，则 $P(A B|overline(C))=$#h(3em).
]

= 三、解答题：15—23小题，共94分. 解答应写出文字说明、证明过程或演算步骤.

#ezexam.question[
（本题满分10分）求极限 $lim_(x->0)(e^(x^2)-e^(2-2cos x))/x^4$.
]

#ezexam.question[
（本题满分10分）计算二重积分 $integral.double_D e^x x y dif x dif y$，其中 $D$ 是以曲线 $y=sqrt(x),y=1/sqrt(x)$ 及 $y$ 轴为边界的无界区域.
]

#ezexam.question[
（本题满分10分）某企业为生产甲、乙两种型号的产品投入的固定成本为10 000（万元）.设该企业生产甲、乙两种产品的产量分别为 $x$（件）和 $y$（件），且这两种产品的边际成本分别为 $20+x/2$（万元/件）与 $6+y$（万元/件）.

（Ⅰ）求生产甲、乙两种产品的总成本函数 $C(x,y)$（万元）；

（Ⅱ）当总产量为50件时，甲、乙两种产品的产量各为多少时可使总成本最小？求最小成本；

（Ⅲ）求总产量为50件且总成本最小时甲产品的边际成本，并解释其经济意义.
]

#ezexam.question[
（本题满分10分）证明：$x ln((1+x)/(1-x))+cos x>=1+x^2/2 (-1<x<1)$.
]

#ezexam.question[
（本题满分10分）已知函数 $f(x)$ 满足方程 $f''(x)+f'(x)-2f(x)=0$ 及 $f''(x)+f(x)=2e^x$.

（Ⅰ）求 $f(x)$ 的表达式；

（Ⅱ）求曲线 $y=f(x^2)integral_0^x f(-t^2)dif t$ 的拐点.
]

#ezexam.question[
（本题满分11分）设 $A=mat(1,a,0,0;0,1,a,0;0,0,1,a;a,0,0,1),beta=mat(1;-1;0;0)$.

（Ⅰ）计算行列式 $|A|$；

（Ⅱ）当实数 $a$ 为何值时，方程组 $A x=beta$ 有无穷多解，并求其通解.
]

#ezexam.question[
（本题满分11分）已知 $A=mat(1,0,1;0,1,1;-1,0,a;0,a,-1)$，二次型 $f(x_1,x_2,x_3)=x^T(A^T A)x$ 的秩为2.

（Ⅰ）求实数 $a$ 的值；

（Ⅱ）求正交变换 $x=Q y$ 将 $f$ 化为标准形.
]

#ezexam.question[
（本题满分11分）设二维离散型随机变量 $(X,Y)$ 的概率分布为
#table(columns:4,[$X$ / $Y$],[0],[1],[2],[0],[$1/4$],[0],[$1/4$],[1],[0],[$1/3$],[0],[2],[$1/12$],[0],[$1/12$])
（Ⅰ）求 $P{X=2Y}$；

（Ⅱ）求 $op("Cov")(X-Y,Y)$.
]

#ezexam.question[
（本题满分11分）设随机变量 $X$ 与 $Y$ 相互独立，且都服从参数为1的指数分布.记 $U=max{X,Y},V=min{X,Y}$.

（Ⅰ）求 $V$ 的概率密度 $f_V(v)$；

（Ⅱ）求 $E(U+V)$.
]

