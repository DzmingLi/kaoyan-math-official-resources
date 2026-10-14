#import "../template.typ": exam, answer
#show: exam.with(year: 1994, subject: "一", title: "1994年全国工学、经济学硕士研究生入学考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#import "@preview/cetz:0.5.2" as cetz
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 1994 数学一试卷参考解答

= 一、填空题

#answer("1（1）")[
由 $sin x=x-x^3/6+o(x^3)$，得 $1/sin x-1/x∼x/6$，又 $cot x∼1/x$，故极限为 $1/6$.

【另法】由等价无穷小量及洛必达法则，
$ lim_(x->0)cot x(1/sin x-1/x)=lim_(x->0)frac(x-sin x,x^3)=lim_(x->0)frac(1-cos x,3x^2)=lim_(x->0)frac(sin x,6x)=1/6. $
若已知x−sinx∼x³/6，则不必再用洛必达法则.
]

#answer("1（2）")[
令 $F=z-e^z+2x y-3$，则该点处梯度为 $(4,2,0)$，故切平面为 $2x+y-4=0$.
]

#answer("1（3）")[
$u_y=-x e^(-x)cos(x/y)/y^2$，所以 $u_(x y)=e^(-x)((x-1)cos(x/y)/y^2+x sin(x/y)/y^3)$.代入得 $(pi/e)^2$.
]

#answer("1（4）")[
由对称性，$integral.double_D x^2 dif x dif y=integral.double_D y^2 dif x dif y=pi R^4/4$，故答案为 $(pi R^4)/4 (1/a^2+1/b^2)$.

【另法】用极坐标，
$ I=integral_0^R r^3 dif r[frac(1,a^2)integral_0^(2pi)cos^2 theta dif theta+frac(1,b^2)integral_0^(2pi)sin^2 theta dif theta]=frac(pi R^4,4)(frac(1,a^2)+frac(1,b^2)). $
]

#answer("1（5）")[
由 $beta alpha^T=3$，得 $A^n=3^(n-1)A=3^(n-1)mat(1,1/2,1/3;2,1,2/3;3,3/2,1)$.
]

= 二、选择题

#answer("2（1）")[
D.利用奇偶性得 $M=0$，$N=integral_(-pi/2)^(pi/2)cos^4 x dif x>0$，$P=-N<0$.
]

#answer("2（2）")[
D.函数 $x y/(x^2+y^2)$ 在原点补定义为零后，两偏导数存在却不连续；函数 $sqrt(x^2+y^2)$ 连续，但在原点的两偏导数均不存在.
]

#answer("2（3）")[
C.由 $abs(a_n)/sqrt(n^2+lambda)<=1/2(a_n^2+1/(n^2+lambda))$ 及比较判别法，知绝对值级数收敛.
]

#answer("2（4）")[
D.若 $c=0$，则 $a≠0$，极限不能为有限非零数.故 $c≠0$，原极限为 $-a/(2c)=2$，即 $a=-4c$.

【分析】tanx∼x、1−cosx∼x²/2、ln(1−2x)∼−2x、1−e⁻ˣ²∼x². 若c=0则a≠0，原比值不能有有限非零极限，故c≠0. 比较一次项，得−a/(2c)=2，所以a=−4c.
]

#answer("2（5）")[
C.将各组向量关于原向量组的系数列成矩阵，C 的行列式为 $2$，其余三组的行列式均为零.

【按定义证明】A组选取系数1、−1、1、−1，B组各取1，D组选取1、−1、1、1，都得到非平凡的零线性组合，故三组线性相关. 对C组，若其零线性组合的系数为k₁至k₄，由原向量组线性无关，得
$ k_1-k_4=0,quad k_1+k_2=0,quad k_2+k_3=0,quad k_3+k_4=0. $
只有零解，故C组线性无关.
]

= 解答题

#answer("三（1）")[
在所求点附近 $t>0$，故 $x'= -2t sin(t^2)$，$y'=-2t^2 sin(t^2)$.所以 $(dif y)/(dif x)=t$，$(dif^2 y)/(dif x^2)=-1/(2t sin(t^2))$，代入分别得 $sqrt(pi/2)$、$-1/sqrt(2pi)$.

【分析】变上限积分项的导数恰与乘积中cos(t²)项抵消，因而dy/dx=t. 二阶导数须再除以dx/dt，不能误写为1. 题目要求两种导数的数值，不能只给二阶导数.
]

#answer("三（2）")[
由 $f'(x)=1/(1-x^4)-1=sum_(n=1)^infinity x^(4n)$，且 $f(0)=0$，逐项积分得
$ f(x)=sum_(n=1)^infinity x^(4n+1)/(4n+1), quad -1<x<1. $

【解法2】直接使用基本展开式，
$ ln(1+x)=sum_(n=1)^infinity(-1)^(n-1)x^n/n, quad ln(1-x)=-sum_(n=1)^infinity x^n/n, $
$ arctan x=sum_(n=1)^infinity(-1)^(n-1)frac(x^(2n-1),2n-1). $
代入f(x)，只有4n+1次幂保留下来，一次项再与−x抵消，得
$ f(x)=sum_(n=1)^infinity frac(x^(4n+1),4n+1),quad abs(x)<1. $
]

#answer("三（3）")[
令 $u=tan(x/2)$，则
$ I=1/4 integral (1+u^2)/u dif u=1/8 u^2+1/4 ln abs(u)+C. $
故 $I=1/8 tan^2(x/2)+1/4 ln abs(tan(x/2))+C$.

【解法1】半角变换后，
$ I=1/4 integral frac(dif(tan(x/2)),tan(x/2)cos^2(x/2))=1/4 integral(1/t+t)dif t. $
【解法2】令u=cosx，则
$ I=-1/2 integral frac(dif u,(1-u)(1+u)^2)=1/8[ln abs(1-u)-ln abs(1+u)+frac(2,1+u)]+C. $
【解法4】令t=1+cosx，
$ I=-integral frac(dif t,2t^2(2-t))=frac(1,4t)-1/8 ln abs(frac(t,2-t))+C. $
【解法5】将半角形式分拆，可得
$ I=1/8 sec^2(x/2)+1/4 ln abs(csc x-cot x)+C. $
【解法6】令t=sin(x/2)，
$ I=1/4 integral frac(dif t,t(1-t^2)^2) $
$ =1/4 integral[1/t+frac(1,4(1-t)^2)+frac(1,2(1-t))+frac(1,4(1+t)^2)-frac(1,2(1+t))]dif t $
$ =1/4[ln abs(t)+frac(1,4(1-t))-1/2 ln abs(1-t)-frac(1,4(1+t))-1/2 ln abs(1+t)]+C. $
这些形式相差常数，均为正确原函数. 半角正切代换的计算较短.
]

#answer("四、")[
将 $S$ 分为上底 $S_1$、下底 $S_2$ 和侧面 $S_3$.两底面上第一项为零，第二项因定向相反而抵消；侧面上第二项为零.
#cetz.canvas({
 import cetz.draw: *
 circle((0,1.4),radius:(1,.3))
 circle((0,-1.4),radius:(1,.3))
 line((-1,-1.4),(-1,1.4)); line((1,-1.4),(1,1.4))
 line((0,-1.8),(0,2),mark:(end:"stealth")); content((.2,2),$z$)
 line((0,0),(1.8,0),mark:(end:"stealth")); content((1.9,0),$y$)
 line((0,0),(-1.4,-1.8),mark:(end:"stealth")); content((-1.5,-1.9),$x$)
 content((1.3,1.4),$S_1$); content((1.3,-1.4),$S_2$); content((1.3,.7),$S_3$)
 content((-.2,.15),$O$); content((.2,1.15),$R$); content((.25,-1.2),$-R$)
})
将侧面投影到 $y O z$ 平面，得
$ I=2 integral_(-R)^R sqrt(R^2-y^2)dif y integral_(-R)^R 1/(R^2+z^2)dif z=pi^2 R/2. $

【分析】原点处向量场没有连续偏导数，不能直接对包含原点的柱体使用高斯公式. 上、下底面投影的定向相反，第二项抵消；侧面的dxdy项为零. 将侧面投影到yOz平面时，两侧的x取值和定向须一并处理.
【评析】不能仅凭被积函数的奇偶性猜测曲面积分为零，也不能将侧面上的关系x²+y²=R²移用于底面投影圆盘的内部.
]

#answer("五、")[
由 $P_y=Q_x$ 得 $x^2+2x y-f(x)=f''(x)+2x y$，即 $f''+f=x^2$.其通解为 $f=C_1 cos x+C_2 sin x+x^2-2$.利用初值得
$ f(x)=2cos x+sin x+x^2-2. $
原方程为 $dif(-2y sin x+y cos x+x^2 y^2/2+2x y)=0$，故通解为
$ -2y sin x+y cos x+x^2 y^2/2+2x y=C. $
]

#answer("六、")[
由条件得 $f(0)=f'(0)=0$.泰勒公式给出 $f(x)=1/2 f''(theta x)x^2$，$0<theta<1$.在原点附近取闭区间，由连续性存在 $M>0$ 使 $abs(f'')<=M$.于是充分大的 $n$ 有 $abs(f(1/n))<=M/(2n^2)$.由 $sum 1/n^2$ 收敛及比较判别法即得结论.

【证法2】由条件先得f(0)=f′(0)=0，故可两次用洛必达法则，
$ lim_(x->0)frac(f(x),x^2)=lim_(x->0)frac(f'(x),2x)=frac(f''(0),2). $
于是小邻域内有|f(x)|≤(|f″(0)|+1)x²，再以1/n²作比较级数.
【评析】f(1/n)=o(1/n)不足以推出级数收敛，例如1/(nlnn). 必须利用二阶导数条件获得平方阶控制；也不能仅由通项趋于零就断言收敛.
]

#answer("七、")[
直线 $A B$ 可写为 $x=1-z$，$y=z$.在高度 $z$ 处的截面半径为 $r(z)=sqrt((1-z)^2+z^2)$.
#cetz.canvas({
 import cetz.draw: *
 circle((0,0),radius:(1,.3)); circle((0,2),radius:(1,.3))
 bezier((-1,0),(-1,2),(-.5,.7),(-.5,1.3)); bezier((1,0),(1,2),(.5,.7),(.5,1.3))
 line((0,-.4),(0,2.7),mark:(end:"stealth")); content((.2,2.7),$z$)
 line((0,0),(1.7,0),mark:(end:"stealth")); content((1.8,0),$y$)
 line((0,0),(-1.2,-.9),mark:(end:"stealth")); content((-1.3,-1),$x$)
 line((-.7,-.21),(.8,2.18)); content((-.8,-.45),$A$); content((1,2.4),$B$)
 circle((0,1),radius:(.71,.22)); content((.25,1),$Q$); content((.2,-.2),$O$)
})
因此 $V=pi integral_0^1 (1-2z+2z^2)dif z=2pi/3$.

【解法2】用柱坐标，
$ V=integral_0^(2pi)dif theta integral_0^1 dif z integral_0^(sqrt(1-2z+2z^2))r dif r=2pi/3. $
【评析】直线AB与旋转轴是异面直线，不能直接套用平面曲线绕轴的旋转体公式. 圆截面法最简洁.
]

#answer("八、")[
（1）由 $x_1=-x_2$、$x_4=x_2$，基础解系可取 $(0,0,1,0)$、$(-1,1,0,1)$.

（2）将（Ⅱ）的通解代入（Ⅰ），两式均给出 $k_1+k_2=0$.所以所有非零公共解为 $k(-1,1,1,1)$，其中 $k≠0$.
]

#answer("九、")[
由 $A A^*=det(A)I$ 得 $A A^T=det(A)I$.若 $det A=0$，则 $A A^T=0$，其各对角元为 $A$ 的相应行元素的平方和，因此各行均为零，矛盾于 $A≠0$.故 $det A≠0$.
]

= 十、填空题

#answer("10（1）")[
由 $P(overline(A) overline(B))=1-P(A)-P(B)+P(A B)$，得 $P(B)=1-p$.
]

#answer("10（2）")[
由独立性，$P(Z=0)=P(X=0,Y=0)=1/4$，$P(Z=1)=3/4$.
#table(columns:3,[$Z$],[0],[1],[$p$],[$1/4$],[$3/4$])
]

= 解答题

#answer("十一、")[
（1）$E Z=1/3$.$op("Cov")(X,Y)=-6$，故 $D Z=9/9+16/4+2(-6)/6=3$.

（2）$op("Cov")(X,Z)=9/3-6/2=0$，故 $rho_(X Z)=0$.

（3）$(X,Z)$ 仍为二维正态随机变量，不相关即独立，故 $X$ 与 $Z$ 相互独立.
]

