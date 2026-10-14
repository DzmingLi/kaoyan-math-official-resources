#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2009, subject: "二", title: "2009年全国硕士研究生入学统一考试", solutions: true)
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

= 2009 数学二试卷参考解答

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


]

#answer("3.")[

选 D.
*解* 由全微分得 $f'_x=x,f'_y=y$，所以 $(0,0)$ 为驻点. 又
$ A=f''_(x x)=1,B=f''_(x y)=0,C=f''_(y y)=1, $
$ B^2-A C=-1<0,quad A>0. $
因此 $(0,0)$ 是极小值点.
*常见错误* 不要混淆极大值和极小值的判别条件.

]

#answer("4.")[

选 C.
*解* 两项累次积分的积分区域分别为
$ D_1={ (x,y)|1<=x<=2,x<=y<=2 }, $
$ D_2={ (x,y)|1<=y<=2,y<=x<=4-y }. $
合并得到 $D={ (x,y)|1<=y<=2,1<=x<=4-y }$，所以
$ integral_1^2 dif x integral_x^2 f(x,y)dif y
+integral_1^2 dif y integral_y^(4-y)f(x,y)dif x \
=integral_1^2 dif y integral_1^(4-y)f(x,y)dif x. $
*常见错误* 两项积分的积分次序不同，应先分别写出区域再合并.

]

#answer("5.")[

选 B.
*分析* 曲率圆与曲线在切点处有相同的切线和曲率，先确定一、二阶导数，再用单调性和零点定理.
*解* 对 $x^2+y^2=2$ 两次求导，得
$ x+y y'=0,quad 1+(y')^2+y y''=0. $
在 $(1,1)$ 处，$y'=-1,y''=-2$，故 $f'(1)=-1,f''(1)=-2$. 由于 $f''$ 不变号，在 $[1,2]$ 上 $f''<0$，从而 $f'$ 递减，$f'(x)<f'(1)=-1<0$. 因此 $f$ 在 $(1,2)$ 内递减且无极值点. 由拉格朗日中值定理，
$ f(2)-f(1)=f'(xi)<-1,quad xi in(1,2). $
于是 $f(2)<0$，而 $f(1)=1>0$，由零点定理知 $(1,2)$ 内有零点.
*常见错误* 应理解曲率圆所提供的导数信息，并正确使用二阶导数不变号的条件.

]

#answer("6.")[


选 D.
*解* 除 $x=0,2$ 外，$F'(x)=f(x)$. 由图中 $f$ 的符号，$F$ 在 $(-1,0)$ 内递增，在 $(0,1)$ 内递减，在 $(1,2)$ 内递增，在 $(2,3)$ 内为常数. 又 $F$ 连续且 $F(0)=0$，故只有 D 符合.
*常见错误* 只考虑连续性和单调性，忽略 $F(0)=0$ 而误选 C.
#align(center,graph-option(3))


]

#answer("7.")[


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

#answer("8.")[

选 A.
*解* 从 $P$ 到 $Q$ 是把第二列加到第一列，故 $Q=P E_(12)$，其中
$ E_(12)=mat(1,0,0;1,1,0;0,0,1). $
所以
$ Q^T A Q=E_(12)^T P^T A P E_(12) \
=mat(1,1,0;0,1,0;0,0,1)mat(1,0,0;0,1,0;0,0,2)mat(1,0,0;1,1,0;0,0,1) \
=mat(2,1,0;1,1,0;0,0,2). $
*常见错误* B 对应的是把第一列加到第二列. 初等列变换相当于右乘初等矩阵，行变换相当于左乘；$Q^T A Q$ 应同时进行对应的行、列变换.

]

= 二、填空题

#answer("9.")[
$y=2x$.
*解* 点 $(0,0)$ 对应 $t=1$. 由参数方程，
$ (dif y)/(dif t)|_(t=1)=[2t ln(2-t^2)-2t^3/(2-t^2)]_(t=1)=-2, $
$ (dif x)/(dif t)|_(t=1)=-e^(-(1-t)^2)|_(t=1)=-1. $
所以切线斜率为 $k=((dif y)/(dif t))/((dif x)/(dif t))|_(t=1)=2$，切线为 $y=2x$.
*常见错误* 求变上限积分的导数时，不能漏掉上限 $1-t$ 的导数 $-1$.

]

#answer("10.")[
$-2$.
*解* 由偶性，
$ 1=integral_(-infinity)^infinity e^(k abs(x))dif x
=2integral_0^infinity e^(k x)dif x
=2lim_(b->infinity)[e^(k x)/k]_0^b. $
该极限存在要求 $k<0$，因此 $1=-2/k$，得 $k=-2$.
*常见错误* 应正确分段处理绝对值，并检查反常积分的收敛条件.

]

#answer("11.")[
0.
*解* 记 $I_n=integral e^(-x)sin n x dif x$. 两次分部积分，
$ I_n=-e^(-x)sin n x+n integral e^(-x)cos n x dif x \
=-e^(-x)sin n x-n e^(-x)cos n x-n^2 I_n. $
所以 $I_n=-(sin n x+n cos n x)e^(-x)/(n^2+1)+C$，得
$ lim_(n->infinity)integral_0^1 e^(-x)sin n x dif x
=lim_(n->infinity)[-(n cos n+sin n)e^(-1)/(n^2+1)+n/(n^2+1)]=0. $

]

#answer("12.")[
$-3$.
*解* 原方程给出 $y(0)=0$. 求导得 $y+x y'+e^y y'=1$，代入 $x=0$ 得 $y'(0)=1$. 再求导，
$ 2y'+x y''+e^y y''+e^y(y')^2=0. $
代入 $x=0,y(0)=0,y'(0)=1$，得 $y''(0)=-3$.

]

#answer("13.")[
$e^(-2/e)$.
*解* $y'=x^(2x)(2ln x+2)$，令其为零得 $x=1/e$. 导数在 $(0,1/e)$ 为负，在 $(1/e,1)$ 为正，因此 $1/e$ 为极小值点. 又
$ y(1)=1,quad lim_(x->0^+)x^(2x)=lim_(x->0^+)e^(2x ln x)=1. $
故最小值为 $y(1/e)=e^(-2/e)$.

]

#answer("14.")[
2.
*解* 设 $alpha=(x_1,x_2,x_3)^T,beta=(y_1,y_2,y_3)^T$，则
$ alpha beta^T=mat(x_1 y_1,x_1 y_2,x_1 y_3;x_2 y_1,x_2 y_2,x_2 y_3;x_3 y_1,x_3 y_2,x_3 y_3). $
$beta^T alpha=sum_(i=1)^3 x_i y_i$ 为该矩阵的迹，也等于其特征值之和. 相似矩阵有相同特征值，因此 $beta^T alpha=2$.
*常见错误* $beta^T$ 是行向量，$beta^T alpha$ 是一个数，不能填成矩阵.

]

= 三、解答题

#answer("15.")[
解
$ lim_(x->0)((1-cos x)[x-ln(1+tan x)])/(sin^4 x) \
=lim_(x->0)(x-ln(1+tan x))/(2x^2) \
=lim_(x->0)(1-(sec^2 x)/(1+tan x))/(4x) \
=lim_(x->0)(1+tan x-sec^2 x)/(4x) \
=lim_(x->0)(sec^2 x-2sec^2 x tan x)/4=1/4. $

*常见错误* 先用等价无穷小替换消去容易处理的因子，再使用洛必达法则，可减少计算量和出错机会.

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

]

#answer("17.")[
解　由于 $(partial z)/(partial x)=f'_1+f'_2+y f'_3$，$(partial z)/(partial y)=f'_1-f'_2+x f'_3$，所以
$ dif z=(partial z)/(partial x)dif x+(partial z)/(partial y)dif y \
=(f'_1+f'_2+y f'_3)dif x+(f'_1-f'_2+x f'_3)dif y, $
$ (partial^2 z)/(partial x partial y)=f''_(11)-f''_(12)+x f''_(13)+f''_(21)-f''_(22)+x f''_(23) \
+f'_3+y(f''_(31)-f''_(32)+x f''_(33)) \
=f''_(11)+(x+y)f''_(13)-f''_(22)+(x-y)f''_(23)+x y f''_(33)+f'_3. $

*常见错误* 会求一阶偏导数不等于会写全微分；二阶复合函数求导应逐项使用链式法则，避免遗漏各中间变量的导数.

]

#answer("18.")[
解法1　记 $y'=p$，则 $y''=p'$，代入微分方程，当 $x>0$ 时，$p'-1/x p=-2/x$，解得
$ y'=p=e^(integral 1/x dif x)(integral -2/x e^(-integral 1/x dif x)dif x+C_1) \
=x(integral -2/x^2 dif x+C_1)=2+C_1 x, $
因此 $y=2x+1/2 C_1 x^2+C_2(x>0)$.
由已知 $y(0)=0$，有 $lim_(x->0^+)y=0$，于是 $C_2=0,y=2x+1/2 C_1 x^2$.
由于 $2=integral_0^1(2x+1/2 C_1 x^2)dif x=1+1/6 C_1$，所以 $C_1=6$，故 $y=2x+3x^2$.
由于 $x=1/3(sqrt(3y+1)-1),0<=y<=5$，故所求体积为
$ V=5pi-pi integral_0^5 x^2 dif y \
=5pi-pi/9 integral_0^5(sqrt(3y+1)-1)^2 dif y \
=5pi-(13pi)/6=(17pi)/6. $

解法2　（同解法1）$y=2x+3x^2$.
所求体积为
$ V=2pi integral_0^1 x y(x)dif x \
=2pi integral_0^1(2x^2+3x^3)dif x=(17pi)/6. $

*常见错误* 应先正确求解可降阶方程及其中的一阶线性方程，再由条件确定常数. 题目要求绕 $y$ 轴旋转，不能误按绕 $x$ 轴计算.

]

#answer("19.")[
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

]

#answer("20.")[
解　当 $-pi<x<0$ 时，设 $(x,y)$ 为曲线上任一点，由导数几何意义，法线斜率为 $k=-1/((dif y)/(dif x))$.
由题意，法线斜率为 $y/x$，所以有 $(dif y)/(dif x)=-x/y$. 分离变量，解得 $x^2+y^2=C$.
由初始条件 $y(-pi/sqrt(2))=pi/sqrt(2)$，得 $C=pi^2$，所以
$ y=sqrt(pi^2-x^2),quad -pi<x<0. quad "①" $
当 $0<=x<pi$ 时，$y''+y+x=0$ 的通解为
$ y=C_1 cos x+C_2 sin x-x,quad "②" $
$ y'=-C_1 sin x+C_2 cos x-1. quad "③" $
因为曲线 $y=y(x)$ 光滑，所以 $y(x)$ 连续且可导，由①式知
$ y(0)=lim_(x->0^-)y(x)=lim_(x->0^-)sqrt(pi^2-x^2)=pi, $
$ y'(0)=y'_-(0)=lim_(x->0^-)(sqrt(pi^2-x^2)-pi)/x=0, $
代入②、③式，得 $C_1=pi,C_2=1$，故 $y=pi cos x+sin x-x,0<=x<pi$.
因此
$ y(x)=cases(sqrt(pi^2-x^2) quad -pi<x<0,pi cos x+sin x-x quad 0<=x<pi). $

*常见错误* 应利用法线过原点建立左半区间上的微分方程，再利用曲线光滑给出的连续、可导条件确定右半区间解中的常数.

]

#answer("21.")[
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

#answer("22.")[
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

#answer("23.")[
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

