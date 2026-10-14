#import "@preview/cetz:0.5.2" as cetz
#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2013, subject: "二", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2013 数学二试卷参考解答

= 一、选择题


#answer("1.")[
C. 【解】由 $sin alpha(x)=(cos x-1)/x$，得
$ lim_(x->0)frac(sin alpha(x),x)=lim_(x->0)frac(cos x-1,x^2)=-1/2. $
故 $sin alpha(x)->0$；又 $abs(alpha(x))<pi/2$，所以 $alpha(x)->0$ 且 $sin alpha(x)/alpha(x)->1$，于是 $alpha(x)/x->-1/2$，为同阶但不等价的无穷小量.
【典型错误】应先识别同阶无穷小量的含义，不必对未知函数贸然使用洛必达法则.
]
#answer("2.")[
A. 【解】由方程在 $x=0$ 处得到 $f(0)=1$，对两边求导有
$ -sin(x y)(y+x y')+y'/y-1=0. $
在 $x=0,y=1$ 时得到 $f'(0)=1$，故
$ lim_(n->infinity)n[f(2/n)-1]=2lim_(n->infinity)frac(f(2/n)-f(0),2/n)=2f'(0)=2. $
【典型错误】不能漏掉导数定义变形后出现的系数2，也应核对隐函数求导.
]
#answer("3.")[
C. 【解】分段计算得
$ F(x)=cases(1-cos x & 0<=x<pi,2+2x-2pi & pi<=x<=2pi). $
在 $x=pi$ 处，左右极限及函数值均为2，故连续；左导数为0，右导数为2，所以不可导.
也可利用积分的几何意义：面积随上限连续变化，但在 $pi$ 处面积的变化率发生跳跃.
【典型错误】$f$ 的跳跃间断不能直接传给 $F$；分段积分第二段必须加上第一段的积分值2，且不能把积分下限误写为0.
]
#answer("4.")[
D. 【解】反常积分收敛须两段同时收敛. 对
$ integral_1^e frac(1,(x-1)^(alpha-1))dif x, $
当 $alpha<=1$ 时为普通定积分；当 $alpha>1$ 时，按幂次型反常积分判别，收敛条件为 $alpha<2$.
另一段令 $u=ln x$，有
$ integral_e^infinity frac(1,x ln^(alpha+1)x)dif x=integral_1^infinity u^(-alpha-1)dif u, $
当且仅当 $alpha>0$ 时收敛. 综合得 $0<alpha<2$.
]
#answer("5.")[
A. 【解】由 $z=y/x f(x y)$，
$ z_x=-y/x^2 f(x y)+y^2/x f'(x y),quad z_y=1/x f(x y)+y f'(x y). $
于是 $x/y z_x+z_y=2y f'(x y)$.
]
#answer("6.")[
B. 【解】在 $D_2$ 内 $y-x>=0$，在 $D_4$ 内 $y-x<=0$，且等号不恒成立，故 $I_2>0,I_4<0$.
$D_1,D_3$ 关于 $y=x$ 对称，交换 $x,y$ 后被积函数变号，故 $I_1=I_3=0$.
直接计算也有
$ I_1=1/3 integral_0^(pi/2)(sin theta-cos theta)dif theta=0, $
$ I_2=1/3 integral_(pi/2)^pi(sin theta-cos theta)dif theta=2/3, $
同理 $I_3=0,I_4=-2/3$.
【典型错误】除坐标轴对称性，还应会利用区域关于 $y=x$ 对称以及 $f(x,y)=-f(y,x)$ 的性质.
]

#answer("7.")[

B. 【解】写 $A=(alpha_1,dots,alpha_n),C=(gamma_1,dots,gamma_n)$，则 $A B=C,A=C B^(-1)$，说明两组列向量可相互线性表示，故等价.
$B$ 可逆，其行、列向量组均线性无关，但任意的 $A$ 可以不满秩；$r(C)=r(A)$，故不能保证 $C$ 与 $B$ 的向量组等价. 对选项A，反例为
$ mat(1,1;0,0)mat(1,1;1,0)=mat(2,1;0,0). $
$A$ 与 $C$ 的行向量组不能相互线性表示. 【典型错误】不能把右乘矩阵所表示的列向量关系误认为行向量关系.

]
#answer("8.")[

B. 【解】两个实对称矩阵相似，当且仅当特征值相同. $B$ 的特征值为 $2,b,0$，而
$ det(lambda E-A)=lambda[(lambda-2)(lambda-b)-2a^2]. $
故充要条件为 $a=0$，$b$ 任意. 当 $a=2,b=0$ 时，$A$ 的特征值为 $4,-2,0$，并不相似；$a=0,b=2$ 只是充分条件. 【典型错误】须区分充分、必要和充要条件.

]


= 二、填空题

#answer("9.")[
$sqrt(e)$. 【解法1】记 $u=(x-ln(1+x))/x$，则 $u->0$，
$ [2-ln(1+x)/x]^(1/x)=[(1+u)^(1/u)]^((x-ln(1+x))/x^2). $
由重要极限及洛必达法则，
$ lim_(x->0)frac(x-ln(1+x),x^2)=lim_(x->0)frac(1-1/(1+x),2x)=1/2, $
所以原极限为 $e^(1/2)=sqrt(e)$.
【解法2】设原式为 $y$，取对数并用 $ln(1+u) tilde u$，得到
$ lim_(x->0)ln y=lim_(x->0)frac(ln[2-ln(1+x)/x],x)=lim_(x->0)frac(x-ln(1+x),x^2)=1/2. $
故 $y->sqrt(e)$.
【解法3】由 $ln(1+x)=x-x^2/2+o(x^2)$，
$ lim_(x->0)ln y=lim_(x->0)frac(ln(1+x/2+o(x)),x)=1/2. $
【典型错误】取对数算出 $1/2$ 后，不能漏掉最后还原指数的步骤.
]

#answer("10.")[
$1/sqrt(1-e^(-1))$. 【解】$y=0$ 对应 $x=-1$，由反函数求导法则，
$ frac(dif x,dif y)|_(y=0)=frac(1,f'(-1))=frac(1,sqrt(1-e^(-1))). $
【典型错误】不能把 $y=0$ 误作 $x=0$，也不能把原函数导数当作反函数导数.
]

#answer("11.")[
$pi/12$. 【解】这是三叶玫瑰线的一瓣，关于极轴对称，面积为
$ 1/2 integral_(-pi/6)^(pi/6)cos^2(3theta)dif theta=integral_0^(pi/6)frac(1+cos(6theta),2)dif theta=pi/12. $
【典型错误】面积公式中的 $1/2$ 与对称性产生的倍数须分别处理.
]

#answer("12.")[
$x+y=pi/4+ln 2/2$. 【解】写 $y=ln(1+t^2)/2$，得 $dif y/dif x=t$，故 $t=1$ 时切线斜率为1，法线斜率为 $-1$. 此点为 $(pi/4,ln 2/2)$，法线为
$ y-ln 2/2=-(x-pi/4). $
【典型错误】应求法线而不是切线，先化简 $y$ 的表达式可以减少求导错误.
]

#answer("13.")[
$-e^x+e^(3x)-x e^(2x)$. 【解】$y_1-y_3=e^(3x),y_2-y_3=e^x$ 是齐次方程的两个线性无关解，故通解为
$ y=C_1 e^(3x)+C_2 e^x-x e^(2x). $
初始条件给出 $C_1+C_2=0,3C_1+C_2-1=1$，解得 $C_1=1,C_2=-1$.

【典型错误】不能漏掉非齐次方程的特解，只用齐次通解代入初始条件.
]

#answer("14.")[

$-1$. 【解】由题设有 $A^*=-A^T$，故
$ det(A^*)=(-1)^3 det(A^T)=-det A. $
又 $det(A^*)=(det A)^2$，所以 $(det A)^2+det A=0$. 按行展开，
$ det A=sum_(j=1)^3 a_(i j)A_(i j)=-sum_(j=1)^3 a_(i j)^2. $
三行相加得 $3det A=-sum_(i,j=1)^3 a_(i j)^2$；$A$ 为非零矩阵，故 $det A!=0$，所以 $det A=-1$.
【典型错误】不能忽略非零矩阵条件，误填0或同时保留0和 $-1$.

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

（Ⅰ）因为 $f(x)$ 是奇函数，所以 $f(0)=0$. 由拉格朗日中值定理，存在 $xi in (0,1)$，使得
$ f'(xi)=(f(1)-f(0))/(1-0)=1. $

（Ⅱ）由于 $f(x)$ 是奇函数，故 $f'(x)$ 是偶函数，即 $f'(-xi)=f'(xi)=1$.

令 $F(x)=[f'(x)-1]e^x$，则 $F(-xi)=F(xi)=0$. 由罗尔定理，存在 $eta in (-xi,xi) subset (-1,1)$，使得
$ F'(eta)=e^eta[f''(eta)+f'(eta)-1]=0. $
因 $e^eta!=0$，故 $f''(eta)+f'(eta)=1$.

【证法2】令 $F(x)=f'(x)+f(x)-x$. 奇偶性及 $f(1)=1$ 给出
$ F(1)=f'(1),quad F(-1)=f'(-1)+f(-1)+1=f'(1). $
由罗尔定理，存在 $eta in (-1,1)$，使 $F'(eta)=f''(eta)+f'(eta)-1=0$.
【证法3】$f'$ 为偶函数，$f''$ 为奇函数. 取（Ⅰ）中的 $xi$，令 $F(x)=f''(x)+f'(x)-1$，则
$ F(xi)=f''(xi),quad F(-xi)=-f''(xi). $
若 $f''(xi)=0$，直接得结论；否则 $F(xi)F(-xi)<0$. 因 $F=[f'+f-x]'$，由导数介值性质，存在 $eta in (-xi,xi)$ 使 $F(eta)=0$.

原书说明：证法3使用的导数介值性质不在当年考试大纲要求之内，但证明正确也可得分.
【典型错误】题目要求证明某点处的等式，不是求解微分方程；辅助函数的符号不能改错. 中值定理给出的 $xi,eta$ 也不能任意趋于0，再以极限值代替它们原有的等式.

]

#answer("19.")[
设 $(x,y)$ 为曲线上的点，目标函数为 $f(x,y)=x^2+y^2$. 构造拉格朗日函数
$ L(x,y,lambda)=x^2+y^2+lambda(x^3-x y+y^3-1). $
令
$ (partial L)/(partial x)=2x+(3x^2-y)lambda=0, quad "①" $
$ (partial L)/(partial y)=2y+(3y^2-x)lambda=0, quad "②" $
$ (partial L)/(partial lambda)=x^3-x y+y^3-1=0. quad "③" $
当 $x>0,y>0$ 时，由①、②得
$ x/y=(3x^2-y)/(3y^2-x), $
即 $3x y(y-x)=(x+y)(x-y)$，得 $y=x$ 或 $3x y=-(x+y)$（由于 $x>0,y>0$，舍去）.

将 $y=x$ 代入③得 $2x^3-x^2-1=0$，即 $(2x^2+x+1)(x-1)=0$，所以 $(1,1)$ 为唯一可能的极值点，此时 $sqrt(x^2+y^2)=sqrt(2)$.

当 $x=0,y=1$ 或 $x=1,y=0$ 时，$sqrt(x^2+y^2)=1$.

故所求最长距离为 $sqrt(2)$，最短距离为1.

【典型错误】取距离的平方作目标函数可减少计算；拉格朗日函数应为目标函数加乘子乘约束，不能颠倒两者.
]

#answer("20.")[
（Ⅰ）$f'(x)=(x-1)/x^2$. 令 $f'(x)=0$，解得 $f(x)$ 的唯一驻点 $x=1$. 又 $f''(1)=(2-x)/x^3|_(x=1)=1>0$，故 $f(1)=1$ 是唯一极小值，即最小值.

（Ⅱ）由（Ⅰ）的结果知 $ln x+1/x>=1$，从而有
$ ln x_n+1/x_(n+1)<1<=ln x_n+1/x_n, $
于是 $x_n<=x_(n+1)$，即数列 $x_n$ 单调增加.

又由 $ln x_n+1/x_(n+1)<1$ 知 $ln x_n<1$，得 $x_n<e$. 从而数列 $x_n$ 单调增加且有上界，故 $lim_(n->infinity)x_n$ 存在.

记 $lim_(n->infinity)x_n=a$，可知 $a>=x_1>0$. 在不等式 $ln x_n+1/x_(n+1)<1$ 两边取极限，得 $ln a+1/a<=1$. 又 $ln a+1/a>=1$，故 $ln a+1/a=1$，可得 $a=1$，即 $lim_(n->infinity)x_n=1$.

【典型错误】第（Ⅰ）问的最小值结论是证明数列单调且有界的关键，证明极限存在后还须利用原不等式求出极限.
]

#answer("21.")[
（Ⅰ）$y'=1/2(x-1/x)$，则 $L$ 的弧长
$ s&=integral_1^e sqrt(1+(y')^2)dif x=1/2 integral_1^e(x+1/x)dif x \
&=1/2(x^2/2+ln x)|_1^e=(e^2+1)/4. $

（Ⅱ）
$ integral_1^e x(1/4 x^2-1/2 ln x)dif x&=(1/16 x^4-1/4 x^2 ln x+1/8 x^2)|_1^e \
&=1/16(e^2+1)(e^2-3), $
$ integral_1^e(1/4 x^2-1/2 ln x)dif x&=(1/12 x^3-1/2 x ln x+1/2 x)|_1^e \
&=1/12 e^3-7/12. $
所以 $D$ 的形心的横坐标为 $(3(e^2+1)(e^2-3))/(4(e^3-7))$.

【典型错误】弧长公式中的 $1+(y')^2=[(x+1/x)/2]^2$ 是完全平方式，应先化简根号；还应掌握曲边梯形的形心公式.
]

#answer("22.")[

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

#answer("23.")[

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

