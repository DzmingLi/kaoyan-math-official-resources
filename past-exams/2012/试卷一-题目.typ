#import "../template.typ": exam
#show: exam.with(year: 2012, subject: "一", title: "2012年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#ezexam.answer-state.update(false)


= 一、选择题：1—8小题，每小题4分，共32分.在每小题给出的四个选项中，只有一项符合题目要求，把所选项前的字母填在题后的括号内.

#ezexam.question[
曲线 $y=(x^2+x)/(x^2-1)$ 的渐近线的条数为
#choices([0.],[1.],[2.],[3.])
]

#ezexam.question[
设函数 $f(x)=(e^x-1)(e^(2x)-2) dots (e^(n x)-n)$，其中 $n$ 为正整数，则 $f'(0)=$
#choices([$(-1)^(n-1)(n-1)!$.],[$(-1)^n(n-1)!$.],[$(-1)^(n-1)n!$.],[$(-1)^n n!$.])
]

#ezexam.question[
如果函数 $f(x,y)$ 在点 $(0,0)$ 处连续，那么下列命题正确的是
#choices([若极限 $lim_((x,y)->(0,0))f(x,y)/(|x|+|y|)$ 存在，则 $f(x,y)$ 在点 $(0,0)$ 处可微.],[若极限 $lim_((x,y)->(0,0))f(x,y)/(x^2+y^2)$ 存在，则 $f(x,y)$ 在点 $(0,0)$ 处可微.],[若 $f(x,y)$ 在点 $(0,0)$ 处可微，则极限 $lim_((x,y)->(0,0))f(x,y)/(|x|+|y|)$ 存在.],[若 $f(x,y)$ 在点 $(0,0)$ 处可微，则极限 $lim_((x,y)->(0,0))f(x,y)/(x^2+y^2)$ 存在.])
]

#ezexam.question[
设 $I_k=integral_0^(k pi)e^(x^2)sin x dif x (k=1,2,3)$，则有
#choices([$I_1<I_2<I_3$.],[$I_3<I_2<I_1$.],[$I_2<I_3<I_1$.],[$I_2<I_1<I_3$.])
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
设随机变量 $X$ 与 $Y$ 相互独立，且分别服从参数为1与参数为4的指数分布，则 $P{X<Y}=$
#choices([$1/5$.],[$1/3$.],[$2/3$.],[$4/5$.])
]

#ezexam.question[
将长度为1 m的木棒随机地截成两段，则两段长度的相关系数为
#choices([1.],[$1/2$.],[$-1/2$.],[$-1$.])
]

= 二、填空题：9—14小题，每小题4分，共24分.把答案填在题中横线上.

#ezexam.question[
若函数 $f(x)$ 满足方程 $f''(x)+f'(x)-2f(x)=0$ 及 $f''(x)+f(x)=2e^x$，则 $f(x)=$#h(3em).
]

#ezexam.question[
$integral_0^2 x sqrt(2x-x^2)dif x=$#h(3em).
]

#ezexam.question[
$lr(op("grad")(x y+z/y))|_(2,1,1)=$#h(3em).
]

#ezexam.question[
设 $Sigma={(x,y,z)|x+y+z=1,x>=0,y>=0,z>=0}$，则 $integral.double_Sigma y^2 dif S=$#h(3em).
]

#ezexam.question[
设 $alpha$ 为3维单位列向量，$E$ 为3阶单位矩阵，则矩阵 $E-alpha alpha^T$ 的秩为#h(3em).
]

#ezexam.question[
设 $A,B,C$ 是随机事件，$A$ 与 $C$ 互不相容，$P(A B)=1/2,P(C)=1/3$，则 $P(A B|overline(C))=$#h(3em).
]

= 三、解答题：15—23小题，共94分.解答应写出文字说明、证明过程或演算步骤.

#ezexam.question[
（本题满分10分）证明：$x ln((1+x)/(1-x))+cos x>=1+x^2/2 (-1<x<1)$.
]

#ezexam.question[
（本题满分10分）求函数 $f(x,y)=x e^(-(x^2+y^2)/2)$ 的极值.
]

#ezexam.question[
（本题满分10分）求幂级数 $sum_(n=0)^infinity (4n^2+4n+3)/(2n+1)x^(2n)$ 的收敛域及和函数.
]

#ezexam.question[
（本题满分10分）已知曲线 $L:cases(x=f(t),y=cos t) (0<=t<pi/2)$，其中函数 $f(t)$ 具有连续导数，且 $f(0)=0,f'(t)>0 (0<t<pi/2)$.若曲线 $L$ 的切线与 $x$ 轴交点到切点的距离恒为1，求函数 $f(t)$ 的表达式，并求以曲线 $L$ 及 $x$ 轴和 $y$ 轴为边界的区域的面积.
]

#ezexam.question[
（本题满分10分）已知 $L$ 是第一象限中从点 $(0,0)$ 沿圆周 $x^2+y^2=2x$ 到点 $(2,0)$，再沿圆周 $x^2+y^2=4$ 到点 $(0,2)$ 的曲线段.计算曲线积分 $I=integral_L 3x^2 y dif x+(x^3+x-2y)dif y$.
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
（本题满分11分）设随机变量 $X$ 与 $Y$ 相互独立且分别服从正态分布 $N(mu,sigma^2)$ 与 $N(mu,2sigma^2)$，其中 $mu$ 是未知参数，$sigma>0$.设 $Z=X-Y$.

（Ⅰ）求 $Z$ 的概率密度 $f(z;sigma^2)$；

（Ⅱ）设 $Z_1,Z_2,dots,Z_n$ 为来自总体 $Z$ 的简单随机样本，求 $sigma^2$ 的最大似然估计量 $hat(sigma)^2$；

（Ⅲ）证明 $hat(sigma)^2$ 为 $sigma^2$ 的无偏估计量.
]

