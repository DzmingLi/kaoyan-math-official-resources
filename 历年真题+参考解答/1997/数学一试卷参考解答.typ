#import "../template.typ": exam, answer
#show: exam.with(year: 1997, subject: "一", title: "1997年全国工学、经济学硕士研究生入学考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 1997 数学一试卷参考解答

= 一、填空题

#answer("1（1）")[
分子分母同除以 $x$，利用 $ (sin x)/x arrow 1$、$x cos(1/x)arrow 0$、$ (ln(1+x))/x arrow 1$，得极限为 $3/2$.

【分析】分母与2x等价，第一部分趋于3/2，而有界函数与无穷小量之积xcos(1/x)/2趋于0. 故结果为3/2.
]

#answer("1（2）")[
幂级数逐项求导不改变收敛半径，再乘 $(x-1)^2$ 也不改变半径，因此收敛区间为 $(-2,4)$.
]

#answer("1（3）")[
参数方程为 $x=e^theta cos theta$、$y=e^theta sin theta$.在 $theta=pi/2$ 处，$x'=-e^(pi/2)$、$y'=e^(pi/2)$，切点为 $(0,e^(pi/2))$，故切线为 $x+y=e^(pi/2)$.
]

#answer("1（4）")[
因为 $B≠0$，$A$ 必须奇异.$det A=7t+21=0$，故 $t=-3$.
]

#answer("1（5）")[
由全概率公式，$P=20/50 times 19/49+30/50 times 20/49=2/5$.

【分析】抽签原理说明，各次抽取时单个球落在某一位置的可能性相同，因此第二人取黄球的概率仍为20/50. 若用全概率公式，按第一人取黄球、白球分成两个互斥且完备的情形，即得到上述计算.
]

= 二、选择题

#answer("2（1）")[
C.沿 $y=x≠0$ 有 $f(x,x)=1/2$，故不连续；沿两坐标轴恒为0，故两个偏导数均存在且为0.
]

#answer("2（2）")[
B.由严格递减性知 $S_2<S_1$；由 $f''>0$，曲线位于端点弦的下方，故 $S_1<S_3$.

【分析】S₁、S₂、S₃分别是曲线下方、以f(b)为高的矩形、端点弦下方梯形的面积. 严格递减使矩形面积小于曲线下面积，f″＞0使曲线位于弦下方，故S₂＜S₁＜S₃.
]

#answer("2（3）")[
A.被积函数以 $2pi$ 为周期，故积分为常数.将后半周期换元，可写成 $integral_0^pi (e^(sin t)-e^(-sin t))sin t dif t>0$.

【解法2】周期性使F(x)恒等于在[0,2π]上的积分. 分部积分得
$ integral_0^(2pi)e^(sin t)sin t dif t=-[e^(sin t)cos t]_0^(2pi)+integral_0^(2pi)e^(sin t)cos^2 t dif t>0. $
边界项为零，末项严格为正.
]

#answer("2（4）")[
D.交于唯一一点等价于关于 $x,y$ 的方程组有唯一解，即系数矩阵和增广矩阵的秩都等于2.
]

#answer("2（5）")[
D.由独立性，$D(3X-2Y)=9D X+4D Y=36+8=44$.

【评析】相互独立时 $D(a X+b Y)=a^2 D X+b^2 D Y$. 系数必须平方，且减号不会使方差项取负号；不能套用期望的线性公式.
]

= 解答题

#answer("三（1）")[
用柱坐标 $x=r cos theta$、$y=r sin theta$，区域为 $0<=theta<=2pi$、$0<=r<=4$、$r^2/2<=z<=8$，故
$ I=integral_0^(2pi)dif theta integral_0^4 r^3 dif r integral_(r^2/2)^8 dif z=2pi integral_0^4 r^3(8-r^2/2)dif r=1024pi/3. $

【解法2】先按高度z分层，
$ I=integral_0^8 dif z integral_0^(2pi)dif theta integral_0^(sqrt(2z))r^3 dif r=1024pi/3. $
【评析】区域在旋转抛物面上方、平面z=8下方，不能当成圆柱或抛物面下方区域. 柱坐标体积元须包含r；边界方程x²+y²=2z不能代入整个体积内的被积函数.
]

#answer("三（2）")[
令向量场 $F=(z-y,x-z,x-y)$，则 $op("rot")F=(0,0,2)$.取平面 $x-y+z=2$ 内以 $c$ 为边界的曲面，法向量向下.由斯托克斯公式，所求为
$ -2integral.double_(x^2+y^2<=1)dif x dif y=-2pi. $

【解法1】直接参数化，x=cosθ、y=sinθ、z=2−cosθ+sinθ. 顺时针定向对应θ从2π到0，代入后
$ I=-integral_(2pi)^0[2(sin theta+cos theta)-2cos(2theta)-1]dif theta=-2pi. $
【评析】使用斯托克斯公式时，所选曲面的法向须与边界符合右手法则. 若把θ的积分限写成0到2π，就会错一个负号；单独用y=√(1−x²)也不能表示整条闭曲线.
]

#answer("三（3）")[
依题意，$x'=k x(N-x)$，$x(0)=x_0$.分离变量积分，得 $ln(x/(N-x))=k N t+C$.代入初值得
$ x(t)=(N x_0 e^(k N t))/(N-x_0+x_0 e^(k N t)). $
该式也包含 $x_0=0$ 和 $x_0=N$ 时的常数解.

【评析】题设“成正比”对应x′=kx(N−x)，应先分离变量后积分. 未掌握者人数为N−x，不能将正比写成反比，也不能把未知函数x当成常数直接积分右端.
]

#answer("四（1）")[
切平面为 $2(x-1)-4(y+2)-(z-5)=0$，即 $2x-4y-z-5=0$.将直线的 $y=-x-b$、$z=x+a(-x-b)-3$ 代入，得 $(5+a)x+(4+a)b-2=0$.恒成立要求 $a=-5$、$b=-2$.

【解法2】过直线的平面束为
$ lambda(x+y+b)+mu(x+a y-z-3)=0. $
与切平面2x−4y−z−5=0比较系数比例，得到λ=μ、a=−5、b=−2.
]

#answer("四（2）")[
令 $u=e^x sin y$，链式法则给出
$ z_(x x)=f''(u)e^(2x)sin^2 y+f'(u)e^x sin y, $
$ z_(y y)=f''(u)e^(2x)cos^2 y-f'(u)e^x sin y. $
相加并代入方程得 $f''(u)-f(u)=0$，所以 $f(u)=C_1 e^u+C_2 e^(-u)$.

【评析】f是关于中间变量u的一元函数，其导数记为f′、f″. 化简后的f″(u)=f(u)是二阶常系数线性齐次微分方程，须解得关于u的表达式，不能把z或x误作自变量.
]

#answer("五、")[
由题设 $f(0)=phi(0)=0$.当 $x≠0$ 时换元得 $phi(x)=1/x integral_0^x f(u)dif u$，所以
$ phi'(x)=cases((x f(x)-integral_0^x f(u)dif u)/x^2 & quad x≠0,A/2 & quad x=0). $
其中 $phi'(0)=lim_(x arrow 0)(integral_0^x f(u)dif u)/x^2=A/2$.又
$ lim_(x arrow 0)phi'(x)=A-A/2=A/2=phi'(0), $
故 $phi'$ 在0处连续.
]

#answer("六、")[
（1）由算术—几何平均不等式，$a_(n+1)>=1$；又 $a_(n+1)-a_n=(1-a_n^2)/(2a_n)<=0$.故数列单调有下界，极限存在，且由递推式知极限为1.

（2）有 $0<=a_n/a_(n+1)-1<=(a_n-a_(n+1))$.而 $sum_(n=1)^m (a_n-a_(n+1))=a_1-a_(m+1)arrow 1$，由比较判别法，所给级数收敛.
]

#answer("七（1）")[
解空间维数为 $4-2=2$，且 $alpha_1,alpha_2$ 线性无关.施密特正交化得
$ beta_1=alpha_1, quad beta_2=alpha_2-1/3 alpha_1=2/3 (-2,1,5,-3)^T. $
因此所求标准正交基为 $epsilon_1=(1,1,2,3)^T/sqrt(15)$、$epsilon_2=(-2,1,5,-3)^T/sqrt(39)$.
]

#answer("七（2）")[
（i）由 $A xi=lambda xi$ 得 $-1=lambda$、$a+2=lambda$、$b+1=-lambda$，故 $a=-3$、$b=0$、$lambda=-1$.

（ii）此时 $det(lambda I-A)=(lambda+1)^3$，而 $op("r")(A+I)=2$，所以唯一特征值 $-1$ 的特征子空间仅为一维，$A$ 不能相似于对角阵.
]

#answer("八、")[
（1）$det B=-det A≠0$，故 $B$ 可逆.

（2）记 $E_(i j)$ 为将单位矩阵第 $i,j$ 行互换所得的初等矩阵.则 $B=E_(i j)A$，且 $E_(i j)^(-1)=E_(i j)$，故 $A B^(-1)=A A^(-1)E_(i j)=E_(i j)$.
]

#answer("九、")[
有 $X∼B(3,2/5)$，分布律为
$ mat(X,0,1,2,3;P,27/125,54/125,36/125,8/125). $
分布函数为
$ F(x)=cases(0 & quad x<0,27/125 & quad 0<=x<1,81/125 & quad 1<=x<2,117/125 & quad 2<=x<3,1 & quad x>=3). $
数学期望 $E X=3 times 2/5=6/5$.

【分析】三次遇红灯相互独立，且每次概率相同，因此X是二项随机变量. 分布函数必须把所有不大于x的离散取值的概率累加，而不是照抄分布律. 分段区间的端点按F(x)=P(X≤x)处理.
]

#answer("十、")[
由 $E X=(theta+1)/(theta+2)$，令其等于 $overline(X)$，得矩估计量
$ hat(theta)_M=(2overline(X)-1)/(1-overline(X)). $
在样本值均处于 $(0,1)$ 时，对数似然为 $ell(theta)=n ln(theta+1)+theta sum_(i=1)^n ln x_i$.令 $ell'(theta)=n/(theta+1)+sum ln x_i=0$，且 $ell''(theta)<0$，得极大似然估计量
$ hat(theta)_L=-1-n/(sum_(i=1)^n ln X_i). $

【分析】矩估计用总体的一阶矩等于样本均值，再解出参数. 极大似然法需把每个样本观测值代入密度，取乘积并对参数求导；样本取值范围也要写出. 不能把似然函数中的xᵢ漏写下标，误写成同一个x的n次乘积.
]

