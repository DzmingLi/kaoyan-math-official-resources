#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2007, subject: "一", title: "2007年全国硕士研究生入学统一考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#import "@preview/cetz:0.5.2"
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2007 数学一试卷参考解答

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
选 D.
*解* 当 $x->0$ 时，函数趋于无穷，故 $x=0$ 为铅直渐近线.
当 $x->+infinity$ 时，$y->+infinity$，没有水平渐近线，而
$ lim_(x->+infinity) y/x=lim_(x->+infinity)(1/x^2+(x+ln(1+e^(-x)))/x)=1, $
$ lim_(x->+infinity)(y-x)=lim_(x->+infinity)(1/x+ln(1+e^(-x)))=0, $
所以 $y=x$ 为该方向的斜渐近线.
当 $x->-infinity$ 时，$y->0$，所以 $y=0$ 为水平渐近线. 共三条，选 D.
*常见错误* 只讨论一个无穷方向，遗漏另一方向的渐近线. 水平与斜渐近线不能在同一方向并存，但不同方向应分别考虑.
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

#answer("6.")[
选 B.
*解* 记 $M=(x_M,y_M)$，$N=(x_N,y_N)$，则 $x_M<0<x_N$、$y_N<0<y_M$. 曲线上 $f(x,y)=1$，故
$ integral_Gamma f(x,y)dif x=x_N-x_M>0, $
$ integral_Gamma f(x,y)dif y=y_N-y_M<0, $
$ integral_Gamma f(x,y)dif s=integral_Gamma dif s=l>0. $
另外
$ integral_Gamma f'_x dif x+f'_y dif y=integral_Gamma dif f=f(N)-f(M)=1-1=0. $
因此只有 B 小于零.
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
$sqrt(e)/2$.
*解* 用分部积分法，有
$ integral_1^2 e^(1/x)/x^3 dif x=-integral_1^2 1/x dif(e^(1/x)) \
=-lr(e^(1/x)/x)|_1^2+integral_1^2 e^(1/x)dif(1/x) \
=-sqrt(e)/2+e+lr(e^(1/x))|_1^2=sqrt(e)/2. $

]

#answer("12.")[
$y x^(y-1)f'_1+y^x ln y f'_2$.
*解* 由复合函数的链式法则，
$ (partial z)/(partial x)=(partial f)/(partial u) (partial x^y)/(partial x)+(partial f)/(partial v) (partial y^x)/(partial x) \
=y x^(y-1)f'_1+y^x ln y f'_2. $
*常见错误* 混淆幂函数与指数函数的导数，或把二元复合函数错误地当作一元复合函数求导.

]

#answer("13.")[
$C_1 e^(3x)+C_2 e^x-2e^(2x)$.
*解* 齐次方程的特征方程为 $lambda^2-4lambda+3=0$，特征根为3及1，通解为 $C_1 e^(3x)+C_2 e^x$.
设非齐次方程特解为 $A e^(2x)$，代入得 $A=-2$，故通解为
$ y=C_1 e^(3x)+C_2 e^x-2e^(2x). $
*常见错误* 特解系数计算错误；没有掌握“齐次通解加非齐次特解”的结构.

]

#answer("14.")[
$4sqrt(3)/3$.
*解* 曲面关于 $y O z$ 平面对称，故 $integral.surf_Sigma x dif S=0$. 又关于三个坐标轮换对称，有
$ integral.surf_Sigma |y|dif S=integral.surf_Sigma |z|dif S=integral.surf_Sigma |x|dif S. $
因此
$ integral.surf_Sigma |y|dif S=1/3 integral.surf_Sigma (|x|+|y|+|z|)dif S=1/3 integral.surf_Sigma dif S. $
曲面由八个边长为 $sqrt(2)$ 的等边三角形组成，总面积为
$ 8 dot 1/2 dot (sqrt(2))^2 sin(pi/3)=4sqrt(3), $
故原积分为 $4sqrt(3)/3$.
*常见错误* 对称性运用不细致，或曲面积分计算不熟练，漏掉面积因子.

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
解法1　由
$ cases(f'_x=2x-2x y^2=0,f'_y=4y-2x^2 y=0), $
得 $D$ 内驻点为 $(plus.minus sqrt(2),1)$，$f(plus.minus sqrt(2),1)=2$.

在边界 $L_1:y=0 (-2<=x<=2)$ 上，记 $g(x)=f(x,0)=x^2$，显见在 $L_1$ 上 $f(x,y)$ 的最大值为4，最小值为0.

在边界 $L_2:x^2+y^2=4 (y>=0)$ 上，记
$ h(x)=f(x,sqrt(4-x^2))=x^4-5x^2+8,quad -2<=x<=2, $
由 $h'(x)=4x^3-10x=0$ 得驻点
$ x_1=0,x_2=-sqrt(5/2),x_3=sqrt(5/2), $
$ h(0)=f(0,2)=8,quad h(plus.minus sqrt(5/2))=f(plus.minus sqrt(5/2),sqrt(3/2))=7/4. $
综上，$f(x,y)$ 在 $D$ 上的最大值为8，最小值为0.

解法2　在 $D$ 内与边界 $L_1$ 上同解法1.

在边界 $L_2:x^2+y^2=4 (y>=0)$ 上，构造函数
$ F(x,y,lambda)=x^2+2y^2-x^2 y^2+lambda(x^2+y^2-4), $
令
$ cases(F'_x=2x-2x y^2+2lambda x=0,F'_y=4y-2x^2 y+2lambda y=0,F'_lambda=x^2+y^2-4=0), $
解得
$ cases(x=plus.minus sqrt(5/2),y=sqrt(3/2)),quad cases(x=0,y=2), $
$ f(plus.minus sqrt(5/2),sqrt(3/2))=7/4,quad f(0,2)=8. $
综上，$f(x,y)$ 在 $D$ 上的最大值为8，最小值为0.

*另一种消元法* 内部及直径边界仍按前法. 在半圆边界上，令
$ h(y)=f(plus.minus sqrt(4-y^2),y)=4-3y^2+y^4,quad 0<=y<=2. $
由 $h'(y)=-6y+4y^3=0$，得 $y=0$ 或 $y=sqrt(3/2)$. 相应函数值为4和 $7/4$，另一端点 $h(2)=8$. 与内部及直径边界的值比较，最大值8，最小值0.
*参数法* 在半圆边界令 $x=2cos theta,y=2sin theta$，$0<=theta<=pi$，则
$ h(theta)=4cos^2 theta+8sin^2 theta-16sin^2 theta cos^2 theta \
=4+4sin^2 theta-4sin^2(2theta). $
由 $h'(theta)=4sin(2theta)(1-4cos(2theta))=0$，得 $theta=0,pi/2,pi$ 或 $cos(2theta)=1/4$. 相应点为 $(plus.minus 2,0)$、$(0,2)$、$(plus.minus sqrt(5/2),sqrt(3/2))$，函数值分别为4、8、$7/4$. 比较得同一结论.
*常见错误* 只考虑内部及圆弧边界，遗漏直径边界；未说明对称性就漏掉负横坐标所对应的点，使解答不完整.

]

#answer("18.")[
解　取 $Sigma_1$ 为 $x O y$ 平面上被椭圆 $x^2+y^2/4=1$ 所围部分的下侧，记 $Omega$ 为由 $Sigma$ 和 $Sigma_1$ 围成的空间闭区域. 根据高斯公式，得
$ I_1&=integral.surf_(Sigma+Sigma_1) x z dif y dif z+2z y dif z dif x+3x y dif x dif y \
&=integral.triple_Omega(z+2z+0)dif x dif y dif z \
&=integral_0^1 3z dif z integral.double_(x^2+y^2/4<=1-z)dif x dif y \
&=integral_0^1 6pi z(1-z)dif z=pi. $
又
$ I_2&=integral.double_(Sigma_1)x z dif y dif z+2z y dif z dif x+3x y dif x dif y \
&=-3integral.double_(x^2+y^2/4<=1)x y dif x dif y=0, $
所以 $I=I_1-I_2=pi$.

*解法2* 仍补底面并用高斯公式. 将体积分先对 $z$ 积分，再作 $y=2Y$ 的代换，得
$ integral.triple_Omega 3z dif V=6 integral_(-1)^1 dif x integral_(-sqrt(1-x^2))^(sqrt(1-x^2)) dif Y integral_0^(1-x^2-Y^2)z dif z \
=3 integral.double_(x^2+Y^2<=1)(1-x^2-Y^2)^2 dif x dif Y \
=3 integral_0^(2pi)dif theta integral_0^1(1-r^2)^2 r dif r=pi. $
底面上的积分仍为零，故 $I=pi$.
*解法3* 分别投影. 记
$ D_(y z)=\{(y,z)|-2<=y<=2,0<=z<=1-y^2/4\}, $
$ D_(z x)=\{(z,x)|-1<=x<=1,0<=z<=1-x^2\}. $
两侧对称部分合并，得
$ integral.double_Sigma x z dif y dif z=2 integral_(-2)^2 dif y integral_0^(1-y^2/4) z sqrt(1-y^2/4-z)dif z \
=16/15 integral_0^2(1-y^2/4)^(5/2)dif y \
=32/15 integral_0^(pi/2)cos^6 u dif u=pi/3. $
同理
$ integral.double_Sigma 2z y dif z dif x=8 integral_(-1)^1 dif x integral_0^(1-x^2)z sqrt(1-x^2-z)dif z=2pi/3. $
第三项因奇偶性为零，故 $I=pi/3+2pi/3=pi$.
*解法4* 曲面上侧的正向法向量为 $bold(n)=(2x,y/2,1)$，故直接投影到 $x O y$ 平面得
$ I=integral.double_(x^2+y^2/4<=1)(2x^2(1-x^2-y^2/4)+y^2(1-x^2-y^2/4)+3x y)dif x dif y. $
令 $x=r cos theta,y=2r sin theta$，得
$ I=integral_0^(2pi)dif theta integral_0^1 [2r^2(1-r^2)cos^2 theta \
+4r^2(1-r^2)sin^2 theta+6r^2 cos theta sin theta]2r dif r \
=12pi integral_0^1 r^3(1-r^2)dif r=pi. $
*常见错误* 所补底面的方向选错；直角坐标下直接按不便的次序计算，增加计算量；直接投影时法向量方向弄反，得到 $-pi$.

]

#answer("19.")[
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

#answer("20.")[
解　（Ⅰ）对 $y=sum_(n=0)^infinity a_n x^n$ 求一、二阶导数，得
$ y'=sum_(n=1)^infinity n a_n x^(n-1),quad y''=sum_(n=2)^infinity n(n-1)a_n x^(n-2), $
代入 $y''-2x y'-4y=0$ 并整理得
$ sum_(n=0)^infinity(n+1)(n+2)a_(n+2)x^n-sum_(n=1)^infinity 2n a_n x^n-sum_(n=0)^infinity 4a_n x^n=0. $
于是
$ cases(2a_2-4a_0=0,(n+1)(n+2)a_(n+2)-2(n+2)a_n=0 quad n=1,2,dots), $
从而 $a_(n+2)=2/(n+1)a_n,n=1,2,dots$.

（Ⅱ）因为 $y(0)=a_0=0,y'(0)=a_1=1$，故
$ a_(2n)=0,n=0,1,2,dots, $
$ a_(2n+1)=2/(2n)a_(2n-1)=dots=2^n/(2n dot (2n-2) dots 4 dot 2)a_1=1/(n!),quad n=1,2,dots, $
从而
$ y=sum_(n=0)^infinity a_n x^n=sum_(n=0)^infinity a_(2n+1)x^(2n+1)=sum_(n=0)^infinity x^(2n+1)/(n!) \
=x sum_(n=0)^infinity (x^2)^n/(n!)=x e^(x^2),quad x in (-infinity,+infinity). $

*（Ⅰ）另一证法* 由泰勒级数的唯一性，$a_n=y^(n)(0)/(n!)$. 对微分方程两端求 $n$ 阶导数，得
$ y^(n+2)-2x y^(n+1)-2(n+2)y^(n)=0. $
令 $x=0$，有 $(n+2)!a_(n+2)-2(n+2)n!a_n=0$，即所求递推式.
*（Ⅱ）解法2* 由 $a_0=0$，对 $y/x=sum_(n=1)^infinity a_n x^(n-1)$ 逐项求导，并应用递推式，得
$ (y/x)'=sum_(n=0)^infinity(n+1)a_(n+2)x^n=2sum_(n=0)^infinity a_n x^n=2y. $
令 $u=y/x$，得 $u'-2x u=0$，解得 $u=C e^(x^2)$，所以 $y=C x e^(x^2)$. 由 $y'(0)=1$ 得 $C=1$，故 $y=x e^(x^2)$.
*常见错误* 逐项求导后不能正确转换下标，也不比较同次幂系数就直接写结论；抛开幂级数条件，直接求解原二阶变系数微分方程，增加难度.

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

*分析* 公共解就是联立方程组的解；也可先求齐次方程组的通解，再代入另一方程确定参数.
*常见错误* 写齐次通解时遗漏任意常数，使 $a=1$ 时的公共解不完整，并导致 $a=2$ 时的代入求解错误.

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

