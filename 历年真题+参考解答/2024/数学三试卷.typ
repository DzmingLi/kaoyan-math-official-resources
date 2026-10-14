#import "../template.typ": exam
#show: exam.with(year: 2024, subject: "三")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices.with(r-gap: 1.3em)
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)


= 一、选择题：第1—10小题，每小题5分，共50分. 下列每小题给出的四个选项中，只有一个选项是最符合题目要求的.

#ezexam.question[
设函数 $f(x)=lim_(n->infinity) (1+x)/(1+n x^(2n))$，则 $f(x)$（　）.
#choices([在 $x=1,x=-1$ 处都连续.],[在 $x=1$ 处连续，在 $x=-1$ 处不连续.],[在 $x=1,x=-1$ 处都不连续.],[在 $x=1$ 处不连续，在 $x=-1$ 处连续.])
]

#ezexam.question[
设 $I=integral_a^(a+k pi) abs(sin x) dif x$，$k$ 为整数，则 $I$ 的值（　）.
#choices([只与 $a$ 有关.],[只与 $k$ 有关.],[与 $a,k$ 均有关.],[与 $a,k$ 均无关.])
]

#ezexam.question[
设 $f(x,y)$ 是连续函数，则 $integral_(pi/6)^(pi/2) dif x integral_(sin x)^1 f(x,y) dif y=$（　）.
#choices([$integral_(1/2)^1 dif y integral_(pi/6)^(arcsin y) f(x,y) dif x$],[$integral_(1/2)^1 dif y integral_(arcsin y)^(pi/2) f(x,y) dif x$],[$integral_0^(1/2) dif y integral_(pi/6)^(arcsin y) f(x,y) dif x$],[$integral_0^(1/2) dif y integral_(arcsin y)^(pi/2) f(x,y) dif x$])
]

#ezexam.question[
已知幂级数 $sum_(n=0)^infinity a_n x^n$ 的和函数为 $ln(2+x)$，则 $sum_(n=0)^infinity n a_(2n)=$（　）.
#choices([$-1/6$],[$-1/3$],[$1/6$],[$1/3$])
]

#ezexam.question[
设二次型 $f(x_1,x_2,x_3)=bold(x)^"T" A bold(x)$ 在正交变换下可化成 $y_1^2-2y_2^2+3y_3^2$，则二次型 $f$ 的矩阵 $A$ 的行列式与迹分别为（　）.
#choices([$-6,-2$.],[$6,-2$.],[$-6,2$.],[$6,2$.])
]

#ezexam.question[
设 $A$ 为3阶矩阵，$P=mat(1,0,0;0,1,0;1,0,1)$.若 $P^"T" A P^2=mat(a+2c,0,c;0,b,0;2c,0,c)$，则 $A=$（　）.
#choices([$mat(c,0,0;0,a,0;0,0,b)$],[$mat(b,0,0;0,c,0;0,0,a)$],[$mat(a,0,0;0,b,0;0,0,c)$],[$mat(c,0,0;0,b,0;0,0,a)$])
]

#ezexam.question[
设矩阵 $A=mat(a+1,b,3;a,b/2,1;1,1,2)$，$M_(i j)$ 表示 $A$ 的 $i$ 行 $j$ 列元素的余子式.若 $abs(A)=-1/2$，且 $-M_(2 1)+M_(2 2)-M_(2 3)=0$，则（　）.
#choices([$a=0$ 或 $a=-3/2$.],[$a=0$ 或 $a=3/2$.],[$b=1$ 或 $b=-1/2$.],[$b=-1$ 或 $b=1/2$.])
]

#ezexam.question[
设随机变量 $X$ 的概率密度为 $f(x)=cases(6x(1-x)&0<x<1,0&"其他，")$，则 $X$ 的三阶中心矩 $E(X-E X)^3=$（　）.
#choices([$-1/32$],[$0$],[$1/16$],[$1/2$])
]

#ezexam.question[
设随机变量 $X,Y$ 相互独立，且 $X tilde N(0,2)$，$Y tilde N(-1,1)$.记 $p_1=P{2X>Y}$，$p_2=P{X-2Y>1}$，则（　）.
#choices([$p_1>p_2>1/2$],[$p_2>p_1>1/2$],[$p_1<p_2<1/2$],[$p_2<p_1<1/2$])
]

#ezexam.question[
设随机变量 $X,Y$ 相互独立，且均服从参数为 $lambda$ 的指数分布.令 $Z=abs(X-Y)$，则下列随机变量中与 $Z$ 同分布的是（　）.
#choices([$X+Y$],[$(X+Y)/2$],[$2X$],[$X$])
]

= 二、填空题：第11—16小题，每小题5分，共30分.

#ezexam.question[
当 $x->0$ 时，$integral_0^x ((1+t^2)sin t^2)/(1+cos^2 t) dif t$ 与 $x^k$ 是同阶无穷小，则 $k=$#fillin(len: 2.97656em)[].
]

#ezexam.question[
$integral_2^(+infinity) 5/(x^4+3x^2-4) dif x=$#fillin(len: 2.97656em)[].
]

#ezexam.question[
函数 $f(x,y)=2x^3-9x^2-6y^4+12x+24y$ 的极值点是#fillin(len: 2.97656em)[].
]

#ezexam.question[
某产品的价格函数为 $p=cases(25-0.25Q&Q<=20,35-0.75Q&Q>20)$（$p$ 为单价，单位：万元；$Q$ 为产量，单位：件），总成本函数为 $C=150+5Q+0.25Q^2$（万元），则经营该产品可获得的最大利润为#fillin(len: 2.97656em)[]（万元）.
]

#ezexam.question[
设 $A$ 为3阶矩阵，$A^*$ 为 $A$ 的伴随矩阵，$E$ 为3阶单位矩阵.若 $r(2E-A)=1$，$r(E+A)=2$，则 $abs(A^*)=$#fillin(len: 2.97656em)[].
]

#ezexam.question[
设随机试验每次成功的概率为 $p$，现进行3次独立重复试验，在至少成功1次的条件下3次试验全部成功的概率为 $4/13$，则 $p=$#fillin(len: 2.97656em)[].
]

= 三、解答题：第17—22小题，共70分. 解答应写出文字说明、证明过程或演算步骤.

#ezexam.question[
（本题满分10分）

设平面有界区域 $D$ 位于第一象限，由曲线 $x y=1/3$，$x y=3$ 与直线 $y=1/3 x$，$y=3x$ 围成，计算 $integral.double_D (1+x-y) dif x dif y$.
]

#ezexam.question[
（本题满分12分）

设函数 $z=z(x,y)$ 由方程 $z+e^x-y ln(1+z^2)=0$ 确定，求 $((partial^2 z)/(partial x^2)+(partial^2 z)/(partial y^2))|_((0,0))$.
]

#ezexam.question[
（本题满分12分）

设 $t>0$，平面有界区域 $D$ 由曲线 $y=x e^(-2x)$ 与直线 $x=t$，$x=2t$ 及 $x$ 轴围成，$D$ 的面积为 $S(t)$，求 $S(t)$ 的最大值.
]

#ezexam.question[
（本题满分12分）

设函数 $f(x)$ 具有2阶导数，且 $f'(0)=f'(1)$，$abs(f''(x))<=1$.证明：

（1）当 $x in (0,1)$ 时，$abs(f(x)-f(0)(1-x)-f(1)x)<=x(1-x)/2$；

（2）$abs(integral_0^1 f(x) dif x-(f(0)+f(1))/2)<=1/12$.
]

#ezexam.question[
（本题满分12分）

设矩阵 $A=mat(1,-1,0,-1;1,1,0,3;2,1,2,6)$，$B=mat(1,0,1,2;1,-1,a,a-1;2,-3,2,-2)$，向量 $bold(alpha)=mat(0;2;3)$，$bold(beta)=mat(1;0;-1)$.

（1）证明：方程组 $A bold(x)=bold(alpha)$ 的解均为方程组 $B bold(x)=bold(beta)$ 的解；

（2）若方程组 $A bold(x)=bold(alpha)$ 与方程组 $B bold(x)=bold(beta)$ 不同解，求 $a$ 的值.
]

#ezexam.question[
（本题满分12分）

设总体 $X$ 服从 $[0,theta]$ 上的均匀分布，其中 $theta in (0,+infinity)$ 为未知参数.$X_1,X_2,dots,X_n$ 是来自总体 $X$ 的简单随机样本，记 $X_((n))=max{X_1,X_2,dots,X_n}$，$T_c=c X_((n))$.

（1）求 $c$，使得 $E(T_c)=theta$；

（2）记 $h(c)=E(T_c-theta)^2$，求 $c$ 使得 $h(c)$ 最小.
]

