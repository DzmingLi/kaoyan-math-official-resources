#import "../template.typ": exam, answer
#show: exam.with(year: 1995, subject: "二", title: "1995年全国工学、经济学硕士研究生入学考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 1995 数学二试卷参考解答

= 一、填空题

#answer("1（1）")[
取对数后极限为 $lim_(x arrow 0)2ln(1+3x)/sin x=6$，故原极限为 $e^6$.
]

#answer("1（2）")[
用乘积及变上限积分求导法则，得 $integral_(x^2)^0 cos(t^2)dif t-2x^2 cos(x^4)$.
]

#answer("1（3）")[
展开混合积后，非零项为 $(arrow(a) times arrow(b))dot arrow(c)$ 与 $(arrow(b) times arrow(c))dot arrow(a)$，两项均为2，故答案为4.
]

#answer("1（4）")[
非零项的绝对值比值趋于 $x^2/3$，故在 $abs(x)<sqrt(3)$ 时收敛、$abs(x)>sqrt(3)$ 时发散，$R=sqrt(3)$.

【评析】比值判别式中的x²不能漏掉. 对本题非零项，后一项绝对值与前一项之比趋于x²/3，因此收敛半径为√3；颠倒比值会误得1/√3.
]

#answer("1（5）")[
右乘 $A^(-1)$ 后得 $(A^(-1)-I)B=6I$，所以 $B=6(A^(-1)-I)^(-1)=mat(3,0,0;0,2,0;0,0,1)$.
]

= 二、选择题

#answer("2（1）")[
C.$L$ 的方向向量可取 $(1,3,2)times(2,-1,-10)=(-28,14,-7)$，与平面法向量 $(4,-2,1)$ 平行.
]

#answer("2（2）")[
B.由中值定理，$f(1)-f(0)=f'(xi)$，$0<xi<1$；而 $f'$ 严格递增.

【分析】由 $f(1)-f(0)=f'(xi)$、$0<xi<1$ 及f′严格递增，得到f′(1)＞f(1)−f(0)＞f′(0).
]

#answer("2（3）")[
A.$F$ 在0处右、左导数分别为 $f'(0)+f(0)$、$f'(0)-f(0)$，二者相等当且仅当 $f(0)=0$.
]

#answer("2（4）")[
C.前者由莱布尼茨判别法收敛，后者因 $u_n^2∼1/n$ 而发散.

【分析】ln(1+1/√n)单调趋于0，因此交错级数满足莱布尼茨判别法. 其平方与1/n等价，由正项级数的极限比较判别法，平方项级数发散. 仅有等价关系不足以直接判定交错级数，仍须检查单调性.
]

#answer("2（5）")[
C.先左乘 $P_2$，把第一行加到第三行；再左乘 $P_1$，交换第一、二行，即得到 $B$.
]

= 解答题

#answer("三（1）")[
由隐函数求导，$z'=-(2x phi_1'+e^(sin x)cos x phi_2')/phi_3'$.故
$ (dif u)/(dif x)=f_x+f_y cos x-f_z(2x phi_1'+e^(sin x)cos x phi_2')/phi_3'. $
其中 $phi_i'$ 表示 $phi$ 对第 $i$ 个自变量的偏导数.
]

#answer("三（2）")[
切点处法向量 $(x_0,2y_0,-1)$ 与 $(2,2,-1)$ 平行，故切点为 $(2,1,3)$，切平面为 $2x+2y-z-3=0$.

【解法2】设所求平面为2x+2y−z+c=0. 与曲面联立后，
$ (x-2)^2+2(y-1)^2=2c+6. $
右侧为负时没有交点，为正时有无穷多个交点，仅c=−3时有唯一交点(2,1,3). 因此切平面为2x+2y−z−3=0.
]

#answer("三（3）")[
先对 $x$ 积分，得
$ I=integral_0^1 dif y integral_(-sqrt(1+y^2))^sqrt(1+y^2)x^2 y dif x=2/3 integral_0^1 y(1+y^2)^(3/2)dif y=2/15(4sqrt(2)-1). $

【分析】先作出双曲线两支与y=0、y=1围成的区域，取y为外层变量较方便. 不能把边界关系y²=x²−1直接代入整个区域上的被积函数.
]

#answer("四（1）")[
$dif S=sqrt(2)dif x dif y$，投影区域的极坐标表示为 $-pi/2<=theta<=pi/2$、$0<=r<=2cos theta$.故
$ I=sqrt(2)integral_(-pi/2)^(pi/2)dif theta integral_0^(2cos theta)r^2 dif r=32sqrt(2)/9. $
]

#answer("四（2）")[
偶延拓后 $a_0=0$，分部积分得 $a_n=integral_0^2 (x-1)cos(n pi x/2)dif x=4((-1)^n-1)/(n^2 pi^2)$.故
$ f(x)=-8/pi^2 sum_(k=1)^infinity (cos((2k-1)pi x/2))/(2k-1)^2, quad x∈[0,2]. $

【分析】偶延拓到[−2,2]后周期为4，余弦系数
$ a_n=[frac(2(x-1),n pi)sin frac(n pi x,2)]_0^2-frac(2,n pi)integral_0^2 sin frac(n pi x,2)dif x=frac(4((-1)^n-1),n^2 pi^2). $
偶数指标为零，奇数指标留下−8/(n²π²). 也可不分奇偶，写为
$ f(x)=frac(4,pi^2)sum_(n=1)^infinity frac((-1)^n-1,n^2)cos frac(n pi x,2),quad 0<=x<=2. $
]

#answer("五、")[
设 $M=(x,y)$，切线与 $y$ 轴交于 $A=(0,y-x y')$.由长度条件平方并化简得 $2y y'-y^2/x=-x$.令 $z=y^2$，则 $z'-z/x=-x$，解得 $z=C x-x^2$.由给定点得 $C=3$，故 $y=sqrt(3x-x^2)$，$0<x<3$.
]

#answer("六、")[
路径无关给出 $Q_x=2x$，所以 $Q=x^2+c(y)$.两端积分分别为 $t^2+integral_0^1 c(y)dif y$ 与 $t+integral_0^t c(y)dif y$.对 $t$ 求导得 $2t=1+c(t)$，故 $Q(x,y)=x^2+2y-1$.
]

#answer("七、")[
（1）若内点 $c$ 满足 $g(c)=0$，在 $[a,c]$、$[c,b]$ 各用一次罗尔定理，再对两个导数零点之间用罗尔定理，得某点 $g''=0$，矛盾.

（2）令 $phi=f g'-f'g$，则 $phi(a)=phi(b)=0$.罗尔定理给出内点 $xi$ 使 $phi'(xi)=f(xi)g''(xi)-f''(xi)g(xi)=0$.由两分母非零，即得结论.
]

#answer("八（1）")[
消元得到 $(a-2)(x_3-x_4)=1$，所以 $a≠2$ 时有解.令 $x_4=k$，回代得
$ X=k(-3,0,1,1)^T+((7a-10)/(a-2),(2-2a)/(a-2),1/(a-2),0)^T, $
其中 $k$ 为任意常数.

【原书消元过程】增广矩阵作行变换，
$ mat(1,3,2,1,1;0,1,a,-a,-1;1,2,0,3,3,augment:#4) arrow mat(1,3,2,1,1;0,1,a,-a,-1;0,-1,-2,2,2,augment:#4) $
$ arrow mat(1,3,2,1,1;0,-1,-2,2,2;0,0,a-2,2-a,1,augment:#4). $
a=2时最后一行矛盾；a≠2时系数矩阵和增广矩阵的秩相同，由自由变量得上述通解.
]

#answer("八（2）")[
令 $v=xi_1/sqrt(2)$.实对称矩阵在 $v$ 的正交补上作用为恒等映射，因此 $A=I-2v v^T=mat(1,0,0;0,0,-1;0,-1,0)$.

【解法1】由实对称矩阵不同特征值的特征向量正交，可选另两个特征向量为 $xi_2=(1,0,0)^T$、$xi_3=(0,1,-1)^T$. 单位化后取
$ T=mat(0,1,0;1/sqrt(2),0,1/sqrt(2);1/sqrt(2),0,-1/sqrt(2)), $
则 $T^(-1)=T^T$，$A=T op("diag")(-1,1,1)T^T=mat(1,0,0;0,0,-1;0,-1,0)$.
【解法2】设 $A=mat(a,b,c;b,d,e;c,e,f)$. 由特征向量关系及迹为1，有 $b+c=0$、$d+e=-1$、$e+f=-1$、$a+d+f=1$，所以
$ A=mat(1-2d,b,-b;b,d,-1-d;-b,-1-d,d). $
又 $det A=2b^2+4d^2-1=-1$，故b=d=0，亦得上述矩阵.
]

#answer("九、")[
有 $det(A+I)=det(A+A A^T)=det(A)det(I+A^T)=det(A)det(I+A)$.由于 $det A<0$，$1-det A≠0$，故 $det(A+I)=0$.
]

