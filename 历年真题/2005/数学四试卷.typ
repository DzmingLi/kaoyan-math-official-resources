#import "../template.typ": exam
#show: exam.with(year: 2005, subject: "四", title: "2005年全国硕士研究生入学统一考试")
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
设 $alpha_1,alpha_2,alpha_3$ 均为三维列向量，记矩阵 $A=(alpha_1,alpha_2,alpha_3),B=(alpha_1+alpha_2+alpha_3,alpha_1+2alpha_2+4alpha_3,alpha_1+3alpha_2+9alpha_3)$.如果 $|A|=1$，那么 $|B|=$#h(3em).
]

#ezexam.question[
从数1，2，3，4中任取一个数，记为 $X$，再从 $1,dots,X$ 中任取一个数，记为 $Y$，则 $P{Y=2}=$#h(3em).
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
下列结论中正确的是
#choices([$integral_1^(+infinity)(dif x)/(x(x+1))$ 与 $integral_0^1(dif x)/(x(x+1))$ 都收敛.],[$integral_1^(+infinity)(dif x)/(x(x+1))$ 与 $integral_0^1(dif x)/(x(x+1))$ 都发散.],[$integral_1^(+infinity)(dif x)/(x(x+1))$ 发散，$integral_0^1(dif x)/(x(x+1))$ 收敛.],[$integral_1^(+infinity)(dif x)/(x(x+1))$ 收敛，$integral_0^1(dif x)/(x(x+1))$ 发散.])
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
设 $A,B,C$ 均为 $n$ 阶矩阵，$E$ 为 $n$ 阶单位矩阵，若 $B=E+A B,C=A+C A$，则 $B-C$ 为
#choices([$E$.],[$-E$.],[$A$.],[$-A$.])
]

#ezexam.question[
设二维随机变量 $(X,Y)$ 的概率分布为
#table(columns:3,[$X$ / $Y$],[0],[1],[0],[0.4],[$a$],[1],[$b$],[0.1])
若随机事件 $\{X=0\}$ 与 $\{X+Y=1\}$ 相互独立，则
#choices([$a=0.2,b=0.3$.],[$a=0.1,b=0.4$.],[$a=0.3,b=0.2$.],[$a=0.4,b=0.1$.])
]

#ezexam.question[
设 $X_1,X_2,dots,X_n,dots$ 为独立同分布的随机变量列，且均服从参数为 $lambda (lambda>1)$ 的指数分布，记 $Phi(x)$ 为标准正态分布函数，则
#choices([$lim_(n->infinity)P{(sum_(i=1)^n X_i-n lambda)/(lambda sqrt(n))<=x}=Phi(x)$.],[$lim_(n->infinity)P{(sum_(i=1)^n X_i-n lambda)/sqrt(n lambda)<=x}=Phi(x)$.],[$lim_(n->infinity)P{(lambda sum_(i=1)^n X_i-n)/sqrt(n)<=x}=Phi(x)$.],[$lim_(n->infinity)P{(sum_(i=1)^n X_i-lambda)/sqrt(n lambda)<=x}=Phi(x)$.])
]

= 三、解答题（本题共9小题，满分94分. 解答应写出文字说明、证明过程或演算步骤.）

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

求 $f(x,y)=x^2-y^2+2$ 在椭圆域 $D={(x,y)|x^2+y^2/4<=1}$ 上的最大值和最小值.
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

设 $A$ 为三阶矩阵，$alpha_1,alpha_2,alpha_3$ 是线性无关的三维列向量，且满足
$ A alpha_1=alpha_1+alpha_2+alpha_3,A alpha_2=2alpha_2+alpha_3,A alpha_3=2alpha_2+3alpha_3. $
（Ⅰ）求矩阵 $B$，使得 $A(alpha_1,alpha_2,alpha_3)=(alpha_1,alpha_2,alpha_3)B$；

（Ⅱ）求矩阵 $A$ 的特征值；

（Ⅲ）求可逆矩阵 $P$，使得 $P^(-1)A P$ 为对角矩阵.
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

设 $X_1,X_2,dots,X_n (n>2)$ 为独立同分布的随机变量，且均服从 $N(0,1)$.记 $overline(X)=1/n sum_(i=1)^n X_i,Y_i=X_i-overline(X),i=1,2,dots,n$，求：

（Ⅰ）$Y_i$ 的方差 $D Y_i,i=1,2,dots,n$；

（Ⅱ）$Y_1$ 与 $Y_n$ 的协方差 $op("Cov")(Y_1,Y_n)$；

（Ⅲ）$P{Y_1+Y_n<=0}$.
]

