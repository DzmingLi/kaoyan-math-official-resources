#import "../template.typ": exam
#show: exam.with(year: 2010, subject: "一", title: "2010年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(true)


= 一、选择题：1—8小题，每小题4分，共32分.在每小题给出的四个选项中，只有一项符合题目要求，把所选项前的字母填在题后的括号内.

#ezexam.question[
极限 $lim_(x->infinity)[x^2/((x-a)(x+b))]^x=$
#choices([1.],[$e$.],[$e^(a-b)$.],[$e^(b-a)$.])
#ezexam.solution(show-number: false)[
C.
]
]

#ezexam.question[
设函数 $z=z(x,y)$ 由方程 $F(y/x,z/x)=0$ 确定，其中 $F$ 为可微函数，且 $F'_2!=0$，则 $x(partial z)/(partial x)+y(partial z)/(partial y)=$
#choices([$x$.],[$z$.],[$-x$.],[$-z$.])
#ezexam.solution(show-number: false)[
B.
]
]

#ezexam.question[
设 $m,n$ 均是正整数，则反常积分 $integral_0^1 (root(m,ln^2(1-x)))/(root(n,x))dif x$ 的收敛性
#choices([仅与 $m$ 的取值有关.],[仅与 $n$ 的取值有关.],[与 $m,n$ 的取值都有关.],[与 $m,n$ 的取值都无关.])
#ezexam.solution(show-number: false)[
D.
]
]

#ezexam.question[
$lim_(n->infinity)sum_(i=1)^n sum_(j=1)^n n/((n+i)(n^2+j^2))=$
#choices([$integral_0^1 dif x integral_0^x 1/((1+x)(1+y^2))dif y$.],[$integral_0^1 dif x integral_0^x 1/((1+x)(1+y))dif y$.],[$integral_0^1 dif x integral_0^1 1/((1+x)(1+y))dif y$.],[$integral_0^1 dif x integral_0^1 1/((1+x)(1+y^2))dif y$.])
#ezexam.solution(show-number: false)[
D.
]
]

#ezexam.question[
设 $A$ 为 $m times n$ 矩阵，$B$ 为 $n times m$ 矩阵，$E$ 为 $m$ 阶单位矩阵.若 $A B=E$，则
#choices([秩 $r(A)=m$，秩 $r(B)=m$.],[秩 $r(A)=m$，秩 $r(B)=n$.],[秩 $r(A)=n$，秩 $r(B)=m$.],[秩 $r(A)=n$，秩 $r(B)=n$.])
#ezexam.solution(show-number: false)[
A.
]
]

#ezexam.question[
设 $A$ 为4阶实对称矩阵，且 $A^2+A=O$.若 $A$ 的秩为3，则 $A$ 相似于
#choices([$mat(1,0,0,0;0,1,0,0;0,0,1,0;0,0,0,0)$.],[$mat(1,0,0,0;0,1,0,0;0,0,-1,0;0,0,0,0)$.],[$mat(1,0,0,0;0,-1,0,0;0,0,-1,0;0,0,0,0)$.],[$mat(-1,0,0,0;0,-1,0,0;0,0,-1,0;0,0,0,0)$.])
#ezexam.solution(show-number: false)[
D.
]
]

#ezexam.question[
设随机变量 $X$ 的分布函数 $F(x)=cases(0 quad x<0,1/2 quad 0<=x<1,1-e^(-x) quad x>=1)$，则 $P{X=1}=$
#choices([0.],[$1/2$.],[$1/2-e^(-1)$.],[$1-e^(-1)$.])
#ezexam.solution(show-number: false)[
C.
]
]

#ezexam.question[
设 $f_1(x)$ 为标准正态分布的概率密度，$f_2(x)$ 为 $[-1,3]$ 上均匀分布的概率密度，若 $f(x)=cases(a f_1(x) quad x<=0,b f_2(x) quad x>0)(a>0,b>0)$ 为概率密度，则 $a,b$ 应满足
#choices([$2a+3b=4$.],[$3a+2b=4$.],[$a+b=1$.],[$a+b=2$.])
#ezexam.solution(show-number: false)[
A.
]
]

= 二、填空题：9—14小题，每小题4分，共24分.把答案填在题中横线上.

#ezexam.question[
设 $cases(x=e^(-t),y=integral_0^t ln(1+u^2)dif u)$，则 $(dif^2 y)/(dif x^2)|_(t=0)=$ #fillin(len: 1.98438em)[].
#ezexam.solution(show-number: false)[
0.
]
]

#ezexam.question[
$integral_0^(pi^2)sqrt(x)cos sqrt(x)dif x=$ #fillin(len: 1.98438em)[].
#ezexam.solution(show-number: false)[
$-4pi$.
]
]

#ezexam.question[
已知曲线 $L$ 的方程为 $y=1-|x|(x in[-1,1])$，起点是 $(-1,0)$，终点为 $(1,0)$，则曲线积分 $integral_L x y dif x+x^2 dif y=$ #fillin(len: 1.98438em)[].
#ezexam.solution(show-number: false)[
0.
]
]

#ezexam.question[
设 $Omega={(x,y,z)|x^2+y^2<=z<=1}$，则 $Omega$ 的形心的竖坐标 $overline(z)=$ #fillin(len: 1.98438em)[].
#ezexam.solution(show-number: false)[
$2/3$.
]
]

#ezexam.question[
设 $alpha_1=(1,2,-1,0)^T,alpha_2=(1,1,0,2)^T,alpha_3=(2,1,1,a)^T$.若由 $alpha_1,alpha_2,alpha_3$ 生成的向量空间的维数为2，则 $a=$ #fillin(len: 1.98438em)[].
#ezexam.solution(show-number: false)[
6.
]
]

#ezexam.question[
设随机变量 $X$ 的概率分布为 $P{X=k}=C/(k!),k=0,1,2,dots$，则 $E X^2=$ #fillin(len: 1.98438em)[].
#ezexam.solution(show-number: false)[
2.
]
]

= 三、解答题：15—23小题，共94分.解答应写出文字说明、证明过程或演算步骤.

#ezexam.question[
（本题满分10分）求微分方程 $y''-3y'+2y=2x e^x$ 的通解.
#ezexam.solution(show-number: false)[
解　对应齐次方程 $y''-3y'+2y=0$ 的两个特征根为 $r_1=1,r_2=2$，其通解为 $Y=C_1 e^x+C_2 e^(2x)$.
设原方程的特解形式为 $y^*=x(a x+b)e^x$，则
$ (y^*)'=[a x^2+(2a+b)x+b]e^x, $
$ (y^*)''=[a x^2+(4a+b)x+2a+2b]e^x, $
代入原方程得 $a=-1,b=-2$，故所求通解为 $y=C_1 e^x+C_2 e^(2x)-x(x+2)e^x$.
]
]

#ezexam.question[
（本题满分10分）求函数 $f(x)=integral_1^(x^2)(x^2-t)e^(-t^2)dif t$ 的单调区间与极值.
#ezexam.solution(show-number: false)[
解　$f(x)$ 的定义域为 $(-infinity,+infinity)$，由于
$ f(x)=x^2 integral_1^(x^2)e^(-t^2)dif t-integral_1^(x^2)t e^(-t^2)dif t, $
$ f'(x)=2x integral_1^(x^2)e^(-t^2)dif t+2x^3 e^(-x^4)-2x^3 e^(-x^4) \
=2x integral_1^(x^2)e^(-t^2)dif t, $
所以 $f(x)$ 的驻点为 $x=0,plus.minus 1$.
列表讨论如下：
#table(columns:8,[$x$],[$(-infinity,-1)$],[−1],[$(-1,0)$],[0],[$(0,1)$],[1],[$(1,+infinity)$],[$f'(x)$],[−],[0],[+],[0],[−],[0],[+],[$f(x)$],[↘],[极小],[↗],[极大],[↘],[极小],[↗])
因此，$f(x)$ 的单调增加区间为 $(-1,0)$ 及 $(1,+infinity)$，单调减少区间为 $(-infinity,-1)$ 及 $(0,1)$；极小值为 $f(plus.minus 1)=0$，极大值为 $f(0)=integral_0^1 t e^(-t^2)dif t=1/2(1-e^(-1))$.
]
]

#ezexam.question[
（本题满分10分）

（Ⅰ）比较 $integral_0^1|ln t[ln(1+t)]^n|dif t$ 与 $integral_0^1 t^n|ln t|dif t(n=1,2,dots)$ 的大小，说明理由；

（Ⅱ）记 $u_n=integral_0^1|ln t[ln(1+t)]^n|dif t(n=1,2,dots)$，求极限 $lim_(n->infinity)u_n$.
#ezexam.solution(show-number: false)[
解　（Ⅰ）当 $0<=t<=1$ 时，因为 $ln(1+t)<=t$，所以 $|ln t[ln(1+t)]^n|<=t^n|ln t|$，因此
$ integral_0^1|ln t[ln(1+t)]^n|dif t<=integral_0^1 t^n|ln t|dif t. $
（Ⅱ）由（Ⅰ）知 $0<=u_n=integral_0^1|ln t[ln(1+t)]^n|dif t<=integral_0^1 t^n|ln t|dif t$.
因为
$ integral_0^1 t^n|ln t|dif t=-integral_0^1 t^n ln t dif t \
=1/(n+1)integral_0^1 t^n dif t=1/(n+1)^2, $
所以 $lim_(n->infinity)integral_0^1 t^n|ln t|dif t=0$，从而 $lim_(n->infinity)u_n=0$.
]
]

#ezexam.question[
（本题满分10分）求幂级数 $sum_(n=1)^infinity((-1)^(n-1))/(2n-1)x^(2n)$ 的收敛域及和函数.
#ezexam.solution(show-number: false)[
解　记 $u_n(x)=((-1)^(n-1))/(2n-1)x^(2n)$，由于
$ lim_(n->infinity)|u_(n+1)(x)/u_n(x)|=lim_(n->infinity)(2n-1)/(2n+1)x^2=x^2, $
所以当 $x^2<1$，即 $|x|<1$ 时，$sum_(n=1)^infinity u_n(x)$ 绝对收敛；当 $|x|>1$ 时，$sum_(n=1)^infinity u_n(x)$ 发散.因此幂级数的收敛半径 $R=1$.
当 $x=plus.minus 1$ 时，原级数为 $sum_(n=1)^infinity((-1)^(n-1))/(2n-1)$，由莱布尼茨判别法知此级数收敛，因此幂级数的收敛域为 $[-1,1]$.
设 $S(x)=sum_(n=1)^infinity((-1)^(n-1))/(2n-1)x^(2n-1)(-1<=x<=1)$，则
$ S'(x)=sum_(n=1)^infinity(-1)^(n-1)x^(2n-2)=1/(1+x^2), $
又 $S(0)=0$，故 $S(x)=integral_0^x 1/(1+t^2)dif t=arctan x$，于是
$ sum_(n=1)^infinity((-1)^(n-1))/(2n-1)x^(2n)=x S(x)=x arctan x,quad x in[-1,1]. $
]
]

#ezexam.question[
（本题满分10分）设 $P$ 为椭球面 $S:x^2+y^2+z^2-y z=1$ 上的动点，若 $S$ 在点 $P$ 处的切平面与 $x O y$ 面垂直，求点 $P$ 的轨迹 $C$，并计算曲面积分 $I=integral.double_Sigma ((x+sqrt(3))|y-2z|)/(sqrt(4+y^2+z^2-4y z))dif S$，其中 $Sigma$ 是椭球面 $S$ 位于曲线 $C$ 上方的部分.
#ezexam.solution(show-number: false)[
解　椭球面 $S$ 上点 $P(x,y,z)$ 处的法向量是 $bold(n)={2x,2y-z,2z-y}$，点 $P$ 处的切平面与 $x O y$ 面垂直的充要条件是 $bold(n) dot bold(k)=0(bold(k)={0,0,1})$，即 $2z-y=0$，所以点 $P$ 的轨迹 $C$ 的方程为
$ cases(2z-y=0,x^2+y^2+z^2-y z=1),quad "即" cases(2z-y=0,x^2+3/4 y^2=1). $
取 $D={(x,y)|x^2+3/4 y^2<=1}$，记 $Sigma$ 的方程为 $z=z(x,y),(x,y) in D$，由于
$ sqrt(1+((partial z)/(partial x))^2+((partial z)/(partial y))^2) \
=sqrt(1+((2x)/(y-2z))^2+((2y-z)/(y-2z))^2) \
=(sqrt(4+y^2+z^2-4y z))/(|y-2z|), $
所以
$ I=integral.double_D ((x+sqrt(3))|y-2z|)/(sqrt(4+y^2+z^2-4y z)) sqrt(1+((partial z)/(partial x))^2+((partial z)/(partial y))^2)dif x dif y \
=integral.double_D(x+sqrt(3))dif x dif y \
=sqrt(3)integral.double_D dif x dif y=2pi. $
]
]

#ezexam.question[
（本题满分11分）设 $A=mat(lambda,1,1;0,lambda-1,0;1,1,lambda),bold(b)=mat(a;1;1)$.已知线性方程组 $A bold(x)=bold(b)$ 存在2个不同的解，

（Ⅰ）求 $lambda,a$；

（Ⅱ）求方程组 $A bold(x)=bold(b)$ 的通解.
#ezexam.solution(show-number: false)[
解　（Ⅰ）设 $eta_1,eta_2$ 为 $A bold(x)=bold(b)$ 的2个不同的解，则 $eta_1-eta_2$ 是 $A bold(x)=0$ 的一个非零解，故 $|A|=(lambda-1)^2(lambda+1)=0$，于是 $lambda=1$ 或 $lambda=-1$.
当 $lambda=1$ 时，因为 $r(A)!=r(A,bold(b))$，所以 $A bold(x)=bold(b)$ 无解，舍去.
当 $lambda=-1$ 时，对 $A bold(x)=bold(b)$ 的增广矩阵施以初等行变换：
$ (A,bold(b))=mat(-1,1,1,a;0,-2,0,1;1,1,-1,1,augment:#3) \
->mat(1,0,-1,3/2;0,1,0,-1/2;0,0,0,a+2,augment:#3)=B, $
因为 $A bold(x)=bold(b)$ 有解，所以 $a=-2$.
（Ⅱ）当 $lambda=-1,a=-2$ 时，$B=mat(1,0,-1,3/2;0,1,0,-1/2;0,0,0,0,augment:#3)$，所以 $A bold(x)=bold(b)$ 的通解为 $bold(x)=1/2 mat(3;-1;0)+k mat(1;0;1)$，其中 $k$ 为任意常数.
]
]

#ezexam.question[
（本题满分11分）已知二次型 $f(x_1,x_2,x_3)=bold(x)^T A bold(x)$ 在正交变换 $bold(x)=Q bold(y)$ 下的标准形为 $y_1^2+y_2^2$，且 $Q$ 的第3列为 $(sqrt(2)/2,0,sqrt(2)/2)^T$.

（Ⅰ）求矩阵 $A$；

（Ⅱ）证明 $A+E$ 为正定矩阵，其中 $E$ 为3阶单位矩阵.
#ezexam.solution(show-number: false)[
解　（Ⅰ）由题设，$A$ 的特征值为1，1，0，且 $(1,0,1)^T$ 为 $A$ 的属于特征值0的一个特征向量.
设 $(x_1,x_2,x_3)^T$ 为 $A$ 的属于特征值1的特征向量，因为 $A$ 的属于不同特征值的特征向量正交，所以 $(x_1,x_2,x_3)mat(1;0;1)=0$，即 $x_1+x_3=0$.取 $(sqrt(2)/2,0,-sqrt(2)/2)^T,(0,1,0)^T$ 为 $A$ 的属于特征值1的两个正交的单位特征向量.
令 $Q=mat(sqrt(2)/2,0,sqrt(2)/2;0,1,0;-sqrt(2)/2,0,sqrt(2)/2)$，则有 $Q^T A Q=mat(1,0,0;0,1,0;0,0,0)$，故
$ A=Q mat(1,0,0;0,1,0;0,0,0)Q^T=1/2 mat(1,0,-1;0,2,0;-1,0,1). $
（Ⅱ）由（Ⅰ）知 $A$ 的特征值为1，1，0，于是 $A+E$ 的特征值为2，2，1，又 $A+E$ 为实对称矩阵，故 $A+E$ 为正定矩阵.
]
]

#ezexam.question[
（本题满分11分）设二维随机变量 $(X,Y)$ 的概率密度为 $f(x,y)=A e^(-2x^2+2x y-y^2),-infinity<x<+infinity,-infinity<y<+infinity$，求常数 $A$ 及条件概率密度 $f_(Y|X)(y|x)$.
#ezexam.solution(show-number: false)[
解　因
$ f_X(x)=integral_(-infinity)^(+infinity)f(x,y)dif y \
=A integral_(-infinity)^(+infinity)e^(-2x^2+2x y-y^2)dif y \
=A integral_(-infinity)^(+infinity)e^(-(y-x)^2-x^2)dif y \
=A e^(-x^2)integral_(-infinity)^(+infinity)e^(-(y-x)^2)dif y \
=A sqrt(pi)e^(-x^2),quad -infinity<x<+infinity, $
所以 $1=integral_(-infinity)^(+infinity)f_X(x)dif x=A sqrt(pi)integral_(-infinity)^(+infinity)e^(-x^2)dif x=A pi$，从而 $A=1/pi$.
当 $x in(-infinity,+infinity)$ 时，
$ f_(Y|X)(y|x)=(f(x,y))/(f_X(x)) \
=(1/pi e^(-2x^2+2x y-y^2))/(1/sqrt(pi)e^(-x^2)) \
=1/sqrt(pi)e^(-x^2+2x y-y^2)=1/sqrt(pi)e^(-(x-y)^2),quad -infinity<y<+infinity. $
]
]

#ezexam.question[
（本题满分11分）设总体 $X$ 的概率分布为
#table(columns:4,[$X$],[1],[2],[3],[$P$],[$1-theta$],[$theta-theta^2$],[$theta^2$])
其中参数 $theta in(0,1)$ 未知.以 $N_i$ 表示来自总体 $X$ 的简单随机样本（样本容量为 $n$）中等于 $i$ 的个数 $(i=1,2,3)$.试求常数 $a_1,a_2,a_3$，使 $T=sum_(i=1)^3 a_i N_i$ 为 $theta$ 的无偏估计量，并求 $T$ 的方差.
#ezexam.solution(show-number: false)[
解　记 $p_1=1-theta,p_2=theta-theta^2,p_3=theta^2$.由于 $N_i~B(n,p_i),i=1,2,3$，故 $E N_i=n p_i$，于是
$ E T=a_1 E N_1+a_2 E N_2+a_3 E N_3 \
=n[a_1(1-theta)+a_2(theta-theta^2)+a_3 theta^2]. $
为使 $T$ 是 $theta$ 的无偏估计量，必有 $n[a_1(1-theta)+a_2(theta-theta^2)+a_3 theta^2]=theta$，因此
$ cases(a_1=0,a_2-a_1=1/n,a_3-a_2=0), $
由此得 $a_1=0,a_2=a_3=1/n$.
由于 $N_1+N_2+N_3=n$，故 $T=1/n(N_2+N_3)=1/n(n-N_1)=1-N_1/n$.
注意到 $N_1~B(n,1-theta)$，故 $D T=1/n^2 D N_1=(n(1-theta)theta)/n^2=(theta(1-theta))/n$.
]
]

