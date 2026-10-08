#import "../template.typ": exam
#show: exam.with(year: 2002, subject: "三", title: "2002年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#ezexam.answer-state.update(false)


= 一、填空题（本题共5小题，每小题3分，满分15分）
#ezexam.counter-question.step()

（1）设常数 $a!=1/2$，则 $lim_(n->infinity) ln[(n-2n a+1)/(n(1-2a))]^n=$#h(3em).

（2）交换积分次序：$integral_0^(1/4) dif y integral_y^sqrt (y) f(x,y) dif x+integral_(1/4)^(1/2) dif y integral_y^(1/2) f(x,y) dif x=$#h(3em).

（3）设三阶矩阵 $A=mat(1,2,-2;2,1,2;3,0,4)$，三维列向量 $alpha=(a,1,1)^T$.已知 $A alpha$ 与 $alpha$ 线性相关，则 $a=$#h(3em).

（4）设随机变量 $X$ 和 $Y$ 的联合概率分布为
#table(columns:4,[$X \ Y$],[$-1$],[0],[1],[0],[0.07],[0.18],[0.15],[1],[0.08],[0.32],[0.20])
则 $X^2$ 和 $Y^2$ 的协方差 $op("cov")(X^2,Y^2)=$#h(3em).

（5）设总体 $X$ 的概率密度为
$ f(x;theta)=cases(e^(-(x-theta)) & x>=theta,0 & x<theta), $
而 $X_1,X_2,dots,X_n$ 是来自总体 $X$ 的简单随机样本，则未知参数 $theta$ 的矩估计量为#h(3em).

= 二、选择题（本题共5小题，每小题3分，满分15分）
#ezexam.counter-question.step()

（1）设函数 $f(x)$ 在闭区间 $[a,b]$ 上有定义，在开区间 $(a,b)$ 内可导，则（　）.
#choices[当 $f(a)f(b)<0$ 时，存在 $xi in (a,b)$，使 $f(xi)=0$.][对任何 $xi in (a,b)$，有 $lim_(x->xi) [f(x)-f(xi)]=0$.][当 $f(a)=f(b)$ 时，存在 $xi in (a,b)$，使 $f'(xi)=0$.][存在 $xi in (a,b)$，使 $f(b)-f(a)=f'(xi)(b-a)$.]

（2）设有幂级数 $sum_(n=1)^infinity a_n x^n$ 与 $sum_(n=1)^infinity b_n x^n$，若 $lim_(n->infinity) a_(n+1)/a_n=3/sqrt(5),lim_(n->infinity) b_(n+1)/b_n=3$，则幂级数 $sum_(n=1)^infinity (a_n^2)/(b_n^2)x^n$ 的收敛半径为（　）.
#choices[5.][$sqrt(5)/3$.][$1/3$.][$1/5$.]

（3）设 $A$ 是 $m times n$ 矩阵，$B$ 是 $n times m$ 矩阵，则线性方程组 $(A B)x=0$（　）.
#choices[当 $n>m$ 时仅有零解.][当 $n>m$ 时必有非零解.][当 $m>n$ 时仅有零解.][当 $m>n$ 时必有非零解.]

（4）设 $A$ 是 $n$ 阶实对称矩阵，$P$ 是 $n$ 阶可逆矩阵.已知 $n$ 维列向量 $alpha$ 是 $A$ 的属于特征值 $lambda$ 的特征向量，则矩阵 $(P^(-1)A P)^T$ 属于特征值 $lambda$ 的特征向量是（　）.
#choices[$P^(-1)alpha$.][$P^T alpha$.][$P alpha$.][$(P^(-1))^T alpha$.]

（5）设随机变量 $X$ 和 $Y$ 都服从标准正态分布，则（　）.
#choices[$X+Y$ 服从正态分布.][$X^2+Y^2$ 服从 $chi^2$ 分布.][$X^2$ 和 $Y^2$ 都服从 $chi^2$ 分布.][$X^2/Y^2$ 服从 $F$ 分布.]

#ezexam.question(label: n => [三、])[
（本题满分5分）求极限 $lim_(x->0) (integral_0^x [integral_0^(u^2) arctan(1+t) dif t] dif u)/(x(1-cos x))$.


]

#ezexam.question(label: n => [四、])[
（本题满分7分）设函数 $u=f(x,y,z)$ 有连续偏导数，且 $z=z(x,y)$ 由方程 $x e^x-y e^y=z e^z$ 所确定，求 $dif u$.


]

#ezexam.question(label: n => [五、])[
（本题满分6分）设 $f(sin^2 x)=x/(sin x)$，求 $integral sqrt(x)/sqrt(1-x) f(x) dif x$.


]

#ezexam.question(label: n => [六、])[
（本题满分7分）设 $D_1$ 是由抛物线 $y=2x^2$ 和直线 $x=a,x=2$ 及 $y=0$ 所围成的平面区域；$D_2$ 是由抛物线 $y=2x^2$ 和直线 $y=0,x=a$ 所围成的平面区域，其中 $0<a<2$.

（1）试求 $D_1$ 绕 $x$ 轴旋转而成的旋转体体积 $V_1$；$D_2$ 绕 $y$ 轴旋转而成的旋转体体积 $V_2$；

（2）问当 $a$ 为何值时，$V_1+V_2$ 取得最大值？试求此最大值.


]

#ezexam.question(label: n => [七、])[
（本题满分7分）（1）验证函数 $y(x)=1+x^3/(3!)+x^6/(6!)+x^9/(9!)+dots+x^(3n)/((3n)!)+dots (-infinity<x<+infinity)$ 满足微分方程 $y''+y'+y=e^x$；

（2）利用（1）的结果求幂级数 $sum_(n=0)^infinity x^(3n)/((3n)!)$ 的和函数.


]

#ezexam.question(label: n => [八、])[
（本题满分6分）设函数 $f(x),g(x)$ 在 $[a,b]$ 上连续，且 $g(x)>0$.利用闭区间上连续函数性质，证明存在一点 $xi in [a,b]$，使
$ integral_a^b f(x)g(x) dif x=f(xi)integral_a^b g(x) dif x. $


]

#ezexam.question(label: n => [九、])[
（本题满分8分）设齐次线性方程组
$ cases(a x_1+b x_2+b x_3+dots+b x_n=0,b x_1+a x_2+b x_3+dots+b x_n=0,dots quad dots quad dots,b x_1+b x_2+b x_3+dots+a x_n=0), $
其中 $a!=0,b!=0,n>=2$.试讨论 $a,b$ 为何值时，方程组仅有零解、有无穷多组解？在有无穷多组解时，求出全部解，并用基础解系表示全部解.


]

#ezexam.question(label: n => [十、])[
（本题满分8分）设 $A$ 为三阶实对称矩阵，且满足条件 $A^2+2A=O$，已知 $A$ 的秩 $r(A)=2$.

（1）求 $A$ 的全部特征值；

（2）当 $k$ 为何值时，矩阵 $A+k E$ 为正定矩阵，其中 $E$ 为三阶单位矩阵.


]

#ezexam.question(label: n => [十一、])[
（本题满分8分）假设随机变量 $U$ 在区间 $[-2,2]$ 上服从均匀分布，随机变量
$ X=cases(-1 & U<=-1,1 & U>-1), quad Y=cases(-1 & U<=1,1 & U>1), $
试求（1）$X$ 和 $Y$ 的联合概率分布；（2）$D(X+Y)$.


]

#ezexam.question(label: n => [十二、])[
（本题满分8分）假设一设备开机后无故障工作的时间 $X$ 服从指数分布，平均无故障工作的时间（$E X$）为5小时.设备定时开机，出现故障时自动关机，而在无故障的情况下工作2小时便关机.试求该设备每次开机无故障工作的时间 $Y$ 的分布函数 $F(y)$.

]
