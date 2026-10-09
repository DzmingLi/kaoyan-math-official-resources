#import "../template.typ": exam
#show: exam.with(year: 2008, subject: "四", title: "2008年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#ezexam.answer-state.update(true)


= 一、选择题：1—8小题，每小题4分，共32分. 在每小题给出的四个选项中，只有一项符合题目要求，把所选项前的字母填在题后的括号内.

#ezexam.question[
设 $0<a<b$，则 $lim_(n->infinity)(a^(-n)+b^(-n))^(1/n)=$（　）.
#choices([$a$], [$a^(-1)$], [$b$], [$b^(-1)$])
#ezexam.solution(show-number: false)[
B.
]
]

#ezexam.question[
设函数 $f(x)$ 在区间 $[-1,1]$ 上连续，则 $x=0$ 是函数 $g(x)=(integral_0^x f(t)dif t)/x$ 的（　）.
#choices([跳跃间断点], [可去间断点], [无穷间断点], [振荡间断点])
#ezexam.solution(show-number: false)[
B.
]
]

#ezexam.question[
设 $f(x)$ 是连续的奇函数，$g(x)$ 是连续的偶函数，区域 $D={(x,y)bar 0<=x<=1,-sqrt(x)<=y<=sqrt(x)}$，则以下结论正确的是（　）.
#choices([$integral.double_D f(y)g(x)dif x dif y=0$], [$integral.double_D f(x)g(y)dif x dif y=0$], [$integral.double_D [f(x)+g(y)]dif x dif y=0$], [$integral.double_D [f(y)+g(x)]dif x dif y=0$])
#ezexam.solution(show-number: false)[
A.
]
]

#ezexam.question[
如图，曲线段的方程为 $y=f(x)$，函数 $f(x)$ 在区间 $[0,a]$ 上有连续的导数，则定积分 $integral_0^a x f'(x)dif x$ 等于（　）.
#import "@preview/cetz:0.3.4": canvas, draw
#canvas({
 import draw: *
 line((-0.3,0),(3.8,0),mark:(end:"stealth"));line((0,-0.3),(0,3.8),mark:(end:"stealth"))
 line((0,3),(3,3),(3,0));line((0,0.6),(3,3));bezier((0,0.6),(3,3),(0.9,2.2),(1.9,3))
 content((3.9,0),$x$);content((0,4),$y$);content((-0.2,-0.2),$O$)
 content((3.65,3.1),$A(a,f(a))$);content((3,-0.35),$B(a,0)$)
 content((-0.9,3),$C(0,f(a))$);content((-0.2,0.6),$D$);content((0.8,2.7),$y=f(x)$)
})
#choices([曲边梯形 $A B O D$ 的面积], [梯形 $A B O D$ 的面积], [曲边三角形 $A C D$ 的面积], [三角形 $A C D$ 的面积])
#ezexam.solution(show-number: false)[
C.
]
]

#ezexam.question[
设 $A$ 为 $n$ 阶非零矩阵，$E$ 为 $n$ 阶单位矩阵.若 $A^3=O$，则（　）.
#choices([$E-A$ 不可逆，$E+A$ 不可逆], [$E-A$ 不可逆，$E+A$ 可逆], [$E-A$ 可逆，$E+A$ 可逆], [$E-A$ 可逆，$E+A$ 不可逆])
#ezexam.solution(show-number: false)[
C.
]
]

#ezexam.question[
设 $A=mat(1,2;2,1)$，则在实数域上与 $A$ 合同的矩阵为（　）.
#choices([$mat(-2,1;1,-2)$], [$mat(2,-1;-1,2)$], [$mat(2,1;1,2)$], [$mat(1,-2;-2,1)$])
#ezexam.solution(show-number: false)[
D.
]
]

#ezexam.question[
设随机变量 $X,Y$ 独立同分布，且 $X$ 的分布函数为 $F(x)$，则 $Z=max{X,Y}$ 的分布函数为（　）.
#choices([$F^2(x)$], [$F(x)F(y)$], [$1-[1-F(x)]^2$], [$[1-F(x)][1-F(y)]$])
#ezexam.solution(show-number: false)[
A.
]
]

#ezexam.question[
设随机变量 $X tilde N(0,1)$，$Y tilde N(1,4)$，相关系数 $rho_(X Y)=1$，则（　）.
#choices([$P{Y=-2X-1}=1$], [$P{Y=2X-1}=1$], [$P{Y=-2X+1}=1$], [$P{Y=2X+1}=1$])
#ezexam.solution(show-number: false)[
D.
]
]

= 二、填空题：9—14小题，每小题4分，共24分. 把答案填在题中横线上.

#ezexam.question[
设函数 $f(x)=cases(x^2+1 & abs(x)<=c,2/abs(x) & abs(x)>c)$ 在 $(-infinity,+infinity)$ 内连续，则 $c=$#h(2cm).
#ezexam.solution(show-number: false)[
1.
]
]

#ezexam.question[
已知函数 $f(x)$ 连续，且 $lim_(x->0) f(x)/x=2$，则曲线 $y=f(x)$ 上对应 $x=0$ 处的切线方程是#h(2cm).
#ezexam.solution(show-number: false)[
$y=2x$.
]
]

#ezexam.question[
$integral_1^e dif x integral_0^1 x^y ln x dif y=$#h(2cm).
#ezexam.solution(show-number: false)[
$1/2$.
]
]

#ezexam.question[
微分方程 $(y+x^2 e^(-x))dif x-x dif y=0$ 的通解是 $y=$#h(2cm).
#ezexam.solution(show-number: false)[
$x(C-e^(-x))$.
]
]

#ezexam.question[
设3阶矩阵 $A$ 的特征值互不相同.若行列式 $abs(A)=0$，则 $A$ 的秩为#h(2cm).
#ezexam.solution(show-number: false)[
2.
]
]

#ezexam.question[
设随机变量 $X$ 服从参数为1的泊松分布，则 $P{X=E X^2}=$#h(2cm).
#ezexam.solution(show-number: false)[
$1/(2e)$.
]
]

= 三、解答题：15—23小题，共94分. 解答应写出文字说明、证明过程或演算步骤.

#ezexam.question[
（本题满分9分）
求极限 $lim_(x->0) 1/x^2 ln((sin x)/x)$.
#ezexam.solution(show-number: false)[
解　原式 $=lim_(x->0) (x cos x-sin x)/(2x^2 sin x)
=lim_(x->0) (x cos x-sin x)/(2x^3)
=lim_(x->0) (-x sin x)/(6x^2)=-1/6.$
]
]

#ezexam.question[
（本题满分10分）
设函数 $f(x)=integral_0^1 abs(t(t-x))dif t$（$0<x<1$），求 $f(x)$ 的极值、单调区间及曲线 $y=f(x)$ 的凹凸区间.
#ezexam.solution(show-number: false)[
解　$ f(x)=integral_0^x t(x-t)dif t+integral_x^1 t(t-x)dif t=1/3 x^3-x/2+1/3. $
令 $f'(x)=x^2-1/2=0$，得 $x=sqrt(2)/2$，$x=-sqrt(2)/2$（舍去）.

因 $f''(x)=2x>0$（$0<x<1$），故 $x=sqrt(2)/2$ 为 $f(x)$ 的极小值点，极小值 $f(sqrt(2)/2)=1/3 (1-sqrt(2)/2)$，且曲线 $y=f(x)$ 在 $(0,1)$ 内是凹的.

由 $f'(x)=x^2-1/2$ 知，$f(x)$ 在 $(0,sqrt(2)/2)$ 内单调递减，在 $(sqrt(2)/2,1)$ 内单调递增.
]
]

#ezexam.question[
（本题满分11分）
求函数 $u=x^2+y^2+z^2$ 在约束条件 $z=x^2+y^2$ 和 $x+y+z=4$ 下的最大值与最小值.
#ezexam.solution(show-number: false)[
解　作拉格朗日函数
$ F(x,y,z,lambda,mu)=x^2+y^2+z^2+lambda(x^2+y^2-z)+mu(x+y+z-4), $
令
$ cases(F'_x=2x+2lambda x+mu=0,F'_y=2y+2lambda y+mu=0,F'_z=2z-lambda+mu=0,F'_lambda=x^2+y^2-z=0,F'_mu=x+y+z-4=0), $
解此方程组，得 $(x_1,y_1,z_1)=(1,1,2)$，$(x_2,y_2,z_2)=(-2,-2,8)$，故所求的最大值为72，最小值为6.
]
]

#ezexam.question[
（本题满分10分）
设 $z=z(x,y)$ 是由方程 $x^2+y^2-z=phi(x+y+z)$ 所确定的函数，其中 $phi$ 具有二阶导数，且 $phi'!=-1$.

（Ⅰ）求 $dif z$；

（Ⅱ）记 $u(x,y)=1/(x-y)((partial z)/(partial x)-(partial z)/(partial y))$，求 $(partial u)/(partial x)$.
#ezexam.solution(show-number: false)[
解法1　（Ⅰ）设 $F(x,y,z)=x^2+y^2-z-phi(x+y+z)$，则有
$ F'_x=2x-phi', quad F'_y=2y-phi', quad F'_z=-1-phi', $
由公式
$ (partial z)/(partial x)=-F'_x/F'_z, quad (partial z)/(partial y)=-F'_y/F'_z, $
得
$ (partial z)/(partial x)=(2x-phi')/(1+phi'), quad (partial z)/(partial y)=(2y-phi')/(1+phi'), $
所以
$ dif z=(partial z)/(partial x)dif x+(partial z)/(partial y)dif y=1/(1+phi')[(2x-phi')dif x+(2y-phi')dif y]. $
（Ⅱ）由于 $u(x,y)=2/(1+phi')$，所以
$ (partial u)/(partial x)=-2/(1+phi')^2 (1+(partial z)/(partial x))phi''=-(2(2x+1)phi'')/(1+phi')^3. $
解法2　（Ⅰ）对等式
$ x^2+y^2-z=phi(x+y+z) $
两端求微分得
$ 2x dif x+2y dif y-dif z=phi' dot (dif x+dif y+dif z), $
解出 $dif z$ 得
$ dif z=(2x-phi')/(1+phi')dif x+(2y-phi')/(1+phi')dif y. $
（Ⅱ）同解法1.
]
]

#ezexam.question[
（本题满分10分）
设 $f(x)$ 是周期为2的连续函数.

（Ⅰ）证明对任意的实数 $t$，有 $integral_t^(t+2) f(x)dif x=integral_0^2 f(x)dif x$；

（Ⅱ）证明 $G(x)=integral_0^x [2f(t)-integral_t^(t+2) f(s)dif s]dif t$ 是周期为2的周期函数.
#ezexam.solution(show-number: false)[
证法1　（Ⅰ）由积分的性质知对任意的实数 $t$，
$ integral_t^(t+2) f(x)dif x=integral_t^0 f(x)dif x+integral_0^2 f(x)dif x+integral_2^(t+2) f(x)dif x. $
令 $s=x-2$，则有
$ integral_2^(t+2) f(x)dif x=integral_0^t f(s+2)dif s=integral_0^t f(s)dif s=-integral_t^0 f(x)dif x, $
所以
$ integral_t^(t+2) f(x)dif x=integral_t^0 f(x)dif x+integral_0^2 f(x)dif x-integral_t^0 f(x)dif x \
=integral_0^2 f(x)dif x. $
（Ⅱ）由（Ⅰ）知对任意的 $t$ 有 $integral_t^(t+2) f(s)dif s=integral_0^2 f(s)dif s$.

记 $integral_0^2 f(s)dif s=a$，则
$ G(x)=2integral_0^x f(t)dif t-a x. $
因为对任意的 $x$，均有
$ G(x+2)-G(x)=2integral_0^(x+2) f(t)dif t-a(x+2)-2integral_0^x f(t)dif t+a x \
=2integral_x^(x+2) f(t)dif t-2a=2integral_0^2 f(t)dif t-2a=0, $
所以 $G(x)$ 是周期为2的周期函数.

证法2　（Ⅰ）设 $F(t)=integral_t^(t+2) f(x)dif x$，由于
$ F'(t)=f(t+2)-f(t)=0, $
所以 $F(t)$ 为常数，从而有 $F(t)=F(0)$.

因为 $F(0)=integral_0^2 f(x)dif x$，所以 $F(t)=integral_0^2 f(x)dif x$，即
$ integral_t^(t+2) f(x)dif x=integral_0^2 f(x)dif x. $
（Ⅱ）由（Ⅰ）知对任意的 $t$ 有 $integral_t^(t+2) f(s)dif s=integral_0^2 f(s)dif s$.

记 $integral_0^2 f(s)dif s=a$，则
$ G(x)=2integral_0^x f(t)dif t-a x, quad G(x+2)=2integral_0^(x+2) f(t)dif t-a(x+2). $
由于对任意 $x$，均有
$ (G(x+2))'=2f(x+2)-a=2f(x)-a, quad (G(x))'=2f(x)-a, $
所以 $(G(x+2)-G(x))'=0$，从而 $G(x+2)-G(x)$ 是常数，即有
$ G(x+2)-G(x)=G(2)-G(0)=0, $
所以 $G(x)$ 是周期为2的周期函数.
]
]

#ezexam.question[
（本题满分12分）
设 $n$ 元线性方程组 $A bold(x)=bold(b)$，其中
$ A=mat(2a,1,,,;a^2,2a,1,,;,a^2,2a,1,;,,dots.down,dots.down,dots.down;,,,a^2,2a,1;,,,,a^2,2a)_(n times n), quad bold(x)=mat(x_1;x_2; dots.v;x_n), quad bold(b)=mat(1;0; dots.v;0). $
（Ⅰ）证明行列式 $abs(A)=(n+1)a^n$；

（Ⅱ）当 $a$ 为何值时，该方程组有唯一解，并求 $x_1$；

（Ⅲ）当 $a$ 为何值时，该方程组有无穷多解，并求通解.
#ezexam.solution(show-number: false)[
（Ⅰ）证法1　记
$ D_n=abs(A)=mat(delim:"|",2a,1,,,;a^2,2a,1,,;,a^2,2a,1,;,,dots.down,dots.down,dots.down;,,,a^2,2a,1;,,,,a^2,2a)_n, $
以下用数学归纳法证明 $D_n=(n+1)a^n$.

当 $n=1$ 时，$D_1=2a$，结论成立.

当 $n=2$ 时，$D_2=mat(delim:"|",2a,1;a^2,2a)=3a^2$，结论成立.

假设结论对小于 $n$ 的情况成立.将 $D_n$ 按第1行展开，得
$ D_n=2a D_(n-1)-mat(delim:"|",a^2,1,,,;0,2a,1,,;,a^2,2a,1,;,,dots.down,dots.down,dots.down;,,,a^2,2a,1;,,,,a^2,2a)_(n-1) \
=2a D_(n-1)-a^2 D_(n-2) \
=2a n a^(n-1)-a^2(n-1)a^(n-2)=(n+1)a^n, $
故 $abs(A)=(n+1)a^n$.

证法2
$ abs(A)=mat(delim:"|",2a,1,,,;a^2,2a,1,,;,a^2,2a,1,;,,dots.down,dots.down,dots.down;,,,a^2,2a,1;,,,,a^2,2a)_n $
$ arrow.r.long^(r_2-1/2 a r_1) mat(delim:"|",2a,1,,,;0,3/2 a,1,,;,a^2,2a,1,;,,dots.down,dots.down,dots.down;,,,a^2,2a,1;,,,,a^2,2a)_n $
$ arrow.r.long^(r_3-2/3 a r_2) mat(delim:"|",2a,1,,,;0,3/2 a,1,,;,0,4/3 a,1,;,,dots.down,dots.down,dots.down;,,,a^2,2a,1;,,,,a^2,2a)_n=dots $
$ arrow.r.long^(r_n-(n-1)/n a r_(n-1)) mat(delim:"|",2a,1,,,;0,3/2 a,1,,;,0,4/3 a,1,;,,dots.down,dots.down,dots.down;,,,0,n/(n-1) a,1;,,,,0,(n+1)/n a)_n=(n+1)a^n. $
（Ⅱ）解　当 $a!=0$ 时，方程组系数行列式 $D_n!=0$，故方程组有唯一解.由克莱姆法则，将 $D_n$ 的第1列换成 $bold(b)$，得行列式为
$ mat(delim:"|",1,1,,,;0,2a,1,,;,a^2,2a,1,;,,dots.down,dots.down,dots.down;,,,a^2,2a,1;,,,,a^2,2a)_n \
=mat(delim:"|",2a,1,,,;a^2,2a,1,,;,a^2,2a,1,;,,dots.down,dots.down,dots.down;,,,a^2,2a,1;,,,,a^2,2a)_(n-1) \
=D_(n-1) \
=n a^(n-1), $
所以
$ x_1=D_(n-1)/D_n=n/((n+1)a). $
（Ⅲ）解　当 $a=0$ 时，方程组为
$ mat(0,1,,,;,0,1,,;,,dots.down,dots.down,;,,,0,1;,,,,0)mat(x_1;x_2;dots.v;x_(n-1);x_n)=mat(1;0;dots.v;0;0), $
此时方程组系数矩阵的秩和增广矩阵的秩均为 $n-1$，所以方程组有无穷多解.其通解为
$ bold(x)=(0,1,0,dots,0)^T+k(1,0,0,dots,0)^T, $
其中 $k$ 为任意常数.
]
]

#ezexam.question[
（本题满分10分）
设 $A$ 为3阶矩阵，$alpha_1,alpha_2$ 为 $A$ 的分别属于特征值 $-1,1$ 的特征向量，向量 $alpha_3$ 满足 $A alpha_3=alpha_2+alpha_3$.

（Ⅰ）证明 $alpha_1,alpha_2,alpha_3$ 线性无关；

（Ⅱ）令 $P=(alpha_1,alpha_2,alpha_3)$，求 $P^(-1)A P$.
#ezexam.solution(show-number: false)[
解　（Ⅰ）设存在数 $k_1,k_2,k_3$ 使得
$ k_1 alpha_1+k_2 alpha_2+k_3 alpha_3=0. quad "①" $
用 $A$ 左乘①的两边，并由 $A alpha_1=-alpha_1$，$A alpha_2=alpha_2$，得
$ -k_1 alpha_1+(k_2+k_3)alpha_2+k_3 alpha_3=0. quad "②" $
①−②得
$ 2k_1 alpha_1-k_3 alpha_2=0. quad "③" $
因为 $alpha_1,alpha_2$ 是 $A$ 的属于不同特征值的特征向量，所以 $alpha_1,alpha_2$ 线性无关，从而 $k_1=k_3=0$.

代入①得 $k_2 alpha_2=0$，由于 $alpha_2!=0$，所以 $k_2=0$，故 $alpha_1,alpha_2,alpha_3$ 线性无关.

（Ⅱ）由题设，可得
$ A P=A(alpha_1,alpha_2,alpha_3)=(A alpha_1,A alpha_2,A alpha_3) \
=(alpha_1,alpha_2,alpha_3)mat(-1,0,0;0,1,1;0,0,1)=P mat(-1,0,0;0,1,1;0,0,1). $
由（Ⅰ），$P$ 为可逆矩阵，从而
$ P^(-1)A P=mat(-1,0,0;0,1,1;0,0,1). $
]
]

#ezexam.question[
（本题满分11分）
设随机变量 $X$ 与 $Y$ 相互独立，$X$ 的概率分布为 $P{X=i}=1/3$（$i=-1,0,1$），$Y$ 的概率密度为 $f_Y(y)=cases(1 & 0<=y<1,0 & "其他")$.记 $Z=X+Y$.

（Ⅰ）求 $P{Z<=1/2 bar X=0}$；

（Ⅱ）求 $Z$ 的概率密度 $f_Z(z)$.
#ezexam.solution(show-number: false)[
解　（Ⅰ）
$ P{Z<=1/2 bar X=0}=(P{X=0,Z<=1/2})/(P{X=0})=(P{X=0,Y<=1/2})/(P{X=0})=P{Y<=1/2}=1/2. $
（Ⅱ）$ F_Z(z)=P{Z<=z}=P{X+Y<=z} \
=P{X+Y<=z,X=-1}+P{X+Y<=z,X=0}+P{X+Y<=z,X=1} \
=P{Y<=z+1,X=-1}+P{Y<=z,X=0}+P{Y<=z-1,X=1} \
=P{Y<=z+1}P{X=-1}+P{Y<=z}P{X=0}+P{Y<=z-1}P{X=1} \
=1/3 [P{Y<=z+1}+P{Y<=z}+P{Y<=z-1}] \
=1/3 [F_Y(z+1)+F_Y(z)+F_Y(z-1)], $
$ f_Z(z)=F'_Z(z)=1/3 [f_Y(z+1)+f_Y(z)+f_Y(z-1)]=cases(1/3 & -1<=z<2,0 & "其他"). $
]
]

#ezexam.question[
（本题满分11分）
设某企业生产线上产品的合格率为0.96，不合格产品中只有 $3/4$ 的产品可进行再加工，且再加工的合格率为0.8，其余均为废品.已知每件合格产品可获利80元，每件废品亏损20元，为保证该企业每天平均利润不低于2万元，问该企业每天至少应生产多少件产品？
#ezexam.solution(show-number: false)[
解　进行再加工后，产品的合格率
$ p=0.96+0.04 times 0.75 times 0.8=0.984. $
记 $X$ 为 $n$ 件产品中的合格产品数，$T(n)$ 为 $n$ 件产品的利润，则
$ X tilde B(n,p), quad E X=n p=0.984n, $
$ T(n)=80X-20(n-X), $
$ E T(n)=80E X-20n+20E X=100E X-20n=78.4n. $
要 $E T(n)>=20000$，则 $n>=256$，即该企业每天至少应生产256件产品.
]
]

