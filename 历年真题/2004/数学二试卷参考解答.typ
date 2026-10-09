#import "../template.typ": exam
#show: exam.with(year: 2004, subject: "二", title: "2004年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#ezexam.answer-state.update(true)


= 一、填空题（本题共6小题，每小题4分，满分24分）

#ezexam.question[
设 $f(x)=lim_(n->infinity) ((n-1)x)/(n x^2+1)$，则 $f(x)$ 的间断点为 $x=$#h(3em).
#ezexam.solution(show-number: false)[
0.
]
]

#ezexam.question[
设函数 $y(x)$ 由参数方程 $cases(x=t^3+3t+1,y=t^3-3t+1)$ 确定，则曲线 $y=y(x)$ 向上凸的 $x$ 的取值范围为#h(3em).
#ezexam.solution(show-number: false)[
$(-infinity,1)$（或 $(-infinity,1]$）.
]
]

#ezexam.question[
$integral_1^(+infinity) (dif x)/(x sqrt(x^2-1))=$#h(3em).
#ezexam.solution(show-number: false)[
$pi/2$.
]
]

#ezexam.question[
设函数 $z=z(x,y)$ 由方程 $z=e^(2x-3z)+2y$ 确定，则 $3(partial z)/(partial x)+(partial z)/(partial y)=$#h(3em).
#ezexam.solution(show-number: false)[
2.
]
]

#ezexam.question[
微分方程 $(y+x^3)dif x-2x dif y=0$ 满足 $y|_(x=1)=6/5$ 的特解为#h(3em).
#ezexam.solution(show-number: false)[
$y=1/5 x^3+sqrt(x)$.
]
]

#ezexam.question[
设矩阵 $A=mat(2,1,0;1,2,0;0,0,1)$，矩阵 $B$ 满足 $A B A^*=2B A^*+E$，其中 $A^*$ 为 $A$ 的伴随矩阵，$E$ 是单位矩阵，则 $|B|=$#h(3em).
#ezexam.solution(show-number: false)[
$1/9$.
]
]

= 二、选择题（本题共8小题，每小题4分，满分32分）

#ezexam.question[
把 $x->0^+$ 时的无穷小量 $alpha=integral_0^x cos t^2 dif t,beta=integral_0^(x^2) tan sqrt(t) dif t,gamma=integral_0^sqrt(x) sin t^3 dif t$ 排列起来，使排在后面的是前一个的高阶无穷小量，则正确的排列次序是
#choices([$alpha,beta,gamma$.],[$alpha,gamma,beta$.],[$beta,alpha,gamma$.],[$beta,gamma,alpha$.])
#ezexam.solution(show-number: false)[
B.
]
]

#ezexam.question[
设 $f(x)=|x(1-x)|$，则
#choices([$x=0$ 是 $f(x)$ 的极值点，但 $(0,0)$ 不是曲线 $y=f(x)$ 的拐点.],[$x=0$ 不是 $f(x)$ 的极值点，但 $(0,0)$ 是曲线 $y=f(x)$ 的拐点.],[$x=0$ 是 $f(x)$ 的极值点，且 $(0,0)$ 是曲线 $y=f(x)$ 的拐点.],[$x=0$ 不是 $f(x)$ 的极值点，$(0,0)$ 也不是曲线 $y=f(x)$ 的拐点.])
#ezexam.solution(show-number: false)[
C.
]
]

#ezexam.question[
$lim_(n->infinity) ln root(n,(1+1/n)^2(1+2/n)^2 dots (1+n/n)^2)$ 等于
#choices([$integral_1^2 ln^2 x dif x$.],[$2integral_1^2 ln x dif x$.],[$2integral_1^2 ln(1+x) dif x$.],[$integral_1^2 ln^2(1+x) dif x$.])
#ezexam.solution(show-number: false)[
B.
]
]

#ezexam.question[
设函数 $f(x)$ 连续，且 $f'(0)>0$，则存在 $delta>0$，使得
#choices([$f(x)$ 在 $(0,delta)$ 内单调增加.],[$f(x)$ 在 $(-delta,0)$ 内单调减少.],[对任意的 $x in (0,delta)$，有 $f(x)>f(0)$.],[对任意的 $x in (-delta,0)$，有 $f(x)>f(0)$.])
#ezexam.solution(show-number: false)[
C.
]
]

#ezexam.question[
微分方程 $y''+y=x^2+1+sin x$ 的特解形式可设为
#choices([$y^*=a x^2+b x+c+x(A sin x+B cos x)$.],[$y^*=x(a x^2+b x+c+A sin x+B cos x)$.],[$y^*=a x^2+b x+c+A sin x$.],[$y^*=a x^2+b x+c+A cos x$.])
#ezexam.solution(show-number: false)[
A.
]
]

#ezexam.question[
设函数 $f(u)$ 连续，区域 $D={(x,y)|x^2+y^2<=2y}$，则 $integral.double_D f(x y) dif x dif y$ 等于
#choices([$integral_(-1)^1 dif x integral_(-sqrt(1-x^2))^sqrt(1-x^2) f(x y) dif y$.],[$2integral_0^2 dif y integral_0^sqrt(2y-y^2) f(x y) dif x$.],[$integral_0^pi dif theta integral_0^(2sin theta) f(r^2 sin theta cos theta) dif r$.],[$integral_0^pi dif theta integral_0^(2sin theta) f(r^2 sin theta cos theta)r dif r$.])
#ezexam.solution(show-number: false)[
D.
]
]

#ezexam.question[
设 $A$ 是三阶方阵，将 $A$ 的第1列与第2列交换得 $B$，再把 $B$ 的第2列加到第3列得 $C$，则满足 $A Q=C$ 的可逆矩阵 $Q$ 为
#choices([$mat(0,1,0;1,0,0;1,0,1)$.],[$mat(0,1,0;1,0,1;0,0,1)$.],[$mat(0,1,0;1,0,0;0,1,1)$.],[$mat(0,1,1;1,0,0;0,0,1)$.])
#ezexam.solution(show-number: false)[
D.
]
]

#ezexam.question[
设 $A,B$ 为满足 $A B=O$ 的任意两个非零矩阵，则必有
#choices([$A$ 的列向量组线性相关，$B$ 的行向量组线性相关.],[$A$ 的列向量组线性相关，$B$ 的列向量组线性相关.],[$A$ 的行向量组线性相关，$B$ 的行向量组线性相关.],[$A$ 的行向量组线性相关，$B$ 的列向量组线性相关.])
#ezexam.solution(show-number: false)[
A.
]
]

= 三、解答题（本题共9小题，满分94分. 解答应写出文字说明、证明过程或演算步骤.）

#ezexam.question[
（本题满分10分）求极限 $lim_(x->0) 1/x^3 [((2+cos x)/3)^x-1]$.
#ezexam.solution(show-number: false)[
解法1　原式
$ =lim_(x->0)(e^(x ln((2+cos x)/3))-1)/x^3 \
=lim_(x->0)(ln((2+cos x)/3))/x^2 \
=lim_(x->0)(ln(2+cos x)-ln 3)/x^2 \
=lim_(x->0)((1/(2+cos x))dot(-sin x))/(2x) \
=-1/2 lim_(x->0)1/(2+cos x) dot (sin x)/x=-1/6. $
解法2　原式
$ =lim_(x->0)(e^(x ln((2+cos x)/3))-1)/x^3 \
=lim_(x->0)(ln((2+cos x)/3))/x^2 \
=lim_(x->0)(ln(1+(cos x-1)/3))/x^2 \
=lim_(x->0)(cos x-1)/(3x^2)=-1/6. $
]
]

#ezexam.question[
（本题满分10分）设函数 $f(x)$ 在 $(-infinity,+infinity)$ 内有定义，在区间 $[0,2]$ 上 $f(x)=x(x^2-4)$，若对任意的 $x$ 都满足 $f(x)=k f(x+2)$，其中 $k$ 为常数.

（Ⅰ）写出 $f(x)$ 在 $[-2,0)$ 上的表达式；

（Ⅱ）问 $k$ 为何值时，$f(x)$ 在 $x=0$ 处可导.
#ezexam.solution(show-number: false)[
解　（Ⅰ）当 $-2<=x<0$，即 $0<=x+2<2$ 时，
$ f(x)=k f(x+2)=k(x+2)[(x+2)^2-4]=k x(x+2)(x+4). $
（Ⅱ）由题设知 $f(0)=0$.
$ f'_+(0)=lim_(x->0^+)(f(x)-f(0))/(x-0)=lim_(x->0^+)(x(x^2-4))/x=-4, \
f'_-(0)=lim_(x->0^-)(f(x)-f(0))/(x-0)=lim_(x->0^-)(k x(x+2)(x+4))/x=8k. $
令 $f'_-(0)=f'_+(0)$，得 $k=-1/2$，即当 $k=-1/2$ 时，$f(x)$ 在 $x=0$ 处可导.
]
]

#ezexam.question[
（本题满分11分）设 $f(x)=integral_x^(x+pi/2)|sin t|dif t$，

（Ⅰ）证明 $f(x)$ 是以 $pi$ 为周期的周期函数；

（Ⅱ）求 $f(x)$ 的值域.
#ezexam.solution(show-number: false)[
解　（Ⅰ）$f(x+pi)=integral_(x+pi)^(x+3/2 pi)|sin t|dif t$.
设 $t=u+pi$，则有
$ f(x+pi)=integral_x^(x+pi/2)|sin(u+pi)|dif u=integral_x^(x+pi/2)|sin u|dif u=f(x), $
故 $f(x)$ 是以 $pi$ 为周期的周期函数.

（Ⅱ）因为 $|sin x|$ 在 $(-infinity,+infinity)$ 内连续，注意到 $f(x)$ 的周期为 $pi$，故只需在 $[0,pi]$ 上讨论其值域.因为
$ f'(x)=|sin(x+pi/2)|-|sin x|=|cos x|-|sin x|, $
令 $f'(x)=0$，得 $x_1=pi/4,x_2=(3pi)/4$，且
$ f(pi/4)=integral_(pi/4)^((3pi)/4)sin t dif t=sqrt(2), \
f((3pi)/4)=integral_((3pi)/4)^((5pi)/4)|sin t|dif t=integral_((3pi)/4)^pi sin t dif t-integral_pi^((5pi)/4)sin t dif t=2-sqrt(2). $
又 $f(0)=integral_0^(pi/2)sin t dif t=1,f(pi)=integral_pi^(3/2 pi)(-sin t)dif t=1$，因而 $f(x)$ 的最小值是 $2-sqrt(2)$，最大值是 $sqrt(2)$，故 $f(x)$ 的值域是 $[2-sqrt(2),sqrt(2)]$.
]
]

#ezexam.question[
（本题满分12分）曲线 $y=(e^x+e^(-x))/2$ 与直线 $x=0,x=t (t>0)$ 及 $y=0$ 围成一曲边梯形.该曲边梯形绕 $x$ 轴旋转一周得一旋转体，其体积为 $V(t)$，侧面积为 $S(t)$，在 $x=t$ 处的底面积为 $F(t)$.

（Ⅰ）求 $(S(t))/(V(t))$ 的值；

（Ⅱ）计算极限 $lim_(t->+infinity)(S(t))/(F(t))$.
#ezexam.solution(show-number: false)[
解　（Ⅰ）
$ S(t)&=integral_0^t 2pi y sqrt(1+y'^2)dif x \
&=2pi integral_0^t ((e^x+e^(-x))/2)sqrt(1+(e^(2x)-2+e^(-2x))/4)dif x \
&=2pi integral_0^t ((e^x+e^(-x))/2)^2 dif x, \
V(t)&=pi integral_0^t ((e^x+e^(-x))/2)^2 dif x, $
所以 $(S(t))/(V(t))=2$.
（Ⅱ）$F(t)=pi y^2|_(x=t)=pi ((e^t+e^(-t))/2)^2$，
$ lim_(t->+infinity)(S(t))/(F(t))=lim_(t->+infinity)(2pi integral_0^t ((e^x+e^(-x))/2)^2 dif x)/(pi ((e^t+e^(-t))/2)^2) $
$ =lim_(t->+infinity)(2((e^t+e^(-t))/2)^2)/(2((e^t+e^(-t))/2)((e^t-e^(-t))/2))=lim_(t->+infinity)(e^t+e^(-t))/(e^t-e^(-t))=1. $
]
]

#ezexam.question[
（本题满分12分）设 $e<a<b<e^2$，证明 $ln^2 b-ln^2 a>4/e^2 (b-a)$.
#ezexam.solution(show-number: false)[
证法1　设 $phi(x)=ln^2 x-4/e^2 x$，则
$ phi'(x)=2 (ln x)/x-4/e^2, quad phi''(x)=2 (1-ln x)/x^2, $
所以当 $x>e$ 时，$phi''(x)<0$，故 $phi'(x)$ 单调减少，从而当 $e<x<e^2$ 时，
$ phi'(x)>phi'(e^2)=4/e^2-4/e^2=0, $
即当 $e<x<e^2$ 时，$phi(x)$ 单调增加.
因此当 $e<a<b<e^2$ 时，$phi(b)>phi(a)$，即
$ ln^2 b-4/e^2 b>ln^2 a-4/e^2 a, $
故 $ln^2 b-ln^2 a>4/e^2(b-a)$.

证法2　对函数 $ln^2 x$ 在 $[a,b]$ 上应用拉格朗日中值定理，得
$ ln^2 b-ln^2 a=(2ln xi)/xi (b-a),quad a<xi<b. $
设 $phi(t)=(ln t)/t$，则 $phi'(t)=(1-ln t)/t^2$.
当 $t>e$ 时，$phi'(t)<0$，所以 $phi(t)$ 单调减少，从而 $phi(xi)>phi(e^2)$，即
$ (ln xi)/xi>(ln e^2)/e^2=2/e^2, $
故 $ln^2 b-ln^2 a>4/e^2(b-a)$.
]
]

#ezexam.question[
（本题满分11分）某种飞机在机场降落时，为了减少滑行距离，在触地的瞬间，飞机尾部张开减速伞，以增大阻力，使飞机迅速减速并停下.

现有一质量为9000 kg的飞机，着陆时的水平速度为700 km/h.经测试，减速伞打开后，飞机所受的总阻力与飞机的速度成正比（比例系数为 $k=6.0 times 10^6$）.问从着陆点算起，飞机滑行的最长距离是多少？

注　kg表示千克，km/h表示千米/小时.
#ezexam.solution(show-number: false)[
解　由题设，飞机的质量 $m=9000$ kg，着陆时的速度 $v_0=700$ km/h.从飞机接触跑道开始计时，设 $t$ 时刻飞机的滑行距离为 $x(t)$，速度为 $v(t)$.

法1　根据牛顿第二定律，得 $m (dif v)/(dif t)=-k v$，又
$ (dif v)/(dif t)=(dif v)/(dif x) dot (dif x)/(dif t)=v (dif v)/(dif x), $
由以上二式得 $dif x=-m/k dif v$.
积分得 $x(t)=-m/k v+C$.由于 $v(0)=v_0,x(0)=0$，故得 $C=m/k v_0$，从而
$ x(t)=m/k(v_0-v(t)). $
当 $v(t)->0$ 时，
$ x(t)->(m v_0)/k=(9000 times 700)/(6.0 times 10^6) ("km")=1.05 ("km"). $
所以，飞机滑行的最长距离为1.05 km.

法2　根据牛顿第二定律，得 $m (dif v)/(dif t)=-k v$，所以
$ (dif v)/v=-k/m dif t. $
两端积分得通解 $v=C e^(-k/m t)$，代入初始条件 $v|_(t=0)=v_0$，解得 $C=v_0$，故 $v(t)=v_0 e^(-k/m t)$.
飞机滑行的最长距离为
$ x=integral_0^(+infinity) v(t) dif t=lr(- (m v_0)/k e^(-k/m t))|_0^(+infinity)=(m v_0)/k=1.05 ("km"). $

法3　根据牛顿第二定律，得
$ m (dif^2 x)/(dif t^2)=-k (dif x)/(dif t),quad (dif^2 x)/(dif t^2)+k/m (dif x)/(dif t)=0, $
其特征方程为 $r^2+k/m r=0$，解之得 $r_1=0,r_2=-k/m$，故
$ x=C_1+C_2 e^(-k/m t). $
由 $x|_(t=0)=0,v|_(t=0)=lr((dif x)/(dif t))|_(t=0)=lr(- (k C_2)/m e^(-k/m t))|_(t=0)=v_0$，得 $C_1=-C_2=(m v_0)/k$.
于是 $x(t)=(m v_0)/k (1-e^(-k/m t))$.
当 $t->+infinity$ 时，$x(t)->(m v_0)/k=1.05 ("km")$.
所以，飞机滑行的最长距离为1.05 km.
]
]

#ezexam.question[
（本题满分10分）设 $z=f(x^2-y^2,e^(x y))$，其中 $f$ 具有连续二阶偏导数，求 $(partial z)/(partial x),(partial z)/(partial y),(partial^2 z)/(partial x partial y)$.
#ezexam.solution(show-number: false)[
解
$ (partial z)/(partial x)&=2x f'_1+y e^(x y)f'_2, \
(partial z)/(partial y)&=-2y f'_1+x e^(x y)f'_2, \
(partial^2 z)/(partial x partial y)&=2x[f''_(11)dot(-2y)+f''_(12)dot x e^(x y)]+e^(x y)f'_2+x y e^(x y)f'_2 \
&quad+y e^(x y)[f''_(21)dot(-2y)+f''_(22)dot x e^(x y)] \
&=-4x y f''_(11)+2(x^2-y^2)e^(x y)f''_(12)+x y e^(2x y)f''_(22)+e^(x y)(1+x y)f'_2. $
]
]

#ezexam.question[
（本题满分9分）设有齐次线性方程组
$ cases((1+a)x_1+x_2+x_3+x_4=0,2x_1+(2+a)x_2+2x_3+2x_4=0,3x_1+3x_2+(3+a)x_3+3x_4=0,4x_1+4x_2+4x_3+(4+a)x_4=0), $
试问 $a$ 取何值时，该方程组有非零解，并求其通解.
#ezexam.solution(show-number: false)[
解法1　对方程组的系数矩阵 $A$ 作初等行变换，有
$ A=mat(1+a,1,1,1;2,2+a,2,2;3,3,3+a,3;4,4,4,4+a) \
->mat(1+a,1,1,1;-2a,a,0,0;-3a,0,a,0;-4a,0,0,a)=B. $
当 $a=0$ 时，$r(A)=1<4$，故方程组有非零解，其同解方程组为
$ x_1+x_2+x_3+x_4=0, $
由此得基础解系为
$ eta_1=(-1,1,0,0)^"T",quad eta_2=(-1,0,1,0)^"T",quad eta_3=(-1,0,0,1)^"T", $
于是所求方程组的通解为 $bold(x)=k_1 eta_1+k_2 eta_2+k_3 eta_3$，其中 $k_1,k_2,k_3$ 为任意常数.
当 $a!=0$ 时，
$ B->mat(1+a,1,1,1;-2,1,0,0;-3,0,1,0;-4,0,0,1)->mat(a+10,0,0,0;-2,1,0,0;-3,0,1,0;-4,0,0,1), $
可知当 $a=-10$ 时，$r(A)=3<4$，故方程组也有非零解，其同解方程组为
$ cases(-2x_1+x_2=0,-3x_1+x_3=0,-4x_1+x_4=0), $
由此得基础解系为 $eta=(1,2,3,4)^"T"$，于是所求方程组的通解为 $bold(x)=k eta$，其中 $k$ 为任意常数.

解法2　方程组的系数行列式
$ |A|=mat(delim:"|",1+a,1,1,1;2,2+a,2,2;3,3,3+a,3;4,4,4,4+a)=(a+10)a^3. $
当 $|A|=0$，即 $a=0$ 或 $a=-10$ 时，方程组有非零解.
当 $a=0$ 时，对系数矩阵 $A$ 作初等行变换，有
$ A=mat(1,1,1,1;2,2,2,2;3,3,3,3;4,4,4,4)->mat(1,1,1,1;0,0,0,0;0,0,0,0;0,0,0,0), $
故方程组的同解方程组为 $x_1+x_2+x_3+x_4=0$，其基础解系为
$ eta_1=(-1,1,0,0)^"T",quad eta_2=(-1,0,1,0)^"T",quad eta_3=(-1,0,0,1)^"T", $
于是所求方程组的通解为 $bold(x)=k_1 eta_1+k_2 eta_2+k_3 eta_3$，其中 $k_1,k_2,k_3$ 为任意常数.
当 $a=-10$ 时，对 $A$ 作初等行变换，有
$ A=mat(-9,1,1,1;2,-8,2,2;3,3,-7,3;4,4,4,-6)->mat(-9,1,1,1;20,-10,0,0;30,0,-10,0;40,0,0,-10) \
->mat(-9,1,1,1;-2,1,0,0;-3,0,1,0;-4,0,0,1)->mat(0,0,0,0;-2,1,0,0;-3,0,1,0;-4,0,0,1), $
故方程组的同解方程组为 $cases(x_2=2x_1,x_3=3x_1,x_4=4x_1)$，其基础解系为 $eta=(1,2,3,4)^"T"$，于是所求方程组的通解为 $bold(x)=k eta$，其中 $k$ 为任意常数.
]
]

#ezexam.question[
（本题满分9分）设矩阵 $A=mat(1,2,-3;-1,4,-3;1,a,5)$ 的特征方程有一个二重根，求 $a$ 的值，并讨论 $A$ 是否可相似对角化.
#ezexam.solution(show-number: false)[
解　$A$ 的特征多项式为
$ &mat(delim:"|",lambda-1,-2,3;1,lambda-4,3;-1,-a,lambda-5) \
=&mat(delim:"|",lambda-2,2-lambda,0;1,lambda-4,3;-1,-a,lambda-5) \
=&(lambda-2)mat(delim:"|",1,-1,0;1,lambda-4,3;-1,-a,lambda-5) \
=&(lambda-2)mat(delim:"|",1,0,0;1,lambda-3,3;-1,-a-1,lambda-5) \
=&(lambda-2)(lambda^2-8lambda+18+3a). $
若 $lambda=2$ 是特征方程的二重根，则有 $2^2-16+18+3a=0$，解得 $a=-2$.
当 $a=-2$ 时，$A$ 的特征值为2，2，6，矩阵 $2E-A=mat(1,-2,3;1,-2,3;-1,2,-3)$ 的秩为1，故 $lambda=2$ 对应的线性无关的特征向量有两个，从而 $A$ 可相似对角化.
若 $lambda=2$ 不是特征方程的二重根，则 $lambda^2-8lambda+18+3a$ 为完全平方，从而 $18+3a=16$，解得 $a=-2/3$.
当 $a=-2/3$ 时，$A$ 的特征值为2，4，4，矩阵 $4E-A=mat(3,-2,3;1,0,3;-1,2/3,-1)$ 的秩为2，故 $lambda=4$ 对应的线性无关的特征向量只有一个，从而 $A$ 不可相似对角化.
]
]

