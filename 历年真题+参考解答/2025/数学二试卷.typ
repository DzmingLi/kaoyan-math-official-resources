#import "../template.typ": exam
#show: exam.with(year: 2025, subject: "二")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices.with(r-gap: 1.3em)
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)


= 一、选择题：第1—10小题，每小题5分，共50分. 下列每小题给出的四个选项中，只有一个选项是最符合题目要求的.

#ezexam.question[
设函数 $z=z(x,y)$ 由 $z+ln z-integral_y^x e^(-t^2) dif t=0$ 确定，则 $(partial z)/(partial x)+(partial z)/(partial y)=$（　）.
#choices([$z/(z+1)(e^(-x^2)-e^(-y^2))$],[$z/(z+1)(e^(-x^2)+e^(-y^2))$],[$-z/(z+1)(e^(-x^2)-e^(-y^2))$],[$-z/(z+1)(e^(-x^2)+e^(-y^2))$])
]

#ezexam.question[
已知函数 $f(x)=integral_0^x e^(t^2) sin t dif t$，$g(x)=integral_0^x e^(t^2) dif t dot sin^2 x$，则（　）.
#choices([$x=0$ 是 $f(x)$ 的极值点，也是 $g(x)$ 的极值点.],[$x=0$ 是 $f(x)$ 的极值点，$(0,0)$ 是曲线 $y=g(x)$ 的拐点.],[$x=0$ 是 $g(x)$ 的极值点，$(0,0)$ 是曲线 $y=f(x)$ 的拐点.],[$(0,0)$ 是曲线 $y=f(x)$ 的拐点，也是曲线 $y=g(x)$ 的拐点.])
]

#ezexam.question[
如果对微分方程 $y''-2a y'+(a+2)y=0$ 的任一解 $y(x)$，反常积分 $integral_0^(+infinity) y(x) dif x$ 均收敛，那么 $a$ 的取值范围是（　）.
#choices([$(-2,-1]$],[$(-infinity,-1]$],[$(-2,0)$],[$(-infinity,0)$])
]

#ezexam.question[
设函数 $f(x),g(x)$ 在 $x=0$ 的某去心邻域内有定义且恒不为零.若当 $x->0$ 时，$f(x)$ 是 $g(x)$ 的高阶无穷小，则当 $x->0$ 时，（　）.
#choices([$f(x)+g(x)=o(g(x))$],[$f(x)g(x)=o(f^2(x))$],[$f(x)=o(e^(g(x))-1)$],[$f(x)=o(g^2(x))$])
]

#ezexam.question[
设函数 $f(x,y)$ 连续，则 $integral_(-2)^2 dif x integral_(4-x^2)^4 f(x,y) dif y=$（　）.
#choices([$integral_0^4 [integral_(-2)^(-sqrt(4-y)) f(x,y) dif x+integral_(sqrt(4-y))^2 f(x,y) dif x] dif y$],[$integral_0^4 [integral_(-2)^(sqrt(4-y)) f(x,y) dif x+integral_(sqrt(4-y))^2 f(x,y) dif x] dif y$],[$integral_0^4 [integral_(-2)^(-sqrt(4-y)) f(x,y) dif x+integral_2^(sqrt(4-y)) f(x,y) dif x] dif y$],[$2integral_0^4 dif y integral_(sqrt(4-y))^2 f(x,y) dif x$])
]

#ezexam.question[
设单位质点 $P,Q$ 分别位于点 $(0,0)$ 和 $(0,1)$ 处，$P$ 从点 $(0,0)$ 出发沿 $x$ 轴正向移动，记 $G$ 为引力常量，则当质点 $P$ 移动到点 $(1,0)$ 时，克服质点 $Q$ 的引力所做的功为（　）.
#choices([$integral_0^1 G/(x^2+1) dif x$],[$integral_0^1 (G x)/(x^2+1)^(3/2) dif x$],[$integral_0^1 G/(x^2+1)^(3/2) dif x$],[$integral_0^1 (G(x+1))/(x^2+1)^(3/2) dif x$])
]

#ezexam.question[
设函数 $f(x)$ 连续，给出下列四个条件：

① $lim_(x->0) (abs(f(x))-f(0))/x$ 存在；② $lim_(x->0) (f(x)-abs(f(0)))/x$ 存在；

③ $lim_(x->0) abs(f(x))/x$ 存在；④ $lim_(x->0) (abs(f(x))-abs(f(0)))/x$ 存在.

其中能得到“$f(x)$ 在 $x=0$ 处可导”的条件的个数是（　）.
#choices([1.],[2.],[3.],[4.])
]

#ezexam.question[
设矩阵 $mat(1,2,0;2,a,0;0,0,b)$ 有一个正特征值和两个负特征值，则（　）.
#choices([$a>4,b>0$],[$a<4,b>0$],[$a>4,b<0$],[$a<4,b<0$])
]

#ezexam.question[
下列矩阵中，可以经过若干初等行变换得到矩阵 $mat(1,1,0,1;0,0,1,2;0,0,0,0)$ 的是（　）.
#choices([$mat(1,1,0,1;1,2,1,3;2,3,1,4)$],[$mat(1,1,0,1;1,1,2,5;1,1,1,3)$],[$mat(1,0,0,1;0,1,0,3;0,1,0,0)$],[$mat(1,1,2,3;1,2,2,3;2,3,4,6)$])
]

#ezexam.question[
设3阶矩阵 $A,B$ 满足 $r(A B)=r(B A)+1$，则（　）.
#choices([方程组 $(A+B)bold(x)=bold(0)$ 只有零解.],[方程组 $A bold(x)=bold(0)$ 与方程组 $B bold(x)=bold(0)$ 均只有零解.],[方程组 $A bold(x)=bold(0)$ 与方程组 $B bold(x)=bold(0)$ 没有公共非零解.],[方程组 $A B A bold(x)=bold(0)$ 与方程组 $B A B bold(x)=bold(0)$ 有公共非零解.])
]

= 二、填空题：第11—16小题，每小题5分，共30分.

#ezexam.question[
设 $integral_1^(+infinity) a/(x(2x+a)) dif x=ln 2$，则 $a=$#fillin(len: 2.97656em)[].
]

#ezexam.question[
曲线 $y=root(3,x^3-3x^2+1)$ 的渐近线方程为#fillin(len: 2.97656em)[].
]

#ezexam.question[
$lim_(n->infinity) 1/n^2 [ln(1/n)+2ln(2/n)+dots+(n-1)ln((n-1)/n)]=$#fillin(len: 2.97656em)[].
]

#ezexam.question[
已知函数 $y=y(x)$ 由 $cases(x=ln(1+2t),2t-integral_1^(y+t^2) e^(-u^2) dif u=0)$ 确定，则 $(dif y)/(dif x)|_(t=0)=$#fillin(len: 2.97656em)[].
]

#ezexam.question[
微分方程 $(2y-3x) dif x+(2x-5y) dif y=0$ 满足条件 $y(1)=1$ 的解为#fillin(len: 2.97656em)[].
]

#ezexam.question[
设矩阵 $A=(bold(alpha)_1,bold(alpha)_2,bold(alpha)_3,bold(alpha)_4)$.若 $bold(alpha)_1,bold(alpha)_2,bold(alpha)_3$ 线性无关，且 $bold(alpha)_1+bold(alpha)_2=bold(alpha)_3+bold(alpha)_4$，则方程组 $A bold(x)=bold(alpha)_1+4bold(alpha)_4$ 的通解为 $bold(x)=$#fillin(len: 2.97656em)[].
]

= 三、解答题：第17—22小题，共70分. 解答应写出文字说明、证明过程或演算步骤.

#ezexam.question[
（本题满分10分）

计算 $integral_0^1 1/((x+1)(x^2-2x+2)) dif x$.
]

#ezexam.question[
（本题满分12分）

设函数 $f(x)$ 在 $x=0$ 处连续，且 $lim_(x->0) (x f(x)-e^(2sin x)+1)/(ln(1+x)+ln(1-x))=-3$，证明 $f(x)$ 在 $x=0$ 处可导，并求 $f'(0)$.
]

#ezexam.question[
（本题满分12分）

设函数 $f(x,y)$ 可微且满足 $dif f(x,y)=-2x e^(-y) dif x+e^(-y)(x^2-y-1) dif y$，$f(0,0)=2$，求 $f(x,y)$，并求 $f(x,y)$ 的极值.
]

#ezexam.question[
（本题满分12分）

已知平面有界区域 $D={(x,y) bar.v x^2+y^2<=4x,x^2+y^2<=4y}$，计算 $integral.double_D (x-y)^2 dif x dif y$.
]

#ezexam.question[
（本题满分12分）

设函数 $f(x)$ 在区间 $(a,b)$ 内可导.证明：导函数 $f'(x)$ 在 $(a,b)$ 内严格单调增加的充分必要条件是：

对 $(a,b)$ 内任意的 $x_1,x_2,x_3$，当 $x_1<x_2<x_3$ 时，$(f(x_2)-f(x_1))/(x_2-x_1)<(f(x_3)-f(x_2))/(x_3-x_2)$.
]

#ezexam.question[
（本题满分12分）

已知矩阵 $A=mat(delim:"[",4,1,-2;1,1,1;-2,1,a)$ 与 $B=mat(k,0,0;0,6,0;0,0,0)$ 合同.

（1）求 $a$ 的值及 $k$ 的取值范围；

（2）若存在正交矩阵 $Q$ 使得 $Q^"T" A Q=B$，求 $k$ 及 $Q$.
]

