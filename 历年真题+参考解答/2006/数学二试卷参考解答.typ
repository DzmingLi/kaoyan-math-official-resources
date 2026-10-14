#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2006, subject: "二", title: "2006年全国硕士研究生入学统一考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2006 数学二试卷参考解答

= 一、填空题

#answer("1.")[
*分析* 根据水平渐近线定义求无穷远处的极限，利用无穷小与有界函数的乘积是无穷小.
*解* $lim_(x->infinity)frac(x+4sin x,5x-2cos x)=lim_(x->infinity)frac(1+4sin x/x,5-2cos x/x)=1/5$，故水平渐近线为 $y=1/5$.
]

#answer("2.")[
*分析* 根据连续性定义，求 $x->0$ 时的极限，使用洛必达法则与变上限积分的导数.
*解* $a=lim_(x->0)frac(1,x^3)integral_0^x sin t^2 dif t=lim_(x->0)frac(sin x^2,3x^2)=1/3$.
]

#answer("3.")[
*分析* 按反常积分定义计算，再用凑微分法.
*解* $ integral_0^infinity frac(x dif x,(1+x^2)^2)=lim_(b->infinity)integral_0^b frac(x dif x,(1+x^2)^2) \
=1/2 lim_(b->infinity)lr(-1/(1+x^2))|_0^b=1/2 lim_(b->infinity)(1-1/(1+b^2))=1/2. $
]

#answer("4.")[
*分析* 变量可分离的一阶微分方程.
*解* 分离变量，$dif y/y=(1-x)/x dif x$，两边积分，$ln|y|=ln|x|-ln e^x+ln|C|$，故 $y=C x e^(-x)$，其中 $C$ 为任意常数（包括零解）.
*典型错误* 积分时符号出错；只写 $C x e^(-x)$ 而不写 $y=$.
]

#answer("5.")[
*分析* 可对等式两边求导，也可使用隐函数求导公式.
*解法1* $x=0$ 时 $y=1$. 等式两边对 $x$ 求导，得 $y'=-e^y-x e^y y'$，代入 $(0,1)$ 得 $y'(0)=-e$.
*解法2* 令 $F(x,y)=1-x e^y-y$，则
$ y'(0)=lr(-F_x/F_y)|_(x=0,y=1)=lr(-frac(-e^y,-x e^y-1))|_(x=0,y=1)=-e. $
*典型错误* 未先求出 $x=0$ 时的 $y$ 值；计算 $F_x,F_y$ 时又把 $y$ 当成 $x$ 的函数.
]

#answer("6.")[
*分析* 先进行矩阵推导，再计算行列式.
*解* 由 $B A=B+2E$ 得 $B(A-E)=2E$，所以 $|B||A-E|=|2E|=4$. 又
$ |A-E|=det(1,1;-1,1)=2, $
故 $|B|=2$.
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
选 B.
*分析* 连续奇函数的变上限积分为偶函数；本题在 0 处有第一类间断点，可用反例排除，也可直接论证.
*解法1* 取 $f(x)=cases(1 & x>0,0 & x=0,-1 & x<0)$，则 $F(x)=integral_0^x f(t)dif t=|x|$，为连续偶函数，排除 A、C、D，选 B.
*解法2* 设 $lim_(x->0+)f(x)=A!=0$，由奇性 $lim_(x->0-)f(x)=-A$. 构造
$ phi.alt(x)=cases(f(x)-A & x>0,0 & x=0,f(x)+A & x<0). $
它是连续奇函数，所以 $integral_0^x phi.alt(t)dif t$ 为可导偶函数. 又
$ integral_0^x f(t)dif t=integral_0^x phi.alt(t)dif t+A|x|, $
故也是连续偶函数.
*典型错误* 因被积函数间断而不能判断积分函数的连续性；举反例可以迅速排除错误选项.
]

#answer("9.")[
选 C.
*分析* 先求复合函数导数，再代入初值.
*解* $h'(x)=e^(1+g(x))g'(x)$，故
$ g(1)=ln frac(h'(1),g'(1))-1=ln(1/2)-1=-ln 2-1. $
]

#answer("10.")[
选 D.
*分析* 利用二阶常系数线性微分方程的解的结构.
*解* 齐次通解为 $C_1 e^x+C_2 e^(-2x)$，特征根为 $1,-2$，齐次方程为 $y''+y'-2y=0$，故排除 A、B. 又 $x e^x$ 为非齐次特解，1 是特征方程的单根，非齐次项应为 $A e^x$，故选 D.
*典型错误* 不利用解的结构，机械地计算 $y',y''$ 再代回选项，既繁琐又易错.
]

#answer("11.")[
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

#answer("12.")[
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

#answer("13.")[
选 A.
*分析* $A$ 是任意的 $m times n$ 矩阵，可举例排除错误选项，也可直接证明 A.
*解* 取 $A=0$，则 B、D 不成立；若 $r(A)=n$，则 C 不成立. 对 A，由 $alpha_1,dots,alpha_s$ 线性相关，存在不全为 0 的 $k_1,dots,k_s$，使 $sum_(i=1)^s k_i alpha_i=0$. 左乘 $A$，得
$ sum_(i=1)^s k_i A alpha_i=0, $
故 $A alpha_1,dots,A alpha_s$ 线性相关.
]

#answer("14.")[
选 B.
*分析* 一次初等行或列变换，分别相当于从左或右乘以相应初等矩阵.
*解* 由题设 $B=P A,C=B Q$，其中
$ Q=mat(1,-1,0;0,1,0;0,0,1). $
易验证 $P Q=E$，即 $Q=P^(-1)$，故 $C=P A P^(-1)$，选 B.
]

= 三、解答题

#answer("15.")[
*分析* 将指数函数展开成带皮亚诺余项的三阶麦克劳林公式，再比较同次幂系数.

解法1　因为 $e^x=1+x+1/2 x^2+1/6 x^3+o(x^3)$，将其代入题设等式，整理得
$ 1+(1+B)x+(1/2+B+C)x^2+(1/6+B/2+C)x^3=1+A x+o(x^3), $
故有
$ cases(1+B=A,1/2+B+C=0,1/6+B/2+C=0), $
解得 $A=1/3,B=-2/3,C=1/6$.

解法2　根据题设和洛必达法则，由于
$ 0=lim_(x->0)(e^x(1+B x+C x^2)-1-A x)/x^3 \
=lim_(x->0)(e^x(1+B+B x+2C x+C x^2)-A)/(3x^2) \
=lim_(x->0)(e^x[2C+1+2B+(B+4C)x+C x^2])/(6x) \
=lim_(x->0)(B+4C+2C x)/6, $
得
$ cases(1+B-A=0,2B+2C+1=0,B+4C=0), $
解得 $A=1/3,B=-2/3,C=1/6$.

*典型错误* 直接对题设中的 o(x³) 求导，却不知其导数的阶，甚至忽略余项；即使碰巧得到结果，也不是正确的求解方法.
]

#answer("16.")[
*分析* 既可先换元再分部积分，也可先分部积分再换元，以下两种方法均为常见解法.

解法1　令 $arcsin e^x=t$，则 $x=ln sin t,dif x=cos t/(sin t)dif t$.
$ integral (arcsin e^x)/e^x dif x=integral t/(sin t) dot cos t/(sin t)dif t \
=-integral t dif(1/(sin t)) \
=-t/(sin t)+integral 1/(sin t)dif t \
=-t/(sin t)+ln|csc t-cot t|+C \
=-(arcsin e^x)/e^x+ln|1/e^x-sqrt(1-e^(2x))/e^x|+C \
=-(arcsin e^x)/e^x+ln(1-sqrt(1-e^(2x)))-x+C. $
解法2
$ integral (arcsin e^x)/e^x dif x=-integral arcsin e^x dif(e^(-x)) \
=-(arcsin e^x)/e^x+integral (dif x)/sqrt(1-e^(2x)). $
在 $integral (dif x)/sqrt(1-e^(2x))$ 中，令 $sqrt(1-e^(2x))=t$，则 $dif x=(-t dif t)/(1-t^2)$，
$ integral (dif x)/sqrt(1-e^(2x))=-integral (dif t)/(1-t^2) \
=-1/2 ln|(1+t)/(1-t)|+C \
=-1/2 ln((1+sqrt(1-e^(2x)))/(1-sqrt(1-e^(2x))))+C, $
于是
$ integral (arcsin e^x)/e^x dif x=-(arcsin e^x)/e^x-1/2 ln((1+sqrt(1-e^(2x)))/(1-sqrt(1-e^(2x))))+C. $

*典型错误* 记错余割函数积分公式，或漏掉积分常数 C.
]

#answer("17.")[
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

*典型错误* 极角范围误取为 0 到 π，答案相同只是巧合；直角坐标计算较繁琐.
]

#answer("18.")[
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

#answer("19.")[
*分析* 不等式证明可利用单调性或拉格朗日中值定理，关键是构造辅助函数.

证法1　设 $f(x)=x sin x+2cos x+pi x,x in [0,pi]$，则
$ f'(x)=sin x+x cos x-2sin x+pi=x cos x-sin x+pi, $
$ f''(x)=cos x-x sin x-cos x=-x sin x<0,quad x in (0,pi), $
故 $f'(x)$ 在 $[0,pi]$ 上单调减少，从而 $f'(x)>f'(pi)=0,x in (0,pi)$，因此 $f(x)$ 在 $[0,pi]$ 上单调增加.当 $0<a<b<pi$ 时，$f(b)>f(a)$，即 $b sin b+2cos b+pi b>a sin a+2cos a+pi a$.

证法2　设 $phi(x)=x sin x+2cos x,x in [0,pi]$.在 $[a,b]$ 上应用拉格朗日中值定理，有 $phi(b)-phi(a)=phi'(xi)(b-a),xi in (a,b) subset (0,pi)$，即
$ b sin b+2cos b-a sin a-2cos a=(xi cos xi-sin xi)(b-a). $
设 $g(x)=x cos x-sin x,x in [0,pi]$，则
$ g'(x)=cos x-x sin x-cos x=-x sin x<0,quad x in (0,pi), $
因此 $g(x)$ 在 $[0,pi]$ 上单调减少，故 $xi cos xi-sin xi>g(pi)=-pi$，于是
$ b sin b+2cos b-a sin a-2cos a>-pi(b-a), $
移项得 $b sin b+2cos b+pi b>a sin a+2cos a+pi a$.

*典型错误* 只求出 f′就直接断言其为正，没有使用二阶导数说明；求导时出现低级符号错误.
]

#answer("20.")[
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

#answer("21.")[
*分析* 先求二阶导数讨论凹凸性，再求切线斜率和方程，以确定面积区域. 参数形式较直角坐标形式简便.

解法1　（Ⅰ）由于 $(dif y)/(dif x)=2/t-1,(dif^2 y)/(dif x^2)=-1/t^3$，当 $t>0$ 时，$(dif^2 y)/(dif x^2)<0$，故 $L$ 上凸.

（Ⅱ）因为当 $t=0$ 时，$L$ 在对应点处的切线方程为 $x=1$，不合题意，故设切点 $(x_0,y_0)$ 对应的参数为 $t_0>0$，则 $L$ 在 $(x_0,y_0)$ 处的切线方程为
$ y-(4t_0-t_0^2)=(2/t_0-1)(x-t_0^2-1). $
令 $x=-1,y=0$，得 $t_0^2+t_0-2=0$，解得 $t_0=1$ 或 $t_0=-2$（舍去）.由 $t_0=1$ 知，切点为 $(2,3)$，且切线方程为 $y=x+1$.

（Ⅲ）由 $t=0,t=4$ 知 $L$ 与 $x$ 轴的交点分别为 $(1,0)$ 和 $(17,0)$.所求平面图形的面积为
$ S=integral_(-1)^2(x+1)dif x-integral_1^2 y dif x \
=9/2-integral_0^1(4t-t^2)dif(t^2+1) \
=9/2-2integral_0^1(4t^2-t^3)dif t=7/3. $
解法2　（Ⅰ）同解法1.

（Ⅱ）$L$ 的直角坐标方程为 $y=4sqrt(x-1)-(x-1)$.

因为当 $x_0=1$ 时，$L$ 在对应点处的切线方程为 $x=1$，不合题意，故可设 $L$ 在点 $(x_0,y_0)$ 处的切线方程为
$ y-y_0=(2/sqrt(x_0-1)-1)(x-x_0),quad x_0>1. $
将 $x=-1,y=0$ 代入上式，得
$ -y_0=(2/sqrt(x_0-1)-1)(-1-x_0), $
$ -4sqrt(x_0-1)+(x_0-1)=(-2+sqrt(x_0-1))/sqrt(x_0-1)(x_0+1), $
整理得 $(x_0-1)+sqrt(x_0-1)-2=0$，即 $(sqrt(x_0-1)+2)(sqrt(x_0-1)-1)=0$，解得 $x_0=2$，并得 $y_0=3$，即切点为 $(2,3)$.因此切线方程为 $y=x+1$.

（Ⅲ）令 $y=0$，得 $L$ 与 $x$ 轴的交点分别为 $(1,0),(17,0)$.所求平面图形面积为
$ S=integral_(-1)^2(x+1)dif x-integral_1^2[4sqrt(x-1)-(x-1)]dif x \
=9/2-lr([8/3(x-1)^(3/2)-1/2(x-1)^2])|_1^2 \
=9/2-13/6=7/3. $

*典型错误* 参数方程的二阶导数计算错误；没有弄清围成图形的形状，导致面积计算错误.
]

#answer("22.")[
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

#answer("23.")[
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

