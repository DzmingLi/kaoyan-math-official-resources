#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2003, subject: "四", title: "2003年全国硕士研究生入学统一考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#import "@preview/cetz:0.5.2"
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2003 数学四试卷参考解答

= 一、填空题

#answer("1（1）")[
*解* 把原式改写成
$ lim_(x->0)[(1+ln(1+x))^(1/ln(1+x))]^(2ln(1+x)/x)=e^2. $
利用重要极限 $lim_(u->0)(1+u)^(1/u)=e$ 与 $lim_(x->0)ln(1+x)/x=1$.
]

#answer("1（2）")[
*解* $x e^(-abs(x))$ 为奇函数，其在对称区间上的积分为零；$abs(x)e^(-abs(x))$ 为偶函数，所以
$ integral_(-1)^1(abs(x)+x)e^(-abs(x))dif x=2integral_0^1 x e^(-x)dif x=2[-x e^(-x)-e^(-x)]_0^1=2(1-frac(2,e)). $
这是定积分性质和分部积分公式的应用.
]

#answer("1（3）")[
*解* 由分段函数定义，$g(y-x)$ 非零的条件是 $x<=y<=1+x$. 与 $0<=x<=1$ 相交得
$ D_1=\{(x,y):0<=x<=1,quad x<=y<=1+x\}. $
在 $D_1$ 上乘积为 $a^2$，其他地方为零，因而
$ I=integral_0^1 dif x integral_x^(1+x)a^2 dif y=a^2 integral_0^1(1+x-x)dif x=a^2. $
本题同时考查复合函数与二重积分区域、被积函数及积分上下限的确定.


#align(center)[#cetz.canvas(length: 12mm, {
 import cetz.draw: *
 line((0,0),(1,1),(1,2),(0,1),close:true,fill:rgb("eeeeee"))
 line((-.2,0),(1.7,0),mark:(end:">"))
 line((0,-.2),(0,2.4),mark:(end:">"))
 line((0,0),(1.5,1.5))
 line((0,1),(1.3,2.3))
 content((1.7,-.1),$x$);content((-.1,2.4),$y$)
 content((-.15,-.1),$O$);content((1,-.15),$1$);content((-.15,1),$1$)
 content((.5,1),$D_1$)
})]
]

#answer("1（4）")[
*解* 由 $A B=2A+B$，得
$ (A-E)(B-2E)=2E. $
因此 $A-E$ 可逆，且
$ (A-E)^(-1)=frac(1,2)(B-2E)=mat(0,0,1;0,1,0;1,0,0). $
本题可直接按逆矩阵定义求解，无须先求出 $A$.
]

#answer("1（5）")[
*解* 由 $A B=E$ 得
$ (E-alpha alpha^T)(E+frac(1,a)alpha alpha^T)=E. $
因为 $alpha^T alpha=2a^2$，整理为
$ alpha alpha^T(frac(1,a)-1-2a)=0. $
由 $alpha alpha^T !=0$ 得 $2a^2+a-1=(2a-1)(a+1)=0$，再由 $a<0$ 得 $a=-1$.
应掌握逆矩阵定义和矩阵、向量的乘法顺序.
]

#answer("1（6）")[
*解* 由 $E X=E Y=0$，$E X^2=E Y^2=2$，有 $D X=D Y=2$. 所以
$ E(X Y)=op("Cov")(X,Y)=rho sqrt(D X D Y)=frac(1,2)sqrt(2 dot 2)=1. $
于是
$ E(X+Y)^2=E X^2+2E(X Y)+E Y^2=2+2+2=6. $
]

= 二、选择题

#answer("2（1）")[
*解* 当 $x->+-infinity$ 时，$x e^(1/x^2)$ 没有有限极限，故无水平渐近线. 当 $x->0^+$ 时它趋于 $+infinity$，当 $x->0^-$ 时趋于 $-infinity$，故 $x=0$ 为铅直渐近线. 对斜渐近线有
$ k=lim_(x->+-infinity)frac(y,x)=1,quad b=lim_(x->+-infinity)(y-x)=lim_(x->+-infinity)x(e^(1/x^2)-1)=0. $
故另有斜渐近线 $y=x$，选 D.
]

#answer("2（2）")[
*解* 在 $x=1$ 处，$f(1)=0$. 由导数定义，左、右导数分别为
$ f'_-(1)=-3phi(1),quad f'_+(1)=3phi(1). $
二者相等当且仅当 $phi(1)=0$，因此选 A. 关键是根据绝对值内部的符号，分别计算左右导数.
]

#answer("2（3）")[
*解* 可微函数的两个一阶偏导数存在. 取得极值的必要条件为 $f'_x(x_0,y_0)=f'_y(x_0,y_0)=0$. 固定 $x=x_0$，则 $f(x_0,y)$ 为在 $y_0$ 取得极小值的一元可导函数，其导数必等于零，选 B.
]

#answer("2（4）")[
*解* 相似矩阵有相同的特征值，且相应的多项式矩阵也相似. 矩阵 $B$ 的特征值为 $1,1,-1$，因此 $A-2E$ 的特征值为 $-1,-1,-3$，秩为3；$A-E$ 的特征值为 $0,0,-2$，因 $B$ 为实对称矩阵可对角化，故秩为1. 所以秩之和为4，选 C.
也可直接计算 $B-2E$ 和 $B-E$ 的秩，利用相似矩阵秩相等得到同样结果.
]

#answer("2（5）")[
*解* 独立的定义是 $P(A B)=P(A)P(B)$，不能用两事件互斥或交集非空代替. 两事件可能交集非空而独立，也可能交集非空而不独立；只根据题中条件不能作独立性的必然判断. 因而正确选项为 B.
]

#answer("2（6）")[
*解* 两个边缘分布都为正态分布，并不能推出联合分布为二维正态分布；不相关也未必独立，和也未必服从正态分布. 所以选 C.
若已知联合分布为二维正态分布，则不相关与独立等价；若两个正态变量独立，则它们的联合分布为二维正态分布，其和也为正态变量. 应区别这些结论的条件.
]

= 解答题

#answer("三、")[
*分析* 初等函数在其定义区间内连续，问题归结为零点处右极限是否存在. 可先合并前两项，利用等价无穷小与洛必达法则求出极限，再补充端点定义.


解
$ lim_(x->0^+) f(x)&=-1/pi+lim_(x->0^+) (pi x-sin pi x)/(pi x sin pi x) \
&=-1/pi+lim_(x->0^+) (pi x-sin pi x)/(pi^2 x^2) \
&=-1/pi+lim_(x->0^+) (pi-pi cos pi x)/(2 pi^2 x) \
&=-1/pi+lim_(x->0^+) (pi^2 sin pi x)/(2 pi^2)=-1/pi. $
由于 $f(x)$ 在 $(0,1/2]$ 上连续，则定义
$ f(0)=-1/pi, $
就可使 $f(x)$ 在 $[0,1/2]$ 上连续.


*注* 不必将三项全部通分；先合并含奇点的前两项可简化计算，第三项的极限可直接求得.
]

#answer("四、")[
*分析* 令 $u=x y,v=(x^2-y^2)/2$，应用复合函数的偏导数链式法则. 一阶偏导数仍是抽象的复合函数，继续求导时还须再次应用链式法则.


解
$ (partial g)/(partial x)=y (partial f)/(partial u)+x (partial f)/(partial v), \
(partial g)/(partial y)=x (partial f)/(partial u)-y (partial f)/(partial v). $
故
$ (partial^2 g)/(partial x^2)=y^2 (partial^2 f)/(partial u^2)+2x y (partial^2 f)/(partial u partial v)+x^2 (partial^2 f)/(partial v^2)+(partial f)/(partial v), \
(partial^2 g)/(partial y^2)=x^2 (partial^2 f)/(partial u^2)-2x y (partial^2 f)/(partial u partial v)+y^2 (partial^2 f)/(partial v^2)-(partial f)/(partial v). $
所以
$ (partial^2 g)/(partial x^2)+(partial^2 g)/(partial y^2)&=(x^2+y^2)(partial^2 f)/(partial u^2)+(x^2+y^2)(partial^2 f)/(partial v^2) \
&=x^2+y^2. $


*典型错误* 二阶求导时漏掉混合项 $2x y f''_(u v)$ 或一阶偏导项 $f'_v$，虽然相加后恰好消去而得到正确结果，过程仍不正确.
]

#answer("五、")[
*分析* 被积函数为 $f(x^2+y^2)$ 型，区域为半径 $sqrt(pi)$ 的圆，用极坐标最简便. 再令 $t=r^2$，用两次分部积分解出一元积分.


解 作极坐标变换：$x=r cos theta,y=r sin theta$，有
$ I&=e^pi integral.double_D e^(-(x^2+y^2)) sin(x^2+y^2) dif x dif y \
&=e^pi integral_0^(2 pi) dif theta integral_0^sqrt (pi) r e^(-r^2) sin r^2 dif r. $
令 $t=r^2$，则
$ I=pi e^pi integral_0^pi e^(-t) sin t dif t. $
记 $A=integral_0^pi e^(-t) sin t dif t$，则
$ A&=-integral_0^pi sin t dif e^(-t) \
&=-[lr(e^(-t) sin t)|_0^pi-integral_0^pi e^(-t) cos t dif t] \
&=-integral_0^pi cos t dif e^(-t) \
&=-[lr(e^(-t) cos t)|_0^pi+integral_0^pi e^(-t) sin t dif t] \
&=e^(-pi)+1-A. $
因此
$ A=1/2(1+e^(-pi)), quad I=(pi e^pi)/2(1+e^(-pi))=pi/2(1+e^pi). $


*典型错误* 极坐标内层上限应为 $sqrt(pi)$，换元 $t=r^2$ 后上限才是 $pi$. 每次换元须同时变换积分限.
]

#answer("六、")[
*分析* 先对参数固定的函数求驻点，再把驻点看成参数的函数，求其最小值. 这是先求导、再求函数极值的综合应用.


解 由 $f'(t)=a^t ln a-a=0$，得唯一驻点
$ t(a)=1-(ln ln a)/(ln a). $
考察函数 $t(a)=1-(ln ln a)/(ln a)$ 在 $a>1$ 时的最小值. 令
$ t'(a)=-(1/a-1/a ln ln a)/(ln a)^2=-(1-ln ln a)/(a(ln a)^2)=0, $
得唯一驻点 $a=e^e$.

当 $a>e^e$ 时，$t'(a)>0$；当 $a<e^e$ 时，$t'(a)<0$，因此
$ t(e^e)=1-1/e $
为极小值，从而是最小值.


*注* 得到参数的驻点以后，还须判断两侧导数的符号，才能确定该点给出最小值.
]

#answer("七、")[
*分析* 将题中面积条件表示为含变上限积分的等式，再求导得到一阶线性微分方程，利用端点条件确定积分常数.


解 根据题意，有
$ x/2[1+f(x)]+integral_x^1 f(t) dif t=x^3/6+1/3. $
#import "@preview/cetz:0.5.2"
#cetz.canvas({
 import cetz.draw: *
 set-style(stroke:.7pt)
 line((-.4,0),(3.7,0),mark:(end:">"));line((0,-.3),(0,3.5),mark:(end:">"))
 line(..range(0,81).map(i=>{let x=i/80;(3*x,3*(1 - x)*(1 - x))}))
 line((0,3),(1.32,.9408),(1.32,0))
 content((0,0),$O$,anchor:"north-east");content((0,3),$A$,anchor:"south-west")
 content((3,0),$B$,anchor:"north");content((1.32,0),$C$,anchor:"north")
 content((1.32,.9408),$M$,anchor:"south-west");content((3.7,0),$x$,anchor:"north");content((0,3.5),$y$,anchor:"east")
})
两边关于 $x$ 求导，得
$ 1/2[1+f(x)]+1/2 x f'(x)-f(x)=1/2 x^2. $
当 $x != 0$ 时，得
$ f'(x)-1/x f(x)=(x^2-1)/x. $
故
$ f(x)&=e^(-integral -1/x dif x)[integral (x^2-1)/x e^(integral -1/x dif x) dif x+C] \
&=e^(ln x)[integral (x^2-1)/x e^(-ln x) dif x+C] \
&=x(integral (x^2-1)/x^2 dif x+C)=x(x+1/x+C)=x^2+1+C x. $
当 $x=0$ 时，$f(0)=1$.

由于 $x=1$ 时，$f(1)=0$，故有 $2+C=0$，从而 $C=-2$. 所以
$ f(x)=x^2-2x+1=(x-1)^2. $


*注* 四边形 $O C M A$ 为梯形，其面积为 $x[1+f(x)]/2$，不能当作 $integral_0^x f(t)dif t$；后者是曲线下方的面积. 积分常数应由 $f(1)=0$ 确定，$f(0)=1$ 已自动满足.
]

#answer("八、")[
*分析* 由销售量求剩余量，再用连续函数平均值公式计算平均剩余量. 时间变量和销售、库存两个函数的含义须区分清楚.


解 （1）在时刻 $t$ 商品的剩余量为
$ y(t)=A-x(t)=A-k t, quad t in [0,T]. $
由 $A-k T=0$，得 $k=A/T$，因此
$ y(t)=A-A/T t, quad t in [0,T]. $
（2）依题意，$y(t)$ 在 $[0,T]$ 上的平均值为
$ overline(y)=1/T integral_0^T y(t) dif t=1/T integral_0^T (A-A/T t) dif t=A/2. $
因此在时间段 $[0,T]$ 上的平均剩余量为 $A/2$.
]

#answer("九、")[
*分析* 两向量组等价当且仅当可以相互线性表示. 将两组列向量并在一个矩阵中作行变换，分参数是否使第一组满秩两种情形判断.


解 作初等行变换，有
$ (alpha_1,alpha_2,alpha_3 quad bar.v quad beta_1,beta_2,beta_3)&=mat(augment:#3,1,1,1,1,2,2;0,1,-1,2,1,1;2,3,a+2,a+3,a+6,a+4) \
&->mat(augment:#3,1,0,2,-1,1,1;0,1,-1,2,1,1;0,0,a+1,a-1,a+1,a-1). $
（1）当 $a != -1$ 时，有行列式 $|alpha_1 quad alpha_2 quad alpha_3|=a+1 != 0$，$op("秩")(alpha_1,alpha_2,alpha_3)=3$，故线性方程组 $x_1 alpha_1+x_2 alpha_2+x_3 alpha_3=beta_i (i=1,2,3)$ 均有唯一解. 所以 $beta_1,beta_2,beta_3$ 可由向量组（Ⅰ）线性表示.

同样，行列式 $|beta_1 quad beta_2 quad beta_3|=6 != 0$，$op("秩")(beta_1,beta_2,beta_3)=3$，故 $alpha_1,alpha_2,alpha_3$ 可由向量组（Ⅱ）线性表示. 因此，向量组（Ⅰ）与（Ⅱ）等价.

（2）当 $a=-1$ 时，有
$ (alpha_1,alpha_2,alpha_3 quad bar.v quad beta_1,beta_2,beta_3)->mat(augment:#3,1,0,2,-1,1,1;0,1,-1,2,1,1;0,0,0,-2,0,-2). $
由于 $op("秩")(alpha_1,alpha_2,alpha_3) != op("秩")(alpha_1,alpha_2,alpha_3 quad bar.v quad beta_1)$，线性方程组 $x_1 alpha_1+x_2 alpha_2+x_3 alpha_3=beta_1$ 无解，故向量 $beta_1$ 不能由 $alpha_1,alpha_2,alpha_3$ 线性表示. 因此，向量组（Ⅰ）与（Ⅱ）不等价.


*注* 仅写两个向量组秩相等，不能推出等价；秩相等只是必要条件. 满秩时须说明它们各自张成整个三维空间，非满秩时可利用线性方程组无解证明不能表示.
]

#answer("十、")[
*分析* 在 $A^* alpha=lambda alpha$ 两边左乘 $A$，利用 $A A^*=abs(A)E$，得到 $A alpha=abs(A)alpha/lambda$，再由三个分量方程求参数.


解 矩阵 $A^*$ 的属于特征值 $lambda$ 的特征向量为 $alpha$，由于矩阵 $A$ 可逆，故 $A^*$ 可逆. 于是 $lambda != 0,|A| != 0$，且
$ A^* alpha=lambda alpha. $
两边同时左乘矩阵 $A$，得
$ A A^* alpha=lambda A alpha, quad A alpha=|A|/lambda alpha, $
即
$ mat(2,1,1;1,2,1;1,1,a)mat(1;b;1)=|A|/lambda mat(1;b;1), $
由此，得方程组
$ cases(3+b=|A|/lambda & #text[①],2+2b=|A|/lambda b & #text[②],a+b+1=|A|/lambda & #text[③]). $
由式①，②解得 $b=1$ 或 $b=-2$；由式①，③解得 $a=2$.

由于
$ |A|=mat(delim:"|",2,1,1;1,2,1;1,1,a)=3a-2=4, $
根据①式知，特征向量 $alpha$ 所对应的特征值
$ lambda=|A|/(3+b)=4/(3+b). $
所以，当 $b=1$ 时，$lambda=1$；当 $b=-2$ 时，$lambda=4$.


*另一解法* 直接求伴随矩阵
$ A^*=mat(2a-1,1-a,-1;1-a,2a-1,-1;-1,-1,3), $
再将 $A^* alpha=lambda alpha$ 展开为三个分量方程，也可求出 $a,b,lambda$ 的值. 此法先计算伴随矩阵，运算量较大.
]

#answer("十一、")[
*分析* 先由密度求分布函数，再用分布函数法求连续型随机变量函数的分布. 也可用单调变换的密度公式.


解 易见，当 $x<1$ 时，$F(x)=0$；当 $x>8$ 时，$F(x)=1$.

对于 $x in [1,8]$，有
$ F(x)=integral_1^x 1/(3 root(3,t^2)) dif t=root(3,x)-1. $
设 $G(y)$ 是随机变量 $Y=F(X)$ 的分布函数. 显然，当 $y<=0$ 时 $G(y)=0$；当 $y>=1$ 时 $G(y)=1$.

对于 $y in (0,1)$，有
$ G(y)&=P{Y<=y}=P{F(X)<=y} \
&=P{root(3,X)-1<=y}=P{X<=(y+1)^3}=F[(y+1)^3]=y. $
于是，$Y=F(X)$ 的分布函数为
$ G(y)=cases(0 & y<=0,y & 0<y<1,1 & y>=1). $


*解法2* 在 $1<x<8$ 上，$y=F(x)=root(3,x)-1$ 的反函数为 $x=(y+1)^3$，其导数为 $3(y+1)^2$. 因而
$ f_Y(y)=f((y+1)^3)abs(3(y+1)^2)=1,quad 0<y<1. $
其他处密度为零，所以 $Y$ 服从 $(0,1)$ 上的均匀分布，积分得到上述 $G(y)$.
]

#answer("十二、")[
*分析* 第（1）问直接由定义证明. 第（2）问须将事件的概率关系转化为随机变量的关系：以两个事件的示性随机变量为桥梁，证明题给系数就是它们的相关系数，再应用 $abs(rho)<=1$.


证明 （1）由 $rho$ 的定义，可见 $rho=0$ 当且仅当
$ P(A B)-P(A)P(B)=0, $
而这恰好是二事件 $A$ 和 $B$ 独立的定义，即 $rho=0$ 是 $A$ 和 $B$ 独立的充分必要条件.

（2）考虑随机变量 $X$ 和 $Y$：
$ X=cases(1 & #text[若] A #text[出现],0 & #text[若] A #text[不出现]); quad Y=cases(1 & #text[若] B #text[出现],0 & #text[若] B #text[不出现]). $
由条件知，$X$ 和 $Y$ 都服从0—1分布：
$ X tilde mat(0,1;1-P(A),P(A)),Y tilde mat(0,1;1-P(B),P(B)). $
易见
$ E X=P(A),E Y=P(B); \
 D X=P(A)P(overline(A)),D Y=P(B)P(overline(B)); \
 op("cov")(X,Y)=P(A B)-P(A)P(B). $
因此，事件 $A$ 和 $B$ 的相关系数就是随机变量 $X$ 和 $Y$ 的相关系数.

于是由二维随机变量相关系数的基本性质，可见 $|rho|<=1$.


*注* 关键在于构造事件的示性随机变量，并逐项写出它们的期望、方差和协方差，不能直接把事件当作随机变量套用性质.
]

