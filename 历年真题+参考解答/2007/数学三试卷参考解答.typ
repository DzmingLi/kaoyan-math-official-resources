#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2007, subject: "三", title: "2007年全国硕士研究生入学统一考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#import "@preview/cetz:0.5.2"
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2007 数学三试卷参考解答

= 一、选择题

#answer("1.")[

选 B.
*解* 当 $x->0^+$ 时，
$ 1-e^(sqrt(x)) tilde -sqrt(x),quad ln(1+sqrt(x)) tilde sqrt(x), $
$ sqrt(1+sqrt(x))-1=sqrt(x)/(sqrt(1+sqrt(x))+1) tilde sqrt(x)/2, $
$ 1-cos sqrt(x) tilde x/2. $
所以只有 B 与 $sqrt(x)$ 等价. A 的比值趋于 $-1$；C 的比值趋于 $1/2$；D 与 $sqrt(x)$ 不是同阶无穷小.

]

#answer("2.")[

选 D.
*解* 由连续性及 A 中极限存在，有
$ f(0)=lim_(x->0)f(x)=lim_(x->0)(f(x)/x dot x)=0, $
所以 A 正确. 对 B，同理得 $lim_(x->0)(f(x)+f(-x))=0$，即 $2f(0)=0$，B 正确.
对 C，由 A 知 $f(0)=0$，于是
$ f'(0)=lim_(x->0)(f(x)-f(0))/x=lim_(x->0)f(x)/x, $
故 C 正确. D 可取反例 $f(x)=|x|$，此时 $lim_(x->0)(f(x)-f(-x))/x=0$ 存在，但 $f'(0)$ 不存在.


*常见错误* 把 $lim_(x->0)(f(x)-f(-x))/x$ 拆成两个差商的极限，并断定等于 $2f'(0)$. 极限的和法则要求各极限先存在，这种推理已经预设了 $f'(0)$ 存在，因而不能用来证明可导.

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

#answer("5.")[

选 D.
*分析* 根据需求弹性的定义列出价格满足的方程.
*解* 由 $abs(Q'/Q dot p)=1$，得
$ abs((-2p)/(160-2p))=1. $
解得 $p=40$，故选 D.

]

#answer("6.")[

选 D.
*解* 当 $x->0$ 时，函数趋于无穷，故 $x=0$ 为铅直渐近线.
当 $x->+infinity$ 时，$y->+infinity$，没有水平渐近线，而
$ lim_(x->+infinity) y/x=lim_(x->+infinity)(1/x^2+(x+ln(1+e^(-x)))/x)=1, $
$ lim_(x->+infinity)(y-x)=lim_(x->+infinity)(1/x+ln(1+e^(-x)))=0, $
所以 $y=x$ 为该方向的斜渐近线.
当 $x->-infinity$ 时，$y->0$，所以 $y=0$ 为水平渐近线. 共三条，选 D.
*常见错误* 只讨论一个无穷方向，遗漏另一方向的渐近线. 水平与斜渐近线不能在同一方向并存，但不同方向应分别考虑.

]

#answer("7.")[

选 A.
*解* A 中的三个向量之和为零：
$ (alpha_1-alpha_2)+(alpha_2-alpha_3)+(alpha_3-alpha_1)=bold(0), $
故线性相关.
其余向量组以 $(alpha_1,alpha_2,alpha_3)$ 为基础的系数矩阵分别为
$ mat(1,0,1;1,1,0;0,1,1),quad mat(1,0,-2;-2,1,0;0,-2,1),quad mat(1,0,2;2,1,0;0,2,1), $
其行列式分别为2、$-7$、9，均非零，所以其余三组都线性无关.

]

#answer("8.")[

选 B.
*解* $|lambda E-A|=lambda(lambda-3)^2$，所以 $A$ 的特征值为3、3、0，与 $B$ 不同，二者不相似.
实对称矩阵 $A$ 相似且合同于 $C=mat(3,0,0;0,3,0;0,0,0)$，而 $C$ 合同于 $B$，由合同的传递性知 $A$ 合同于 $B$.
*注* 两个实对称矩阵合同当且仅当其正、负惯性指数分别相等，也可直接判断.
*常见错误* 混淆相似与合同.

]

#answer("9.")[

选 C.
*解* 设 $B$ 为前三次恰好命中一次，$C$ 为第四次命中，则所求事件为 $B C$，且二者独立. 因
$ P(B)=binom(3,1)p(1-p)^2,quad P(C)=p, $
故所求概率为 $P(B)P(C)=3p^2(1-p)^2$.
*常见错误* 只计算前三次恰好命中一次的概率，遗漏第四次命中的因子；或将“第四次恰好第二次命中”当作“四次中恰好命中两次”，误得 $6p^2(1-p)^2$.

]

#answer("10.")[

选 A.
*解* 二维正态分布下，不相关等价于独立，所以联合密度 $f(x,y)=f_X(x)f_Y(y)$. 因而
$ f_(X|Y)(x|y)=f(x,y)/f_Y(y)=f_X(x). $
反向条件密度是 $f_(Y|X)(y|x)=f_Y(y)$，而 C 为联合密度，均非题目所求.
*常见错误* 混淆边缘、联合和条件密度；忽略二维正态分布这一前提.

]

= 二、填空题

#answer("11.")[
0.
*分析* 将无穷小因子与有界因子分别处理.
*解* $sin x+cos x$ 在 $x->+infinity$ 时没有极限，但有界. 连续使用洛必达法则，
$ lim_(x->+infinity)(x^3+x^2+1)/(2^x+x^3)
=lim_(x->+infinity)(3x^2+2x)/(2^x ln 2+3x^2) \\
=lim_(x->+infinity)(6x+2)/(2^x(ln 2)^2+6x)
=lim_(x->+infinity)6/(2^x(ln 2)^3+6)=0. $
无穷小与有界变量之积仍为无穷小，故所求极限为零.

]

#answer("12.")[
$((-1)^n 2^n n!)/3^(n+1)$.
*解* 连续求导归纳得
$ y^(n)=((-1)^n 2^n n!)/(2x+3)^(n+1), $
故令 $x=0$ 得上述答案.
*常见错误* 忽略内层 $2x+3$ 的导数，漏掉因子 $2^n$.


]

#answer("13.")[
$2(-y/x f'_1+x/y f'_2)$.

*解* 由链式法则，
$ (partial z)/(partial x)=-y/x^2 f'_1+1/y f'_2,quad (partial z)/(partial y)=1/x f'_1-x/y^2 f'_2, $
故 $x(partial z)/(partial x)-y(partial z)/(partial y)=2(-y/x f'_1+x/y f'_2)$.
*常见错误* 复合函数的求导结构或内层求导计算错误.


]

#answer("14.")[
$x/sqrt(1+ln x)$.
*解* 令 $u=y/x$，则 $y'=u+x u'$，代入得
$ u+x u'=u-u^3/2,quad -2/u^3 dif u=1/x dif x. $
积分得 $1/u^2=ln x+C$，即 $y^2/x^2=1/(ln x+C)$. 由 $y(1)=1$ 得 $C=1$，并取与初始值相符的正根，故
$ y=x/sqrt(1+ln x). $
*注* 解在包含 $x=1$ 的区间上连续，而原方程不允许 $x=0$，故该区间中的 $x$ 为正，这里可以将 $ln abs(x)$ 写成 $ln x$.

]

#answer("15.")[
1.
*解* 直接相乘，得
$ A^3=mat(0,0,0,1;0,0,0,0;0,0,0,0;0,0,0,0), $
故其秩为1.
*注* 对同类 $n$ 阶矩阵，$A^k$ 的第 $k$ 条上副对角线为1，其余元素为零；$A^(n-1)$ 只有右上角为1，$A^n=O$.


]

#answer("16.")[
$3/4$.
*解* 两个数记为 $X,Y$，样本空间对应单位正方形 $Omega$，事件 $|X-Y|<1/2$ 对应两条直线 $y=x+1/2$ 与 $y=x-1/2$ 之间的区域，其面积为
$ 1-2 dot 1/2 dot (1/2)^2=3/4. $
故由几何概率得到所求概率为 $3/4$.


#align(center,cetz.canvas({
 import cetz.draw: *
 scale(2)
 line((0,0),(.5,0),(1,.5),(1,1),(.5,1),(0,.5),close:true,fill:rgb("dddddd"))
 line((0,0),(1,0),(1,1),(0,1),close:true)
 line((-.15,0),(1.3,0),mark:(end:">"));line((0,-.15),(0,1.3),mark:(end:">"))
 content((-.07,-.07),$O$,anchor:"north-east");content((1.3,0),$x$,anchor:"north");content((0,1.3),$y$,anchor:"east")
 content((.5,-.05),$1/2$,anchor:"north");content((1,-.05),[1],anchor:"north");content((-.05,.5),$1/2$,anchor:"east")
 content((1,1),$(1,1)$,anchor:"south-west");content((.5,.55),$A$);content((.55,1.08),$Omega$)
}))
]

= 三、解答题

#answer("17.")[
解　在 $y ln y-x+y=0$ 两边对 $x$ 求导得
$ y'ln y+y'-1+y'=0, $
于是 $y'=1/(2+ln y)$.

两边对 $x$ 再求导得
$ y''=-(y'/y)/(2+ln y)^2, $
将 $y'$ 代入得 $y''=-1/(y(2+ln y)^3)$.

将 $x=1,y=1$ 代入得 $y''(1)=-1/8$.

由于二阶导函数 $y''$ 在 $x=1$ 的附近是连续函数，所以由 $y''(1)=-1/8$，可知在 $x=1$ 的附近 $y''<0$，故曲线 $y=y(x)$ 在点 $(1,1)$ 附近是凸的.

*分析* 用二阶导数判断凹凸性，同时需要隐函数的一、二阶求导.
*解法2* 直接对原方程求导两次，得
$ y'ln y+2y'-1=0,quad y''ln y+(y')^2/y+2y''=0. $
代入 $x=1,y=1$，得 $y'(1)=1/2,y''(1)=-1/8$. 二阶导数在该点附近连续，故附近仍有 $y''<0$，曲线为凸的.
*解法3* 将方程写成 $x=y+y ln y$，则
$ (dif x)/(dif y)=2+ln y,quad (dif^2 x)/(dif y^2)=1/y. $
由反函数求导公式，
$ (dif^2 y)/(dif x^2)=-((dif^2 x)/(dif y^2))/((dif x)/(dif y))^3=-1/(y(2+ln y)^3). $
于是仍有 $y''(1)=-1/8$，得相同结论.
*注* 不能只由反函数的凹凸性直接推断原函数的凹凸性，还应考虑一阶导数的符号. 例如 $y=1-x^2$（$x>0$）及其反函数 $x=sqrt(1-y)$ 的二阶导数均为负.
*常见错误* 对 $y'$ 再求导时漏用链式法则；求得点处的二阶导数后，不说明其在邻域内连续就直接判断邻域内凹凸性.

]

#answer("18.")[
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

#answer("19.")[
证　（Ⅰ）设 $f(x),g(x)$ 在 $(a,b)$ 内的最大值为 $M$，则存在 $alpha in (a,b),beta in (a,b)$（不妨设 $alpha<=beta$），使 $f(alpha)=M=g(beta)$.

当 $alpha=beta$ 时，取 $eta=alpha=beta in (a,b)$，有 $f(eta)=g(eta)$；

当 $alpha<beta$ 时，令 $h(x)=f(x)-g(x)$，则
$ h(alpha)=f(alpha)-g(alpha)=M-g(alpha)>=0, $
$ h(beta)=f(beta)-g(beta)=f(beta)-M<=0, $
则由介值定理，在 $eta in [alpha,beta] subset (a,b)$，使得 $h(eta)=0$，即 $f(eta)=g(eta)$.

（Ⅱ）因为
$ h(a)=f(a)-g(a)=0,h(eta)=0,h(b)=f(b)-g(b)=0, $
则由罗尔定理，在 $xi_1 in (a,eta),xi_2 in (eta,b)$，使得 $h'(xi_1)=h'(xi_2)=0$.

再由罗尔定理知，存在 $xi in (xi_1,xi_2) subset (a,b)$，使得 $h''(xi)=0$，即 $f''(xi)=g''(xi)$.

*分析* 令 $h=f-g$，第一问由两个最大值点找到符号相反或为零的函数值，再用介值定理；第二问对 $a,eta,b$ 处的三个零点连续应用罗尔定理.
*常见错误* 默认两个函数在同一点取最大值；没有讨论最大值点重合的情形；把 $M-g(alpha)>=0$ 和 $f(beta)-M<=0$ 错写成严格不等式. 第二问应利用第一问的结论，单用拉格朗日或柯西中值定理不能得到所需结论.

]

#answer("20.")[
解　因为 $1/(x^2-3x-4)=1/5(1/(x-4)-1/(x+1))$，
$ 1/(x-4)=1/((x-1)-3)=-1/3 1/(1-(x-1)/3) \
=-1/3 sum_(n=0)^infinity((x-1)/3)^n,quad x in (-2,4), $
$ 1/(x+1)=1/((x-1)+2)=1/2 1/(1+(x-1)/2) \
=1/2 sum_(n=0)^infinity(-(x-1)/2)^n,quad x in (-1,3), $
所以
$ 1/(x^2-3x-4)=-1/5 sum_(n=0)^infinity[1/3^(n+1)+(-1)^n/2^(n+1)](x-1)^n,quad x in (-1,3). $

*常见错误* 忽略各展开式的收敛区间；误展开成 $x$ 的幂级数；用泰勒公式直接展开却未证明余项趋于零. 函数与其泰勒级数相等需要验证余项极限为零.

]

#answer("21.")[
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

*分析* 方法1将两组方程联立后求解；方法2先求齐次方程组的通解，再代入另一方程确定参数.
*常见错误* 求齐次方程组通解时漏掉任意常数，导致 $a=1$ 的解不全，并影响 $a=2$ 时的结论.

]

#answer("22.")[
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

#answer("23.")[
解　（Ⅰ）
$ P{X>2Y}=integral.double_(x>2y)f(x,y)dif x dif y \
=integral_0^1 dif x integral_0^(x/2)(2-x-y)dif y \
=integral_0^1(x-5/8 x^2)dif x=7/24. $
（Ⅱ）$f_Z(z)=integral_(-infinity)^(+infinity)f(x,z-x)dif x$，其中
$ f(x,z-x)=cases(2-x-(z-x) & 0<x<1 quad 0<z-x<1,0 & "其他") \
=cases(2-z & 0<x<1 quad 0<z-x<1,0 & "其他"). $
当 $z<=0$ 或 $z>=2$ 时，$f_Z(z)=0$；

当 $0<z<1$ 时，$f_Z(z)=integral_0^z(2-z)dif x=z(2-z)$；

当 $1<=z<2$ 时，$f_Z(z)=integral_(z-1)^1(2-z)dif x=(2-z)^2$，即 $Z$ 的概率密度为
$ f_Z(z)=cases(z(2-z) & 0<z<1,(2-z)^2 & 1<=z<2,0 & "其他"). $

*（Ⅱ）解法2* 先求分布函数 $F_Z(z)=P(X+Y<=z)$.
当 $z<=0$ 时，$F_Z(z)=0$；当 $0<z<1$ 时，
$ F_Z(z)=integral_0^z dif x integral_0^(z-x)(2-x-y)dif y=z^2-z^3/3. $
当 $1<=z<2$ 时，用补事件积分得
$ F_Z(z)=1-integral_(z-1)^1 dif x integral_(z-x)^1(2-x-y)dif y \
=z^3/3-2z^2+4z-5/3. $
当 $z>=2$ 时，$F_Z(z)=1$. 分段求导仍得上面的密度.
*常见错误* 不能把事件写成正确的积分区域；卷积公式中未分段确定积分限；二重积分计算出错.


]

#answer("24.")[
解　（Ⅰ）
$ E X=integral_(-infinity)^(+infinity)x f(x;theta)dif x \
=integral_0^theta x/(2theta)dif x+integral_theta^1 x/(2(1-theta))dif x \
=1/4+theta/2. $
令 $overline(X)=E X$，即 $overline(X)=1/4+theta/2$，得 $theta$ 的矩估计量为 $hat(theta)=2overline(X)-1/2$.

（Ⅱ）因为
$ E(4overline(X)^2)=4E(overline(X)^2)=4[D overline(X)+(E overline(X))^2] \
=4[1/n D X+(1/4+1/2 theta)^2] \
=4/n D X+1/4+theta+theta^2, $
又 $D X>=0,theta>0$，所以 $E(4overline(X)^2)>theta^2$，即 $E(4overline(X)^2)!=theta^2$，因此 $4overline(X)^2$ 不是 $theta^2$ 的无偏估计量.

*分析* 第一问用一阶矩估计；第二问利用 $E overline(X)^2=D overline(X)+(E overline(X))^2$ 判断，无需具体算出 $D X$.
*常见错误* 展开平方后，对所有 $i,j$ 都使用 $E(X_i X_j)=E X_i E X_j$，遗漏 $i=j$ 时的二阶矩项.


]

