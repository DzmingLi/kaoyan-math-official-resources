#import "../template.typ": exam
#show: exam.with(year: 2013, subject: "三")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#ezexam.answer-state.update(false)


= 一、选择题：1—8小题，每小题4分，共32分. 在每小题给出的四个选项中，只有一项符合题目要求，把所选项前的字母填在题后的括号内.

#ezexam.question[
当 $x->0$ 时，用 $o(x)$ 表示比 $x$ 高阶的无穷小量，则下列式子中错误的是
#choices([$x dot o(x^2)=o(x^3)$.],[$o(x)dot o(x^2)=o(x^3)$.],[$o(x^2)+o(x^2)=o(x^2)$.],[$o(x)+o(x^2)=o(x^2)$.])
]

#ezexam.question[
函数 $f(x)=(|x|^2-1)/(x(x+1)ln |x|)$ 的可去间断点的个数为
#choices([0.],[1.],[2.],[3.])
]

#ezexam.question[
设 $D_k$ 是圆域 $D={(x,y) bar x^2+y^2<=1}$ 在第 $k$ 象限的部分，记 $I_k=integral.double_(D_k)(y-x)dif x dif y (k=1,2,3,4)$，则
#choices([$I_1>0$.],[$I_2>0$.],[$I_3>0$.],[$I_4>0$.])
]

#ezexam.question[
设 $a_n$ 为正项数列，下列选项正确的是
#choices([若 $a_n>a_(n+1)$，则 $sum_(n=1)^infinity(-1)^(n-1)a_n$ 收敛.],[若 $sum_(n=1)^infinity(-1)^(n-1)a_n$ 收敛，则 $a_n>a_(n+1)$.],[若 $sum_(n=1)^infinity a_n$ 收敛，则存在常数 $p>1$，使 $lim_(n->infinity)n^p a_n$ 存在.],[若存在常数 $p>1$，使 $lim_(n->infinity)n^p a_n$ 存在，则 $sum_(n=1)^infinity a_n$ 收敛.])
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
设随机变量 $X$ 和 $Y$ 相互独立，且 $X$ 和 $Y$ 的概率分布分别为
#table(columns:5,[$X$],[0],[1],[2],[3],[$P$],[$1/2$],[$1/4$],[$1/8$],[$1/8$])
#table(columns:4,[$Y$],[$-1$],[0],[1],[$P$],[$1/3$],[$1/3$],[$1/3$])
则 $P{X+Y=2}=$
#choices([$1/12$.],[$1/8$.],[$1/6$.],[$1/2$.])
]

= 二、填空题：9—14小题，每小题4分，共24分. 把答案填在题中横线上.

#ezexam.question[
设曲线 $y=f(x)$ 与 $y=x^2-x$ 在点 $(1,0)$ 处有公共切线，则 $lim_(n->infinity)n f(n/(n+2))=$#h(3em).
]

#ezexam.question[
设函数 $z=z(x,y)$ 由方程 $(z+y)^x=x y$ 确定，则 $(partial z)/(partial x)|_((1,2))=$#h(3em).
]

#ezexam.question[
$integral_1^infinity (ln x)/(1+x)^2 dif x=$#h(3em).
]

#ezexam.question[
微分方程 $y''-y'+1/4 y=0$ 的通解为 $y=$#h(3em).
]

#ezexam.question[
设 $A=(a_(i j))$ 是3阶非零矩阵，$A_(i j)$ 为元素 $a_(i j)$ 的代数余子式，若 $a_(i j)+A_(i j)=0 (i,j=1,2,3)$，则 $|A|=$#h(3em).
]

#ezexam.question[
设随机变量 $X$ 服从标准正态分布 $N(0,1)$，则 $E(X e^(2X))=$#h(3em).
]

= 三、解答题：15—23小题，共94分. 解答应写出文字说明、证明过程或演算步骤.

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
（本题满分10分）设生产某商品的固定成本为60 000元，可变成本为20元/件，价格函数为 $p=60-Q/1000$（$p$ 是单价，单位：元；$Q$ 是销量，单位：件）.已知产销平衡，求：

（Ⅰ）该商品的边际利润；

（Ⅱ）当 $p=50$ 时的边际利润，并解释其经济意义；

（Ⅲ）使得利润最大的定价 $p$.
]

#ezexam.question[
（本题满分10分）设函数 $f(x)$ 在 $[0,+infinity)$ 上可导，$f(0)=0$，且 $lim_(x->+infinity)f(x)=2$.证明：

（Ⅰ）存在 $a>0$，使得 $f(a)=1$；

（Ⅱ）对（Ⅰ）中的 $a$，存在 $xi in (0,a)$，使得 $f'(xi)=1/a$.
]

#ezexam.question[
（本题满分11分）设 $A=mat(1,a;1,0),B=mat(0,1;1,b)$.问 $a,b$ 为何值时，存在矩阵 $C$ 使得 $A C-C A=B$，并求所有矩阵 $C$.
]

#ezexam.question[
（本题满分11分）设二次型 $f(x_1,x_2,x_3)=2(a_1 x_1+a_2 x_2+a_3 x_3)^2+(b_1 x_1+b_2 x_2+b_3 x_3)^2$，记 $alpha=(a_1,a_2,a_3)^T,beta=(b_1,b_2,b_3)^T$.

（Ⅰ）证明二次型 $f$ 的矩阵为 $A=2alpha alpha^T+beta beta^T$；

（Ⅱ）若 $alpha,beta$ 为正交单位向量，证明 $f$ 在正交变换下的标准形为 $2y_1^2+y_2^2$.
]

#ezexam.question[
（本题满分11分）设 $(X,Y)$ 是二维随机变量，$X$ 的边缘概率密度为 $f_X(x)=cases(3x^2 & 0<x<1,0 & "其他")$，在给定 $X=x (0<x<1)$ 的条件下 $Y$ 的条件概率密度为
$ f_(Y bar X)(y bar x)=cases((3y^2)/x^3 & 0<y<x,0 & "其他"). $
（Ⅰ）求 $(X,Y)$ 的概率密度 $f(x,y)$；

（Ⅱ）求 $Y$ 的边缘概率密度 $f_Y(y)$；

（Ⅲ）求 $P{X>2Y}$.
]

#ezexam.question[
（本题满分11分）设总体 $X$ 的概率密度为
$ f(x;theta)=cases(theta^2/x^3 e^(-theta/x) & x>0,0 & "其他"), $
其中 $theta$ 为未知参数且大于零，$X_1,X_2,dots,X_n$ 为来自总体 $X$ 的简单随机样本.

（Ⅰ）求 $theta$ 的矩估计量；

（Ⅱ）求 $theta$ 的最大似然估计量.
]

