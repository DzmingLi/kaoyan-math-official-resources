#import "../template.typ": exam
#show: exam.with(year: 2004, subject: "一", title: "2004年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#ezexam.answer-state.update(false)


= 一、填空题（本题共6小题，每小题4分，满分24分）

#ezexam.question[
曲线 $y=ln x$ 上与直线 $x+y=1$ 垂直的切线方程为#h(3em).
]

#ezexam.question[
已知 $f'(e^x)=x e^(-x)$，且 $f(1)=0$，则 $f(x)=$#h(3em).
]

#ezexam.question[
设 $L$ 为正向圆周 $x^2+y^2=2$ 在第一象限中的部分，则曲线积分 $integral_L x dif y-2y dif x$ 的值为#h(3em).
]

#ezexam.question[
欧拉方程 $x^2 (dif^2 y)/(dif x^2)+4x (dif y)/(dif x)+2y=0 (x>0)$ 的通解为#h(3em).
]

#ezexam.question[
设矩阵 $A=mat(2,1,0;1,2,0;0,0,1)$，矩阵 $B$ 满足 $A B A^*=2B A^*+E$，其中 $A^*$ 为 $A$ 的伴随矩阵，$E$ 是单位矩阵，则 $|B|=$#h(3em).
]

#ezexam.question[
设随机变量 $X$ 服从参数为 $lambda$ 的指数分布，则 $P{X>sqrt(D X)}=$#h(3em).
]

= 二、选择题（本题共8小题，每小题4分，满分32分）

#ezexam.question[
把 $x->0^+$ 时的无穷小量 $alpha=integral_0^x cos t^2 dif t,beta=integral_0^(x^2) tan sqrt(t) dif t,gamma=integral_0^sqrt(x) sin t^3 dif t$ 排列起来，使排在后面的是前一个的高阶无穷小量，则正确的排列次序是
#choices([$alpha,beta,gamma$.],[$alpha,gamma,beta$.],[$beta,alpha,gamma$.],[$beta,gamma,alpha$.])
]

#ezexam.question[
设函数 $f(x)$ 连续，且 $f'(0)>0$，则存在 $delta>0$，使得
#choices([$f(x)$ 在 $(0,delta)$ 内单调增加.],[$f(x)$ 在 $(-delta,0)$ 内单调减少.],[对任意的 $x in (0,delta)$，有 $f(x)>f(0)$.],[对任意的 $x in (-delta,0)$，有 $f(x)>f(0)$.])
]

#ezexam.question[
设 $sum_(n=1)^infinity a_n$ 为正项级数，下列结论中正确的是
#choices([若 $lim_(n->infinity) n a_n=0$，则级数 $sum_(n=1)^infinity a_n$ 收敛.],[若存在非零常数 $lambda$，使得 $lim_(n->infinity) n a_n=lambda$，则级数 $sum_(n=1)^infinity a_n$ 发散.],[若级数 $sum_(n=1)^infinity a_n$ 收敛，则 $lim_(n->infinity) n^2 a_n=0$.],[若级数 $sum_(n=1)^infinity a_n$ 发散，则存在非零常数 $lambda$，使得 $lim_(n->infinity) n a_n=lambda$.])
]

#ezexam.question[
设 $f(x)$ 为连续函数，$F(t)=integral_1^t dif y integral_y^t f(x) dif x$，则 $F'(2)$ 等于
#choices([$2f(2)$.],[$f(2)$.],[$-f(2)$.],[0.])
]

#ezexam.question[
设 $A$ 是三阶方阵，将 $A$ 的第1列与第2列交换得 $B$，再把 $B$ 的第2列加到第3列得 $C$，则满足 $A Q=C$ 的可逆矩阵 $Q$ 为
#choices([$mat(0,1,0;1,0,0;1,0,1)$.],[$mat(0,1,0;1,0,1;0,0,1)$.],[$mat(0,1,0;1,0,0;0,1,1)$.],[$mat(0,1,1;1,0,0;0,0,1)$.])
]

#ezexam.question[
设 $A,B$ 为满足 $A B=O$ 的任意两个非零矩阵，则必有
#choices([$A$ 的列向量组线性相关，$B$ 的行向量组线性相关.],[$A$ 的列向量组线性相关，$B$ 的列向量组线性相关.],[$A$ 的行向量组线性相关，$B$ 的行向量组线性相关.],[$A$ 的行向量组线性相关，$B$ 的列向量组线性相关.])
]

#ezexam.question[
设随机变量 $X$ 服从正态分布 $N(0,1)$，对给定的 $alpha (0<alpha<1)$，数 $u_alpha$ 满足 $P{X>u_alpha}=alpha$.若 $P{|X|<x}=alpha$，则 $x$ 等于
#choices([$u_(alpha/2)$.],[$u_(1-alpha/2)$.],[$u_((1-alpha)/2)$.],[$u_(1-alpha)$.])
]

#ezexam.question[
设随机变量 $X_1,X_2,dots,X_n (n>1)$ 独立同分布，且其方差为 $sigma^2>0$.令 $Y=1/n sum_(i=1)^n X_i$，则
#choices([$op("Cov")(X_1,Y)=sigma^2/n$.],[$op("Cov")(X_1,Y)=sigma^2$.],[$D(X_1+Y)=(n+2)/n sigma^2$.],[$D(X_1-Y)=(n+1)/n sigma^2$.])
]

= 三、解答题（本题共9小题，满分94分. 解答应写出文字说明、证明过程或演算步骤.）

#ezexam.question[
（本题满分12分）设 $e<a<b<e^2$，证明 $ln^2 b-ln^2 a>4/e^2 (b-a)$.
]

#ezexam.question[
（本题满分11分）某种飞机在机场降落时，为了减少滑行距离，在触地的瞬间，飞机尾部张开减速伞，以增大阻力，使飞机迅速减速并停下.

现有一质量为9000 kg的飞机，着陆时的水平速度为700 km/h.经测试，减速伞打开后，飞机所受的总阻力与飞机的速度成正比（比例系数为 $k=6.0 times 10^6$）.问从着陆点算起，飞机滑行的最长距离是多少？

注　kg表示千克，km/h表示千米/小时.
]

#ezexam.question[
（本题满分12分）计算曲面积分
$ I=integral.double_Sigma 2x^3 dif y dif z+2y^3 dif z dif x+3(z^2-1) dif x dif y, $
其中 $Sigma$ 是曲面 $z=1-x^2-y^2 (z>=0)$ 的上侧.
]

#ezexam.question[
（本题满分11分）设有方程 $x^n+n x-1=0$，其中 $n$ 为正整数.证明此方程存在唯一正实根 $x_n$，并证明当 $a>1$ 时，级数 $sum_(n=1)^infinity x_n^a$ 收敛.
]

#ezexam.question[
（本题满分12分）设 $z=z(x,y)$ 是由 $x^2-6x y+10y^2-2y z-z^2+18=0$ 确定的函数，求 $z=z(x,y)$ 的极值点和极值.
]

#ezexam.question[
（本题满分9分）设有齐次线性方程组
$ cases((1+a)x_1+x_2+dots+x_n=0,2x_1+(2+a)x_2+dots+2x_n=0,dots,n x_1+n x_2+dots+(n+a)x_n=0) quad (n>=2) $
试问 $a$ 取何值时，该方程组有非零解，并求其通解.
]

#ezexam.question[
（本题满分9分）设矩阵 $A=mat(1,2,-3;-1,4,-3;1,a,5)$ 的特征方程有一个二重根，求 $a$ 的值，并讨论 $A$ 是否可相似对角化.
]

#ezexam.question[
（本题满分9分）设 $A,B$ 为随机事件，且 $P(A)=1/4,P(B|A)=1/3,P(A|B)=1/2$，令
$ X=cases(1 & A #text[发生],0 & A #text[不发生]),quad Y=cases(1 & B #text[发生],0 & B #text[不发生]). $
求：（Ⅰ）二维随机变量 $(X,Y)$ 的概率分布；

（Ⅱ）$X$ 与 $Y$ 的相关系数 $rho_(X Y)$.
]

#ezexam.question[
（本题满分9分）设总体 $X$ 的分布函数为
$ F(x;beta)=cases(1-1/x^beta & x>1,0 & x<=1), $
其中未知参数 $beta>1$，$X_1,X_2,dots,X_n$ 为来自总体 $X$ 的简单随机样本，求：

（Ⅰ）$beta$ 的矩估计量；

（Ⅱ）$beta$ 的最大似然估计量.
]

