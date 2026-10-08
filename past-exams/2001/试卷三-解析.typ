#import "../template.typ": exam
#show: exam.with(year: 2001, subject: "三", title: "2001年全国硕士研究生入学统一考试")
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

（2）某公司每年的工资总额在比上一年增加20%的基础上再追加2百万元.若以 $W_t$ 表示第 $t$ 年的工资总额（单位：百万元），则 $W_t$ 满足的差分方程是#h(3em).
#ezexam.solution(show-number: false)[
$W_t=1.2W_(t-1)+2$.
]

（3）设矩阵 $A=mat(k,1,1,1;1,k,1,1;1,1,k,1;1,1,1,k)$，且秩 $(A)=3$，则 $k=$#h(3em).
#ezexam.solution(show-number: false)[
$-3$.
]

（4）设随机变量 $X$ 和 $Y$ 的数学期望分别为 $-2$ 和2，方差分别为1和4，而相关系数为 $-0.5$，则根据切比雪夫不等式 $P{|X+Y|>=6}<=$#h(3em).
#ezexam.solution(show-number: false)[
$1/12$.
]

（5）设总体 $X$ 服从正态分布 $N(0,2^2)$，而 $X_1,X_2,dots,X_15$ 是来自总体 $X$ 的简单随机样本，则随机变量
$ Y=(X_1^2+dots+X_10^2)/(2(X_11^2+dots+X_15^2)) $
服从#h(2em)分布，参数为#h(3em).
#ezexam.solution(show-number: false)[
$F$；$(10,5)$.
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

（4）设 $A$ 是 $n$ 阶矩阵，$alpha$ 是 $n$ 维列向量.若秩 $mat(A,alpha;alpha^T,0)=$ 秩 $(A)$，则线性方程组（　）.
#choices[$A X=alpha$ 必有无穷多解.][$A X=alpha$ 必有唯一解.][$mat(A,alpha;alpha^T,0)mat(X;y)=0$ 仅有零解.][$mat(A,alpha;alpha^T,0)mat(X;y)=0$ 必有非零解.]
#ezexam.solution(show-number: false)[
D.
]

（5）将一枚硬币重复掷 $n$ 次，以 $X$ 和 $Y$ 分别表示正面向上和反面向上的次数，则 $X$ 和 $Y$ 的相关系数等于（　）.
#choices[$-1$.][$0$.][$1/2$.][$1$.]
#ezexam.solution(show-number: false)[
A.
]

#ezexam.question(label: n => [三、])[
（本题满分5分）设 $u=f(x,y,z)$ 有连续的一阶偏导数，又函数 $y=y(x)$ 及 $z=z(x)$ 分别由下列两式确定：
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
（本题满分7分）已知抛物线 $y=p x^2+q x$（其中 $p<0,q>0$）在第一象限内与直线 $x+y=5$ 相切，且此抛物线与 $x$ 轴所围成的平面图形的面积为 $S$.（1）问 $p$ 和 $q$ 为何值时，$S$ 达到最大值？（2）求出此最大值.
#ezexam.solution(show-number: false)[
*解* 依题意知，抛物线如图所示，求得它与 $x$ 轴交点的横坐标为：$x_1=0$，$x_2=-q/p$.
#import "@preview/cetz:0.5.2"
#cetz.canvas({
 import cetz.draw: *
 let pts=range(0,76).map(i=>{let x=i*3.75/75;(x*.6,(-.8*x*x+3*x)*.6)})
 line(..pts,close:true,fill:rgb("eeeeee"))
 line((-.7,0),(3.65,0),mark:(end:">"));line((0,-.6),(0,3.55),mark:(end:">"))
 line((-.1,3.1),(3.4,-.4));line(..range(0,86).map(i=>{let x=-.12+i*4.05/85;(x*.6,(-.8*x*x+3*x)*.6)}))
 content((3.7,-.1),$x$);content((-.15,3.6),$y$);content((-.16,-.15),$O$);content((-.18,3),$5$);content((3,.18),$5$);content((2.3,-.45),$-q/p$);content((1.1,.7),$S$);content((1.5,2.65),$x+y=5$)
})
面积
$ S=integral_0^(-q/p) (p x^2+q x) dif x=lr((p/3 x^3+q/2 x^2)|)_0^(-q/p)=q^3/(6p^2). quad (*) $
因直线 $x+y=5$ 与抛物线 $y=p x^2+q x$ 相切，故它们有唯一公共点.由方程组
$ cases(x+y=5,y=p x^2+q x), $
得 $p x^2+(q+1)x-5=0$，其判别式必等于零，即
$ Delta=(q+1)^2+20p=0, quad p=-1/20 (1+q)^2. $
将 $p$ 代入（\*）式得 $S(q)=(200q^3)/(3(q+1)^4)$.

令 $S'(q)=(200q^2(3-q))/(3(q+1)^5)=0$，得驻点 $q=3$.当 $0<q<3$ 时，$S'(q)>0$；当 $q>3$ 时，$S'(q)<0$.于是，当 $q=3$ 时，$S(q)$ 取极大值，即最大值.

此时，$p=-4/5$，从而最大值 $S=225/32$.
]


]

#ezexam.question(label: n => [七、])[
（本题满分6分）设 $f(x)$ 在 $[0,1]$ 上连续，在 $(0,1)$ 内可导，且满足
$ f(1)=k integral_0^(1/k) x e^(1-x) f(x) dif x quad (k>1), $
证明至少存在一点 $xi in (0,1)$，使得 $f'(xi)=(1-xi^(-1))f(xi)$.
#ezexam.solution(show-number: false)[
*证* 由 $f(1)=k integral_0^(1/k) x e^(1-x) f(x) dif x$ 及积分中值定理，知至少存在一点 $xi_1 in [0,1/k] subset [0,1)$，使得
$ f(1)=k integral_0^(1/k) x e^(1-x) f(x) dif x=xi_1 e^(1-xi_1) f(xi_1). $
在 $[xi_1,1]$ 上，令 $phi(x)=x e^(1-x) f(x)$.那么，$phi(x)$ 在 $[xi_1,1]$ 上连续，在 $(xi_1,1)$ 内可导，且 $phi(xi_1)=f(1)=phi(1)$.

由罗尔定理知，至少存在一点 $xi in (xi_1,1) subset (0,1)$，使得
$ phi'(xi)=e^(1-xi) [f(xi)-xi f(xi)+xi f'(xi)]=0, $
即 $f'(xi)=(1-xi^(-1))f(xi)$.
]


]

#ezexam.question(label: n => [八、])[
（本题满分7分）已知 $f_n (x)$ 满足
$ f'_n (x)=f_n (x)+x^(n-1)e^x quad (n #text[为正整数]), $
且 $f_n (1)=e/n$，求函数项级数 $sum_(n=1)^infinity f_n (x)$ 之和.
#ezexam.solution(show-number: false)[
*解* 由已知条件可见，$f'_n (x)-f_n (x)=x^(n-1)e^x$，其通解为
$ f_n (x)=e^(integral dif x)(integral x^(n-1)e^x e^(-integral dif x) dif x+C)=e^x (x^n/n+C). $
由条件 $f_n (1)=e/n$，得 $C=0$，故 $f_n (x)=(x^n e^x)/n$.

从而
$ sum_(n=1)^infinity f_n (x)=sum_(n=1)^infinity (x^n e^x)/n=e^x sum_(n=1)^infinity x^n/n. $
记 $s(x)=sum_(n=1)^infinity x^n/n$，其收敛域为 $[-1,1)$，当 $x in (-1,1)$ 时，有
$ s'(x)=sum_(n=1)^infinity x^(n-1)=1/(1-x), $
故 $s(x)=integral_0^x 1/(1-t) dif t=-ln(1-x)$.

当 $x=-1$ 时，$sum_(n=1)^infinity f_n (x)=-e^(-1) ln 2$.

于是，当 $-1<=x<1$ 时，有
$ sum_(n=1)^infinity f_n (x)=-e^x ln(1-x). $
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
（本题满分8分）设 $A$ 为 $n$ 阶实对称矩阵，秩 $(A)=n$，$A_(i j)$ 是 $A=(a_(i j))_(n times n)$ 中元素 $a_(i j)$ 的代数余子式（$i,j=1,2,dots,n$），二次型
$ f(x_1,x_2,dots,x_n)=sum_(i=1)^n sum_(j=1)^n A_(i j)/|A| x_i x_j. $
（1）记 $X=(x_1,x_2,dots,x_n)^T$，把 $f(x_1,x_2,dots,x_n)$ 写成矩阵形式，并证明二次型 $f(X)$ 的矩阵为 $A^(-1)$；

（2）二次型 $g(X)=X^T A X$ 与 $f(X)$ 的规范形是否相同？说明理由.
#ezexam.solution(show-number: false)[
*解法1* （1）二次型 $f(x_1,x_2,dots,x_n)$ 的矩阵形式为
$ f(X)=(x_1,x_2,dots,x_n)1/|A| mat(A_11,A_21,dots,A_(n 1);A_12,A_22,dots,A_(n 2);dots.v,dots.v,,dots.v;A_(1n),A_(2n),dots,A_(n n))mat(x_1;x_2;dots.v;x_n). $
因秩 $(A)=n$，故 $A$ 可逆，且 $A^(-1)=1/|A| A^*$.

从而 $(A^(-1))^T=(A^T)^(-1)=A^(-1)$.

故 $A^(-1)$ 也是实对称矩阵，因此二次型 $f(X)$ 的矩阵为 $A^(-1)$.

（2）因为
$ (A^(-1))^T A A^(-1)=(A^T)^(-1)E=A^(-1), $
所以 $A$ 与 $A^(-1)$ 合同，于是 $g(X)=X^T A X$ 与 $f(X)$ 有相同的规范形.

*解法2* （1）同解法1.

（2）对二次型 $g(X)=X^T A X$ 作可逆线性变换 $X=A^(-1)Y$，其中 $Y=(y_1,y_2,dots,y_n)^T$，
$ g(X)=X^T A X &=(A^(-1)Y)^T A(A^(-1)Y) \
&=Y^T (A^(-1))^T A A^(-1)Y \
&=Y^T (A^T)^(-1)A A^(-1)Y \
&=Y^T A^(-1)Y. $
由此得知 $A$ 与 $A^(-1)$ 合同.于是 $f(X)$ 与 $g(X)$ 必有相同的规范形.
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
（本题满分8分）设随机变量 $X$ 和 $Y$ 的联合分布是正方形 $G={(x,y):1<=x<=3,1<=y<=3}$ 上的均匀分布，试求随机变量 $U=|X-Y|$ 的概率密度 $p(u)$.
#ezexam.solution(show-number: false)[
*解* 由条件知 $X$ 和 $Y$ 的联合密度为
$ f(x,y)=cases(1/4 & #text[若] 1<=x<=3,1<=y<=3,0 & #text[其他]). $
#import "@preview/cetz:0.5.2"
#cetz.canvas({
 import cetz.draw: *
 line((1,1),(2.35,1),(3,1.65),(3,3),(1.65,3),(1,2.35),close:true,fill:rgb("eeeeee"))
 rect((1,1),(3,3));line((-.6,0),(4.2,0),mark:(end:">"));line((0,-.5),(0,3.7),mark:(end:">"))
 line((.75,2.1),(1.95,3.3));line((2.05,.7),(3.35,2))
 line((0,1),(1,1),stroke:(dash:"dashed"));line((0,3),(1,3),stroke:(dash:"dashed"));line((1,0),(1,1),stroke:(dash:"dashed"));line((3,0),(3,1),stroke:(dash:"dashed"))
 for v in (1,2,3) {content((v,-.2),[#v]);content((-.18,v),[#v])}
 content((-.17,-.17),$O$);content((4.25,-.12),$x$);content((-.12,3.8),$y$)
 content((2.7,3.42),$y-x=u$);content((4,1.9),$y-x=-u$);content((2,2.05),$|x-y|<=u$)
})
以 $F(u)=P{U<=u} (-infinity<u<infinity)$ 表示随机变量 $U$ 的分布函数.显然，当 $u<=0$ 时，$F(u)=0$；当 $u>=2$ 时，$F(u)=1$.

设 $0<u<2$，则
$ F(u)&=integral.double_(|x-y|<=u) f(x,y) dif x dif y \
&=integral.double_(|x-y|<=u) 1/4 dif x dif y \
&=1/4 [4-(2-u)^2]=1-1/4 (2-u)^2. $
于是，随机变量的密度为
$ p(u)=cases(1/2 (2-u) & #text[若] 0<u<2,0 & #text[其他]). $
]

]
