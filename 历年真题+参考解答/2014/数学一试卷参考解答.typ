#import "@preview/cetz:0.5.2" as cetz
#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2014, subject: "一", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2014 数学一试卷参考解答

= 一、选择题

#answer("1.")[
C. 【解】对于 $y=x+sin(1/x)$，有 $lim_(x->infinity)y/x=1$，$lim_(x->infinity)(y-x)=0$，故斜渐近线为 $y=x$. 其余选项中，$x+sin x$ 与直线 $y=x$ 的差没有极限，二次函数不可能有斜渐近线；各函数也没有水平或铅直渐近线.
]

#answer("2.")[
D. 【解】$f''(x)>=0$ 表明函数图形位于连接两端点的弦的下方，故 $f(x)<=f(0)(1-x)+f(1)x$. 仅有 $f'(x)>=0$ 不能得到 A、B：例如 $f(x)=(x-1/2)^3$，弦为 $g(x)=x/4-1/8$，而 $f(1/4)>g(1/4),f(3/4)<g(3/4)$. 取 $f(x)=x^2$ 又可排除 C.
]

#answer("3.")[
D. 【解】直角坐标积分域分为第一象限的三角形 $D_1$ 和第二象限的四分之一单位圆盘 $D_2$. 作极坐标变换，得
$ integral_0^(pi/2)dif theta integral_0^(1/(cos theta+sin theta))r f(r cos theta,r sin theta)dif r+integral_(pi/2)^pi dif theta integral_0^1 r f(r cos theta,r sin theta)dif r. $
【常见问题】应同时改变积分域和面积元素，不能遗漏雅可比因子 $r$.

#align(center,cetz.canvas({
 import cetz.draw: *
 line((0,0),(1.6,0),(0,1.6),close:true,fill:rgb("eeeeee"))
 line((0,0),..range(0,61).map(i=>{let a=90deg+i*1.5deg;(1.6*calc.cos(a),1.6*calc.sin(a))}),close:true,fill:rgb("dddddd"))
 line((-1.95,0),(2.1,0),mark:(end:">"));line((0,-.3),(0,2),mark:(end:">"))
 content((.5,.5),$D_1$);content((-.65,.65),$D_2$);content((2.1,0),$x$,anchor:"north");content((0,2),$y$,anchor:"east")
 content((-.1,-.1),$O$);content((-1.6,-.1),[-1],anchor:"north");content((1.6,-.1),[1],anchor:"north");content((-.1,1.6),[1],anchor:"east")
}))
]

#answer("4.")[
A. 【解法1】由傅里叶系数公式，
$ a_1=1/pi integral_(-pi)^pi x cos x dif x=0, quad b_1=1/pi integral_(-pi)^pi x sin x dif x=2. $
所以所求函数为 $2sin x$.
【解法2】记 $F(a,b)=integral_(-pi)^pi(x-a cos x-b sin x)^2 dif x$. 对积分号下的函数求导并积分，得
$ F'_a=2a pi, quad F'_b=2b pi-4pi. $
令两偏导数为零，得 $a=0,b=2$，从而所求函数为 $2sin x$.
]

#answer("5.")[
B. 【解】按第一列展开行列式，得
$ -a det mat(a,b,0;c,d,0;0,0,d)-c det mat(a,b,0;0,0,b;c,d,0) $
$ =-a d(a d-b c)+c b(a d-b c)=-(a d-b c)^2. $
]

#answer("6.")[
A. 【解】若 $alpha_1,alpha_2,alpha_3$ 线性无关，由
$ lambda_1(alpha_1+k alpha_3)+lambda_2(alpha_2+l alpha_3)=0 $
可得 $lambda_1=lambda_2=0$，故所给两个向量线性无关. 反之，取 $alpha_1,alpha_2$ 线性无关而 $alpha_3=0$，所给两个向量仍线性无关，但三个向量线性相关. 因而是必要但不充分条件.
]

#answer("7.")[
B. 【解法1】由独立性，$P(A-B)=P(A)-P(A)P(B)=0.3$，且 $P(B)=0.5$，所以 $P(A)=0.6$. 因而 $P(B-A)=0.5-0.6 times 0.5=0.2$.
【解法2】$A$ 与 $overline(B)$ 独立，故 $P(A)P(overline(B))=0.3$，得到同一结果.
【常见问题】事件独立与互不相容是不同的概念.
]

#answer("8.")[
D. 【解法1】记 $mu_i=E X_i,sigma_i^2=D X_i$. 则
$ E Y_1=E Y_2=(mu_1+mu_2)/2, quad D Y_2=(sigma_1^2+sigma_2^2)/4. $
由混合密度计算二阶矩，得
$ E Y_1^2=(sigma_1^2+mu_1^2+sigma_2^2+mu_2^2)/2, $
$ D Y_1=(sigma_1^2+sigma_2^2)/2+(mu_1-mu_2)^2/4>D Y_2. $
【解法2】令 $m=(mu_1+mu_2)/2$，则
$ D Y_1=1/2 E(X_1-m)^2+1/2 E(X_2-m)^2>=1/2(sigma_1^2+sigma_2^2)>D Y_2. $
]

= 二、填空题

#answer("9.")[
$2x-y-z=1$. 【解】
$ z'_x=2x(1-sin y)-y^2 cos x, quad z'_y=2y(1-sin x)-x^2 cos y. $
在 $(1,0)$ 处，两偏导数分别为 $2,-1$，所以切平面为 $-2(x-1)+y+(z-1)=0$，即 $2x-y-z=1$.
【常见问题】应区分切平面与法线，并注意法向量的符号.
]

#answer("10.")[
$1$. 【解】由函数的奇性和周期性，$f'$ 是周期为 $4$ 的偶函数. 在 $-2<x<0$ 上 $f'(x)=-2(x+1)$. 因 $f(0)=0$，故
$ f(7)=f(-1)=integral_0^(-1)f'(x)dif x=integral_0^(-1)-2(x+1)dif x=1. $

#align(center,cetz.canvas({
 import cetz.draw: *
 line((-2,2),(0,-2),(2,2));line((-2,0),(-2,2),stroke:(dash:"dashed"));line((2,0),(2,2),stroke:(dash:"dashed"))
 line((-2.5,0),(2.65,0),mark:(end:">"));line((0,-2.5),(0,2.7),mark:(end:">"))
 content((2.65,0),$x$,anchor:"north");content((0,2.7),$y$,anchor:"east");content((.15,.15),$O$)
 for x in (-2,-1,1,2){content((x,-.1),str(x),anchor:"north")}
 content((-.1,2),[2],anchor:"east");content((.1,-2),[-2],anchor:"west")
}))
]

#answer("11.")[
$x e^(2x+1)$. 【解】令 $u=y/x$，则 $y'=u+x u'$，方程化为 $u+x u'=u ln u$. 分离变量并积分，得
$ frac(dif u,u(ln u-1))=frac(dif x,x), quad ln u-1=C x. $
所以 $y=x e^(C x+1)$. 由 $y(1)=e^3$ 得 $C=2$，即 $y=x e^(2x+1)$.
【常见问题】应按要求写出 $y$ 的表达式，不能只写隐式关系.
]

#answer("12.")[
$pi$. 【解法1】取参数方程 $x=cos t,y=sin t,z=-sin t$，$t$ 从 $0$ 变到 $2pi$，则
$ integral.cont_L z dif x+y dif z=integral_0^(2pi)(sin^2 t-sin t cos t)dif t=pi. $
【解法2】取平面 $y+z=0$ 在柱面内的部分 $Sigma$，上侧为正. 由斯托克斯公式，
$ integral.cont_L z dif x+y dif z=integral.double_Sigma dif y dif z+dif z dif x $
$ =integral.double_(x^2+y^2<=1)(-z'_x-z'_y)dif x dif y=pi. $
【常见问题】曲线方向取反会误得 $-pi$.
]

#answer("13.")[
$[-2,2]$. 【解】配方得
$ f=(x_1+a x_3)^2-(x_2-2x_3)^2+(4-a^2)x_3^2. $
负惯性指数为 $1$，故 $4-a^2>=0$，即 $-2<=a<=2$.
【常见问题】等号成立时仍恰有一个负平方项，不能排除两个端点.
]

#answer("14.")[
$2/(5n)$. 【解】
$ E X^2=integral_theta^(2theta)x^2 frac(2x,3theta^2)dif x=5theta^2/2. $
因此 $E(c sum_(i=1)^n X_i^2)=5n c theta^2/2$. 由无偏性知 $5n c/2=1$，故 $c=2/(5n)$.
【常见问题】应正确计算二阶矩，并区分样本和总体的期望.
]

= 三、解答题

#answer("15.")[
$ &lim_(x->+infinity)(integral_1^x[t^2(e^(1/t)-1)-t]dif t)/(x^2 ln(1+1/x)) \
&=lim_(x->+infinity)(integral_1^x[t^2(e^(1/t)-1)-t]dif t)/x \
&=lim_(x->+infinity)[x^2(e^(1/x)-1)-x] \
&=lim_(x->+infinity)[x^2(1/x+1/(2x^2)+o(1/x^2))-x] \
&=lim_(x->+infinity)[1/2+x^2 dot o(1/x^2)]=1/2. $

【解法2】先以 $x$ 代换分母的等价量，再用洛必达法则. 令 $u=1/x$，得
$ I=lim_(u->0^+)frac(e^u-1-u,u^2)=lim_(u->0^+)frac(e^u-1,2u)=1/2. $
【解法3】直接用洛必达法则，再令 $t=1/x$，得
$ I=lim_(t->0^+)frac(e^t-1-t,2t ln(1+t)-t^2/(1+t)) $
$ =lim_(t->0^+)frac(e^t-1,2ln(1+t)+t^2/(1+t)^2) $
$ =lim_(t->0^+)frac(e^t,2/(1+t)+2t/(1+t)^3)=1/2. $
【常见问题】在差式 $x^2(e^(1/x)-1)-x$ 中直接以 $1/x$ 代换 $e^(1/x)-1$ 会误得 $0$；洛必达法则必须同时对分子、分母求导.
]

#answer("16.")[
在 $y^3+x y^2+x^2 y+6=0$ 两端关于 $x$ 求导，得
$ 3y^2 y'+y^2+2x y y'+2x y+x^2 y'=0. $
令 $y'=0$，得 $y=-2x$ 或 $y=0$（不适合方程，舍去）. 将 $y=-2x$ 代入方程得 $-6x^3+6=0$，解得 $x=1,f(1)=-2$.

在 $3y^2 y'+y^2+2x y y'+2x y+x^2 y'=0$ 两端关于 $x$ 求导，得
$ (3y^2+2x y+x^2)y''+2(3y+x)(y')^2+4(y+x)y'+2y=0. $
求得 $f''(1)=4/9>0$. 所以 $x=1$ 是函数 $f(x)$ 的极小值点，极小值为 $f(1)=-2$.

【另解】将原方程看作关于 $x$ 的二次方程，因 $y!=0$，有实数解的条件为
$ Delta=y^4-4y(y^3+6)>=0, quad y^4+8y<=0. $
解得 $-2<=y<0$，故函数的最小值为 $-2$，仅在 $x=1$ 取得. 该点也为极小值点.
【常见问题】仅由 $y'=0$ 不能直接断言极值；题目求的是隐函数 $y=f(x)$ 的极值，不能改求二元函数的极值.
]

#answer("17.")[
因为
$ (partial z)/(partial x)=f'(e^x cos y)e^x cos y, $
$ (partial^2 z)/(partial x^2)=f''(e^x cos y)e^(2x)cos^2 y+f'(e^x cos y)e^x cos y, $
$ (partial z)/(partial y)=-f'(e^x cos y)e^x sin y, $
$ (partial^2 z)/(partial y^2)=f''(e^x cos y)e^(2x)sin^2 y-f'(e^x cos y)e^x cos y, $
所以所给方程化为
$ f''(e^x cos y)e^(2x)=[4f(e^x cos y)+e^x cos y]e^(2x). $
从而函数 $f(u)$ 满足方程 $f''(u)=4f(u)+u$. 对应的齐次方程通解为 $f(u)=C_1 e^(2u)+C_2 e^(-2u)$，非齐次方程的一个特解为 $-u/4$，故通解为
$ f(u)=C_1 e^(2u)+C_2 e^(-2u)-u/4. $
由 $f(0)=0,f'(0)=0$ 得 $cases(C_1+C_2=0,2C_1-2C_2-1/4=0)$，解得 $C_1=1/16,C_2=-1/16$. 故
$ f(u)=1/16(e^(2u)-e^(-2u)-4u). $

【常见问题】链式求导时不能遗漏 $cos y$ 或 $e^x$；得到的是 $f''(u)-4f(u)=u$，其中 $f(u)$ 仍是未知函数，不能把它当成常数直接积分.
]

#answer("18.")[
设 $Sigma_1$ 为平面 $z=1$ 上被 $cases(x^2+y^2=1,z=1)$ 所围部分的下侧，$Sigma_1$ 与 $Sigma$ 所围成的空间区域记为 $Omega$，则
$ &integral.double_(Sigma+Sigma_1)(x-1)^3 dif y dif z+(y-1)^3 dif z dif x+(z-1)dif x dif y \
&=-integral.triple_Omega[3(x-1)^2+3(y-1)^2+1]dif x dif y dif z. $
由于
$ integral.double_(Sigma_1)(x-1)^3 dif y dif z+(y-1)^3 dif z dif x+(z-1)dif x dif y=0, $
$ integral.triple_Omega x dif x dif y dif z=integral.triple_Omega y dif x dif y dif z=0, $
所以 $I=-integral.triple_Omega(3x^2+3y^2+7)dif x dif y dif z$.
$ &integral.triple_Omega(3x^2+3y^2+7)dif x dif y dif z \
&=integral_0^(2pi)dif theta integral_0^1 dif r integral_(r^2)^1(3r^2+7)r dif z \
&=2pi integral_0^1 r(1-r^2)(3r^2+7)dif r=4pi. $
于是 $I=-4pi$.

【解法2】投影域为单位圆盘 $D$，$z'_x=2x,z'_y=2y$，因此
$ I=integral.double_D[-2x(x-1)^3-2y(y-1)^3+x^2+y^2-1]dif x dif y. $
由对称性，奇次项积分为零，故
$ I=-integral.double_D(2x^4+5x^2+2y^4+5y^2+1)dif x dif y $
$ =-integral_0^(2pi)dif theta integral_0^1[2r^4(cos^4 theta+sin^4 theta)+5r^2+1]r dif r $
$ =-7pi/2-8/3 integral_0^(pi/2)sin^4 theta dif theta=-4pi. $
【解法3】记三个积分分别为 $I_1=integral.double_Sigma(z-1)dif x dif y$，$I_2=integral.double_Sigma(x-1)^3 dif y dif z$，$I_3=integral.double_Sigma(y-1)^3 dif z dif x$. 由对称性 $I_2=I_3$，且
$ I_1=integral.double_D(x^2+y^2-1)dif x dif y=-pi/2. $
令 $Sigma_"前"$ 为 $x>=0$ 的曲面部分，利用有向面积元素的对称性，得
$ I_2=2integral.double_(Sigma_"前")(x^3+3x)dif y dif z $
$ =-2integral_(-1)^1 dif y integral_(y^2)^1[(z-y^2)^(3/2)+3(z-y^2)^(1/2)]dif z $
$ =-4integral_0^1[2/5(1-y^2)^(5/2)+2(1-y^2)^(3/2)]dif y $
$ =-4integral_0^(pi/2)(2/5 cos^6 t+2cos^4 t)dif t=-7pi/4. $
所以 $I=I_1+I_2+I_3=-4pi$.
还可补上下侧为正的底面 $z=0$ 和外侧为正的柱面 $x^2+y^2=1,0<=z<=1$，对所围区域利用高斯公式.
【常见问题】必须注意曲面的方向和柱坐标的积分限. 此处三重积分中 $z$ 的下限为 $r^2$，不是 $0$.
]

#answer("19.")[
（Ⅰ）因为 $cos a_n-cos b_n=a_n$，且 $0<a_n<pi/2,0<b_n<pi/2$，所以 $0<a_n<b_n$. 又因为 $sum_(n=1)^infinity b_n$ 收敛，所以 $lim_(n->infinity)b_n=0$，故 $lim_(n->infinity)a_n=0$.

（Ⅱ）因为
$ lim_(n->infinity)a_n/b_n^2&=lim_(n->infinity)(1-cos b_n)/b_n^2 dot a_n/(1-cos b_n) \
&=1/2 lim_(n->infinity)a_n/(1-cos b_n) \
&=1/2 lim_(n->infinity)a_n/(a_n+1-cos a_n)=1/2, $
且级数 $sum_(n=1)^infinity b_n$ 收敛，所以 $sum_(n=1)^infinity a_n/b_n$ 收敛.

（Ⅰ）【证法2】由 $cos x>1-x$（$0<x<pi/2$），得 $cos a_n-a_n=cos b_n>1-b_n$，故 $b_n-a_n>1-cos a_n>0$. 于是 $0<a_n<b_n->0$.
【证法3】令 $f(x)=cos x-x$，在 $[0,pi/2]$ 上严格递减，故反函数连续. 因 $a_n=f^(-1)(cos b_n)$，所以
$ lim a_n=f^(-1)(1)=0. $
（Ⅱ）【证法2】由拉格朗日中值定理，存在 $a_n<xi_n<b_n$，使
$ a_n/b_n=frac(cos a_n-cos b_n,b_n)=sin xi_n frac(b_n-a_n,b_n) $
$ <sin b_n frac(b_n-a_n,b_n)<b_n-a_n<b_n. $
由正项级数比较判别法，$sum a_n/b_n$ 收敛.
【常见问题】证明数列收敛时，不能预先假设其极限存在，再对等式两边取极限.
]

#answer("20.")[
（Ⅰ）对矩阵 $A$ 施以初等行变换
$ A=mat(1,-2,3,-4;0,1,-1,1;1,2,0,-3)arrow.r mat(1,0,0,1;0,1,0,-2;0,0,1,-3), $
则方程组 $A x=0$ 的一个基础解系为 $alpha=mat(-1;2;3;1)$.

（Ⅱ）对矩阵 $(A colon E)$ 施以初等行变换
$ &mat(1,-2,3,-4,1,0,0;0,1,-1,1,0,1,0;1,2,0,-3,0,0,1,augment: #4) \
&arrow.r mat(1,0,0,1,2,6,-1;0,1,0,-2,-1,-3,1;0,0,1,-3,-1,-4,1,augment: #4). $
记 $E=(e_1,e_2,e_3)$，则
$ A x=e_1 $ 的通解为 $x=mat(2;-1;-1;0)+k_1 alpha$；

$ A x=e_2 $ 的通解为 $x=mat(6;-3;-4;0)+k_2 alpha$；

$ A x=e_3 $ 的通解为 $x=mat(-1;1;1;0)+k_3 alpha$，其中 $k_1,k_2,k_3$ 为任意常数.

于是，所求矩阵为
$ B=mat(2,6,-1;-1,-3,1;-1,-4,1;0,0,0)+(k_1 alpha,k_2 alpha,k_3 alpha), $
$k_1,k_2,k_3$ 为任意常数.

也可将全部解写成
$ B=mat(2-k_1,6-k_2,-1-k_3;-1+2k_1,-3+2k_2,1+2k_3;-1+3k_1,-4+3k_2,1+3k_3;k_1,k_2,k_3). $
【常见问题】非齐次方程的通解为一个特解加齐次通解，任意常数不能乘在特解上；矩阵方程 $A B=E$ 应逐列化为 $A beta_i=e_i$.
]

#answer("21.")[
设 $A=mat(1,1,dots,1;1,1,dots,1;dots.v,dots.v,,dots.v;1,1,dots,1),B=mat(0,dots,0,1;0,dots,0,2;dots.v,,dots.v,dots.v;0,dots,0,n)$.
因为
$ |lambda E-A|=mat(delim: "|", lambda-1,-1,dots,-1;-1,lambda-1,dots,-1;dots.v,dots.v,,dots.v;-1,-1,dots,lambda-1)=(lambda-n)lambda^(n-1), $
$ |lambda E-B|=mat(delim: "|", lambda,0,dots,-1;0,lambda,dots,-2;dots.v,dots.v,,dots.v;0,0,dots,lambda-n)=(lambda-n)lambda^(n-1), $
所以 $A$ 与 $B$ 有相同的特征值 $lambda_1=n,lambda_2=0$（$n-1$ 重）.

由于 $A$ 为实对称矩阵，所以 $A$ 相似于对角矩阵 $Lambda=mat(n,0,dots,0;0,0,dots,0;dots.v,dots.v,dots.down,dots.v;0,0,dots,0)$.

因为 $"r"(lambda_2 E-B)="r"(B)=1$，所以 $B$ 对应于特征值 $lambda_2=0$ 有 $n-1$ 个线性无关的特征向量，于是 $B$ 也相似于 $Lambda$. 故 $A$ 与 $B$ 相似.

【证法1】除利用实对称性外，也可直接由 $r(A)=r(B)=1$ 得两矩阵的零特征值的特征空间维数均为 $n-1$. 非零特征值 $n$ 是单根，其特征空间维数为 $1$. 因而两矩阵都相似于 $op("diag")(0,dots,0,n)$，于是彼此相似.
【证法3】记 $e,theta$ 分别为分量均为 $1,0$ 的 $n-1$ 维列向量，$f=(-1/n,-2/n,dots,-(n-1)/n)^T$. 令
$ P_1=mat(E_(n-1),e;theta^T,1), quad P_2=mat(E_(n-1),theta;-e^T/n,1), $
$ P_3=mat(E_(n-1),-f;theta^T,1). $
三者均可逆，且
$ P_1^(-1)=mat(E_(n-1),-e;theta^T,1), quad P_2^(-1)=mat(E_(n-1),theta;e^T/n,1), $
$ P_3^(-1)=mat(E_(n-1),f;theta^T,1). $
直接计算得
$ P_2^(-1)P_1^(-1)A P_1 P_2=op("diag")(0,dots,0,n)=P_3 B P_3^(-1). $
所以 $(P_1 P_2 P_3)^(-1)A(P_1 P_2 P_3)=B$，两矩阵相似.
【常见问题】秩相等不能推出相似. 相似与合同也不能混淆；非对称实矩阵不能直接套用实对称矩阵的正交对角化结论.
]

#answer("22.")[
（Ⅰ）
$ F_Y(y)&=P{Y<=y}=P{X=1}P{Y<=y bar X=1}+P{X=2}P{Y<=y bar X=2} \
&=1/2 P{Y<=y bar X=1}+1/2 P{Y<=y bar X=2}. $
当 $y<0$ 时，$F_Y(y)=0$；当 $0<=y<1$ 时，$F_Y(y)=3y/4$；当 $1<=y<2$ 时，$F_Y(y)=1/2+y/4$；当 $y>=2$ 时，$F_Y(y)=1$. 所以
$ F_Y(y)=cases(0 & y<0,3y/4 & 0<=y<1,1/2+y/4 & 1<=y<2,1 & y>=2). $

（Ⅱ）随机变量 $Y$ 的概率密度为
$ f_Y(y)=cases(3/4 & 0<y<1,1/4 & 1<=y<2,0 & "其他"). $
$ E Y=integral_(-infinity)^(+infinity)y f_Y(y)dif y=integral_0^1 3/4 y dif y+integral_1^2 1/4 y dif y=3/4. $

（Ⅰ）【解法2】条件密度分别为 $f(y bar X=1)=cases(1 & 0<y<1,0 & "其他")$，$f(y bar X=2)=cases(1/2 & 0<y<2,0 & "其他")$. 按全概率公式将两密度加权相加，得上述 $f_Y(y)$，再由 $F_Y(y)=integral_(-infinity)^y f_Y(t)dif t$ 得分布函数.
（Ⅱ）【解法2】因 $E(Y bar X=1)=1/2,E(Y bar X=2)=1$，故
$ E Y=P(X=1)E(Y bar X=1)+P(X=2)E(Y bar X=2)=3/4. $
【常见问题】当 $1<=y<2$ 时，$P(Y<=y bar X=1)=1$，不能遗漏该部分；求期望应对密度积分，不能把分布函数当作密度.
]

#answer("23.")[
（Ⅰ）总体 $X$ 的概率密度为 $f(x;theta)=cases((2x)/theta e^(-x^2/theta) & x>=0,0 & x<0)$.
$ E X&=integral_0^(+infinity)x dot (2x)/theta e^(-x^2/theta)dif x \
&=-integral_0^(+infinity)x dif e^(-x^2/theta) \
&=integral_0^(+infinity)e^(-x^2/theta)dif x \
&=sqrt(pi theta)/2 dot 1/sqrt(pi theta)integral_(-infinity)^(+infinity)e^(-x^2/theta)dif x=sqrt(pi theta)/2, $
$ E X^2&=integral_0^(+infinity)x^2 dot (2x)/theta e^(-x^2/theta)dif x \
&=theta integral_0^(+infinity)u e^(-u)dif u=theta. $

（Ⅱ）设 $x_1,x_2,dots,x_n$ 为样本观测值，似然函数为
$ L(theta)&=product_(i=1)^n f(x_i;theta) \
=cases((2^n x_1 x_2 dots x_n)/theta^n e^(-1/theta sum_(i=1)^n x_i^2) & x_1,x_2,dots,x_n>0,0 & "其他"). $
当 $x_1,x_2,dots,x_n>0$ 时，
$ ln L(theta)=n ln 2+sum_(i=1)^n ln x_i-n ln theta-1/theta sum_(i=1)^n x_i^2. $
令 $(dif ln L(theta))/(dif theta)=-n/theta+1/theta^2 sum_(i=1)^n x_i^2=0$，得 $theta$ 的最大似然估计值为 $hat(theta)_n=1/n sum_(i=1)^n x_i^2$. 从而最大似然估计量为
$ hat(theta)_n=1/n sum_(i=1)^n X_i^2. $

（Ⅲ）存在，$a=theta$. 因为 $X_n^2$ 是独立同分布的随机变量序列，且 $E X_1^2=theta<+infinity$，所以根据辛钦大数定律，当 $n->infinity$ 时，$hat(theta)_n=1/n sum_(i=1)^n X_i^2$ 依概率收敛于 $E X_1^2$，即 $theta$. 所以对任何 $epsilon>0$ 都有
$ lim_(n->infinity)P{|hat(theta)_n-theta|>=epsilon}=0. $

【常见问题】求期望和似然函数均须使用概率密度，而不是分布函数. 似然函数为各样本密度的乘积，不能先把样本平均再代入总体密度. 第（Ⅲ）问考查估计量的相合性，应使用大数定律.
]

