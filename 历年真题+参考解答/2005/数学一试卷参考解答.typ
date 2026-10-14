#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2005, subject: "一", title: "2005年全国硕士研究生入学统一考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#import "@preview/cetz:0.5.2"
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2005 数学一试卷参考解答

= 一、填空题

#answer("1.")[
*分析* 考查斜渐近线的概念及计算公式，基本运算是求简单不定式的极限.
*解* $ a=lim_(x->infinity)frac(y,x)=lim_(x->infinity)frac(x,2x+1)=frac(1,2),quad b=lim_(x->infinity)(y-a x)=lim_(x->infinity)(frac(x^2,2x+1)-frac(x,2))=-frac(1,4). $
所以斜渐近线为 $y=1/2 x-1/4$.
]

#answer("2.")[
*分析* 考查一阶线性微分方程初值问题的解法，主要运算是求不定积分.
*解* 化为标准形 $y'+2/x y=ln x$，解得
$ y=e^(-integral frac(2,x)dif x)(integral ln x e^(integral frac(2,x)dif x)dif x+C)=frac(1,x^2)(integral x^2 ln x dif x+C). $
分部积分得
$ y=frac(1,x^2)(frac(1,3)x^3 ln x-frac(1,3)integral x^2 dif x+C)=frac(1,x^2)(frac(1,3)x^3 ln x-frac(1,9)x^3+C). $
由 $y(1)=-1/9$ 得 $C=0$，于是 $y=x/3(ln x-1/3)$.
]

#answer("3.")[
*分析* 考查方向导数计算公式与偏导数计算.
*解* $ nabla u|_((1,2,3))=(frac(1,3),frac(1,3),frac(1,3)),quad frac(partial u,partial n)|_((1,2,3))=(frac(1,3),frac(1,3),frac(1,3))dot frac(1,sqrt(3))(1,1,1)=frac(sqrt(3),3). $
*典型错误* 公式中的方向向量必须为单位向量. 只用 $(1,1,1)$ 会错误地得到1.
]

#answer("4.")[
*分析* 考查高斯公式、空间区域的球坐标表示及球坐标系下的三重积分.
*解* 区域 $Omega$ 的球坐标表示为 $0<=phi<=pi/4,0<=theta<=2pi,0<=r<=R$. 由高斯公式，
$ integral.surf_Sigma(x dif y dif z+y dif z dif x+z dif x dif y)=3integral.triple_Omega dif V=3integral_0^(2pi)dif theta integral_0^(pi/4)sin phi dif phi integral_0^R r^2 dif r=(2-sqrt(2))pi R^3. $
*典型错误* 不能正确写出球坐标下的区域及体积微元.
]

#answer("5.")[
*解法1* 利用行列式性质，依次从第三列减第二列、第二列减第一列，得
$ det B=det(alpha_1+alpha_2+alpha_3,alpha_2+3alpha_3,alpha_2+5alpha_3) \
=det(alpha_1+alpha_2+alpha_3,alpha_2+3alpha_3,2alpha_3) \
=2det(alpha_1+alpha_2+alpha_3,alpha_2,alpha_3)=2det A=2. $
*解法2* 利用矩阵运算，
$ B=(alpha_1,alpha_2,alpha_3)mat(1,1,1;1,2,3;1,4,9)=A mat(1,1,1;1,2,3;1,4,9). $
所以 $det B=det A dot mat(delim:"|",1,1,1;1,2,3;1,4,9)=2det A=2$.
*注* 两种方法均要求熟练掌握行列式计算或矩阵运算.
]

#answer("6.")[
*分析* 考查离散型随机变量的概率分布与全概率公式.
*解* $ P\{Y=2\}=sum_(i=2)^4 P\{X=i\}P\{Y=2|X=i\}=sum_(i=2)^4 frac(1,4)frac(1,i)=frac(13,48). $
*典型错误* 不理解由随机变量表达的事件，因而不会使用概率公式计算.
]

= 二、选择题

#answer("7.")[
*分析* 考查极限计算、可导概念及导数与左、右导数的关系.
*解* 当 $abs(x)<=1$ 时，$lim_(n->infinity)root(n,1+abs(x)^(3n))=1$；当 $abs(x)>1$ 时，该极限为 $abs(x)^3$. 因而
$ f(x)=cases(1 & abs(x)<=1,abs(x)^3 & abs(x)>1). $
只须考虑 $x=plus.minus 1$ 处的可导性. 由导数定义，
$ f'_-(-1)=-3,quad f'_+(-1)=0,quad f'_-(1)=0,quad f'_+(1)=3. $
所以恰有两个不可导点，选 C.
]

#answer("8.")[
*分析* 考查奇偶性、周期性、原函数与导数、变上限积分以及换元积分，须灵活处理性质之间的联系.
*解* 取 $f(x)=cos x+1,F(x)=sin x+x+1$，即可排除 B、C、D，故选 A. 排除法是处理单选题的一种常用方法.
]

#answer("9.")[
*分析* 考查复合函数求导法则和变上限积分求导公式.
*解* 因为
$ frac(partial u,partial x)=phi.alt'(x+y)+phi.alt'(x-y)+psi(x+y)-psi(x-y), $
$ frac(partial u,partial y)=phi.alt'(x+y)-phi.alt'(x-y)+psi(x+y)+psi(x-y), $
$ frac(partial^2 u,partial x^2)=phi.alt''(x+y)+phi.alt''(x-y)+psi'(x+y)-psi'(x-y), $
$ frac(partial^2 u,partial x partial y)=phi.alt''(x+y)-phi.alt''(x-y)+psi'(x+y)+psi'(x-y), $
$ frac(partial^2 u,partial y^2)=phi.alt''(x+y)+phi.alt''(x-y)+psi'(x+y)-psi'(x-y), $
所以 $u_(x x)=u_(y y)$，选 B.
]

#answer("10.")[
*分析* 考查隐函数存在定理中相应偏导数非零的条件.
*解* 记 $F(x,y,z)=x y-z ln y+e^(x z)-1$. 由隐函数存在定理，能确定 $z=z(x,y)$ 的充分条件是 $F_z!=0$. 而
$ F_x(0,1,1)=(y+z e^(x z))|_((0,1,1))=2!=0, $
$ F_y(0,1,1)=(x-z/y)|_((0,1,1))=-1!=0, $
$ F_z(0,1,1)=(-ln y+x e^(x z))|_((0,1,1))=0. $
故在该点某邻域内可确定具有连续偏导数的隐函数 $x=x(y,z)$ 和 $y=y(x,z)$，选 D.
]

#answer("11.")[
*分析* 由 $A(alpha_1+alpha_2)=lambda_1 alpha_1+lambda_2 alpha_2$，若 $lambda_2=0$，两向量必相关；$lambda_1=0$ 时两向量无关，但这只是充分条件，不能选 C.
*解法1* 设 $k_1 alpha_1+k_2 A(alpha_1+alpha_2)=0$，则
$ (k_1+lambda_1 k_2)alpha_1+lambda_2 k_2 alpha_2=0. $
对应不同特征值的特征向量线性无关，故
$ cases(k_1+lambda_1 k_2=0,lambda_2 k_2=0). $
两向量无关当且仅当此齐次方程组只有零解，即 $mat(delim:"|",1,lambda_1;0,lambda_2)=lambda_2!=0$，选 B.

*解法2* 因为
$ (alpha_1,A(alpha_1+alpha_2))=(alpha_1,alpha_2)mat(1,lambda_1;0,lambda_2), $
且 $alpha_1,alpha_2$ 线性无关，故两向量无关当且仅当右侧二阶矩阵行列式非零，仍得 $lambda_2!=0$.
*典型错误* 将充分条件 $lambda_1=0$ 当作充分必要条件.
]

#answer("12.")[
*解* 记交换第一、二行对应的初等矩阵为 $E_(12)$，则 $B=E_(12)A$，于是
$ B^(-1)=A^(-1)E_(12)^(-1)=A^(-1)E_(12). $
又 $B^(-1)=frac(B^*,det B),A^(-1)=frac(A^*,det A),det B=-det A$，所以 $-B^*=A^* E_(12)$. 右乘 $E_(12)$ 就是交换第一、二列，选 C.
*典型错误* 混淆伴随矩阵与逆矩阵，或忘记交换两行使行列式变号；也有人未弄清伴随矩阵的构造而误选 B.
]

#answer("13.")[
*分析* 考查二维离散型随机变量的概率分布、事件概率及事件独立的概念.
*解* 由事件独立，
$ P\{X=0,X+Y=1\}=P\{X=0\}P\{X+Y=1\}. $
其中左侧为 $a$，右侧两个因子分别为 $0.4+a$ 和 $a+b$，所以 $a=(0.4+a)(a+b)$. 又由分布律的归一性，$0.4+a+b+0.1=1$，即 $a+b=0.5$. 解得 $a=0.4,b=0.1$，选 B.
*典型错误* 不会利用分布律的基本性质，或计算有关事件概率时出现误算.
]

#answer("14.")[
*分析* 考查正态总体的常用统计量分布，注意本题 $mu=0,sigma^2=1$.
*解* 因 $n overline(X)~N(0,n)$，不能选 A；因 $(n-1)S^2~chi^2(n-1)$，不能选 B；因 $sqrt(n)overline(X)/S~t(n-1)$，而不是 $(n-1)overline(X)/S$，不能选 C.
对两个相互独立的正态总体样本，
$ frac(n_2 sigma_2^2,n_1 sigma_1^2)frac(sum_(i=1)^(n_1)(X_i-mu_1)^2,sum_(j=1)^(n_2)(Y_j-mu_2)^2)~F(n_1,n_2). $
在本题中将 $X_1$ 与其余 $n-1$ 个样本分开，即得 $(n-1)X_1^2/(sum_(i=2)^n X_i^2)~F(1,n-1)$，选 D.
]

= 三、解答题

#answer("15.")[
*分析* 考查取整函数的定义及极坐标下的二重积分计算.


解法1
$ integral.double_D x y[1+x^2+y^2]dif x dif y \
=integral_0^(pi/2)dif theta integral_0^root(4,2)r^3 sin theta cos theta[1+r^2]dif r \
=integral_0^(pi/2)sin theta cos theta dif theta integral_0^root(4,2)r^3[1+r^2]dif r \
=1/2(integral_0^1 r^3 dif r+integral_1^root(4,2)2r^3 dif r)=3/8. $
解法2　记 $D_1={(x,y)|x^2+y^2<1,x>=0,y>=0}$，$D_2={(x,y)|1<=x^2+y^2<=sqrt(2),x>=0,y>=0}$，则有
$ [1+x^2+y^2]=1,(x,y)in D_1,quad [1+x^2+y^2]=2,(x,y)in D_2, $
于是
$ integral.double_D x y[1+x^2+y^2]dif x dif y \
=integral.double_(D_1)x y dif x dif y+integral.double_(D_2)2x y dif x dif y \
=integral_0^(pi/2)dif theta integral_0^1 r^3 sin theta cos theta dif r \
+integral_0^(pi/2)dif theta integral_1^root(4,2)2r^3 sin theta cos theta dif r \
=1/8+1/4=3/8. $


*典型错误* 对取整函数不熟悉，误将整个区域内的 $floor(1+x^2+y^2)$ 都写成2，未按半径分段.
]

#answer("16.")[
*分析* 考查级数运算、收敛半径计算、逐项求导及常用初等函数的麦克劳林级数.


解　因为 $lim_(n->infinity)((n+1)(2n+1)+1)/((n+1)(2n+1)) dot (n(2n-1))/(n(2n-1)+1)=1$，所以当 $x^2<1$ 时，原级数绝对收敛；当 $x^2>1$ 时，原级数发散. 因此原级数的收敛半径为1，收敛区间为 $(-1,1)$.
记 $S(x)=sum_(n=1)^infinity ((-1)^(n-1))/(2n(2n-1))x^(2n),x in (-1,1)$，则
$ S'(x)=sum_(n=1)^infinity ((-1)^(n-1))/(2n-1)x^(2n-1),x in (-1,1), \
S''(x)=sum_(n=1)^infinity(-1)^(n-1)x^(2n-2)=1/(1+x^2),x in (-1,1). $
由于 $S(0)=0,S'(0)=0$，所以
$ S'(x)=integral_0^x S''(t)dif t=integral_0^x 1/(1+t^2)dif t=arctan x, \
S(x)=integral_0^x S'(t)dif t=integral_0^x arctan t dif t=x arctan x-1/2 ln(1+x^2). $
又 $sum_(n=1)^infinity(-1)^(n-1)x^(2n)=x^2/(1+x^2),x in (-1,1)$，从而
$ f(x)=2S(x)+x^2/(1+x^2)=2x arctan x-ln(1+x^2)+x^2/(1+x^2),x in (-1,1). $


*另解* 记 $S(x)=sum_(n=1)^infinity frac((-1)^(n-1),2n(2n-1))x^(2n)$，$x in (-1,1)$. 则 $S(0)=0$，当 $x!=0$ 时，
$ (S(x)/x)'=sum_(n=1)^infinity frac((-1)^(n-1),2n)x^(2n-2)=frac(1,2x^2)ln(1+x^2). $
故
$ frac(S(x),x)=integral_0^x frac(ln(1+t^2),2t^2)dif t=-frac(1,2x)ln(1+x^2)+arctan x. $
于是 $S(x)=x arctan x-1/2 ln(1+x^2)$，仍得到原和函数.
*典型错误* 几何级数的和函数记错，或者不会正确计算 $integral_0^x arctan t dif t$.
]

#answer("17.")[
*分析* 综合导数的几何意义、拐点的必要条件和定积分分部积分公式，重点在于从图中读出函数与导数的值.


解　根据题意，从图中读出 $f(0)=0,f'(0)=2,f(3)=2,f'(3)=-2,f''(3)=0$.
$ integral_0^3(x^2+x)f'''(x)dif x \
=lr((x^2+x)f''(x))|_0^3-integral_0^3(2x+1)f''(x)dif x \
=-integral_0^3(2x+1)f''(x)dif x \
=-lr((2x+1)f'(x))|_0^3+2integral_0^3 f'(x)dif x \
=-[7 times (-2)-2]+2integral_0^3 f'(x)dif x \
=16+2f(x)|_0^3=16+4=20. $


*典型错误* 分部积分公式中的符号计算错误.
]

#answer("18.")[
*分析* 第（Ⅰ）问取辅助函数，应用连续函数的零点存在定理；第（Ⅱ）问利用前一问的结果，在两个互不重叠的区间上应用拉格朗日中值定理.


证　（Ⅰ）令 $g(x)=f(x)+x-1$，则 $g(x)$ 在 $[0,1]$ 上连续，且 $g(0)=-1<0,g(1)=1>0$，所以存在 $xi in (0,1)$，使得 $g(xi)=f(xi)+xi-1=0$，即 $f(xi)=1-xi$.

（Ⅱ）根据拉格朗日中值定理，存在 $eta in (0,xi),zeta in (xi,1)$，使得
$ f'(eta)=(f(xi)-f(0))/xi=(1-xi)/xi, \
f'(zeta)=(f(1)-f(xi))/(1-xi)=(1-(1-xi))/(1-xi)=xi/(1-xi), $
从而 $f'(eta)f'(zeta)=(1-xi)/xi dot xi/(1-xi)=1$.


*典型错误* 先在整个 $[0,1]$ 上用中值定理，得到某点 $f'(eta)=1$，再试图找另一个点也满足导数为1. 题设不能保证存在两个不同的此类点.
]

#answer("19.")[
*分析* 综合第二类曲线积分性质、与路径无关的充要条件、偏导数计算和简单微分方程，重点在灵活运用这些知识.


（Ⅰ）证　如下图所示，设 $C$ 是半平面 $x>0$ 内的任一分段光滑简单闭曲线，在 $C$ 上任意取定两点 $M,N$，作围绕原点的闭曲线 $overparen(M Q N R M)$，同时得到另一围绕原点的闭曲线 $overparen(M Q N P M)$.
#import "@preview/cetz:0.5.2"
#cetz.canvas({
 import cetz.draw: *
 line((-1.5,0),(3.7,0),mark:(end:">"));line((0,-1.4),(0,3.6),mark:(end:">"))
 bezier((1,2),(2.7,1.4),(1.4,3.6),(3.7,3.5),mark:(end:">"));bezier((2.7,1.4),(1,2),(1.6,.3),(.5,.8),mark:(end:">"))
 bezier((1,2),(2.7,1.4),(-3,-.5),(-.4,-3),stroke:(dash:"dashed"),mark:(end:">"))
 content((.85,2.1),$M$,anchor:"east");content((2.85,1.3),$N$);content((2,2.6),$R$);content((1.7,1.2),$P$);content((-.7,-1.1),$Q$);content((3,3),$C$);content((-.1,-.1),$O$,anchor:"north-east");content((3.7,0),$x$,anchor:"north");content((0,3.6),$y$,anchor:"east")
})
根据题设可知
$ integral.cont_(overparen(M Q N R M))(phi(y)dif x+2x y dif y)/(2x^2+y^4)-integral.cont_(overparen(M Q N P M))(phi(y)dif x+2x y dif y)/(2x^2+y^4)=0. $
根据第二类曲线积分的性质，利用上式可得
$ integral.cont_C (phi(y)dif x+2x y dif y)/(2x^2+y^4) \
=integral_(overparen(N R M))(phi(y)dif x+2x y dif y)/(2x^2+y^4)+integral_(overparen(M P N))(phi(y)dif x+2x y dif y)/(2x^2+y^4) \
=integral_(overparen(N R M))(phi(y)dif x+2x y dif y)/(2x^2+y^4)-integral_(overparen(N P M))(phi(y)dif x+2x y dif y)/(2x^2+y^4) \
=integral.cont_(overparen(M Q N R M))(phi(y)dif x+2x y dif y)/(2x^2+y^4)-integral.cont_(overparen(M Q N P M))(phi(y)dif x+2x y dif y)/(2x^2+y^4)=0. $
（Ⅱ）解　设 $P=phi(y)/(2x^2+y^4),Q=(2x y)/(2x^2+y^4)$，$P,Q$ 在单连通区域 $x>0$ 内具有一阶连续偏导数. 由（Ⅰ）知，曲线积分 $integral_L(phi(y)dif x+2x y dif y)/(2x^2+y^4)$ 在该区域内与路径无关，故当 $x>0$ 时，总有 $(partial Q)/(partial x)=(partial P)/(partial y)$.
$ (partial Q)/(partial x)=(2y(2x^2+y^4)-4x dot 2x y)/(2x^2+y^4)^2=(-4x^2 y+2y^5)/(2x^2+y^4)^2, quad #text[①] \
(partial P)/(partial y)=(phi'(y)(2x^2+y^4)-4phi(y)y^3)/(2x^2+y^4)^2 \
=(2x^2 phi'(y)+phi'(y)y^4-4phi(y)y^3)/(2x^2+y^4)^2. quad #text[②] $
比较①、②两式的右端，得
$ phi'(y)=-2y, quad #text[③] \
phi'(y)y^4-4phi(y)y^3=2y^5. quad #text[④] $
由③得 $phi(y)=-y^2+C$，将 $phi(y)$ 代入④得 $2y^5-4C y^3=2y^5$，所以 $C=0$，从而 $phi(y)=-y^2$.


*典型错误* 由“围绕原点的闭曲线上积分同为一个常数”直接断言 $Q_x=P_y$，再套格林公式证明第（Ⅰ）问，用错了结论. 第（Ⅱ）问中偏导数计算错误，也会导致错误的微分方程.
]

#answer("20.")[
*分析* 二次型的秩就是相应矩阵的秩，用此确定参数；正交变换化标准形是常规计算. 第（Ⅲ）问既可由标准形求解，也可从原二次型直接求解.


解　（Ⅰ）由于二次型 $f$ 的秩为2，对应的矩阵 $A=mat(1-a,1+a,0;1+a,1-a,0;0,0,2)$ 的秩为2，所以有
$ mat(delim:"|",1-a,1+a;1+a,1-a)=-4a=0, $
得 $a=0$.
（Ⅱ）当 $a=0$ 时，$A=mat(1,1,0;1,1,0;0,0,2)$，
$ |lambda E-A|=mat(delim:"|",lambda-1,-1,0;-1,lambda-1,0;0,0,lambda-2)=(lambda-2)^2 lambda, $
可知 $A$ 的特征值为 $lambda_1=lambda_2=2,lambda_3=0$.
$A$ 的属于 $lambda_1=2$ 的线性无关的特征向量为 $eta_1=(1,1,0)^"T",eta_2=(0,0,1)^"T"$；$A$ 的属于 $lambda_3=0$ 的特征向量为 $eta_3=(-1,1,0)^"T"$.
易见 $eta_1,eta_2,eta_3$ 两两正交. 将 $eta_1,eta_2,eta_3$ 单位化得
$ bold(e)_1=1/sqrt(2)(1,1,0)^"T",quad bold(e)_2=(0,0,1)^"T",quad bold(e)_3=1/sqrt(2)(-1,1,0)^"T", $
取 $Q=(bold(e)_1,bold(e)_2,bold(e)_3)$，则 $Q$ 为正交矩阵. 令 $bold(x)=Q bold(y)$，得
$ f(x_1,x_2,x_3)=lambda_1 y_1^2+lambda_2 y_2^2+lambda_3 y_3^2=2y_1^2+2y_2^2. $
（Ⅲ）解法1　在正交变换 $bold(x)=Q bold(y)$ 下，$f(x_1,x_2,x_3)=0$ 化成 $2y_1^2+2y_2^2=0$，解之得 $y_1=y_2=0$，从而
$ bold(x)=Q mat(0;0;y_3)=(bold(e)_1,bold(e)_2,bold(e)_3)mat(0;0;y_3)=y_3 bold(e)_3=k(-1,1,0)^"T", $
其中 $k$ 为任意常数.
解法2　由于 $f(x_1,x_2,x_3)=x_1^2+x_2^2+2x_3^2+2x_1 x_2=(x_1+x_2)^2+2x_3^2=0$，所以 $cases(x_1+x_2=0,x_3=0)$，其通解为 $bold(x)=k(-1,1,0)^"T"$，其中 $k$ 为任意常数.


*典型错误* 在第（Ⅲ）问只写出 $y_1=y_2=0$ 就停下，没有变换回原变量 $x_1,x_2,x_3$.
]

#answer("21.")[
*分析* 从题设提取矩阵的秩及齐次方程组解的信息. $A B=O$ 表明 $B$ 的每一列均为解，必须结合参数分类作完整讨论.


解　由于 $A B=O$，故 $r(A)+r(B)<=3$，又由 $a,b,c$ 不全为零，可知 $r(A)>=1$.
当 $k!=9$ 时，$r(B)=2$，于是 $r(A)=1$；当 $k=9$ 时，$r(B)=1$，于是 $r(A)=1$ 或 $r(A)=2$.
对于 $k!=9$，由 $A B=O$ 可得 $A mat(1;2;3)=bold(0)$ 和 $A mat(3;6;k)=bold(0)$.
由于 $eta_1=(1,2,3)^"T",eta_2=(3,6,k)^"T"$ 线性无关，故 $eta_1,eta_2$ 为 $A bold(x)=bold(0)$ 的一个基础解系，于是 $A bold(x)=bold(0)$ 的通解为 $bold(x)=c_1 eta_1+c_2 eta_2$，其中 $c_1,c_2$ 为任意常数.
对于 $k=9$，分别就 $r(A)=2$ 和 $r(A)=1$ 进行讨论.
如果 $r(A)=2$，则 $A bold(x)=bold(0)$ 的基础解系由一个向量构成. 又因为 $A mat(1;2;3)=bold(0)$，所以 $A bold(x)=bold(0)$ 的通解为 $bold(x)=c_1(1,2,3)^"T"$，其中 $c_1$ 为任意常数.
如果 $r(A)=1$，则 $A bold(x)=bold(0)$ 的基础解系由两个向量构成. 又因为 $A$ 的第1行为 $(a,b,c)$，且 $a,b,c$ 不全为零，所以 $A bold(x)=bold(0)$ 等价于 $a x_1+b x_2+c x_3=0$. 不妨设 $a!=0$，$eta_1=(-b,a,0)^"T",eta_2=(-c,0,a)^"T"$ 是 $A bold(x)=bold(0)$ 的两个线性无关的解，故 $A bold(x)=bold(0)$ 的通解为 $bold(x)=c_1 eta_1+c_2 eta_2$，其中 $c_1,c_2$ 为任意常数.


*解法2* 由第一行不全为零得 $r(A)>=1$，由 $A B=O$ 知方程有非零解，故 $r(A)<=2$.
若 $r(A)=2$，基础解系只有一个向量 $(1,2,3)^"T"$，通解为 $bold(x)=c_1(1,2,3)^"T"$；又由 $A B=O$ 得 $k=9$.
若 $r(A)=1$，方程与 $a x_1+b x_2+c x_3=0$ 同解. 因 $(1,2,3)^"T"$ 和 $(3,6,k)^"T"$ 都是解，
$ cases(a+2b+3c=0,3a+6b+k c=0), $
从而 $c(k-9)=0$，且 $a,b,c$ 中最多有一个为零.
①当 $c=0$ 时，基础解系可取 $xi_1=(-b,a,0)^"T",xi_2=(0,0,1)^"T"$.
②当 $c!=0$ 时，$k=9$，基础解系可取 $xi_1=(c,0,-a)^"T",xi_2=(0,c,-b)^"T"$.
两种情形的通解均为 $bold(x)=c_1 xi_1+c_2 xi_2$，$c_1,c_2$ 为任意常数.
*注* 基础解系的形式不唯一. 第一种解法中可取 $(0,c,-b)^"T",(-b,a,0)^"T"$ 或 $(0,c,-b)^"T",(c,0,-a)^"T"$，也可用 $(1,2,3)^"T"$ 替换其中一个. 第二种解法①中可取 $(1,2,0)^"T",(0,0,1)^"T"$ 或 $(1,2,3)^"T",(b,-a,0)^"T"$；②中可取 $(1,2,3)^"T"$ 与 $(0,c,-b)^"T"$ 或 $(c,0,-a)^"T"$.
*注* 以上各组应在相应非零参数条件下取为线性无关的向量组.
]

#answer("22.")[
*分析* 考查二维连续型随机变量的边缘密度和简单函数的分布，应掌握随机变量函数分布的多种求法.


解　（Ⅰ）当 $0<x<1$ 时，$f_X(x)=integral_(-infinity)^(+infinity)f(x,y)dif y=integral_0^(2x)dif y=2x$；当 $x<=0$ 或 $x>=1$ 时，$f_X(x)=0$，即 $f_X(x)=cases(2x & 0<x<1,0 & #text[其他])$.
当 $0<y<2$ 时，$f_Y(y)=integral_(-infinity)^(+infinity)f(x,y)dif x=integral_(y/2)^1 dif x=1-y/2$；当 $y<=0$ 或 $y>=2$ 时，$f_Y(y)=0$，即 $f_Y(y)=cases(1-y/2 & 0<y<2,0 & #text[其他])$.

（Ⅱ）解法1　当 $z<=0$ 时，$F_Z(z)=0$；当 $0<z<2$ 时，
$ F_Z(z)=P{2X-Y<=z}=integral.double_(2x-y<=z)f(x,y)dif x dif y=z-z^2/4; $
当 $z>=2$ 时，$F_Z(z)=1$，所以 $f_Z(z)=cases(1-z/2 & 0<z<2,0 & #text[其他])$.
解法2　$f_Z(z)=integral_(-infinity)^(+infinity)f(x,2x-z)dif x$，其中 $f(x,2x-z)=cases(1 & 0<x<1,0<z<2x,0 & #text[其他])$.
当 $z<=0$ 或 $z>=2$ 时，$f_Z(z)=0$；当 $0<z<2$ 时，$f_Z(z)=integral_(z/2)^1 dif x=1-z/2$，即 $f_Z(z)=cases(1-z/2 & 0<z<2,0 & #text[其他])$.


*典型错误* 求边缘密度时不分段，或者直接把 $f_X(x)=2x,f_Y(y)=1-y/2$ 写成全轴公式. 第（Ⅱ）问不会使用分布函数法，或分段不正确，反映出未理解随机变量函数分布的求法.
]

#answer("23.")[
*分析* 考查简单随机样本、样本均值及随机变量数字特征的基本性质.


解　（Ⅰ）
$ D Y_i=D(X_i-overline(X))=D[(1-1/n)X_i-1/n sum_(k=1,k!=i)^n X_k]=(n-1)/n quad (i=1,2,dots,n). $
（Ⅱ）
$ op("Cov")(Y_1,Y_n)&=E(Y_1-E Y_1)(Y_n-E Y_n) \
&=E(X_1-overline(X))(X_n-overline(X)) \
&=E(X_1 X_n)+E(overline(X)^2)-E(X_1 overline(X))-E(X_n overline(X)) \
&=E X_1 E X_n+D overline(X)-1/n E(X_1^2)-1/n sum_(k=2)^n E(X_1 X_k) \
&quad-1/n E(X_n^2)-1/n sum_(k=1)^(n-1)E(X_k X_n)=-1/n. $


*典型错误* 误认为 $X_i$ 与 $overline(X)$ 独立，于是错误地写 $D(X_i-overline(X))=D X_i+D overline(X)$ 或 $E(X_i overline(X))=E X_i E overline(X)$.
]

