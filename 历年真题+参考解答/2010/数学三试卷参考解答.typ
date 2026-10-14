#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2010, subject: "三", title: "2010年全国硕士研究生入学统一考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2010 数学三试卷参考解答

= 一、选择题

#answer("1.")[
C. 【解】先通分，将无穷大之差化成未定式，再用洛必达法则：
$ lim_(x->0)frac(1-(1-a x)e^x,x)=lim_(x->0)[a e^x-(1-a x)e^x]=a-1. $
由题设 $a-1=1$，得 $a=2$.
【典型错误】不能先在原式的一部分中把 $e^x$ 换成其极限 $1$，因为另外的因子无界.
]

#answer("2.")[
A. 【解】将 $lambda y_1+mu y_2$ 代入非齐次方程，得 $(lambda+mu)q(x)=q(x)$，所以 $lambda+mu=1$. 将 $lambda y_1-mu y_2$ 代入对应齐次方程，得 $(lambda-mu)q(x)=0$，所以 $lambda-mu=0$. 解得 $lambda=mu=1/2$.
]

#answer("3.")[
B. 【解】记 $y=f(g(x))$. 因 $g'(x_0)=0$，有 $y'(x_0)=0$. 又
$ y''=f''(g(x))[g'(x)]^2+f'(g(x))g''(x), $
故 $y''(x_0)=f'(a)g''(x_0)$. 由 $g''(x_0)<0$，若 $f'(a)>0$，则 $y''(x_0)<0$，所以在 $x_0$ 处取得极大值.
$f'(a)<0$ 反而给出极小值；$f''(a)$ 的正负不决定本题结论. 例如 $g(x)=-x^2,f(x)=e^x$ 时，复合函数在零点取极大值，但 $f''(0)>0$；换成 $f(x)=ln(1+x)$，仍取极大值，而 $f''(0)<0$.
]

#answer("4.")[
C. 【解】由
$ lim_(x->+infinity)frac(x,ln^10 x)=+infinity, quad lim_(x->+infinity)frac(e^(x/10),x)=+infinity, $
可知 $x$ 充分大时 $ln^10 x<x<e^(x/10)$，即 $f(x)<g(x)<h(x)$.
]

#answer("5.")[
A. 【解】向量组Ⅰ可由Ⅱ线性表示，故 $r("Ⅰ")<=r("Ⅱ")$. 当Ⅰ线性无关时，
$ r=r("Ⅰ")<=r("Ⅱ")<=s, $
因此 $r<=s$.
其余选项可用反例排除：Ⅰ只含零向量，Ⅱ由 $(1,0)^T,(0,0)^T$ 组成，否定 B、D；Ⅰ由 $(1,0)^T,(0,0)^T$ 组成，Ⅱ只含 $(1,0)^T$，否定 C.
]

#answer("6.")[
D. 【解】由 $A^2+A=O$，任一特征值满足 $lambda^2+lambda=0$，故只能为 $0$ 或 $-1$. 实对称矩阵可正交对角化，又 $r(A)=3$，所以它的特征值为 $-1,-1,-1,0$，与 $op("diag")(-1,-1,-1,0)$ 相似.
]

#answer("7.")[
C. 【解】分布函数在 $x=1$ 处的跳跃量等于该点的概率：
$ P(X=1)=F(1)-F(1-)=1-e^(-1)-frac(1,2)=frac(1,2)-e^(-1). $
注意分布函数并非处处连续，不能将本题当作纯连续型分布处理.
]

#answer("8.")[
A. 【解】正态密度在零点两侧的积分各为 $1/2$；区间 $[-1,3]$ 上的均匀密度在正半轴的积分为 $3/4$. 由密度的归一性，
$ frac(a,2)+frac(3b,4)=1, $
即 $2a+3b=4$.
]

= 二、填空题

#answer("9.")[
$-1$. 【解】方程两端对 $x$ 求导，得
$ e^(-(x+y)^2)(1+y')=integral_0^x sin(t^2)dif t+x sin(x^2). $
代入 $x=0$，右端为零，左端指数因子不为零，所以 $y'(0)=-1$. 另外，将 $x=0$ 代入原方程，因被积函数严格为正，可知 $y(0)=0$.
]

#answer("10.")[
$pi^2/4$. 【解】由旋转体体积公式，
$ V=pi integral_e^infinity y^2 dif x=pi integral_e^infinity frac(1,x(1+ln^2 x))dif x $
$ =pi[arctan(ln x)]_e^infinity=frac(pi^2,4). $
]

#answer("11.")[
$p e^((p^3-1)/3)$. 【解】由收益弹性公式，
$ frac(p,R)frac(dif R,dif p)=1+p^3, quad frac(dif R,R)=(frac(1,p)+p^2)dif p. $
积分得 $ln R=ln p+p^3/3+ln C$，故 $R=C p e^(p^3/3)$. 由 $R(1)=1$ 得 $C=e^(-1/3)$，结论如上.
【典型错误】题设收益弹性是正值，列方程时不能额外加负号.
]

#answer("12.")[
$3$. 【解】拐点 $(-1,0)$ 满足 $y(-1)=0,y''(-1)=0$，即
$ cases(a-b=0,-6+2a=0). $
解得 $a=b=3$.
]

#answer("13.")[
$3$. 【解】利用行列式乘法公式，
$ |A| |A^(-1)+B|=|E+A B|=|B^(-1)+A| |B|. $
所以 $3 times 2=2|A+B^(-1)|$，得 $|A+B^(-1)|=3$.
【典型错误】行列式不具有对矩阵加法的线性性，不能写成 $|A|+|B^(-1)|$.
]

#answer("14.")[
$sigma^2+mu^2$. 【解】每个样本都有 $E X_i^2=D X_i+(E X_i)^2=sigma^2+mu^2$，故
$ E T=frac(1,n)sum_(i=1)^n E X_i^2=sigma^2+mu^2. $
注意二阶原点矩 $E X^2$ 与均值的平方 $(E X)^2$ 不同.
]

= 三、解答题

#answer("15.")[
解　因为
$ lim_(x->+infinity)(ln(e^((ln x)/x)-1))/(ln x) \
=lim_(x->+infinity)(x e^((ln x)/x))/(e^((ln x)/x)-1) dot (1-ln x)/x^2, $
而当 $x->+infinity$ 时，$(ln x)/x->0$，故
$ lim_(x->+infinity)(ln(e^((ln x)/x)-1))/(ln x) \
=lim_(x->+infinity)e^((ln x)/x)/((ln x)/x) dot (1-ln x)/x \
=lim_(x->+infinity)(1-ln x)/(ln x)=-1, $
所以 $lim_(x->+infinity)(x^(1/x)-1)^(1/(ln x))=e^(-1)$.
【解法2】令 $u=ln x/x$，则 $u->0^+$，且
$ lim_(u->0^+)frac(ln(e^u-1),ln u)=lim_(u->0^+)frac(u e^u,e^u-1)=1. $
因此
$ lim_(x->+infinity)frac(ln(e^(ln x/x)-1),ln x) $
$ =lim_(x->+infinity)frac(ln(e^(ln x/x)-1),ln(ln x/x))frac(ln(ln x/x),ln x)=-1. $
故原极限为 $e^(-1)$.
【解法3】第一次使用洛必达法则后，将式子整理为
$ lim_(x->+infinity)e^(ln x/x)frac((1-ln x)/x,e^(ln x/x)-1). $
后一个比值是 $0/0$ 型，再用洛必达法则，得
$ lim_(x->+infinity)frac((ln x-2)/x^2,e^(ln x/x)(1-ln x)/x^2)=-1. $
故原极限仍为 $e^(-1)$.
]

#answer("16.")[
解　区域 $D$ 如图所示.
#import "@preview/cetz:0.5.2": canvas, draw
#canvas({import draw: *;line((-.2,0),(1.8,0),mark:(end:">"));line((0,-1.3),(0,1.4),mark:(end:">"));let r=calc.sqrt(2);line((0,0),(r,1));line((0,0),(r,-1));bezier((r,-1),(1,0),(1.1,-.7),(1,-.3));bezier((1,0),(r,1),(1,.3),(1.1,.7));for t in range(-9,10).map(i=>i/10){line((r*calc.abs(t),t),(calc.sqrt(1+t*t),t),stroke:.3pt)};line((0,1),(r,1),(r,0),stroke:(dash:"dashed"));content((-.1,-.1),$O$);content((1.8,-.1),$x$);content((-.1,1.4),$y$);content((r,1.18),[$(sqrt(2),1)$])})
$ "原式"=integral.double_D(x^3+3x^2 y+3x y^2+y^3)dif x dif y \
=integral.double_D(x^3+3x y^2)dif x dif y \
=2integral_0^1 dif y integral_(sqrt(2)y)^(sqrt(1+y^2))(x^3+3x y^2)dif x \
=1/2 integral_0^1(1+2y^2-3y^4)dif y+3integral_0^1(y^2-y^4)dif y=14/15. $
【解法2】改成先对 $y$ 积分时，须把第一象限区域分成两部分：
$ I=2integral_0^1 dif x integral_0^(x/sqrt(2))(x^3+3x y^2)dif y $
$ +2integral_1^(sqrt(2))dif x integral_(sqrt(x^2-1))^(x/sqrt(2))(x^3+3x y^2)dif y. $
对 $y$ 积分的原函数为 $y x^3+x y^3$，代入相应上下限，再对 $x$ 积分，得 $I=14/15$.
【典型错误】不利用区域关于横轴的对称性，会保留本可消去的奇函数项并增加计算量.
]

#answer("17.")[
解　设 $F(x,y,z,lambda)=x y+2y z+lambda(x^2+y^2+z^2-10)$.
令
$ cases(F'_x=y+2lambda x=0,F'_y=x+2z+2lambda y=0,F'_z=2y+2lambda z=0,F'_lambda=x^2+y^2+z^2-10=0), $
得可能的最值点
$ A(1,sqrt(5),2),quad B(-1,sqrt(5),-2), $
$ C(1,-sqrt(5),2),quad D(-1,-sqrt(5),-2), $
$ E(2sqrt(2),0,-sqrt(2)),quad F(-2sqrt(2),0,sqrt(2)). $
因为在 $A,D$ 两点处 $u=5sqrt(5)$；在 $B,C$ 两点处 $u=-5sqrt(5)$；在 $E,F$ 两点处 $u=0$. 所以 $u_(max)=5sqrt(5),u_(min)=-5sqrt(5)$.
【解法2】当 $z!=0$ 时，由约束隐式确定 $z=z(x,y)$，有 $z'_x=-x/z,z'_y=-y/z$. 代入目标函数的驻点条件，得
$ cases(y z-2x y=0,x z+2z^2-2y^2=0,x^2+y^2+z^2=10). $
解得与解法1相同的六个候选点，并得到最大值 $5sqrt(5)$、最小值 $-5sqrt(5)$. 还须检查 $z=0$：此时 $u=x y$，由 $x^2+y^2=10$ 得 $|u|<=5$，不影响上述最值.
【典型错误】不能在消元时默认乘子 $lambda!=0$ 或 $y!=0$，否则会漏掉 $E,F$ 两个候选点.
]

#answer("18.")[
解　（Ⅰ）当 $0<=t<=1$ 时，因为 $ln(1+t)<=t$，所以 $|ln t[ln(1+t)]^n|<=t^n|ln t|$，因此
$ integral_0^1|ln t[ln(1+t)]^n|dif t<=integral_0^1 t^n|ln t|dif t. $
（Ⅱ）由（Ⅰ）知 $0<=u_n=integral_0^1|ln t[ln(1+t)]^n|dif t<=integral_0^1 t^n|ln t|dif t$.
因为
$ integral_0^1 t^n|ln t|dif t=-integral_0^1 t^n ln t dif t \
=1/(n+1)integral_0^1 t^n dif t=1/(n+1)^2, $
所以 $lim_(n->infinity)integral_0^1 t^n|ln t|dif t=0$，从而 $lim_(n->infinity)u_n=0$.
（Ⅱ）【解法2】由 $0<=ln(1+t)<=ln 2<1$，得
$ 0<=u_n<=(ln 2)^n integral_0^1|ln t|dif t=(ln 2)^n->0. $
其中反常积分 $integral_0^1|ln t|dif t=1$，所以夹逼得 $lim u_n=0$.
【解法3】因 $lim_(t->0^+)t ln t=0$，存在 $M>0$，使 $t|ln t|<=M$，于是
$ 0<=u_n<=integral_0^1 t^n|ln t|dif t<=M integral_0^1 t^(n-1)dif t=frac(M,n)->0. $
【典型错误】利用反常积分作比较时，应先说明比较积分收敛.
【典型错误】用积分中值定理得到的中间点一般依赖于 $n$，应记作 $xi_n$，不能当作固定常数直接断言 $xi_n^n|ln xi_n|->0$. 也不能在未说明条件的情况下交换积分与极限.
]

#answer("19.")[
证　（Ⅰ）设 $F(x)=integral_0^x f(t)dif t(0<=x<=2)$，则 $integral_0^2 f(x)dif x=F(2)-F(0)$.
根据拉格朗日中值定理，存在 $eta in(0,2)$，使 $F(2)-F(0)=2F'(eta)=2f(eta)$，即 $integral_0^2 f(x)dif x=2f(eta)$.
由题设知 $integral_0^2 f(x)dif x=2f(0)$，故 $f(eta)=f(0)$.
（Ⅱ）$(f(2)+f(3))/2$ 介于 $f(x)$ 在 $[2,3]$ 上的最小值与最大值之间，根据连续函数的介值定理，存在 $zeta in[2,3]$，使 $f(zeta)=(f(2)+f(3))/2$.
由题设 $(f(2)+f(3))/2=f(0)$，故 $f(zeta)=f(0)$.
由于 $f(0)=f(eta)=f(zeta)$，且 $0<eta<zeta<=3$，根据罗尔定理，存在 $xi_1 in(0,eta),xi_2 in(eta,zeta)$，使 $f'(xi_1)=0,f'(xi_2)=0$，从而存在 $xi in(xi_1,xi_2) subset (0,3)$，使得 $f''(xi)=0$.
（Ⅱ）【证法2】由（Ⅰ）及罗尔定理，存在 $xi_1 in(0,eta)$，使 $f'(xi_1)=0$. 又
$ f(2)-f(eta)=f(eta)-f(3). $
分别用中值定理，存在 $eta_1 in(eta,2),eta_2 in(eta,3)$，使
$ f'(eta_1)(2-eta)=f'(eta_2)(eta-3). $
因为两因子异号，两个导数或异号，或均为零. 若均为零且两点不同，用罗尔定理得到 $f''$ 的零点；若两点相同，则该点的 $f'$ 为零，与 $xi_1$ 再用罗尔定理即可. 若异号，利用 $f'$ 的连续性得到另一个零点 $xi_2>eta$，再对 $f'$ 用罗尔定理.
【证法3】若 $f(2)=f(eta)$，则 $f(eta)=f(2)=f(3)$，连续使用两次罗尔定理即可. 若 $f(2)>f(eta)$，则 $f(3)<f(eta)<f(2)$，介值定理给出 $c in(2,3)$，使 $f(c)=f(eta)=f(0)$，再用两次罗尔定理. 若 $f(2)<f(eta)$，同理.
【典型错误】各中间点应位于指定开区间. 在重叠区间上得到的两个中间点未必不同，不能未经区分就直接使用罗尔定理.
]

#answer("20.")[
解　（Ⅰ）设 $eta_1,eta_2$ 为 $A bold(x)=bold(b)$ 的2个不同的解，则 $eta_1-eta_2$ 是 $A bold(x)=0$ 的一个非零解，故 $|A|=(lambda-1)^2(lambda+1)=0$，于是 $lambda=1$ 或 $lambda=-1$.
当 $lambda=1$ 时，因为 $r(A)!=r(A,bold(b))$，所以 $A bold(x)=bold(b)$ 无解，舍去.
当 $lambda=-1$ 时，对 $A bold(x)=bold(b)$ 的增广矩阵施以初等行变换：
$ (A,bold(b))=mat(-1,1,1,a;0,-2,0,1;1,1,-1,1,augment:#3) \
->mat(1,0,-1,3/2;0,1,0,-1/2;0,0,0,a+2,augment:#3)=B, $
因为 $A bold(x)=bold(b)$ 有解，所以 $a=-2$.
（Ⅱ）当 $lambda=-1,a=-2$ 时，$B=mat(1,0,-1,3/2;0,1,0,-1/2;0,0,0,0,augment:#3)$，所以 $A bold(x)=bold(b)$ 的通解为 $bold(x)=1/2 mat(3;-1;0)+k mat(1;0;1)$，其中 $k$ 为任意常数.
补充 $lambda=1$ 时的增广矩阵变换：
$ mat(1,1,1,a;0,0,0,1;1,1,1,1,augment:#3)->mat(1,1,1,1;0,0,0,1;0,0,0,a-1,augment:#3). $
系数矩阵秩为 $1$，增广矩阵秩为 $2$，故无解.
【典型错误】非齐次方程组的通解是特解与齐次方程组通解之和. 本题齐次方程组的基础解系只含一个向量.
]

#answer("21.")[
解　由题设，$(1,2,1)^T$ 为 $A$ 的一个特征向量，于是
$ A mat(1;2;1)=mat(0,-1,4;-1,3,a;4,a,0)mat(1;2;1)=lambda_1 mat(1;2;1), $
解得 $a=-1,lambda_1=2$.
由于 $A$ 的特征多项式 $|lambda E-A|=(lambda-2)(lambda-5)(lambda+4)$，所以 $A$ 的特征值为2，5，−4.
属于特征值5的一个单位特征向量为 $1/sqrt(3)(1,-1,1)^T$；属于特征值−4的一个单位特征向量为 $1/sqrt(2)(-1,0,1)^T$.
令 $Q=mat(1/sqrt(6),1/sqrt(3),-1/sqrt(2);2/sqrt(6),-1/sqrt(3),0;1/sqrt(6),1/sqrt(3),1/sqrt(2))$.
并有 $Q^T A Q=op("diag")(2,5,-4)$，所以 $Q$ 为所求正交矩阵.
【注】也可将后两列交换，取
$ Q=mat(1/sqrt(6),-1/sqrt(2),1/sqrt(3);2/sqrt(6),0,-1/sqrt(3);1/sqrt(6),1/sqrt(2),1/sqrt(3)), $
此时对应对角矩阵为 $op("diag")(2,-4,5)$.
【典型错误】仅使后两列与第一列正交还不够，它们还必须是 $A$ 的特征向量. 应分别求出特征值 $5,-4$ 对应的特征向量，再单位化.
]

#answer("22.")[
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
【解法2】先利用联合密度的归一性，并令 $u=y-x$：
$ 1=A integral_(-infinity)^infinity e^(-x^2)dif x integral_(-infinity)^infinity e^(-(y-x)^2)dif y $
$ =A integral_(-infinity)^infinity e^(-x^2)dif x integral_(-infinity)^infinity e^(-u^2)dif u=A pi. $
故 $A=1/pi$. 再积分得 $f_X(x)=e^(-x^2)/sqrt(pi)$，代入 $f_(Y|X)(y|x)=f(x,y)/f_X(x)$，得到解法1的条件密度.
【典型错误】配方后，积分中的平移不改变高斯积分的值. 条件密度应除以条件变量的边缘密度.
]

#answer("23.")[
解　（Ⅰ）随机变量 $(X,Y)$ 的概率分布为
#table(columns:4,[$X slash Y$],[0],[1],[2],[0],[$1/5$],[$2/5$],[$1/15$],[1],[$1/5$],[$2/15$],[0])
（Ⅱ）因为 $P{X=0}=2/3,P{X=1}=1/3$，所以 $E X=0 times 2/3+1 times 1/3=1/3$.
因为 $P{Y=0}=2/5,P{Y=1}=8/15,P{Y=2}=1/15$，所以 $E Y=0 times 2/5+1 times 8/15+2 times 1/15=2/3$.
又 $E(X Y)=1 times 1 times 2/15=2/15$，所以 $"Cov"(X,Y)=E(X Y)-E X dot E Y=2/15-1/3 times 2/3=-4/45$.
【典型错误】随机取出两个球应按不放回抽样理解，概率分布可用超几何计数求得. 将其当成放回后连续抽取两次，会得到不同的分布与协方差.
]

