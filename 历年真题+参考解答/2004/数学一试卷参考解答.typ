#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2004, subject: "一", title: "2004年全国硕士研究生入学统一考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2004 数学一试卷参考解答

= 一、填空题

#answer("1.")[
*分析* 考查导数的几何意义及两直线垂直的条件.
*解* $y'=1/x$，所求切线斜率为1，故切点横坐标 $x=1$，切点 $(1,0)$，切线方程 $y=x-1$.
]

#answer("2.")[
*分析* 可先换元求导函数再积分，也可先对复合函数求导后积分.
*解法1* 令 $t=e^x$，则 $f'(t)=ln(t)/t$，故 $f(t)=1/2(ln t)^2+C$. 由 $f(1)=0$ 得 $C=0$，所以 $f(x)=1/2(ln x)^2$.
*解法2* $[f(e^x)]'=e^x f'(e^x)=x$，故 $f(e^x)=x^2/2+C$. 换回变量，$f(t)=1/2(ln t)^2+C$，由初值确定 $C=0$.
]

#answer("3.")[
*分析* 可使用参数方程，也可补线段后用格林公式.
*解法1* 参数方程 $x=sqrt(2)cos t,y=sqrt(2)sin t$，$t$ 从0到 $pi/2$，所以
$ integral_L x dif y-2y dif x=integral_0^(pi/2)(2cos^2 t+4sin^2 t)dif t=2integral_0^(pi/2)(1+sin^2 t)dif t=3pi/2. $
*解法2* 补上 $L_1:x=0$（$y$ 从 $sqrt(2)$ 到0）与 $L_2:y=0$（$x$ 从0到 $sqrt(2)$）. 两段上的积分均为零. 由格林公式，
$ integral_L x dif y-2y dif x=integral.double_D 3dif x dif y=3pi/2. $
*解法3* 补弦 $bar(L):x+y=sqrt(2)$，$x$ 从0到 $sqrt(2)$，形成弓形区域 $D$，则
$ integral_L x dif y-2y dif x=3integral.double_D dif x dif y-integral_0^(sqrt(2))[-x-2(sqrt(2)-x)]dif x=3(pi/2-1)+3=3pi/2. $
]

#answer("4.")[
*分析* 用 $x=e^t$ 将欧拉方程化为常系数线性微分方程.
*解* 记 $D=dif/dif t$，则原方程化为 $D(D-1)y+4D y+2y=0$，即
$ frac(dif^2 y,dif t^2)+3frac(dif y,dif t)+2y=0. $
特征根为−1、−2，故 $y=C_1 e^(-t)+C_2 e^(-2t)$，换回 $x$ 得 $y=C_1/x+C_2/x^2$.
]

#answer("5.")[
*分析* 只要求 $det B$，可直接对矩阵等式取行列式，不必先求 $B$.
*解* 原式化为 $(A-2E)B A^*=E$，取行列式得 $det(A-2E)det B det(A^*)=1$.
由 $det A=3$ 得 $det(A^*)=3^2=9$；又
$ det(A-2E)=mat(delim:"|",0,1,0;1,0,0;0,0,-1)=1, $
所以 $det B=1/9$.
*注* 也可以先求 $B=(A-2E)^(-1)(A^*)^(-1)$ 再取行列式，但计算量较大.
]

#answer("6.")[
*分析* 使用指数分布的概率密度与方差.
*解* $D X=1/lambda^2$，所以
$ P{X>sqrt(D X)}=P{X>1/lambda}=integral_(1/lambda)^infinity lambda e^(-lambda x)dif x=1/e. $
*典型错误* 没有把 $D X$ 看作确定常数，或记错指数分布的概率密度及数字特征.
]

= 二、选择题

#answer("7.")[
*分析* 比较无穷小的阶，可用洛必达法则及变上限积分求导.
*解法1* 当 $x->0^+$ 时，
$ lim frac(alpha,beta)=lim frac(cos(x^2),2x tan x)=+infinity, $
$ lim frac(beta,gamma)=lim frac(2x tan x,frac(1,2sqrt(x))sin(x sqrt(x)))=0, $
$ lim frac(alpha,gamma)=lim frac(cos(x^2),frac(1,2sqrt(x))sin(x sqrt(x)))=+infinity. $
故 $gamma$ 比 $alpha$ 高阶，$beta$ 比 $gamma$ 高阶，排列 $alpha,gamma,beta$，选 B.
*解法2* $alpha'=cos(x^2)~1,beta'=2x tan x~2x^2,gamma'=sin(x sqrt(x))/(2sqrt(x))~x/2$. 导数的阶依次为0、2、1，故原函数的阶依次为1、3、2，仍得相同顺序.
]

#answer("8.")[
*分析* 用导数定义和极限保号性；一点导数的符号不能保证邻域单调.
*解* $f'(0)=lim_(x->0)(f(x)-f(0))/x>0$，故存在 $delta>0$，使 $0<abs(x)<delta$ 时差商为正. 对 $0<x<delta$，即 $f(x)>f(0)$，所以选 C.
*典型错误* 仅由 $f'(0)>0$ 就断言附近函数单调递增. 单调性判定需要整个区间内导数不变号.
]

#answer("9.")[
*分析* 用正项级数的极限比较判别法，与调和级数比较.
*解* 若 $n a_n->lambda!=0$，则 $lambda>0$，且 $a_n$ 与 $1/n$ 同阶，故 $sum a_n$ 发散，选 B.
取 $a_n=1/(n ln n)$（从 $n=2$ 开始），其级数发散但 $n a_n->0$，否定 A、D；取 $a_n=1/(n sqrt(n))$，级数收敛而 $n^2 a_n->infinity$，否定 C.
]

#answer("10.")[
*分析* 可交换积分次序再求导，也可使用含参积分求导公式.
*解法1* $F(t)=integral_1^t dif x integral_1^x f(x)dif y=integral_1^t(x-1)f(x)dif x$，所以 $F'(t)=(t-1)f(t)$，$F'(2)=f(2)$，选 B.
*解法2* 直接求导，
$ F'(t)=integral_t^t f(x)dif x+integral_1^t f(t)dif y=(t-1)f(t). $
]

#answer("11.")[
*分析* 初等列变换等价于右乘相应初等矩阵.
*解* $C=A E_1 E_2$，其中
$ E_1=mat(0,1,0;1,0,0;0,0,1),quad E_2=mat(1,0,0;0,1,1;0,0,1). $
所以 $Q=E_1 E_2=mat(0,1,1;1,0,0;0,0,1)$，选 D.
*注* 也可以对单位矩阵依次作题设的两次列变换，直接得到 $Q$.
]

#answer("12.")[
*分析* 可用一个反例排除错误选项；也可由齐次方程组的非零解推导.
*解法1* 取 $A=(1,0),B=(0,1)^T$，有 $A B=0$. $A$ 的列向量组相关而行向量组无关；$B$ 的行向量组相关而列向量组无关. 故只能选 A.
*解法2* $B$ 非零，所以 $A x=0$ 有非零解，故 $A$ 的列向量组相关. 又 $B^T A^T=0$，$A^T$ 非零，故 $B^T x=0$ 有非零解，即 $B$ 的行向量组相关.
*典型错误* 混淆“非零解对应列向量组相关”与行向量组相关.
]

#answer("13.")[
*分析* 使用标准正态分布对称性及上侧分位数的定义.
*解* 因 $P{X<=-x}=P{X>=x}$，有
$ alpha=P{abs(X)<x}=1-[P{X>=x}+P{X<=-x}]=1-2P{X>=x}. $
所以 $P{X>x}=(1-alpha)/2$，从而 $x=u_((1-alpha)/2)$，选 C.
*典型错误* 没有理解 $u_alpha$ 指上侧分位数.
]

#answer("14.")[
*分析* 使用方差、协方差的线性运算性质及独立性.
*解* $op("Cov")(X_1,Y)=1/n op("Cov")(X_1,X_1)+1/n sum_(i=2)^n op("Cov")(X_1,X_i)=sigma^2/n$，选 A. 此处独立性保证 $i!=1$ 时协方差为零.
*注* $D(X_1+Y)=((n+1)^2+n-1)/n^2 sigma^2=(n+3)/n sigma^2$，$D(X_1-Y)=((n-1)^2+n-1)/n^2 sigma^2=(n-1)/n sigma^2$，故 C、D不成立.
*典型错误* 误认为 $X_1$ 与包含它的样本均值 $Y$ 独立，直接把两者方差相加.
]

= 三、解答题

#answer("15.")[
*分析* 将不等式化为函数不等式，利用单调性或微分中值定理证明，辅助函数可以有不同选法.


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


*注* 也可以构造 $phi(x)=ln^2 x-4x/e^2-ln^2 a+4a/e^2$，或 $phi(x)=e^2 ln^2 x-4x$，再研究单调性.
]

#answer("16.")[
*分析* 由速度的物理意义和牛顿第二定律建立微分方程，再求解并计算速度趋零时的滑行距离. 关键是正确建立阻力与速度成正比的模型.


解　由题设，飞机的质量 $m=9000$ kg，着陆时的速度 $v_0=700$ km/h. 从飞机接触跑道开始计时，设 $t$ 时刻飞机的滑行距离为 $x(t)$，速度为 $v(t)$.

法1　根据牛顿第二定律，得 $m (dif v)/(dif t)=-k v$，又
$ (dif v)/(dif t)=(dif v)/(dif x) dot (dif x)/(dif t)=v (dif v)/(dif x), $
由以上二式得 $dif x=-m/k dif v$.
积分得 $x(t)=-m/k v+C$. 由于 $v(0)=v_0,x(0)=0$，故得 $C=m/k v_0$，从而
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

#answer("17.")[
*分析* 可以投影成二重积分直接计算，也可以补平面后使用高斯公式化成三重积分，后者计算较简便.


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


*注* 高斯公式中的三重积分也可以先按 $z$ 分层：
$ 6integral_0^1 dif z integral_0^(2pi)dif theta integral_0^(sqrt(1-z))(r^2+z)r dif r=2pi. $
*解法2* 设 $D={ (x,y)|x^2+y^2<=1 }$. 曲面为 $z=1-x^2-y^2$，上侧法向对应 $(-z_x,-z_y,1)=(2x,2y,1)$，所以
$ I=integral.double_D[4x^4+4y^4+3((1-x^2-y^2)^2-1)]dif x dif y $
$ =integral_0^(2pi)dif theta integral_0^1[4r^4(cos^4 theta+sin^4 theta)+3r^4-6r^2]r dif r=-pi. $
]

#answer("18.")[
*分析* 用连续函数零点存在定理与单调性证明唯一根，再估计根并用正项级数比较判别法及 $p$ 级数收敛性证明.


证　记 $f_n(x)=x^n+n x-1$.
当 $x>0$ 时，$f_n'(x)=n x^(n-1)+n>0$，故 $f_n(x)$ 在 $[0,+infinity)$ 上单调增加.
而 $f_n(0)=-1<0,f_n(1)=n>0$，由连续函数的介值定理知 $x^n+n x-1=0$ 存在唯一正实根 $x_n$.
由 $x_n^n+n x_n-1=0$ 与 $x_n>0$ 知
$ 0<x_n=(1-x_n^n)/n<1/n, $
故当 $a>1$ 时，$0<x_n^a<(1/n)^a$.
而正项级数 $sum_(n=1)^infinity (1/n)^a$ 收敛，所以当 $a>1$ 时，级数 $sum_(n=1)^infinity x_n^a$ 收敛.


*注* 也可以由 $f_n(0)=-1<0,f_n(1/n)=1/n^n>0$ 直接得到 $0<x_n<1/n$. 或由 $f_n(0)<0$ 与 $lim_(x->infinity)f_n(x)=infinity$ 证明正根存在.
]

#answer("19.")[
*分析* 隐函数极值题先求一阶偏导确定驻点，再求二阶偏导并判别.


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


*注1* 也可对原等式取全微分：
$ 2x dif x-6(y dif x+x dif y)+20y dif y-2(z dif y+y dif z)-2z dif z=0. $
因此 $dif z=(x-3y)/(y+z)dif x+(-3x+10y-z)/(y+z)dif y$，可读出两偏导数.
*注2* 也可将其看作约束 $x^2-6x y+10y^2-2y z-z^2+18=0$ 下求 $z$ 的条件极值问题.
*注3* 本题还可配方成 $2z^2=18+(x-3y)^2+(y-z)^2$，从而在 $x=3y,z=y$ 时取得极值.
]

#answer("20.")[
*分析* 可用初等行变换或系数行列式为零确定参数. 参数有两个取值，应分别求出通解.


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


*典型错误* 只由观察求出 $a=0$ 而漏掉 $a=-n(n+1)/2$；不会求 $x_1+x_2+dots+x_n=0$ 的基础解系.
]

#answer("21.")[
*分析* 先求特征多项式，用二重根条件确定参数，再根据重特征值对应特征子空间的维数判断可否相似对角化.


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


*典型错误* 只令二次因子成为完全平方，漏掉特征值2成为二重根的情况；判断对角化时反复求特征向量，未利用矩阵秩确定特征子空间维数.
]

#answer("22.")[
*分析* 将联合分布的各概率转化为随机事件概率，再求边缘分布及相关系数.


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


*典型错误* 不会将联合分布转为事件概率计算；不熟悉离散随机变量相关系数的求法；计算过程出现算术错误.
]

#answer("23.")[
*分析* 先由分布函数求密度，再分别使用矩估计和最大似然估计的基本方法.


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


*典型错误* 将分布函数误当作概率密度，写出 $L(beta)=product_(i=1)^n F(x_i;beta)$；或不会构造似然函数.
]

