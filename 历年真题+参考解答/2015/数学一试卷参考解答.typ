#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2015, subject: "一", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#import "@preview/cetz:0.5.2": canvas, draw
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2015 数学一试卷参考解答

= 一、选择题

#answer("1.")[
C. 【解】图中 $f''(x)$ 有三个零点. 负半轴上的零点两侧不变号，正半轴上的零点两侧变号；此外，$x=0$ 虽然不是 $f''(x)$ 的零点，但两侧也变号. 因此曲线恰有两个拐点.
]

#answer("2.")[
A. 【解法1】由齐次通解可知特征根为 $1,2$，故特征方程为 $r^2-3r+2=0$，得到 $a=-3,b=2$. 将特解 $y=x e^x$ 代入，得 $c=-1$.
【解法2】对给出的解求导，得
$ y'=e^(2x)+(x+2/3)e^x, quad y''=2e^(2x)+(x+5/3)e^x. $
代入微分方程并比较系数，得
$ cases(2+a+b/2=0,1+a+b=0,(5+2a-b)/3=c). $
解得 $a=-3,b=2,c=-1$.
]

#answer("3.")[
B. 【解】由 $sum a_n$ 条件收敛，幂级数 $sum a_n(x-1)^n$ 的收敛半径为 $1$. 逐项求导，再乘以 $x-1$，所得 $sum n a_n(x-1)^n$ 的收敛半径仍为 $1$. 因 $abs(sqrt(3)-1)<1$，在 $x=sqrt(3)$ 处收敛；因 $abs(3-1)>1$，在 $x=3$ 处发散.
]

#answer("4.")[
B. 【解】用极坐标变换 $x=r cos theta,y=r sin theta$. 两条双曲线分别化为 $2r^2 sin 2theta=1$ 和 $r^2 sin 2theta=1$，两条直线分别化为 $theta=pi/4,theta=pi/3$. 因而积分为
$ integral_(pi/4)^(pi/3)dif theta integral_(1/sqrt(2sin 2theta))^(1/sqrt(sin 2theta))r f(r cos theta,r sin theta)dif r. $
]

#answer("5.")[
D. 【解】增广矩阵经初等行变换得
$ mat(1,1,1,1;1,2,a,d;1,4,a^2,d^2;augment:#3) -> mat(1,1,1,1;0,1,a-1,d-1;0,0,(a-1)(a-2),(d-1)(d-2);augment:#3). $
方程组有无穷多解，当且仅当系数矩阵和增广矩阵的秩相等且小于 $3$，即 $(a-1)(a-2)=(d-1)(d-2)=0$. 所以 $a,d$ 均可取 $1$ 或 $2$.
]

#answer("6.")[
A. 【解】令 $P=(e_1,e_2,e_3)$，则正交矩阵
$ Q=(e_1,-e_3,e_2)=P mat(1,0,0;0,0,1;0,-1,0). $
由 $x=Q y=P(y_1,y_3,-y_2)^T$，原标准形化为 $2y_1^2+y_3^2-y_2^2$.
]

#answer("7.")[
C. 【解法1】因 $P(A B)<=P(A)$ 且 $P(A B)<=P(B)$，两式相加得 $2P(A B)<=P(A)+P(B)$.
【解法2】取两个互不相容且概率均为正的事件，可排除 B、D. 取 $B$ 为 $A$ 的真子事件，且 $0<P(B)<P(A)<1$，可排除 A. 故选 C.
]

#answer("8.")[
D. 【解法1】由独立性，$E(X Y)=E X E Y=2$，且 $E(X^2)=D X+(E X)^2=7$. 因此
$ E[X(X+Y-2)]=E(X^2)+E(X Y)-2E X=7+2-4=5. $
【解法2】由协方差的性质及独立性，
$ E[X(X+Y-2)]=op("Cov")(X,X+Y-2)+E X E(X+Y-2) $
$ =D X+E X(E X+E Y-2)=3+2(2+1-2)=5. $
]

= 二、填空题

#answer("9.")[
$-1/2$. 【解法1】洛必达法则给出
$ lim_(x->0)frac(ln cos x,x^2)=lim_(x->0)frac(-tan x,2x)=-1/2. $
【解法2】由 $ln cos x tilde.op cos x-1=-2sin^2(x/2) tilde.op -x^2/2$，得极限为 $-1/2$.
]

#answer("10.")[
$pi^2/4$. 【解法1】$sin x/(1+cos x)$ 是奇函数，$abs(x)$ 是偶函数，故
$ integral_(-pi/2)^(pi/2)(frac(sin x,1+cos x)+abs(x))dif x=2integral_0^(pi/2)x dif x=pi^2/4. $
【解法2】直接积分，得
$ [-ln(1+cos x)]_(-pi/2)^(pi/2)+[x^2/2]_0^(pi/2)-[x^2/2]_(-pi/2)^0=pi^2/4. $
【常见问题】$pi/4$ 和 $pi^2/8$ 是常见的错误答案.
]

#answer("11.")[
$-dif x$. 【解法1】对方程两侧微分，得
$ e^z dif z+y z dif x+x z dif y+x y dif z+dif x-sin x dif x=0, $
即 $(e^z+x y)dif z=(sin x-y z-1)dif x-x z dif y$. 当 $x=0,y=1$ 时，$e^z+1=2$，故 $z=0$，于是全微分为 $-dif x$.
【解法2】分别对 $x,y$ 求偏导，得
$ z'_x=frac(sin x-y z-1,e^z+x y), quad z'_y=frac(-x z,e^z+x y). $
在 $(0,1)$ 处 $z=0,z'_x=-1,z'_y=0$，故 $dif z=z'_x dif x+z'_y dif y=-dif x$.
【常见问题】全微分不是不定积分，不能在结果中添上任意常数；还需在指定点代入偏导数.
]

#answer("12.")[
$1/4$. 【解】由对称性，区域上 $x,y,z$ 的三重积分相等，因此
$ integral.triple_Omega(x+2y+3z)dif x dif y dif z=6integral_0^1 dif x integral_0^(1-x)dif y integral_0^(1-x-y)x dif z $
$ =3integral_0^1 x(1-x)^2 dif x=[-x(1-x)^3]_0^1+integral_0^1(1-x)^3 dif x=1/4. $
【常见问题】$1/3$ 和 $sqrt(3)$ 是较常见的错误答案.
]

#answer("13.")[
$2^(n+1)-2$. 【解】记行列式为 $D_n$. 按第一列展开，得 $D_n=2D_(n-1)+2$，所以
$ D_n+2=2(D_(n-1)+2)=2^(n-2)(D_2+2). $
因 $D_2=det mat(2,2;-1,2)=6$，得 $D_n+2=2^(n+1)$，即 $D_n=2^(n+1)-2$.
]

#answer("14.")[
$1/2$. 【解】由二维正态分布的参数知 $X,Y$ 独立，且 $X tilde N(1,1),Y tilde N(0,1)$. 因而
$ P(X Y-Y<0)=P(X<1,Y>0)+P(X>1,Y<0) $
$ =P(X<1)P(Y>0)+P(X>1)P(Y<0)=1/2. $
【常见问题】应由相关系数为零及联合正态性判断独立，并将事件正确分解为两个互不相容事件.
]

= 三、解答题

#answer("15.")[
【解法1】由于 $ln(1+x)=x-x^2/2+x^3/3+o(x^3),sin x=x-x^3/6+o(x^3)$，所以
$ f(x)&=x+a ln(1+x)+b x sin x \
&=x+a(x-x^2/2+x^3/3)+b x^2+o(x^3) \
&=(1+a)x+(b-a/2)x^2+a/3 x^3+o(x^3). $
因为 $f(x)$ 与 $g(x)=k x^3$ 在 $x->0$ 时等价，所以
$ cases(1+a=0,b-a/2=0,k=a/3). $
解得 $a=-1,b=-1/2,k=-1/3$.

【解法2】用洛必达法则. 有
$ lim_(x->0)f'(x)=lim_(x->0)[1+frac(a,1+x)+b(sin x+x cos x)]=1+a, $
而 $lim_(x->0)g'(x)=0$. 要使 $lim_(x->0)f(x)/g(x)=1$，必须 $1+a=0$，即 $a=-1$. 又
$ lim_(x->0)f''(x)=lim_(x->0)[-frac(a,(1+x)^2)+b(2cos x-x sin x)]=1+2b, $
而 $lim_(x->0)g''(x)=0$，故 $1+2b=0$，即 $b=-1/2$. 再次用洛必达法则，
$ lim_(x->0)frac(f^((3))(x),g^((3))(x))=lim_(x->0)frac(frac(2a,(1+x)^3)-b(3sin x+x cos x),6k)=-frac(1,3k). $
此极限等于 $1$，故 $k=-1/3$.
【解法3】由等价关系及各阶导数的存在，依次比较在零点的导数：$f'(0)=g'(0),f''(0)=g''(0),f^((3))(0)=g^((3))(0)$. 第一式给出 $1+a=0$；第二式给出 $1+2b=0$. 代入后
$ f^((3))(x)=-frac(2,(1+x)^3)+frac(3,2)sin x+frac(1,2)x cos x, $
所以 $f^((3))(0)=-2=6k$，得到 $a=-1,b=-1/2,k=-1/3$.
【常见问题】求极限时不能漏写极限符号；多次求导容易产生计算错误；还应准确写出对数和正弦函数的泰勒公式.
]

#answer("16.")[
曲线 $y=f(x)$ 在点 $(x_0,f(x_0))$ 处的切线方程为
$ y=f'(x_0)(x-x_0)+f(x_0), $
该切线与 $x$ 轴的交点为 $(x_0-f(x_0)/f'(x_0),0)$.
根据题设条件可知 $1/2 abs(f(x_0))/f'(x_0) dot abs(f(x_0))=4$，即 $y=f(x)$ 满足方程 $y'=1/8 y^2$. 解得 $y=-8/(8C+x)$.
因为 $f(0)=2$，所以 $C=-1/2$. 故 $f(x)=8/(4-x),x in I$.

【常见问题】这里围成的是直角三角形，应直接使用两条直角边求面积. 若通过积分求面积，应注意取绝对值，避免得到负面积、写错微分方程的符号. 此外，$f'(0)=1/2$ 并不意味着 $f(x)-f(0)=f'(0)x$，不能把曲线当成切线.
]

#answer("17.")[
因为函数在每一点沿梯度方向的方向导数最大，且最大方向导数为该点梯度向量的长度，而
$ upright("grad")f(x,y)&=(1+y,1+x), \
abs(upright("grad")f(x,y))&=sqrt((1+x)^2+(1+y)^2), $
因此，问题转化为求 $sqrt((1+x)^2+(1+y)^2)$ 在条件 $x^2+y^2+x y=3$ 下的最大值.
令 $F(x,y,lambda)=(1+x)^2+(1+y)^2+lambda(x^2+y^2+x y-3)$，由
$ cases(F'_x=2(1+x)+lambda(2x+y)=0,F'_y=2(1+y)+lambda(2y+x)=0,F'_lambda=x^2+y^2+x y-3=0) $
解得 $cases(x=1,y=1),cases(x=-1,y=-1),cases(x=2,y=-1),cases(x=-1,y=2)$.
又 $abs(upright("grad")f(1,1))=2sqrt(2),abs(upright("grad")f(-1,-1))=0$，$abs(upright("grad")f(2,-1))=abs(upright("grad")f(-1,2))=3$，所以 $f(x,y)$ 在曲线 $C$ 上的最大方向导数为 3.

【常见问题】应求梯度向量的长度，而不是 $x f'_x+y f'_y$、$f'_x+f'_y$，也不能把梯度直接当作一个标量方向导数. 题目要求的是曲线上各点的最大方向导数，不是函数本身在曲线上的最大值，也不是限定沿曲线切线方向的方向导数.
]

#answer("18.")[
（Ⅰ）因为函数 $u(x),v(x)$ 可导，所以
$ lim_(Delta x->0)(u(x+Delta x)-u(x))/(Delta x)=u'(x), $
$ lim_(Delta x->0)(v(x+Delta x)-v(x))/(Delta x)=v'(x), $
且 $lim_(Delta x->0)v(x+Delta x)=v(x)$. 从而
$ [u(x)v(x)]'&=lim_(Delta x->0)(u(x+Delta x)v(x+Delta x)-u(x)v(x))/(Delta x) \
&=lim_(Delta x->0)[(u(x+Delta x)-u(x))/(Delta x)v(x+Delta x) \
&quad+u(x)(v(x+Delta x)-v(x))/(Delta x)] \
&=lim_(Delta x->0)(u(x+Delta x)-u(x))/(Delta x) dot lim_(Delta x->0)v(x+Delta x) \
&quad+u(x)lim_(Delta x->0)(v(x+Delta x)-v(x))/(Delta x) \
&=u'(x)v(x)+u(x)v'(x). $
（Ⅱ）$f'(x)=u'_1(x)u_2(x)dots u_n(x)+u_1(x)u'_2(x)dots u_n(x)+dots+u_1(x)u_2(x)dots u'_n(x)$.

（Ⅰ）【证法2】由可导性，
$ u(x+h)=u(x)+u'(x)h+o(h), quad v(x+h)=v(x)+v'(x)h+o(h). $
于是
$ [u(x)v(x)]'=lim_(h->0)frac([u(x)+u'(x)h+o(h)][v(x)+v'(x)h+o(h)]-u(x)v(x),h) $
$ =lim_(h->0)[u'(x)v'(x)h+u'(x)v(x)+u(x)v'(x)+o(1)] $
$ =u'(x)v(x)+u(x)v'(x). $
【常见问题】不能为了凑出结论，在分子中任意替换乘积. 也不能在只知可导的条件下，由中值定理中 $xi->x$ 就断言 $u'(xi)->u'(x)$；导数未必连续.
]

#answer("19.")[
设 $L_1$ 是从点 $B$ 到点 $A$ 的直线段，$Sigma$ 为平面 $z=x$ 上由 $L$ 与 $L_1$ 围成的半圆面下侧，其法向量的方向余弦为 $(1/sqrt(2),0,-1/sqrt(2))$.
由 Stokes 公式
$ integral.cont_(L+L_1)(y+z)dif x+(z^2-x^2+y)dif y+x^2 y^2 dif z \
&=integral.double_Sigma mat(delim: "|",1/sqrt(2),0,-1/sqrt(2);partial/partial x,partial/partial y,partial/partial z;y+z,z^2-x^2+y,x^2 y^2)dif S \
&=1/sqrt(2)integral.double_Sigma(2x^2 y+1)dif S. $
由于曲面 $Sigma$ 关于 $x O z$ 平面对称，所以 $integral.double_Sigma 2x^2 y dif S=0$，故
$ integral.cont_(L+L_1)(y+z)dif x+(z^2-x^2+y)dif y+x^2 y^2 dif z \
&=1/sqrt(2)integral.double_Sigma dif S=sqrt(2)/2 pi. $
又 $L_1$ 的参数方程为 $x=0,y=y,z=0$（$y$ 从 $-sqrt(2)$ 到 $sqrt(2)$），所以
$ integral_(L_1)(y+z)dif x+(z^2-x^2+y)dif y+x^2 y^2 dif z \
&=integral_(-sqrt(2))^sqrt(2)y dif y=0. $
因此 $I=sqrt(2)/2 pi$.

【解法2】曲线在 $x O y$ 平面上的投影为 $x^2+y^2/2=1,x>=0$. 取参数
$ x=cos t,quad y=sqrt(2)sin t,quad z=cos t, $
起点对应 $t=pi/2$，终点对应 $t=-pi/2$，所以
$ I=integral_(pi/2)^(-pi/2)[(-sqrt(2)sin t-cos t)sin t+2sin t cos t-2sin^3 t cos^2 t]dif t. $
其中 $sin t cos t$ 和 $sin^3 t cos^2 t$ 为奇函数，积分为零，故
$ I=sqrt(2)integral_(-pi/2)^(pi/2)sin^2 t dif t=sqrt(2)integral_0^(pi/2)(1-cos 2t)dif t=frac(sqrt(2)pi,2). $
【解法3】用 $y$ 作参数，有 $x=z=sqrt((2-y^2)/2)$，$y$ 从 $sqrt(2)$ 变至 $-sqrt(2)$，且 $dif x=dif z=-y dif y/sqrt(4-2y^2)$. 代入得
$ I=integral_(sqrt(2))^(-sqrt(2))[-frac(y(y+sqrt((2-y^2)/2)),sqrt(4-2y^2))+y-frac((2-y^2)y^3,2sqrt(4-2y^2))]dif y. $
利用奇偶性，得到
$ I=integral_(sqrt(2))^(-sqrt(2))frac(-y^2,sqrt(4-2y^2))dif y=integral_0^(sqrt(2))frac(y^2,sqrt(1-(y/sqrt(2))^2))dif y. $
令 $y=sqrt(2)sin t$，则
$ I=2sqrt(2)integral_0^(pi/2)sin^2 t dif t=frac(sqrt(2)pi,2). $
【解法4】沿曲线 $z=x$，故投影到半椭圆弧 $L_1$ 后，
$ I=integral_(L_1)[x dif x+y dif y+(y+x^2 y^2)dif x]. $
其中 $integral_(L_1)(x dif x+y dif y)=0$. 补上 $y$ 轴上的直径，补线的 $dif x=0$，由格林公式（边界为顺时针）得
$ integral_(L_1)(y+x^2 y^2)dif x=integral.double_D(1+2x^2 y)dif x dif y $
$ =integral.double_D dif x dif y=frac(sqrt(2)pi,2), $
其中 $D$ 为右半椭圆区域，关于横轴对称. 故 $I=sqrt(2)pi/2$.
【常见问题】斯托克斯公式中的法向应与曲线方向相容；参数法的积分上下限以及格林公式的正负号都须按指定方向确定，不能误用高斯公式.
]

#answer("20.")[
（Ⅰ）由于
$ (beta_1,beta_2,beta_3)&=(2alpha_1+2k alpha_3,2alpha_2,alpha_1+(k+1)alpha_3) \
&=(alpha_1,alpha_2,alpha_3)P, $
其中 $P=mat(2,0,1;0,2,0;2k,0,k+1)$，且 $abs(P)=4!=0$，所以 $beta_1,beta_2,beta_3$ 为 $bold(upright(R))^3$ 的一个基.
（Ⅱ）设 $xi$ 在基 $alpha_1,alpha_2,alpha_3$ 与基 $beta_1,beta_2,beta_3$ 下的坐标向量为 $x$，则
$ xi=(alpha_1,alpha_2,alpha_3)x=(beta_1,beta_2,beta_3)x=(alpha_1,alpha_2,alpha_3)P x, $
所以 $(P-E)x=0$. 对 $P-E$ 施以初等行变换
$ P-E=mat(1,0,1;0,1,0;2k,0,k) arrow.r mat(1,0,1;0,1,0;0,0,-k), $
所以当 $k=0$ 时，方程组 $(P-E)x=0$ 有非零解，且所有非零解为 $x=c mat(1;0;-1)$，$c$ 为任意非零常数.
故在两个基下坐标相同的所有非零向量为
$ xi=(alpha_1,alpha_2,alpha_3)mat(c;0;-c)=c(alpha_1-alpha_3), $
$c$ 为任意非零常数.

【常见问题】两组基之间的过渡矩阵，其各列是新基向量在旧基下的坐标，不能误写为其转置. 旧基线性无关，所以新向量组的秩就是过渡矩阵的秩，可据此简化计算.
]

#answer("21.")[
（Ⅰ）由于矩阵 $A$ 与矩阵 $B$ 相似，所以 $upright("tr")(A)=upright("tr")(B),abs(A)=abs(B)$.
于是 $3+a=2+b,2a-3=b$，解得 $a=4,b=5$.
（Ⅱ）由（Ⅰ）知 $A=mat(0,2,-3;-1,3,-3;1,-2,4),B=mat(1,-2,0;0,5,0;0,3,1)$.
由于矩阵 $A$ 与矩阵 $B$ 相似，所以
$ abs(lambda E-A)=abs(lambda E-B)=(lambda-1)^2(lambda-5). $
故 $A$ 的特征值为 $lambda_1=lambda_2=1,lambda_3=5$.
当 $lambda_1=lambda_2=1$ 时，解方程组 $(E-A)x=0$，得线性无关的特征向量 $xi_1=mat(2;1;0),xi_2=mat(-3;0;1)$.
当 $lambda_3=5$ 时，解方程组 $(5E-A)x=0$，得特征向量 $xi_3=mat(1;1;-1)$.
令 $P=(xi_1,xi_2,xi_3)=mat(2,-3,1;1,0,1;0,1,-1)$，则
$ P^(-1)A P=mat(1,0,0;0,1,0;0,0,5), $
故 $P$ 为所求可逆矩阵.

【常见问题】解特征向量的齐次方程组时易发生计算错误；矩阵 $P$ 的各列必须与对角矩阵中相应位置的特征值一致.
]

#answer("22.")[
（Ⅰ）每次观测中，观测值大于 3 的概率为
$ P{X>3}=integral_3^infinity f(x)dif x=integral_3^infinity 2^(-x)ln 2dif x=1/8, $
故 $Y$ 的概率分布为
$ P{Y=k}=(k-1)(7/8)^(k-2)(1/8)^2,quad k=2,3,dots. $
（Ⅱ）
$ E Y&=sum_(k=2)^infinity k(k-1)(7/8)^(k-2)(1/8)^2 \
&=(1/8)^2 (sum_(k=2)^infinity x^k)''|_(x=7/8) \
&=(1/8)^2 2/(1-x)^3|_(x=7/8) \
&=16. $

【解法2】设 $Y_1$ 为出现第一个大于 $3$ 的观测值所需的观测次数，$Y_2$ 为此后到出现第二个大于 $3$ 的观测值所需的次数. 则 $Y=Y_1+Y_2$，且 $Y_1,Y_2$ 均服从参数 $p=1/8$ 的几何分布，故 $E Y_1=E Y_2=8$，于是 $E Y=16$.
【解法3】由（Ⅰ），$Y$ 服从参数 $r=2,p=1/8$ 的负二项分布，故 $E Y=r/p=16$.
【常见问题】第 $k$ 次观测必须是第二次成功，前 $k-1$ 次中恰有一次成功，所以组合系数是 $k-1$；失败次数是 $k-2$，成功概率应平方. 求期望时还应准确进行幂级数的求和.
]

#answer("23.")[
（Ⅰ）由于总体 $X$ 服从区间 $[theta,1]$ 上的均匀分布，所以 $E X=(1+theta)/2$.
令 $(1+theta)/2=overline(X)$，其中 $overline(X)$ 为样本均值，得 $theta$ 的矩估计量 $hat(theta)=2overline(X)-1$.
（Ⅱ）记 $x_1,x_2,dots,x_n$ 为样本 $X_1,X_2,dots,X_n$ 的观测值，则似然函数为
$ L(theta)&=product_(i=1)^n f(x_i;theta) \
&=cases(1/(1-theta)^n & theta<=x_i<=1 (i=1,2,dots,n),0 & "其他") \
&=cases(1/(1-theta)^n & theta<=min{x_1,x_2,dots,x_n},0 & "其他"). $
由此可知，当 $theta=min{x_1,x_2,dots,x_n}$ 时，$L(theta)$ 达到最大，故 $theta$ 的最大似然估计量
$ hat(theta)=min{X_1,X_2,dots,X_n}. $

【常见问题】似然函数是关于参数 $theta$ 的函数，样本观测值应视为已知. 本题的似然函数在 $theta<=min(x_1,dots,x_n)$ 时严格递增，超过该端点即为零，故最大值在端点取得. 不能只求对数似然函数的驻点而忽略参数范围与分段条件.
]

