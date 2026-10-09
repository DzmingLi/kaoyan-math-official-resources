#import "../template.typ": exam
#show: exam.with(year: 2013, subject: "一")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#ezexam.answer-state.update(false)


= 一、选择题：1—8小题，每小题4分，共32分. 在每小题给出的四个选项中，只有一项符合题目要求，把所选项前的字母填在题后的括号内.

#ezexam.question[
若 $lim_(x->0)(x-arctan x)/x^k=c$，其中 $k,c$ 为常数，且 $c!=0$，则
#choices([$k=2,c=-1/2$.],[$k=2,c=1/2$.],[$k=3,c=-1/3$.],[$k=3,c=1/3$.])
]

#ezexam.question[
曲面 $x^2+cos(x y)+y z+x=0$ 在点 $(0,1,-1)$ 处的切平面方程为
#choices([$x-y+z=-2$.],[$x+y+z=0$.],[$x-2y+z=-3$.],[$x-y-z=0$.])
]

#ezexam.question[
设 $f(x)=|x-1/2|$，$b_n=2integral_0^1 f(x)sin(n pi x)dif x$，则级数 $sum_(n=1)^infinity b_n sin(n pi x)$ 在 $x=-9/4$ 处的和为
#choices([$3/4$.],[$1/4$.],[$-1/4$.],[$-3/4$.])
]

#ezexam.question[
设 $L_1,L_2,L_3,L_4$ 分别为圆周 $x^2+y^2=1$、圆周 $x^2+y^2=2$、椭圆 $x^2+2y^2=2$ 和椭圆 $2x^2+y^2=2$，方向均为逆时针方向.记 $I_i=integral_(L_i)(y+y^3/6)dif x+(2x-x^3/3)dif y$，则 $I_1,I_2,I_3,I_4$ 中最大的为
#choices([$I_1$.],[$I_2$.],[$I_3$.],[$I_4$.])
]

#ezexam.question[
设 $A,B,C$ 均为 $n$ 阶矩阵，且 $A B=C$.若 $B$ 可逆，则
#choices([$C$ 的行向量组与 $A$ 的行向量组等价.],[$C$ 的列向量组与 $A$ 的列向量组等价.],[$C$ 的行向量组与 $B$ 的行向量组等价.],[$C$ 的列向量组与 $B$ 的列向量组等价.])
]

#ezexam.question[
矩阵 $mat(1,a,1;a,b,a;1,a,1)$ 与 $mat(2,0,0;0,b,0;0,0,0)$ 相似的充分必要条件为
#choices([$a=0,b=2$.],[$a=0,b$ 为任意常数.],[$a=2,b=0$.],[$a=2,b$ 为任意常数.])
]

#ezexam.question[
设随机变量 $X_1,X_2,X_3$ 的分布分别为 $N(0,1),N(0,2^2),N(5,3^2)$，记 $p_i=P{-2<=X_i<=2}(i=1,2,3)$，则
#choices([$p_1>p_2>p_3$.],[$p_2>p_1>p_3$.],[$p_3>p_1>p_2$.],[$p_1>p_3>p_2$.])
]

#ezexam.question[
设随机变量 $X tilde.op t(n),Y tilde.op F(1,n)$，给定 $alpha (0<alpha<0.5)$，常数 $c$ 满足 $P{X>c}=alpha$，则 $P{Y>c^2}=$
#choices([$alpha$.],[$1-alpha$.],[$2alpha$.],[$1-2alpha$.])
]

= 二、填空题：9—14小题，每小题4分，共24分. 把答案填在题中横线上.

#ezexam.question[
设函数 $y=f(x)$ 由方程 $y-x=e^(x(1-y))$ 确定，则 $lim_(n->infinity)n[f(1/n)-1]=$#h(3em).
]

#ezexam.question[
设 $y_1=e^(3x)-x e^(2x),y_2=e^x-x e^(2x),y_3=-x e^(2x)$ 是某二阶常系数非齐次线性微分方程的3个解，则该方程的通解为#h(3em).
]

#ezexam.question[
设曲线的参数方程为 $cases(x=sin t,y=t sin t+cos t)$，则 $((dif^2 y)/(dif x^2))|_(t=pi/4)=$#h(3em).
]

#ezexam.question[
$integral_1^infinity (ln x)/(1+x)^2 dif x=$#h(3em).
]

#ezexam.question[
设 $A=(a_(i j))$ 是3阶非零矩阵，$A_(i j)$ 为元素 $a_(i j)$ 的代数余子式，若 $a_(i j)+A_(i j)=0 (i,j=1,2,3)$，则 $|A|=$#h(3em).
]

#ezexam.question[
设随机变量 $Y$ 服从参数为1的指数分布，$a>0$，则 $P{Y<=a+1 bar Y>a}=$#h(3em).
]

= 三、解答题：15—23小题，共94分. 解答应写出文字说明、证明过程或演算步骤.

#ezexam.question[
（本题满分10分）设 $f(x)=integral_1^x (ln(t+1))/t dif t$，求 $integral_0^1 f(x)/sqrt(x)dif x$.
]

#ezexam.question[
（本题满分10分）设幂级数 $sum_(n=0)^infinity a_n x^n$ 的和函数为 $S(x)$，其中 $a_0=3,a_1=1$，且 $a_(n-2)-n(n-1)a_n=0 (n>=2)$.

（Ⅰ）证明 $S''(x)-S(x)=0$；

（Ⅱ）求 $S(x)$ 的表达式.
]

#ezexam.question[
（本题满分10分）求函数 $f(x,y)=(y+x^3/3)e^(x+y)$ 的极值.
]

#ezexam.question[
（本题满分10分）设 $f(x)$ 是区间 $[-1,1]$ 上具有二阶导数的奇函数，且 $f(1)=1$.证明：

（Ⅰ）存在 $xi in (0,1)$，使得 $f'(xi)=1$；

（Ⅱ）存在 $eta in (-1,1)$，使得 $f''(eta)+f'(eta)=1$.
]

#ezexam.question[
（本题满分10分）设直线 $L$ 过点 $A(1,0,0)$ 和 $B(0,1,1)$，将 $L$ 绕 $z$ 轴旋转一周得到曲面 $Sigma$，由 $Sigma$ 与平面 $z=0,z=2$ 所围成的立体为 $Omega$.求：

（Ⅰ）曲面 $Sigma$ 的方程；

（Ⅱ）立体 $Omega$ 的形心坐标.
]

#ezexam.question[
（本题满分11分）设 $A=mat(1,a;1,0),B=mat(0,1;1,b)$.问 $a,b$ 为何值时，存在矩阵 $C$ 使得 $A C-C A=B$，并求所有矩阵 $C$.
]

#ezexam.question[
（本题满分11分）设二次型 $f(x_1,x_2,x_3)=2(a_1 x_1+a_2 x_2+a_3 x_3)^2+(b_1 x_1+b_2 x_2+b_3 x_3)^2$，记 $alpha=(a_1,a_2,a_3)^T,beta=(b_1,b_2,b_3)^T$.

（Ⅰ）证明二次型 $f$ 的矩阵为 $A=2alpha alpha^T+beta beta^T$；

（Ⅱ）若 $alpha,beta$ 为正交单位向量，求二次型 $f$ 的标准形.
]

#ezexam.question[
（本题满分11分）设随机变量 $X$ 的概率密度为 $f(x)=cases(x^2/9 & 0<x<3,0 & "其他")$，令 $Y=cases(2 & X<=1,X & 1<X<2,1 & X>=2)$.

（Ⅰ）求 $Y$ 的分布函数；

（Ⅱ）求概率 $P{X<=Y}$.
]

#ezexam.question[
（本题满分11分）设总体 $X$ 的概率密度为
$ f(x;theta)=cases(theta^2/x^3 e^(-theta/x) & x>0,0 & "其他"), $
其中 $theta$ 为未知参数且大于零，$X_1,X_2,dots,X_n$ 为来自总体 $X$ 的简单随机样本.

（Ⅰ）求 $theta$ 的矩估计量；

（Ⅱ）求 $theta$ 的最大似然估计量.
]

