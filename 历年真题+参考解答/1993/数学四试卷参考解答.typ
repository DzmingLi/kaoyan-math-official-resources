#import "../template.typ": exam, answer
#show: exam.with(year: 1993, subject: "四", title: "1993年全国工学、经济学硕士研究生入学考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#import "@preview/cetz:0.5.2" as cetz
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 1993 数学四试卷参考解答

= 一、填空题

#answer("1（1）")[
由 $sin(2/x)∼2/x$，原极限为 $lim_(x arrow infinity)(6x^2+10)/(5x^2+3x)=6/5$.
]

#answer("1（2）")[
令 $u=(3x-2)/(3x+2)$，则 $u(0)=-1$，$u'(0)=3$，所以 $y'(0)=3f'(-1)=3pi/4$.
]

#answer("1（3）")[
这是公比 $ln 3/2∈(0,1)$ 的几何级数，其和为 $1/(1-ln 3/2)=2/(2-ln 3)$.
]

#answer("1（4）")[
$A$ 的所有三阶子式均为零，所以 $A^*=0$，秩为0.
]

#answer("1（5）")[
由中心极限定理，近似置信区间为 $5±1.96/sqrt(100)$，即 $(4.804,5.196)$；采用正态临界值2近似时为 $(4.8,5.2)$.
]

= 二、选择题

#answer("2（1）")[
C.$abs(f(x))<=sqrt(abs(x)) arrow 0$，故连续；但差商 $f(x)/x$ 振荡且无界，故不可导.
]

#answer("2（2）")[
A.由变限积分求导法则，$F'(x)=f(ln x)/x-f(1/x)(-1/x^2)$.
]

#answer("2（3）")[
B.不同特征值对应的特征向量线性无关，故此条件充分；单位矩阵可以对角化但特征值重复，故不必要.
]

#answer("2（4）")[
D，事件包含按忽略零概率集的意义理解.由条件概率得 $P(A∩B)=P(A)$，即 $P(A∩overline(B))=0$；因此 $A$ 发生时，$B$ 以概率1发生.严格的集合包含关系本身不能仅由此概率等式推出.
]

#answer("2（5）")[
B.由对称性，$F(0)=1/2$，且 $F(-a)=1-F(a)=1/2-integral_0^a phi(x)dif x$.
]

= 解答题

#answer("三、")[
将方程两边微分，得
$ dif z-dif y-dif x+e^(z-y-x)dif x+x e^(z-y-x)(dif z-dif y-dif x)=0. $
整理得
$ dif z=(1+(x-1)e^(z-y-x))/(1+x e^(z-y-x))dif x+dif y. $
]

#answer("四、")[
左边为 $e^(-2a)$.右边两次分部积分，得
$ integral_a^(+infinity)4x^2 e^(-2x)dif x=[-(2x^2+2x+1)e^(-2x)]_a^(+infinity)=(2a^2+2a+1)e^(-2a). $
因此 $2a^2+2a=0$，得 $a=0$ 或 $a=-1$.
]

#answer("五、")[
（1）由 $p=d-e q$，利润为 $L=p q-C=(d-b)q-(e+a)q^2-c$.令 $L'=d-b-2(e+a)q=0$，得
$ q_*=(d-b)/(2(e+a)), quad L_max=(d-b)^2/(4(e+a))-c. $
因 $L''=-2(e+a)<0$，该点给出最大利润.

（2）按需求价格弹性的正号约定，
$ eta=-p/q dot (dif q)/(dif p)=p/(e q)=(d-e q)/(e q). $
若采用带符号的弹性定义，则为其相反数.

（3）由 $abs(eta)=1$ 得 $q=d/(2e)$.
]

#answer("六、")[
由面积条件，$integral_0^x f(t)dif t=e^x-1-f(x)$.求导得 $f'+f=e^x$，所以 $f(x)=C e^(-x)+e^x/2$.由 $f(0)=0$ 得 $C=-1/2$，因此
$ f(x)=(e^x-e^(-x))/2. $
#cetz.canvas({
  import cetz.draw: *
  let f(x) = (calc.exp(x) - calc.exp(-x)) / 2
  let pts = range(101).map(i => { let x = 1.5 * i / 100; (2 * x, f(x)) })
  line((0,0), ..pts, (3,0), close: true, fill: luma(235))
  line(..range(121).map(i => { let x = 1.65 * i / 120; (2 * x, f(x)) }))
  line(..range(121).map(i => { let x = 1.65 * i / 120; (2 * x, calc.exp(x) - 1) }))
  line((-0.3,0),(4,0),mark: (end: ">"))
  line((0,-0.3),(0,4.6),mark: (end: ">"))
  line((3,0),(3,4.5))
  content((-0.15,-0.2), $O$)
  content((4.1,0), $x$)
  content((-0.2,4.65), $y$)
  content((2.85,4.6), $M$)
  content((3,-0.25), $N$)
  content((3.25,f(1.5)), $P_1$)
  content((3.25,calc.exp(1.5)-1), $P_2$)
  content((4.25,4.2), $y=e^x-1$)
  content((4.15,2.55), $y=f(x)$)
  content((2,0.6), $S$)
})
]

#answer("七、")[
证一：分别在 $[0,c]$ 与 $[c,1]$ 上应用拉格朗日中值定理，得 $xi_1∈(0,c)$、$xi_2∈(c,1)$，使 $f'(xi_1)=f'(xi_2)=f(1)-f(0)$.再对 $f'$ 应用罗尔定理，得某 $xi∈(xi_1,xi_2)$ 满足 $f''(xi)=0$.

证二：令 $F(x)=f(x)-[f(1)-f(0)]x-f(0)$，则 $F(0)=F(c)=F(1)=0$.连续两次应用罗尔定理即得 $F''(xi)=f''(xi)=0$.
]

#answer("八、")[
对增广矩阵作初等行变换，化为
$ mat(1,1,k,4;0,2,k-2,8;0,0,(1+k)(4-k)/2,k(k-4)). $
当 $k≠-1,4$ 时有唯一解，回代得
$ x_1=(k^2+2k)/(k+1), quad x_2=(k^2+2k+4)/(k+1), quad x_3=(-2k)/(k+1). $
当 $k=-1$ 时，最后一行对应 $0=5$，故无解.

当 $k=4$ 时，方程组等价于 $x_1+3x_3=0$、$x_2+x_3=4$，有无穷多组解：
$ X=(0,4,0)^T+c(-3,-1,1)^T, quad c∈bold(upright(R)). $
]

#answer("九、")[
变换前矩阵为 $A=mat(1,alpha,1;alpha,1,beta;1,beta,1)$，变换后为 $B=op("diag")(0,1,2)$.由正交相似，特征多项式相等：
$ lambda^3-3lambda^2+(2-alpha^2-beta^2)lambda+(alpha-beta)^2=lambda^3-3lambda^2+2lambda. $
比较系数得 $alpha^2+beta^2=0$，故 $alpha=beta=0$.
]

#answer("十、")[
（1）记 $p=P(A)=P(B)$，由独立性得 $2p-p^2=3/4$，取 $0<=p<=1$ 内的根 $p=1/2$.于是
$ P(X>a)=integral_a^2 3/8 x^2 dif x=1-a^3/8=1/2, $
故 $a=root(3,4)$.

（2）$E(1/X^2)=integral_0^2 (1/x^2) dot (3/8 x^2)dif x=3/4$.
]

#answer("十一、")[
（1）按泊松故障过程模型，$T>t$ 等价于这一时间段内没有故障.因此当 $t>=0$ 时，$P(T>t)=P(N(t)=0)=e^(-lambda t)$，从而
$ F_T(t)=cases(0 & t<0, 1-e^(-lambda t) & t>=0). $
即 $T$ 服从参数为 $lambda$ 的指数分布.

（2）$Q=P(T>=16|T>=8)=P(T>=16)/P(T>=8)=e^(-16lambda)/e^(-8lambda)=e^(-8lambda)$，时间以小时计.
]

