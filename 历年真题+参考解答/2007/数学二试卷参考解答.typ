#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2007, subject: "二", title: "2007年全国硕士研究生入学统一考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#import "@preview/cetz:0.5.2"
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2007 数学二试卷参考解答

= 一、选择题

#answer("1.")[

选 B.
*解法1* 当 $x->0^+$ 时，
$ 1-e^(sqrt(x)) tilde -sqrt(x),quad sqrt(1+sqrt(x))-1 tilde 1/2 sqrt(x), $
$ 1-cos sqrt(x) tilde 1/2 x, $
排除 A、C、D，故选 B.
*解法2* 直接利用等价无穷小的传递性，有
$ ln((1+x)/(1-sqrt(x)))=ln(1+(x+sqrt(x))/(1-sqrt(x))) \
 tilde (x+sqrt(x))/(1-sqrt(x)) tilde x+sqrt(x) tilde sqrt(x). $
*解法3* 用洛必达法则验证：
$ lim_(x->0^+) ln((1+x)/(1-sqrt(x)))/sqrt(x) \
=lim_(x->0^+)(2sqrt(x)/(1+x)+1/(1-sqrt(x)))=1. $

]

#answer("2.")[

选 A.
*解* 间断点为 $0,1,plus.minus pi/2$，后三点均为无穷间断点. 在零点两侧，
$ lim_(x->0^+)f(x)=lim_(x->0^+)tan x/x dot (1+e^(1-1/x))/(1-e^(1-1/x))=1, $
$ lim_(x->0^-)f(x)=lim_(x->0^-)tan x/x dot (e^(1/x)+e)/(e^(1/x)-e)=-1. $
所以 $x=0$ 为跳跃间断点，即第一类间断点.

]

#answer("3.")[

选 C.
*解* 由图形知 $f(x)$ 为奇函数，故 $F(x)$ 为偶函数，$F(-3)=F(3)$. 利用半圆的面积，得
$ F(3)=integral_0^2 f(t)dif t+integral_2^3 f(t)dif t=pi/2-pi/8=3pi/8, $
$ F(2)=integral_0^2 f(t)dif t=pi/2. $
所以 $F(-3)=3/4 F(2)$.
*注* 也可直接由几何意义判断 $0<F(3)<F(2)$，排除其他选项. 若直接计算各段函数的积分，会徒增计算量.


#cetz.canvas({
 import cetz.draw: *
 line((-3.4,0),(3.7,0),mark:(end:">"));line((0,-1.3),(0,1.6),mark:(end:">"))
 for (c,r,s) in ((-2.5,.5,1),(-1,1,-1),(1,1,1),(2.5,.5,-1)) {
  let pts=range(81).map(i=>{let t=i*180deg/80;(c - r*calc.cos(t),s*r*calc.sin(t))})
  line(..pts)
 }
 for i in (-3,-2,-1,1,2,3){content((i,-.1),[#i],anchor:"north")}
 content((-.1,-.1),$O$,anchor:"north-east");content((3.7,0),$x$,anchor:"north");content((0,1.6),$y$,anchor:"east")
})
]

#answer("4.")[

选 D.
*解* 由连续性及 A 中极限存在，有
$ f(0)=lim_(x->0)f(x)=lim_(x->0)(f(x)/x dot x)=0, $
所以 A 正确. 对 B，同理得 $lim_(x->0)(f(x)+f(-x))=0$，即 $2f(0)=0$，B 正确.
对 C，由 A 知 $f(0)=0$，于是
$ f'(0)=lim_(x->0)(f(x)-f(0))/x=lim_(x->0)f(x)/x, $
故 C 正确. D 可取反例 $f(x)=|x|$，此时 $lim_(x->0)(f(x)-f(-x))/x=0$ 存在，但 $f'(0)$ 不存在.

]

#answer("5.")[

选 D.
*解* 当 $x->0$ 时，函数趋于无穷，故 $x=0$ 为铅直渐近线.
当 $x->+infinity$ 时，$y->+infinity$，没有水平渐近线，而
$ lim_(x->+infinity) y/x=lim_(x->+infinity)(1/x^2+(x+ln(1+e^(-x)))/x)=1, $
$ lim_(x->+infinity)(y-x)=lim_(x->+infinity)(1/x+ln(1+e^(-x)))=0, $
所以 $y=x$ 为该方向的斜渐近线.
当 $x->-infinity$ 时，$y->0$，所以 $y=0$ 为水平渐近线. 共三条，选 D.
*常见错误* 只讨论一个无穷方向，遗漏另一方向的渐近线. 水平与斜渐近线不能在同一方向并存，但不同方向应分别考虑.

]

#answer("6.")[

选 D.
*解法1* 由拉格朗日中值定理，
$ u_(n+1)-u_n=f(n+1)-f(n)=f'(xi_n),quad xi_n in (n,n+1). $
由 $f''(x)>0$ 知 $f'(x)$ 严格增加，故
$ u_(n+1)=u_1+sum_(k=1)^n f'(xi_k)>=u_1+n f'(xi_1)=u_1+n(u_2-u_1). $
当 $u_2>u_1$ 时，右端趋于正无穷，故数列发散，选 D.
*解法2* 由带拉格朗日余项的泰勒公式，
$ f(k+1)=f(k)+f'(k)+1/2 f''(xi_k)>f(k)+f'(k). $
自 $k=2$ 至 $n$ 累加，并利用 $f'$ 增加，得
$ f(n+1)>f(2)+(n-1)f'(2). $
又 $f(1)=f(2)-f'(2)+1/2 f''(xi)>f(2)-f'(2)$，故
$ f'(2)>f(2)-f(1)=u_2-u_1>0, $
从而 $f(n+1)->+infinity$.
*解法3* 排除法. 取 $f(x)=1/x-x$，满足 A 的条件但 $f(n)->-infinity$，排除 A；取 $f(x)=1/x$，满足 B 的条件但 $f(n)->0$，排除 B；取 $f(x)=x^2$，满足 C 的条件但发散，排除 C.
*注* 利用望远镜级数 $sum_(n=1)^infinity(u_(n+1)-u_n)$ 收敛当且仅当 $lim u_n$ 存在，也可判断：当 $u_2-u_1>0$ 时，各差至少为同一正数，该级数发散，故数列不收敛.

]

#answer("7.")[

选 C.
*解* C 表明 $f(x,y)-f(0,0)=o(sqrt(x^2+y^2))$，正是线性主部为零的可微定义.
A 仅表示连续；B 仅表示两个偏导数存在且为零，均不足以推出可微. D 仅表示偏导数分别沿坐标轴连续，也不充分. 例如
$ f(x,y)=cases(0 & x y=0,1 & x y!=0), $
沿坐标轴的两个偏导数恒为零，满足 D，但函数在原点不连续，因此不可微.
*常见错误* 将“沿坐标轴连续”误当作“在二维邻域内连续”.

]

#answer("8.")[

选 B.
*解* 积分区域为 $D=\{(x,y)|pi/2<=x<=pi,sin x<=y<=1\}$. 对 $y$ 固定，在该区域中 $pi-arcsin y<=x<=pi$，所以
$ integral_(pi/2)^pi dif x integral_(sin x)^1 f(x,y)dif y
=integral_0^1 dif y integral_(pi-arcsin y)^pi f(x,y)dif x. $
*常见错误* 将区域取成曲线下方；或把 $sin x$ 在 $[pi/2,pi]$ 上的反函数写成 $pi+arcsin y$.


#align(center,cetz.canvas({
 import cetz.draw: *
 line((calc.pi/2,1),(calc.pi,1),..range(0,61).map(i=>{let x=calc.pi - i/60*calc.pi/2;(x,calc.sin(x*1rad))}),close:true,fill:rgb("dddddd"))
 line((-.2,0),(3.8,0),mark:(end:">"));line((0,-.2),(0,1.5),mark:(end:">"))
 line(..range(0,101).map(i=>{let x=i/100*calc.pi;(x,calc.sin(x*1rad))}))
 line((0,1),(calc.pi/2,1),stroke:(dash:"dashed"));line((calc.pi,0),(calc.pi,1))
 line((0,.5),(3.5,.5),stroke:(dash:"dashed"))
 content((-.1,-.1),$O$);content((3.8,0),$x$);content((0,1.6),$y$)
 content((calc.pi/2,-.08),$pi/2$,anchor:"north");content((calc.pi,-.08),$pi$,anchor:"north")
 content((-.08,1),[1],anchor:"east");content((-.08,.5),$y$,anchor:"east");content((2.65,.85),$D$)
}))
]

#answer("9.")[

选 A.
*解* A 中的三个向量之和为零：
$ (alpha_1-alpha_2)+(alpha_2-alpha_3)+(alpha_3-alpha_1)=bold(0), $
故线性相关.
其余向量组以 $(alpha_1,alpha_2,alpha_3)$ 为基础的系数矩阵分别为
$ mat(1,0,1;1,1,0;0,1,1),quad mat(1,0,-2;-2,1,0;0,-2,1),quad mat(1,0,2;2,1,0;0,2,1), $
其行列式分别为2、$-7$、9，均非零，所以其余三组都线性无关.

]

#answer("10.")[

选 B.
*解* $|lambda E-A|=lambda(lambda-3)^2$，所以 $A$ 的特征值为3、3、0，与 $B$ 不同，二者不相似.
实对称矩阵 $A$ 相似且合同于 $C=mat(3,0,0;0,3,0;0,0,0)$，而 $C$ 合同于 $B$，由合同的传递性知 $A$ 合同于 $B$.
*注* 两个实对称矩阵合同当且仅当其正、负惯性指数分别相等，也可直接判断.
*常见错误* 混淆相似与合同.

]

= 二、填空题

#answer("11.")[
$-1/6$.
*解法1* 用洛必达法则及等价无穷小，有
$ lim_(x->0)(arctan x-sin x)/x^3=lim_(x->0)(1/(1+x^2)-cos x)/(3x^2) \
=1/3 lim_(x->0)((1-cos x)/x^2-cos x)/(1+x^2)=1/3(1/2-1)=-1/6. $
*解法2* 用泰勒公式，$arctan x=x-x^3/3+o(x^3)$，$sin x=x-x^3/6+o(x^3)$，相减再除以 $x^3$，得 $-1/6$.
*解法3* 连续应用洛必达法则，得到
$ lim_(x->0)(sin x-2x cos x+x^2 sin x)/(6x+12x^3) \
=lim_(x->0)(cos x-2cos x+4x sin x+x^2 cos x)/(6+36x^2)=-1/6. $

]

#answer("12.")[
$1+sqrt(2)$.
*解* 参数方程的导数为
$ (dif y)/(dif x)=cos t/(-sin t-2sin t cos t), $
在 $t=pi/4$ 时为 $-1/(1+sqrt(2))$，故法线斜率为 $1+sqrt(2)$.
*常见错误* 将 $x'$ 与 $y'$ 颠倒；或求成切线斜率.

]

#answer("13.")[
$((-1)^n 2^n n!)/3^(n+1)$.
*解* 连续求导归纳得
$ y^(n)=((-1)^n 2^n n!)/(2x+3)^(n+1), $
故令 $x=0$ 得上述答案.
*常见错误* 忽略内层 $2x+3$ 的导数，漏掉因子 $2^n$.

]

#answer("14.")[
$C_1 e^(3x)+C_2 e^x-2e^(2x)$.
*解* 齐次方程的特征方程为 $lambda^2-4lambda+3=0$，特征根为3及1，通解为 $C_1 e^(3x)+C_2 e^x$.
设非齐次方程特解为 $A e^(2x)$，代入得 $A=-2$，故通解为
$ y=C_1 e^(3x)+C_2 e^x-2e^(2x). $
*常见错误* 特解系数计算错误；没有掌握“齐次通解加非齐次特解”的结构.


]

#answer("15.")[
$2(-y/x f'_1+x/y f'_2)$.

*解* 由链式法则，
$ (partial z)/(partial x)=-y/x^2 f'_1+1/y f'_2,quad (partial z)/(partial y)=1/x f'_1-x/y^2 f'_2, $
故 $x(partial z)/(partial x)-y(partial z)/(partial y)=2(-y/x f'_1+x/y f'_2)$.
*常见错误* 复合函数的求导结构或内层求导计算错误.

]

#answer("16.")[
1.
*解* 直接相乘，得
$ A^3=mat(0,0,0,1;0,0,0,0;0,0,0,0;0,0,0,0), $
故其秩为1.
*注* 对同类 $n$ 阶矩阵，$A^k$ 的第 $k$ 条上副对角线为1，其余元素为零；$A^(n-1)$ 只有右上角为1，$A^n=O$.


]

= 三、解答题

#answer("17.")[
解　在 $integral_0^(f(x))f^(-1)(t)dif t=integral_0^x t (cos t-sin t)/(sin t+cos t)dif t$ 两边对 $x$ 求导，得
$ f^(-1)[f(x)]dot f'(x)=x (cos x-sin x)/(sin x+cos x), $
即 $x f'(x)=x(cos x-sin x)/(sin x+cos x)$，
$ f'(x)=(cos x-sin x)/(sin x+cos x),quad x in (0,pi/4], $
故
$ f(x)=integral (cos x-sin x)/(sin x+cos x)dif x=ln(sin x+cos x)+C. $
由题设知，$f(0)=0$，于是 $C=0$，因此 $f(x)=ln(sin x+cos x),x in [0,pi/4]$.

*分析* 利用变上限积分求导及复合函数的链式法则，求出 $f'$，再由原等式确定初始值.
*初始值的确定* 在原等式中令 $x=0$，得 $integral_0^(f(0)) f^(-1)(t)dif t=0$. 反函数的值域为 $[0,pi/4]$，它单调且非负，因此必须 $f(0)=0$.
*常见错误* 上限为 $f(x)$ 时漏乘 $f'(x)$；只写出一般形式而不确定常数；不用凑微分法，改作繁琐的三角恒等变换.

]

#answer("18.")[
解　（Ⅰ）所求旋转体的体积为
$ V(a)=pi integral_0^(+infinity)x a^(-x/a)dif x \
=-a/(ln a)pi integral_0^(+infinity)x dif(a^(-x/a)) \
=-a/(ln a)pi[x a^(-x/a)]|_0^(+infinity)+a/(ln a)pi integral_0^(+infinity)a^(-x/a)dif x \
=pi(a/(ln a))^2. $
（Ⅱ）$V'(a)=2pi(a(ln a-1))/(ln^3 a)$.

令 $V'(a)=0$，得 $ln a=1$，从而 $a=e$.

当 $1<a<e$ 时，$V'(a)<0,V(a)$ 单调减少；当 $a>e$ 时，$V'(a)>0,V(a)$ 单调增加.

所以 $a=e$ 时 $V$ 最小，最小体积为 $V(e)=pi(e/(ln e))^2=pi e^2$.

*分析* 由旋转体体积公式写出反常积分，再用一元函数求最值的方法确定参数.
*常见错误* 分部积分不熟练，导致反常积分计算错误，并影响第二问.

]

#answer("19.")[
解　令 $y'=p$，则 $y''=p'$，原方程化为 $p'(x+p^2)=p$，即 $(dif x)/(dif p)-x/p=p$，于是
$ x=e^(integral 1/p dif p)(integral p e^(-integral 1/p dif p)dif p+C_1) \
=p(integral dif p+C_1)=p(p+C_1). $
因 $p|_(x=1)=y'(1)=1$，得 $C_1=0$，故 $p^2=x$.

由 $y'(1)=1$ 知，应取 $p=sqrt(x)$，即 $(dif y)/(dif x)=sqrt(x)$，解得 $y=2/3 x^(3/2)+C_2$，又由 $y(1)=1$ 得 $C_2=1/3$，故 $y=2/3 x^(3/2)+1/3$.

*方法2* 降阶后 $p'(x+p^2)=p$ 可写为 $p dif x-x dif p=p^2 dif p$，即
$ dif(x/p)=(p dif x-x dif p)/p^2=dif p. $
积分得 $x/p=p+C_1$. 由 $x=1,p=1$ 得 $C_1=0$，故 $p^2=x$. 取满足初始条件的正根 $p=sqrt(x)$，再积分并代入 $y(1)=1$，仍得 $y=2x^(3/2)/3+1/3$.
*常见错误* 降阶后既未转化为关于 $x(p)$ 的线性方程，也未识别可凑成的微分，无法继续求解.

]

#answer("20.")[
解　在 $y-x e^(y-1)=1$ 中，令 $x=0$ 得 $y=1$.

在 $y-x e^(y-1)=1$ 两边对 $x$ 求导，得 $y'-e^(y-1)-x y'e^(y-1)=0$，即
$ (2-y)y'-e^(y-1)=0. quad "（*）" $
由 $x=0,y=1$ 得 $y'|_(x=0)=1$.

在（＊）式两边对 $x$ 求导，得 $(2-y)y''-y'^2-e^(y-1)y'=0$. 由 $x=0$ 时，$y=1,y'=1$ 得 $y''|_(x=0)=2$.

因为 $(dif z)/(dif x)=f'(ln y-sin x)(y'/y-cos x)$，故 $(dif z)/(dif x)|_(x=0)=0$.

又
$ (dif^2 z)/(dif x^2)=&f''(ln y-sin x)(y'/y-cos x)^2 \
&+f'(ln y-sin x)[y''/y-(y')^2/y^2+sin x], $
所以 $(dif^2 z)/(dif x^2)|_(x=0)=f'(0)(2-1)=1$.

*方法2* 隐函数求导后直接解出
$ y'=e^(y-1)/(1-x e^(y-1)),quad y'(0)=1. $
再对商求导，得
$ y''=(e^(y-1)y'(1-x e^(y-1))+e^(y-1)(e^(y-1)+x e^(y-1)y'))/(1-x e^(y-1))^2, $
从而 $y''(0)=2$. 此后代入复合函数的一、二阶导数公式，仍得 $z'(0)=0,z''(0)=1$.
*常见错误* 二阶隐函数或复合函数求导计算不熟练.

]

#answer("21.")[
证　令 $h(x)=f(x)-g(x)$，则 $h(a)=h(b)=0$.

设 $f(x),g(x)$ 在 $(a,b)$ 内的最大值 $M$ 分别在 $alpha in (a,b),beta in (a,b)$ 取得.

当 $alpha=beta$ 时，取 $eta=alpha$，则 $h(eta)=0$.

当 $alpha!=beta$ 时，
$ h(alpha)=f(alpha)-g(alpha)=M-g(alpha)>=0, $
$ h(beta)=f(beta)-g(beta)=f(beta)-M<=0, $
由介值定理，存在介于 $alpha$ 与 $beta$ 之间的点 $eta$，使得 $h(eta)=0$.

综上，存在 $eta in (a,b)$，使得 $h(eta)=0$.

因此由罗尔定理可知，存在 $xi_1 in (a,eta),xi_2 in (eta,b)$，使得 $h'(xi_1)=h'(xi_2)=0$，再由罗尔定理可知，存在 $xi in (xi_1,xi_2) subset (a,b)$，使得 $h''(xi)=0$，即 $f''(xi)=g''(xi)$.

*注* 也可用反证法证明中间零点存在. 若 $h(x)$ 在 $(a,b)$ 内没有零点，由连续性它恒正或恒负. 不妨设恒正，若 $g$ 在 $x_0$ 取得最大值，则 $f(x_0)>g(x_0)=max g$，与二者最大值相等矛盾.
*常见错误* 将“最大值相等”误解为“在同一点取得最大值”，或误解为“最大值点相同”；不分析条件就套用柯西中值定理或泰勒公式，无法得到所需结论.


]

#answer("22.")[
解　由区域的对称性和被积函数的奇偶性有
$ integral.double_D f(x,y)dif sigma=4integral.double_(D_1)f(x,y)dif sigma, $
其中 $D_1$ 为 $D$ 在第一象限的部分，而
$ integral.double_(D_1)f(x,y)dif sigma=integral.double_(D_(11))f(x,y)dif sigma+integral.double_(D_(12))f(x,y)dif sigma, $
其中 $D_(11)={(x,y)|0<=y<=1-x,0<=x<=1}$，$D_(12)={(x,y)|1<=x+y<=2,x>=0,y>=0}$（如下图所示）.
#import "@preview/cetz:0.5.2"
#cetz.canvas({
 import cetz.draw: *
 line((-2.7,0),(3,0),mark:(end:">"));line((0,-2.6),(0,3),mark:(end:">"))
 for r in (1,2){line((r,0),(0,r),(-r,0),(0,-r),close:true)}
 for i in (-2,-1,1,2){content((i,-.1),[#i],anchor:"north");content((-.1,i),[#i],anchor:"east")}
 content((.35,.3),$D_(11)$);content((.8,.9),$D_(12)$);content((-.1,-.1),$O$,anchor:"north-east");content((3,0),$x$,anchor:"north");content((0,3),$y$,anchor:"east")
})
因为
$ integral.double_(D_(11))f(x,y)dif sigma=integral.double_(D_(11))x^2 dif sigma \
=integral_0^1 dif x integral_0^(1-x)x^2 dif y \
=integral_0^1 x^2(1-x)dif x=1/12, $
$ integral.double_(D_(12))f(x,y)dif sigma=integral.double_(D_(12))1/sqrt(x^2+y^2)dif sigma \
=integral_0^(pi/2)dif theta integral_(1/(sin theta+cos theta))^(2/(sin theta+cos theta))dif r \
=integral_0^(pi/2)1/(sin theta+cos theta)dif theta=sqrt(2)ln(sqrt(2)+1), $
所以
$ integral.double_D f(x,y)dif sigma=4[1/12+sqrt(2)ln(sqrt(2)+1)] \
=1/3+4sqrt(2)ln(sqrt(2)+1). $

*分析* 对分段函数按对应区域分别积分，再利用对称性化为第一象限的积分. 内层区域采用直角坐标，外层环带采用极坐标更便捷.

]

#answer("23.")[
解法1　因为方程组①与②的公共解，即为联立方程组
$ cases(x_1+x_2+x_3=0,x_1+2x_2+a x_3=0,x_1+4x_2+a^2 x_3=0,x_1+2x_2+x_3=a-1) quad "③" $
的解.

对方程组③的增广矩阵 $overline(A)$ 施以初等行变换，有
$ overline(A)=mat(1,1,1,0;1,2,a,0;1,4,a^2,0;1,2,1,a-1,augment:#3) \
->mat(1,0,1,1-a;0,1,0,a-1;0,0,a-1,1-a;0,0,0,(a-1)(a-2),augment:#3)=B. $
由于方程组③有解，故③的系数矩阵的秩等于增广矩阵 $overline(A)$ 的秩，于是 $(a-1)(a-2)=0$，即 $a=1$ 或 $a=2$.

当 $a=1$ 时，
$ B=mat(1,0,1,0;0,1,0,0;0,0,0,0;0,0,0,0,augment:#3), $
因此①与②的公共解为 $x=k mat(-1;0;1)$，其中 $k$ 为任意常数.

当 $a=2$ 时，
$ B=mat(1,0,1,-1;0,1,0,1;0,0,1,-1;0,0,0,0,augment:#3) \
->mat(1,0,0,0;0,1,0,1;0,0,1,-1;0,0,0,0,augment:#3), $
因此①与②的公共解为 $x=mat(0;1;-1)$.

解法2　方程组①的系数行列式
$ det(mat(1,1,1;1,2,a;1,4,a^2))=(a-1)(a-2). $
当 $a!=1,a!=2$ 时，方程组①只有零解，但此时 $x=(0,0,0)^T$ 不是方程②的解.

当 $a=1$ 时，对方程组①的系数矩阵施以初等行变换，
$ mat(1,1,1;1,2,1;1,4,1)->mat(1,0,1;0,1,0;0,0,0), $
因此①的通解为 $x=k mat(-1;0;1)$，其中 $k$ 为任意常数. 此解也满足方程②，所以方程组①与②的所有公共解为 $x=k mat(-1;0;1)$，其中 $k$ 为任意常数.

当 $a=2$ 时，对线性方程组①的系数矩阵施以初等行变换，
$ mat(1,1,1;1,2,2;1,4,4)->mat(1,0,0;0,1,1;0,0,0), $
因此①的通解为 $x=k mat(0;-1;1)$，其中 $k$ 为任意常数. 将此解代入方程②，得 $k=-1$，所以方程组①与②的所有公共解为 $x=mat(0;1;-1)$.

所以 $a=1$ 或 $a=2$.

*分析* 公共解就是联立方程组的解；也可先求齐次方程组的通解，再代入另一方程确定参数.
*常见错误* 写齐次通解时遗漏任意常数，使 $a=1$ 时的公共解不完整，并导致 $a=2$ 时的代入求解错误.


]

#answer("24.")[
解　（Ⅰ）由 $A alpha_1=lambda_1 alpha_1$，知
$ B alpha_1=(A^5-4A^3+E)alpha_1 \
=(lambda_1^5-4lambda_1^3+1)alpha_1=-2alpha_1, $
故 $alpha_1$ 是 $B$ 的属于特征值 $-2$ 的一个特征向量.

因为 $A$ 的全部特征值为 $lambda_1,lambda_2,lambda_3$，所以 $B$ 的全部特征值为 $lambda_i^5-4lambda_i^3+1 (i=1,2,3)$，即 $B$ 的全部特征值为 $-2,1,1$.

由 $B alpha_1=-2alpha_1$，知 $B$ 的属于特征值 $-2$ 的全部特征向量为 $k_1 alpha_1$，其中 $k_1$ 是不为零的任意常数.

因为 $A$ 是实对称矩阵，所以 $B$ 也是实对称矩阵. 设 $(x_1,x_2,x_3)^T$ 为 $B$ 的属于特征值1的任一特征向量. 因为实对称矩阵属于不同特征值的特征向量正交，所以 $(x_1,x_2,x_3)alpha_1=0$，即 $x_1-x_2+x_3=0$.

解得该方程组的基础解系为 $alpha_2=(1,1,0)^T,alpha_3=(-1,0,1)^T$，故 $B$ 的属于特征值1的全部特征向量为 $k_2 alpha_2+k_3 alpha_3$，其中 $k_2,k_3$ 为不全为零的常数.

（Ⅱ）令 $P=(alpha_1,alpha_2,alpha_3)=mat(1,1,-1;-1,1,0;1,0,1)$，那么
$ P^(-1)=mat(1/3,-1/3,1/3;1/3,2/3,1/3;-1/3,1/3,2/3). $
因为 $P^(-1)B P=mat(-2,0,0;0,1,0;0,0,1)$，所以
$ B=P mat(-2,0,0;0,1,0;0,0,1)P^(-1)=mat(0,1,-1;1,0,1;-1,1,0). $

*（Ⅱ）正交相似法* 对特征向量正交化、单位化，令
$ epsilon_1=1/sqrt(3)(1,-1,1)^T,quad epsilon_2=1/sqrt(2)(1,1,0)^T, $
$ eta_3=alpha_3-(alpha_3,alpha_2)/(alpha_2,alpha_2)alpha_2=1/2(-1,1,2)^T, $
$ epsilon_3=eta_3/norm(eta_3)=1/sqrt(6)(-1,1,2)^T. $
令
$ Q=mat(1/sqrt(3),1/sqrt(2),-1/sqrt(6);-1/sqrt(3),1/sqrt(2),1/sqrt(6);1/sqrt(3),0,2/sqrt(6)), $
则
$ B=Q mat(-2,0,0;0,1,0;0,0,1)Q^T=mat(0,1,-1;1,0,1;-1,1,0). $
*常见错误* 多项式对应的特征值算错；特征向量排列与对角矩阵中特征值顺序不匹配. 直接设九个未知元素再列方程虽可行，但费时且易错.


]

