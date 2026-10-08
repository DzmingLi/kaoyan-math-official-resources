#import "../template.typ": exam
#show: exam.with(year: 2006, subject: "四", title: "2006年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#ezexam.answer-state.update(false)


= 一、填空题（本题共6小题，每小题4分，满分24分）

#ezexam.question[
$lim_(n->infinity)((n+1)/n)^((-1)^n)=$#h(3em).
]

#ezexam.question[
设函数 $f(x)$ 在 $x=2$ 的某邻域内可导，且 $f'(x)=e^(f(x)),f(2)=1$，则 $f'''(2)=$#h(3em).
]

#ezexam.question[
设函数 $f(u)$ 可微，且 $f'(0)=1/2$，则 $z=f(4x^2-y^2)$ 在点 $(1,2)$ 处的全微分 $dif z|_((1,2))=$#h(3em).
]

#ezexam.question[
设 $alpha_1,alpha_2$ 为二维列向量，$A=(2alpha_1+alpha_2,alpha_1-alpha_2)$，$B=(alpha_1,alpha_2)$.若 $|A|=6$，则 $|B|=$#h(3em).
]

#ezexam.question[
设矩阵 $A=mat(2,1;-1,2)$，$E$ 为二阶单位矩阵，矩阵 $B$ 满足 $B A=B+2E$，则 $B=$#h(3em).
]

#ezexam.question[
设随机变量 $X$ 与 $Y$ 相互独立，且均服从区间 $[0,3]$ 上的均匀分布，则 $P{max{X,Y}<=1}=$#h(3em).
]

= 二、选择题（本题共8小题，每小题4分，满分32分）

#ezexam.question[
设函数 $y=f(x)$ 具有二阶导数，且 $f'(x)>0,f''(x)>0$，$Delta x$ 为自变量 $x$ 在点 $x_0$ 处的增量，$Delta y$ 与 $dif y$ 分别为 $f(x)$ 在点 $x_0$ 处对应的增量与微分，若 $Delta x>0$，则
#choices([$0<dif y<Delta y$.],[$0<Delta y<dif y$.],[$Delta y<dif y<0$.],[$dif y<Delta y<0$.])
]

#ezexam.question[
设函数 $f(x)$ 在 $x=0$ 处连续，且 $lim_(h->0)f(h^2)/h^2=1$，则
#choices([$f(0)=0$ 且 $f'_-(0)$ 存在.],[$f(0)=1$ 且 $f'_-(0)$ 存在.],[$f(0)=0$ 且 $f'_+(0)$ 存在.],[$f(0)=1$ 且 $f'_+(0)$ 存在.])
]

#ezexam.question[
设函数 $f(x),g(x)$ 在 $[0,1]$ 上连续，且 $f(x)<=g(x)$，则对任意的 $c in (0,1)$，必有
#choices([$integral_(1/2)^c f(x)dif x>=integral_(1/2)^c g(x)dif x$.],[$integral_(1/2)^c f(x)dif x<=integral_(1/2)^c g(x)dif x$.],[$integral_c^1 f(x)dif x>=integral_c^1 g(x)dif x$.],[$integral_c^1 f(x)dif x<=integral_c^1 g(x)dif x$.])
]

#ezexam.question[
设非齐次线性微分方程 $y'+P(x)y=Q(x)$ 有两个不同的解 $y_1(x),y_2(x)$，$C$ 为任意常数，则该方程的通解是
#choices([$C[y_1(x)-y_2(x)]$.],[$y_1(x)+C[y_1(x)-y_2(x)]$.],[$C[y_1(x)+y_2(x)]$.],[$y_1(x)+C[y_1(x)+y_2(x)]$.])
]

#ezexam.question[
设 $f(x,y)$ 与 $phi(x,y)$ 均为可微函数，且 $phi'_y(x,y)!=0$.已知 $(x_0,y_0)$ 是 $f(x,y)$ 在约束条件 $phi(x,y)=0$ 下的一个极值点，下列选项正确的是
#choices([若 $f'_x(x_0,y_0)=0$，则 $f'_y(x_0,y_0)=0$.],[若 $f'_x(x_0,y_0)=0$，则 $f'_y(x_0,y_0)!=0$.],[若 $f'_x(x_0,y_0)!=0$，则 $f'_y(x_0,y_0)=0$.],[若 $f'_x(x_0,y_0)!=0$，则 $f'_y(x_0,y_0)!=0$.])
]

#ezexam.question[
设 $A$ 为三阶矩阵，将 $A$ 的第2行加到第1行得 $B$，再将 $B$ 的第1列的 $-1$ 倍加到第2列得 $C$，记 $P=mat(1,1,0;0,1,0;0,0,1)$，则
#choices([$C=P^(-1)A P$.],[$C=P A P^(-1)$.],[$C=P^T A P$.],[$C=P A P^T$.])
]

#ezexam.question[
设 $A,B$ 为随机事件，且 $P(B)>0,P(A|B)=1$，则必有
#choices([$P(A union B)>P(A)$.],[$P(A union B)>P(B)$.],[$P(A union B)=P(A)$.],[$P(A union B)=P(B)$.])
]

#ezexam.question[
设随机变量 $X$ 服从正态分布 $N(mu_1,sigma_1^2)$，$Y$ 服从正态分布 $N(mu_2,sigma_2^2)$，且 $P{|X-mu_1|<1}>P{|Y-mu_2|<1}$，则必有
#choices([$sigma_1<sigma_2$.],[$sigma_1>sigma_2$.],[$mu_1<mu_2$.],[$mu_1>mu_2$.])
]

= 三、解答题（本题共9小题，满分94分.解答应写出文字说明、证明过程或演算步骤.）

#ezexam.question[
（本题满分7分）

设 $f(x,y)=y/(1+x y)-(1-y sin((pi x)/y))/(arctan x),x>0,y>0$.求：

（Ⅰ）$g(x)=lim_(y->+infinity)f(x,y)$；

（Ⅱ）$lim_(x->0^+)g(x)$.
]

#ezexam.question[
（本题满分7分）

计算二重积分 $integral.double_D sqrt(y^2-x y)dif x dif y$，其中 $D$ 是由直线 $y=x,y=1,x=0$ 所围成的平面区域.
]

#ezexam.question[
（本题满分10分）

证明：当 $0<a<b<pi$ 时，$b sin b+2cos b+pi b>a sin a+2cos a+pi a$.
]

#ezexam.question[
（本题满分8分）

在 $x O y$ 坐标平面上，连续曲线 $L$ 过点 $M(1,0)$，其上任意点 $P(x,y) (x!=0)$ 处的切线斜率与直线 $O P$ 的斜率之差等于 $a x$（常数 $a>0$）.

（Ⅰ）求 $L$ 的方程；

（Ⅱ）当 $L$ 与直线 $y=a x$ 所围成平面图形的面积为 $8/3$ 时，确定 $a$ 的值.
]

#ezexam.question[
（本题满分10分）

试确定常数 $A,B,C$ 的值，使得
$ e^x(1+B x+C x^2)=1+A x+o(x^3), $
其中 $o(x^3)$ 是当 $x->0$ 时比 $x^3$ 高阶的无穷小量.
]

#ezexam.question[
（本题满分13分）

设四维向量组 $alpha_1=(1+a,1,1,1)^T,alpha_2=(2,2+a,2,2)^T,alpha_3=(3,3,3+a,3)^T,alpha_4=(4,4,4,4+a)^T$，问 $a$ 为何值时，$alpha_1,alpha_2,alpha_3,alpha_4$ 线性相关？当 $alpha_1,alpha_2,alpha_3,alpha_4$ 线性相关时，求其一个极大线性无关组，并将其余向量用该极大线性无关组线性表出.
]

#ezexam.question[
（本题满分13分）

设三阶实对称矩阵 $A$ 的各行元素之和均为3，向量 $alpha_1=(-1,2,-1)^T,alpha_2=(0,-1,1)^T$ 是线性方程组 $A x=bold(0)$ 的两个解.

（Ⅰ）求 $A$ 的特征值与特征向量；

（Ⅱ）求正交矩阵 $Q$ 和对角矩阵 $Lambda$，使得 $Q^T A Q=Lambda$；

（Ⅲ）求 $A$ 及 $(A-3/2 E)^6$，其中 $E$ 为三阶单位矩阵.
]

#ezexam.question[
（本题满分13分）设二维随机变量 $(X,Y)$ 的概率分布为
#table(columns: 4, [$X slash Y$], [$-1$], [0], [1], [$-1$], [$a$], [0], [0.2], [0], [0.1], [$b$], [0.2], [1], [0], [0.1], [$c$])
其中 $a,b,c$ 为常数，且 $X$ 的数学期望 $E X=-0.2$，$P{Y<=0|X<=0}=0.5$.记 $Z=X+Y$，求：

（Ⅰ）$a,b,c$ 的值；

（Ⅱ）$Z$ 的概率分布；

（Ⅲ）$P{X=Z}$.
]

#ezexam.question[
（本题满分13分）

设随机变量 $X$ 的概率密度为
$ f_X(x)=cases(1/2 & -1<x<0,1/4 & 0<=x<2,0 & #text[其他]), $
令 $Y=X^2$，$F(x,y)$ 为二维随机变量 $(X,Y)$ 的分布函数.求：

（Ⅰ）$Y$ 的概率密度 $f_Y(y)$；

（Ⅱ）$op("Cov")(X,Y)$；

（Ⅲ）$F(-1/2,4)$.
]

