#import "../template.typ": exam
#show: exam.with(year: 2006, subject: "一", title: "2006年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#ezexam.answer-state.update(false)


= 一、填空题（本题共6小题，每小题4分，满分24分）

#ezexam.question[
$lim_(x->0)(x ln(1+x))/(1-cos x)=$#h(3em).
]

#ezexam.question[
微分方程 $y'=(y(1-x))/x$ 的通解是#h(3em).
]

#ezexam.question[
设 $Sigma$ 是锥面 $z=sqrt(x^2+y^2) (0<=z<=1)$ 的下侧，则 $integral.double_Sigma x dif y dif z+2y dif z dif x+3(z-1)dif x dif y=$#h(3em).
]

#ezexam.question[
点 $(2,1,0)$ 到平面 $3x+4y+5z=0$ 的距离 $d=$#h(3em).
]

#ezexam.question[
设矩阵 $A=mat(2,1;-1,2)$，$E$ 为二阶单位矩阵，矩阵 $B$ 满足 $B A=B+2E$，则 $|B|=$#h(3em).
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
设 $f(x,y)$ 为连续函数，则 $integral_0^(pi/4)dif theta integral_0^1 f(r cos theta,r sin theta)r dif r$ 等于
#choices([$integral_0^(sqrt(2)/2)dif x integral_x^(sqrt(1-x^2))f(x,y)dif y$.],[$integral_0^(sqrt(2)/2)dif x integral_0^(sqrt(1-x^2))f(x,y)dif y$.],[$integral_0^(sqrt(2)/2)dif y integral_y^(sqrt(1-y^2))f(x,y)dif x$.],[$integral_0^(sqrt(2)/2)dif y integral_0^(sqrt(1-y^2))f(x,y)dif x$.])
]

#ezexam.question[
若级数 $sum_(n=1)^infinity a_n$ 收敛，则级数
#choices([$sum_(n=1)^infinity |a_n|$ 收敛.],[$sum_(n=1)^infinity(-1)^n a_n$ 收敛.],[$sum_(n=1)^infinity a_n a_(n+1)$ 收敛.],[$sum_(n=1)^infinity(a_n+a_(n+1))/2$ 收敛.])
]

#ezexam.question[
设 $f(x,y)$ 与 $phi(x,y)$ 均为可微函数，且 $phi'_y(x,y)!=0$.已知 $(x_0,y_0)$ 是 $f(x,y)$ 在约束条件 $phi(x,y)=0$ 下的一个极值点，下列选项正确的是
#choices([若 $f'_x(x_0,y_0)=0$，则 $f'_y(x_0,y_0)=0$.],[若 $f'_x(x_0,y_0)=0$，则 $f'_y(x_0,y_0)!=0$.],[若 $f'_x(x_0,y_0)!=0$，则 $f'_y(x_0,y_0)=0$.],[若 $f'_x(x_0,y_0)!=0$，则 $f'_y(x_0,y_0)!=0$.])
]

#ezexam.question[
设 $alpha_1,alpha_2,dots,alpha_s$ 均为 $n$ 维列向量，$A$ 是 $m times n$ 矩阵，下列选项正确的是
#choices([若 $alpha_1,alpha_2,dots,alpha_s$ 线性相关，则 $A alpha_1,A alpha_2,dots,A alpha_s$ 线性相关.],[若 $alpha_1,alpha_2,dots,alpha_s$ 线性相关，则 $A alpha_1,A alpha_2,dots,A alpha_s$ 线性无关.],[若 $alpha_1,alpha_2,dots,alpha_s$ 线性无关，则 $A alpha_1,A alpha_2,dots,A alpha_s$ 线性相关.],[若 $alpha_1,alpha_2,dots,alpha_s$ 线性无关，则 $A alpha_1,A alpha_2,dots,A alpha_s$ 线性无关.])
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

= 三、解答题（本题共9小题，满分94分. 解答应写出文字说明、证明过程或演算步骤.）

#ezexam.question[
（本题满分10分）

设区域 $D={(x,y)|x^2+y^2<=1,x>=0}$，计算二重积分 $I=integral.double_D(1+x y)/(1+x^2+y^2)dif x dif y$.
]

#ezexam.question[
（本题满分12分）

设数列 $\{x_n\}$ 满足 $0<x_1<pi,x_(n+1)=sin x_n (n=1,2,dots)$.

（Ⅰ）证明 $lim_(n->infinity)x_n$ 存在，并求该极限；

（Ⅱ）计算 $lim_(n->infinity)(x_(n+1)/x_n)^(1/x_n^2)$.
]

#ezexam.question[
（本题满分12分）

将函数 $f(x)=x/(2+x-x^2)$ 展开成 $x$ 的幂级数.
]

#ezexam.question[
（本题满分12分）

设函数 $f(u)$ 在 $(0,+infinity)$ 内具有二阶导数，且 $z=f(sqrt(x^2+y^2))$ 满足等式 $(partial^2 z)/(partial x^2)+(partial^2 z)/(partial y^2)=0$.

（Ⅰ）验证 $f''(u)+f'(u)/u=0$；

（Ⅱ）若 $f(1)=0,f'(1)=1$，求函数 $f(u)$ 的表达式.
]

#ezexam.question[
（本题满分12分）

设在上半平面 $D={(x,y)|y>0}$ 内，函数 $f(x,y)$ 具有连续偏导数，且对任意的 $t>0$ 都有 $f(t x,t y)=t^(-2)f(x,y)$.证明：对 $D$ 内的任意分段光滑的有向简单闭曲线 $L$，都有
$ integral.cont_L y f(x,y)dif x-x f(x,y)dif y=0. $
]

#ezexam.question[
（本题满分9分）

已知非齐次线性方程组
$ cases(x_1+x_2+x_3+x_4=-1,4x_1+3x_2+5x_3-x_4=-1,a x_1+x_2+3x_3+b x_4=1) $
有三个线性无关的解.

（Ⅰ）证明方程组系数矩阵 $A$ 的秩 $r(A)=2$；

（Ⅱ）求 $a,b$ 的值及方程组的通解.
]

#ezexam.question[
（本题满分9分）

设三阶实对称矩阵 $A$ 的各行元素之和均为3，向量 $alpha_1=(-1,2,-1)^T,alpha_2=(0,-1,1)^T$ 是线性方程组 $A x=bold(0)$ 的两个解.

（Ⅰ）求 $A$ 的特征值与特征向量；

（Ⅱ）求正交矩阵 $Q$ 和对角矩阵 $Lambda$，使得 $Q^T A Q=Lambda$.
]

#ezexam.question[
（本题满分9分）

设随机变量 $X$ 的概率密度为
$ f_X(x)=cases(1/2 & -1<x<0,1/4 & 0<=x<2,0 & #text[其他]), $
令 $Y=X^2$，$F(x,y)$ 为二维随机变量 $(X,Y)$ 的分布函数.求：

（Ⅰ）$Y$ 的概率密度 $f_Y(y)$；

（Ⅱ）$F(-1/2,4)$.
]

#ezexam.question[
（本题满分9分）

设总体 $X$ 的概率密度为
$ f(x;theta)=cases(theta & 0<x<1,1-theta & 1<=x<2,0 & #text[其他]), $
其中 $theta$ 是未知参数 $(0<theta<1)$，$X_1,X_2,dots,X_n$ 为来自总体 $X$ 的简单随机样本，记 $N$ 为样本值 $x_1,x_2,dots,x_n$ 中小于1的个数.求 $theta$ 的最大似然估计.
]

