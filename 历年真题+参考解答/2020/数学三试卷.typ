#import "../template.typ": exam
#show: exam.with(year: 2020, subject: "三")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices.with(r-gap: 1.3em)
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)


= 一、选择题：第1—8小题，每小题4分，共32分. 下列每小题给出的四个选项中，只有一个选项是符合题目要求的.

#ezexam.question[
设 $lim_(x->a)(f(x)-a)/(x-a)=b$，则 $lim_(x->a)(sin f(x)-sin a)/(x-a)=$（　）.
#choices([$b sin a$.],[$b cos a$.],[$b sin f(a)$.],[$b cos f(a)$.])
]

#ezexam.question[
函数 $f(x)=e^(1/(e^x-1))ln abs(1+x)/((e^x-1)(x-2))$ 的第二类间断点的个数为（　）.
#choices([$1$.],[$2$.],[$3$.],[$4$.])
]

#ezexam.question[
设奇函数 $f(x)$ 在 $(-infinity,+infinity)$ 上具有连续导数，则（　）.
#choices([$integral_0^x [cos f(t)+f'(t)]dif t$ 是奇函数.],[$integral_0^x [cos f(t)+f'(t)]dif t$ 是偶函数.],[$integral_0^x [cos f'(t)+f(t)]dif t$ 是奇函数.],[$integral_0^x [cos f'(t)+f(t)]dif t$ 是偶函数.])
]

#ezexam.question[
设幂级数 $sum_(n=1)^infinity a_n(x-2)^n$ 的收敛区间为 $(-2,6)$，则 $sum_(n=1)^infinity a_n(x+1)^(2n)$ 的收敛区间为（　）.
#choices([$(-2,6)$.],[$(-3,1)$.],[$(-5,3)$.],[$(-17,15)$.])
]

#ezexam.question[
设4阶矩阵 $A=(a_(i j))$ 不可逆，$a_(1 2)$ 的代数余子式 $A_(1 2)!=0$，$bold(alpha)_1,bold(alpha)_2,bold(alpha)_3,bold(alpha)_4$ 为矩阵 $A$ 的列向量组，$A^*$ 为 $A$ 的伴随矩阵，则方程组 $A^* bold(x)=bold(0)$ 的通解为（　）.
#choices([$bold(x)=k_1 bold(alpha)_1+k_2 bold(alpha)_2+k_3 bold(alpha)_3$，其中 $k_1,k_2,k_3$ 为任意常数.],[$bold(x)=k_1 bold(alpha)_1+k_2 bold(alpha)_2+k_3 bold(alpha)_4$，其中 $k_1,k_2,k_3$ 为任意常数.],[$bold(x)=k_1 bold(alpha)_1+k_2 bold(alpha)_3+k_3 bold(alpha)_4$，其中 $k_1,k_2,k_3$ 为任意常数.],[$bold(x)=k_1 bold(alpha)_2+k_2 bold(alpha)_3+k_3 bold(alpha)_4$，其中 $k_1,k_2,k_3$ 为任意常数.])
]

#ezexam.question[
设 $A$ 为3阶矩阵，$bold(alpha)_1,bold(alpha)_2$ 为 $A$ 的属于特征值1的线性无关的特征向量，$bold(alpha)_3$ 为 $A$ 的属于特征值−1的特征向量，则满足 $P^(-1)A P=op("diag")(1,-1,1)$ 的可逆矩阵 $P$ 可为（　）.
#choices([$(bold(alpha)_1+bold(alpha)_3,bold(alpha)_2,-bold(alpha)_3)$.],[$(bold(alpha)_1+bold(alpha)_2,bold(alpha)_2,-bold(alpha)_3)$.],[$(bold(alpha)_1+bold(alpha)_3,-bold(alpha)_3,bold(alpha)_2)$.],[$(bold(alpha)_1+bold(alpha)_2,-bold(alpha)_3,bold(alpha)_2)$.])
]

#ezexam.question[
设 $A,B,C$ 为三个随机事件，且 $P(A)=P(B)=P(C)=1/4$，$P(A B)=0$，$P(A C)=P(B C)=1/12$，则 $A,B,C$ 中恰有一个事件发生的概率为（　）.
#choices([$3/4$.],[$2/3$.],[$1/2$.],[$5/12$.])
]

#ezexam.question[
设随机变量 $(X,Y)$ 服从二维正态分布 $N(0,0;1,4;-1/2)$，则下列随机变量中服从标准正态分布且与 $X$ 独立的是（　）.
#choices([$sqrt(5)/5(X+Y)$.],[$sqrt(5)/5(X-Y)$.],[$sqrt(3)/3(X+Y)$.],[$sqrt(3)/3(X-Y)$.])
]


= 二、填空题：第9—14小题，每小题4分，共24分.

#ezexam.question[
设 $z=arctan[x y+sin(x+y)]$，则 $dif z|_((0,pi))=$#fillin[].
]

#ezexam.question[
曲线 $x+y+e^(2x y)=0$ 在点 $(0,-1)$ 处的切线方程为#fillin[].
]

#ezexam.question[
设某厂家生产某产品的产量为 $Q$，成本 $C(Q)=100+13Q$，该产品的单价为 $p$，需求量 $q(p)=800/(p+3)-2$，则该厂家获得最大利润时的产量为#fillin[].
]

#ezexam.question[
设平面区域 $D={(x,y) | x/2<=y<=1/(1+x^2),0<=x<=1}$，则 $D$ 绕 $y$ 轴旋转所成的旋转体的体积为#fillin[].
]

#ezexam.question[
行列式 $abs(mat(a,0,-1,1;0,a,1,-1;-1,1,a,0;1,-1,0,a))=$#fillin[].
]

#ezexam.question[
设随机变量 $X$ 的概率分布为 $P{X=k}=1/2^k$，$k=1,2,3,dots$. $Y$ 表示 $X$ 被3除的余数，则 $E Y=$#fillin[].
]


= 三、解答题：第15—23小题，共94分. 解答应写出文字说明、证明过程或演算步骤.

#ezexam.question[
（本题满分10分）已知 $a,b$ 为常数，若 $(1+1/n)^n-e$ 与 $b/n^a$ 在 $n->infinity$ 时是等价无穷小量，求 $a,b$.
]

#ezexam.question[
（本题满分10分）求函数 $f(x,y)=x^3+8y^3-x y$ 的极值.
]

#ezexam.question[
（本题满分10分）设函数 $y=f(x)$ 满足 $y''+2y'+5y=0$，且 $f(0)=1,f'(0)=-1$.

（1）求 $f(x)$ 的表达式；

（2）设 $a_n=integral_(n pi)^infinity f(x)dif x$，求 $sum_(n=1)^infinity a_n$.
]

#ezexam.question[
（本题满分10分）设 $D={(x,y) | x^2+y^2<=1,y>=0}$，连续函数 $f(x,y)$ 满足 $f(x,y)=y sqrt(1-x^2)+x integral.double_D f(x,y)dif x dif y$，求 $integral.double_D x f(x,y)dif x dif y$.
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
（本题满分11分）设二维随机变量 $(X,Y)$ 在区域 $D={(x,y) | 0<y<sqrt(1-x^2)}$ 上服从均匀分布，令 $Z_1=cases(1 & X-Y>0,0 & X-Y<=0)$，$Z_2=cases(1 & X+Y>0,0 & X+Y<=0)$.

（1）求二维随机变量 $(Z_1,Z_2)$ 的概率分布；

（2）求 $Z_1$ 与 $Z_2$ 的相关系数.
]

#ezexam.question[
（本题满分11分）设某种元件的使用寿命 $T$ 的分布函数为 $F(t)=cases(1-e^(-(t/theta)^m) & t>=0,0 & "其他")$，其中 $theta,m$ 为参数且大于零.

（1）求概率 $P{T>t}$ 与 $P{T>s+t | T>s}$，其中 $s>0,t>0$；

（2）任取 $n$ 个这种元件做寿命试验，测得它们的寿命分别为 $t_1,t_2,dots,t_n$. 若 $m$ 已知，求 $theta$ 的最大似然估计值 $hat(theta)$.
]

