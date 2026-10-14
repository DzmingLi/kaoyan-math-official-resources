#import "../template.typ": exam
#show: exam.with(year: 2026, subject: "二")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices.with(r-gap: 1.3em)
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)


= 一、选择题：第1—10小题，每小题5分，共50分. 下列每小题给出的四个选项中，只有一个选项是符合题目要求的.

#ezexam.question[
已知当 $x->0$ 时，$a x^2+b x+arcsin x$ 与 $root(3,1+x^2)-1$ 是等价无穷小，则（　）.
#choices([$a=1/3,b=-1$.],[$a=1/3,b=1$.],[$a=2/3,b=-1$.],[$a=2/3,b=1$.])
]

#ezexam.question[
设 $y_1(x),y_2(x)$ 是某2阶非齐次线性微分方程的两个特解.若常数 $lambda,mu$ 使得 $2lambda y_1(x)+mu y_2(x)$ 是该方程的解，$lambda y_1(x)-2mu y_2(x)$ 是该方程对应的齐次方程的解，则（　）.
#choices([$lambda=1/5,mu=2/5$.],[$lambda=2/5,mu=1/5$.],[$lambda=1/4,mu=1/2$.],[$lambda=1/2,mu=1/4$.])
]

#ezexam.question[
设函数 $z=z(x,y)$ 由方程 $x-a z=e^(y+a z)$（$a$ 是非零常数）确定，则（　）.
#choices([$(partial z)/(partial x)-(partial z)/(partial y)=1/a$],[$(partial z)/(partial x)+(partial z)/(partial y)=1/a$],[$(partial z)/(partial x)-(partial z)/(partial y)=-1/a$],[$(partial z)/(partial x)+(partial z)/(partial y)=-1/a$])
]

#ezexam.question[
设线密度为1的细直棒的两个端点分别位于点 $(-1,0)$ 和点 $(1,0)$，质量为 $m$ 的质点位于点 $(0,1)$，$G$ 为引力常量，则该细直棒对该质点的引力大小为（　）.
#choices([$integral_0^1 (2G m x)/(x^2+1)^(1/2) dif x$],[$integral_0^1 (2G m)/(x^2+1)^(1/2) dif x$],[$integral_0^1 (2G m x)/(x^2+1)^(3/2) dif x$],[$integral_0^1 (2G m)/(x^2+1)^(3/2) dif x$])
]

#ezexam.question[
设函数 $f(x)$ 在区间 $[-1,1]$ 上有定义，则（　）.
#choices([当 $f(x)$ 在 $(-1,0)$ 单调递减，在 $(0,1)$ 单调递增时，$f(0)$ 是极小值.],[当 $f(0)$ 是极小值时，$f(x)$ 在 $(-1,0)$ 单调递减，在 $(0,1)$ 单调递增.],[当 $f(x)$ 的图形在 $[-1,1]$ 是凹的时，$(f(x)-f(1))/(x-1)$ 在 $[-1,1)$ 单调递增.],[当 $(f(x)-f(1))/(x-1)$ 在 $[-1,1)$ 单调递增时，$f(x)$ 的图形在 $[-1,1]$ 是凹的.])
]

#ezexam.question[
已知函数 $f(x)=integral_1^(x^3) e^t/(1+t^2) dif t$，$f$ 的反函数为 $g$，则（　）.
#choices([$g(0)=1,g'(0)=3/2 e$.],[$g(0)=1,g'(0)=2/(3e)$.],[$g(1)=0,g'(1)=3/2 e$.],[$g(1)=0,g'(1)=2/(3e)$.])
]

#ezexam.question[
设函数 $f(x,y)$ 在区域 $D={(x,y) bar.v 0<=x<=1,0<=y<=1}$ 上连续，且 $f(x,y)=f(y,x)$，则 $integral.double_D f(x,y) dif x dif y=$（　）.
#choices([$2lim_(n->infinity) sum_(i=1)^n sum_(j=n+1-i)^n f(i/n,j/n)1/n^2$],[$1/2 lim_(n->infinity) sum_(i=1)^n sum_(j=i)^n f(i/n,j/n)1/n^2$],[$2lim_(n->infinity) sum_(i=1)^(2n) sum_(j=1)^(2n+1-i) f(i/(2n),j/(2n))1/n^2$],[$1/2 lim_(n->infinity) sum_(i=1)^(2n) sum_(j=1)^i f(i/(2n),j/(2n))1/n^2$])
]

#ezexam.question[
单位矩阵经过若干次互换两行得到的矩阵称为置换矩阵.设 $A$ 为 $n$ 阶置换矩阵，$A^*$ 为 $A$ 的伴随矩阵，则（　）.
#choices([$A^*$ 为置换矩阵.],[$A^(-1)$ 为置换矩阵.],[$A^(-1)=A^*$.],[$A^(-1)=-A^*$. ])
]

#ezexam.question[
设矩阵 $A=mat(1,0,1;0,0,1;1,1,3;1,1,1)$，$C=mat(2,0;1,1;1,1;a,b)$.若存在矩阵 $B$ 满足 $A B=C$，则（　）.
#choices([$a=-1,b=-1$.],[$a=2,b=2$.],[$a=-1,b=2$.],[$a=2,b=-1$.])
]

#ezexam.question[
设3阶矩阵 $A,B$ 满足 $A B+B A=A^2+B^2$，且 $A!=B$，则下列结论错误的是（　）.
#choices([$(A-B)^3=O$.],[$A-B$ 只有零特征值.],[$A,B$ 不能都是对角矩阵.],[$A-B$ 只有一个线性无关的特征向量.])
]


= 二、填空题：第11—16小题，每小题5分，共30分.

#ezexam.question[
设 $p$ 为常数，若反常积分 $integral_0^(+infinity) arctan x/(x^p(x+1)) dif x$ 收敛，则 $p$ 的取值范围是#fillin(len: 2.97656em)[].
]

#ezexam.question[
$lim_(x->0) (1/x-ln(1+x)/(x sin x))=$#fillin(len: 2.97656em)[].
]

#ezexam.question[
曲线 $x^2+2sqrt(3)x y+y^2=1$ 在点 $(0,1)$ 处的曲率半径为#fillin(len: 2.97656em)[].
]

#ezexam.question[
已知函数 $f(x,y)$ 可微，且 $dif f(0,0)=pi dif x+3dif y$.记 $g(x)=f(ln x,sin pi x)$，则 $g'(1)=$#fillin(len: 2.97656em)[].
]

#ezexam.question[
函数 $f(x)=ln(2+x)$ 在区间 $[0,2]$ 上的平均值为#fillin(len: 2.97656em)[].
]

#ezexam.question[
设矩阵 $A=mat(1,b,-1;a+2,3,-3a)$.若二次型 $bold(x)^"T"(A A^"T")bold(x)$ 的规范形为 $y_1^2$，则 $a+b=$#fillin(len: 2.97656em)[].
]


= 三、解答题：第17—22小题，共70分. 解答应写出文字说明、证明过程或演算步骤.

#ezexam.question[
（本题满分10分）

计算 $I=integral_(-1)^1 dif x integral_(abs(x))^(sqrt(2-x^2)) y sin sqrt(x^2+y^2) dif y$.
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

已知 $M(x_0,y_0)$ 是曲线 $y=1/(1+x^2)$（$x>=0$）的拐点，$O$ 为坐标原点.记 $D$ 是第一象限中以曲线 $y=1/(1+x^2)$（$x>=x_0$）、线段 $O M$ 及 $x$ 正半轴为边界的无界区域，求 $D$ 绕 $x$ 轴旋转所成旋转体的体积.
]

#ezexam.question[
（本题满分12分）

求微分方程 $x^2 y''-2x y'-(y')^2=0$（$x>2$）满足条件 $y|_(x=3)=1/2$，$y'|_(x=3)=-9$ 的解.
]

#ezexam.question[
（本题满分12分）

已知向量组 $bold(alpha)_1=(1,0,-1,-1)^"T"$，$bold(alpha)_2=(1,-1,0,-2)^"T"$，$bold(alpha)_3=(0,-1,1,-1)^"T"$，$bold(alpha)_4=(0,1,-1,1)^"T"$.记 $A=(bold(alpha)_1,bold(alpha)_2,bold(alpha)_3,bold(alpha)_4)$，$G=(bold(alpha)_1,bold(alpha)_2)$.

（1）证明：$bold(alpha)_1,bold(alpha)_2$ 是向量组的极大线性无关组；

（2）求矩阵 $H$ 使得 $A=G H$，并求 $A^10$.
]

