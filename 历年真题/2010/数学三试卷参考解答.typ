#import "../template.typ": exam
#show: exam.with(year: 2010, subject: "三", title: "2010年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(true)


= 一、选择题：1—8小题，每小题4分，共32分. 在每小题给出的四个选项中，只有一项符合题目要求，把所选项前的字母填在题后的括号内.

#ezexam.question[
若 $lim_(x->0)[1/x-(1/x-a)e^x]=1$，则 $a$ 等于
#choices([0.],[1.],[2.],[3.])
#ezexam.solution(show-number: false)[
C.
]
]

#ezexam.question[
设 $y_1,y_2$ 是一阶线性非齐次微分方程 $y'+p(x)y=q(x)$ 的两个特解，若常数 $lambda,mu$ 使 $lambda y_1+mu y_2$ 是该方程的解，$lambda y_1-mu y_2$ 是该方程对应的齐次方程的解，则
#choices([$lambda=1/2,mu=1/2$.],[$lambda=-1/2,mu=-1/2$.],[$lambda=2/3,mu=1/3$.],[$lambda=2/3,mu=2/3$.])
#ezexam.solution(show-number: false)[
A.
]
]

#ezexam.question[
设函数 $f(x),g(x)$ 具有二阶导数，且 $g''(x)<0$.若 $g(x_0)=a$ 是 $g(x)$ 的极值，则 $f(g(x))$ 在 $x_0$ 取极大值的一个充分条件是
#choices([$f'(a)<0$.],[$f'(a)>0$.],[$f''(a)<0$.],[$f''(a)>0$.])
#ezexam.solution(show-number: false)[
B.
]
]

#ezexam.question[
设 $f(x)=ln^10 x,g(x)=x,h(x)=e^(x/10)$，则当 $x$ 充分大时有
#choices([$g(x)<h(x)<f(x)$.],[$h(x)<g(x)<f(x)$.],[$f(x)<g(x)<h(x)$.],[$g(x)<f(x)<h(x)$.])
#ezexam.solution(show-number: false)[
C.
]
]

#ezexam.question[
设向量组Ⅰ：$alpha_1,alpha_2,dots,alpha_r$ 可由向量组Ⅱ：$beta_1,beta_2,dots,beta_s$ 线性表示.下列命题正确的是
#choices([若向量组Ⅰ线性无关，则 $r<=s$.],[若向量组Ⅰ线性相关，则 $r>s$.],[若向量组Ⅱ线性无关，则 $r<=s$.],[若向量组Ⅱ线性相关，则 $r>s$.])
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

= 二、填空题：9—14小题，每小题4分，共24分. 把答案填在题中横线上.

#ezexam.question[
设可导函数 $y=y(x)$ 由方程 $integral_0^(x+y)e^(-t^2)dif t=integral_0^x x sin t^2 dif t$ 确定，则 $(dif y)/(dif x)|_(x=0)=$ #fillin(len: 1.98438em)[].
#ezexam.solution(show-number: false)[
−1.
]
]

#ezexam.question[
设位于曲线 $y=1/sqrt(x(1+ln^2 x))(e<=x<+infinity)$ 下方、$x$ 轴上方的无界区域为 $G$，则 $G$ 绕 $x$ 轴旋转一周所得空间区域的体积为 #fillin(len: 1.98438em)[].
#ezexam.solution(show-number: false)[
$pi^2/4$.
]
]

#ezexam.question[
设某商品的收益函数为 $R(p)$，收益弹性为 $1+p^3$，其中 $p$ 为价格，且 $R(1)=1$，则 $R(p)=$ #fillin(len: 1.98438em)[].
#ezexam.solution(show-number: false)[
$p e^(1/3(p^3-1))$.
]
]

#ezexam.question[
若曲线 $y=x^3+a x^2+b x+1$ 有拐点 $(-1,0)$，则 $b=$ #fillin(len: 1.98438em)[].
#ezexam.solution(show-number: false)[
3.
]
]

#ezexam.question[
设 $A,B$ 为3阶矩阵，且 $|A|=3,|B|=2,|A^(-1)+B|=2$，则 $|A+B^(-1)|=$ #fillin(len: 1.98438em)[].
#ezexam.solution(show-number: false)[
3.
]
]

#ezexam.question[
设 $X_1,X_2,dots,X_n$ 是来自总体 $N(mu,sigma^2)(sigma>0)$ 的简单随机样本，记统计量 $T=1/n sum_(i=1)^n X_i^2$，则 $E T=$ #fillin(len: 1.98438em)[].
#ezexam.solution(show-number: false)[
$sigma^2+mu^2$.
]
]

= 三、解答题：15—23小题，共94分. 解答应写出文字说明、证明过程或演算步骤.

#ezexam.question[
（本题满分10分）求极限 $lim_(x->+infinity)(x^(1/x)-1)^(1/(ln x))$.
#ezexam.solution(show-number: false)[
解　因为
$ lim_(x->+infinity)(ln(e^((ln x)/x)-1))/(ln x) \
=lim_(x->+infinity)(x e^((ln x)/x))/(e^((ln x)/x)-1) dot (1-ln x)/x^2, $
而当 $x->+infinity$ 时，$(ln x)/x->0$，故
$ lim_(x->+infinity)(ln(e^((ln x)/x)-1))/(ln x) \
=lim_(x->+infinity)e^((ln x)/x)/((ln x)/x) dot (1-ln x)/x \
=lim_(x->+infinity)(1-ln x)/(ln x)=-1, $
所以 $lim_(x->+infinity)(x^(1/x)-1)^(1/(ln x))=e^(-1)$.
]
]

#ezexam.question[
（本题满分10分）计算二重积分 $integral.double_D(x+y)^3 dif x dif y$，其中 $D$ 由曲线 $x=sqrt(1+y^2)$ 与直线 $x+sqrt(2)y=0$ 及 $x-sqrt(2)y=0$ 围成.
#ezexam.solution(show-number: false)[
解　区域 $D$ 如图所示.
#import "@preview/cetz:0.5.2": canvas, draw
#canvas({import draw: *;line((-.2,0),(1.8,0),mark:(end:">"));line((0,-1.3),(0,1.4),mark:(end:">"));let r=calc.sqrt(2);line((0,0),(r,1));line((0,0),(r,-1));bezier((r,-1),(1,0),(1.1,-.7),(1,-.3));bezier((1,0),(r,1),(1,.3),(1.1,.7));for t in range(-9,10).map(i=>i/10){line((r*calc.abs(t),t),(calc.sqrt(1+t*t),t),stroke:.3pt)};line((0,1),(r,1),(r,0),stroke:(dash:"dashed"));content((-.1,-.1),$O$);content((1.8,-.1),$x$);content((-.1,1.4),$y$);content((r,1.18),[$(sqrt(2),1)$])})
$ "原式"=integral.double_D(x^3+3x^2 y+3x y^2+y^3)dif x dif y \
=integral.double_D(x^3+3x y^2)dif x dif y \
=2integral_0^1 dif y integral_(sqrt(2)y)^(sqrt(1+y^2))(x^3+3x y^2)dif x \
=1/2 integral_0^1(1+2y^2-3y^4)dif y+3integral_0^1(y^2-y^4)dif y=14/15. $
]
]

#ezexam.question[
（本题满分10分）求函数 $u=x y+2y z$ 在约束条件 $x^2+y^2+z^2=10$ 下的最大值和最小值.
#ezexam.solution(show-number: false)[
解　设 $F(x,y,z,lambda)=x y+2y z+lambda(x^2+y^2+z^2-10)$.
令
$ cases(F'_x=y+2lambda x=0,F'_y=x+2z+2lambda y=0,F'_z=2y+2lambda z=0,F'_lambda=x^2+y^2+z^2-10=0), $
得可能的最值点
$ A(1,sqrt(5),2),quad B(-1,sqrt(5),-2), $
$ C(1,-sqrt(5),2),quad D(-1,-sqrt(5),-2), $
$ E(2sqrt(2),0,-sqrt(2)),quad F(-2sqrt(2),0,sqrt(2)). $
因为在 $A,D$ 两点处 $u=5sqrt(5)$；在 $B,C$ 两点处 $u=-5sqrt(5)$；在 $E,F$ 两点处 $u=0$.所以 $u_(max)=5sqrt(5),u_(min)=-5sqrt(5)$.
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
（本题满分10分）设函数 $f(x)$ 在 $[0,3]$ 上连续，在 $(0,3)$ 内存在二阶导数，且 $2f(0)=integral_0^2 f(x)dif x=f(2)+f(3)$.

（Ⅰ）证明存在 $eta in(0,2)$，使 $f(eta)=f(0)$；

（Ⅱ）证明存在 $xi in(0,3)$，使 $f''(xi)=0$.
#ezexam.solution(show-number: false)[
证　（Ⅰ）设 $F(x)=integral_0^x f(t)dif t(0<=x<=2)$，则 $integral_0^2 f(x)dif x=F(2)-F(0)$.
根据拉格朗日中值定理，存在 $eta in(0,2)$，使 $F(2)-F(0)=2F'(eta)=2f(eta)$，即 $integral_0^2 f(x)dif x=2f(eta)$.
由题设知 $integral_0^2 f(x)dif x=2f(0)$，故 $f(eta)=f(0)$.
（Ⅱ）$(f(2)+f(3))/2$ 介于 $f(x)$ 在 $[2,3]$ 上的最小值与最大值之间，根据连续函数的介值定理，存在 $zeta in[2,3]$，使 $f(zeta)=(f(2)+f(3))/2$.
由题设 $(f(2)+f(3))/2=f(0)$，故 $f(zeta)=f(0)$.
由于 $f(0)=f(eta)=f(zeta)$，且 $0<eta<zeta<=3$，根据罗尔定理，存在 $xi_1 in(0,eta),xi_2 in(eta,zeta)$，使 $f'(xi_1)=0,f'(xi_2)=0$，从而存在 $xi in(xi_1,xi_2) subset (0,3)$，使得 $f''(xi)=0$.
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
（本题满分11分）设 $A=mat(0,-1,4;-1,3,a;4,a,0)$，正交矩阵 $Q$ 使得 $Q^T A Q$ 为对角矩阵.若 $Q$ 的第1列为 $1/sqrt(6)(1,2,1)^T$，求 $a,Q$.
#ezexam.solution(show-number: false)[
解　由题设，$(1,2,1)^T$ 为 $A$ 的一个特征向量，于是
$ A mat(1;2;1)=mat(0,-1,4;-1,3,a;4,a,0)mat(1;2;1)=lambda_1 mat(1;2;1), $
解得 $a=-1,lambda_1=2$.
由于 $A$ 的特征多项式 $|lambda E-A|=(lambda-2)(lambda-5)(lambda+4)$，所以 $A$ 的特征值为2，5，−4.
属于特征值5的一个单位特征向量为 $1/sqrt(3)(1,-1,1)^T$；属于特征值−4的一个单位特征向量为 $1/sqrt(2)(-1,0,1)^T$.
令 $Q=mat(1/sqrt(6),1/sqrt(3),-1/sqrt(2);2/sqrt(6),-1/sqrt(3),0;1/sqrt(6),1/sqrt(3),1/sqrt(2))$.
则有 $Q^T A Q=mat(2,0,0;0,5,0;0,0,-4)$，故 $Q$ 为所求矩阵.
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
（本题满分11分）箱中装有6个球，其中红、白、黑球的个数分别为1，2，3个.现从箱中随机地取出2个球.记 $X$ 为取出的红球个数，$Y$ 为取出的白球个数.

（Ⅰ）求随机变量 $(X,Y)$ 的概率分布；

（Ⅱ）求 $"Cov"(X,Y)$.
#ezexam.solution(show-number: false)[
解　（Ⅰ）随机变量 $(X,Y)$ 的概率分布为
#table(columns:4,[$X slash Y$],[0],[1],[2],[0],[$1/5$],[$2/5$],[$1/15$],[1],[$1/5$],[$2/15$],[0])
（Ⅱ）因为 $P{X=0}=2/3,P{X=1}=1/3$，所以 $E X=0 times 2/3+1 times 1/3=1/3$.
因为 $P{Y=0}=2/5,P{Y=1}=8/15,P{Y=2}=1/15$，所以 $E Y=0 times 2/5+1 times 8/15+2 times 1/15=2/3$.
又 $E(X Y)=1 times 1 times 2/15=2/15$，所以 $"Cov"(X,Y)=E(X Y)-E X dot E Y=2/15-1/3 times 2/3=-4/45$.
]
]

