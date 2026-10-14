#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2006, subject: "一", title: "2006年全国硕士研究生入学统一考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2006 数学一试卷参考解答

= 一、填空题

#answer("1.")[
*分析* 本题为 $0/0$ 型不定式，等价无穷小替换较为方便，也可用洛必达法则.
*解法1* 当 $x->0$ 时，$ln(1+x)~x$，$1-cos x~x^2/2$，故
$ lim_(x->0)frac(x ln(1+x),1-cos x)=lim_(x->0)frac(x^2,x^2/2)=2. $
*解法2* 用洛必达法则：
$ lim_(x->0)frac(x ln(1+x),1-cos x)=lim_(x->0)frac(ln(1+x)+x/(1+x),sin x)=lim_(x->0)frac(1/(1+x)+1/(1+x)^2,cos x)=2. $
]

#answer("2.")[
*分析* 此为变量可分离方程，也可作为一阶线性方程求解.
*解* 分离变量得 $dif y/y=(1-x)/x dif x$，两边积分得 $ln|y|=ln|x|-x+C_1$. 去掉对数符号，$|y|=e^(C_1)|x|e^(-x)$. 改写常数并允许其取正、负值，得 $y=C x e^(-x)$. 由于 $y=0$ 也是原方程的解，$C$ 还可以取 0，故通解为 $y=C x e^(-x)$，其中 $C$ 为任意常数.
*典型错误* 写成 $ln y=ln x-x+C$ 或 $y=e^C e^(-x)e^(ln x)$，会要求 $x>0,y>0$；写成 $y=e^C x e^(-x)$，会限制 $x,y$ 同号；写成 $y=e^C |x|e^(-x)$，会限制 $y$ 为正. 应牢记 $integral dif x/x=ln|x|+C$.
]

#answer("3.")[
*分析* 本题为非封闭曲面上的第二型曲面积分，可用投影法，或添曲面后用高斯公式.
*解* 添曲面 $Sigma_1: z=1,x^2+y^2<=1$ 的上侧. 记 $Omega$ 为两曲面围成的区域，由高斯公式，
$ I=integral.double_(Sigma union Sigma_1)x dif y dif z+2y dif z dif x+3(z-1)dif x dif y\
-integral.double_(Sigma_1)x dif y dif z+2y dif z dif x+3(z-1)dif x dif y\
=integral.triple_Omega 6dif V. $
添上的积分为 0，因为 $Sigma_1$ 垂直于 $y O z$ 与 $x O z$ 平面，且 $z=1$，故三个分项都为 0.
*方法1* 用球面坐标，$z=1$ 对应 $rho=1/cos phi.alt$，因此
$ I=integral_0^(2pi)dif theta integral_0^(pi/4)dif phi.alt integral_0^(1/cos phi.alt)6rho^2 sin phi.alt dif rho=integral_0^(2pi)dif theta integral_0^(pi/4)frac(2sin phi.alt,cos^3 phi.alt)dif phi.alt=2pi. $
*方法2* 用柱面坐标，
$ I=integral_0^(2pi)dif theta integral_0^1 dif r integral_r^1 6r dif z=6integral_0^(2pi)dif theta integral_0^1(1-r)r dif r=2pi. $
使用高斯公式必须添曲面，本题添上的积分恰为 0，其他题中未必如此.
*典型错误* 填成 $-2pi$，可能是把上、下侧弄反.
]

#answer("4.")[
*解* 由点到平面的距离公式，
$ d=frac(|A x_0+B y_0+C z_0+D|,sqrt(A^2+B^2+C^2))=frac(|6+4+0|,sqrt(9+16+25))=sqrt(2). $
]

#answer("5.")[
*分析* 先进行矩阵推导，再计算行列式.
*解* 由 $B A=B+2E$ 得 $B(A-E)=2E$，所以 $|B||A-E|=|2E|=4$. 又
$ |A-E|=det(1,1;-1,1)=2, $
故 $|B|=2$.
]

#answer("6.")[
*分析* 考查均匀分布与随机变量相互独立.
*解* $P\{max\{X,Y\}<=1\}=P\{X<=1,Y<=1\}=P\{X<=1\}P\{Y<=1\}=1/3 dot 1/3=1/9$.
]

= 二、选择题

#answer("7.")[
选 A.
*分析* 考查增量与微分的大小和符号，可以排除错误选项，也可以图示或论证.
*解法1* 取 $f(x)=x^2,x>0$. 则 $dif y=2x_0 Delta x>0$，$Delta y=2x_0 Delta x+(Delta x)^2>dif y$，故 B、C、D 都不成立.
*解法2* 曲线上点 $A(x_0,f(x_0))$ 的切线在曲线下方. 在 $x_0+Delta x$ 处，曲线的纵坐标增量 $Delta y$ 大于切线的纵坐标增量 $dif y=f'(x_0)Delta x>0$，故选 A.
*解法3* 两次使用拉格朗日中值定理，
$ Delta y-dif y=(f'(xi)-f'(x_0))Delta x=f''(eta)(xi-x_0)Delta x>0, $
其中 $x_0<eta<xi<x_0+Delta x$. 又 $dif y=f'(x_0)Delta x>0$，故选 A.
*解法4* 用带拉格朗日余项的一阶泰勒公式，$Delta y-dif y=f''(xi)(Delta x)^2/2>0$，又 $dif y>0$，故选 A.

#import "@preview/cetz:0.5.2" as cetz
#align(center,cetz.canvas({
 import cetz.draw: *
 line((-.3,0),(3.6,0),mark:(end:">"));line((0,-.3),(0,4.5),mark:(end:">"))
 line(..range(0,101).map(i=>{let x=i/100*2.8;(x,.5*x*x+.3)}))
 line((.6,.4),(2.7,2.5))
 line((1,0),(1,.8),stroke:(dash:"dashed"));line((2.5,0),(2.5,3.425),stroke:(dash:"dashed"))
 line((1,.8),(2.5,.8),stroke:(dash:"dashed"))
 content((1,.8),$A$,anchor:"south-east");content((2.5,.8),$B$,anchor:"north-west")
 content((2.5,2.3),$C$,anchor:"north-west");content((2.5,3.425),$D$,anchor:"south-west")
 content((1,0),$x_0$,anchor:"north");content((2.5,0),$x_0+Delta x$,anchor:"north")
 content((3.7,0),$x$);content((0,4.65),$y$);content((-.15,-.15),$O$)
 content((2.9,1.55),$dif y$);content((3.25,2.6),$Delta y$)
}))
]

#answer("8.")[
选 C.
*分析* 将极坐标下的二次积分还原为直角坐标下的二次积分，关键是确定积分区域.
*解* 极坐标下 $D=\{(r,theta)|0<=r<=1,0<=theta<=pi/4\}$，直角坐标下
$ D=\{(x,y)|y<=x<=sqrt(1-y^2),0<=y<=sqrt(2)/2\}. $
故应选 C.

#import "@preview/cetz:0.5.2" as cetz
#align(center,cetz.canvas({
 import cetz.draw: *
 line((0,0),..range(0,61).map(i=>{let t=i/60*45deg;(3*calc.cos(t),3*calc.sin(t))}),close:true,fill:rgb("dddddd"))
 line((-.3,0),(3.7,0),mark:(end:">"));line((0,-.3),(0,3),mark:(end:">"))
 line((0,0),(2.5,2.5));line((2.121,0),(2.121,2.121),(0,2.121),stroke:(dash:"dashed"))
 content((3.8,0),$x$);content((0,3.15),$y$);content((-.15,-.15),$O$)
 content((3,0),[1],anchor:"north");content((2.121,0),$sqrt(2)/2$,anchor:"north")
 content((0,2.121),$sqrt(2)/2$,anchor:"east");content((1.7,.7),$D$)
 content((2.5,2.6),$y=x$,anchor:"south");content((3,1.7),$x^2+y^2=1$,anchor:"west")
}))
]

#answer("9.")[
选 D.
*分析* 已知抽象数项级数收敛，讨论相关级数的敛散性. 题中并未给出正项条件，不能误用正项级数的结论.
*解法1* 取 $a_n=(-1)^(n-1)/sqrt(n)$，$sum a_n$ 收敛，但 $sum |a_n|$ 发散，A 不成立；$sum (-1)^n a_n=-sum 1/sqrt(n)$ 发散，B 不成立；
$ sum a_n a_(n+1)=-sum frac(1,sqrt(n(n+1))) $
也发散，因为 $1/sqrt(n(n+1))>1/(n+1)$，故 C 不成立，只能选 D.
*解法2* 由 $sum a_n$ 收敛，$sum a_(n+1)$ 也收敛. 由级数性质，$sum (a_n+a_(n+1))/2$ 收敛，故选 D.
]

#answer("10.")[
选 D.
*分析* 可用拉格朗日乘数法，也可把条件极值化为一元函数的极值.
*解法1* 设 $F(x,y,lambda)=f(x,y)+lambda phi.alt(x,y)$，由条件极值的必要条件与 $phi.alt_y(x_0,y_0)!=0$，得
$ f_x(x_0,y_0)-f_y(x_0,y_0)frac(phi.alt_x(x_0,y_0),phi.alt_y(x_0,y_0))=0. $
若 $f_x=0$，$f_y$ 可以为 0，也可以不为 0，故 A、B 不必成立；若 $f_x!=0$，则 $f_y!=0$，所以 C 错误，D 正确.
*解法2* 约束方程可解出可微函数 $y=y(x)$，$y_0=y(x_0)$. 则 $x=x_0$ 是 $f(x,y(x))$ 的极值点，故
$ f_x(x_0,y_0)+f_y(x_0,y_0)y'(x_0)=0. $
而 $y'=-phi.alt_x/phi.alt_y$，得到解法1中的关系，其余讨论相同.
*典型错误* 将条件极值误认为无约束极值，直接写出 $f_x=f_y=0$. 例如 $f(x,y)=x^2+y$，约束 $y-2x^2=0$，则 $f(x,y(x))=3x^2$ 在 0 处取得极小值，而 $(0,0)$ 处 $f_x=0,f_y=1$. 二元函数 $x^2+y$ 本身没有极值点.
]

#answer("11.")[
选 A.
*分析* $A$ 是任意的 $m times n$ 矩阵，可举例排除错误选项，也可直接证明 A.
*解* 取 $A=0$，则 B、D 不成立；若 $r(A)=n$，则 C 不成立. 对 A，由 $alpha_1,dots,alpha_s$ 线性相关，存在不全为 0 的 $k_1,dots,k_s$，使 $sum_(i=1)^s k_i alpha_i=0$. 左乘 $A$，得
$ sum_(i=1)^s k_i A alpha_i=0, $
故 $A alpha_1,dots,A alpha_s$ 线性相关.
]

#answer("12.")[
选 B.
*分析* 一次初等行或列变换，分别相当于从左或右乘以相应初等矩阵.
*解* 由题设 $B=P A,C=B Q$，其中
$ Q=mat(1,-1,0;0,1,0;0,0,1). $
易验证 $P Q=E$，即 $Q=P^(-1)$，故 $C=P A P^(-1)$，选 B.
]

#answer("13.")[
选 C.
*分析* 使用条件概率及概率加法公式.
*解* $P(A|B)=P(A B)/P(B)=1$，所以 $P(A B)=P(B)$，从而
$ P(A union B)=P(A)+P(B)-P(A B)=P(A). $
故选 C.
]

#answer("14.")[
选 A.
*分析* 考查正态分布的性质.
*解* 标准化得
$ P\{|X-mu_1|<1\}=P\{|(X-mu_1)/sigma_1|<1/sigma_1\}, $
$ P\{|Y-mu_2|<1\}=P\{|(Y-mu_2)/sigma_2|<1/sigma_2\}. $
两个标准化变量均服从 $N(0,1)$，由题设概率不等式知 $1/sigma_1>1/sigma_2$，即 $sigma_1<sigma_2$，故选 A.
]

= 三、解答题

#answer("15.")[
*分析* 利用奇偶性与区域对称性化简，再用极坐标计算.
解法1
$ I_1=integral.double_D 1/(1+x^2+y^2)dif x dif y \
=integral_(-pi/2)^(pi/2)dif theta integral_0^1 1/(1+r^2)r dif r \
=pi/2 lr(ln(1+r^2))|_0^1=pi/2 ln 2, $
$ I_2=integral.double_D(x y)/(1+x^2+y^2)dif x dif y \
=integral_(-pi/2)^(pi/2)dif theta integral_0^1(r^3 cos theta sin theta)/(1+r^2)dif r \
=integral_(-pi/2)^(pi/2)cos theta sin theta dif theta integral_0^1 r^3/(1+r^2)dif r=0, $
所以 $I=I_1+I_2=pi/2 ln 2$.

解法2　$I_1$ 同解法1.由于 $D$ 关于 $x$ 轴对称，且函数 $(x y)/(1+x^2+y^2)$ 是 $y$ 的奇函数，所以 $I_2=integral.double_D(x y)/(1+x^2+y^2)dif x dif y=0$，故 $I=I_1+I_2=pi/2 ln 2$.
*典型错误* 未利用奇偶性而直接计算第二项，虽可得到正确结果，但增加了工作量.
]

#answer("16.")[
*分析* 递推数列的极限存在性一般使用单调有界准则；第二问可化为函数极限.
（Ⅰ）用归纳法证明 $\{x_n\}$ 单调下降且有下界.

由 $0<x_1<pi$，得 $0<x_2=sin x_1<x_1<pi$.设 $0<x_n<pi$，则 $0<x_(n+1)=sin x_n<x_n<pi$，所以 $\{x_n\}$ 单调下降且有下界，故 $lim_(n->infinity)x_n$ 存在.

记 $a=lim_(n->infinity)x_n$，由 $x_(n+1)=sin x_n$ 得 $a=sin a$，所以 $a=0$，即 $lim_(n->infinity)x_n=0$.

（Ⅱ）解法1　因为
$ lim_(x->0)(sin x/x)^(1/x^2)=lim_(x->0)e^(1/x^2 ln(sin x/x)) \
=lim_(x->0)e^(1/(2x)(cos x/(sin x)-1/x)) \
=lim_(x->0)e^((x cos x-sin x)/(2x^3)) \
=lim_(x->0)e^((-x sin x)/(6x^2))=e^(-1/6). $
又由（Ⅰ）$lim_(n->infinity)x_n=0$，所以
$ lim_(n->infinity)(x_(n+1)/x_n)^(1/x_n^2) \
=lim_(n->infinity)(sin x_n/x_n)^(1/x_n^2)=lim_(x->0)(sin x/x)^(1/x^2)=e^(-1/6). $
解法2　因为
$ (sin x/x)^(1/x^2)=[(1+(sin x-x)/x)^(x/(sin x-x))]^((sin x-x)/x^3), $
又因为 $lim_(x->0)(sin x-x)/x^3=-1/6,lim_(x->0)(1+(sin x-x)/x)^(x/(sin x-x))=e$，所以 $lim_(x->0)(sin x/x)^(1/x^2)=e^(-1/6)$，故
$ lim_(n->infinity)(x_(n+1)/x_n)^(1/x_n^2)=lim_(n->infinity)(sin x_n/x_n)^(1/x_n^2)=lim_(x->0)(sin x/x)^(1/x^2)=e^(-1/6). $
*典型错误* 证明极限存在时未用数学归纳法说明全部项的性质；直接对数列使用洛必达法则也是不允许的.
另一种计算第一种函数极限的步骤为
$ lim_(x->0)frac(ln(sin x/x),x^2)=lim_(x->0)frac(sin x-x,x^3)=lim_(x->0)frac(cos x-1,3x^2)=-1/6. $
]

#answer("17.")[
*分析* 有理分式通常采用间接展开法，先拆为两个简单分式，再利用几何级数.
解法1　因为 $x/(2+x-x^2)=x/3(1/(1+x)+1/(2-x))$，分别将 $1/(1+x),1/(2-x)$ 展开成 $x$ 的幂级数：
$ 1/(1+x)=sum_(n=0)^infinity(-1)^n x^n,quad |x|<1, $
$ 1/(2-x)=1/2 dot 1/(1-x/2)=sum_(n=0)^infinity x^n/2^(n+1),quad |x|<2, $
所以
$ x/(2+x-x^2)=x/3(1/(1+x)+1/(2-x)) \
=1/3 sum_(n=0)^infinity[(-1)^n+1/2^(n+1)]x^(n+1),quad |x|<1. $
解法2　因为 $x/(2+x-x^2)=1/3(2/(2-x)-1/(1+x))$，分别将 $1/(1+x),2/(2-x)$ 展开成 $x$ 的幂级数：
$ 1/(1+x)=sum_(n=0)^infinity(-1)^n x^n,quad |x|<1, $
$ 2/(2-x)=1/(1-x/2)=sum_(n=0)^infinity x^n/2^n,quad |x|<2, $
所以
$ x/(2+x-x^2)=1/3(2/(2-x)-1/(1+x)) \
=1/3 sum_(n=0)^infinity[1/2^n-(-1)^n]x^n,quad |x|<1. $
*典型错误* 未注明或错误地给出展开成立的区域；采用直接法则不易进行.
]

#answer("18.")[
*分析* 第一问计算复合函数的二阶偏导数，第二问解满足初始条件的微分方程.
（Ⅰ）由 $z=f(u),u=sqrt(x^2+y^2)$，得
$ (partial z)/(partial x)=f' dot x/sqrt(x^2+y^2), $
$ (partial^2 z)/(partial x^2)=f'' dot x^2/(x^2+y^2)+f' dot y^2/(x^2+y^2)^(3/2), $
$ (partial z)/(partial y)=f' dot y/sqrt(x^2+y^2), $
$ (partial^2 z)/(partial y^2)=f'' dot y^2/(x^2+y^2)+f' dot x^2/(x^2+y^2)^(3/2). $
所以根据题设条件可得 $f''+1/sqrt(x^2+y^2) dot f'=0$，即 $f''(u)+f'(u)/u=0$.

（Ⅰ）*证法2* 题设为拉普拉斯方程. 令 $u=r$，极坐标下方程为
$ frac(partial^2 z,partial r^2)+1/r frac(partial z,partial r)+1/r^2 frac(partial^2 z,partial theta^2)=0. $
由于 $z=f(r)$ 与 $theta$ 无关，第三项为 0，故还原成 $u$ 即得 $f''(u)+f'(u)/u=0$.
（Ⅱ）*解法1* 令 $f'(u)=p$，得 $p'+p/u=0$，分离变量积分得 $p=C_1/u$，再积分得 $f(u)=C_1 ln u+C_2$. 因 $u>0$，无需绝对值. 初值给出 $C_1=1,C_2=0$，故 $f(u)=ln u$.
*解法2* 方程可写为 $(u f'(u))'=0$，故 $u f'(u)=C_1$，再积分和代入初值，仍得 $f(u)=ln u$.
*典型错误* $f$ 为一元函数，求导应写 $f'(u)$，不能把它当成二元函数写为 $f_x$；降阶时把 $p=C_1/u$ 误写为 $p=C_1 u$，会造成结果错误.
]

#answer("19.")[
*分析* 上半平面是单连通区域，利用路径无关的等价条件，关键是从齐次关系导出偏导关系.
由格林公式知，对 $D$ 内的任意有向简单闭曲线 $L$，
$ integral.cont_L y f(x,y)dif x-x f(x,y)dif y=0 $
的充分必要条件是：对任意 $(x,y) in D$，有
$ 0=partial/(partial y)(y f(x,y))+partial/(partial x)(x f(x,y)) \
=2f(x,y)+y f'_2(x,y)+x f'_1(x,y). $
由于对任意的 $(x,y) in D$ 及 $t>0$ 都有 $f(t x,t y)=t^(-2)f(x,y)$，两边对 $t$ 求导，得
$ x f'_1(t x,t y)+y f'_2(t x,t y)=-2t^(-3)f(x,y). $
令 $t=1$，得 $2f(x,y)+x f'_1(x,y)+y f'_2(x,y)=0$，即
$ partial/(partial y)(y f(x,y))+partial/(partial x)(x f(x,y))=0, $
所以 $integral.cont_L y f(x,y)dif x-x f(x,y)dif y=0$.
*方法2* 在题设中令 $t=1/y$，得 $f(x/y,1)=y^2 f(x,y)$，即 $f(x,y)=y^(-2)f(x/y,1)$. 分别求偏导，
$ f_x(x,y)=y^(-3)f'_1(x/y,1), $
$ f_y(x,y)=-2y^(-3)f(x/y,1)-x y^(-4)f'_1(x/y,1). $
故 $x f_x+y f_y=-2y^(-2)f(x/y,1)=-2f(x,y)$，同样得到结论.
]

#answer("20.")[
*分析* 第一问用齐次方程组基础解系的向量个数与秩的关系，为第二问确定参数作铺垫.
（Ⅰ）设 $xi_1,xi_2,xi_3$ 是该线性方程组的三个线性无关的解，则 $xi_1-xi_2,xi_1-xi_3$ 是对应的齐次线性方程组 $A x=bold(0)$ 的两个线性无关的解，因而 $4-r(A)>=2$，即 $r(A)<=2$.

又 $A$ 有一个二阶子式 $mat(delim:"|",1,1;4,3)!=0$，于是 $r(A)>=2$，因此 $r(A)=2$.

（Ⅱ）对增广矩阵 $overline(A)$ 施以初等行变换，有
$ overline(A)=mat(augment:#4,1,1,1,1,-1;4,3,5,-1,-1;a,1,3,b,1) \
->mat(augment:#4,1,1,1,1,-1;0,-1,1,-5,3;0,1-a,3-a,b-a,1+a) \
->mat(augment:#4,1,0,2,-4,2;0,1,-1,5,-3;0,0,4-2a,4a+b-5,4-2a)=B. $
因 $r(A)=2$，故 $4-2a=0,4a+b-5=0$，即 $a=2,b=-3$.

此时 $B=mat(augment:#4,1,0,2,-4,2;0,1,-1,5,-3;0,0,0,0,0)$，可得方程组通解为
$ x=mat(2;-3;0;0)+k_1 mat(-2;1;1;0)+k_2 mat(4;-5;0;1), $
其中 $k_1,k_2$ 为任意常数.
*典型错误* 将“有三个线性无关的解”误读为“恰有三个”；先求参数再验证秩构成循环论证；非方阵不能直接取行列式.
]

#answer("21.")[
*分析* 不必求出矩阵即可利用所给条件求特征值和特征向量，再正交化、单位化.
（Ⅰ）由于矩阵 $A$ 的各行元素之和均为3，所以 $A mat(1;1;1)=mat(3;3;3)=3mat(1;1;1)$.

因为 $A alpha_1=bold(0),A alpha_2=bold(0)$，即 $A alpha_1=0alpha_1,A alpha_2=0alpha_2$，故 $lambda_1=lambda_2=0$ 是 $A$ 的二重特征值，$alpha_1,alpha_2$ 为 $A$ 的属于特征值0的两个线性无关的特征向量；$lambda_3=3$ 是 $A$ 的一个特征值，$alpha_3=(1,1,1)^T$ 为 $A$ 的属于特征值3的特征向量.

总之，$A$ 的特征值为0，0，3.属于特征值0的全体特征向量为 $k_1 alpha_1+k_2 alpha_2$（$k_1,k_2$ 不全为零），属于特征值3的全体特征向量为 $k_3 alpha_3 (k_3!=0)$.

（Ⅱ）对 $alpha_1,alpha_2$ 正交化.令 $xi_1=alpha_1=(-1,2,-1)^T$，
$ xi_2=alpha_2-(alpha_2,xi_1)/(xi_1,xi_1)xi_1=1/2(-1,0,1)^T. $
再分别将 $xi_1,xi_2,alpha_3$ 单位化，得
$ beta_1=xi_1/norm(xi_1)=1/sqrt(6)(-1,2,-1)^T, $
$ beta_2=xi_2/norm(xi_2)=1/sqrt(2)(-1,0,1)^T, $
$ beta_3=alpha_3/norm(alpha_3)=1/sqrt(3)(1,1,1)^T. $
令
$ Q=(beta_1,beta_2,beta_3)=mat(-1/sqrt(6),-1/sqrt(2),1/sqrt(3);2/sqrt(6),0,1/sqrt(3);-1/sqrt(6),1/sqrt(2),1/sqrt(3)), $
$ Lambda=mat(0,0,0;0,0,0;0,0,3), $
那么 $Q$ 为正交矩阵，且 $Q^T A Q=Lambda$.
（Ⅰ）*方法2* 设 $A$ 为对称矩阵，由三行元素之和为 3 及 $A alpha_1=A alpha_2=0$，得到九个方程：
$ cases(a_(11)+a_(12)+a_(13)=3,a_(12)+a_(22)+a_(23)=3,a_(13)+a_(23)+a_(33)=3,-a_(11)+2a_(12)-a_(13)=0,-a_(12)+2a_(22)-a_(23)=0,-a_(13)+2a_(23)-a_(33)=0,-a_(12)+a_(13)=0,-a_(22)+a_(23)=0,-a_(23)+a_(33)=0). $
解得 $A=mat(1,1,1;1,1,1;1,1,1)$，所以
$ |lambda E-A|=det(lambda-1,-1,-1;-1,lambda-1,-1;-1,-1,lambda-1)=lambda^2(lambda-3). $
特征值为 $0,0,3$，对应特征向量同前.
*方法3* 将 $|lambda E-A|$ 的第二、三列加到第一列，提取公因子 $lambda-3$，也可知 3 是特征值.
*典型错误* 没有把特征向量正交化、单位化就直接组成 $Q$；$Q$ 的列顺序与 $Lambda$ 的特征值顺序不对应.
]

#answer("22.")[
*分析* 第一问先求分布函数再求密度，第二问直接使用二维分布函数定义.
（Ⅰ）$Y$ 的分布函数为 $F_Y(y)=P{Y<=y}=P{X^2<=y}$.

当 $y<=0$ 时，$F_Y(y)=0,f_Y(y)=0$；当 $0<y<1$ 时，
$ F_Y(y)=P{-sqrt(y)<=X<=sqrt(y)} \
=P{-sqrt(y)<=X<0}+P{0<=X<=sqrt(y)} \
=1/2 sqrt(y)+1/4 sqrt(y)=3/4 sqrt(y), $
$f_Y(y)=3/(8sqrt(y))$；当 $1<=y<4$ 时，
$ F_Y(y)=P{-1<=X<0}+P{0<=X<=sqrt(y)}=1/2+1/4 sqrt(y), $
$f_Y(y)=1/(8sqrt(y))$；当 $y>=4$ 时，$F_Y(y)=1,f_Y(y)=0$.

故 $Y$ 的概率密度为
$ f_Y(y)=cases(3/(8sqrt(y)) & 0<y<1,1/(8sqrt(y)) & 1<=y<4,0 & #text[其他]). $
（Ⅱ）
$ F(-1/2,4)=P{X<=-1/2,Y<=4}=P{X<=-1/2,X^2<=4} \
=P{X<=-1/2,-2<=X<=2}=P{-2<=X<=-1/2} \
=P{-1<X<=-1/2}=1/4. $
*典型错误* 对所有 $y>0$ 一律积分为 $3sqrt(y)/4$，忽略不同区间；把原密度直接平方；误认为 $X,Y$ 独立而将联合概率写成边缘概率之积. 先求完整联合分布函数会使计算复杂化.
]

#answer("23.")[
*分析* 分段密度的最大似然估计，关键在于正确写出所有样本密度的乘积.
似然函数为 $L(theta)=product_(i=1)^n f(x_i;theta)=theta^N(1-theta)^(n-N)$，取对数，得
$ ln L(theta)=N ln theta+(n-N)ln(1-theta), $
两边对 $theta$ 求导，得
$ (dif ln L(theta))/(dif theta)=N/theta-(n-N)/(1-theta). $
令 $(dif ln L(theta))/(dif theta)=0$，得 $theta=N/n$，所以 $theta$ 的最大似然估计为 $hat(theta)=N/n$.
*典型错误* 将似然函数误写为 $product x_i f(x_i)$，或把指数 $n-N$ 写成 $n$；将两段密度分别作为似然函数；对 $ln(1-theta)$ 求导时漏负号，会错误地得到 $N/(2N-n)$.
]

