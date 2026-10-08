#import "../template.typ": exam
#show: exam.with(year: 2004, subject: "一", title: "2004年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#ezexam.answer-state.update(true)


= 一、填空题（本题共6小题，每小题4分，满分24分）

#ezexam.question[
曲线 $y=ln x$ 上与直线 $x+y=1$ 垂直的切线方程为#h(3em).
#ezexam.solution(show-number: false)[
$y=x-1$.
]
]

#ezexam.question[
已知 $f'(e^x)=x e^(-x)$，且 $f(1)=0$，则 $f(x)=$#h(3em).
#ezexam.solution(show-number: false)[
$1/2 (ln x)^2$.
]
]

#ezexam.question[
设 $L$ 为正向圆周 $x^2+y^2=2$ 在第一象限中的部分，则曲线积分 $integral_L x dif y-2y dif x$ 的值为#h(3em).
#ezexam.solution(show-number: false)[
$3/2 pi$.
]
]

#ezexam.question[
欧拉方程 $x^2 (dif^2 y)/(dif x^2)+4x (dif y)/(dif x)+2y=0 (x>0)$ 的通解为#h(3em).
#ezexam.solution(show-number: false)[
$y=C_1/x+C_2/x^2$.
]
]

#ezexam.question[
设矩阵 $A=mat(2,1,0;1,2,0;0,0,1)$，矩阵 $B$ 满足 $A B A^*=2B A^*+E$，其中 $A^*$ 为 $A$ 的伴随矩阵，$E$ 是单位矩阵，则 $|B|=$#h(3em).
#ezexam.solution(show-number: false)[
$1/9$.
]
]

#ezexam.question[
设随机变量 $X$ 服从参数为 $lambda$ 的指数分布，则 $P{X>sqrt(D X)}=$#h(3em).
#ezexam.solution(show-number: false)[
$1/e$.
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
设函数 $f(x)$ 连续，且 $f'(0)>0$，则存在 $delta>0$，使得
#choices([$f(x)$ 在 $(0,delta)$ 内单调增加.],[$f(x)$ 在 $(-delta,0)$ 内单调减少.],[对任意的 $x in (0,delta)$，有 $f(x)>f(0)$.],[对任意的 $x in (-delta,0)$，有 $f(x)>f(0)$.])
#ezexam.solution(show-number: false)[
C.
]
]

#ezexam.question[
设 $sum_(n=1)^infinity a_n$ 为正项级数，下列结论中正确的是
#choices([若 $lim_(n->infinity) n a_n=0$，则级数 $sum_(n=1)^infinity a_n$ 收敛.],[若存在非零常数 $lambda$，使得 $lim_(n->infinity) n a_n=lambda$，则级数 $sum_(n=1)^infinity a_n$ 发散.],[若级数 $sum_(n=1)^infinity a_n$ 收敛，则 $lim_(n->infinity) n^2 a_n=0$.],[若级数 $sum_(n=1)^infinity a_n$ 发散，则存在非零常数 $lambda$，使得 $lim_(n->infinity) n a_n=lambda$.])
#ezexam.solution(show-number: false)[
B.
]
]

#ezexam.question[
设 $f(x)$ 为连续函数，$F(t)=integral_1^t dif y integral_y^t f(x) dif x$，则 $F'(2)$ 等于
#choices([$2f(2)$.],[$f(2)$.],[$-f(2)$.],[0.])
#ezexam.solution(show-number: false)[
B.
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

#ezexam.question[
设随机变量 $X$ 服从正态分布 $N(0,1)$，对给定的 $alpha (0<alpha<1)$，数 $u_alpha$ 满足 $P{X>u_alpha}=alpha$.若 $P{|X|<x}=alpha$，则 $x$ 等于
#choices([$u_(alpha/2)$.],[$u_(1-alpha/2)$.],[$u_((1-alpha)/2)$.],[$u_(1-alpha)$.])
#ezexam.solution(show-number: false)[
C.
]
]

#ezexam.question[
设随机变量 $X_1,X_2,dots,X_n (n>1)$ 独立同分布，且其方差为 $sigma^2>0$.令 $Y=1/n sum_(i=1)^n X_i$，则
#choices([$op("Cov")(X_1,Y)=sigma^2/n$.],[$op("Cov")(X_1,Y)=sigma^2$.],[$D(X_1+Y)=(n+2)/n sigma^2$.],[$D(X_1-Y)=(n+1)/n sigma^2$.])
#ezexam.solution(show-number: false)[
A.
]
]

= 三、解答题（本题共9小题，满分94分.解答应写出文字说明、证明过程或演算步骤.）

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
（本题满分12分）计算曲面积分
$ I=integral.double_Sigma 2x^3 dif y dif z+2y^3 dif z dif x+3(z^2-1) dif x dif y, $
其中 $Sigma$ 是曲面 $z=1-x^2-y^2 (z>=0)$ 的上侧.
#ezexam.solution(show-number: false)[
解　取 $Sigma_1$ 为 $x O y$ 平面上被圆 $x^2+y^2=1$ 所围部分的下侧，记 $Omega$ 为由 $Sigma$ 与 $Sigma_1$ 围成的空间闭区域，则
$ I=&integral.double_(Sigma+Sigma_1) 2x^3 dif y dif z+2y^3 dif z dif x+3(z^2-1) dif x dif y \
&-integral.double_(Sigma_1) 2x^3 dif y dif z+2y^3 dif z dif x+3(z^2-1) dif x dif y. $
由高斯公式知
$ &integral.double_(Sigma+Sigma_1) 2x^3 dif y dif z+2y^3 dif z dif x+3(z^2-1) dif x dif y \
=&integral.triple_Omega 6(x^2+y^2+z) dif x dif y dif z \
=&6integral_0^(2pi) dif theta integral_0^1 dif r integral_0^(1-r^2)(z+r^2)r dif z \
=&12pi integral_0^1 [1/2 r(1-r^2)^2+r^3(1-r^2)] dif r=2pi, $
而
$ &integral.double_(Sigma_1) 2x^3 dif y dif z+2y^3 dif z dif x+3(z^2-1) dif x dif y \
=&-integral.double_(x^2+y^2<=1)(-3) dif x dif y=3pi, $
因此 $I=2pi-3pi=-pi$.
]
]

#ezexam.question[
（本题满分11分）设有方程 $x^n+n x-1=0$，其中 $n$ 为正整数.证明此方程存在唯一正实根 $x_n$，并证明当 $a>1$ 时，级数 $sum_(n=1)^infinity x_n^a$ 收敛.
#ezexam.solution(show-number: false)[
证　记 $f_n(x)=x^n+n x-1$.
当 $x>0$ 时，$f_n'(x)=n x^(n-1)+n>0$，故 $f_n(x)$ 在 $[0,+infinity)$ 上单调增加.
而 $f_n(0)=-1<0,f_n(1)=n>0$，由连续函数的介值定理知 $x^n+n x-1=0$ 存在唯一正实根 $x_n$.
由 $x_n^n+n x_n-1=0$ 与 $x_n>0$ 知
$ 0<x_n=(1-x_n^n)/n<1/n, $
故当 $a>1$ 时，$0<x_n^a<(1/n)^a$.
而正项级数 $sum_(n=1)^infinity (1/n)^a$ 收敛，所以当 $a>1$ 时，级数 $sum_(n=1)^infinity x_n^a$ 收敛.
]
]

#ezexam.question[
（本题满分12分）设 $z=z(x,y)$ 是由 $x^2-6x y+10y^2-2y z-z^2+18=0$ 确定的函数，求 $z=z(x,y)$ 的极值点和极值.
#ezexam.solution(show-number: false)[
解　因为 $x^2-6x y+10y^2-2y z-z^2+18=0$，所以
$ 2x-6y-2y (partial z)/(partial x)-2z (partial z)/(partial x)=0, \
-6x+20y-2z-2y (partial z)/(partial y)-2z (partial z)/(partial y)=0. $
令 $cases((partial z)/(partial x)=0,(partial z)/(partial y)=0)$，得 $cases(x-3y=0,-3x+10y-z=0)$，故 $cases(x=3y,z=y)$.
将上式代入 $x^2-6x y+10y^2-2y z-z^2+18=0$，可得
$ cases(x=9,y=3,z=3) quad #text[或] quad cases(x=-9,y=-3,z=-3). $
由于
$ 2-2y (partial^2 z)/(partial x^2)-2((partial z)/(partial x))^2-2z (partial^2 z)/(partial x^2)=0, \
-6-2(partial z)/(partial x)-2y(partial^2 z)/(partial x partial y)-2(partial z)/(partial y) dot (partial z)/(partial x)-2z(partial^2 z)/(partial x partial y)=0, \
20-2(partial z)/(partial y)-2(partial z)/(partial y)-2y(partial^2 z)/(partial y^2)-2((partial z)/(partial y))^2-2z(partial^2 z)/(partial y^2)=0, $
所以
$ A=lr((partial^2 z)/(partial x^2))|_((9,3,3))=1/6,quad B=lr((partial^2 z)/(partial x partial y))|_((9,3,3))=-1/2, \
C=lr((partial^2 z)/(partial y^2))|_((9,3,3))=5/3, $
故 $A C-B^2=1/36>0$，又 $A=1/6>0$，从而点 $(9,3)$ 是 $z(x,y)$ 的极小值点，极小值为 $z(9,3)=3$.
类似地，由
$ A=lr((partial^2 z)/(partial x^2))|_((-9,-3,-3))=-1/6,quad B=lr((partial^2 z)/(partial x partial y))|_((-9,-3,-3))=1/2, \
C=lr((partial^2 z)/(partial y^2))|_((-9,-3,-3))=-5/3, $
可知 $A C-B^2=1/36>0$，又 $A=-1/6<0$，所以点 $(-9,-3)$ 是 $z(x,y)$ 的极大值点，极大值为 $z(-9,-3)=-3$.
]
]

#ezexam.question[
（本题满分9分）设有齐次线性方程组
$ cases((1+a)x_1+x_2+dots+x_n=0,2x_1+(2+a)x_2+dots+2x_n=0,dots,n x_1+n x_2+dots+(n+a)x_n=0) quad (n>=2) $
试问 $a$ 取何值时，该方程组有非零解，并求其通解.
#ezexam.solution(show-number: false)[
解法1　对方程组的系数矩阵 $A$ 作初等行变换，有
$ A=mat(1+a,1,1,dots,1;2,2+a,2,dots,2;dots.v,dots.v,dots.v,,dots.v;n,n,n,dots,n+a) \
->mat(1+a,1,1,dots,1;-2a,a,0,dots,0;dots.v,dots.v,dots.v,,dots.v;-n a,0,0,dots,a)=B. $
当 $a=0$ 时，$r(A)=1<n$，故方程组有非零解，其同解方程组为 $x_1+x_2+dots+x_n=0$，由此得基础解系为
$ eta_1=(-1,1,0,dots,0)^"T",quad eta_2=(-1,0,1,dots,0)^"T",dots, \
eta_(n-1)=(-1,0,0,dots,1)^"T", $
于是方程组的通解为 $bold(x)=k_1 eta_1+dots+k_(n-1) eta_(n-1)$，其中 $k_1,dots,k_(n-1)$ 为任意常数.

当 $a!=0$ 时，对矩阵 $B$ 作初等行变换，有
$ B->mat(1+a,1,1,dots,1;-2,1,0,dots,0;dots.v,dots.v,dots.v,,dots.v;-n,0,0,dots,1) \
->mat(a+(n(n+1))/2,0,0,dots,0;-2,1,0,dots,0;dots.v,dots.v,dots.v,,dots.v;-n,0,0,dots,1), $
可知 $a=-(n(n+1))/2$ 时，$r(A)=n-1<n$，故方程组也有非零解，其同解方程组为
$ cases(-2x_1+x_2=0,-3x_1+x_3=0,dots,-n x_1+x_n=0), $
由此得基础解系为 $eta=(1,2,dots,n)^"T"$，于是方程组的通解为 $bold(x)=k eta$，其中 $k$ 为任意常数.

解法2　方程组的系数行列式为
$ |A|=mat(delim:"|",1+a,1,1,dots,1;2,2+a,2,dots,2;dots.v,dots.v,dots.v,,dots.v;n,n,n,dots,n+a)=[a+(n(n+1))/2]a^(n-1). $
当 $|A|=0$，即 $a=0$ 或 $a=-(n(n+1))/2$ 时，方程组有非零解.
当 $a=0$ 时，对系数矩阵 $A$ 作初等行变换，有
$ A=mat(1,1,1,dots,1;2,2,2,dots,2;dots.v,dots.v,dots.v,,dots.v;n,n,n,dots,n) \
->mat(1,1,1,dots,1;0,0,0,dots,0;dots.v,dots.v,dots.v,,dots.v;0,0,0,dots,0), $
故方程组的同解方程组为 $x_1+x_2+dots+x_n=0$，由此得基础解系为
$ eta_1=(-1,1,0,dots,0)^"T",quad eta_2=(-1,0,1,dots,0)^"T",dots, \
eta_(n-1)=(-1,0,0,dots,1)^"T", $
于是方程组的通解为 $bold(x)=k_1 eta_1+dots+k_(n-1) eta_(n-1)$，其中 $k_1,dots,k_(n-1)$ 为任意常数.
当 $a=-(n(n+1))/2$ 时，对系数矩阵 $A$ 作初等行变换，有
$ A=mat(1+a,1,1,dots,1;2,2+a,2,dots,2;dots.v,dots.v,dots.v,,dots.v;n,n,n,dots,n+a) \
->mat(1+a,1,1,dots,1;-2a,a,0,dots,0;dots.v,dots.v,dots.v,,dots.v;-n a,0,0,dots,a) \
->mat(1+a,1,1,dots,1;-2,1,0,dots,0;dots.v,dots.v,dots.v,,dots.v;-n,0,0,dots,1) \
->mat(0,0,0,dots,0;-2,1,0,dots,0;dots.v,dots.v,dots.v,,dots.v;-n,0,0,dots,1), $
故方程组的同解方程组为
$ cases(-2x_1+x_2=0,-3x_1+x_3=0,dots,-n x_1+x_n=0), $
由此得基础解系为 $eta=(1,2,dots,n)^"T"$，于是方程组的通解为 $bold(x)=k eta$，其中 $k$ 为任意常数.
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

#ezexam.question[
（本题满分9分）设 $A,B$ 为随机事件，且 $P(A)=1/4,P(B|A)=1/3,P(A|B)=1/2$，令
$ X=cases(1 & A #text[发生],0 & A #text[不发生]),quad Y=cases(1 & B #text[发生],0 & B #text[不发生]). $
求：（Ⅰ）二维随机变量 $(X,Y)$ 的概率分布；

（Ⅱ）$X$ 与 $Y$ 的相关系数 $rho_(X Y)$.
#ezexam.solution(show-number: false)[
解　（Ⅰ）由于 $P(A B)=P(A)P(B|A)=1/12$，$P(B)=(P(A B))/(P(A|B))=1/6$，所以
$ P{X=1,Y=1}&=P(A B)=1/12, \
P{X=1,Y=0}&=P(A overline(B))=P(A)-P(A B)=1/6, \
P{X=0,Y=1}&=P(overline(A)B)=P(B)-P(A B)=1/12, \
P{X=0,Y=0}&=P(overline(A) overline(B))=P(overline(A union B)) \
&=1-P(A union B)=1-[P(A)+P(B)-P(A B)]=2/3, $
（或 $P{X=0,Y=0}=1-1/12-1/6-1/12=2/3$），故 $(X,Y)$ 的概率分布为
#table(columns:3,[$X \ Y$],[0],[1],[0],[$2/3$],[$1/12$],[1],[$1/6$],[$1/12$])
（Ⅱ）$X,Y$ 的概率分布分别为
#table(columns:3,[$X$],[0],[1],[$P$],[$3/4$],[$1/4$])
#table(columns:3,[$Y$],[0],[1],[$P$],[$5/6$],[$1/6$])
则 $E X=1/4,E Y=1/6,D X=3/16,D Y=5/36,E(X Y)=1/12$，故
$ op("Cov")(X,Y)=E(X Y)-(E X)(E Y)=1/24, $
从而 $rho_(X Y)=(op("Cov")(X,Y))/(sqrt(D X)sqrt(D Y))=sqrt(15)/15$.
]
]

#ezexam.question[
（本题满分9分）设总体 $X$ 的分布函数为
$ F(x;beta)=cases(1-1/x^beta & x>1,0 & x<=1), $
其中未知参数 $beta>1$，$X_1,X_2,dots,X_n$ 为来自总体 $X$ 的简单随机样本，求：

（Ⅰ）$beta$ 的矩估计量；

（Ⅱ）$beta$ 的最大似然估计量.
#ezexam.solution(show-number: false)[
解　$X$ 的概率密度为
$ f(x;beta)=cases(beta/x^(beta+1) & x>1,0 & x<=1). $
（Ⅰ）由于
$ E X=integral_(-infinity)^(+infinity) x f(x;beta) dif x=integral_1^(+infinity) x dot beta/x^(beta+1) dif x=beta/(beta-1). $
令 $beta/(beta-1)=overline(X)$，解得 $beta=overline(X)/(overline(X)-1)$，所以参数 $beta$ 的矩估计量为 $hat(beta)=overline(X)/(overline(X)-1)$.

（Ⅱ）似然函数为
$ L(beta)=product_(i=1)^n f(x_i;beta)=cases(beta^n/(x_1 x_2 dots x_n)^(beta+1) & x_i>1 (i=1,2,dots,n),0 & #text[其他]). $
当 $x_i>1 (i=1,2,dots,n)$ 时，$L(beta)>0$，取对数得
$ ln L(beta)=n ln beta-(beta+1)sum_(i=1)^n ln x_i, $
两边对 $beta$ 求导，得
$ (dif ln L(beta))/(dif beta)=n/beta-sum_(i=1)^n ln x_i. $
令 $(dif ln L(beta))/(dif beta)=0$，可得 $beta=n/(sum_(i=1)^n ln x_i)$，
故 $beta$ 的最大似然估计量为 $hat(beta)=n/(sum_(i=1)^n ln X_i)$.
]
]

