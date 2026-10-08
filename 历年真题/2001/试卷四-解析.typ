#import "../template.typ": exam
#show: exam.with(year: 2001, subject: "四", title: "2001年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#ezexam.answer-state.update(true)


= 一、填空题（本题共5小题，每小题3分，满分15分）
#ezexam.counter-question.step()

（1）设生产函数为 $Q=A L^alpha K^beta$，其中 $Q$ 是产出量，$L$ 是劳动投入量，$K$ 是资本投入量，而 $A,alpha,beta$ 均为大于零的参数，则当 $Q=1$ 时 $K$ 关于 $L$ 的弹性为#h(3em).
#ezexam.solution(show-number: false)[
$-alpha/beta$.
]

（2）设 $z=e^(-x)-f(x-2y)$，且当 $y=0$ 时，$z=x^2$，则 $(partial z)/(partial x)=$#h(3em).
#ezexam.solution(show-number: false)[
$2(x-2y)-e^(-x)+e^(2y-x)$.
]

（3）设行列式 $D=mat(delim:"|",3,0,4,0;2,2,2,2;0,-7,0,0;5,3,-2,2)$，则第四行各元素余子式之和的值为#h(3em).
#ezexam.solution(show-number: false)[
$-28$.
]

（4）设矩阵 $A=mat(k,1,1,1;1,k,1,1;1,1,k,1;1,1,1,k)$，且秩 $(A)=3$，则 $k=$#h(3em).
#ezexam.solution(show-number: false)[
$-3$.
]

（5）设随机变量 $X$ 和 $Y$ 的数学期望都是2，方差分别为1和4，而相关系数为0.5，则根据切比雪夫不等式 $P{|X-Y|>=6}<=$#h(3em).
#ezexam.solution(show-number: false)[
$1/12$.
]

= 二、选择题（本题共5小题，每小题3分，满分15分）
#ezexam.counter-question.step()

（1）设 $f(x)$ 的导数在 $x=a$ 处连续，又 $lim_(x->a) f'(x)/(x-a)=-1$，则（　）.
#choices[$x=a$ 是 $f(x)$ 的极小值点.][$x=a$ 是 $f(x)$ 的极大值点.][$(a,f(a))$ 是曲线 $y=f(x)$ 的拐点.][$x=a$ 不是 $f(x)$ 的极值点，$(a,f(a))$ 也不是曲线 $y=f(x)$ 的拐点.]
#ezexam.solution(show-number: false)[
B.
]

（2）设 $g(x)=integral_0^x f(u) dif u$，其中
$ f(x)=cases(1/2 (x^2+1) & #text[若] 0<=x<1,1/3 (x-1) & #text[若] 1<=x<=2), $
则 $g(x)$ 在区间 $(0,2)$ 内（　）.
#choices[无界.][递减.][不连续.][连续.]
#ezexam.solution(show-number: false)[
D.
]

（3）设
$ A=mat(a_11,a_12,a_13,a_14;a_21,a_22,a_23,a_24;a_31,a_32,a_33,a_34;a_41,a_42,a_43,a_44), quad B=mat(a_14,a_13,a_12,a_11;a_24,a_23,a_22,a_21;a_34,a_33,a_32,a_31;a_44,a_43,a_42,a_41), \
P_1=mat(0,0,0,1;0,1,0,0;0,0,1,0;1,0,0,0), quad P_2=mat(1,0,0,0;0,0,1,0;0,1,0,0;0,0,0,1), $
其中 $A$ 可逆，则 $B^(-1)$ 等于（　）.
#choices[$A^(-1) P_1 P_2$.][$P_1 A^(-1) P_2$.][$P_1 P_2 A^(-1)$.][$P_2 A^(-1) P_1$.]
#ezexam.solution(show-number: false)[
C.
]

（4）对于任意二事件 $A$ 和 $B$，与 $A union B=B$ 不等价的是（　）.
#choices[$A subset B$.][$overline(B) subset overline(A)$.][$A overline(B)=emptyset$.][$overline(A)B=emptyset$.]
#ezexam.solution(show-number: false)[
D.
]

（5）将一枚硬币重复掷 $n$ 次，以 $X$ 和 $Y$ 分别表示正面向上和反面向上的次数，则 $X$ 和 $Y$ 的相关系数等于（　）.
#choices[$-1$.][$0$.][$1/2$.][$1$.]
#ezexam.solution(show-number: false)[
A.
]

#ezexam.question(label: n => [三、])[
（本题满分6分）设 $u=f(x,y,z)$ 有连续的一阶偏导数，又函数 $y=y(x)$ 及 $z=z(x)$ 分别由下列两式确定：
$ e^(x y)-x y=2 quad #text[和] quad e^x=integral_0^(x-z) (sin t)/t dif t, $
求 $(dif u)/(dif x)$.
#ezexam.solution(show-number: false)[
*解*
$ (dif u)/(dif x)=(partial f)/(partial x)+(partial f)/(partial y)(dif y)/(dif x)+(partial f)/(partial z)(dif z)/(dif x). quad (*) $
由 $e^(x y)-x y=2$ 两边对 $x$ 求导，得
$ e^(x y)(y+x (dif y)/(dif x))-(y+x (dif y)/(dif x))=0, $
即 $(dif y)/(dif x)=-y/x$.

又由 $e^x=integral_0^(x-z) (sin t)/t dif t$ 两边对 $x$ 求导，得
$ e^x=(sin(x-z))/(x-z)dot (1-(dif z)/(dif x)), $
即 $(dif z)/(dif x)=1-(e^x (x-z))/(sin(x-z))$；将其代入（\*）式，得
$ (dif u)/(dif x)=(partial f)/(partial x)-y/x (partial f)/(partial y)+[1-(e^x (x-z))/(sin(x-z))](partial f)/(partial z). $
]


]

#ezexam.question(label: n => [四、])[
（本题满分6分）已知 $f(x)$ 在 $(-infinity,+infinity)$ 内可导，且 $lim_(x->infinity) f'(x)=e$，
$ lim_(x->infinity) ((x+c)/(x-c))^x=lim_(x->infinity) [f(x)-f(x-1)], $
求 $c$ 的值.
#ezexam.solution(show-number: false)[
*解* 由条件易见 $c != 0$.
$ lim_(x->infinity) ((x+c)/(x-c))^x=lim_(x->infinity) [(1+(2c)/(x-c))^((x-c)/(2c))]^((2c x)/(x-c))=e^(2c). $
由拉格朗日定理，有 $f(x)-f(x-1)=f'(xi)dot 1$，其中 $xi$ 介于 $x-1$ 与 $x$ 之间，那么
$ lim_(x->infinity) [f(x)-f(x-1)]=lim_(x->infinity) f'(xi)=e. $
于是，$e^(2c)=e$，故 $c=1/2$.
]


]

#ezexam.question(label: n => [五、])[
（本题满分6分）求二重积分 $integral.double_D y[1+x e^(1/2 (x^2+y^2))] dif x dif y$ 的值，其中 $D$ 是由直线 $y=x,y=-1$ 及 $x=1$ 围成的平面区域.
#ezexam.solution(show-number: false)[
*解* 积分区域 $D$ 如图.
#import "@preview/cetz:0.5.2"
#cetz.canvas({
 import cetz.draw: *
 line((-1,-1),(1,-1),(1,1),close:true,fill:rgb("eeeeee"))
 line((-1.6,0),(1.7,0),mark:(end:">"));line((0,-1.5),(0,1.6),mark:(end:">"))
 line((-1.3,-1.3),(1.35,1.35));content((1.55,1.35),$y=x$)
 content((1.8,0),$x$);content((0,1.75),$y$);content((-.12,.15),$O$)
 content((-.95,.15),$-1$);content((1.12,-.15),$1$);content((-.13,1),$1$);content((.17,-1.14),$-1$);content((.63,-.6),$D$)
})
$ integral.double_D y[1+x e^(1/2 (x^2+y^2))] dif x dif y=integral.double_D y dif x dif y+integral.double_D x y e^(1/2 (x^2+y^2)) dif x dif y, $
其中
$ integral.double_D y dif x dif y &= integral_(-1)^1 dif y integral_y^1 y dif x=integral_(-1)^1 y(1-y) dif y=-2/3; \
integral.double_D x y e^(1/2 (x^2+y^2)) dif x dif y &= integral_(-1)^1 y dif y integral_y^1 x e^(1/2 (x^2+y^2)) dif x \
&= integral_(-1)^1 y[e^(1/2 (1+y^2))-e^(y^2)] dif y=0. $
于是
$ integral.double_D y[1+x e^(1/2 (x^2+y^2))] dif x dif y=-2/3. $
]


]

#ezexam.question(label: n => [六、])[
（本题满分7分）某商品进价为 $a$（元/件），根据以往经验，当销售价为 $b$（元/件）时，销售量为 $c$ 件（$a,b,c$ 均为正常数，且 $b>=4/3 a$），市场调查表明，销售价每下降10%，销售量可增加40%.现决定一次性降价.试问，当销售价定为多少时，可获得最大利润？并求出最大利润.
#ezexam.solution(show-number: false)[
*解* 设 $p$ 表示降价后的销售价，$x$ 为增加的销售量，$L(x)$ 为总利润，那么
$ x/(b-p)=(0.4c)/(0.1b), $
则 $p=b-b/(4c)x$，从而 $L(x)=(b-b/(4c)x-a)(c+x)$.

对 $x$ 求导，得 $L'(x)=-b/(2c)x+3/4 b-a$.

令 $L'(x)=0$，得唯一驻点 $x_0=((3b-4a)c)/(2b)$.

由问题的实际意义或 $L''(x_0)=-b/(2c)<0$ 可知，$x_0$ 为极大值点，也是最大值点，故定价为
$ p=b-(3/8 b-1/2 a)=5/8 b+1/2 a #text[（元）] $
时，得最大利润
$ L(x_0)=c/(16b)(5b-4a)^2 #text[（元）]. $
]


]

#ezexam.question(label: n => [七、])[
（本题满分6分）设 $f(x)$ 在区间 $[0,1]$ 上连续，在 $(0,1)$ 内可导，且满足
$ f(1)=3integral_0^(1/3) e^(1-x^2) f(x) dif x, $
证明存在 $xi in (0,1)$，使得 $f'(xi)=2xi f(xi)$.
#ezexam.solution(show-number: false)[
*证* 由积分中值定理，得
$ f(1)=e^(1-xi_1^2) f(xi_1), quad xi_1 in [0,1/3]. $
令 $F(x)=e^(1-x^2) f(x)$，则 $F(x)$ 在 $[xi_1,1]$ 上连续，在 $(xi_1,1)$ 内可导，且
$ F(1)=f(1)=e^(1-xi_1^2) f(xi_1)=F(xi_1). $
由罗尔定理，在 $(xi_1,1)$ 内至少有一点 $xi$，使得
$ F'(xi)=e^(1-xi^2) [f'(xi)-2xi f(xi)]=0. $
于是 $f'(xi)=2xi f(xi)$，$xi in (xi_1,1) subset (0,1)$.
]


]

#ezexam.question(label: n => [八、])[
（本题满分6分）设函数 $f(x)$ 在 $(0,+infinity)$ 内连续，$f(1)=5/2$，且对所有 $x,t in (0,+infinity)$，满足条件
$ integral_1^(x t) f(u) dif u=t integral_1^x f(u) dif u+x integral_1^t f(u) dif u, $
求 $f(x)$.
#ezexam.solution(show-number: false)[
*解* 由题意可知，等式的每一项都是 $x$ 的可导函数.于是等式两边对 $x$ 求导，得
$ t f(x t)=t f(x)+integral_1^t f(u) dif u. quad (1) $
在（1）式中，令 $x=1$，由 $f(1)=5/2$，得
$ t f(t)=5/2 t+integral_1^t f(u) dif u, quad (2) $
则 $f(t)$ 是 $(0,+infinity)$ 内的可导函数.（2）式两边对 $t$ 求导，得
$ f(t)+t f'(t)=5/2+f(t), $
即 $f'(t)=5/(2t)$.

上式两边求积分，得 $f(t)=5/2 ln t+c$.

由 $f(1)=5/2$，得 $c=5/2$.故 $f(x)=5/2(ln x+1)$.
]


]

#ezexam.question(label: n => [九、])[
（本题满分9分）设矩阵 $A=mat(1,1,a;1,a,1;a,1,1)$，$beta=mat(1;1;-2)$，已知线性方程组 $A X=beta$ 有解但不唯一，试求（1）$a$ 的值；（2）正交矩阵 $Q$，使 $Q^T A Q$ 为对角矩阵.
#ezexam.solution(show-number: false)[
*解法1* （1）对线性方程组 $A X=beta$ 的增广矩阵作行的初等变换，有
$ (A beta)=mat(augment:#3,1,1,a,1;1,a,1,1;a,1,1,-2) -> mat(augment:#3,1,1,a,1;0,a-1,1-a,0;0,0,(a-1)(a+2),a+2). $
因为方程组 $A X=beta$ 有解但不唯一，所以秩 $(A)=$ 秩 $(A beta)<3$，故 $a=-2$.

（2）由（1），有 $A=mat(1,1,-2;1,-2,1;-2,1,1)$.

$A$ 的特征多项式 $|lambda E-A|=lambda (lambda-3)(lambda+3)$，故 $A$ 的特征值为 $lambda_1=3,lambda_2=-3,lambda_3=0$.对应的特征向量依次是
$ alpha_1=(1,0,-1)^T, quad alpha_2=(1,-2,1)^T, quad alpha_3=(1,1,1)^T. $
将 $alpha_1,alpha_2,alpha_3$ 单位化，得
$ beta_1=(1/sqrt(2),0,-1/sqrt(2))^T, quad beta_2=(1/sqrt(6),-2/sqrt(6),1/sqrt(6))^T, quad beta_3=(1/sqrt(3),1/sqrt(3),1/sqrt(3))^T. $
令
$ Q=mat(1/sqrt(2),1/sqrt(6),1/sqrt(3);0,-2/sqrt(6),1/sqrt(3);-1/sqrt(2),1/sqrt(6),1/sqrt(3)), $
则有 $Q^T A Q=mat(3,0,0;0,-3,0;0,0,0)$.

*解法2* （1）因为线性方程组 $A X=beta$ 有解但不唯一，所以
$ |A|=mat(delim:"|",1,1,a;1,a,1;a,1,1)=-(a-1)^2(a+2)=0. $
当 $a=1$ 时，秩 $(A)$ 不等于秩 $(A beta)$，此时方程组无解；当 $a=-2$ 时，秩 $(A)$ 等于秩 $(A beta)$，此时方程组的解存在但不唯一.于是，$a=-2$.

（2）同解法1.
]


]

#ezexam.question(label: n => [十、])[
（本题满分8分）设 $alpha_i=(a_(i 1),a_(i 2),dots,a_(i n))^T (i=1,2,dots,r;r<n)$ 是 $n$ 维实向量，且 $alpha_1,alpha_2,dots,alpha_r$ 线性无关.已知 $beta=(b_1,b_2,dots,b_n)^T$ 是线性方程组
$ cases(a_11 x_1+a_12 x_2+dots+a_(1n) x_n=0,a_21 x_1+a_22 x_2+dots+a_(2n) x_n=0,dots quad dots quad dots quad dots,a_(r 1)x_1+a_(r 2)x_2+dots+a_(r n)x_n=0) $
的非零解向量.试判断向量组 $alpha_1,alpha_2,dots,alpha_r,beta$ 的线性相关性.
#ezexam.solution(show-number: false)[
*解* 设有一组数 $k_1,k_2,dots,k_r,k$，使得
$ k_1 alpha_1+k_2 alpha_2+dots+k_r alpha_r+k beta=0 quad (*) $
成立.因为 $beta=(b_1,b_2,dots,b_n)^T$ 是线性方程组
$ cases(a_11 x_1+a_12 x_2+dots+a_(1n)x_n=0,a_21 x_1+a_22 x_2+dots+a_(2n)x_n=0,dots quad dots quad dots quad dots,a_(r 1)x_1+a_(r 2)x_2+dots+a_(r n)x_n=0) $
的解，且 $beta != 0$，故有 $alpha_i^T beta=0 (i=1,2,dots,r)$，即 $beta^T alpha_i=0 (i=1,2,dots,r)$，于是，由
$ k_1 beta^T alpha_1+k_2 beta^T alpha_2+dots+k_r beta^T alpha_r+k beta^T beta=0, $
得 $k beta^T beta=0$.但 $beta^T beta != 0$，故 $k=0$.

从而（\*）式为 $k_1 alpha_1+k_2 alpha_2+dots+k_r alpha_r=0$.由于向量组 $alpha_1,alpha_2,dots,alpha_r$ 线性无关，所以有 $k_1=k_2=dots=k_r=0$.

因此，向量组 $alpha_1,alpha_2,dots,alpha_r,beta$ 线性无关.
]


]

#ezexam.question(label: n => [十一、])[
（本题满分8分）一生产线生产的产品成箱包装，每箱的重量是随机的.假设每箱平均重50千克，标准差为5千克.若用最大载重量为5吨的汽车承运，试利用中心极限定理说明每辆车最多可以装多少箱，才能保障不超载的概率大于0.977.（$Phi(2)=0.977$，其中 $Phi(x)$ 是标准正态分布函数.）
#ezexam.solution(show-number: false)[
*解* 设 $X_i (i=1,2,dots,n)$ 是装运的第 $i$ 箱的重量（单位：千克），$n$ 是所求箱数.由条件可以把 $X_1,X_2,dots,X_n$ 视为独立同分布随机变量，而 $n$ 箱的总重量
$ T_n=X_1+X_2+dots+X_n $
是独立同分布随机变量之和.

由条件知 $E X_i=50,sqrt(D X_i)=5$；$E T_n=50n,sqrt(D T_n)=5sqrt(n)$（单位：千克）.

根据列维—林德伯格中心极限定理，$T_n$ 近似服从正态分布 $N(50n,25n)$.

箱数 $n$ 决定于条件
$ P{T_n<=5000} &= P{(T_n-50n)/(5sqrt(n))<=(5000-50n)/(5sqrt(n))} \
&approx Phi((1000-10n)/sqrt(n))>0.977=Phi(2). $
由此可见 $(1000-10n)/sqrt(n)>2$，从而 $n<98.0199$，即最多可以装98箱.
]


]

#ezexam.question(label: n => [十二、])[
（本题满分8分）设随机变量 $X$ 和 $Y$ 的联合分布在以点 $(0,1),(1,0),(1,1)$ 为顶点的三角形区域上服从均匀分布，试求随机变量 $U=X+Y$ 的方差.
#ezexam.solution(show-number: false)[
*解法1* 三角形区域为 $G={(x,y):0<=x<=1,0<=y<=1,x+y>=1}$；随机变量 $X$ 和 $Y$ 的联合密度为：
$ f(x,y)=cases(2 & #text[若] (x,y) in G,0 & #text[若] (x,y) in.not G). $
以 $f_1(x)$ 表示 $X$ 的概率密度，则当 $x<=0$ 或 $x>=1$ 时，$f_1(x)=0$；当 $0<x<1$ 时，有
$ f_1(x)=integral_(-infinity)^infinity f(x,y) dif y=integral_(1-x)^1 2dif y=2x. $
因此
$ E X=integral_0^1 2x^2 dif x=2/3; quad E X^2=integral_0^1 2x^3 dif x=1/2; \
D X=E X^2-(E X)^2=1/2-4/9=1/18. $
同理可得 $E Y=2/3$；$D Y=1/18$.

现在求 $X$ 和 $Y$ 的协方差.
$ E X Y=integral.double_G 2x y dif x dif y=2integral_0^1 x dif x integral_(1-x)^1 y dif y=5/12; \
op("cov")(X,Y)=E X Y-E X dot E Y=5/12-4/9=-1/36. $
于是
$ D U=D(X+Y)=D X+D Y+2op("cov")(X,Y)=1/18+1/18-2/36=1/18. $
*解法2* 三角形区域为 $G={(x,y):0<=x<=1,0<=y<=1,x+y>=1}$；随机变量 $X$ 和 $Y$ 的联合密度为：
$ f(x,y)=cases(2 & #text[若] (x,y) in G,0 & #text[若] (x,y) in.not G). $
以 $f(u)$ 表示 $U=X+Y$ 的概率密度.当 $u<1$ 或 $u>2$ 时，显然 $f(u)=0$.

设 $1<=u<=2$，当 $0<=x<=1$ 且 $0<=u-x<=1$ 时，$f(x,u-x)=2$，否则 $f(x,u-x)=0$.由随机变量之和的概率密度公式，有
$ f(u)=integral_(-infinity)^infinity f(x,u-x) dif x=integral_(u-1)^1 2dif x=2(2-u). $
因此
$ E(X+Y)=E U &= integral_(-infinity)^infinity u f(u) dif u=2integral_1^2 u(2-u) dif u=4/3; \
E(X+Y)^2=E U^2 &= integral_(-infinity)^infinity u^2 f(u) dif u=2integral_1^2 u^2(2-u) dif u=11/6; \
D U=D(X+Y) &= E(X+Y)^2-[E(X+Y)]^2 \
&=11/6-16/9=1/18. $
]

]
