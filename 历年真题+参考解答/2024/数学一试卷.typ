#import "../template.typ": exam
#show: exam.with(year: 2024, subject: "一")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices.with(r-gap: 1.3em)
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)


= 一、选择题：第1—10小题，每小题5分，共50分. 下列每小题给出的四个选项中，只有一个选项是最符合题目要求的.

#ezexam.question[
已知函数 $f(x)=integral_0^x e^(cos t) dif t$，$g(x)=integral_0^(sin x) e^(t^2) dif t$，则（　）.
#choices([$f(x)$ 是奇函数，$g(x)$ 是偶函数.],[$f(x)$ 是偶函数，$g(x)$ 是奇函数.],[$f(x)$ 与 $g(x)$ 均是奇函数.],[$f(x)$ 与 $g(x)$ 均是周期函数.])
]

#ezexam.question[
设 $P=P(x,y,z)$，$Q=Q(x,y,z)$ 均为连续函数，$Sigma$ 为曲面 $z=sqrt(1-x^2-y^2)$（$x<=0,y>=0$）的上侧，则 $integral.double_Sigma P dif y dif z+Q dif z dif x=$（　）.
#choices([$integral.double_Sigma (x/z P+y/z Q) dif x dif y$],[$integral.double_Sigma (-x/z P+y/z Q) dif x dif y$],[$integral.double_Sigma (x/z P-y/z Q) dif x dif y$],[$integral.double_Sigma (-x/z P-y/z Q) dif x dif y$])
]

#ezexam.question[
已知幂级数 $sum_(n=0)^infinity a_n x^n$ 的和函数为 $ln(2+x)$，则 $sum_(n=0)^infinity n a_(2n)=$（　）.
#choices([$-1/6$],[$-1/3$],[$1/6$],[$1/3$])
]

#ezexam.question[
设函数 $f(x)$ 在区间 $(-1,1)$ 内有定义，且 $lim_(x->0) f(x)=0$，则（　）.
#choices([当 $lim_(x->0) f(x)/x=m$ 时，$f'(0)=m$.],[当 $f'(0)=m$ 时，$lim_(x->0) f(x)/x=m$.],[当 $lim_(x->0) f'(x)=m$ 时，$f'(0)=m$.],[当 $f'(0)=m$ 时，$lim_(x->0) f'(x)=m$.])
]

#ezexam.question[
在空间直角坐标系 $O-x y z$ 中，三张平面 $pi_i:a_i x+b_i y+c_i z=d_i$（$i=1,2,3$）的位置关系如图所示，记 $bold(alpha)_i=(a_i,b_i,c_i)$，$bold(beta)_i=(a_i,b_i,c_i,d_i)$.若 $r(mat(delim:"[",bold(alpha)_1;bold(alpha)_2;bold(alpha)_3))=m$，$r(mat(delim:"[",bold(beta)_1;bold(beta)_2;bold(beta)_3))=n$，则（　）.
#import "@preview/cetz:0.5.2"
#cetz.canvas({
 import cetz.draw: *
 line((0,0),(1,-0.6),(3.4,-0.6),(2.4,0),close:true)
 line((0,0),(1,-0.6),(3.2,0.6),(2.2,1.2),close:true)
 line((0,0),(1,-0.6),(2,1.6),(1,2.2),close:true)
 line((0,0),(2.4,0),stroke:(dash:"dashed"))
 content((2.45,-0.33),$pi_1$);content((2.45,0.7),$pi_2$);content((1.18,1.55),$pi_3$)
})
#choices([$m=1,n=2$],[$m=n=2$],[$m=2,n=3$],[$m=n=3$])
]

#ezexam.question[
设向量 $bold(alpha)_1=mat(a;1;-1;1)$，$bold(alpha)_2=mat(1;1;b;a)$，$bold(alpha)_3=mat(1;a;-1;1)$.若 $bold(alpha)_1,bold(alpha)_2,bold(alpha)_3$ 线性相关，且其中任意两个向量均线性无关，则（　）.
#choices([$a=1,b!=-1$],[$a=1,b=-1$],[$a!=-2,b=2$],[$a=-2,b=2$])
]

#ezexam.question[
设 $A$ 是秩为2的3阶矩阵，$bold(alpha)$ 是满足 $A bold(alpha)=bold(0)$ 的非零向量.若对满足 $bold(beta)^"T" bold(alpha)=0$ 的3维列向量 $bold(beta)$，均有 $A bold(beta)=bold(beta)$，则（　）.
#choices([$A^3$ 的迹为2.],[$A^3$ 的迹为5.],[$A^2$ 的迹为8.],[$A^2$ 的迹为9.])
]

#ezexam.question[
设随机变量 $X,Y$ 相互独立，且 $X$ 服从正态分布 $N(0,2)$，$Y$ 服从正态分布 $N(-2,2)$.若 $P{2X+Y<a}=P{X>Y}$，则 $a=$（　）.
#choices([$-2-sqrt(10)$],[$-2+sqrt(10)$],[$-2-sqrt(6)$],[$-2+sqrt(6)$])
]

#ezexam.question[
设随机变量 $X$ 的概率密度为 $f(x)=cases(2(1-x)&0<x<1,0&"其他.")$.在 $X=x$（$0<x<1$）条件下，随机变量 $Y$ 服从区间 $(x,1)$ 上的均匀分布，则 $"Cov"(X,Y)=$（　）.
#choices([$-1/36$],[$-1/72$],[$1/72$],[$1/36$])
]

#ezexam.question[
设随机变量 $X,Y$ 相互独立，且均服从参数为 $lambda$ 的指数分布.令 $Z=abs(X-Y)$，则下列随机变量中与 $Z$ 同分布的是（　）.
#choices([$X+Y$],[$(X+Y)/2$],[$2X$],[$X$])
]

= 二、填空题：第11—16小题，每小题5分，共30分.

#ezexam.question[
若 $lim_(x->0) ((1+a x^2)^(sin x)-1)/x^3=6$，则 $a=$#fillin(len: 2.97656em)[].
]

#ezexam.question[
设函数 $f(u,v)$ 具有2阶连续偏导数，且 $dif f|_((1,1))=3 dif u+4 dif v$.令 $y=f(cos x,1+x^2)$，则 $(dif^2 y)/(dif x^2)|_(x=0)=$#fillin(len: 2.97656em)[].
]

#ezexam.question[
已知函数 $f(x)=x+1$.若 $f(x)=a_0/2+sum_(n=1)^infinity a_n cos n x$，$x in [0,pi]$，则 $lim_(n->infinity) n^2 sin a_(2n-1)=$#fillin(len: 2.97656em)[].
]

#ezexam.question[
微分方程 $y'=1/(x+y)^2$ 满足条件 $y(1)=0$ 的解为#fillin(len: 2.97656em)[].
]

#ezexam.question[
设实矩阵 $A=mat(delim:"[",a+1,a;a,a)$.若对任意实向量 $bold(alpha)=mat(delim:"[",x_1;x_2)$，$bold(beta)=mat(delim:"[",y_1;y_2)$，$(bold(alpha)^"T" A bold(beta))^2<=bold(alpha)^"T" A bold(alpha) dot bold(beta)^"T" A bold(beta)$ 都成立，则 $a$ 的取值范围是#fillin(len: 2.97656em)[].
]

#ezexam.question[
设随机试验每次成功的概率为 $p$，现进行3次独立重复试验，在至少成功1次的条件下3次试验全部成功的概率为 $4/13$，则 $p=$#fillin(len: 2.97656em)[].
]

= 三、解答题：第17—22小题，共70分. 解答应写出文字说明、证明过程或演算步骤.

#ezexam.question[
（本题满分10分）

已知平面区域 $D={(x,y) bar.v sqrt(1-y^2)<=x<=1,-1<=y<=1}$，计算 $integral.double_D x/sqrt(x^2+y^2) dif x dif y$.
]

#ezexam.question[
（本题满分12分）

已知函数 $f(x,y)=x^3+y^3-(x+y)^2+3$，设 $T$ 是曲面 $z=f(x,y)$ 在点 $(1,1)$ 处的切平面，$D$ 为 $T$ 与坐标平面所围有界区域在 $x O y$ 平面上的投影.

（1）求 $T$ 的方程；

（2）求 $f(x,y)$ 在 $D$ 上的最大值和最小值.
]

#ezexam.question[
（本题满分12分）

设函数 $f(x)$ 具有2阶导数，且 $f'(0)=f'(1)$，$abs(f''(x))<=1$.证明：

（1）当 $x in (0,1)$ 时，$abs(f(x)-f(0)(1-x)-f(1)x)<=x(1-x)/2$；

（2）$abs(integral_0^1 f(x) dif x-(f(0)+f(1))/2)<=1/12$.
]

#ezexam.question[
（本题满分12分）

已知有向曲线 $L$ 为球面 $x^2+y^2+z^2=2x$ 与平面 $2x-z-1=0$ 的交线，从 $z$ 轴正向往 $z$ 轴负向看去为逆时针方向，计算曲线积分 $integral.cont_L (6x y z-y z^2) dif x+2x^2 z dif y+x y z dif z$.
]

#ezexam.question[
（本题满分12分）

已知数列 $\{x_n\}$，$\{y_n\}$，$\{z_n\}$ 满足 $x_0=-1,y_0=0,z_0=2$，且
$ cases(x_n=-2x_(n-1)+2z_(n-1),y_n=-2y_(n-1)-2z_(n-1),z_n=-6x_(n-1)-3y_(n-1)+3z_(n-1))， $
记 $bold(alpha)_n=mat(delim:"[",x_n;y_n;z_n)$，写出满足 $bold(alpha)_n=A bold(alpha)_(n-1)$ 的矩阵 $A$，并求 $A^n$ 及 $x_n,y_n,z_n$（$n=1,2,dots$）.
]

#ezexam.question[
（本题满分12分）

设总体 $X$ 服从 $[0,theta]$ 上的均匀分布，其中 $theta in (0,+infinity)$ 为未知参数.$X_1,X_2,dots,X_n$ 是来自总体 $X$ 的简单随机样本，记 $X_((n))=max{X_1,X_2,dots,X_n}$，$T_c=c X_((n))$.

（1）求 $c$，使得 $T_c$ 是 $theta$ 的无偏估计；

（2）记 $h(c)=E(T_c-theta)^2$，求 $c$ 使得 $h(c)$ 最小.
]

