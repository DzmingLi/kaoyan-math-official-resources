#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 1999, subject: "四", title: "1999年全国硕士研究生入学考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 1999 数学四试卷参考解答

= 一、填空题

#answer("1（1）")[
应填 $1/2 ln a$.

*分析*　利用对数运算规则计算.
$ lim_(n->infinity)1/n^2 ln[f(1)f(2)dots f(n)]
 &=lim_(n->infinity)1/n^2 sum_(i=1)^n ln f(i) \
 &=ln a dot lim_(n->infinity)(sum_(i=1)^n i)/n^2 \
 &=1/2 ln a lim_(n->infinity)(n+1)/n=1/2 ln a. $
]

#answer("1（2）")[
应填1.

*分析*　本题考查多元函数偏导数计算.

*解*　方程 $x+y+z+x y z=0$ 两边对 $x$ 求偏导数，有
$ 1+z'_x+y z+x y z'_x=0, $
显然在 $(0,1,-1)$ 处 $z'_x=0$. 而
$ f'_x(x,y,z)=e^x y z^2+e^x y dot 2z z'_x, $
故 $f'_x(0,1,-1)=1$.
]

#answer("1（3）")[
应填 $O$（即 $3 times 3$ 阶零矩阵）.

*分析*　由于 $A^2=2A$，故
$ A^n-2A^(n-1)=A^(n-2)(A^2-2A)=O. $
计算矩阵 $A$ 高次幂问题，通常要找出规律，从而化简运算.
]

#answer("1（4）")[
应填 $mat(1,1/2,0;-1/2,1,0;0,0,2)$.

*分析*　本题考查逆阵计算和矩阵乘法.

*解*　由 $A B-B=A$ 知 $A=B(B-E)^(-1)$，
$ (B-E)^(-1)=mat(0,-2,0;2,0,0;0,0,1)^(-1)
 =1/4 mat(0,2,0;-2,0,0;0,0,4)=1/2 mat(0,1,0;-1,0,0;0,0,2). $
故
$ A=1/2 mat(1,-2,0;2,1,0;0,0,2)mat(0,1,0;-1,0,0;0,0,2) \
 =1/2 mat(2,1,0;-1,2,0;0,0,4)=mat(1,1/2,0;-1/2,1,0;0,0,2). $
]

#answer("1（5）")[
应填1.

*分析*　利用泊松分布的性质计算. 由于 $X tilde P(lambda)$，则 $E X=lambda,D X=lambda$.
而
$ E[(X-1)(X-2)]&=E X^2-3E X+2 \
 &=D X+(E X)^2-3E X+2 \
 &=lambda+lambda^2-3lambda+2=1. $
解得 $lambda=1$.
]

= 二、选择题


#answer("2（1）")[
应选A.

*分析*　$f(x)$ 的原函数 $F(x)$ 可以写成
$ F(x)=integral_0^x f(t)dif t+C $
的形式.

则
$ F(-x)=integral_0^(-x) f(t)dif t+C
 =integral_0^x f(-u)dif(-u)+C, $
其中令 $u=-t$. 当 $f(x)$ 是奇函数时，$f(-u)=-f(u)$，从而有
$ F(-x)=integral_0^x f(u)dif u+C=F(x), $
故（A）为正确选项. 至于（B）、（C）、（D）可分别举反例如下：

（B）的反例：$f(x)=cos x$，$F(x)=sin x+1$ 不是奇函数；

（C）的反例：$f(x)=cos^2 x$，$F(x)=1/2 x+1/4 sin 2x+C$，不论 $C$ 取什么常数，$F(x)$ 都不是周期函数；

（D）的反例：$f(x)=-1/x$ 在 $(0,+infinity)$ 内是单调增加的，但 $F(x)=-ln x$ 在 $(0,+infinity)$ 内是单调减少的.

本题考查原函数的概念及其用变上限函数表示法. 要求考生熟知函数的奇偶性、周期性和单调性的概念，并会用举反例法排除干扰项. “周期函数的导函数是周期函数，但原函数不一定是周期函数”是一个重要的知识点，考生知之甚少.
]

#answer("2（2）")[
应选C.

*分析*　定积分是一常数，因此，令 $integral.double_D f(u,v)dif u dif v=A$，
$ f(x,y)=x y+A, $
两边在 $D$ 上取二重积分，则
$ A=integral.double_D f(x,y)dif x dif y
 &=integral.double_D x y dif x dif y+A integral.double_D dif x dif y \
 &=integral_0^1 x dif x integral_0^(x^2) y dif y+A integral_0^1 x^2 dif x \
 &=1/12+1/3 A. $
解得 $A=1/8$.
]

#answer("2（3）")[
应选B.

*分析*　若 $alpha_m$ 能由（Ⅰ）线性表出，则 $beta$ 能由（Ⅰ）线性表出，与题设矛盾，故 $alpha_m$ 不能由（Ⅰ）线性表出. 由于 $beta$ 可以由向量 $alpha_1,alpha_2,dots,alpha_m$ 线性表出，不能由（Ⅰ）线性表出，故在用 $alpha_1,alpha_2,dots,alpha_m$ 线性表出 $beta$ 时，$alpha_m$ 的系数不为0，故 $alpha_m$ 可由 $alpha_1,alpha_2,dots,alpha_(m-1),beta$ 即（Ⅱ）线性表出.
]

#answer("2（4）")[
应选C.

*分析*
$ D(X+Y)&=E(X+Y-E X-E Y)^2 \
 &=E(X-E X)^2+E(Y-E Y)^2+2E[(X-E X)(Y-E Y)] \
 &=D X+D Y+2sqrt(D X D Y)r_(X Y). $
由 $D(X+Y)=D X+D Y$ 知 $r_(X Y)=0$. 两随机变量相关系数等于零是它们相互独立的必要而非充分条件.
]

#answer("2（5）")[
应选D.

*分析*　令 $F_Y(y)=P{Y<=y}=P{min{X,2}<=y}$. 考虑 $y<2$ 和 $y>=2$ 两种情况，当 $y<2$ 时，由 $min{X,2}>y$ 知 $X>y$，因而 $1-F_Y(y)=1-F_X(y)$，故 $F_Y(y)=F_X(y)$；当 $y>=2$ 时，${min{X,2}<=y}$ 为必然事件，因此 $F_Y(y)=1$.
#import "@preview/cetz:0.5.2"
#cetz.canvas({
 import cetz.draw: *
 set-style(stroke:0.6pt)
 line((-0.3,0),(3.5,0),mark:(end:">"));line((0,-0.15),(0,2),mark:(end:">"))
 line((-0.25,0),(0,0));line(..range(0,81).map(i=>{let x=i*2/80;(x,1.5*(1-calc.exp(-x/2)))}))
 circle((2,1.5*(1-calc.exp(-1))),radius:0.04,fill:white)
 line((2,1.5),(3.3,1.5));circle((2,1.5),radius:0.04,fill:black)
 content((3.6,0),$y$);content((0,2.1),$F_Y(y)$);content((-0.15,-0.15),$O$);content((2,-0.15),$2$)
})
因而，$F_Y(y)$ 恰有一个间断点.
]

= 解答题

#answer("三、")[
*分析*　这是一道很基础的题，只要求出 $P(a,1/sqrt(a))$ 点处的切线方程及其与 $x$ 轴、$y$ 轴的交点即可. 注意切点沿曲线趋于无穷远表示 $a->+infinity$ 和 $a->0^+$ 两种情况.

*解*
由 $y=frac(1,sqrt(x))$，得 $y'=-frac(1,2)x^(-frac(3,2))$，则切点 $P(a,frac(1,sqrt(a)))$ 处的切线方程为
$ y-frac(1,sqrt(a))=-frac(1,2sqrt(a^3))(x-a). quad "（2分）" $
#import "@preview/cetz:0.5.2"
#cetz.canvas({
 import cetz.draw: *
 set-style(stroke:0.6pt)
 line((-0.15,0),(3.5,0),mark:(end:">"));line((0,-0.15),(0,2.8),mark:(end:">"))
 line((0,1.5),(3,0))
 let curve=range(0,61).map(i=>{let x=0.16+i*3/60;(x,1/calc.sqrt(x))})
 line(..curve)
 line((1,0),(1,1),stroke:(dash:"dashed"));circle((1,1),radius:0.025,fill:black)
 content((3.6,0),$x$);content((0,2.9),$y$);content((-0.15,-0.12),$O$)
 content((-0.13,1.5),$R$);content((1,-0.18),$a$);content((1.1,1.22),$P$);content((3,-0.18),$Q$)
})
切线与 $x$ 轴和 $y$ 轴的交点分别为 $Q(3a,0)$ 和 $R(0,frac(3,2sqrt(a)))$. （3分）

于是，$triangle O R Q$ 的面积
$ S=frac(1,2)dot 3a dot frac(3,2sqrt(a))=frac(9,4)sqrt(a). quad "（4分）" $
当切点按 $x$ 轴正方向趋于无穷远时，有 $lim_(a -> +infinity) S=+infinity$. （5分）

当切点按 $y$ 轴正方向趋于无穷远时，有 $lim_(a -> 0^+) S=0$. （6分）
]

#answer("四、")[
*分析*　应首先作出区域 $D$ 的图形. 可见，可将 $integral.double_D y dif x dif y$ 化为 $integral.double_(D+D_1) y dif x dif y-integral.double_(D_1) y dif x dif y$. $D+D_1$ 是正方形区域，易积分；$D_1$ 是半圆形区域，可在极坐标系下积分. 也可以先 $x$ 后 $y$ 直接计算 $integral.double_D y dif x dif y$，虽然复杂一些，只要认真，也能求出答案.

*解*
*解法1* 区域 $D$ 和 $D_1$ 如图所示，有
#import "@preview/cetz:0.5.2"
#cetz.canvas({
 import cetz.draw: *
 set-style(stroke:0.6pt)
 let curve=range(0,61).map(i=>{let t=90deg+i*180deg/60;(calc.cos(t),1+calc.sin(t))})
 line((-2,0),(-2,2),(0,2),..curve,close:true,fill:luma(92%))
 line((-2.4,0),(1,0),mark:(end:">"));line((0,-0.2),(0,2.6),mark:(end:">"))
 content((1.1,0),$x$);content((0,2.7),$y$);content((0.12,-0.14),$O$)
 content((-2,-0.18),$-2$);content((0.16,2),$2$)
 content((-1.5,1),$D$);content((-0.45,1),$D_1$)
})
$ integral.double_D y dif x dif y=integral.double_(D+D_1) y dif x dif y-integral.double_(D_1) y dif x dif y, $
$ integral.double_(D+D_1) y dif x dif y=integral_(-2)^0 dif x integral_0^2 y dif y=4. quad "（2分）" $
在极坐标系下，有 $D_1={(r,theta)|0<=r<=2sin theta,frac(pi,2)<=theta<=pi}$，因此
$ integral.double_(D_1) y dif x dif y&=integral_(frac(pi,2))^pi dif theta integral_0^(2sin theta) r sin theta dot r dif r quad "（4分）" \
&=frac(8,3)integral_(frac(pi,2))^pi sin^4 theta dif theta \
&=frac(8,3times 4)integral_(frac(pi,2))^pi [1-2cos 2theta+frac(1+cos 4theta,2)]dif theta \
&=frac(pi,2). quad "（6分）" $
于是
$ integral.double_D y dif x dif y=4-frac(pi,2). quad "（7分）" $
*解法2* 如图所示，$D={(x,y)|-2<=x<=-sqrt(2y-y^2),0<=y<=2}$. （1分）
$ integral.double_D y dif x dif y&=integral_0^2 y dif y integral_(-2)^(-sqrt(2y-y^2)) dif x \
&=2integral_0^2 y dif y-integral_0^2 y sqrt(2y-y^2)dif y \
&=4-integral_0^2 y sqrt(1-(y-1)^2)dif y. quad "（3分）" $
令 $y-1=sin t$，有 $dif y=cos t dif t$，则 （4分）
$ integral_0^2 y sqrt(1-(y-1)^2)dif y&=integral_(-frac(pi,2))^(frac(pi,2)) (1+sin t)cos^2 t dif t \
&=integral_(-frac(pi,2))^(frac(pi,2)) cos^2 t dif t+integral_(-frac(pi,2))^(frac(pi,2)) cos^2 t sin t dif t \
&=integral_0^(frac(pi,2))(1+cos 2t)dif t
=frac(pi,2). quad "（6分）" $
于是
$ integral.double_D y dif x dif y=4-frac(pi,2). quad "（7分）" $
]

#answer("五、")[
*分析*　本题给出经济学中关于投入产出问题的一种数学模型，要求应用拉格朗日乘数法求多元函数的条件极值问题. 方法比较固定. 由于变量、参数较多，在求解过程中要注意弄清自变量、因变量及参数.

*解*
需要在产出量 $2x_1^alpha x_2^beta=12$ 的条件下，求总费用 $p_1 x_1+p_2 x_2$ 的最小值. 作拉格朗日函数
$ F(x_1,x_2,lambda)=p_1 x_1+p_2 x_2+lambda(12-2x_1^alpha x_2^beta). quad "（2分）" $
令
$ cases(frac(partial F,partial x_1)=p_1-2lambda alpha x_1^(alpha-1)x_2^beta=0 quad "（1）",frac(partial F,partial x_2)=p_2-2lambda beta x_1^alpha x_2^(beta-1)=0 quad "（2）",frac(partial F,partial lambda)=12-2x_1^alpha x_2^beta=0 quad "（3）"). quad "（3分）" $
由（1）、（2）得
$ frac(p_2,p_1)=frac(beta x_1,alpha x_2), quad x_1=frac(p_2 alpha,p_1 beta)x_2. $
代入（3）得
$ x_2=6(frac(p_1 beta,p_2 alpha))^alpha,quad x_1=6(frac(p_2 alpha,p_1 beta))^beta. quad "（5分）" $
因驻点唯一，且实际问题存在最小值，故上述计算结果说明，当两种生产要素的投入量分别为
$ x_1=6(frac(p_2 alpha,p_1 beta))^beta,quad x_2=6(frac(p_1 beta,p_2 alpha))^alpha $
时，投入总费用最小. （6分）
]

#answer("六、")[
*分析*　利用 $F(x)$ 是 $f(x)$ 的原函数，即 $f(x)=F'(x)$ 代入所给的等式中，两边求不定积分，求出 $F(x)$.

*解*
由 $F'(x)=f(x)$，有
$ 2F(x)F'(x)=frac(x e^x,(1+x)^2). quad "（1分）" $
于是，由
$ integral 2F(x)F'(x)dif x=integral frac(x e^x,(1+x)^2)dif x, quad "（2分）" $
得
$ F^2(x)=frac(e^x,1+x)+C. quad "（4分）" $
由 $F(0)=1$ 和 $F^2(0)=1+C$，得 $C=0$. 从而
$ F(x)=sqrt(frac(e^x,1+x)) quad (F(x)>0), quad "（5分）" $
$ f(x)=frac(x e^(x/2),2(1+x)^(3/2)). quad "（6分）" $
]

#answer("七、")[
*分析*　解决此类问题，一般先进行变量替换，再对变上限积分函数所确定方程两边关于 $x$ 求导，找到问题解决的途径.

*解*
令 $x-t=u$，有
$ integral_0^x t f(x-t)dif t=integral_0^x (x-u)f(u)dif u. quad "（2分）" $
于是
$ x integral_0^x f(u)dif u-integral_0^x u f(u)dif u=1-cos x. quad "（3分）" $
两边对 $x$ 求导，得
$ integral_0^x f(u)dif u=sin x. quad "（4分）" $
在上式中，令 $x=frac(pi,2)$，得
$ integral_0^(frac(pi,2)) f(x)dif x=1. quad "（6分）" $
]

#answer("八、")[
*分析*　利用导数方法证明不等式是常见题. 其基本思想是利用导数的正负性判定函数在某区间上的单调性进行判定.

*解*
*证法1* 设 $f(x)=sin frac(x,2)-frac(x,pi)$，有 （1分）
$ f'(x)=frac(1,2)cos frac(x,2)-frac(1,pi), $
$ f''(x)=-frac(1,4)sin frac(x,2)<0 quad (0<x<pi), quad "（2分）" $
则函数 $f(x)$ 对应的曲线在 $(0,pi)$ 内向上凸. （3分）

由于
$ f(0)=f(pi)=0, quad "（5分）" $
可见，当 $0<x<pi$ 时，$f(x)>0$，即
$ sin frac(x,2)>frac(x,pi). quad "（6分）" $
*证法2* 为证所给不等式，只需证明
$ frac(sin frac(x,2),x)>frac(1,pi) quad (0<x<pi). $
令
$ f(x)=frac(sin frac(x,2),x)-frac(1,pi) quad (0<x<pi), quad "（1分）" $
则
$ f'(x)=frac(frac(x,2)cos frac(x,2)-sin frac(x,2),x^2)=frac(cos frac(x,2)(frac(x,2)-tan frac(x,2)),x^2). quad "（3分）" $
因为对于 $0<x<pi$，有 $cos frac(x,2)>0$，$tan frac(x,2)>frac(x,2)$，所以 $f'(x)<0$，从而 $f(x)$ 在 $(0,pi)$ 内是单调减函数. 因此，$f(x)>f(pi)=0$（$0<x<pi$），即
$ f(x)=frac(sin frac(x,2),x)-frac(1,pi)>0. quad "（6分）" $
于是，不等式得证.
]

#answer("九、")[
*分析*　须先求出矩阵 $A$ 的特征值，只有特征值对应的线性无关的特征向量的个数为3时，才存在可逆矩阵 $P$ 使得 $P^(-1)A P$ 为对角矩阵. $P$ 即为以3个特征向量为列构成的矩阵，$P^(-1)A P$ 即为以特征值为对角线元素的对角阵.

*解*
由
$ |lambda E-A|&=mat(delim:"|",lambda-3,-2,2;k,lambda+1,-k;-4,-2,lambda+3) \
&=mat(delim:"|",lambda-1,-2,2;0,lambda+1,-k;0,0,lambda+1)=(lambda+1)^2(lambda-1), $
可得 $A$ 的特征值 $lambda_1=lambda_2=-1,lambda_3=1$. （2分）

对于 $lambda_1=-1$，有
$ (-E-A)=mat(-4,-2,2;k,0,-k;-4,-2,2)->mat(-4,-2,2;k,0,-k;0,0,0). quad "（3分）" $
当 $k=0$ 时，有
$ (-E-A)->mat(-4,-2,2;0,0,0;0,0,0)->mat(1,frac(1,2),-frac(1,2);0,0,0;0,0,0). $
对应的特征向量为
$ alpha_1=(-1,2,0)^T,quad alpha_2=(1,0,2)^T. quad "（4分）" $
对于 $lambda_3=1$，有
$ (E-A)=mat(-2,-2,2;k,2,-k;-4,-2,4)->mat(1,0,-1;0,1,0;0,0,0). $
对应的特征向量为
$ alpha_3=(1,0,1)^T. quad "（6分）" $
因此，当 $k=0$ 时，令
$ P=mat(-1,1,1;2,0,0;0,2,1),quad "则" P^(-1)A P=mat(-1,0,0;0,-1,0;0,0,1). quad "（7分）" $
]

#answer("十、")[
*分析*　方程的系数行列式 $D$ 是范德蒙德行列式，当 $D!=0$ 时，方程组仅有零解. （2）的情况比较复杂，必须讨论使 $D=0$ 的 $a,b,c$ 取值的所有情况，并在每种情况写出基础解系.

*解*
系数行列式
$ D=mat(delim:"|",1,1,1;a,b,c;a^2,b^2,c^2)=(a-b)(b-c)(c-a). quad "（2分）" $
（1）当 $a!=b,b!=c,c!=a$ 时，$D!=0$，方程组仅有零解
$ x_1=x_2=x_3=0. quad "（3分）" $
（2）下面分四种情况：

$1 degree.$ 当 $a=b!=c$ 时，同解方程组为
$ cases(x_1+x_2+x_3=0,x_3=0). $
方程组有无穷多组解，全部解为
$ k_1(1,-1,0)^T quad (k_1 "为任意常数"). quad "（5分）" $
$2 degree.$ 当 $a=c!=b$ 时，同解方程组为
$ cases(x_1+x_2+x_3=0,x_2=0). $
方程组有无穷多组解，全部解为
$ k_2(1,0,-1)^T quad (k_2 "为任意常数"). quad "（6分）" $
$3 degree.$ 当 $b=c!=a$ 时，同解方程组为
$ cases(x_1+x_2+x_3=0,x_1=0). $
方程组有无穷多组解，全部解为
$ k_3(0,1,-1)^T quad (k_3 "为任意常数"). quad "（7分）" $
$4 degree.$ 当 $a=b=c$ 时，同解方程组为
$ x_1+x_2+x_3=0, $
方程组有无穷多组解，全部解为
$ k_4(-1,1,0)^T+k_5(-1,0,1)^T quad (k_4,k_5 "为任意常数"). quad "（9分）" $
]

#answer("十一、")[
*分析*　首先作出矩形 $G$ 的图形；并写出 $(X,Y)$ 的密度函数 $psi(x,y)$. $S=X Y$ 为二维随机变量 $(X,Y)$ 的函数. 显然，只要求出 $S$ 的分布函数 $F(s)=P{X Y<=s}$ 即可.

*解*
二维随机变量 $(X,Y)$ 的概率密度为
$ psi(x,y)=cases(frac(1,2) quad "若" (x,y)in G,0 quad "若" (x,y)in.not G). $
设 $F(s)=P{S<=s}$ 为 $S$ 的分布函数，则

当 $s<=0$ 时，$F(s)=0$；

当 $s>=2$ 时，$F(s)=1$. （2分）

现在，设 $0<s<2$，曲线 $x y=s$ 与矩形 $G$ 的上边交于点 $(s,1)$；位于曲线 $x y=s$ 上方的点满足 $x y>s$，位于下方的点满足 $x y<s$，于是
#import "@preview/cetz:0.5.2"
#cetz.canvas({
 import cetz.draw: *
 set-style(stroke:0.6pt)
 line((-0.15,0),(3.4,0),mark:(end:">"));line((0,-0.15),(0,2.5),mark:(end:">"))
 line((0,1.5),(2.7,1.5),(2.7,0))
 line(..range(0,81).map(i=>{let x=0.38+i*2.72/80;(x,0.81/x)}))
 line((0.54,0),(0.54,1.5),stroke:(dash:"dashed"))
 content((3.4,-0.16),$x$);content((-0.15,2.5),$y$);content((-0.15,-0.16),$O$)
 content((0.54,-0.17),$s$);content((2.7,-0.17),$2$);content((-0.16,1.5),$1$)
 content((0.85,2.3),$x y=s$);content((1.7,1),$x y>s$);content((1,0.33),$x y<s$)
})
$ F(s)=P{S<=s}=P{X Y<=s}=1-P{X Y>s} quad "（4分）" $
$ &=1-integral.double_(x y>s) frac(1,2)dif x dif y=1-frac(1,2)integral_s^2 dif x integral_(s/x)^1 dif y \
&=frac(s,2)(1+ln 2-ln s). quad "（6分）" $
于是，
$ f(s)=cases(frac(1,2)(ln 2-ln s) quad "若" 0<s<2,0 quad "若" s<=0 "或" s>=2). quad "（9分）" $
]

#answer("十二、")[
*分析*　由于 $P{X_1 X_2=0}=1$，则 $P{X_1 X_2!=0}=0$，因此 $P{X_1=-1,X_2=1}=P{X_1=1,X_2=1}=0$，这样就可根据边缘分布的性质，立即写出 $X_1,X_2$ 的联合分布. 至于（2），只要找到一个例子说明 $P{X_1=x_1,X_2=x_2}!=P{X_1=x_1}dot P{X_2=x_2}$，则 $X_1$ 和 $X_2$ 不独立，否则独立.

*解*
*解法1* （1）由 $P{X_1 X_2=0}=1$，可见
$ P{X_1=-1,X_2=1}=P{X_1=1,X_2=1}=0. quad "（2分）" $
易见
$ P{X_1=-1,X_2=0}&=P{X_1=-1}=frac(1,4); \
P{X_1=0,X_2=1}&=P{X_2=1}=frac(1,2); \
P{X_1=1,X_2=0}&=P{X_1=1}=frac(1,4); quad "（4分）" $
$ P{X_1=0,X_2=0}=1-(frac(1,4)+frac(1,2)+frac(1,4))=0. $
于是，得 $X_1$ 和 $X_2$ 的联合分布
#table(columns:5,[$X_2$ ∖ $X_1$],[$-1$],[0],[1],[$sum$],[0],[$frac(1,4)$],[0],[$frac(1,4)$],[$frac(1,2)$],[1],[0],[$frac(1,2)$],[0],[$frac(1,2)$],[$sum$],[$frac(1,4)$],[$frac(1,2)$],[$frac(1,4)$],[1])
（6分）

（2）由以上结果，可见
$ P{X_1=0,X_2=0}=0, $
$ P{X_1=0}P{X_2=0}=frac(1,4)!=0, $
于是，$X_1$ 和 $X_2$ 不独立. （8分）

注：考生只要用类似于（2）中的例子正确说明 $X_1$ 与 $X_2$ 不独立，均给2分.

*解法2* （1）由 $P{X_1 X_2=0}=1$，可见
$ P{X_1=-1,X_2=1}=P{X_1=1,X_2=1}=0. quad "（2分）" $
因此，$X_1$ 和 $X_2$ 的联合分布有如下结构：
#table(columns:5,[$X_2$ ∖ $X_1$],[$-1$],[0],[1],[$sum$],[0],[$p_(11)$],[$p_(21)$],[$p_(31)$],[$frac(1,2)$],[1],[0],[$p_(22)$],[0],[$frac(1,2)$],[$sum$],[$frac(1,4)$],[$frac(1,2)$],[$frac(1,4)$],[1])
（4分）

于是，由上表易见 $X_1$ 和 $X_2$ 的联合分布为：
#table(columns:5,[$X_2$ ∖ $X_1$],[$-1$],[0],[1],[$sum$],[0],[$frac(1,4)$],[0],[$frac(1,4)$],[$frac(1,2)$],[1],[0],[$frac(1,2)$],[0],[$frac(1,2)$],[$sum$],[$frac(1,4)$],[$frac(1,2)$],[$frac(1,4)$],[1])
（6分）

（2）同解法1. （8分）
]

