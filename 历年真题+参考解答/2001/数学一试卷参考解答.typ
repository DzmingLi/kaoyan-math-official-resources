#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2001, subject: "一", title: "2001年全国硕士研究生入学统一考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#import "@preview/cetz:0.5.2"
#let curve-plot(kind) = cetz.canvas({
 import cetz.draw: *
 set-style(stroke:0.7pt)
 line((-1.65,0),(2.6,0),mark:(end:">"));line((0,-1.5),(0,1.9),mark:(end:">"))
 content((2.7,-0.1),$x$);content((-0.13,2),$y$);content((-0.15,-0.2),$O$)
 let positive-left=kind in ("B","D")
 line(..range(0,71).map(i=>{let x=-1.6+i*1.46/70;let y = if positive-left {0.22/(-x)} else {-0.24/x - 0.75}; (x,calc.clamp(y,-1.5,1.7))}))
 if kind in ("C","D") {
  line(..range(0,81).map(i=>{let x=0.17+i*2.1/80;(x,0.25/x+0.75*(x - 1.35)*(x - 1.35)-0.5)}))
 } else {
  line(..range(0,101).map(i=>{let x=0.15+i*2.12/100;let y = if kind=="base" {0.9*(x - 0.55)*(x - 1.1)*(x - 1.8)/x} else {1.15*(x - 0.32)*(x - 1.5)*(x - 1.5)/x}; (x,calc.clamp(y,-1.5,1.7))}))
 }
})
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2001 数学一试卷参考解答

= 一、填空题

#answer("1（1）")[
*分析* 本题考查二阶常系数线性齐次微分方程，解题要点是通解与特征根的关系.

*解法1* 由通解可知特征根为 $1+i,1-i$，特征方程为
$ (lambda-1-i)(lambda-1+i)=lambda^2-2lambda+2=0, $
故所求方程为 $y''-2y'+2y=0$.

*解法2* 设微分方程为 $y''+b y'+c y=0$. 代入通解得
$ [b(c_1-c_2)+c c_1-2c_2]sin x+[b(c_1+c_2)+c c_2+2c_1]cos x=0. $
由于 $c_1,c_2$ 任意，比较系数可得 $b=-2,c=2$.

*解法3* 对通解求导，
$ y'&=e^x[(c_1-c_2)sin x+(c_1+c_2)cos x], \
y''&=e^x[-2c_2 sin x+2c_1 cos x]. $
消去 $c_1,c_2$，即得 $y''-2y'+2y=0$.
利用特征根的方法最为简便；另外两法计算较多. 常见错误是在最后一项漏写 $y$.
]

#answer("1（2）")[
*分析* 本题考查梯度与散度的概念和计算. 令 $r=sqrt(x^2+y^2+z^2)$，则
$ "div"("grad" r)&=frac(partial^2r,partial x^2)+frac(partial^2r,partial y^2)+frac(partial^2r,partial z^2) \
&=(frac(1,r)-frac(x^2,r^3))+(frac(1,r)-frac(y^2,r^3))+(frac(1,r)-frac(z^2,r^3))=frac(2,r). $
在 $(1,2,2)$ 处 $r=3$，所以所求值为 $2/3$. 散度是数量，不应将三个偏导数分别乘向量 $bold(i),bold(j),bold(k)$ 写成向量.
]

#answer("1（3）")[
*分析* 交换积分次序前应先判断内层积分上下限的大小. 当 $-1<=y<=0$ 时，$1-y<=2$，于是
$ integral_(-1)^0 dif y integral_2^(1-y) f(x,y)dif x
&=-integral_(-1)^0 dif y integral_(1-y)^2 f(x,y)dif x \
&=-integral_1^2 dif x integral_(1-x)^0 f(x,y)dif y \
&=integral_1^2 dif x integral_0^(1-x) f(x,y)dif y. $
也可写成 $integral_2^1 dif x integral_(1-x)^0 f(x,y)dif y$. 常见错误是直接画区域，忽视原积分内层上下限倒置，因而漏掉负号.
]

#answer("1（4）")[
*分析* 由 $A^2+A-4E=O$，
$ (A-E)(A+2E)=A^2+A-2E=2E, $
所以 $(A-E)^(-1)=frac(1,2)(A+2E)$. 利用题设还可写成
$ frac(1,4)(A^2+3A),quad frac(1,2)(6E-A^2). $
本题考查矩阵运算及逆矩阵. 不能把 $(A-E)^(-1)$ 错写成 $A^(-1)-E^(-1)$，也不能把矩阵乘法的规则与实数的规则混同.
]

#answer("1（5）")[
*分析* 由切比雪夫不等式，
$ P{|X-E X|>=2}<=frac(D X,2^2)=frac(2,4)=frac(1,2). $
本题考查对切比雪夫不等式的掌握.
]

= 二、选择题

#answer("2（1）")[
*分析* 在 $x<0$ 一侧，函数单调增加，所以导数应为正，排除 A、C. 在 $x>0$ 一侧，函数依次增加、减少、增加，有两个驻点，相应导数应有两个零点，排除 B. 故选 D. 本题要求从函数图形判断导函数图形，应注意单调性与导数符号、极值点与导数零点的关系.
]

#answer("2（2）")[
*分析* 在原点两个偏导数存在，并不保证函数可微，故 A 不正确. 即使曲面有切平面，其法向量也应为 $(3,1,-1)$，而不是 $(3,1,1)$；而偏导数存在还不能保证有切平面，故 B 不正确. 若两个偏导数在邻域内连续，则函数可微，切平面为
$ f'_x(x_0,y_0)(x-x_0)+f'_y(x_0,y_0)(y-y_0)=z-z_0. $
曲面与平面 $y=0$ 的交线为 $z=f(x,0)$，在原点沿此曲线的切向量为 $(1,0,f'_x(0,0))=(1,0,3)$，所以选 C. 本题考查偏导数存在、连续、可微之间的关系及偏导数的几何意义.
]

#answer("2（3）")[
*分析* 因为 $f(0)=0$，可导的充要条件是 $lim_(u->0)frac(f(u),u)$ 存在. 对 B，令 $u=1-e^h$，则 $h->0$ 等价于 $u->0$，且
$ lim_(h->0)frac(u,h)=-1,quad lim_(h->0)frac(f(1-e^h),h)=-lim_(u->0)frac(f(u),u). $
因此 B 与可导等价，应选 B.
A 中 $1-cos h$ 总为非负，只能涉及一侧的情况，不能判定在零点可导. C 中 $h-sin h$ 是 $h$ 的高阶无穷小，所得极限不是导数定义中的极限. D 用两个函数值之差，不能直接判定零点导数存在. 对后三种情况，可导时相应极限都存在，但反过来不一定成立.
]

#answer("2（4）")[
*分析* 两个同阶实对称矩阵相似的充要条件是具有相同特征值及重数；合同的充要条件是秩和正惯性指数相同. $A,B$ 的特征值均为 $4,0,0,0$，所以它们相似；两者的秩和正惯性指数均为1，所以它们合同. 故选 A.
]

#answer("2（5）")[
*分析* 正面和反面的次数满足 $X+Y=n$，即 $Y=n-X$. 两个随机变量具有线性关系 $Y=a+b X$ 时，$b>0$ 对应相关系数1，$b<0$ 对应相关系数 $-1$，所以选 A.
也可按定义计算：
$ D Y=D(n-X)=D X,quad "Cov"(X,Y)="Cov"(X,n-X)=-D X, $
$ rho_(X Y)=frac("Cov"(X,Y),sqrt(D X)sqrt(D Y))=-1. $
]

= 解答题

#answer("三、")[
*分析* 利用分部积分法计算不定积分.

*解*


$ integral frac(arctan e^x,e^(2x))dif x&=-frac(1,2)integral arctan e^x dif(e^(-2x)) \
&=-frac(1,2)[e^(-2x)arctan e^x-integral frac(dif e^x,e^(2x)(1+e^(2x)))] \
&=-frac(1,2)(e^(-2x)arctan e^x+e^(-x)+arctan e^x)+C. $
注：答案中缺任意常数 $C$ 扣1分.


典型错误是漏掉积分常数 $C$，或在分部积分时求导错误.
]

#answer("四、")[
*分析* 本题考查多元复合函数求导，关键是正确求出 $phi'(x)$.

*解*


$ phi(1)=f(1,f(1,1))=f(1,1)=1, $
$ frac(dif,dif x)phi^3(x)|_(x=1)&=[3phi^2(x)frac(dif phi(x),dif x)]|_(x=1) \
&=3phi^2(x)[f'_1(x,f(x,x))+f'_2(x,f(x,x))(f'_1(x,x)+f'_2(x,x))]|_(x=1) \
&=3dot 1dot [2+3(2+3)]=51. $


典型错误是复合关系不清，将导数写成 $phi'(x)=f'_1(x,f(x,x))+f'_2(x,f(x,x))$，少作了一次复合求导.
]

#answer("五、")[
*分析* 用间接法将函数展开成幂级数，再适当变形，用所得幂级数求给定数项级数的和.

*解*


因 $frac(1,1+x^2)=sum_(n=0)^infinity (-1)^n x^(2n)$，$x in (-1,1)$，
故 $arctan x=integral_0^x (arctan x)'dif x=sum_(n=0)^infinity frac((-1)^n,2n+1)x^(2n+1)$，$x in [-1,1]$.

于是
$ f(x)&=1+sum_(n=1)^infinity frac((-1)^n,2n+1)x^(2n)+sum_(n=0)^infinity frac((-1)^n,2n+1)x^(2n+2) \
&=1+sum_(n=1)^infinity frac((-1)^n,2n+1)x^(2n)+sum_(n=1)^infinity frac((-1)^(n-1),2n-1)x^(2n) \
&=1+sum_(n=1)^infinity frac((-1)^n 2,1-4n^2)x^(2n),quad x in [-1,1], $
因此 $sum_(n=1)^infinity frac((-1)^n,1-4n^2)=frac(1,2)[f(1)-1]=frac(pi,4)-frac(1,2)$.


典型错误是只写到
$ f(x)=sum_(n=0)^infinity frac((-1)^n,2n+1)(1+x^2)x^(2n), $
便认为已经展开成幂级数. 应进一步合并同次幂，写成系数为常数的形式.
]

#answer("六、")[
*分析* 本题考查空间第二型曲线积分. 采用参数方程需分段计算；用斯托克斯公式逐个投影时，求 $y O z$、$z O x$ 平面的投影区域也有一定困难. 可采用转换投影、第一型曲面积分或降维法，从多种方法中选择简便的解法.

*解法1*


记 $S$ 为平面 $x+y+z=2$ 上 $L$ 所围成部分的上侧，$D$ 为 $S$ 在 $x O y$ 坐标面上的投影，由斯托克斯公式得
$ I&=integral.double_S (-2y-4z)dif y dif z+(-2z-6x)dif z dif x+(-2x-2y)dif x dif y \
&=-frac(2,sqrt(3))integral.double_S (4x+2y+3z)dif S \
&=-2integral.double_D (x-y+6)dif x dif y \
&=-12integral.double_D dif x dif y \
&=-24. $


*解法2* 转换投影法. 取平面 $x+y+z=2$ 被 $L$ 围成部分的上侧为 $S$，在 $x O y$ 平面上的投影为 $D={(x,y):|x|+|y|<=1}$. 因 $z=2-x-y$，$z'_x=z'_y=-1$，由斯托克斯公式，
$ I&=integral.double_S (-2y-4z)dif y dif z+(-2z-6x)dif z dif x+(-2x-2y)dif x dif y \
&=integral.double_D (-2y-4z,-2z-6x,-2x-2y)dot (-z'_x,-z'_y,1)dif x dif y \
&=-2integral.double_D (4x+2y+3z)dif x dif y \
&=-2integral.double_D (x-y+6)dif x dif y=-24. $
这里 $D$ 分别关于两坐标轴对称，$integral.double_D x dif x dif y=integral.double_D y dif x dif y=0$.

也可降维：将 $z=2-x-y$ 直接代入，$dif z=-dif x-dif y$，记 $L_0$ 为 $L$ 在 $x O y$ 平面的逆时针投影，由格林公式得
$ I&=integral.cont_(L_0)(y^2-4x^2-4x y+4x+4y-4)dif x \
&quad +(3y^2-2x^2+8x y-8x-8y+8)dif y \
&=-2integral.double_D (x-y+6)dif x dif y=-24. $

*解法3* 逐个投影法. 由斯托克斯公式，把积分分为 $I_1,I_2,I_3$. 在 $y O z$ 平面的投影区域为
$ D_(y z)={(y,z):|2-y-z|+|y|<=1}. $
其四条边分别为 $2y+z=3,z=3,2y+z=1,z=1$，于是
$ I_1=-2integral_1^3 dif z integral_((1-z)/2)^((3-z)/2)(y+2z)dif y=-16. $
类似地，$I_2=-2integral.double_S (z+3x)dif z dif x=-8$；由奇偶性及对称性，$I_3=-2integral.double_S (x+y)dif x dif y=0$. 故 $I=I_1+I_2+I_3=-24$.

*解法4* 参数法. 将曲线分成四段，按逆时针顺序计算.
当 $x>=0,y>=0$ 时，$L_1:y=1-x,z=1$，$x$ 从1到0，
$ I_1=integral_1^0[(1-x)^2-1+(2-x^2)(-1)]dif x=frac(7,3). $
当 $x<=0,y>=0$ 时，$L_2:y=1+x,z=1-2x$，$x$ 从0到 $-1$，
$ I_2=integral_0^(-1)(2x+4)dif x=-3. $
当 $x<=0,y<=0$ 时，$L_3:y=-1-x,z=3$，$x$ 从 $-1$ 到0，
$ I_3=integral_(-1)^0(2x^2+2x-26)dif x=-frac(79,3). $
当 $x>=0,y<=0$ 时，$L_4:y=x-1,z=3-2x$，$x$ 从0到1，
$ I_4=integral_0^1(-18x+12)dif x=3. $
因此 $I=I_1+I_2+I_3+I_4=-24$.

典型错误有：用斯托克斯公式后，在不封闭的曲面上再用高斯公式；曲线、曲面积分记号不清；斯托克斯公式写错；参数方程或投影区域求错；计算错误.
]

#answer("七、")[
*分析* 第一问的关键是唯一性，利用 $f''(x)!=0$ 证明 $f'(x)$ 严格单调；第二问可用泰勒公式.


*证法1* （1）任给非零的 $x in (-1,1)$，由拉格朗日中值定理，存在 $theta(x) in (0,1)$，使得
$ f(x)=f(0)+x f'(theta(x)x). $
由于 $f''(x)$ 连续且不为零，故在 $(-1,1)$ 内不变号，不妨设 $f''(x)>0$，则 $f'(x)$ 在 $(-1,1)$ 内严格单增，故 $theta(x)$ 唯一.

（2）由泰勒公式得
$ f(x)=f(0)+f'(0)x+1/2 f''(xi)x^2 quad (xi #text[在0与] x #text[之间]), $
所以 $x f'(theta(x)x)=f(x)-f(0)=f'(0)x+1/2 f''(xi)x^2$，从而
$ theta(x) (f'(theta(x)x)-f'(0))/(theta(x)x)=1/2 f''(xi). $
由于
$ lim_(x->0) (f'(theta(x)x)-f'(0))/(theta(x)x)=f''(0), quad lim_(x->0) f''(xi)=lim_(xi->0) f''(xi)=f''(0), $
故 $lim_(x->0) theta(x)=1/2$.

*证法2*

（1）同证法一（1）.

（2）对于非零 $x in (-1,1)$，由拉格朗日中值定理得
$ f(x)=f(0)+x f'(theta(x)x) quad (0<theta(x)<1), $
所以
$ (f'(theta(x)x)-f'(0))/x=(f(x)-f(0)-f'(0)x)/x^2. $
由于
$ lim_(x->0) (f'(theta(x)x)-f'(0))/(theta(x)x)=f''(0), \
lim_(x->0) (f(x)-f(0)-f'(0)x)/x^2=lim_(x->0) (f'(x)-f'(0))/(2x)=1/2 f''(0), $
故 $lim_(x->0) theta(x)=1/2$.


*证法3* （1）同证法1. （2）由 $f(x)=f(0)+f'(theta(x)x)x$，对其中的导数再展开，
$ f'(theta(x)x)=f'(0)+f''(0)theta(x)x+o(theta(x)x). $
故
$ f(x)=f(0)+f'(0)x+f''(0)theta(x)x^2+o(theta(x)x)x, $
$ theta(x)=frac(f(x)-f(0)-f'(0)x-o(theta(x)x)x,f''(0)x^2). $
由于
$ lim_(x->0)frac(f(x)-f(0)-f'(0)x,x^2)=frac(1,2)f''(0),quad lim_(x->0)frac(o(theta(x)x)x,x^2)=0, $
所以 $lim_(x->0)theta(x)=1/2$.

*证法4* （1）同证法1. （2）由 $f''(x)!=0$，$f'(x)$ 存在连续可导的反函数，记为 $phi.alt$. 则
$ theta(x)x=phi.alt(frac(f(x)-f(0),x)),quad lim_(x->0)phi.alt(frac(f(x)-f(0),x))=0. $
由洛必达法则，
$ lim_(x->0)theta(x)&=lim_(x->0)phi.alt'(frac(f(x)-f(0),x))frac(x f'(x)-f(x)+f(0),x^2) \
&=phi.alt'(f'(0))lim_(x->0)frac(x f''(x),2x) \
&=frac(1,2)phi.alt'(f'(0))f''(0)=frac(1,2). $
末式由 $phi.alt(f'(x))=x$ 两边求导可知.

本题考查拉格朗日中值定理、严格单调性和极限计算. 常见错误有：只证存在或只证唯一；把“唯一”理解为两个不同 $x$ 对应同一个 $theta$；写出泰勒式后无法与题设联系.
尤其不能将
$ frac(f(x)-f(0)-f'(0)x,x^2)=frac(f'(theta(x)x)-f'(0),x) $
的右侧贸然用洛必达法则算成 $f''(theta(x)x)theta(x)$. 分子求导应包含 $(theta(x)x)'$，且题设并未保证 $theta$ 可导.
]

#answer("八、")[
*分析* 这是数学综合应用题，先用三重积分求体积、用二重积分求侧面积，再按题意建立微分方程，解出高度随时间的变化，最后求高度为零的时间.


*解* 记 $V$ 为雪堆体积，$S$ 为雪堆的侧面积，则
$ V &= integral_0^(h(t)) dif z integral.double_(x^2+y^2 <= 1/2 [h^2(t)-h(t)z]) dif x dif y \
&= integral_0^(h(t)) 1/2 pi [h^2(t)-h(t)z] dif z=pi/4 h^3(t), \
S &= integral.double_(x^2+y^2 <= h^2(t)/2) sqrt(1+(z'_x)^2+(z'_y)^2) dif x dif y \
&= integral.double_(x^2+y^2 <= h^2(t)/2) sqrt(1+(16(x^2+y^2))/h^2(t)) dif x dif y \
&= (2pi)/h(t) integral_0^(h(t)/sqrt(2)) [h^2(t)+16r^2]^(1/2) r dif r=(13pi h^2(t))/12. $
由题意知 $(dif V)/(dif t)=-0.9S$，所以 $(dif h(t))/(dif t)=-13/10$，因此 $h(t)=-13/10 t+C$.

由 $h(0)=130$ 得 $h(t)=-13/10 t+130$.

令 $h(t)->0$ 得 $t=100$（小时）.

因此高度为130厘米的雪堆全部融化所需时间为100小时.


典型错误有：误将侧面积当成侧面的方程；把 $frac(dif V,dif t)=-0.9S$ 漏写负号；试图直接由此式求 $V$；把 $t$ 当作与 $x,y$ 有关，积分时混淆变量；不会计算体积和曲面面积.
]

#answer("九、")[
*分析* 应理解基础解系的概念，先证各向量都是方程组的解，再证它们线性无关.


*解* 由于 $beta_i (i=1,2,dots,s)$ 为 $alpha_1,alpha_2,dots,alpha_s$ 的线性组合，所以 $beta_i (i=1,2,dots,s)$ 均为 $A x=0$ 的解.

设 $k_1 beta_1+k_2 beta_2+dots+k_s beta_s=0$，#h(1em)（1）

即 $(t_1 k_1+t_2 k_s)alpha_1+(t_2 k_1+t_1 k_2)alpha_2+dots+(t_2 k_(s-1)+t_1 k_s)alpha_s=0$，由于 $alpha_1,alpha_2,dots,alpha_s$ 线性无关，因此有
$ cases(t_1 k_1+t_2 k_s=0,t_2 k_1+t_1 k_2=0,dots,t_2 k_(s-1)+t_1 k_s=0). quad (2) $
因为系数行列式
$ mat(delim: "|",t_1,0,dots,0,t_2;t_2,t_1,0,dots,0;0,t_2,t_1,dots,0;dots.v,dots.v,dots.v,dots.v,dots.v;0,0,dots,t_2,t_1)_(s times s)=t_1^s+(-1)^(s+1) t_2^s, $
所以当 $t_1^s+(-1)^(s+1) t_2^s != 0$，即当 $s$ 为偶数，$t_1 != plus.minus t_2$；$s$ 为奇数，$t_1 != -t_2$ 时，方程组（2）只有零解 $k_1=k_2=dots=k_s=0$，从而 $beta_1,beta_2,dots,beta_s$ 线性无关. 此时 $beta_1,beta_2,dots,beta_s$ 也为 $A x=0$ 的一个基础解系.


本题考查基础解系、向量组的线性表示及行列式计算. 同样的内容也可直接用向量组线性无关的形式提出. 典型错误是把齐次方程只有零解的条件说成系数行列式为零，或不能正确说明向量组怎样才是线性无关.
]

#answer("十、")[
*分析* 充分利用题设，将矩阵关系转成线性方程组，或直接用矩阵方程求解，再利用相似关系或特征值求行列式.


*解* （1）设 $B=mat(a_1,a_2,a_3;b_1,b_2,b_3;c_1,c_2,c_3)$，则由 $A P=P B$ 得
$ (A x,A^2 x,A^3 x)=(x,A x,A^2 x)mat(a_1,a_2,a_3;b_1,b_2,b_3;c_1,c_2,c_3). $
上式可写为
$ A x=a_1 x+b_1 A x+c_1 A^2 x, quad #text[①] \
A^2 x=a_2 x+b_2 A x+c_2 A^2 x, quad #text[②] \
A^3 x=a_3 x+b_3 A x+c_3 A^2 x. quad #text[③] $
将 $A^3 x=3A x-2A^2 x$ 代入③式得
$ 3A x-2A^2 x=a_3 x+b_3 A x+c_3 A^2 x. quad #text[④] $
由于 $x,A x,A^2 x$ 线性无关，故

由①式可得 $a_1=c_1=0,b_1=1$；

由②式可得 $a_2=b_2=0,c_2=1$；

由④式可得 $a_3=0,b_3=3,c_3=-2$，

从而 $B=mat(0,0,0;1,0,3;0,1,-2)$.

（2）由①知 $A$ 与 $B$ 相似，故 $A+E$ 与 $B+E$ 相似，从而
$ |A+E|=|B+E|=mat(delim: "|",1,0,0;1,1,3;0,1,-1)=-4. $


（1）*解法2* 由题设直接得到
$ A(x,A x,A^2x)&=(A x,A^2x,A^3x) \
&=(A x,A^2x,3A x-2A^2x) \
&=(x,A x,A^2x)mat(0,0,0;1,0,3;0,1,-2). $
因为 $P=(x,A x,A^2x)$ 可逆，所以 $B=P^(-1)A P=mat(0,0,0;1,0,3;0,1,-2)$.

*解法3* 将题设改写为 $A(A^2x-A x)=-3(A^2x-A x)$，可知 $-3$ 是特征值；类似地，$3A x+A^2x$ 是特征值1的特征向量，$A^2x+2A x-3x$ 是特征值0的特征向量. 令
$ M=mat(0,0,-3;-1,3,2;1,1,1),quad Q=P M, $
则 $Q^(-1)A Q=mat(-3,0,0;0,1,0;0,0,0)=Lambda$. 又 $Q^(-1)A Q=M^(-1)B M$，故
$ B=M Lambda M^(-1)=mat(0,0,0;1,0,3;0,1,-2). $

（2）*解法2* 从 $A(A-E)(A+3E)x=0$ 出发，由 $x,A x,A^2x$ 线性无关，$(A-E)(A+3E)x!=0$，故0为 $A$ 的特征值. 同理得特征值 $-3$ 和1，所以 $det(A+E)=(0+1)(-3+1)(1+1)=-4$.

典型错误是从 $A(A-E)(A+3E)x=0$ 推出矩阵乘积为零，再误用实数运算规律推出 $A=O$ 或 $A=-3E$；或看到相似变换便认为 $B$ 一定是对角矩阵.
]

#answer("十一、")[
*分析* 第一问是条件概率：当 $X=n$ 时，由各乘客下车与否相互独立，$Y$ 的条件分布为二项分布. $(X,Y)$ 是二维离散随机变量，第二问用
$ P{X=n,Y=m}=P{Y=m|X=n}P{X=n}. $


*解* （1）$P{Y=m|X=n}=C_n^m p^m (1-p)^(n-m)$，$0<=m<=n,n=0,1,2,dots$.

（2）
$ P{X=n,Y=m} &= P{Y=m|X=n}P{X=n} \
&= C_n^m p^m (1-p)^(n-m) dot e^(-lambda)/(n!) lambda^n, \
&quad 0<=m<=n,n=0,1,2,dots. $


本题考查条件概率、独立性、二项及泊松分布和二维离散分布计算. 典型错误是把条件下的二项分布写成 $Y$ 的无条件分布，或不理解“概率分布”的要求.
]

#answer("十二、")[
*分析* 可以将配对和看作来自 $N(2mu,2sigma^2)$ 的 $n$ 个简单随机样本，用样本方差求期望；也可按前后两个样本组分别展开计算. 应注意各 $X_i$ 相互独立.


*解法1* 考虑 $(X_1+X_(n+1)),(X_2+X_(n+2)),dots,(X_n+X_(2n))$，将其视为取自总体 $N(2mu,2sigma^2)$ 的简单随机样本，则其样本均值为
$ 1/n sum_(i=1)^n (X_i+X_(n+i))=1/n sum_(i=1)^(2n) X_i=2overline(X), $
样本方差为 $1/(n-1)Y$.

由于 $E(1/(n-1)Y)=2sigma^2$，所以 $E(Y)=(n-1)(2sigma^2)=2(n-1)sigma^2$.

*解法2* 记
$ overline(X)'=1/n sum_(i=1)^n X_i, quad overline(X)''=1/n sum_(i=1)^n X_(n+i), $
显然有 $2overline(X)=overline(X)'+overline(X)''$. 因此
$ E(Y) &= E[sum_(i=1)^n (X_i+X_(n+i)-2overline(X))^2] \
&= E{sum_(i=1)^n [(X_i-overline(X)')+(X_(n+i)-overline(X)'')]^2} \
&= E{sum_(i=1)^n [(X_i-overline(X)')^2+2(X_i-overline(X)')(X_(n+i)-overline(X)'')+(X_(n+i)-overline(X)'')^2]} \
&= E[sum_(i=1)^n (X_i-overline(X)')^2]+0+E[sum_(i=1)^n (X_(n+i)-overline(X)'')^2] \
&= (n-1)sigma^2+(n-1)sigma^2 \
&= 2(n-1)sigma^2. $


典型错误是将样本均值的分母 $2n$ 写成 $n$；误以为 $X_i$ 与 $overline(X)$ 独立而把 $E(X_i overline(X))$ 写成 $E(X_i)E(overline(X))$；或在方差运算中遗漏协方差项，例如把 $D(X_i+overline(X))$ 写成两个方差的和.
]

