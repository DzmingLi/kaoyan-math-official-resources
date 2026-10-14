#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 1999, subject: "三", title: "1999年全国硕士研究生入学考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 1999 数学三试卷参考解答

= 一、填空题

#answer("1（1）")[
应填 $4/pi-1$.

*分析*　$f(x)$ 有一个原函数 $(sin x)/x$，则
$ f(x)=((sin x)/x)'=(x cos x-sin x)/x^2, $
而
$ integral_(pi/2)^pi x f'(x)dif x
 &=x f(x)|_(pi/2)^pi-integral_(pi/2)^pi f(x)dif x \
 &=(cos x-(sin x)/x)|_(pi/2)^pi-((sin x)/x)|_(pi/2)^pi \
 &=-1-2(0-2/pi)=4/pi-1. $
本题要求考生熟悉原函数的概念，并会用分部积分公式求定积分.
]

#answer("1（2）")[
应填4.

*分析*　表面是数项级数求和问题，实质是幂级数求和问题. 考虑幂级数
$ S(x)=sum_(n=1)^infinity n x^(n-1), $
显然
$ integral_0^x S(x)dif x=sum_(n=1)^infinity integral_0^x n x^(n-1)dif x
 =sum_(n=1)^infinity x^n=1/(1-x)-1=x/(1-x). $
故
$ S(x)=(x/(1-x))'=(1-x+x)/(1-x)^2=1/(1-x)^2. $
由于 $S(x)$ 的收敛域为 $(-1,1)$，故 $S(1/2)=4$.
]

#answer("1（3）")[
应填 $O$（即 $3 times 3$ 阶零矩阵）.

*分析*　由于 $A^2=2A$，故
$ A^n-2A^(n-1)=A^(n-2)(A^2-2A)=O. $
计算矩阵 $A$ 高次幂问题，通常要找出规律，从而化简运算.
]

#answer("1（4）")[
应填16.

*分析*　由于
$ overline(X)_n=1/n sum_(i=1)^n X_i tilde N(a,1/n dot 0.2^2), $
故
$ z=(overline(X)_n-a)/(0.2/sqrt(n)) tilde N(0,1),quad P{|z|<1.96}=0.95, $
因而使
$ P{|overline(X)_n-a|<0.1}=P{(sqrt(n)|overline(X)_n-a|)/0.2<sqrt(n)/2}>=0.95. $
令 $sqrt(n)/2>=1.96$ 即可，$n=16$.

本题是概率统计在生活中的简单应用，题虽小，但反映了统计学原理的重要思想. 要求考生熟知 $overline(X)_n$ 的抽样分布、标准正态分布以及在特殊临界值上的概率. 反映教学中或考生复习时不注重概率统计原理的应用，或者说，对所学的基本知识掌握得不透彻、不深入.
]

#answer("1（5）")[
应填0.

*分析*　由于
$ Y=sum (-1)^tau X_(1i_1) X_(2i_2) dots X_(n i_n), $
其中 $tau$ 为 $i_1 i_2 dots i_n$ 的逆序数. 由于随机变量 $X_(i j)$（$i,j=1,2,dots,n$）独立同分布，因此
$ E Y=sum (-1)^tau E X_(1i_1) dot E X_(2i_2) dots E X_(n i_n) \
 =mat(delim:"|",E X_(11),E X_(12),dots,E X_(1n);E X_(21),E X_(22),dots,E X_(2n);dots.v,dots.v,dots.down,dots.v;E X_(n 1),E X_(n 2),dots,E X_(n n)) \
 =mat(delim:"|",2,2,dots,2;2,2,dots,2;dots.v,dots.v,dots.down,dots.v;2,2,dots,2)=0. $
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
应选D.

*分析*　（A）项首先被排除，因为它意味着 $A=B$；$A$ 与 $B$ 相似，则 $A$ 与 $B$ 有相同的特征值，但不一定有相同的特征向量，故（B）排除；$A$ 与 $B$ 相似并不能保证它们可对角化，故（C）也被排除. （D）是正确选项，因为 $A$ 与 $B$ 相似，存在可逆矩阵 $P$ 使 $P^(-1)A P=B$，而
$ P^(-1)(t E-A)P=t E-P^(-1)A P=t E-B, $
因而 $t E-A$ 与 $t E-B$ 相似.
]

#answer("2（5）")[
应选A.

*分析*　首先，列出二维随机变量 $(X_1,X_2)$ 的联合分布律及其边缘分布律中的部分数值.
#align(center,table(columns:5,align:center,[$X_1 backslash X_2$],[$-1$],[$0$],[$1$],[$P{X_1=X_(1i)}$],[$-1$],[$a$],[$b$],[$c$],[$1/4$],[$0$],[$d$],[$e$],[$f$],[$1/2$],[$1$],[$g$],[$h$],[$k$],[$1/4$],[$P{X_2=X_(2i)}$],[$1/4$],[$1/2$],[$1/4$],[$1$]))
由于 $P{X_1 X_2=0}=1$，故 $P{X_1 X_2!=0}=0$，因此 $a=0,c=0,g=0,k=0$. 根据边缘分布的性质
$ b=1/4,quad h=1/4,quad e=1/2-(b+h)=1/2-1/2=0. $
至此，$(X_1,X_2)$ 的联合分布律应为：
#align(center,table(columns:5,align:center,[$X_1 backslash X_2$],[$-1$],[$0$],[$1$],[$P{X_1=X_(1i)}$],[$-1$],[$0$],[$1/4$],[$0$],[$1/4$],[$0$],[$1/4$],[$0$],[$1/4$],[$1/2$],[$1$],[$0$],[$1/4$],[$0$],[$1/4$],[$P{X_2=X_(2i)}$],[$1/4$],[$1/2$],[$1/4$],[$1$]))
可见
$ P{X_1=X_2}=P{X_1=-1,X_2=-1}+P{X_1=0,X_2=0}+P{X_1=1,X_2=1}=0. $
本题作为3分的选择题难度大了一点，但所考查的知识点也是基本的，基础扎实的考生应该做得对. 很多人可能是猜测的结果.
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
*分析*　这是一道求解微分方程的题，其创新性在于所给出的非齐次项是个分段函数，因此，需要求解两个一阶线性微分方程. 显然所求的连续函数也是分段函数，为使之连续，需要应用连续函数的充要条件.

*解*
当 $x<1$ 时，微分方程为 $y'-2y=2$，其通解为
$ y&=e^(integral 2dif x)[integral 2e^(-integral 2dif x)dif x+C_1] quad "（1分）" \
&=e^(2x)[integral 2e^(-2x)dif x+C_1]=C_1 e^(2x)-1 quad (x<1). $
由 $y(0)=0$ 得 $C_1=1$，故
$ y=e^(2x)-1. quad "（3分）" $
当 $x>1$ 时，微分方程为 $y'-2y=0$，其通解为
$ y=C_2 e^(integral 2dif x)=C_2 e^(2x). quad "（4分）" $
由连续性，有
$ lim_(x->1^+) C_2 e^(2x)=lim_(x->1^-) (e^(2x)-1)=e^2-1, $
即 $C_2 e^2=e^2-1$，得 $C_2=1-e^(-2)$，故
$ y=(1-e^(-2))e^(2x). quad "（5分）" $
补充定义 $y|_(x=1)=e^2-1$，则所求连续函数为
$ y(x)=cases(e^(2x)-1 quad x<=1,(1-e^(-2))e^(2x) quad x>1). quad "（6分）" $
显然，这个函数满足全部条件.
]

#answer("七、")[
*分析*　从已给的等式直接计算 $integral_1^2 f(x)dif x$ 是很困难的，须对给等式左端的变上限积分作变量替换，再对等式两端关于自变量 $x$ 求导，从而发现求出 $integral_1^2 f(x)dif x$ 的途径.

*解*
令 $u=2x-t$，则 $t=2x-u$，$dif t=-dif u$， （1分）
$ integral_0^x t f(2x-t)dif t&=-integral_(2x)^x (2x-u)f(u)dif u \
&=2x integral_x^(2x) f(u)dif u-integral_x^(2x) u f(u)dif u. quad "（2分）" $
于是
$ 2x integral_x^(2x) f(u)dif u-integral_x^(2x) u f(u)dif u=frac(1,2)arctan x^2. quad "（3分）" $
两边对 $x$ 求导，得
$ 2integral_x^(2x) f(u)dif u+2x[2f(2x)-f(x)]-[2x f(2x)dot 2-x f(x)]=frac(x,1+x^4), $
即
$ 2integral_x^(2x) f(u)dif u=frac(x,1+x^4)+x f(x). quad "（5分）" $
令 $x=1$，得 $2integral_1^2 f(u)dif u=frac(1,2)+1=frac(3,2)$，故
$ integral_1^2 f(x)dif x=frac(3,4). quad "（6分）" $
]

#answer("八、")[
*分析*　（1）的证明较易，利用闭区间 $[1/2,1]$ 上的连续函数 $phi(x)=f(x)-x$ 在左右端点上异号，一定存在 $eta in (1/2,1)$ 使 $phi(eta)=0$. （2）的证明通常应用罗尔定理或其它的中值定理，（2）中既然涉及到（1）中的 $eta$，因此，构造辅助函数时，也应考虑到与 $phi(x)$ 有关.

*解*
（1）令 $Phi(x)=f(x)-x$，则 $Phi(x)$ 在 $[0,1]$ 上连续，且
$ Phi(1)=-1<0,quad Phi(frac(1,2))=frac(1,2)>0. $
由介值定理，存在 $eta in (frac(1,2),1)$，使 $Phi(eta)=f(eta)-eta=0$，即 $f(eta)=eta$. （3分）

（2）令
$ F(x)=e^(-lambda x)Phi(x)=e^(-lambda x)[f(x)-x]. quad "（4分）" $
则 $F(x)$ 在 $[0,eta]$ 上连续，在 $(0,eta)$ 内可导，且
$ F(0)=0,quad F(eta)=e^(-lambda eta)Phi(eta)=0. $
由罗尔定理，存在 $xi in (0,eta)$，使 $F'(xi)=0$， （6分）
即
$ e^(-lambda xi){f'(xi)-lambda[f(xi)-xi]-1}=0, $
从而
$ f'(xi)-lambda[f(xi)-xi]=1. quad "（7分）" $
]

#answer("九、")[
*分析*　尽管看上去要计算的参数值较多，但如果能找到所给条件之间的联系，并转化为求方程组的解，问题就简单得多. 根据题目条件，可以联想到以下公式和定义：$A A^*=|A|E$；$A^* bold(alpha)=lambda_0 bold(alpha)$，继而得出方程组 $lambda_0 A bold(alpha)=-bold(alpha)$.

*解*
由 $A^* alpha=lambda_0 alpha$，$A A^*=|A|E=-E$， （1分）
有 $A A^* alpha=lambda_0 A alpha$，从而 $-alpha=lambda_0 A alpha$，或
$ lambda_0 mat(a,-1,c;5,b,3;1-c,0,-a)mat(-1;-1;1)=-mat(-1;-1;1). quad "（3分）" $
由此可得
$ cases(lambda_0(-a+1+c)=1 quad "（1）",lambda_0(-5-b+3)=1 quad "（2）",lambda_0(-1+c-a)=-1 quad "（3）"). quad "（4分）" $
由（1）和（3），解得 $lambda_0=1$. （5分）

将 $lambda_0=1$ 代入（2）和（1），得
$ b=-3,quad a=c. quad "（7分）" $
由 $|A|=-1$ 和 $a=c$，有
$ mat(delim:"|",a,-1,a;5,-3,3;1-a,0,-a)=a-3=-1, quad "（8分）" $
故 $a=c=2$. 因此
$ a=2,b=-3,c=2,lambda_0=1. quad "（9分）" $
]

#answer("十、")[
*分析*　只要证明 $B$ 为对称矩阵，且对任意的非零实 $n$ 维向量 $x$，有 $x^T B x>0$ 即可.

*解*
因为
$ B^T=(lambda E+A^T A)^T=lambda E+A^T A=B, quad "（2分）" $
所以 $B$ 为 $n$ 阶对称矩阵. 对于任意的实 $n$ 维向量 $x$，有
$ x^T B x&=x^T (lambda E+A^T A)x \
&=lambda x^T x+x^T A^T A x \
&=lambda x^T x+(A x)^T (A x). quad "（4分）" $
当 $x!=0$ 时，有 $x^T x>0$，$(A x)^T (A x)>=0$. 因此，当 $lambda>0$ 时，对任意的 $x!=0$，有
$ x^T B x=lambda x^T x+(A x)^T A x>0, $
即 $B$ 为正定矩阵. （7分）

由于考生对正定矩阵的性质及其充要条件判别法不熟悉. 考生应对考纲的内容全面复习，不能靠猜题、押题碰运气.
]

#answer("十一、")[
*分析*　根据 $(X,Y)$ 在矩形 $G$ 上服从均匀分布，很容易计算出 $P{X<=Y},P{X<=2Y}$ 等概率，从而写出 $U$ 和 $V$ 的概率分布. $U,V$ 均取0和1二值，因此 $(U,V)$ 只有 $(0,0),(0,1),(1,0)$ 和 $(1,1)$ 四种可能取值，可根据 $U,V$ 的分布求出它们，从而也求出了 $U V$ 的分布. 根据这些分布，可较容易地求出有关变量的均值和方差以及 $U$ 和 $V$ 的协方差，从而求出相关系数 $r$.

*解*
由题设可得
#import "@preview/cetz:0.5.2"
#cetz.canvas({
 import cetz.draw: *
 set-style(stroke:0.6pt)
 line((-0.2,0),(3.4,0),mark:(end:">"));line((0,-0.2),(0,2.4),mark:(end:">"))
 line((0,1),(2,1),(2,0));line((1,0),(1,1),stroke:(dash:"dashed"))
 line((-0.15,-0.15),(2.1,2.1));line((-0.15,-0.075),(3.1,1.55))
 content((3.4,-0.16),$x$);content((-0.16,2.4),$y$);content((-0.16,-0.16),$O$)
 content((1,-0.17),$1$);content((2,-0.17),$2$);content((-0.16,1),$1$)
 content((2,2.3),$x=y$);content((3.1,1.8),$x=2y$)
 content((0.7,1.55),$x<y$);content((1.9,1.4),$y<x<2y$);content((2.75,0.75),$x>2y$)
})
$ P{X<=Y}=frac(1,4),quad P{X>2Y}=frac(1,2),quad P{Y<X<=2Y}=frac(1,4). quad "（2分）" $
（1）$(U,V)$ 有四个可能值：$(0,0),(0,1),(1,0),(1,1)$.
$ P{U=0,V=0}&=P{X<=Y,X<=2Y}=P{X<=Y}=frac(1,4); \
P{U=0,V=1}&=P{X<=Y,X>2Y}=0; \
P{U=1,V=0}&=P{X>Y,X<=2Y}=P{Y<X<=2Y}=frac(1,4); \
P{U=1,V=1}&=1-(frac(1,4)+frac(1,4))=frac(1,2). quad "（5分）" $
（2）由以上可见 $U V$ 以及 $U$ 和 $V$ 的分布为
$ U V tilde mat(0,1;frac(1,2),frac(1,2));quad U tilde mat(0,1;frac(1,4),frac(3,4)),quad V tilde mat(0,1;frac(1,2),frac(1,2)). quad "（7分）" $
于是，有
$ E U=frac(3,4),quad D U=frac(3,16);quad E V=frac(1,2),quad D V=frac(1,4);quad E(U V)=frac(1,2); $
$ op("COV")(U,V)=E(U V)-E U dot E V=frac(1,8), $
$ r=frac(op("COV")(U,V),sqrt(D U dot D V))=frac(1,sqrt(3)). quad "（9分）" $
]

#answer("十二、")[
*分析*　要证明统计量 $Z$ 服从自由度为2的 $t$ 分布，必须证明 $Z=U/sqrt(chi^2/2)$，其中 $U tilde N(0,1)$，$chi^2$ 服从自由度为2的 $chi^2$ 分布.

*解*
记 $D X=sigma^2$（未知）. 易见 $E Y_1=E Y_2$，$D Y_1=sigma^2/6$，$D Y_2=sigma^2/3$. （1分）

由于 $Y_1$ 和 $Y_2$ 独立，可见 $E(Y_1-Y_2)=0$，
$ D(Y_1-Y_2)=frac(sigma^2,6)+frac(sigma^2,3)=frac(sigma^2,2). quad "（2分）" $
从而
$ U=frac(Y_1-Y_2,sigma/sqrt(2)) tilde N(0,1). quad "（3分）" $
由正态总体样本方差的性质，知
$ chi^2=frac(2S^2,sigma^2) $
服从自由度为2的 $chi^2$ 分布. （4分）

由于 $Y_1$ 与 $Y_2$，$Y_1$ 与 $S^2$ 独立，以及 $Y_2$ 与 $S^2$ 独立，可见 $Y_1-Y_2$ 与 $S^2$ 独立. （5分）

于是，由服从 $t$ 分布随机变量的结构，知
$ Z=frac(sqrt(2)(Y_1-Y_2),S)=frac(U,sqrt(chi^2/2)) $
服从自由度为2的 $t$ 分布. （7分）
]

