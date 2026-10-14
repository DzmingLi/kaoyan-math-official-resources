#import "../template.typ": exam
#show: exam.with(year: 2020, subject: "一")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices.with(r-gap: 1.3em)
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)


= 一、选择题：第1—8小题，每小题4分，共32分. 下列每小题给出的四个选项中，只有一个选项是符合题目要求的.

#ezexam.question[
当 $x->0^+$ 时，下列无穷小量中最高阶的是（　）.
#choices([$integral_0^x(e^(t^2)-1)dif t$.],[$integral_0^x ln(1+sqrt(t^3))dif t$.],[$integral_0^(sin x)sin t^2 dif t$.],[$integral_0^(1-cos x)sqrt(sin^3 t)dif t$.])
]

#ezexam.question[
设函数 $f(x)$ 在区间 $(-1,1)$ 内有定义，且 $lim_(x->0)f(x)=0$，则（　）.
#choices([当 $lim_(x->0)f(x)/sqrt(abs(x))=0$ 时，$f(x)$ 在 $x=0$ 处可导.],[当 $lim_(x->0)f(x)/x^2=0$ 时，$f(x)$ 在 $x=0$ 处可导.],[当 $f(x)$ 在 $x=0$ 处可导时，$lim_(x->0)f(x)/sqrt(abs(x))=0$.],[当 $f(x)$ 在 $x=0$ 处可导时，$lim_(x->0)f(x)/x^2=0$.])
]

#ezexam.question[
设函数 $f(x,y)$ 在点 $(0,0)$ 处可微，$f(0,0)=0$，$bold(n)=((partial f)/(partial x),(partial f)/(partial y),-1)|_((0,0))$，非零向量 $bold(a)$ 与 $bold(n)$ 垂直，则（　）.
#choices([$lim_((x,y)->(0,0))abs(bold(n) dot (x,y,f(x,y)))/sqrt(x^2+y^2)$ 存在.],[$lim_((x,y)->(0,0))abs(bold(n) times (x,y,f(x,y)))/sqrt(x^2+y^2)$ 存在.],[$lim_((x,y)->(0,0))abs(bold(a) dot (x,y,f(x,y)))/sqrt(x^2+y^2)$ 存在.],[$lim_((x,y)->(0,0))abs(bold(a) times (x,y,f(x,y)))/sqrt(x^2+y^2)$ 存在.])
]

#ezexam.question[
设 $R$ 为幂级数 $sum_(n=1)^infinity a_n x^n$ 的收敛半径，$r$ 是实数，则（　）.
#choices([当 $sum_(n=1)^infinity a_(2n)r^(2n)$ 发散时，$abs(r)>=R$.],[当 $sum_(n=1)^infinity a_(2n)r^(2n)$ 收敛时，$abs(r)<=R$.],[当 $abs(r)>=R$ 时，$sum_(n=1)^infinity a_(2n)r^(2n)$ 发散.],[当 $abs(r)<=R$ 时，$sum_(n=1)^infinity a_(2n)r^(2n)$ 收敛.])
]

#ezexam.question[
若矩阵 $A$ 经初等列变换化成 $B$，则（　）.
#choices([存在矩阵 $P$，使得 $P A=B$.],[存在矩阵 $P$，使得 $B P=A$.],[存在矩阵 $P$，使得 $P B=A$.],[方程组 $A bold(x)=bold(0)$ 与 $B bold(x)=bold(0)$ 同解.])
]

#ezexam.question[
已知直线 $l_1:(x-a_2)/a_1=(y-b_2)/b_1=(z-c_2)/c_1$ 与直线 $l_2:(x-a_3)/a_2=(y-b_3)/b_2=(z-c_3)/c_2$ 相交于一点. 记向量 $bold(alpha)_i=(a_i,b_i,c_i)^T$，$i=1,2,3$，则（　）.
#choices([$bold(alpha)_1$ 可由 $bold(alpha)_2,bold(alpha)_3$ 线性表示.],[$bold(alpha)_2$ 可由 $bold(alpha)_1,bold(alpha)_3$ 线性表示.],[$bold(alpha)_3$ 可由 $bold(alpha)_1,bold(alpha)_2$ 线性表示.],[$bold(alpha)_1,bold(alpha)_2,bold(alpha)_3$ 线性无关.])
]

#ezexam.question[
设 $A,B,C$ 为三个随机事件，且 $P(A)=P(B)=P(C)=1/4$，$P(A B)=0$，$P(A C)=P(B C)=1/12$，则 $A,B,C$ 中恰有一个事件发生的概率为（　）.
#choices([$3/4$.],[$2/3$.],[$1/2$.],[$5/12$.])
]

#ezexam.question[
设 $X_1,X_2,dots,X_100$ 为来自总体 $X$ 的简单随机样本，其中 $P{X=0}=P{X=1}=1/2$. $Phi(x)$ 表示标准正态分布函数，则利用中心极限定理可得 $P{sum_(i=1)^100 X_i<=55}$ 的近似值为（　）.
#choices([$1-Phi(1)$.],[$Phi(1)$.],[$1-Phi(0.2)$.],[$Phi(0.2)$.])
]


= 二、填空题：第9—14小题，每小题4分，共24分.

#ezexam.question[
求 $lim_(x->0)[1/(e^x-1)-1/(ln(1+x))]=$#fillin[].
]

#ezexam.question[
设 $cases(x=sqrt(t^2+1),y=ln(t+sqrt(t^2+1)))$，则 $(dif^2 y)/(dif x^2)|_(t=1)=$#fillin[].
]

#ezexam.question[
若函数 $f(x)$ 满足 $f''(x)+a f'(x)+f(x)=0$（$a>0$），且 $f(0)=m,f'(0)=n$，则 $integral_0^infinity f(x)dif x=$#fillin[].
]

#ezexam.question[
设函数 $f(x,y)=integral_0^(x y)e^(x t^2)dif t$，则 $(partial^2 f)/(partial x partial y)|_((1,1))=$#fillin[].
]

#ezexam.question[
行列式 $abs(mat(a,0,-1,1;0,a,1,-1;-1,1,a,0;1,-1,0,a))=$#fillin[].
]

#ezexam.question[
设 $X$ 服从区间 $(-pi/2,pi/2)$ 上的均匀分布，$Y=sin X$，则 $op("Cov")(X,Y)=$#fillin[].
]


= 三、解答题：第15—23小题，共94分. 解答应写出文字说明、证明过程或演算步骤.

#ezexam.question[
（本题满分10分）求函数 $f(x,y)=x^3+8y^3-x y$ 的极值.
]

#ezexam.question[
（本题满分10分）计算曲线积分 $I=integral_L (4x-y)/(4x^2+y^2)dif x+(x+y)/(4x^2+y^2)dif y$，其中 $L$ 是 $x^2+y^2=2$，方向为逆时针方向.
]

#ezexam.question[
（本题满分10分）设数列 $a_n$ 满足 $a_1=1,(n+1)a_(n+1)=(n+1/2)a_n$，证明：当 $abs(x)<1$ 时，幂级数 $sum_(n=1)^infinity a_n x^n$ 收敛，并求其和函数.
]

#ezexam.question[
（本题满分10分）设 $Sigma$ 为曲面 $z=sqrt(x^2+y^2)$（$1<=x^2+y^2<=4$）的下侧，$f(x)$ 是连续函数，计算
$ I=integral.double_Sigma [x f(x y)+2x-y]dif y dif z+[y f(x y)+2y+x]dif z dif x+[z f(x y)+z]dif x dif y. $
]

#ezexam.question[
（本题满分10分）设函数 $f(x)$ 在区间 $[0,2]$ 上具有连续导数，$f(0)=f(2)=0$，$M=max_(x in [0,2])abs(f(x))$. 证明：

（1）存在 $xi in (0,2)$，使得 $abs(f'(xi))>=M$；

（2）若对任意的 $x in (0,2)$，$abs(f'(x))<=M$，则 $M=0$.
]

#ezexam.question[
（本题满分11分）设二次型 $f(x_1,x_2)=x_1^2-4x_1 x_2+4x_2^2$ 经正交变换 $mat(x_1;x_2)=Q mat(y_1;y_2)$ 化为二次型 $g(y_1,y_2)=a y_1^2+4y_1 y_2+b y_2^2$，其中 $a>=b$.

（1）求 $a,b$ 的值；

（2）求正交矩阵 $Q$.
]

#ezexam.question[
（本题满分11分）设 $A$ 为2阶矩阵，$P=(bold(alpha),A bold(alpha))$，其中 $bold(alpha)$ 是非零向量且不是 $A$ 的特征向量.

（1）证明 $P$ 为可逆矩阵；

（2）若 $A^2 bold(alpha)+A bold(alpha)-6bold(alpha)=bold(0)$，求 $P^(-1)A P$，并判断 $A$ 是否相似于对角矩阵.
]

#ezexam.question[
（本题满分11分）设随机变量 $X_1,X_2,X_3$ 相互独立，其中 $X_1$ 与 $X_2$ 均服从标准正态分布，$X_3$ 的概率分布为 $P{X_3=0}=P{X_3=1}=1/2$. $Y=X_3 X_1+(1-X_3)X_2$.

（1）求二维随机变量 $(X_1,Y)$ 的分布函数，结果用标准正态分布函数 $Phi(x)$ 表示；

（2）证明随机变量 $Y$ 服从标准正态分布.
]

#ezexam.question[
（本题满分11分）设某种元件的使用寿命 $T$ 的分布函数为 $F(t)=cases(1-e^(-(t/theta)^m) & t>=0,0 & "其他")$，其中 $theta,m$ 为参数且大于零.

（1）求概率 $P{T>t}$ 与 $P{T>s+t | T>s}$，其中 $s>0,t>0$；

（2）任取 $n$ 个这种元件做寿命试验，测得它们的寿命分别为 $t_1,t_2,dots,t_n$. 若 $m$ 已知，求 $theta$ 的最大似然估计值 $hat(theta)$.
]

