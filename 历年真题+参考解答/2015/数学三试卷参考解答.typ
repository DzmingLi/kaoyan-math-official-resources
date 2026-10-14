#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2015, subject: "三", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#import "@preview/cetz:0.5.2": canvas, draw
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2015 数学三试卷参考解答

= 一、选择题

#answer("1.")[
D. 【解】$lim x_n=a$ 等价于 $x_n=a+epsilon_n,epsilon_n->0$. 所以收敛数列的各子列均收敛于同一极限，A、C 正确. 若偶数项和奇数项子列均趋于 $a$，可将它们的无穷小项合并，得到整个数列也趋于 $a$，故 B 正确.
对 D，取 $x_n=(-1)^n(-1)^(floor((n+2)/3))$. 则 $x_(3n)=x_(3n+1)=1$，而 $x_(3n+2)=-1$. 前两个子列虽均趋于 $1$，整个数列却不收敛，所以 D 不正确.
]

#answer("2.")[
C. 【解】图中 $f''(x)$ 有三个零点. 负半轴上的零点两侧不变号，正半轴上的零点两侧变号；此外，$x=0$ 虽然不是 $f''(x)$ 的零点，但两侧也变号. 因此曲线恰有两个拐点.
]

#answer("3.")[
B. 【解】区域是两个单位圆盘的公共部分. 两个圆的极坐标方程为 $r=2cos theta$ 和 $r=2sin theta$，故
$ I=integral_0^(pi/4)dif theta integral_0^(2sin theta)r f(r cos theta,r sin theta)dif r $
$ +integral_(pi/4)^(pi/2)dif theta integral_0^(2cos theta)r f(r cos theta,r sin theta)dif r. $
【常见问题】仅积分区域对称还不够；若被积函数没有相应的对称性，不能将半个区域的积分直接乘以 $2$.
]

#answer("4.")[
C. 【解】A 的正项级数用比值法，$lim a_(n+1)/a_n=1/3<1$，所以收敛. B 中
$ 0<frac(1,sqrt(n))ln(1+1/n)<frac(1,n^(3/2)), $
由比较判别法知收敛. D 用比值法，
$ lim_(n->infinity)frac((n+1)!/(n+1)^(n+1),n!/n^n)=lim_(n->infinity)frac(1,(1+1/n)^n)=1/e<1, $
所以收敛. 对 C，将通项分为 $(-1)^n/ln n+1/ln n$. 前者由莱布尼茨判别法收敛，后者因 $1/ln n>1/n$ 而发散，故它们的和级数发散.
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
B. 【解】总体方差为 $D X=m theta(1-theta)$，样本方差的期望等于总体方差，即
$ E[frac(1,n-1)sum_(i=1)^n(X_i-overline(X))^2]=m theta(1-theta). $
所以所求期望为 $m(n-1)theta(1-theta)$.
【常见问题】样本方差的分母是 $n-1$；分母为 $n$ 的样本二阶中心矩不是总体方差的无偏估计.
]

= 二、填空题

#answer("9.")[
$-1/2$. 【解法1】洛必达法则给出
$ lim_(x->0)frac(ln cos x,x^2)=lim_(x->0)frac(-tan x,2x)=-1/2. $
【解法2】由 $ln cos x tilde.op cos x-1=-2sin^2(x/2) tilde.op -x^2/2$，得极限为 $-1/2$.
]

#answer("10.")[
$2$. 【解】将 $x$ 提到积分号外，有 $phi.alt(x)=x integral_0^(x^2)f(t)dif t$，从而
$ phi.alt'(x)=integral_0^(x^2)f(t)dif t+2x^2 f(x^2). $
由 $phi.alt(1)=integral_0^1 f(t)dif t=1$，及 $phi.alt'(1)=1+2f(1)=5$，得 $f(1)=2$.
【常见问题】求导时不能漏掉乘积求导产生的积分项，否则会误得 $5/2$.
]

#answer("11.")[
$-dif x/3-2dif y/3$. 【解法1】在 $(0,0)$ 处 $z=0$. 对方程分别求偏导，得
$ e^(x+2y+3z)(1+3z'_x)+y z+x y z'_x=0, $
$ e^(x+2y+3z)(2+3z'_y)+x z+x y z'_y=0. $
代入 $x=y=z=0$，得 $z'_x=-1/3,z'_y=-2/3$，故全微分为 $-dif x/3-2dif y/3$.
【解法2】直接求全微分：
$ e^(x+2y+3z)(dif x+2dif y+3dif z)+y z dif x+x z dif y+x y dif z=0. $
代入零点，同样得到结果.
【常见问题】隐函数求偏导公式中有负号，不能遗漏.
]

#answer("12.")[
$2e^x+e^(-2x)$. 【解】极值条件给出 $y(0)=3,y'(0)=0$. 特征方程 $lambda^2+lambda-2=0$ 的根为 $1,-2$，所以
$ y=C_1 e^x+C_2 e^(-2x),quad y'=C_1 e^x-2C_2 e^(-2x). $
代入初值，得 $C_1+C_2=3,C_1-2C_2=0$，解得 $C_1=2,C_2=1$.
]

#answer("13.")[
$21$. 【解】$B=A^2-A+E$ 的特征值分别为 $2^2-2+1=3$、$(-2)^2-(-2)+1=7$、$1^2-1+1=1$，故 $det B=3 dot 7 dot 1=21$.
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
因为区域 $D$ 关于 $y$ 轴对称，所以 $integral.double_D x y dif x dif y=0$.
$ integral.double_D x(x+y)dif x dif y&=integral.double_D x^2 dif x dif y \
&=2integral_0^1 dif x integral_(x^2)^sqrt(2-x^2)x^2 dif y \
&=2integral_0^1 x^2(sqrt(2-x^2)-x^2)dif x \
&=2integral_0^1 x^2 sqrt(2-x^2)dif x-2integral_0^1 x^4 dif x. $
令 $x=sqrt(2)sin t$，则
$ integral_0^1 x^2 sqrt(2-x^2)dif x&=integral_0^(pi/4)4sin^2 t cos^2 t dif t \
&=1/2 integral_0^(pi/4)(1-cos 4t)dif t=pi/8, $
又 $integral_0^1 x^4 dif x=1/5$，所以
$ integral.double_D x(x+y)dif x dif y=pi/4-2/5. $

【解法2】仍先用对称性化为右半区域 $D'$ 上 $2x^2$ 的积分. 极坐标中抛物线为 $r=sin theta/cos^2 theta$，圆为 $r=sqrt(2)$，故
$ I=2integral_0^(pi/4)dif theta integral_0^(sin theta/cos^2 theta)r^3 cos^2 theta dif r $
$ +2integral_(pi/4)^(pi/2)dif theta integral_0^(sqrt(2))r^3 cos^2 theta dif r $
$ =frac(1,2)integral_0^(pi/4)tan^4 theta dif(tan theta)+integral_(pi/4)^(pi/2)(1+cos 2theta)dif theta $
$ =frac(1,10)+frac(pi,4)-frac(1,2)=frac(pi,4)-frac(2,5). $
【常见问题】应先用对称性消去奇函数项；极坐标法需要按 $theta=pi/4$ 分块，并准确写出抛物线的极坐标方程.
]

#answer("17.")[
（Ⅰ）由收益 $R=p Q$，得边际收益
$ M R=dif R/dif Q=p+Q dif p/dif Q=p(1-1/eta). $
欲使利润最大，应有 $M R=M C$，即 $p(1-1/eta)=M C$，所以定价模型为
$ p=(M C)/(1-1/eta). $
（Ⅱ）由题设知 $M C=2Q,eta=-p/Q dif Q/dif p=p/(40-p)$.
由（Ⅰ）有 $p=(2(40-p))/(1-(40-p)/p)$，解得 $p=30$.
所以此商品的价格为 $p=30$.
【解法2】令利润 $L=p Q-C$. 对需求量求导，利润最大时满足
$ frac(dif L,dif Q)=p+Q frac(dif p,dif Q)-frac(dif C,dif Q)=0. $
由 $dif C/dif Q=M C$，以及 $eta=-p dif Q/(Q dif p)$，得到
$ p+Q frac(dif p,dif Q)=p(1-1/eta)=M C, $
即 $p=M C/(1-1/eta)$. 第二问代入 $M C=2Q,eta=p/(40-p)$，仍得 $p=30$.
【解法3】改对价格求导，由 $dif L/dif p=0$ 得
$ Q+p frac(dif Q,dif p)=frac(dif C,dif p). $
两边乘以 $dif p/dif Q$，再用链式法则，得到 $p+Q dif p/dif Q=M C$，故仍得相同定价模型；第二问同样得到 $p=30$.
【常见问题】题设需求弹性为正，故定义中应带负号. 边际成本是 $dif C/dif Q$，不能误用 $dif C/dif p$.
]

#answer("18.")[
曲线 $y=f(x)$ 在点 $(x_0,f(x_0))$ 处的切线方程为
$ y=f'(x_0)(x-x_0)+f(x_0), $
该切线与 $x$ 轴的交点为 $(x_0-f(x_0)/f'(x_0),0)$.
根据题设条件可知 $1/2 abs(f(x_0))/f'(x_0) dot abs(f(x_0))=4$，即 $y=f(x)$ 满足方程 $y'=1/8 y^2$. 解得 $y=-8/(8C+x)$.
因为 $f(0)=2$，所以 $C=-1/2$. 故 $f(x)=8/(4-x),x in I$.

【常见问题】这里围成的是直角三角形，应直接使用两条直角边求面积. 若通过积分求面积，应注意取绝对值，避免得到负面积、写错微分方程的符号. 此外，$f'(0)=1/2$ 并不意味着 $f(x)-f(0)=f'(0)x$，不能把曲线当成切线.
]

#answer("19.")[
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

#answer("20.")[
（Ⅰ）由于 $A^3=O$，所以 $abs(A)=mat(delim: "|",a,1,0;1,a,-1;0,1,a)=a^3=0$，于是 $a=0$.
（Ⅱ）由于 $X-X A^2-A X+A X A^2=E$，所以 $(E-A)X(E-A^2)=E$.
由（Ⅰ）知 $E-A=mat(1,-1,0;-1,1,1;0,-1,1),E-A^2=mat(0,0,1;0,1,0;-1,0,2)$.
因为 $E-A,E-A^2$ 均可逆，所以
$ X&=(E-A)^(-1)(E-A^2)^(-1) \
&=mat(2,1,-1;1,1,-1;1,1,0)mat(2,0,-1;0,1,0;1,0,0) \
&=mat(3,1,-2;1,1,-1;2,1,-1). $

其中两个逆矩阵分别为
$ (E-A)^(-1)=mat(2,1,-1;1,1,-1;1,1,0), $
$ (E-A^2)^(-1)=mat(2,0,-1;0,1,0;1,0,0). $
【常见问题】矩阵乘法不能默认满足交换律；求逆矩阵时，应准确进行初等行变换，避免在繁杂计算中出错.
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

