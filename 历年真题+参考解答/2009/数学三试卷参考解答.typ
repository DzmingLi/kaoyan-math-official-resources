#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2009, subject: "三", title: "2009年全国硕士研究生入学统一考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#import "@preview/cetz:0.5.2": canvas, draw
#let graph-option(k) = canvas({
 import draw: *
 scale(.7)
 line((-1.3,0),(3.4,0),mark:(end:">"));line((0,-1.3),(0,1.8),mark:(end:">"))
 let h=if k==2 {1} else {0}
 line((-1,if k==0 {1} else if k==2 {0} else {-1}),(0,h))
 bezier((0,h),(1,h - 0.75),(.45,h - 0.45),(.75,h - 0.85))
 bezier((1,h - 0.75),(2,if k==1 {.5} else if k==2 {1.5} else {.5}),(1.35,h - 0.7),(1.7,h + 0.05))
 if k==1 {line((2,0),(3,0));line((2,0),(2,.5),stroke:(dash:"dashed"))} else {line((2,if k==2 {1.5} else {.5}),(3,if k==2 {1.5} else {.5}))}
 for i in (-1,1,2,3){content((i,-.12),[#i])}
 content((-.15,-.15),$O$);content((3.4,-.1),$x$);content((-.2,1.8),$F(x)$)
})
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2009 数学三试卷参考解答

= 一、选择题

#answer("1.")[


选 C.
*解* 当 $x$ 为整数时 $f$ 无定义，因而间断点有无穷多个. 可去间断点必须是极限存在的点，只需考察 $x-x^3=0$ 的根 $x=0,plus.minus 1$.
$ lim_(x->0)(x-x^3)/(sin pi x)=lim_(x->0)(1-3x^2)/(pi cos pi x)=1/pi, $
$ lim_(x->1)(x-x^3)/(sin pi x)=2/pi,quad lim_(x->-1)(x-x^3)/(sin pi x)=2/pi. $
故可去间断点恰有三个.
*常见错误* 不能因分母为零的点有无穷多个，就断言可去间断点也有无穷多个，必须考察极限.


]

#answer("2.")[


选 A.
*解法1* 由泰勒公式，
$ f(x)=(1-a)x+a^3/6 x^3+o(x^3),quad g(x)=-b x^3+o(x^3). $
两者等价，故 $1-a=0,a^3/6=-b$，得 $a=1,b=-1/6$.
*解法2* 由 $x^2 ln(1-b x) tilde -b x^3$，应用洛必达法则，
$ lim_(x->0)f(x)/g(x)=lim_(x->0)(1-a cos a x)/(-3b x^2)=1. $
因此分子极限 $1-a$ 必为零，得 $a=1$. 再用 $1-cos x tilde x^2/2$，得到 $-1/(6b)=1$，故 $b=-1/6$.
*常见错误* 忽略对数展开中的负号，得到 $b=1/6$.


*常见错误* 每次使用洛必达法则都应检查是否仍为 $0/0$ 或 $infinity/infinity$ 型. 若不先确定 $a=1$ 就继续对 $(1-a cos a x)/(-3b x^2)$ 使用法则，会错误地只得到 $a^3=-6b$，并误选 D.

]

#answer("3.")[

选 A.
*解* 设 $f(x)=integral_1^x(sin t)/t dif t-ln x$，则
$ f'(x)=(sin x-1)/x<=0,quad x>0. $
所以 $f$ 在 $(0,+infinity)$ 内单调不增，且 $f(1)=0$. 在 $(0,1)$ 内 $f'<0$，故 $f(x)>0$；在 $(1,+infinity)$ 内 $f(x)<=0$. 因而原不等式成立的范围为 $(0,1)$.
*常见错误* $f'(pi/2)=0$ 并不意味着 $f(pi/2)=0$，不能由此判断 $f$ 在该点两侧的正负.

]

#answer("4.")[


选 D.
*解* 除 $x=0,2$ 外，$F'(x)=f(x)$. 由图中 $f$ 的符号，$F$ 在 $(-1,0)$ 内递增，在 $(0,1)$ 内递减，在 $(1,2)$ 内递增，在 $(2,3)$ 内为常数. 又 $F$ 连续且 $F(0)=0$，故只有 D 符合.
*常见错误* 只考虑连续性和单调性，忽略 $F(0)=0$ 而误选 C.
#align(center,graph-option(3))


*注* 当 $-1<=x<0$ 时 $F(x)=x<0$，排除 A、C. 根据面积的代数和知 $F(2)>0$；当 $2<x<=3$ 时 $F(x)=F(2)$，排除 B. 积分下限是 0，不能误按概率分布函数把下限看作 $-infinity$.

]

#answer("5.")[


选 B.
*解法1* 记 $C=mat(O,A;B,O)$，则 $det C=det A dot det B=6$，其伴随矩阵应满足 $C C^*=6E_4$. 各选项左乘 $C$ 分别得到
$ mat(4E_2,O;O,9E_2),quad mat(6E_2,O;O,6E_2), $
$ mat(2A B^*,O;O,3B A^*),quad mat(3A B^*,O;O,2B A^*). $
只有 B 符合.
*解法2* 设 $C^*=mat(X_1,X_2;X_3,X_4)$. 由 $C C^*=6E_4$ 得
$ B X_1=O,A X_4=O,A X_3=6E_2,B X_2=6E_2. $
$A,B$ 均可逆，所以 $X_1=X_4=O$，且
$ X_3=6A^(-1)=3A^*,quad X_2=6B^(-1)=2B^*. $
故 $C^*=mat(O,2B^*;3A^*,O)$.


]

#answer("6.")[


选 A.
*解* 从 $P$ 到 $Q$ 是把第二列加到第一列，故 $Q=P E_(12)$，其中
$ E_(12)=mat(1,0,0;1,1,0;0,0,1). $
所以
$ Q^T A Q=E_(12)^T P^T A P E_(12) \
=mat(1,1,0;0,1,0;0,0,1)mat(1,0,0;0,1,0;0,0,2)mat(1,0,0;1,1,0;0,0,1) \
=mat(2,1,0;1,1,0;0,0,2). $
*常见错误* B 对应的是把第一列加到第二列. 初等列变换相当于右乘初等矩阵，行变换相当于左乘；$Q^T A Q$ 应同时进行对应的行、列变换.


]

#answer("7.")[

选 D.
*解* 互不相容意味着 $A inter B=emptyset$，所以
$ P(overline(A) union overline(B))=1-P(A inter B)=1. $

]

#answer("8.")[


选 B.
*分析* 用全概率公式和独立性，先求 $Z=X Y$ 的分布函数.
*解* 在 $Y=0$ 时 $Z=0$，在 $Y=1$ 时 $Z=X$，故
$ F_Z(z)=P{X Y<=z}=1/2 P{0<=z}+1/2 P{X<=z} \
=cases(Phi(z)/2 & z<0,(1+Phi(z))/2 & z>=0). $
所以 $z=0$ 是唯一的间断点.


]

= 二、填空题

#answer("9.")[
$3e/2$.
*解法1* 由洛必达法则，
$ lim_(x->0)(e-e^(cos x))/(root(3,1+x^2)-1)
=lim_(x->0)(e^(cos x)sin x)/(1/3(1+x^2)^(-2/3) dot 2x) \
=3/2 lim_(x->0)e^(cos x)(1+x^2)^(2/3)(sin x)/x=3e/2. $
*解法2* 当 $x->0$ 时，
$ e-e^(cos x)=e^(cos x)(e^(1-cos x)-1)
 tilde e^(cos x)(1-cos x) tilde x^2/2 e^(cos x), $
而 $(1+x^2)^(1/3)-1 tilde x^2/3$，因此极限为 $3e/2$.
*常见错误* $lim_(x->0)e^(cos x)=e$，不能误写成 1.

]

#answer("10.")[
$1+2ln 2$.
*解法1* 用幂指函数求导法，
$ (partial z)/(partial x)=(x+e^y)^x[ln(x+e^y)+x/(x+e^y)]. $
代入 $(1,0)$，得 $2(ln 2+1/2)=1+2ln 2$.
*解法2* 固定 $y=0$，求一元函数 $(x+1)^x$ 在 $x=1$ 的导数，
$ [(x+1)^x(ln(x+1)+x/(x+1))]_(x=1)=1+2ln 2. $
*常见错误* 对 $x$ 求偏导时 $y$ 为常数，不能把 $e^y$ 也对 $x$ 求导而在分式分子中多出 $e^y$.

]

#answer("11.")[
$e^(-1)$.
*解* 先分别求两个幂级数的收敛半径. 对 $sum e^n/n^2 x^n$，
$ rho=lim_(n->infinity)e^(n+1)/(n+1)^2 dot n^2/e^n=e, $
故半径为 $e^(-1)$. 对 $sum(-1)^n/n^2 x^n$，系数绝对比值极限为 1，半径为 1. 由级数的运算性质，原幂级数的收敛半径为 $e^(-1)$.
*常见错误* 不要把收敛半径与收敛区间混淆，也不要把系数比值极限 $rho$ 当作半径，半径为 $1/rho$.

]

#answer("12.")[
8000.
*解* 需求弹性为 $epsilon_p=-p/Q dot (dif Q)/(dif p)=0.2$，收益为 $R=p Q(p)$，故
$ dif R=p dif Q+Q dif p
=Q(1+p/Q dot (dif Q)/(dif p))dif p
=Q(1-epsilon_p)dif p. $
当 $Q=10000,dif p=1$ 时，收益增加约为 $dif R=10000 times 0.8 times 1=8000$ 元.
*常见错误* 需求弹性的定义有负号；题设单位为元，不能只填比例 0.8.

]

#answer("13.")[
2.
*解法1* $alpha beta^T=mat(1,0,k;1,0,k;1,0,k)$，其迹为 $1+k$. 相似矩阵特征值之和相同，所以 $1+k=3$，得 $k=2$.
*解法2* 计算特征多项式，
$ det(lambda-1,0,-k;-1,lambda,-k;-1,0,lambda-k)
=lambda det(lambda-1,-k;-1,lambda-k)=lambda^2(lambda-k-1). $
特征值为 $k+1,0,0$，故 $k+1=3$，得 $k=2$.

]

#answer("14.")[
$n p^2$.
*解* $E T=E(overline(X)-S^2)=E overline(X)-E S^2=n p-n p(1-p)=n p^2$.

]

= 三、解答题

#answer("15.")[
解　$f'_x(x,y)=2x(2+y^2),f'_y(x,y)=2x^2 y+ln y+1$.
令 $cases(f'_x(x,y)=0,f'_y(x,y)=0)$，解得唯一驻点 $(0,1/e)$.
由于
$ A=f''_(x x)(0,1/e)=2(2+y^2)|_((0,1/e))=2(2+1/e^2), $
$ B=f''_(x y)(0,1/e)=4x y|_((0,1/e))=0, $
$ C=f''_(y y)(0,1/e)=(2x^2+1/y)|_((0,1/e))=e, $
所以 $B^2-A C=-2e(2+1/e^2)<0$，且 $A>0$，从而 $f(0,1/e)$ 是 $f(x,y)$ 的极小值，极小值为 $f(0,1/e)=-1/e$.

*解法2* 对任何固定的 $y>0$，有 $f(x,y)>=f(0,y)$，且 $x!=0$ 时不等号严格成立. 因此只需考察 $g(y)=f(0,y)=y ln y$. 由 $g'(y)=ln y+1$，知 $g$ 在 $(0,1/e)$ 递减，在 $(1/e,+infinity)$ 递增，所以在 $y=1/e$ 处取得极小值 $-1/e$. 从而 $f$ 在 $(0,1/e)$ 处取得极小值 $-1/e$，不存在极大值.
*常见错误* 驻点未必是极值点，求出驻点后必须判别. 仅分别考察 $f(x,1/e)$ 和 $f(0,y)$ 的单调性，也不能据此断定二元函数在该点取得极值.



*反例* 唯一驻点未必是极值点，例如 $f(x,y)=x y$ 的唯一驻点 $(0,0)$ 不是极值点.

]

#answer("16.")[
解　设 $sqrt((1+x)/x)=t$，则 $x=1/(t^2-1)$，故有
$ integral ln(1+sqrt((1+x)/x))dif x \
=integral ln(1+t)dif(1/(t^2-1)) \
=(ln(1+t))/(t^2-1)-integral 1/(t^2-1) dot 1/(t+1)dif t, $
而
$ integral 1/((t^2-1)(t+1))dif t \
=1/4 integral[1/(t-1)-1/(t+1)-2/(t+1)^2]dif t \
=1/4 ln(t-1)-1/4 ln(t+1)+1/(2(t+1))-C, $
所以
$ integral ln(1+sqrt((1+x)/x))dif x \
=(ln(1+t))/(t^2-1)+1/4 ln((t+1)/(t-1))-1/(2(t+1))+C \
=x ln(1+sqrt((1+x)/x))+1/2 ln(sqrt(1+x)+sqrt(x)) \
-1/2 sqrt(x)/(sqrt(1+x)+sqrt(x))+C \
=x ln(1+sqrt((1+x)/x))+1/2 ln(sqrt(1+x)+sqrt(x)) \
+1/2 x-1/2 sqrt(x+x^2)+C. $

*解法2* 设 $1+sqrt((1+x)/x)=e^t$，则 $x=1/(e^(2t)-2e^t)$，所以
$ integral ln(1+sqrt((1+x)/x))dif x \
=integral t dif(1/(e^(2t)-2e^t)) \
=t/(e^(2t)-2e^t)-1/2 integral[1/(e^t-2)-1/e^t]dif t \
=t/(e^(2t)-2e^t)-1/2 e^(-t)-1/4 ln(1-2e^(-t))+C \
=x ln(1+sqrt((1+x)/x)) \
-sqrt(x)/(2(sqrt(1+x)+sqrt(x))) \
-1/4 ln((sqrt(1+x)-sqrt(x))/(sqrt(1+x)+sqrt(x)))+C \
=x ln(1+sqrt((1+x)/x)) \
-sqrt(x)/(2(sqrt(1+x)+sqrt(x))) \
+1/2 ln(sqrt(1+x)+sqrt(x))+C. $
*解法3* 设 $x=tan^2 theta,theta in(0,pi/2)$，则 $sqrt((1+x)/x)=1/sin theta$，于是
$ integral ln(1+sqrt((1+x)/x))dif x \
=tan^2 theta ln(1+1/sin theta) \
+integral sin theta/((1+sin theta)cos theta)dif theta. $
令 $u=sin theta$，则后一项为
$ integral u/((1+u)(1-u^2))dif u \
=1/4 integral[1/(1+u)+1/(1-u)-2/(1+u)^2]dif u \
=1/4 ln((1+u)/(1-u))+1/(2(1+u))+C. $
所以原积分为
$ x ln(1+sqrt((1+x)/x)) \
+1/4 ln((sqrt(1+x)+sqrt(x))/(sqrt(1+x)-sqrt(x))) \
+sqrt(1+x)/(2(sqrt(1+x)+sqrt(x)))+C \
=x ln(1+sqrt((1+x)/x))+1/2 ln(sqrt(1+x)+sqrt(x)) \
+sqrt(1+x)/(2(sqrt(1+x)+sqrt(x)))+C. $
*解法4* 先分拆对数再分部积分，
$ integral ln(1+sqrt((1+x)/x))dif x \
=integral ln(sqrt(x)+sqrt(1+x))dif x-1/2 integral ln x dif x \
=x ln(sqrt(x)+sqrt(1+x)) \
-integral x/(2sqrt(x^2+x))dif x \
-1/2(x ln x-x). $
令 $x+1/2=1/2 sec t$，则 $dif x=1/2 sec t tan t dif t$，有
$ integral x/sqrt(x^2+x)dif x \
=1/2 integral(sec^2 t-sec t)dif t \
=1/2 tan t-1/2 ln(sec t+tan t)+C \
=sqrt(x^2+x)-1/2 ln(2x+1+2sqrt(x^2+x))+C. $
所以原积分为
$ x ln(sqrt(x)+sqrt(1+x))-1/2 sqrt(x^2+x) \
+1/4 ln(2x+1+2sqrt(x^2+x))-1/2(x ln x-x)+C. $
*常见错误* 换元选择不当、分部积分不熟练或回代出错，都可能导致计算不能完成.



*另用有理换元* 令 $1+sqrt((1+x)/x)=t$，则 $x=1/2(1/(t-2)-1/t)$，有
$ integral ln(1+sqrt((1+x)/x))dif x \
=1/2 integral ln t dif(1/(t-2)-1/t) \
=ln t/(t^2-2t)-1/4 integral[1/(t-2)-1/t-2/t^2]dif t \
=ln t/(t^2-2t)-1/4 ln((t-2)/t)-1/(2t)+C. $
将 $t=1+sqrt((1+x)/x)$ 代回，即得原积分.

]

#answer("17.")[
解法1　如下左图，区域 $D$ 的极坐标表示为 $0<=r<=2(sin theta+cos theta),pi/4<=theta<=3pi/4$.
#import "@preview/cetz:0.5.2": canvas, draw
#let region-diagram(split: false) = canvas({
 import draw: *
 let r=calc.sqrt(2)
 circle((1,1),radius:r)
 line((-.8,0),(3,0),mark:(end:">"));line((0,-.7),(0,3),mark:(end:">"));line((-.1,-.1),(2.7,2.7))
 for x in range(-4,21).map(i=>i/10) {
  let a=1-calc.sqrt(2-calc.pow(x - 1,2));let b=1+calc.sqrt(2-calc.pow(x - 1,2))
  if not split or x>=0 {line((x,calc.max(x,a)),(x,b),stroke:.3pt)}
 }
 if split {
  for y in range(1,20).map(i=>i/10) {
   let a=1-calc.sqrt(2-calc.pow(y - 1,2))
   line((a,y),(0,y),stroke:.3pt)
  }
 }
 content((3,-.15),$x$);content((-.15,3),$y$);content((-.15,-.15),$O$)
 if split {content((-.2,1),$D_1$);content((.7,1.7),$D_2$);content((2.2,2.1),[(2,2)]);content((-.5,-.2),$1-sqrt(2)$)} else {content((.5,1.4),$D$)}
})
#grid(columns:2,gutter:1em,region-diagram(),region-diagram(split:true))
$ integral.double_D(x-y)dif x dif y \
=integral_(pi/4)^(3pi/4)dif theta integral_0^(2(sin theta+cos theta))r^2(cos theta-sin theta)dif r \
=8/3 integral_(pi/4)^(3pi/4)(sin theta+cos theta)^3 dif(sin theta+cos theta) \
=2/3(sin theta+cos theta)^4|_(pi/4)^(3pi/4)=-8/3. $

解法2　将区域 $D$ 分成 $D_1,D_2$ 两部分（如上右图），其中
$ D_1={(x,y)|1-sqrt(2-(x-1)^2)<=y<=1+sqrt(2-(x-1)^2),1-sqrt(2)<=x<=0}, $
$ D_2={(x,y)|x<=y<=1+sqrt(2-(x-1)^2),0<=x<=2}. $
由二重积分的性质知
$ integral.double_D(x-y)dif x dif y=integral.double_(D_1)(x-y)dif x dif y+integral.double_(D_2)(x-y)dif x dif y, $
而
$ integral.double_(D_1)(x-y)dif x dif y \
=integral_(1-sqrt(2))^0 dif x integral_(1-sqrt(2-(x-1)^2))^(1+sqrt(2-(x-1)^2))(x-y)dif y \
=integral_(1-sqrt(2))^0 2(x-1)sqrt(2-(x-1)^2)dif x \
=-2/3[sqrt(2-(x-1)^2)]^3|_(1-sqrt(2))^0=-2/3, $
$ integral.double_(D_2)(x-y)dif x dif y \
=integral_0^2 dif x integral_x^(1+sqrt(2-(x-1)^2))(x-y)dif y \
=-1/2 integral_0^2[2-2(x-1)sqrt(2-(x-1)^2)]dif x \
=-1/2[2x+2/3(sqrt(2-(x-1)^2))^3]|_0^2=-2, $
所以 $integral.double_D(x-y)dif x dif y=-2/3-2=-8/3$.

*解法3* 令 $x-1=r cos theta,y-1=r sin theta$，区域变为 $0<=r<=sqrt(2),pi/4<=theta<=5pi/4$，从而
$ integral.double_D(x-y)dif x dif y
=integral_(pi/4)^(5pi/4)dif theta integral_0^(sqrt(2))r^2(cos theta-sin theta)dif r \
=2sqrt(2)/3[sin theta+cos theta]_(pi/4)^(5pi/4)=-8/3. $
*常见错误* 极坐标的面积元素为 $r dif r dif theta$，不能漏掉 $r$. 应依据区域形状选择坐标，并正确将边界转成极坐标方程；直角坐标计算量较大，容易出错.



*注* $D_1$ 上的积分还可改换次序，
$ integral.double_(D_1)(x-y)dif x dif y
=integral_0^2 dif y integral_(1-sqrt(2-(y-1)^2))^0(x-y)dif x \
=1/2 integral_0^2[y^2-2+2(1-y)sqrt(2-(y-1)^2)]dif y=-2/3. $
*常见错误* 以原点为极点时角度上限为 $3pi/4$；以 $(1,1)$ 为极点时上限为 $5pi/4$. 不能混淆两种坐标的积分界限.

]

#answer("18.")[
证　（Ⅰ）取 $F(x)=f(x)-(f(b)-f(a))/(b-a)(x-a)$，由题意知 $F(x)$ 在 $[a,b]$ 上连续，在 $(a,b)$ 内可导，且
$ F(a)=f(a)-(f(b)-f(a))/(b-a)(a-a)=f(a), $
$ F(b)=f(b)-(f(b)-f(a))/(b-a)(b-a)=f(a). $
根据罗尔定理，存在 $xi in(a,b)$，使得
$ F'(xi)=f'(xi)-(f(b)-f(a))/(b-a)=0, $
即 $f(b)-f(a)=f'(xi)(b-a)$.

（Ⅱ）对于任意的 $t in(0,delta)$，函数 $f(x)$ 在 $[0,t]$ 上连续，在 $(0,t)$ 内可导，由右导数定义及拉格朗日中值定理可得
$ f'_+(0)=lim_(t->0^+)(f(t)-f(0))/(t-0) \
=lim_(t->0^+)(f'(xi)t)/t=lim_(t->0^+)f'(xi), $
其中 $xi in(0,t)$.
由于 $lim_(t->0^+)f'(t)=A$，且当 $t->0^+$ 时，$xi->0^+$，所以 $lim_(t->0^+)f'(xi)=A$，故 $f'_+(0)$ 存在，且 $f'_+(0)=A$.

*（Ⅱ）证法2* 由洛必达法则，
$ lim_(x->0^+)(f(x)-f(0))/x
=lim_(x->0^+)f'(x)=A. $
所以 $f'_+(0)$ 存在，且等于 $A$.
*常见错误* （Ⅰ）不能直接引用柯西中值定理或泰勒公式来证明本题要求证明的拉格朗日中值定理. 也不能写 $f(b)-f(a)=integral_a^b f'(x)dif x=f'(xi)(b-a)$，题设没有给出 $f'$ 连续，甚至该积分是否存在尚未说明. 用反证法再积分导数不等式，同样需要说明积分存在及严格不等式的依据. （Ⅱ）不能先写 $f'_+(0)=lim_(x->0^+)f'(x)$ 再声称右导数存在；点处的导数与导函数的极限不能混淆.



*注* （Ⅰ）的辅助函数还可取
$ F(x)=f(x)-f(a)-(f(b)-f(a))/(b-a)(x-a), $
或 $F(x)=[f(b)-f(a)]x-(b-a)f(x)$.


]

#answer("19.")[
解法1　由题意知 $pi integral_1^t f^2(x)dif x=pi t integral_1^t f(x)dif x$，两边对 $t$ 求导得
$ f^2(t)=integral_1^t f(x)dif x+t f(t), $
代入 $t=1$，得 $f(1)=1$ 或 $f(1)=0$（舍去）.
再求导，得 $2f(t)f'(t)=2f(t)+t f'(t)$.
记 $f(t)=y$，则 $(dif t)/(dif y)+1/(2y)t=1$，因此
$ t=e^(-integral 1/(2y)dif y)(integral e^(integral 1/(2y)dif y)dif y+C) \
=y^(-1/2)(integral sqrt(y)dif y+C) \
=y^(-1/2)(2/3 y^(3/2)+C)=C/sqrt(y)+2/3 y. $
代入 $t=1,y=1$ 得 $C=1/3$，从而 $t=2/3 y+1/(3sqrt(y))$.
故所求曲线方程为 $x=2/3 y+1/(3sqrt(y))$.

解法2　同解法1，得 $2f(t)f'(t)=2f(t)+t f'(t),f(1)=1$，整理得 $(dif y)/(dif t)=(2y)/(2y-t)$.
令 $y/t=u$，则 $(dif y)/(dif t)=u+t(dif u)/(dif t)$，原方程变成
$ t(dif u)/(dif t)=(3u-2u^2)/(2u-1), $
分离变量得 $(2u-1)/(u(3-2u))dif u=1/t dif t$，即 $1/3(-1/u+4/(3-2u))dif u=(dif t)/t$.
积分得 $-1/3 ln[u(3-2u)^2]=ln(C t)$，即 $u^(-1/3)(3-2u)^(-2/3)=C t$.
代入 $t=1,u=1$ 得 $C=1$，所以 $u(3-2u)^2=1/t^3$.
代入 $u=y/t$，化简得 $y(3t-2y)^2=1$，即 $t=1/(3sqrt(y))+2/3 y$，故所求曲线方程为 $x=2/3 y+1/(3sqrt(y))$.

*常见错误* 从面积和旋转体体积的等式中，应对变量 $t$ 求导以得到微分方程，并作适当变形转成一阶线性方程或齐次方程. 还须从积分等式取得初值 $f(1)=1$，否则任意常数不能确定.

]

#answer("20.")[
（Ⅰ）解　对矩阵 $(A:xi_1)$ 施以初等行变换，得
$ (A:xi_1)=mat(1,-1,-1,-1;-1,1,1,1;0,-4,-2,-2,augment: #3) \
->mat(1,0,-1/2,-1/2;0,1,1/2,1/2;0,0,0,0,augment: #3), $
可求得 $xi_2=mat(-1/2+k/2;1/2-k/2;k)$，其中 $k$ 为任意常数.
又 $A^2=mat(2,2,0;-2,-2,0;4,4,0)$，对矩阵 $(A^2:xi_1)$ 施以初等行变换，得
$ (A^2:xi_1)=mat(2,2,0,-1;-2,-2,0,1;4,4,0,-2,augment: #3) \
->mat(1,1,0,-1/2;0,0,0,0;0,0,0,0,augment: #3), $
可求得 $xi_3=mat(-1/2-a;a;b)$，其中 $a,b$ 为任意常数.

（Ⅱ）证法1　由（Ⅰ）知
$ |xi_1,xi_2,xi_3|=det(-1,-1/2+k/2,-1/2-a;1,1/2-k/2,a;-2,k,b)=-1/2!=0, $
所以 $xi_1,xi_2,xi_3$ 线性无关.

证法2　由题设可得 $A xi_1=0$. 设存在数 $k_1,k_2,k_3$，使得
$ k_1 xi_1+k_2 xi_2+k_3 xi_3=0. quad "①" $
等式两端左乘 $A$，得 $k_2 A xi_2+k_3 A xi_3=0$，即
$ k_2 xi_1+k_3 A xi_3=0. quad "②" $
等式两端再左乘 $A$，得 $k_3 A^2 xi_3=0$，即 $k_3 xi_1=0$.
于是 $k_3=0$. 代入②式，得 $k_2 xi_1=0$，故 $k_2=0$. 将 $k_2=k_3=0$ 代入①式，可得 $k_1=0$，从而 $xi_1,xi_2,xi_3$ 线性无关.

*常见错误* 非齐次方程组的通解不能当作对应齐次方程组的基础解系. 通解的参数形式不唯一，可以代回方程检验. 行列式证明中不能略去任意常数；第二种证明必须利用关键条件 $A xi_1=0$.


]

#answer("21.")[
（Ⅰ）解　二次型 $f$ 的矩阵 $A=mat(a,0,1;0,a,-1;1,-1,a-1)$.
由于
$ |lambda E-A|=det(lambda-a,0,-1;0,lambda-a,1;-1,1,lambda-a+1) \
=(lambda-a)(lambda-(a+1))(lambda-(a-2)), $
所以 $A$ 的特征值为 $lambda_1=a,lambda_2=a+1,lambda_3=a-2$.

（Ⅱ）解法1　由于 $f$ 的规范形为 $y_1^2+y_2^2$，所以 $A$ 合同于 $mat(1,0,0;0,1,0;0,0,0)$，其秩为2，故 $|A|=lambda_1 lambda_2 lambda_3=0$，于是 $a=0$ 或 $a=-1$ 或 $a=2$.
当 $a=0$ 时，$lambda_1=0,lambda_2=1,lambda_3=-2$，此时 $f$ 的规范形为 $y_1^2-y_2^2$，不合题意.
当 $a=-1$ 时，$lambda_1=-1,lambda_2=0,lambda_3=-3$，此时 $f$ 的规范形为 $-y_1^2-y_2^2$，不合题意.
当 $a=2$ 时，$lambda_1=2,lambda_2=3,lambda_3=0$，此时 $f$ 的规范形为 $y_1^2+y_2^2$.
综上可知，$a=2$.

解法2　由于 $f$ 的规范形为 $y_1^2+y_2^2$，所以 $A$ 的特征值有2个为正数，1个为零.
又 $a-2<a<a+1$，所以 $a=2$.

*常见错误* 二次型的矩阵及其特征值应仔细计算. 不能把规范形与标准形混淆而断言特征值为 1；也不能把合同与相似混淆，断言 $A$ 相似于 $op("diag")(1,1,0)$.


]

#answer("22.")[
解　（Ⅰ）$X$ 的概率密度
$ f_X(x)=integral_(-infinity)^(+infinity)f(x,y)dif y \
=cases(integral_0^x e^(-x)dif y quad x>0,0 quad x<=0) \
=cases(x e^(-x) quad x>0,0 quad x<=0). $
当 $x>0$ 时，$Y$ 的条件概率密度
$ f_(Y|X)(y|x)=(f(x,y))/(f_X(x))=cases(1/x quad 0<y<x,0 quad "其他"). $
（Ⅱ）$Y$ 的概率密度
$ f_Y(y)=integral_(-infinity)^(+infinity)f(x,y)dif x=cases(e^(-y) quad y>0,0 quad y<=0). $
$ P{X<=1|Y<=1}=(P{X<=1,Y<=1})/(P{Y<=1}) \
=(integral_(-infinity)^1 integral_(-infinity)^1 f(x,y)dif x dif y)/(integral_0^1 e^(-y)dif y) \
=(integral_0^1 dif x integral_0^x e^(-x)dif y)/(1-e^(-1))=(e-2)/(e-1). $
]

#answer("23.")[
解　（Ⅰ）
$ P{X=1|Z=0}=(P{X=1,Z=0})/(P{Z=0}) \
=(binom(2,1) dot 1/6 dot 1/3)/((1/2)^2)=4/9. $
（Ⅱ）由题意知 $X$ 与 $Y$ 的所有可能取值均为0，1，2.
$(X,Y)$ 的概率分布为
#table(columns:4,[$X slash Y$],[0],[1],[2],[0],[$1/4$],[$1/3$],[$1/9$],[1],[$1/6$],[$1/9$],[0],[2],[$1/36$],[0],[0])

]

