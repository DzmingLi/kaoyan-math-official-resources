#import "../template.typ": exam
#show: exam.with(year: 2005, subject: "三", title: "2005年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#ezexam.answer-state.update(false)


= 一、填空题（本题共6小题，每小题4分，满分24分）

#ezexam.question[
极限 $lim_(x->infinity)x sin((2x)/(x^2+1))=$#h(3em).
]

#ezexam.question[
微分方程 $x y'+y=0$ 满足初始条件 $y(1)=2$ 的特解为#h(3em).
]

#ezexam.question[
设二元函数 $z=x e^(x+y)+(x+1)ln(1+y)$，则 $dif z|_((1,0))=$#h(3em).
]

#ezexam.question[
设行向量组 $(2,1,1,1),(2,1,a,a),(3,2,1,a),(4,3,2,1)$ 线性相关，且 $a!=1$，则 $a=$#h(3em).
]

#ezexam.question[
从数1，2，3，4中任取一个数，记为 $X$，再从 $1,dots,X$ 中任取一个数，记为 $Y$，则 $P{Y=2}=$#h(3em).
]

#ezexam.question[
设二维随机变量 $(X,Y)$ 的概率分布为
#table(columns:3,[$X$ / $Y$],[0],[1],[0],[0.4],[$a$],[1],[$b$],[0.1])
若随机事件 $\{X=0\}$ 与 $\{X+Y=1\}$ 相互独立，则 $a=$#h(3em)，$b=$#h(3em).
]

= 二、选择题（本题共8小题，每小题4分，满分32分）

#ezexam.question[
当 $a$ 取下列哪个值时，函数 $f(x)=2x^3-9x^2+12x-a$ 恰有两个不同的零点？
#choices[2.][4.][6.][8.]
]

#ezexam.question[
设 $I_1=integral.double_D cos sqrt(x^2+y^2)dif sigma,I_2=integral.double_D cos(x^2+y^2)dif sigma,I_3=integral.double_D cos((x^2+y^2)^2)dif sigma$，其中 $D={(x,y)|x^2+y^2<=1}$，则
#choices([$I_3>I_2>I_1$.],[$I_1>I_2>I_3$.],[$I_2>I_1>I_3$.],[$I_3>I_1>I_2$.])
]

#ezexam.question[
设 $a_n>0,n=1,2,dots$，若 $sum_(n=1)^infinity a_n$ 发散，$sum_(n=1)^infinity(-1)^(n-1)a_n$ 收敛，则下列结论正确的是
#choices([$sum_(n=1)^infinity a_(2n-1)$ 收敛，$sum_(n=1)^infinity a_(2n)$ 发散.],[$sum_(n=1)^infinity a_(2n)$ 收敛，$sum_(n=1)^infinity a_(2n-1)$ 发散.],[$sum_(n=1)^infinity(a_(2n-1)+a_(2n))$ 收敛.],[$sum_(n=1)^infinity(a_(2n-1)-a_(2n))$ 收敛.])
]

#ezexam.question[
设 $f(x)=x sin x+cos x$，下列命题中正确的是
#choices([$f(0)$ 是极大值，$f(pi/2)$ 是极小值.],[$f(0)$ 是极小值，$f(pi/2)$ 是极大值.],[$f(0)$ 是极大值，$f(pi/2)$ 也是极大值.],[$f(0)$ 是极小值，$f(pi/2)$ 也是极小值.])
]

#ezexam.question[
以下四个命题中，正确的是
#choices([若 $f'(x)$ 在 $(0,1)$ 内连续，则 $f(x)$ 在 $(0,1)$ 内有界.],[若 $f(x)$ 在 $(0,1)$ 内连续，则 $f(x)$ 在 $(0,1)$ 内有界.],[若 $f'(x)$ 在 $(0,1)$ 内有界，则 $f(x)$ 在 $(0,1)$ 内有界.],[若 $f(x)$ 在 $(0,1)$ 内有界，则 $f'(x)$ 在 $(0,1)$ 内有界.])
]

#ezexam.question[
设矩阵 $A=(a_(i j))_(3 times 3)$ 满足 $A^*=A^T$，其中 $A^*$ 为 $A$ 的伴随矩阵，$A^T$ 为 $A$ 的转置矩阵.若 $a_11,a_12,a_13$ 为三个相等的正数，则 $a_11$ 为
#choices([$sqrt(3)/3$.],[3.],[$1/3$.],[$sqrt(3)$.])
]

#ezexam.question[
设 $lambda_1,lambda_2$ 是矩阵 $A$ 的两个不同的特征值，对应的特征向量分别为 $alpha_1,alpha_2$，则 $alpha_1,A(alpha_1+alpha_2)$ 线性无关的充分必要条件是
#choices([$lambda_1=0$.],[$lambda_2=0$.],[$lambda_1!=0$.],[$lambda_2!=0$.])
]

#ezexam.question[
设一批零件的长度服从正态分布 $N(mu,sigma^2)$，其中 $mu,sigma^2$ 均未知.现从中随机抽取16个零件，测得样本均值 $overline(x)=20$（cm），样本标准差 $s=1$（cm），则 $mu$ 的置信度为0.90的置信区间是
#choices([$(20-1/4 t_0.05(16),20+1/4 t_0.05(16))$.],[$(20-1/4 t_0.1(16),20+1/4 t_0.1(16))$.],[$(20-1/4 t_0.05(15),20+1/4 t_0.05(15))$.],[$(20-1/4 t_0.1(15),20+1/4 t_0.1(15))$.])
]

= 三、解答题（本题共9小题，满分94分.解答应写出文字说明、证明过程或演算步骤.）

#ezexam.question[
（本题满分8分）

求 $lim_(x->0)((1+x)/(1-e^(-x))-1/x)$.
]

#ezexam.question[
（本题满分8分）

设 $f(u)$ 具有二阶连续导数，且 $g(x,y)=f(y/x)+y f(x/y)$，求 $x^2(partial^2 g)/(partial x^2)-y^2(partial^2 g)/(partial y^2)$.
]

#ezexam.question[
（本题满分9分）

计算二重积分 $integral.double_D |x^2+y^2-1|dif sigma$，其中 $D={(x,y)|0<=x<=1,0<=y<=1}$.
]

#ezexam.question[
（本题满分9分）

求幂级数 $sum_(n=1)^infinity(1/(2n+1)-1)x^(2n)$ 在区间 $(-1,1)$ 内的和函数 $S(x)$.
]

#ezexam.question[
（本题满分8分）

设 $f(x),g(x)$ 在 $[0,1]$ 上的导数连续，且 $f(0)=0,f'(x)>=0,g'(x)>=0$.证明：对任意 $a in [0,1]$，有
$ integral_0^a g(x)f'(x)dif x+integral_0^1 f(x)g'(x)dif x>=f(a)g(1). $
]

#ezexam.question[
（本题满分13分）

已知齐次线性方程组
$ ("i")cases(x_1+2x_2+3x_3=0,2x_1+3x_2+5x_3=0,x_1+x_2+a x_3=0) $
和
$ ("ii")cases(x_1+b x_2+c x_3=0,2x_1+b^2 x_2+(c+1)x_3=0) $
同解，求 $a,b,c$ 的值.
]

#ezexam.question[
（本题满分13分）

设 $D=mat(A,C;C^T,B)$ 为正定矩阵，其中 $A,B$ 分别为 $m$ 阶、$n$ 阶对称矩阵，$C$ 为 $m times n$ 阶矩阵.

（Ⅰ）计算 $P^T D P$，其中 $P=mat(E_m,-A^(-1)C;O,E_n)$；

（Ⅱ）利用（Ⅰ）的结果判断矩阵 $B-C^T A^(-1)C$ 是否为正定矩阵，并证明你的结论.
]

#ezexam.question[
（本题满分13分）设二维随机变量 $(X,Y)$ 的概率密度为
$ f(x,y)=cases(1 & 0<x<1,0<y<2x,0 & #text[其他]). $
求：（Ⅰ）$(X,Y)$ 的边缘概率密度 $f_X(x),f_Y(y)$；

（Ⅱ）$Z=2X-Y$ 的概率密度 $f_Z(z)$；

（Ⅲ）$P{Y<=1/2 | X<=1/2}$.
]

#ezexam.question[
（本题满分13分）

设 $X_1,X_2,dots,X_n (n>2)$ 为来自总体 $N(0,sigma^2)$ 的简单随机样本，其样本均值为 $overline(X)$.记 $Y_i=X_i-overline(X),i=1,2,dots,n$.

（Ⅰ）求 $Y_i$ 的方差 $D Y_i,i=1,2,dots,n$；

（Ⅱ）求 $Y_1$ 与 $Y_n$ 的协方差 $op("Cov")(Y_1,Y_n)$；

（Ⅲ）若 $c(Y_1+Y_n)^2$ 是 $sigma^2$ 的无偏估计量，求常数 $c$.
]

