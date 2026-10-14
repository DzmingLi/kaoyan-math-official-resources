#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2003, subject: "三", title: "2003年全国硕士研究生入学统一考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#import "@preview/cetz:0.5.2"
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2003 数学三试卷参考解答

= 一、填空题

#answer("1（1）")[
*解* 在分界点先用导数定义：
$ f'(0)=lim_(x->0)frac(f(x)-f(0),x)=lim_(x->0)x^(lambda-1)cos frac(1,x)=0. $
在非零处求导得
$ f'(x)=lambda x^(lambda-1)cos frac(1,x)+x^(lambda-2)sin frac(1,x). $
要使 $lim_(x->0)f'(x)=f'(0)=0$，须 $lambda>2$.
若参数使负半轴的 $x^lambda$ 无定义，则函数定义域取 $[0,+infinity)$，在零点用右导数，计算和连续性条件相同，仍得 $lambda>2$.
本题考查分段函数在分界点的导数定义、复合函数求导和导函数连续性.
]

#answer("1（2）")[
*解* 设切点为 $(x_0,0)$，它既在曲线上又使切线斜率为零，所以
$ cases(3x_0^2-3a^2=0,x_0^3-3a^2 x_0+b=0). $
第一式给出 $x_0^2=a^2$，第二式给出 $b=x_0(3a^2-x_0^2)=2a^2 x_0$，故 $b^2=4a^6$. 切点的纵坐标为零和切线斜率为零两个条件都不可缺少.
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
*解* 由 $A B=E$ 得
$ (E-alpha alpha^T)(E+frac(1,a)alpha alpha^T)=E. $
因为 $alpha^T alpha=2a^2$，整理为
$ alpha alpha^T(frac(1,a)-1-2a)=0. $
由 $alpha alpha^T !=0$ 得 $2a^2+a-1=(2a-1)(a+1)=0$，再由 $a<0$ 得 $a=-1$.
应掌握逆矩阵定义和矩阵、向量的乘法顺序.
]

#answer("1（5）")[
*解* 有 $D Z=D(X-0.4)=D X$，并且 $Z-E Z=X-E X$，所以
$ rho_(Y Z)=frac(E[(Y-E Y)(Z-E Z)],sqrt(D Y D Z))=frac(E[(Y-E Y)(X-E X)],sqrt(D Y D X))=rho_(Y X)=rho_(X Y)=0.9. $
本题考查相关系数的定义及期望、方差的运算.
]

#answer("1（6）")[
*解* 简单随机样本的各分量独立同分布，因此 $X_i^2$ 也独立同分布. 指数分布给出 $E X_i=1/2,D X_i=1/4$，所以
$ E X_i^2=D X_i+(E X_i)^2=frac(1,4)+frac(1,4)=frac(1,2). $
由独立同分布大数定律，$Y_n=1/n sum_(i=1)^n X_i^2$ 依概率收敛于 $1/2$.
]

= 二、选择题

#answer("2（1）")[
*分析* 由导数定义判断商函数在零点的极限，确定间断点类型.
*解* 奇函数给出 $f(0)=0$，由 $f'(0)$ 存在，有
$ lim_(x->0)g(x)=lim_(x->0)frac(f(x)-f(0),x-0)=f'(0). $
极限有限而零点未定义，所以是可去间断点，选 D.
]

#answer("2（2）")[
*解* 可微函数的两个一阶偏导数存在. 取得极值的必要条件为 $f'_x(x_0,y_0)=f'_y(x_0,y_0)=0$. 固定 $x=x_0$，则 $f(x_0,y)$ 为在 $y_0$ 取得极小值的一元可导函数，其导数必等于零，选 A.
]

#answer("2（3）")[
*分析* 利用绝对收敛、条件收敛的定义和收敛级数的线性运算性质.
*解* 若 $sum a_n$ 绝对收敛，则 $sum a_n$ 与 $sum abs(a_n)$ 均收敛，因此
$ sum p_n=frac(1,2)(sum a_n+sum abs(a_n)),quad sum q_n=frac(1,2)(sum a_n-sum abs(a_n)) $
都收敛，选 B. 若 $sum a_n$ 条件收敛，则 $sum abs(a_n)$ 发散，上述正项与负项部分均发散，排除 A、C；绝对收敛时两者均收敛，排除 D.
]

#answer("2（4）")[
*分析* 由伴随矩阵秩为1可知 $A$ 秩为2，行列式为零且至少一个二阶子式不为零.
*解* 有 $det A=(a-b)^2(a+2b)=0$. 若 $a=b$，则矩阵秩至多为1，所有二阶子式为零，伴随矩阵秩为0，与条件矛盾. 所以 $a!=b$，且 $a+2b=0$，选 C.
]

#answer("2（5）")[
*分析* 按线性相关、无关的定义及秩的关系逐项判断.
*解* A正是线性无关定义，C为无关的秩条件，D由“部分组相关则整体相关”的逆否命题可得，均正确. B只说全零系数的组合等于零，这对任意向量组都成立，不能表达线性相关；线性相关要求存在一组不全为零的系数. 所以不正确的是 B.
]

#answer("2（6）")[
*分析* 区分两两独立和相互独立.
*解* 有 $P(A_1)=P(A_2)=P(A_3)=1/2$，任意两者交的概率均为 $1/4$，故两两独立. 但 $A_1 A_2 A_3$ 不可能发生，概率为0，不等于三概率之积 $1/8$，因此不相互独立. 又 $A_4$ 发生则 $A_2$ 必发生，$P(A_2 A_4)=1/4 !=P(A_2)P(A_4)=1/8$，排除 B、D. 故选 C.
]

= 解答题

#answer("三、")[
*分析* 初等函数在已有定义区间连续，端点补充定义为左极限即可. 先通分，再换元，把问题化为零点处极限；洛必达法则可完成计算.


解 令 $y=1-x$，有
$ lim_(x->1^-) f(x)&=1/pi+lim_(x->1^-) (pi(1-x)-sin pi x)/(pi(1-x)sin pi x) \
&=1/pi+lim_(y->0^+) (pi y-sin pi y)/(pi y sin pi y) \
&=1/pi+lim_(y->0^+) (pi y-sin pi y)/(pi^2 y^2) \
&=1/pi+lim_(y->0^+) (pi-pi cos pi y)/(2 pi^2 y) \
&=1/pi+lim_(y->0^+) (pi^2 sin pi y)/(2 pi^2)=1/pi. $
由于 $f(x)$ 在 $[1/2,1)$ 上连续，因此定义
$ f(1)=1/pi, $
就可使 $f(x)$ 在 $[1/2,1]$ 上连续.
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
*分析* 先逐项求导化成几何级数，求其和后积分回去；再按导数与极值关系确定极值. 求和与求极值是两个步骤.


解
$ f'(x)=sum_(n=1)^infinity (-1)^n x^(2n-1)=-x/(1+x^2). $
上式两边从0到 $x$ 积分，得
$ f(x)-f(0)=-integral_0^x t/(1+t^2) dif t=-1/2 ln(1+x^2). $
由 $f(0)=1$，得
$ f(x)=1-1/2 ln(1+x^2), quad (|x|<1). $
令 $f'(x)=0$，求得唯一驻点 $x=0$. 由于
$ f''(x)=-(1-x^2)/(1+x^2)^2, quad f''(0)=-1<0, $
可见 $f(x)$ 在 $x=0$ 处取得极大值，且极大值为
$ f(0)=1. $


*典型错误* 积分恢复和函数时遗漏 $f(0)=1$，误写成 $-ln(1+x^2)/2$；求驻点后未检验极值及类型. 也可看 $f'(x)$ 在零点左侧为正、右侧为负，证明极大值为1.
]

#answer("七、")[
*分析* 对乘积求导，再利用给定导数关系建立一阶方程，最后求解. 也可先分别求出两个函数，再确定乘积和方程.


解 （1）由
$ F'(x)&=f'(x)g(x)+f(x)g'(x)=g^2(x)+f^2(x) \
&=[f(x)+g(x)]^2-2f(x)g(x)=(2e^x)^2-2F(x), $
可见 $F(x)$ 所满足的一阶微分方程为
$ F'(x)+2F(x)=4e^(2x). $
（2）
$ F(x)&=e^(-integral 2 dif x)[integral 4e^(2x) dot e^(integral 2 dif x) dif x+C] \
&=e^(-2x)[integral 4e^(4x) dif x+C]=e^(2x)+C e^(-2x). $
将 $F(0)=f(0)g(0)=0$ 代入上式，得 $C=-1$.

于是
$ F(x)=e^(2x)-e^(-2x). $


*解法2* 由 $f'(x)=g(x)$ 和 $f(x)+g(x)=2e^x$，得 $f'(x)+f(x)=2e^x$. 通解为 $f(x)=e^(-x)(e^(2x)+C)$，由 $f(0)=0$ 得 $C=-1$，所以
$ f(x)=e^x-e^(-x),quad g(x)=f'(x)=e^x+e^(-x). $
因此 $F(x)=f(x)g(x)=e^(2x)-e^(-2x)$，直接求导可得 $F'(x)+2F(x)=4e^(2x)$.
]

#answer("八、")[
*分析* 由闭区间连续函数的性质先找出另一个函数值为1的点，再与右端点应用罗尔定理；也可用反证或连续函数的单调性讨论.


证 因为 $f(x)$ 在 $[0,3]$ 上连续，所以 $f(x)$ 在 $[0,2]$ 上连续，且在 $[0,2]$ 上必有最大值 $M$ 和最小值 $m$，于是
$ m<=f(0)<=M, quad m<=f(1)<=M, quad m<=f(2)<=M. $
故
$ m<=(f(0)+f(1)+f(2))/3<=M. $
由介值定理知，至少存在一点 $c in [0,2]$，使
$ f(c)=(f(0)+f(1)+f(2))/3=1. $
因为 $f(c)=1=f(3)$，且 $f(x)$ 在 $[c,3]$ 上连续，在 $(c,3)$ 内可导，所以由罗尔定理知，必存在 $xi in (c,3) subset (0,3)$，使 $f'(xi)=0$.


*证法2* 若在 $[0,2]$ 上处处 $f(x)>1$，则 $f(0)+f(1)+f(2)>3$，矛盾；处处 $f(x)<1$ 同样矛盾. 连续性因此保证有 $c in[0,2]$ 使 $f(c)=1=f(3)$，在 $[c,3]$ 上用罗尔定理得所需 $xi$.

*证法3* 若函数恒为常数，由条件它恒为1，结论成立. 若函数严格递增，则 $f(0)+f(1)+f(2)<3f(3)=3$；若严格递减，则该和大于3，均矛盾. 故连续函数不可能严格单调，由连续函数在区间上单射必严格单调，存在不同点 $a<b$ 使 $f(a)=f(b)$. 在 $[a,b]$ 上应用罗尔定理，得到 $xi in(a,b)subset(0,3)$，$f'(xi)=0$.
]

#answer("九、")[
*分析* 先计算系数行列式，非零时仅有零解；为零时分类化简方程组，求出基础解系.


解 方程组的系数行列式
$ |A|=mat(delim:"|",a_1+b,a_2,a_3,dots,a_n;a_1,a_2+b,a_3,dots,a_n;a_1,a_2,a_3+b,dots,a_n;dots.v,dots.v,dots.v,,dots.v;a_1,a_2,a_3,dots,a_n+b)=b^(n-1)(b+sum_(i=1)^n a_i). $
（1）当 $b != 0$ 且 $b+sum_(i=1)^n a_i != 0$ 时，$op("秩")(A)=n$，方程组仅有零解.

（2）当 $b=0$ 时，原方程组的同解方程组为
$ a_1 x_1+a_2 x_2+dots+a_n x_n=0. $
由 $sum_(i=1)^n a_i != 0$ 可知，$a_i (i=1,2,dots,n)$ 不全为零. 不妨设 $a_1 != 0$，得原方程组的一个基础解系为
$ alpha_1=(-a_2/a_1,1,0,dots,0)^T, quad alpha_2=(-a_3/a_1,0,1,dots,0)^T, \
 dots, quad alpha_(n-1)=(-a_n/a_1,0,0,dots,1)^T. $
当 $b=-sum_(i=1)^n a_i$ 时，有 $b != 0$，原方程组的系数矩阵可化为
$ mat(a_1-sum_(i=1)^n a_i,a_2,a_3,dots,a_n;-1,1,0,dots,0;-1,0,1,dots,0;dots.v,dots.v,dots.v,,dots.v;-1,0,0,dots,1) \
->mat(-1,1,0,dots,0;-1,0,1,dots,0;dots.v,dots.v,dots.v,,dots.v;-1,0,0,dots,1;0,0,0,dots,0). $
由此得原方程组的同解方程组为
$ x_2=x_1,x_3=x_1,dots,x_n=x_1. $
原方程组的一个基础解系为
$ alpha=(1,1,dots,1)^T. $
]

#answer("十、")[
*分析* 写出二次型矩阵，用特征值之和、积与迹、行列式的关系求参数，也可先求一般特征多项式. 再求特征向量，正交化并单位化，构造正交矩阵将二次型化为标准形.


解法1 （1）二次型 $f$ 的矩阵为
$ A=mat(a,0,b;0,2,0;b,0,-2). $
设 $A$ 的特征值为 $lambda_i (i=1,2,3)$. 由题设，有
$ lambda_1+lambda_2+lambda_3=a+2+(-2)=1, $
$ lambda_1 lambda_2 lambda_3=mat(delim:"|",a,0,b;0,2,0;b,0,-2)=-4a-2b^2=-12. $
解得 $a=1,b=2$.

（2）由矩阵 $A$ 的特征多项式
$ |lambda E-A|=mat(delim:"|",lambda-1,0,-2;0,lambda-2,0;-2,0,lambda+2)=(lambda-2)^2 (lambda+3), $
得 $A$ 的特征值 $lambda_1=lambda_2=2,lambda_3=-3$.

对于 $lambda_1=lambda_2=2$，解齐次线性方程组 $(2E-A)X=0$，得其基础解系
$ xi_1=(2,0,1)^T,xi_2=(0,1,0)^T. $
对于 $lambda_3=-3$，解齐次线性方程组 $(-3E-A)X=0$，得其基础解系
$ xi_3=(1,0,-2)^T. $
由于 $xi_1,xi_2,xi_3$ 已是正交向量组，为得到规范正交向量组，只需将 $xi_1,xi_2,xi_3$ 单位化，由此得
$ eta_1=(2/sqrt(5),0,1/sqrt(5))^T,eta_2=(0,1,0)^T,eta_3=(1/sqrt(5),0,-2/sqrt(5))^T. $
令矩阵
$ Q=(eta_1,eta_2,eta_3)=mat(2/sqrt(5),0,1/sqrt(5);0,1,0;1/sqrt(5),0,-2/sqrt(5)), $
则 $Q$ 为正交矩阵. 在正交变换 $X=Q Y$ 下，有
$ Q^T A Q=mat(2,0,0;0,2,0;0,0,-3), $
且二次型的标准形为
$ f=2y_1^2+2y_2^2-3y_3^2. $
解法2 （1）二次型 $f$ 的矩阵为
$ A=mat(a,0,b;0,2,0;b,0,-2), $
$A$ 的特征多项式为
$ |lambda E-A|&=mat(delim:"|",lambda-a,0,-b;0,lambda-2,0;-b,0,lambda+2) \
&=(lambda-2)[lambda^2-(a-2)lambda-(2a+b^2)]. $
设 $A$ 的特征值为 $lambda_1,lambda_2,lambda_3$，则 $lambda_1=2,lambda_2+lambda_3=a-2,lambda_2 lambda_3=-(2a+b^2)$. 由题设得
$ lambda_1+lambda_2+lambda_3=2+(a-2)=1, \
 lambda_1 lambda_2 lambda_3=-2(2a+b^2)=-12. $
解得 $a=1,b=2$.

（2）由（1），可得 $A$ 的特征值为
$ lambda_1=lambda_2=2,lambda_3=-3. $
以下可参见解法1.
]

#answer("十一、")[
*分析* 先分段求总体分布函数，再用分布函数法求新变量的分布；也可利用单调变换的密度公式求出密度后积分.


解 易见，当 $x<1$ 时，$F(x)=0$；当 $x>8$ 时，$F(x)=1$.

对于 $x in [1,8]$，有
$ F(x)=integral_1^x 1/(3 root(3,t^2)) dif t=root(3,x)-1. $
设 $G(y)$ 是随机变量 $Y=F(X)$ 的分布函数. 显然，当 $y<=0$ 时 $G(y)=0$；当 $y>=1$ 时 $G(y)=1$.

对于 $y in (0,1)$，有
$ G(y)&=P{Y<=y}=P{F(X)<=y} \
&=P{root(3,X)-1<=y}=P{X<=(y+1)^3}=F[(y+1)^3]=y. $
于是，$Y=F(X)$ 的分布函数为
$ G(y)=cases(0 & y<=0,y & 0<y<1,1 & y>=1). $


*解法2* 在 $[1,8]$ 上，$F(x)=root(3,x)-1$ 严格递增，反函数为 $h(y)=(1+y)^3$，$0<=y<=1$. 用单调变换公式得
$ g_Y(y)=cases(f(h(y))abs(h'(y))=1 & 0<y<1,0 & #text[其他]). $
积分得到 $G(y)=0$（$y<=0$），$G(y)=y$（$0<y<1$），$G(y)=1$（$y>=1$）. 也可直接写 $P\{F(X)<=y\}=F(F^(-1)(y))=y$.
]

#answer("十二、")[
*分析* 先用全概率公式与独立性求和的分布函数，说明它是连续型变量，再对分布函数求导得到密度.


解 设 $F(y)$ 是 $Y$ 的分布函数，则由全概率公式，知 $U=X+Y$ 的分布函数为
$ G(u)&=P{X+Y<=u} \
&=0.3P{X+Y<=u | X=1}+0.7P{X+Y<=u | X=2} \
&=0.3P{Y<=u-1 | X=1}+0.7P{Y<=u-2 | X=2}. $
由于 $X$ 和 $Y$ 独立，可见
$ G(u)&=0.3P{Y<=u-1}+0.7P{Y<=u-2} \
&=0.3F(u-1)+0.7F(u-2). $
由此，得 $U$ 的概率密度
$ g(u)&=G'(u)=0.3F'(u-1)+0.7F'(u-2) \
&=0.3f(u-1)+0.7f(u-2). $


*注* 推导分布函数这一步同时证明了有限值离散变量与独立连续型变量之和仍为连续型变量；最后求导才给出密度，两个步骤都应说明.
]

