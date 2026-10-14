#import "@preview/cetz:0.5.2" as cetz
#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2013, subject: "三", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2013 数学三试卷参考解答

= 一、选择题


#answer("1.")[
D. 【解】按高阶无穷小定义，
$ frac(x o(x^2),x^3)=frac(o(x^2),x^2)->0,quad frac(o(x)o(x^2),x^3)=frac(o(x),x)frac(o(x^2),x^2)->0, $
$ frac(o(x^2)+o(x^2),x^2)->0. $
所以A、B、C正确. 但 $o(x)+o(x^2)$ 只能保证为 $o(x)$，不保证为 $o(x^2)$，故D错误.
【典型错误】$o(x^2)$ 表示一类高阶无穷小量，不能把每处的记号当作同一个固定量.
]
#answer("2.")[
C. 【解】仅须考察 $0,-1,1$ 三点，在其余点连续. 因 $abs(x)^x=e^(x ln abs(x))$，在三点附近均有 $e^(x ln abs(x))-1 tilde x ln abs(x)$，故
$ lim_(x->0)f(x)=lim_(x->0)frac(1,x+1)=1,quad lim_(x->1)f(x)=1/2. $
这两点为可去间断点. 在 $x=-1$ 附近 $f(x)$ 与 $1/(x+1)$ 等价，是无穷间断点. 所以可去间断点共2个.
]

#answer("3.")[

B. 【解】在 $D_2$ 内 $y-x>=0$，在 $D_4$ 内 $y-x<=0$，且等号不恒成立，故 $I_2>0,I_4<0$.
$D_1,D_3$ 关于 $y=x$ 对称，交换 $x,y$ 后被积函数变号，故 $I_1=I_3=0$.
直接计算也有
$ I_1=1/3 integral_0^(pi/2)(sin theta-cos theta)dif theta=0, $
$ I_2=1/3 integral_(pi/2)^pi(sin theta-cos theta)dif theta=2/3, $
同理 $I_3=0,I_4=-2/3$.
【典型错误】除坐标轴对称性，还应会利用区域关于 $y=x$ 对称以及 $f(x,y)=-f(y,x)$ 的性质.

]

#answer("4.")[
D. 【解】若 $p>1$ 且 $lim n^p a_n$ 有限，则充分大的 $n$ 有 $a_n<C/n^p$，由比较判别法知 $sum a_n$ 收敛.
A缺少 $a_n->0$ 条件，反例 $a_n=1+1/n$，虽递减但交错级数发散.
B把莱布尼茨的充分条件当作必要条件. 反例为
$ frac(1,sqrt(3))-frac(1,sqrt(2))+frac(1,sqrt(5))-frac(1,sqrt(4))+dots. $
将相邻两项分组，绝对值为
$ frac(1,sqrt(2n))-frac(1,sqrt(2n+1))=frac(1,(sqrt(2n)+sqrt(2n+1))sqrt(2n(2n+1)))=O(n^(-3/2)), $
故分组级数绝对收敛，各单项趋于0，原级数收敛，但各项绝对值并不递减.
C也不成立：$sum_(n=2)^infinity 1/(n ln^2 n)$ 收敛，但对任意 $p>1$，$n^(p-1)/ln^2 n->infinity$.
【典型错误】比较判别法和莱布尼茨判别法给出的充分条件不能当作必要条件.
]

#answer("5.")[

B. 【解】写 $A=(alpha_1,dots,alpha_n),C=(gamma_1,dots,gamma_n)$，则 $A B=C,A=C B^(-1)$，说明两组列向量可相互线性表示，故等价.
$B$ 可逆，其行、列向量组均线性无关，但任意的 $A$ 可以不满秩；$r(C)=r(A)$，故不能保证 $C$ 与 $B$ 的向量组等价. 对选项A，反例为
$ mat(1,1;0,0)mat(1,1;1,0)=mat(2,1;0,0). $
$A$ 与 $C$ 的行向量组不能相互线性表示. 【典型错误】不能把右乘矩阵所表示的列向量关系误认为行向量关系.

]

#answer("6.")[

B. 【解】两个实对称矩阵相似，当且仅当特征值相同. $B$ 的特征值为 $2,b,0$，而
$ det(lambda E-A)=lambda[(lambda-2)(lambda-b)-2a^2]. $
故充要条件为 $a=0$，$b$ 任意. 当 $a=2,b=0$ 时，$A$ 的特征值为 $4,-2,0$，并不相似；$a=0,b=2$ 只是充分条件. 【典型错误】须区分充分、必要和充要条件.

]

#answer("7.")[

A. 【解】设 $Phi$ 为标准正态分布函数，则
$ p_1=Phi(2)-Phi(-2)=2Phi(2)-1, $
$ p_2=Phi(1)-Phi(-1)=2Phi(1)-1, $
$ p_3=Phi(-1)-Phi(-7/3). $
易知 $p_1>p_2$，而 $p_2>1/2,p_3<1/2$，故 $p_1>p_2>p_3$. 也可根据正态密度曲线和区间概率的几何意义判断.

]

#answer("8.")[
C. 【解】$X+Y=2$ 分成三种互斥情形，利用独立性，
$ P{X+Y=2}=P{X=1}P{Y=1}+P{X=2}P{Y=0}+P{X=3}P{Y=-1} $
$ =1/4 dot 1/3+1/8 dot 1/3+1/8 dot 1/3=1/6. $
【典型错误】分解事件时不能漏掉一种情形.
]


= 二、填空题

#answer("9.")[
$-2$. 【解】由公共切线得 $f(1)=0,f'(1)=1$，于是
$ lim_(n->infinity)n f(n/(n+2))=lim_(n->infinity)frac(f(n/(n+2))-f(1),n/(n+2)-1)frac(-2n,n+2)=-2f'(1)=-2. $
【典型错误】应核对切线斜率和极限变形中的负号.
]

#answer("10.")[
$2(1-ln 2)$. 【解法1】记 $F=(z+y)^x-x y$，则
$ F_x=(z+y)^x ln(z+y)-y,quad F_z=x(z+y)^(x-1). $
所以 $z_x=-F_x/F_z$，代入 $x=1,y=2,z(1,2)=0$，得 $z_x(1,2)=2(1-ln 2)$.
【解法2】直接对方程求偏导，
$ (z+y)^x[ln(z+y)+frac(x z_x,z+y)]=y, $
再代入对应点得相同结果. 【典型错误】应先由方程算出该点的 $z$ 值，不能把它留在答案中.
]

#answer("11.")[

$ln 2$. 【解】分部积分得
$ integral_1^A frac(ln x,(1+x)^2)dif x=-frac(ln A,1+A)+integral_1^A(1/x-1/(1+x))dif x $
$ =-frac(ln A,1+A)+ln frac(A,A+1)+ln 2. $
令 $A->+infinity$，得反常积分为 $ln 2$. 【典型错误】被积函数非负，结果不应为 $-ln 2$；应掌握反常积分的极限定义和分部积分公式.

]

#answer("12.")[
$(C_1+C_2 x)e^(x/2)$. 【解】特征方程为 $r^2-r+1/4=0$，有二重根 $r=1/2$，故通解如上.
【典型错误】重根对应的第二个解须有因子 $x$，且二阶方程的通解应有两个独立的任意常数.
]

#answer("13.")[

$-1$. 【解】由题设有 $A^*=-A^T$，故
$ det(A^*)=(-1)^3 det(A^T)=-det A. $
又 $det(A^*)=(det A)^2$，所以 $(det A)^2+det A=0$. 按行展开，
$ det A=sum_(j=1)^3 a_(i j)A_(i j)=-sum_(j=1)^3 a_(i j)^2. $
三行相加得 $3det A=-sum_(i,j=1)^3 a_(i j)^2$；$A$ 为非零矩阵，故 $det A!=0$，所以 $det A=-1$.
【典型错误】不能忽略非零矩阵条件，误填0或同时保留0和 $-1$.

]

#answer("14.")[
$2e^2$. 【解法1】由期望公式并配方，
$ E(X e^(2X))=frac(e^2,sqrt(2pi))integral_(-infinity)^infinity x e^(-(x-2)^2/2)dif x. $
令 $t=x-2$，得
$ E(X e^(2X))=frac(e^2,sqrt(2pi))integral_(-infinity)^infinity t e^(-t^2/2)dif t+frac(2e^2,sqrt(2pi))integral_(-infinity)^infinity e^(-t^2/2)dif t=2e^2. $
【解法2】配方后，$integral_(-infinity)^infinity x e^(-(x-2)^2/2)/sqrt(2pi)dif x$ 正是 $N(2,1)$ 的数学期望2，所以结果为 $2e^2$.
【典型错误】须利用正态密度的积分为1或正态变量的期望，不能试图直接求高斯密度的初等原函数.
]

= 三、解答题

#answer("15.")[

$ &lim_(x->0)(1-cos x cos 2x cos 3x)/(a x^n) \
&=lim_(x->0)(sin x cos 2x cos 3x)/(a n x^(n-1)) \
&+lim_(x->0)(2cos x sin 2x cos 3x)/(a n x^(n-1)) \
&+lim_(x->0)(3cos x cos 2x sin 3x)/(a n x^(n-1)). $
由于当 $n=2$ 时，
$ lim_(x->0)(sin x cos 2x cos 3x)/(a n x^(n-1))=1/(2a), $
$ lim_(x->0)(2cos x sin 2x cos 3x)/(a n x^(n-1))=4/(2a), $
$ lim_(x->0)(3cos x cos 2x sin 3x)/(a n x^(n-1))=9/(2a), $
所以 $lim_(x->0)(1-cos x cos 2x cos 3x)/(a x^n)=7/a$.

由题设知 $7/a=1$，故 $a=7$. 当 $n!=2$ 时，显然不合题意，所以 $a=7,n=2$.

【解法2】分子拆为
$ (1-cos x)+cos x(1-cos 2x)+cos x cos 2x(1-cos 3x). $
当 $n=2$ 时，各项除以 $a x^2$ 的极限依次为 $1/(2a),2/a,9/(2a)$，和为 $7/a$，故 $a=7,n=2$.
【解法3】由 $cos(j x)=1-j^2 x^2/2+o(x^3)$，$j=1,2,3$，得
$ 1-cos x cos 2x cos 3x=7x^2+o(x^3). $
故与 $a x^n$ 等价当且仅当 $n=2,a=7$.
【典型错误】不能在分子中只对部分因子取极限后继续使用洛必达法则. 应适时拆项，避免反复求导使算式过于复杂；泰勒展开也不必取过高阶.

]

#answer("16.")[

$ V_x=pi integral_0^a x^(2/3)dif x=(3pi a^(5/3))/5, $
$ V_y&=pi a^(7/3)-pi integral_0^(a^(1/3))y^6 dif y \
&=pi a^(7/3)-(pi a^(7/3))/7=(6pi a^(7/3))/7. $
由 $V_y=10V_x$，即 $(6pi a^(7/3))/7=10 dot (3pi a^(5/3))/5$，解得 $a=7sqrt(7)$.

绕 $y$ 轴的体积也可用柱壳法，$V_y=2pi integral_0^a x dot x^(1/3)dif x=6pi a^(7/3)/7$.
【解法2】写成二重积分，
$ V_x=integral_0^a dif x integral_0^(x^(1/3))2pi y dif y=3pi a^(5/3)/5, $
$ V_y=pi a^(7/3)-integral_0^(a^(1/3))dif y integral_0^(y^3)2pi x dif x=6pi a^(7/3)/7. $
再由 $V_y=10V_x$ 得 $a=7sqrt(7)$. 【典型错误】除积分计算外，还应核对体积关系代入后方程的求解.

]

#answer("17.")[

$ integral.double_D x^2 dif x dif y&=integral_0^2 dif x integral_(x/3)^(3x)x^2 dif y+integral_2^6 dif x integral_(x/3)^(8-x)x^2 dif y \
&=8/3 integral_0^2 x^3 dif x+integral_2^6(8x^2-4/3 x^3)dif x \
&=2/3 x^4|_0^2+(8/3 x^3-1/3 x^4)|_2^6=416/3. $

【解法2】在极坐标中，
$ I=integral_(arctan(1/3))^(arctan 3)dif theta integral_0^(8/(cos theta+sin theta))r^3 cos^2 theta dif r $
$ =8^4/4 integral_(arctan(1/3))^(arctan 3)frac(cos^2 theta,(cos theta+sin theta)^4)dif theta $
$ =8^4/4 integral_(arctan(1/3))^(arctan 3)frac(1,(1+tan theta)^4)dif(tan theta) $
$ =-8^4/12[frac(1,(1+tan theta)^3)]_(arctan(1/3))^(arctan 3)=416/3. $
【典型错误】直角坐标法宜先对 $y$ 积分，以减少计算；极坐标法还应能把剩余角度积分通过 $tan theta$ 换元计算完.


#align(center,cetz.canvas({
 import cetz.draw: *
 line((0,0),(1,3),(3,1),close:true,fill:rgb("eeeeee"))
 line((-.15,0),(3.65,0),mark:(end:">"));line((0,-.15),(0,3.85),mark:(end:">"))
 line((0,0),(1.2,3.6));line((0,0),(3.5,3.5/3));line((.6,3.4),(3.4,.6))
 line((1,0),(1,3),stroke:(dash:"dashed"));line((3,0),(3,1),stroke:(dash:"dashed"))
 content((.65,1.3),$D_1$);content((1.7,1.45),$D_2$);content((1.25,3.55),$y=3x$,anchor:"west");content((2.55,1.95),$x+y=8$);content((3.4,1.35),$x=3y$)
 content((1.2,3),$(2,6)$);content((3.2,1),$(6,2)$);content((1,-.1),[2],anchor:"north");content((3,-.1),[6],anchor:"north")
 content((-.1,-.1),$O$);content((3.65,0),$x$,anchor:"north");content((0,3.85),$y$,anchor:"east")
}))


]

#answer("18.")[
（Ⅰ）成本函数 $C(Q)=60000+20Q$，收益函数 $R(Q)=p Q=60Q-Q^2/1000$，利润函数
$ L(Q)=R(Q)-C(Q)=-Q^2/1000+40Q-60000, $
故该商品的边际利润 $L'(Q)=-Q/500+40$.

（Ⅱ）当 $p=50$ 时，销量 $Q=10000$，$L'(10000)=20$. 其经济意义为：销售第10 001件商品时所得的利润为20元.

（Ⅲ）令 $L'(Q)=-Q/500+40=0$，得 $Q=20000$，且 $L''(20000)<0$，故当 $Q=20000$ 件时利润最大，此时 $p=40$（元）.

【典型错误】边际利润是利润对销量的导数，不能对定价求导. 当销量为10000件时，20元表示再销售1件所增加的利润，并非每一件商品的利润均为20元.
]

#answer("19.")[
（Ⅰ）因为 $lim_(x->+infinity)f(x)=2$，所以存在 $x_0>0$，使得 $f(x_0)>1$. 因为 $f(x)$ 在 $[0,+infinity)$ 上可导，所以 $f(x)$ 在 $[0,+infinity)$ 上连续. 又 $f(0)=0$，根据连续函数的介值定理，存在 $a in (0,x_0)$，使得 $f(a)=1$.

（Ⅱ）因为函数 $f(x)$ 在区间 $[0,a]$ 上可导，根据微分中值定理，存在 $xi in (0,a)$，使得 $f(a)-f(0)=a f'(xi)$. 又因为 $f(0)=0,f(a)=1$，所以 $f'(xi)=1/a$.

（Ⅱ）【证法2】令辅助函数 $F(x)=f(x)-x/a$. 它在 $[0,a]$ 上连续，在 $(0,a)$ 内可导，且 $F(0)=F(a)=0$. 由罗尔定理，存在 $xi in (0,a)$ 使 $F'(xi)=0$，即 $f'(xi)=1/a$.
【典型错误】第一问须先由极限说明存在 $x_0>0$ 使 $f(x_0)>1$，才能使用介值定理. 第二问应利用第一问确定的同一个 $a$，不能将两问割裂.
]

#answer("20.")[

令 $C=mat(x_1,x_2;x_3,x_4)$，则 $A C-C A=B$ 等价于方程组
$ cases(-x_2+a x_3=0,-a x_1+x_2+a x_4=1,x_1-x_3-x_4=1,x_2-a x_3=b). $
其增广矩阵经初等行变换化为
$ &mat(0,-1,a,0,0;-a,1,0,a,1;1,0,-1,-1,1;0,1,-a,0,b,augment: #4) \
&arrow.r mat(1,0,-1,-1,1;0,1,-a,0,0;0,0,0,0,a+1;0,0,0,0,b,augment: #4). $
当 $a!=-1$ 或 $b!=0$ 时，方程组无解. 当 $a=-1,b=0$ 时，方程组的通解为
$ mat(x_1;x_2;x_3;x_4)=mat(1;0;0;0)+k_1 mat(1;-1;1;0)+k_2 mat(1;0;0;1). $
故当且仅当 $a=-1,b=0$ 时，存在矩阵 $C$，且所有矩阵为
$ C=mat(1+k_1+k_2,-k_1;k_1,k_2), $
其中 $k_1,k_2$ 为任意常数.

【典型错误】矩阵乘法计算错误会直接导致错误的方程组；还应核对增广矩阵的行变换和基础解系.

]

#answer("21.")[

（Ⅰ）记 $x=(x_1,x_2,x_3)^T$，则
$ f&=2(x^T alpha)(alpha^T x)+(x^T beta)(beta^T x) \
&=2x^T alpha alpha^T x+x^T beta beta^T x \
&=x^T(2alpha alpha^T+beta beta^T)x. $
由于 $2alpha alpha^T+beta beta^T$ 为对称矩阵，故二次型 $f$ 的矩阵为 $A=2alpha alpha^T+beta beta^T$.

（Ⅱ）由 $alpha^T alpha=beta^T beta=1,alpha^T beta=0$ 得
$ A alpha=2alpha,quad A beta=beta. $
所以 $A$ 的两个特征值为2和1. 又
$ "r"(A)<="r"(2alpha alpha^T)+"r"(beta beta^T)<=2, $
故 $A$ 的另一个特征值为0. 因此二次型 $f$ 的标准形为
$ 2y_1^2+y_2^2. $

（Ⅰ）【证法2】展开二次型，得
$ f=2x^T mat(a_1^2,a_1 a_2,a_1 a_3;a_1 a_2,a_2^2,a_2 a_3;a_1 a_3,a_2 a_3,a_3^2)x $
$ +x^T mat(b_1^2,b_1 b_2,b_1 b_3;b_1 b_2,b_2^2,b_2 b_3;b_1 b_3,b_2 b_3,b_3^2)x. $
这两个矩阵分别为 $alpha alpha^T,beta beta^T$，所以 $f=x^T(2alpha alpha^T+beta beta^T)x$，得到所需矩阵.
（Ⅱ）【证法2】取单位向量 $gamma$ 与 $alpha,beta$ 均正交，令 $Q=(alpha,beta,gamma)$，则 $Q$ 为正交矩阵. 在变换 $x=Q y$ 下，
$ f=y^T Q^T A Q y=y^T Q^T(2alpha,beta,0)y $
$ =y^T mat(2,0,0;0,1,0;0,0,0)y=2y_1^2+y_2^2. $
【典型错误】证明须明确写出最终矩阵；已找到特征值2、1后，还须证明第三个特征值为0，不能直接写出标准形.

]

#answer("22.")[
（Ⅰ）由题设得 $(X,Y)$ 的概率密度为
$ f(x,y)=f_X(x)f_(Y bar X)(y bar x)=cases((9y^2)/x & 0<y<x quad 0<x<1,0 & "其他"). $

（Ⅱ）$Y$ 的边缘概率密度为
$ f_Y(y)=cases(integral_y^1(9y^2)/x dif x & 0<y<1,0 & "其他") \
=cases(-9y^2 ln y & 0<y<1,0 & "其他"). $

（Ⅲ）$P{X>2Y}=integral.double_(x>2y)f(x,y)dif x dif y=integral_0^1 dif x integral_0^(x/2)(9y^2)/x dif y=1/8$.

【说明】在 $0<x<1$ 内，联合密度的积分为
$ integral_0^1 dif x integral_0^x frac(9y^2,x)dif y=integral_0^1 3x^2 dif x=1, $
故其余区域可取密度为0.
【典型错误】联合密度的非零区域须写准确；求边缘密度时，应由 $0<y<x<1$ 得积分下限 $y$、上限1. 求事件概率时，还须将该区域与 $x>2y$ 相交. 先求 $X-2Y$ 的分布也可行，但计算量较大.
]

#answer("23.")[

（Ⅰ）
$ E X &= integral_0^(+infinity)x dot theta^2/x^3 e^(-theta/x)dif x \
&= integral_0^(+infinity)theta^2/x^2 e^(-theta/x)dif x \
&= theta, $
所以 $theta$ 的矩估计量为 $hat(theta)=overline(X)$，其中 $overline(X)=1/n sum_(i=1)^n X_i$.

（Ⅱ）设 $x_1,x_2,dots,x_n$ 为样本观测值，似然函数为
$ L(theta)&=product_(i=1)^n f(x_i;theta) \
=cases(theta^(2n)/(x_1 x_2 dots x_n)^3 e^(-theta sum_(i=1)^n 1/x_i) & x_1,x_2,dots,x_n>0,0 & "其他"). $
当 $x_1,x_2,dots,x_n>0$ 时，
$ ln L(theta)=2n ln theta-theta sum_(i=1)^n 1/x_i-3sum_(i=1)^n ln x_i. $
令
$ (dif[ln L(theta)])/(dif theta)=(2n)/theta-sum_(i=1)^n 1/x_i=0, $
得 $theta$ 的最大似然估计值为 $hat(theta)=(2n)/(sum_(i=1)^n 1/x_i)$，所以 $theta$ 的最大似然估计量为
$ hat(theta)=(2n)/(sum_(i=1)^n 1/X_i). $

【典型错误】应准确计算总体期望；似然函数是各样本密度的乘积，不能将全部样本值合并为一个变量的幂. 再核对对数和关于参数的导数.

]

