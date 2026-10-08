#import "../template.typ": exam
#show: exam.with(year: 1999, subject: "三", title: "1999年全国硕士研究生入学考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(true)


= 一、填空题（本题共5小题，每小题3分，满分15分）
#ezexam.counter-question.step()

（1）设 $f(x)$ 有一个原函数 $frac(sin x,x)$，则 $integral_(frac(pi,2))^pi x f'(x)dif x=$ #fillin(len: 3em)[].
#ezexam.solution(show-number: false)[
$frac(4,pi)-1$.
]

（2）$sum_(n=1)^infinity n(frac(1,2))^(n-1)=$ #fillin(len: 3em)[].
#ezexam.solution(show-number: false)[
4.
]

（3）设 $A=mat(1,0,1;0,2,0;1,0,1)$，而 $n>=2$ 为正整数，则 $A^n-2A^(n-1)=$ #fillin(len: 3em)[].
#ezexam.solution(show-number: false)[
$O$.
]

（4）在天平上重复称量一重为 $a$ 的物品，假设各次称量结果相互独立且同服从正态分布 $N(a,0.2^2)$.若以 $overline(X)_n$ 表示 $n$ 次称量结果的算术平均值，则为使 $P{|overline(X)_n-a|<0.1}>=0.95$，$n$ 的最小值应不小于自然数 #fillin(len: 3em)[].
#ezexam.solution(show-number: false)[
16.
]

（5）设随机变量 $X_(i j)$（$i,j=1,2,dots,n;n>=2$）独立同分布，$E X_(i j)=2$，则行列式
$ Y=mat(delim:"|",X_(11),X_(12),dots,X_(1n);X_(21),X_(22),dots,X_(2n);dots.v,dots.v,,dots.v;X_(n 1),X_(n 2),dots,X_(n n)) $
的数学期望 $E Y=$ #fillin(len: 3em)[].
#ezexam.solution(show-number: false)[
0.
]

= 二、选择题（本题共5小题，每小题3分，满分15分）
#ezexam.counter-question.step()

（1）设 $f(x)$ 是连续函数，$F(x)$ 是 $f(x)$ 的原函数，则（　）.
#choices[当 $f(x)$ 是奇函数时，$F(x)$ 必是偶函数.][当 $f(x)$ 是偶函数时，$F(x)$ 必是奇函数.][当 $f(x)$ 是周期函数时，$F(x)$ 必是周期函数.][当 $f(x)$ 是单调增函数时，$F(x)$ 必是单调增函数.]
#ezexam.solution(show-number: false)[
A.
]

（2）设 $f(x,y)$ 连续，且 $f(x,y)=x y+integral.double_D f(u,v)dif u dif v$，其中 $D$ 是由 $y=0,y=x^2,x=1$ 所围区域，则 $f(x,y)$ 等于（　）.
#choices[$x y$.][$2x y$.][$x y+frac(1,8)$.][$x y+1$.]
#ezexam.solution(show-number: false)[
C.
]

（3）设向量 $bold(beta)$ 可由向量组 $bold(alpha)_1,bold(alpha)_2,dots,bold(alpha)_m$ 线性表示，但不能由向量组（Ⅰ）：$bold(alpha)_1,bold(alpha)_2,dots,bold(alpha)_(m-1)$ 线性表示，记向量组（Ⅱ）：$bold(alpha)_1,bold(alpha)_2,dots,bold(alpha)_(m-1),bold(beta)$，则（　）.
#choices[$bold(alpha)_m$ 不能由（Ⅰ）线性表示，也不能由（Ⅱ）线性表示.][$bold(alpha)_m$ 不能由（Ⅰ）线性表示，但可由（Ⅱ）线性表示.][$bold(alpha)_m$ 可由（Ⅰ）线性表示，也可由（Ⅱ）线性表示.][$bold(alpha)_m$ 可由（Ⅰ）线性表示，但不可由（Ⅱ）线性表示.]
#ezexam.solution(show-number: false)[
B.
]

（4）设 $A,B$ 为 $n$ 阶矩阵，且 $A$ 与 $B$ 相似，$E$ 为 $n$ 阶单位矩阵，则（　）.
#choices[$lambda E-A=lambda E-B$.][$A$ 与 $B$ 有相同的特征值和特征向量.][$A$ 与 $B$ 都相似于一个对角矩阵.][对任意常数 $t$，$t E-A$ 与 $t E-B$ 相似.]
#ezexam.solution(show-number: false)[
D.
]

（5）设随机变量 $X_i tilde mat(delim:"(",-1,0,1;frac(1,4),frac(1,2),frac(1,4))$（$i=1,2$），且满足 $P{X_1 X_2=0}=1$，则 $P{X_1=X_2}$ 等于（　）.
#choices[0.][$frac(1,4)$.][$frac(1,2)$.][1.]
#ezexam.solution(show-number: false)[
A.
]

#ezexam.question(label: n => [三、])[
（本题满分6分）

曲线 $y=frac(1,sqrt(x))$ 的切线与 $x$ 轴和 $y$ 轴围成一个图形，记切点的横坐标为 $a$.试求切线方程和这个图形的面积.当切点沿曲线趋于无穷远时，该面积的变化趋势如何？
#ezexam.solution(show-number: false)[
由 $y=frac(1,sqrt(x))$，得 $y'=-frac(1,2)x^(-frac(3,2))$，则切点 $P(a,frac(1,sqrt(a)))$ 处的切线方程为
$ y-frac(1,sqrt(a))=-frac(1,2sqrt(a^3))(x-a). quad "（2分）" $
#import "@preview/cetz:0.5.2"
#cetz.canvas({
 import cetz.draw: *
 set-style(stroke:0.6pt)
 line((-0.15,0),(3.5,0),mark:(end:">"));line((0,-0.15),(0,2.8),mark:(end:">"))
 line((0,1.5),(3,0))
 let curve=range(0,61).map(i=>{let x=0.16+i*3/60;(x,1/calc.sqrt(x))})
 line(..curve)
 line((1,0),(1,1),stroke:(dash:"dashed"));circle((1,1),radius:0.025,fill:black)
 content((3.6,0),$x$);content((0,2.9),$y$);content((-0.15,-0.12),$O$)
 content((-0.13,1.5),$R$);content((1,-0.18),$a$);content((1.1,1.22),$P$);content((3,-0.18),$Q$)
})
切线与 $x$ 轴和 $y$ 轴的交点分别为 $Q(3a,0)$ 和 $R(0,frac(3,2sqrt(a)))$. （3分）

于是，$triangle O R Q$ 的面积
$ S=frac(1,2)dot 3a dot frac(3,2sqrt(a))=frac(9,4)sqrt(a). quad "（4分）" $
当切点按 $x$ 轴正方向趋于无穷远时，有 $lim_(a -> +infinity) S=+infinity$. （5分）

当切点按 $y$ 轴正方向趋于无穷远时，有 $lim_(a -> 0^+) S=0$. （6分）
]


]

#ezexam.question(label: n => [四、])[
（本题满分7分）

计算二重积分 $integral.double_D y dif x dif y$，其中 $D$ 是由直线 $x=-2,y=0,y=2$ 以及曲线 $x=-sqrt(2y-y^2)$ 所围成的平面区域.
#ezexam.solution(show-number: false)[
*解法1* 区域 $D$ 和 $D_1$ 如图所示，有
#import "@preview/cetz:0.5.2"
#cetz.canvas({
 import cetz.draw: *
 set-style(stroke:0.6pt)
 let curve=range(0,61).map(i=>{let t=90deg+i*180deg/60;(calc.cos(t),1+calc.sin(t))})
 line((-2,0),(-2,2),(0,2),..curve,close:true,fill:luma(92%))
 line((-2.4,0),(1,0),mark:(end:">"));line((0,-0.2),(0,2.6),mark:(end:">"))
 content((1.1,0),$x$);content((0,2.7),$y$);content((0.12,-0.14),$O$)
 content((-2,-0.18),$-2$);content((0.16,2),$2$)
 content((-1.5,1),$D$);content((-0.45,1),$D_1$)
})
$ integral.double_D y dif x dif y=integral.double_(D+D_1) y dif x dif y-integral.double_(D_1) y dif x dif y, $
$ integral.double_(D+D_1) y dif x dif y=integral_(-2)^0 dif x integral_0^2 y dif y=4. quad "（2分）" $
在极坐标系下，有 $D_1={(r,theta)|0<=r<=2sin theta,frac(pi,2)<=theta<=pi}$，因此
$ integral.double_(D_1) y dif x dif y&=integral_(frac(pi,2))^pi dif theta integral_0^(2sin theta) r sin theta dot r dif r quad "（4分）" \
&=frac(8,3)integral_(frac(pi,2))^pi sin^4 theta dif theta \
&=frac(8,3times 4)integral_(frac(pi,2))^pi [1-2cos 2theta+frac(1+cos 4theta,2)]dif theta \
&=frac(pi,2). quad "（6分）" $
于是
$ integral.double_D y dif x dif y=4-frac(pi,2). quad "（7分）" $
*解法2* 如图所示，$D={(x,y)|-2<=x<=-sqrt(2y-y^2),0<=y<=2}$. （1分）
$ integral.double_D y dif x dif y&=integral_0^2 y dif y integral_(-2)^(-sqrt(2y-y^2)) dif x \
&=2integral_0^2 y dif y-integral_0^2 y sqrt(2y-y^2)dif y \
&=4-integral_0^2 y sqrt(1-(y-1)^2)dif y. quad "（3分）" $
令 $y-1=sin t$，有 $dif y=cos t dif t$，则 （4分）
$ integral_0^2 y sqrt(1-(y-1)^2)dif y&=integral_(-frac(pi,2))^(frac(pi,2)) (1+sin t)cos^2 t dif t \
&=integral_(-frac(pi,2))^(frac(pi,2)) cos^2 t dif t+integral_(-frac(pi,2))^(frac(pi,2)) cos^2 t sin t dif t \
&=integral_0^(frac(pi,2))(1+cos 2t)dif t
=frac(pi,2). quad "（6分）" $
于是
$ integral.double_D y dif x dif y=4-frac(pi,2). quad "（7分）" $
]


]

#ezexam.question(label: n => [五、])[
（本题满分6分）设生产某种产品必须投入两种要素，$x_1$ 和 $x_2$ 分别为两要素的投入量，$Q$ 为产出量，若生产函数为 $Q=2x_1^alpha x_2^beta$，其中 $alpha,beta$ 为正常数，且 $alpha+beta=1$.假设两种要素的价格分别为 $p_1$ 和 $p_2$，试问：当产出量为12时，两要素各投入多少可以使得投入总费用最小？
#ezexam.solution(show-number: false)[
需要在产出量 $2x_1^alpha x_2^beta=12$ 的条件下，求总费用 $p_1 x_1+p_2 x_2$ 的最小值.作拉格朗日函数
$ F(x_1,x_2,lambda)=p_1 x_1+p_2 x_2+lambda(12-2x_1^alpha x_2^beta). quad "（2分）" $
令
$ cases(frac(partial F,partial x_1)=p_1-2lambda alpha x_1^(alpha-1)x_2^beta=0 quad "（1）",frac(partial F,partial x_2)=p_2-2lambda beta x_1^alpha x_2^(beta-1)=0 quad "（2）",frac(partial F,partial lambda)=12-2x_1^alpha x_2^beta=0 quad "（3）"). quad "（3分）" $
由（1）、（2）得
$ frac(p_2,p_1)=frac(beta x_1,alpha x_2), quad x_1=frac(p_2 alpha,p_1 beta)x_2. $
代入（3）得
$ x_2=6(frac(p_1 beta,p_2 alpha))^alpha,quad x_1=6(frac(p_2 alpha,p_1 beta))^beta. quad "（5分）" $
因驻点唯一，且实际问题存在最小值，故上述计算结果说明，当两种生产要素的投入量分别为
$ x_1=6(frac(p_2 alpha,p_1 beta))^beta,quad x_2=6(frac(p_1 beta,p_2 alpha))^alpha $
时，投入总费用最小. （6分）
]


]

#ezexam.question(label: n => [六、])[
（本题满分6分）设有微分方程 $y'-2y=phi(x)$，其中
$ phi(x)=cases(2 quad "若" x<1,0 quad "若" x>1). $
试求在 $(-infinity,+infinity)$ 内的连续函数 $y=y(x)$，使之在 $(-infinity,1)$ 和 $(1,+infinity)$ 内都满足所给方程，且满足条件 $y(0)=0$.
#ezexam.solution(show-number: false)[
当 $x<1$ 时，微分方程为 $y'-2y=2$，其通解为
$ y&=e^(integral 2dif x)[integral 2e^(-integral 2dif x)dif x+C_1] quad "（1分）" \
&=e^(2x)[integral 2e^(-2x)dif x+C_1]=C_1 e^(2x)-1 quad (x<1). $
由 $y(0)=0$ 得 $C_1=1$，故
$ y=e^(2x)-1. quad "（3分）" $
当 $x>1$ 时，微分方程为 $y'-2y=0$，其通解为
$ y=C_2 e^(integral 2dif x)=C_2 e^(2x). quad "（4分）" $
由连续性，有
$ lim_(x->1^+) C_2 e^(2x)=lim_(x->1^-) (e^(2x)-1)=e^2-1, $
即 $C_2 e^2=e^2-1$，得 $C_2=1-e^(-2)$，故
$ y=(1-e^(-2))e^(2x). quad "（5分）" $
补充定义 $y|_(x=1)=e^2-1$，则所求连续函数为
$ y(x)=cases(e^(2x)-1 quad x<=1,(1-e^(-2))e^(2x) quad x>1). quad "（6分）" $
显然，这个函数满足全部条件.
]


]

#ezexam.question(label: n => [七、])[
（本题满分6分）设函数 $f(x)$ 连续，且 $integral_0^x t f(2x-t)dif t=frac(1,2)arctan x^2$.已知 $f(1)=1$，求 $integral_1^2 f(x)dif x$ 的值.
#ezexam.solution(show-number: false)[
令 $u=2x-t$，则 $t=2x-u$，$dif t=-dif u$， （1分）
$ integral_0^x t f(2x-t)dif t&=-integral_(2x)^x (2x-u)f(u)dif u \
&=2x integral_x^(2x) f(u)dif u-integral_x^(2x) u f(u)dif u. quad "（2分）" $
于是
$ 2x integral_x^(2x) f(u)dif u-integral_x^(2x) u f(u)dif u=frac(1,2)arctan x^2. quad "（3分）" $
两边对 $x$ 求导，得
$ 2integral_x^(2x) f(u)dif u+2x[2f(2x)-f(x)]-[2x f(2x)dot 2-x f(x)]=frac(x,1+x^4), $
即
$ 2integral_x^(2x) f(u)dif u=frac(x,1+x^4)+x f(x). quad "（5分）" $
令 $x=1$，得 $2integral_1^2 f(u)dif u=frac(1,2)+1=frac(3,2)$，故
$ integral_1^2 f(x)dif x=frac(3,4). quad "（6分）" $
]


]

#ezexam.question(label: n => [八、])[
（本题满分7分）设函数 $f(x)$ 在区间 $[0,1]$ 上连续，在 $(0,1)$ 内可导，且 $f(0)=f(1)=0$，$f(frac(1,2))=1$.

试证：（1）存在 $eta in (frac(1,2),1)$ 使 $f(eta)=eta$；

（2）对任意实数 $lambda$，必存在 $xi in (0,eta)$ 使得 $f'(xi)-lambda[f(xi)-xi]=1$.
#ezexam.solution(show-number: false)[
（1）令 $Phi(x)=f(x)-x$，则 $Phi(x)$ 在 $[0,1]$ 上连续，且
$ Phi(1)=-1<0,quad Phi(frac(1,2))=frac(1,2)>0. $
由介值定理，存在 $eta in (frac(1,2),1)$，使 $Phi(eta)=f(eta)-eta=0$，即 $f(eta)=eta$. （3分）

（2）令
$ F(x)=e^(-lambda x)Phi(x)=e^(-lambda x)[f(x)-x]. quad "（4分）" $
则 $F(x)$ 在 $[0,eta]$ 上连续，在 $(0,eta)$ 内可导，且
$ F(0)=0,quad F(eta)=e^(-lambda eta)Phi(eta)=0. $
由罗尔定理，存在 $xi in (0,eta)$，使 $F'(xi)=0$， （6分）
即
$ e^(-lambda xi){f'(xi)-lambda[f(xi)-xi]-1}=0, $
从而
$ f'(xi)-lambda[f(xi)-xi]=1. quad "（7分）" $
]


]

#ezexam.question(label: n => [九、])[
（本题满分9分）设矩阵 $A=mat(a,-1,c;5,b,3;1-c,0,-a)$，且 $|A|=-1$.又设 $A$ 的伴随矩阵 $A^*$ 有特征值 $lambda_0$，属于 $lambda_0$ 的特征向量为 $alpha=(-1,-1,1)^T$，求 $a,b,c$ 及 $lambda_0$ 的值.
#ezexam.solution(show-number: false)[
由 $A^* alpha=lambda_0 alpha$，$A A^*=|A|E=-E$， （1分）
有 $A A^* alpha=lambda_0 A alpha$，从而 $-alpha=lambda_0 A alpha$，或
$ lambda_0 mat(a,-1,c;5,b,3;1-c,0,-a)mat(-1;-1;1)=-mat(-1;-1;1). quad "（3分）" $
由此可得
$ cases(lambda_0(-a+1+c)=1 quad "（1）",lambda_0(-5-b+3)=1 quad "（2）",lambda_0(-1+c-a)=-1 quad "（3）"). quad "（4分）" $
由（1）和（3），解得 $lambda_0=1$. （5分）

将 $lambda_0=1$ 代入（2）和（1），得
$ b=-3,quad a=c. quad "（7分）" $
由 $|A|=-1$ 和 $a=c$，有
$ mat(delim:"|",a,-1,a;5,-3,3;1-a,0,-a)=a-3=-1, quad "（8分）" $
故 $a=c=2$.因此
$ a=2,b=-3,c=2,lambda_0=1. quad "（9分）" $
]


]

#ezexam.question(label: n => [十、])[
（本题满分7分）设 $A$ 为 $m times n$ 实矩阵，$E$ 为 $n$ 阶单位矩阵.已知矩阵 $B=lambda E+A^T A$，试证：当 $lambda>0$ 时，矩阵 $B$ 为正定矩阵.
#ezexam.solution(show-number: false)[
因为
$ B^T=(lambda E+A^T A)^T=lambda E+A^T A=B, quad "（2分）" $
所以 $B$ 为 $n$ 阶对称矩阵.对于任意的实 $n$ 维向量 $x$，有
$ x^T B x&=x^T (lambda E+A^T A)x \
&=lambda x^T x+x^T A^T A x \
&=lambda x^T x+(A x)^T (A x). quad "（4分）" $
当 $x!=0$ 时，有 $x^T x>0$，$(A x)^T (A x)>=0$.因此，当 $lambda>0$ 时，对任意的 $x!=0$，有
$ x^T B x=lambda x^T x+(A x)^T A x>0, $
即 $B$ 为正定矩阵. （7分）
]


]

#ezexam.question(label: n => [十一、])[
（本题满分9分）假设二维随机变量 $(X,Y)$ 在矩形 $G={(x,y)|0<=x<=2,0<=y<=1}$ 上服从均匀分布.记
$ U=cases(0 quad "若" X<=Y,1 quad "若" X>Y),quad V=cases(0 quad "若" X<=2Y,1 quad "若" X>2Y). $
（1）求 $U$ 和 $V$ 的联合分布；

（2）求 $U$ 和 $V$ 的相关系数 $r$.
#ezexam.solution(show-number: false)[
由题设可得
#import "@preview/cetz:0.5.2"
#cetz.canvas({
 import cetz.draw: *
 set-style(stroke:0.6pt)
 line((-0.2,0),(3.4,0),mark:(end:">"));line((0,-0.2),(0,2.4),mark:(end:">"))
 line((0,1),(2,1),(2,0));line((1,0),(1,1),stroke:(dash:"dashed"))
 line((-0.15,-0.15),(2.1,2.1));line((-0.15,-0.075),(3.1,1.55))
 content((3.4,-0.16),$x$);content((-0.16,2.4),$y$);content((-0.16,-0.16),$O$)
 content((1,-0.17),$1$);content((2,-0.17),$2$);content((-0.16,1),$1$)
 content((2,2.3),$x=y$);content((3.1,1.8),$x=2y$)
 content((0.7,1.55),$x<y$);content((1.9,1.4),$y<x<2y$);content((2.75,0.75),$x>2y$)
})
$ P{X<=Y}=frac(1,4),quad P{X>2Y}=frac(1,2),quad P{Y<X<=2Y}=frac(1,4). quad "（2分）" $
（1）$(U,V)$ 有四个可能值：$(0,0),(0,1),(1,0),(1,1)$.
$ P{U=0,V=0}&=P{X<=Y,X<=2Y}=P{X<=Y}=frac(1,4); \
P{U=0,V=1}&=P{X<=Y,X>2Y}=0; \
P{U=1,V=0}&=P{X>Y,X<=2Y}=P{Y<X<=2Y}=frac(1,4); \
P{U=1,V=1}&=1-(frac(1,4)+frac(1,4))=frac(1,2). quad "（5分）" $
（2）由以上可见 $U V$ 以及 $U$ 和 $V$ 的分布为
$ U V tilde mat(0,1;frac(1,2),frac(1,2));quad U tilde mat(0,1;frac(1,4),frac(3,4)),quad V tilde mat(0,1;frac(1,2),frac(1,2)). quad "（7分）" $
于是，有
$ E U=frac(3,4),quad D U=frac(3,16);quad E V=frac(1,2),quad D V=frac(1,4);quad E(U V)=frac(1,2); $
$ op("COV")(U,V)=E(U V)-E U dot E V=frac(1,8), $
$ r=frac(op("COV")(U,V),sqrt(D U dot D V))=frac(1,sqrt(3)). quad "（9分）" $
]


]

#ezexam.question(label: n => [十二、])[
（本题满分7分）设 $X_1,X_2,dots,X_9$ 是来自正态总体 $X$ 的简单随机样本，
$ Y_1=frac(1,6)(X_1+dots+X_6),quad Y_2=frac(1,3)(X_7+X_8+X_9), $
$ S^2=frac(1,2)sum_(i=7)^9(X_i-Y_2)^2,quad Z=frac(sqrt(2)(Y_1-Y_2),S), $
证明统计量 $Z$ 服从自由度为2的 $t$ 分布.
#ezexam.solution(show-number: false)[
记 $D X=sigma^2$（未知）.易见 $E Y_1=E Y_2$，$D Y_1=sigma^2/6$，$D Y_2=sigma^2/3$. （1分）

由于 $Y_1$ 和 $Y_2$ 独立，可见 $E(Y_1-Y_2)=0$，
$ D(Y_1-Y_2)=frac(sigma^2,6)+frac(sigma^2,3)=frac(sigma^2,2). quad "（2分）" $
从而
$ U=frac(Y_1-Y_2,sigma/sqrt(2)) tilde N(0,1). quad "（3分）" $
由正态总体样本方差的性质，知
$ chi^2=frac(2S^2,sigma^2) $
服从自由度为2的 $chi^2$ 分布. （4分）

由于 $Y_1$ 与 $Y_2$，$Y_1$ 与 $S^2$ 独立，以及 $Y_2$ 与 $S^2$ 独立，可见 $Y_1-Y_2$ 与 $S^2$ 独立. （5分）

于是，由服从 $t$ 分布随机变量的结构，知
$ Z=frac(sqrt(2)(Y_1-Y_2),S)=frac(U,sqrt(chi^2/2)) $
服从自由度为2的 $t$ 分布. （7分）
]

]
