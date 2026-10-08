#import "../template.typ": exam
#show: exam.with(year: 2013, subject: "二")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#ezexam.answer-state.update(false)


= 一、选择题：1—8小题，每小题4分，共32分.在每小题给出的四个选项中，只有一项符合题目要求，把所选项前的字母填在题后的括号内.

#ezexam.question[
设 $cos x-1=x sin alpha(x)$，其中 $|alpha(x)|<pi/2$，则当 $x->0$ 时，$alpha(x)$ 是
#choices([比 $x$ 高阶的无穷小量.],[比 $x$ 低阶的无穷小量.],[与 $x$ 同阶但不等价的无穷小量.],[与 $x$ 等价的无穷小量.])
]

#ezexam.question[
设函数 $y=f(x)$ 由方程 $cos(x y)+ln y-x=1$ 确定，则 $lim_(n->infinity)n[f(2/n)-1]=$
#choices([2.],[1.],[$-1$.],[$-2$.])
]

#ezexam.question[
设函数 $f(x)=cases(sin x & 0<=x<pi,2 & pi<=x<=2pi)$，$F(x)=integral_0^x f(t)dif t$，则
#choices([$x=pi$ 是函数 $F(x)$ 的跳跃间断点.],[$x=pi$ 是函数 $F(x)$ 的可去间断点.],[$F(x)$ 在 $x=pi$ 处连续但不可导.],[$F(x)$ 在 $x=pi$ 处可导.])
]

#ezexam.question[
设函数 $f(x)=cases(1/(x-1)^(alpha-1) & 1<x<e,1/(x ln^(alpha+1)x) & x>=e)$.若反常积分 $integral_1^infinity f(x)dif x$ 收敛，则
#choices([$alpha<-2$.],[$alpha>2$.],[$-2<alpha<0$.],[$0<alpha<2$.])
]

#ezexam.question[
设 $z=y/x f(x y)$，其中函数 $f$ 可微，则 $x/y (partial z)/(partial x)+(partial z)/(partial y)=$
#choices([$2y f'(x y)$.],[$-2y f'(x y)$.],[$2/x f(x y)$.],[$-2/x f(x y)$.])
]

#ezexam.question[
设 $D_k$ 是圆域 $D={(x,y) bar x^2+y^2<=1}$ 在第 $k$ 象限的部分，记 $I_k=integral.double_(D_k)(y-x)dif x dif y (k=1,2,3,4)$，则
#choices([$I_1>0$.],[$I_2>0$.],[$I_3>0$.],[$I_4>0$.])
]

#ezexam.question[
设 $A,B,C$ 均为 $n$ 阶矩阵，且 $A B=C$.若 $B$ 可逆，则
#choices([$C$ 的行向量组与 $A$ 的行向量组等价.],[$C$ 的列向量组与 $A$ 的列向量组等价.],[$C$ 的行向量组与 $B$ 的行向量组等价.],[$C$ 的列向量组与 $B$ 的列向量组等价.])
]

#ezexam.question[
矩阵 $mat(1,a,1;a,b,a;1,a,1)$ 与 $mat(2,0,0;0,b,0;0,0,0)$ 相似的充分必要条件为
#choices([$a=0,b=2$.],[$a=0,b$ 为任意常数.],[$a=2,b=0$.],[$a=2,b$ 为任意常数.])
]

= 二、填空题：9—14小题，每小题4分，共24分.把答案填在题中横线上.

#ezexam.question[
$lim_(x->0)[2-(ln(1+x))/x]^(1/x)=$#h(3em).
]

#ezexam.question[
设函数 $f(x)=integral_(-1)^x sqrt(1-e^t)dif t$，则 $y=f(x)$ 的反函数 $x=f^(-1)(y)$ 在 $y=0$ 处的导数 $(dif x)/(dif y)|_(y=0)=$#h(3em).
]

#ezexam.question[
设封闭曲线 $L$ 的极坐标方程为 $r=cos 3theta (-pi/6<=theta<=pi/6)$，则 $L$ 所围平面图形的面积是#h(3em).
]

#ezexam.question[
曲线 $cases(x=arctan t,y=ln sqrt(1+t^2))$ 上对应于 $t=1$ 的点处的法线方程为#h(3em).
]

#ezexam.question[
已知 $y_1=e^(3x)-x e^(2x),y_2=e^x-x e^(2x),y_3=-x e^(2x)$ 是某二阶常系数非齐次线性微分方程的3个解，则该方程满足条件 $y|_(x=0)=0,y'|_(x=0)=1$ 的解为 $y=$#h(3em).
]

#ezexam.question[
设 $A=(a_(i j))$ 是3阶非零矩阵，$A_(i j)$ 为元素 $a_(i j)$ 的代数余子式，若 $a_(i j)+A_(i j)=0 (i,j=1,2,3)$，则 $|A|=$#h(3em).
]

= 三、解答题：15—23小题，共94分.解答应写出文字说明、证明过程或演算步骤.

#ezexam.question[
（本题满分10分）当 $x->0$ 时，$1-cos x cos 2x cos 3x$ 与 $a x^n$ 为等价无穷小量，求 $n$ 与 $a$ 的值.
]

#ezexam.question[
（本题满分10分）设 $D$ 是由曲线 $y=x^(1/3)$、直线 $x=a (a>0)$ 及 $x$ 轴所围成的平面图形，$V_x,V_y$ 分别是 $D$ 绕 $x$ 轴、$y$ 轴旋转一周所得旋转体的体积.若 $V_y=10V_x$，求 $a$ 的值.
]

#ezexam.question[
（本题满分10分）设平面区域 $D$ 由直线 $x=3y,y=3x$ 及 $x+y=8$ 围成，计算 $integral.double_D x^2 dif x dif y$.
]

#ezexam.question[
（本题满分10分）设 $f(x)$ 是区间 $[-1,1]$ 上具有二阶导数的奇函数，且 $f(1)=1$.证明：

（Ⅰ）存在 $xi in (0,1)$，使得 $f'(xi)=1$；

（Ⅱ）存在 $eta in (-1,1)$，使得 $f''(eta)+f'(eta)=1$.
]

#ezexam.question[
（本题满分10分）求曲线 $x^3-x y+y^3=1 (x>=0,y>=0)$ 上的点到坐标原点的最长距离与最短距离.
]

#ezexam.question[
（本题满分11分）设函数 $f(x)=ln x+1/x$.

（Ⅰ）求 $f(x)$ 的最小值；

（Ⅱ）设数列 $x_n$ 满足 $ln x_n+1/x_(n+1)<1$，证明 $lim_(n->infinity)x_n$ 存在，并求此极限.
]

#ezexam.question[
（本题满分11分）设曲线 $L$ 的方程为 $y=1/4 x^2-1/2 ln x (1<=x<=e)$.

（Ⅰ）求 $L$ 的弧长；

（Ⅱ）设 $D$ 是由曲线 $L$、直线 $x=1,x=e$ 及 $x$ 轴所围平面图形，求 $D$ 的形心的横坐标.
]

#ezexam.question[
（本题满分11分）设 $A=mat(1,a;1,0),B=mat(0,1;1,b)$.问 $a,b$ 为何值时，存在矩阵 $C$ 使得 $A C-C A=B$，并求所有矩阵 $C$.
]

#ezexam.question[
（本题满分11分）设二次型 $f(x_1,x_2,x_3)=2(a_1 x_1+a_2 x_2+a_3 x_3)^2+(b_1 x_1+b_2 x_2+b_3 x_3)^2$，记 $alpha=(a_1,a_2,a_3)^T,beta=(b_1,b_2,b_3)^T$.

（Ⅰ）证明二次型 $f$ 的矩阵为 $A=2alpha alpha^T+beta beta^T$；

（Ⅱ）若 $alpha,beta$ 为正交单位向量，证明 $f$ 在正交变换下的标准形为 $2y_1^2+y_2^2$.
]

