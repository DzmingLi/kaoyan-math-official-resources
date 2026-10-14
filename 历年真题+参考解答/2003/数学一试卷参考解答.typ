#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2003, subject: "一", title: "2003年全国硕士研究生入学统一考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#import "@preview/cetz:0.5.2"
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2003 数学一试卷参考解答

= 一、填空题

#answer("1（1）")[
*分析* 可用等价无穷小替换与重要极限，或用洛必达法则求极限.
*解* 原式为 $lim_(x->0)e^(ln(cos x)/ln(1+x^2))$，而
$ lim_(x->0)frac(ln(cos x),ln(1+x^2))=lim_(x->0)frac(ln(1+cos x-1),x^2)=lim_(x->0)frac(cos x-1,x^2)=-frac(1,2). $
所以原式为 $e^(-1/2)=1/sqrt(e)$.
也可用洛必达法则计算指数的极限，或把原式写成
$ lim_(x->0)[1+(cos x-1)]^(frac(1,cos x-1)dot frac(cos x-1,ln(1+x^2))). $
典型错误是填成 $-1/2$，忘记将所求指数极限代回指数函数.
]

#answer("1（2）")[
*分析* 用曲面的法向量、向量平行及平面点法式，关键是求出切点坐标.
*解* 设切点为 $P_0(x_0,y_0,z_0)$，曲面在此点的法向量为 $(-2x_0,-2y_0,1)$，与已知平面的法向量 $(2,4,-1)$ 平行，所以
$ frac(-2x_0,2)=frac(-2y_0,4)=frac(1,-1). $
得 $x_0=1,y_0=2,z_0=5$，故切平面为
$ 2(x-1)+4(y-2)-(z-5)=0, $
即 $2x+4y-z=5$.
典型错误是把两个平行法向量当作相等，由此误得切点 $(-1,-2,5)$. 平行要求各分量成比例，不要求两向量相等. 只写含未确定常数或切点的平面方程，也没有完成求解.
]

#answer("1（3）")[
*分析* 先确定周期及奇偶性，再应用傅里叶系数公式. 本题周期为 $2pi$，函数 $x^2$ 为偶函数.
*解* 取 $n=2$，分部积分得
$ a_2&=frac(2,pi)integral_0^pi x^2 cos 2x dif x \
&=frac(1,pi)(lr([x^2 sin 2x])_0^pi-integral_0^pi 2x sin 2x dif x) \
&=frac(1,pi)(lr([x cos 2x])_0^pi-integral_0^pi cos 2x dif x)=1. $
题目只求 $a_2$，不能只写出一般系数 $4(-1)^n/n^2$，也不能只写积分公式而不计算.
]

#answer("1（4）")[
*分析* 本题考查坐标变换、过渡矩阵的定义及矩阵运算.
*解* 设过渡矩阵为 $P$，则 $(alpha_1,alpha_2)P=(beta_1,beta_2)$，所以
$ P=(alpha_1,alpha_2)^(-1)(beta_1,beta_2)=mat(1,1;0,-1)^(-1)mat(1,1;1,2)=mat(1,1;0,-1)mat(1,1;1,2)=mat(2,3;-1,-2). $
典型错误是将定义写成 $P(alpha_1,alpha_2)=(beta_1,beta_2)$，或只求基矩阵的逆而遗漏与另一基矩阵相乘.
]

#answer("1（5）")[
*分析* 求概率时，实际积分区域是所求事件区域与密度非零区域的交集.
*解*
#import "@preview/cetz:0.5.2"
#cetz.canvas({
 import cetz.draw: *
 line((0,0),(.5,.5),(0,1),close:true,fill:rgb("eeeeee"))
 line((-.25,0),(1.4,0),mark:(end:">"));line((0,-.2),(0,1.4),mark:(end:">"))
 content((1.5,0),$x$);content((0,1.5),$y$);content((-.12,-.12),$O$);content((-.12,1),$1$)
})
$ P{X+Y<=1}=integral.double_(x+y<=1)f(x,y)dif x dif y=integral_0^(1/2)dif x integral_x^(1-x)6x dif y=integral_0^(1/2)6x(1-2x)dif x=frac(1,4). $
若直接在整个 $x+y<=1$ 区域内积分 $6x$，就忽略了密度的分段条件. 积分区域必须同时满足 $0<=x<=y<=1$.
]

#answer("1（6）")[
*分析* 本题考查分位数及置信区间. 总体方差已知，使用正态总体均值的双侧置信区间.
*解* 置信度0.95对应 $alpha=0.05$，区间为
$ (overline(X)-frac(sigma,sqrt(n))z_(alpha/2),overline(X)+frac(sigma,sqrt(n))z_(alpha/2)). $
取 $overline(X)=40,sigma=1,n=16,z_(alpha/2)=1.96$，得 $(39.51,40.49)$.
]

= 二、选择题

#answer("2（1）")[
*分析* 由导数正负判断函数增减和极值，也要注意函数连续而导数不存在的点.
*解* 把左侧两个导数零点从左到右记为 $A,B$，右侧零点记为 $C$. 在 $A$ 左右，$f'$ 由正变负，所以 $A$ 为极大值点；$B,C$ 左右均由负变正，所以是极小值点. 在原点左侧 $f'>0$，右侧 $f'<0$，且 $f$ 在原点连续，故原点也是极大值点，无论此点是否可导. 因而有两个极小值点和两个极大值点，选 C.
典型错误是漏掉原点，或把它误当作函数间断点，从而选 B.
]

#answer("2（2）")[
*分析* 用数列极限的保号性和运算法则判断，其他命题可构造反例.
*解* 令 $d_n=b_n c_n$. 因 $b_n->1>0$，充分大的 $n$ 有 $b_n>0$. 若 $d_n$ 有有限极限，则 $c_n=d_n/b_n$ 也有有限极限，与条件矛盾，故选 D.
A的反例可取 $a_n=2/n,b_n=(n-1)/n$，则 $a_1=2>b_1=0$. B的反例取 $b_n=(n+1)/n,c_n=n$，则 $b_1=2>c_1=1$. C的反例取 $a_n=1/n,c_n=n$，其乘积恒为1.
]

#answer("2（3）")[
*分析* 将极限条件转化为无穷小表达式，再用二元函数极值定义判断.
*解* 由条件有
$ f(x,y)=x y+(1+alpha(x,y))(x^2+y^2)^2,quad alpha(x,y)->0. $
连续性给出 $f(0,0)=0$. 沿 $y=x$ 趋近原点时，$f(x,x)=x^2+4(1+alpha(x,x))x^4>0$；沿 $y=-x$ 时，$f(x,-x)=-x^2+4(1+alpha(x,-x))x^4<0$，均在充分小的非零 $x$ 成立. 因而原点的任意小邻域内同时有比0大和比0小的函数值，不是极值点，选 A.
本题要求把一元函数极限与无穷小的关系推广到二元函数中应用.
]

#answer("2（4）")[
*分析* 线性表示给出两向量组秩的大小关系，而向量组的秩不超过其向量个数.
*解* 记两组的秩为 $r(I),r(II)$，由I可由II线性表示，知 $r(I)<=r(II)<=s$. 若 $r>s$，则 $r(I)<r$，I必线性相关，选 D.
其余选项可用反例排除：从线性无关的II中删去若干向量得到I，此时 $r<s$ 且两组都无关，A、C不成立. 在无关组II中添上 $2beta_1,3beta_1$ 等得到I，仍可由II表示，且 $r>s$，但II无关，B不成立.
]

#answer("2（5）")[
*分析* $n$ 个未知量的齐次方程组，其解空间维数等于 $n$ 减去系数矩阵的秩.
*解* 若 $A x=0$ 的解均为 $B x=0$ 的解，则前者解空间维数不超过后者，即 $n-r(A)<=n-r(B)$，所以 $r(A)>=r(B)$，①正确.
仅由两个解空间维数的大小关系不能推出包含关系，②不成立. 同解则解空间相同，维数相同，所以③正确；秩相同只保证维数相同，不能保证同解，④不成立. 故选 B.
也可先证明①、否定②，排除A、C. 若D正确则③正确，于是B也正确，与单项选择题只有一个正确选项矛盾，因此可直接选B.
]

#answer("2（6）")[
*分析* 利用 $t$、卡方和 $F$ 分布的定义.
*解* 设 $W tilde N(0,1),Z tilde chi^2(n)$，二者独立，则 $X=W/sqrt(Z/n)tilde t(n)$，且 $W^2 tilde chi^2(1)$. 因而
$ Y=frac(1,X^2)=frac(Z/n,W^2/1)tilde F(n,1). $
选 C.
]

= 解答题

#answer("三、")[
*分析* 先求过原点的切线方程，再分别计算平面面积与绕指定直线旋转的体积.


*解* （1）设切点的横坐标为 $x_0$，则曲线 $y=ln x$ 在点 $(x_0,ln x_0)$ 处的切线方程是 $y=ln x_0+1/x_0 (x-x_0)$.

由该切线过原点知 $ln x_0-1=0$，从而 $x_0=e$，所以该切线的方程为 $y=1/e x$.

平面图形 $D$ 的面积
$ A=integral_0^1 (e^y-e y) dif y=1/2 e-1. $
（2）切线 $y=1/e x$ 与 $x$ 轴及直线 $x=e$ 所围成的三角形绕直线 $x=e$ 旋转所得的圆锥体积为 $V_1=1/3 pi e^2$.

曲线 $y=ln x$ 与 $x$ 轴及直线 $x=e$ 所围成的图形绕直线 $x=e$ 旋转所得的旋转体体积为
$ V_2=integral_0^1 pi (e-e^y)^2 dif y. $
因此所求旋转体的体积为
$ V=V_1-V_2=1/3 pi e^2-integral_0^1 pi (e-e^y)^2 dif y=pi/6 (5e^2-12e+3). $


*典型错误* 面积积分应取右侧曲线减左侧直线. 旋转体用垫片法时，是外半径平方减内半径平方，而不是两半径之差的平方. 正确式为
$ V=pi integral_0^1[(e-e y)^2-(e-e^y)^2]dif y. $
应理解体积公式各部分的几何意义，不能只记公式.
]

#answer("四、")[
*分析* 展开复杂函数通常利用简单函数的麦克劳林级数，配合线性运算、逐项求导与积分. 数项级数求和可把它看成某个函数项级数在指定点的值，先求和函数，再代入.


*解* 因为
$ f'(x)=-2/(1+4x^2)=-2sum_(n=0)^infinity (-1)^n 4^n x^(2n), quad x in (-1/2,1/2). $
又 $f(0)=pi/4$，所以
$ f(x)&=f(0)+integral_0^x f'(t) dif t \
&=pi/4-2integral_0^x [sum_(n=0)^infinity (-1)^n 4^n t^(2n)] dif t \
&=pi/4-2sum_(n=0)^infinity ((-1)^n 4^n)/(2n+1)x^(2n+1), quad x in (-1/2,1/2). $
因为级数 $sum_(n=0)^infinity (-1)^n/(2n+1)$ 收敛，函数 $f(x)$ 在 $x=1/2$ 处连续，所以
$ f(x)=pi/4-2sum_(n=0)^infinity ((-1)^n 4^n)/(2n+1)x^(2n+1), quad x in (-1/2,1/2]. $
令 $x=1/2$，得
$ f(1/2)=pi/4-2sum_(n=0)^infinity [((-1)^n 4^n)/(2n+1)dot 1/2^(2n+1)], $
再由 $f(1/2)=0$，得 $sum_(n=0)^infinity (-1)^n/(2n+1)=pi/4-f(1/2)=pi/4$.


*另一求和方法* 考虑
$ S(x)=sum_(n=0)^infinity frac((-1)^n x^(2n+1),2n+1),quad x in [-1,1]. $
在 $(-1,1)$ 内，$S'(x)=sum_(n=0)^infinity(-1)^n x^(2n)=1/(1+x^2)$，且 $S(0)=0$. 所以 $S(x)=integral_0^x 1/(1+t^2)dif t=arctan x$，端点由连续性延拓，故所求和为 $S(1)=pi/4$.

*典型错误* 直接展开复杂函数却没有掌握间接展开思路；把 $tan f(x)$ 的展开误认为 $f(x)$ 的展开；不讨论收敛区间和端点；由导数积分时遗漏 $f(0)$ 或积分常数. 求导、收敛区间及初值三点都应明确.
]

#answer("五、")[
*分析* 本题用格林公式、二重积分的轮换对称性和积分不等式性质.


*证法1* （1）
$ #text[左边]&=integral_0^pi pi e^(sin y) dif y-integral_pi^0 pi e^(-sin x) dif x=pi integral_0^pi (e^(sin x)+e^(-sin x)) dif x, \
#text[右边]&=integral_0^pi pi e^(-sin y) dif y-integral_pi^0 pi e^(sin x) dif x=pi integral_0^pi (e^(sin x)+e^(-sin x)) dif x, $
所以
$ integral.cont_L x e^(sin y) dif y-y e^(-sin x) dif x=integral.cont_L x e^(-sin y) dif y-y e^(sin x) dif x. $
（2）由于 $e^(sin x)+e^(-sin x)>=2$，故由（1）得
$ integral.cont_L x e^(sin y) dif y-y e^(-sin x) dif x=pi integral_0^pi (e^(sin x)+e^(-sin x)) dif x>=2pi^2. $
*证法2* （1）根据格林公式，得
$ integral.cont_L x e^(sin y) dif y-y e^(-sin x) dif x=integral.double_D (e^(sin y)+e^(-sin x)) dif sigma, \
integral.cont_L x e^(-sin y) dif y-y e^(sin x) dif x=integral.double_D (e^(-sin y)+e^(sin x)) dif sigma. $
因为 $D$ 关于 $y=x$ 对称，所以
$ integral.double_D (e^(sin y)+e^(-sin x)) dif sigma=integral.double_D (e^(-sin y)+e^(sin x)) dif sigma, $
故
$ integral.cont_L x e^(sin y) dif y-y e^(-sin x) dif x=integral.cont_L x e^(-sin y) dif y-y e^(sin x) dif x. $
（2）由（1）知
$ integral.cont_L x e^(sin y) dif y-y e^(-sin x) dif x \
=integral.double_D (e^(sin y)+e^(-sin x)) dif sigma \
=integral.double_D (e^(sin x)+e^(-sin x)) dif sigma>=integral.double_D 2dif sigma=2pi^2. $


*典型错误* 把积分的和误写成积分的积；未先利用轮换对称性，就对 $e^(sin y)+e^(-sin x)$ 错用算术—几何平均不等式；把积分变量改名后的积分相等误当作两个含不同变量的被积函数逐点相等. 定积分的值与积分变量名称无关，而轮换对称性还要求区域在交换变量后不变.
]

#answer("六、")[
*分析* 用定积分计算变力所做的功，再求等比和的极限. 第二问的关键是求出第 $n$ 次击打后深度的一般表达式.


*解* （1）设第 $n$ 次击打后，桩被打进地下 $x_n$，第 $n$ 次击打时，汽锤所作的功为 $W_n (n=1,2,3,dots)$. 由题设，当桩被打进地下的深度为 $x$ 时，土层对桩的阻力的大小为 $k x$，所以
$ W_1=integral_0^(x_1) k x dif x=k/2 x_1^2=k/2 a^2, \
W_2=integral_(x_1)^(x_2) k x dif x=k/2 (x_2^2-x_1^2)=k/2 (x_2^2-a^2). $
由 $W_2=r W_1$ 可得 $x_2^2-a^2=r a^2$，即 $x_2^2=(1+r)a^2$.
$ W_3=integral_(x_2)^(x_3) k x dif x=k/2 (x_3^2-x_2^2)=k/2 [x_3^2-(1+r)a^2]. $
由 $W_3=r W_2=r^2 W_1$ 可得 $x_3^2-(1+r)a^2=r^2 a^2$，从而 $x_3=sqrt(1+r+r^2)a$，即汽锤击打3次后，可将桩打进地下 $sqrt(1+r+r^2)a$ m.

（2）由归纳法，设 $x_n=sqrt(1+r+dots+r^(n-1))a$，则
$ W_(n+1)&=integral_(x_n)^(x_(n+1)) k x dif x=k/2 (x_(n+1)^2-x_n^2) \
&=k/2 [x_(n+1)^2-(1+r+dots+r^(n-1))a^2]. $
由于 $W_(n+1)=r W_n=r^2 W_(n-1)=dots=r^n W_1$，故得
$ x_(n+1)^2-(1+r+dots+r^(n-1))a^2=r^n a^2, $
从而 $x_(n+1)=sqrt(1+r+dots+r^n)a=sqrt((1-r^(n+1))/(1-r))a$.

于是 $lim_(n->infinity) x_(n+1)=sqrt(1/(1-r))a$，即若不限击打次数，汽锤至多能将桩打进地下 $sqrt(1/(1-r))a$ m.


*典型错误* 将阻力 $k x$ 当恒力，写成功为 $k x_n^2$；或把被积函数误写成 $k x^2$. 二者都没有正确使用微元法. 每次做功应为 $integral_(x_(n-1))^(x_n)k x dif x$.
]

#answer("七、")[
*分析* 先利用反函数求导法进行变量变换，再求解二阶常系数非齐次线性微分方程. 两部分结合考查基本运算与综合应用能力.


*解* （1）由反函数导数公式知 $(dif x)/(dif y)=1/y'$，即 $y'(dif x)/(dif y)=1$.

上式两端关于 $x$ 求导，得
$ y''(dif x)/(dif y)+(dif^2 x)/(dif y^2)(y')^2=0, $
所以 $(dif^2 x)/(dif y^2)=-(((dif x)/(dif y))y'')/(y')^2=-y''/(y')^3$.

代入原微分方程得 $y''-y=sin x$.（\*）

（2）方程（\*）所对应的齐次方程 $y''-y=0$ 的通解为 $Y=C_1 e^x+C_2 e^(-x)$.

设方程（\*）的特解为 $y^*=A cos x+B sin x$，代入方程（\*）求得 $A=0,B=-1/2$，故 $y^*=-1/2 sin x$，从而 $y''-y=sin x$ 的通解是
$ y(x)=C_1 e^x+C_2 e^(-x)-1/2 sin x. $
由 $y(0)=0,y'(0)=3/2$，得 $C_1=1,C_2=-1$，故所初值问题的解为
$ y(x)=e^x-e^(-x)-1/2 sin x. $


*典型错误* 反函数二阶导数的正确式为 $frac(dif^2 x,dif y^2)=-y''/(y')^3$，不能漏负号或把分母幂次写成2；一阶导数为 $1/y'$，也不能多出负号. 其余错误包括特征根和特定系数的计算错误.
]

#answer("八、")[
*分析* 球坐标将三重积分化为定积分，极坐标将二重积分化为定积分，再利用偶函数的对称区间积分性质. 化简后，讨论变上限积分函数的单调性与不等式.


（1）*解* 因为
$ F(t)=(integral_0^(2pi) dif theta integral_0^pi dif phi integral_0^t f(r^2)r^2 sin phi dif r)/(integral_0^(2pi) dif theta integral_0^t f(r^2)r dif r)=(2integral_0^t f(r^2)r^2 dif r)/(integral_0^t f(r^2)r dif r), \
F'(t)=2(t f(t^2)integral_0^t f(r^2)r(t-r) dif r)/([integral_0^t f(r^2)r dif r]^2), $
所以在 $(0,+infinity)$ 上 $F'(t)>0$，故 $F(t)$ 在 $(0,+infinity)$ 内单调增加.

（2）*证* 因为 $G(t)=(pi integral_0^t f(r^2)r dif r)/(integral_0^t f(r^2) dif r)$，要证明 $t>0$ 时 $F(t)>2/pi G(t)$，只需证明 $t>0$ 时，$F(t)-2/pi G(t)>0$，即
$ integral_0^t f(r^2)r^2 dif r integral_0^t f(r^2) dif r-[integral_0^t f(r^2)r dif r]^2>0. $
令
$ g(t)=integral_0^t f(r^2)r^2 dif r integral_0^t f(r^2) dif r-[integral_0^t f(r^2)r dif r]^2, $
则 $g'(t)=f(t^2)integral_0^t f(r^2)(t-r)^2 dif r>0$，故 $g(t)$ 在 $(0,+infinity)$ 内单调增加.

因为 $g(t)$ 在 $t=0$ 处连续，所以当 $t>0$ 时，有 $g(t)>g(0)$.

又 $g(0)=0$，故当 $t>0$ 时，$g(t)>0$.

因此，当 $t>0$ 时，$F(t)>2/pi G(t)$.


*注* 第二问还可化为二重积分，或用柯西不等式证明.

*典型错误* 球坐标、极坐标转换出错；变上限积分求导错误；或未把 $F'(t)$ 的分子化为可判断正负的形式. 第二问应讨论 $F(t)-2/pi G(t)$ 的分子，直接对整个商式求导会使计算和零点附近极限判断变得复杂.
]

#answer("九、")[
*分析* 可以先讨论 $A$ 与 $B$ 的特征值、特征向量关系，再由 $A$ 求所需结果；也可以计算 $A^*,B,B+2E$ 后直接求特征值、特征向量. 后一种方法涉及较多数字计算，容易因中间错误影响结果.


*解法1* 经计算可得
$ A^*=mat(5,-2,-2;-2,5,-2;-2,-2,5), quad P^(-1)=mat(0,1,-1;1,0,0;0,0,1), \
B=P^(-1)A^* P=mat(7,0,0;-2,5,-4;-2,-2,3). $
从而
$ B+2E=mat(9,0,0;-2,7,-4;-2,-2,5), \
|lambda E-(B+2E)|=mat(delim:"|",lambda-9,0,0;2,lambda-7,4;2,2,lambda-5)=(lambda-9)^2(lambda-3), $
故 $B+2E$ 的特征值为9，9，3.

当 $lambda_1=lambda_2=9$ 时，对应的线性无关特征向量可取为 $eta_1=mat(-1;1;0),eta_2=mat(-2;0;1)$，所以对应于特征值9的全部特征向量为
$ k_1 eta_1+k_2 eta_2=k_1 mat(-1;1;0)+k_2 mat(-2;0;1), $
其中 $k_1,k_2$ 是不全为零的任意常数.

当 $lambda_3=3$ 时，对应的一个特征向量为 $eta_3=mat(0;1;1)$，所以对应于特征值3的全部特征向量为 $k_3 eta_3=k_3 mat(0;1;1)$，其中 $k_3$ 是不为零的任意常数.

*解法2* 设 $A$ 的特征值为 $lambda$，对应的特征向量为 $eta$，即 $A eta=lambda eta$. 由于 $|A|=7!=0$，所以 $lambda!=0$.

又因 $A^* A=|A|E$，故有 $A^* eta=|A|/lambda eta$.

于是有
$ B(P^(-1)eta)=P^(-1)A^* P(P^(-1)eta)=|A|/lambda (P^(-1)eta), \
(B+2E)P^(-1)eta=(|A|/lambda+2)P^(-1)eta. $
因此，$|A|/lambda+2$ 为 $B+2E$ 的特征值，对应的特征向量为 $P^(-1)eta$.

由于
$ |lambda E-A|=mat(delim:"|",lambda-3,-2,-2;-2,lambda-3,-2;-2,-2,lambda-3)=(lambda-1)^2(lambda-7), $
故 $A$ 的特征值为 $lambda_1=lambda_2=1,lambda_3=7$.

当 $lambda_1=lambda_2=1$ 时，对应的线性无关特征向量可取为 $eta_1=mat(-1;1;0),eta_2=mat(-1;0;1)$.

当 $lambda_3=7$ 时，对应的一个特征向量为 $eta_3=mat(1;1;1)$.

由 $P^(-1)=mat(0,1,-1;1,0,0;0,0,1)$，得
$ P^(-1)eta_1=mat(1;-1;0),quad P^(-1)eta_2=mat(-1;-1;1),quad P^(-1)eta_3=mat(0;1;1). $
因此，$B+2E$ 的三个特征值分别为9，9，3.

对应于特征值9的全部特征向量为
$ k_1 P^(-1)eta_1+k_2 P^(-1)eta_2=k_1 mat(1;-1;0)+k_2 mat(-1;-1;1), $
其中 $k_1,k_2$ 是不全为零的任意常数；对应于特征值3的全部特征向量为 $k_3 P^(-1)eta_3=k_3 mat(0;1;1)$，其中 $k_3$ 是不为零的任意常数.


*典型错误* 伴随矩阵或特征值计算错误；或由 $A eta=lambda eta$ 转到 $B$ 时，仍将 $eta$ 当作特征向量. 对 $B$ 应取 $P^(-1)eta$，不是 $eta$.
]

#answer("十、")[
*分析* 三条不同直线交于一点，等价于对应非齐次方程组有唯一解. 用系数矩阵与增广矩阵同秩且秩等于未知量个数的条件证明.


*证法1* 必要性：设三直线 $l_1,l_2,l_3$ 交于一点，则线性方程组
$ cases(a x+2b y=-3c,b x+2c y=-3a,c x+2a y=-3b) quad #text[（\*）] $
有唯一解，故系数矩阵 $A=mat(a,2b;b,2c;c,2a)$ 与增广矩阵 $overline(A)=mat(a,2b,-3c;b,2c,-3a;c,2a,-3b)$ 的秩均为2，于是 $|overline(A)|=0$.

由于
$ |overline(A)|&=mat(delim:"|",a,2b,-3c;b,2c,-3a;c,2a,-3b) \
&=6(a+b+c)[a^2+b^2+c^2-a b-a c-b c] \
&=3(a+b+c)[(a-b)^2+(b-c)^2+(c-a)^2], $
但 $(a-b)^2+(b-c)^2+(c-a)^2!=0$，故 $a+b+c=0$.

充分性：由 $a+b+c=0$，则从必要性的证明可知，$|overline(A)|=0$，故秩$(overline(A))<3$.

由于
$ mat(delim:"|",a,2b;b,2c)=2(a c-b^2)=-2[a(a+b)+b^2]=-2[(a+1/2 b)^2+3/4 b^2]!=0, $
故秩$(A)=2$. 于是，秩$(A)=$秩$(overline(A))=2$.

因此方程组（\*）有唯一解，即三直线 $l_1,l_2,l_3$ 交于一点.

*证法2* 必要性：设三直线交于一点 $(x_0,y_0)$，则 $mat(x_0;y_0;1)$ 为 $A x=0$ 的非零解，其中 $A=mat(a,2b,3c;b,2c,3a;c,2a,3b)$. 于是 $|A|=0$.

而
$ |A|&=mat(delim:"|",a,2b,3c;b,2c,3a;c,2a,3b) \
&=-6(a+b+c)[a^2+b^2+c^2-a b-b c-a c] \
&=-3(a+b+c)[(a-b)^2+(b-c)^2+(c-a)^2], $
但 $(a-b)^2+(b-c)^2+(c-a)^2!=0$，故 $a+b+c=0$.

充分性：考虑线性方程组
$ cases(a x+2b y=-3c,b x+2c y=-3a,c x+2a y=-3b). quad #text[（\*）] $
将方程组（\*）的三个方程相加，并由 $a+b+c=0$ 可知，方程组（\*）等价于方程组
$ cases(a x+2b y=-3c,b x+2c y=-3a). quad #text[（\*\*）] $
因为
$ mat(delim:"|",a,2b;b,2c)=2(a c-b^2)=-2[a(a+b)+b^2]=-[a^2+b^2+(a+b)^2]!=0. $
故方程组（\*\*）有唯一解，所以方程组（\*）有唯一解，即三直线 $l_1,l_2,l_3$ 交于一点.


*典型错误* 仅写出同秩条件和行列式为零，却没有说明系数矩阵为什么秩为2，也没有展开行列式说明其与 $a+b+c=0$ 的等价关系. 将三式相加得到 $(a+b+c)(x+2y+3)=0$，不能立即推出 $a+b+c=0$；反过来，该相加后的式子成立，也不能推出三个原方程有公共解. 求唯一解应完整检查秩条件.
]

#answer("十一、")[
*分析* 用古典概率求离散变量分布及数学期望，再用全概率公式求第二问.


*解法1* （1）$X$ 的可能取值为0，1，2，3，$X$ 的概率分布为
$ P{X=k}=(C_3^k C_3^(3-k))/C_6^3, quad k=0,1,2,3, $
即
#table(columns:5,[$X$],[0],[1],[2],[3],[$P$],[$1/20$],[$9/20$],[$9/20$],[$1/20$])
因此 $E X=0times 1/20+1times 9/20+2times 9/20+3times 1/20=3/2$.

（2）设 $A$ 表示事件“从乙箱中任意取出的一件产品是次品”，根据全概率公式，有
$ P(A)=sum_(k=0)^3 P{X=k}P{A|X=k}=1/20 times 0+9/20 times 1/6+9/20 times 2/6+1/20 times 3/6=1/4. $
*解法2* （1）设
$ X_i=cases(0 & #text[从甲箱中取出的第] i #text[件产品是合格品],1 & #text[从甲箱中取出的第] i #text[件产品是次品]), $
从 $X_i$ 的概率分布为
#table(columns:3,[$X_i$],[0],[1],[$P$],[$1/2$],[$1/2$])
$i=1,2,3$，且 $E X_i=1/2 (i=1,2,3)$.

因为 $X=X_1+X_2+X_3$，所以
$ E X=E(X_1+X_2+X_3)=E X_1+E X_2+E X_3=3/2. $
（2）设 $A$ 表示事件“从乙箱中任意取出的一件产品是次品”，由于 $ {X=0},{X=1},{X=2} $ 和 $ {X=3} $ 构成完全事件组，因此根据全概率公式，有
$ P(A)&=sum_(k=0)^3 P{X=k}P{A|X=k}=sum_(k=0)^3 P{X=k}dot k/6 \
&=1/6 sum_(k=0)^3 k P{X=k}=1/6 E X=1/6 dot 3/2=1/4. $


*典型错误* 把不放回抽取误认为独立重复试验，写成 $X tilde B(3,1/2)$；全概率公式或数值计算错误；或只凭“平均有1.5件次品、共6件，所以概率为1/4”的直觉给答案而没有概率论依据. 通过指示变量和全概率公式可把这种直觉写成严格证明，如解法2.
]

#answer("十二、")[
*分析* 由密度求总体分布函数，再利用样本独立性求最小次序统计量的分布函数，最后由期望判断无偏性.


*解* （1）
$ F(x)=integral_(-infinity)^x f(t) dif t=cases(1-e^(-2(x-theta)) & x>theta,0 & x<=theta). $
（2）
$ F_(hat(theta))(x)&=P{hat(theta)<=x}=P{min(X_1,X_2,dots,X_n)<=x} \
&=1-P{min(X_1,X_2,dots,X_n)>x} \
&=1-P{X_1>x,X_2>x,dots,X_n>x} \
&=1-P{X_1>x}P{X_2>x}dots P{X_n>x} \
&=1-[1-F(x)]^n=cases(1-e^(-2n(x-theta)) & x>theta,0 & x<=theta). $
（3）$hat(theta)$ 的概率密度为
$ f_(hat(theta))(x)=F'_(hat(theta))(x)=cases(2n e^(-2n(x-theta)) & x>theta,0 & x<=theta). $
因为
$ E hat(theta)=integral_(-infinity)^infinity x f_(hat(theta))(x) dif x=integral_theta^infinity 2n x e^(-2n(x-theta)) dif x=theta+1/(2n)!=theta, $
所以 $hat(theta)$ 作为 $theta$ 的估计量不具有无偏性.


*典型错误* 求分布函数时把参数 $theta$ 当作积分变量，或遗漏 $x<=theta$ 的分支；把 $P\{X_i>x\}$ 错写成 $F(x)$；计算期望时漏掉被积函数中的 $x$. 应区分积分变量与参数，完整写出分布函数各段，再用独立性和期望定义计算.
]

