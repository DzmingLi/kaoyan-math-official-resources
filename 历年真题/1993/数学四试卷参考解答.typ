#import "../template.typ": exam
#show: exam.with(year: 1993, subject: "四", title: "1993年全国工学、经济学硕士研究生入学考试")
#import "@preview/ezexam:0.3.1" as ezexam
#import "@preview/cetz:0.4.2" as cetz
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(true)


= 一、填空题（15分，每小题3分）
#ezexam.counter-question.step()

（1）$lim_(x arrow infinity)(3x^2+5)/(5x+3) sin(2/x)=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
由 $sin(2/x)∼2/x$，原极限为 $lim_(x arrow infinity)(6x^2+10)/(5x^2+3x)=6/5$.
]

（2）已知 $y=f((3x-2)/(3x+2))$，$f'(x)=arctan(x^2)$，则 $y'|_(x=0)=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
令 $u=(3x-2)/(3x+2)$，则 $u(0)=-1$，$u'(0)=3$，所以 $y'(0)=3f'(-1)=3pi/4$.
]

（3）级数 $sum_(n=0)^infinity (ln 3)^n/2^n$ 的和为 #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
这是公比 $ln 3/2∈(0,1)$ 的几何级数，其和为 $1/(1-ln 3/2)=2/(2-ln 3)$.
]

（4）设4阶方阵 $A$ 的秩为2，则其伴随矩阵 $A^*$ 的秩为 #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$A$ 的所有三阶子式均为零，所以 $A^*=0$，秩为0.
]

（5）设总体 $X$ 的方差为1，根据来自 $X$ 的容量为100的简单随机样本，测得样本均值为5，则 $X$ 的数学期望的置信度近似等于0.95的置信区间为 #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
由中心极限定理，近似置信区间为 $5±1.96/sqrt(100)$，即 $(4.804,5.196)$；采用正态临界值2近似时为 $(4.8,5.2)$.
]

= 二、选择题（15分，每小题3分）
#ezexam.counter-question.step()

（1）设函数 $f(x)=cases(sqrt(abs(x))sin(1/x^2) & x≠0, 0 & x=0)$，则 $f(x)$ 在点 $x=0$ 处（　）.
#choices[极限不存在][极限存在但不连续][连续但不可导][可导]
#ezexam.solution(show-number: false)[
C.$abs(f(x))<=sqrt(abs(x)) arrow 0$，故连续；但差商 $f(x)/x$ 振荡且无界，故不可导.
]

（2）设 $f(x)$ 为连续函数，且 $F(x)=integral_(1/x)^(ln x)f(t)dif t$，则 $F'(x)$ 等于（　）.
#choices[$1/x f(ln x)+1/x^2 f(1/x)$][$f(ln x)+f(1/x)$][$1/x f(ln x)-1/x^2 f(1/x)$][$f(ln x)-f(1/x)$]
#ezexam.solution(show-number: false)[
A.由变限积分求导法则，$F'(x)=f(ln x)/x-f(1/x)(-1/x^2)$.
]

（3）$n$ 阶方阵 $A$ 具有 $n$ 个不同的特征值是 $A$ 与对角阵相似的（　）.
#choices[充分必要条件][充分而非必要条件][必要而非充分条件][既非充分也非必要条件]
#ezexam.solution(show-number: false)[
B.不同特征值对应的特征向量线性无关，故此条件充分；单位矩阵可以对角化但特征值重复，故不必要.
]

（4）假设事件 $A$ 和 $B$ 满足 $P(B|A)=1$，则（　）.
#choices[$A$ 是必然事件][$P(B|overline(A))=0$][$A⊃B$][$A⊂B$]
#ezexam.solution(show-number: false)[
D，事件包含按忽略零概率集的意义理解.由条件概率得 $P(A∩B)=P(A)$，即 $P(A∩overline(B))=0$；因此 $A$ 发生时，$B$ 以概率1发生.严格的集合包含关系本身不能仅由此概率等式推出.
]

（5）设随机变量 $X$ 的密度函数为 $phi(x)$，且 $phi(-x)=phi(x)$，$F(x)$ 是 $X$ 的分布函数，则对任意实数 $a$，有（　）.
#choices[$F(-a)=1-integral_0^a phi(x)dif x$][$F(-a)=1/2-integral_0^a phi(x)dif x$][$F(-a)=F(a)$][$F(-a)=2F(a)-1$]
#ezexam.solution(show-number: false)[
B.由对称性，$F(0)=1/2$，且 $F(-a)=1-F(a)=1/2-integral_0^a phi(x)dif x$.
]

#ezexam.question(label: n => [三、])[
（5分）

设 $z=f(x,y)$ 是由方程 $z-y-x+x e^(z-y-x)=0$ 所确定的二元函数，求 $dif z$.
#ezexam.solution(show-number: false)[
将方程两边微分，得
$ dif z-dif y-dif x+e^(z-y-x)dif x+x e^(z-y-x)(dif z-dif y-dif x)=0. $
整理得
$ dif z=(1+(x-1)e^(z-y-x))/(1+x e^(z-y-x))dif x+dif y. $
]

]

#ezexam.question(label: n => [四、])[
（7分）

已知 $lim_(x arrow infinity)((x-a)/(x+a))^x=integral_a^(+infinity)4x^2 e^(-2x)dif x$，求常数 $a$ 的值.
#ezexam.solution(show-number: false)[
左边为 $e^(-2a)$.右边两次分部积分，得
$ integral_a^(+infinity)4x^2 e^(-2x)dif x=[-(2x^2+2x+1)e^(-2x)]_a^(+infinity)=(2a^2+2a+1)e^(-2a). $
因此 $2a^2+2a=0$，得 $a=0$ 或 $a=-1$.
]

]

#ezexam.question(label: n => [五、])[
（9分）

设某产品的成本函数为 $C=a q^2+b q+c$，需求函数为 $q=(d-p)/e$.其中 $C$ 为成本，$q$ 为需求量（即产量），$p$ 为单价；$a,b,c,d,e$ 都是正的常数，且 $d>b$.求：

（1）利润最大时的产量及最大利润；

（2）需求对价格的弹性；

（3）需求对价格弹性的绝对值为1时的产量.
#ezexam.solution(show-number: false)[
（1）由 $p=d-e q$，利润为 $L=p q-C=(d-b)q-(e+a)q^2-c$.令 $L'=d-b-2(e+a)q=0$，得
$ q_*=(d-b)/(2(e+a)), quad L_max=(d-b)^2/(4(e+a))-c. $
因 $L''=-2(e+a)<0$，该点给出最大利润.

（2）按需求价格弹性的正号约定，
$ eta=-p/q dot (dif q)/(dif p)=p/(e q)=(d-e q)/(e q). $
若采用带符号的弹性定义，则为其相反数.

（3）由 $abs(eta)=1$ 得 $q=d/(2e)$.
]

]

#ezexam.question(label: n => [六、])[
（8分）

假设：（1）函数 $y=f(x)$（$0<=x<infinity$）满足条件 $f(0)=0$ 和 $0<=f(x)<=e^x-1$；（2）平行于 $y$ 轴的动直线 $M N$ 与曲线 $y=f(x)$ 和 $y=e^x-1$ 分别相交于点 $P_1$ 和 $P_2$；（3）曲线 $y=f(x)$、直线 $M N$ 与 $x$ 轴所围封闭图形的面积 $S$ 恒等于线段 $P_1 P_2$ 的长度.求函数 $y=f(x)$ 的表达式.
#ezexam.solution(show-number: false)[
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

]

#ezexam.question(label: n => [七、])[
（6分）

假设函数 $f(x)$ 在 $[0,1]$ 上连续，在 $(0,1)$ 内二阶可导.过点 $A(0,f(0))$ 与 $B(1,f(1))$ 的直线与曲线 $y=f(x)$ 相交于点 $C(c,f(c))$，其中 $0<c<1$.

证明：在 $(0,1)$ 内至少存在一点 $xi$ 使 $f''(xi)=0$.
#ezexam.solution(show-number: false)[
证一：分别在 $[0,c]$ 与 $[c,1]$ 上应用拉格朗日中值定理，得 $xi_1∈(0,c)$、$xi_2∈(c,1)$，使 $f'(xi_1)=f'(xi_2)=f(1)-f(0)$.再对 $f'$ 应用罗尔定理，得某 $xi∈(xi_1,xi_2)$ 满足 $f''(xi)=0$.

证二：令 $F(x)=f(x)-[f(1)-f(0)]x-f(0)$，则 $F(0)=F(c)=F(1)=0$.连续两次应用罗尔定理即得 $F''(xi)=f''(xi)=0$.
]

]

#ezexam.question(label: n => [八、])[
（10分）

$k$ 为何值时，线性方程组
$ cases(x_1+x_2+k x_3=4,-x_1+k x_2+x_3=k^2,x_1-x_2+2x_3=-4) $
有唯一解、无解、有无穷多组解？在有解情况下，求出其全部解.
#ezexam.solution(show-number: false)[
对增广矩阵作初等行变换，化为
$ mat(1,1,k,4;0,2,k-2,8;0,0,(1+k)(4-k)/2,k(k-4)). $
当 $k≠-1,4$ 时有唯一解，回代得
$ x_1=(k^2+2k)/(k+1), quad x_2=(k^2+2k+4)/(k+1), quad x_3=(-2k)/(k+1). $
当 $k=-1$ 时，最后一行对应 $0=5$，故无解.

当 $k=4$ 时，方程组等价于 $x_1+3x_3=0$、$x_2+x_3=4$，有无穷多组解：
$ X=(0,4,0)^T+c(-3,-1,1)^T, quad c∈bold(upright(R)). $
]

]

#ezexam.question(label: n => [九、])[
（9分）

设二次型 $f=x_1^2+x_2^2+x_3^2+2alpha x_1 x_2+2beta x_2 x_3+2x_1 x_3$ 经正交变换 $X=P Y$ 化成 $f=y_2^2+2y_3^2$，其中 $X=(x_1,x_2,x_3)^T$ 和 $Y=(y_1,y_2,y_3)^T$ 是三维列向量，$P$ 是3阶正交矩阵.试求常数 $alpha,beta$.
#ezexam.solution(show-number: false)[
变换前矩阵为 $A=mat(1,alpha,1;alpha,1,beta;1,beta,1)$，变换后为 $B=op("diag")(0,1,2)$.由正交相似，特征多项式相等：
$ lambda^3-3lambda^2+(2-alpha^2-beta^2)lambda+(alpha-beta)^2=lambda^3-3lambda^2+2lambda. $
比较系数得 $alpha^2+beta^2=0$，故 $alpha=beta=0$.
]

]

#ezexam.question(label: n => [十、])[
（8分）

设随机变量 $X$ 和 $Y$ 同分布，$X$ 的概率密度为
$ f(x)=cases(3/8 x^2 & 0<x<2, 0 & "其他"). $
（1）已知事件 $A=\{X>a\}$ 和 $B=\{Y>a\}$ 独立，且 $P(A∪B)=3/4$，求常数 $a$；

（2）求 $1/X^2$ 的数学期望.
#ezexam.solution(show-number: false)[
（1）记 $p=P(A)=P(B)$，由独立性得 $2p-p^2=3/4$，取 $0<=p<=1$ 内的根 $p=1/2$.于是
$ P(X>a)=integral_a^2 3/8 x^2 dif x=1-a^3/8=1/2, $
故 $a=root(3,4)$.

（2）$E(1/X^2)=integral_0^2 (1/x^2) dot (3/8 x^2)dif x=3/4$.
]

]

#ezexam.question(label: n => [十一、])[
（8分）

假设一大型设备在任何长为 $t$ 的时间内发生故障的次数 $N(t)$ 服从参数为 $lambda t$ 的泊松分布.

（1）求相继两次故障之间时间间隔 $T$ 的概率分布；

（2）求在设备已经无故障工作8小时的情形下，再无故障运行8小时的概率 $Q$.
#ezexam.solution(show-number: false)[
（1）按泊松故障过程模型，$T>t$ 等价于这一时间段内没有故障.因此当 $t>=0$ 时，$P(T>t)=P(N(t)=0)=e^(-lambda t)$，从而
$ F_T(t)=cases(0 & t<0, 1-e^(-lambda t) & t>=0). $
即 $T$ 服从参数为 $lambda$ 的指数分布.

（2）$Q=P(T>=16|T>=8)=P(T>=16)/P(T>=8)=e^(-16lambda)/e^(-8lambda)=e^(-8lambda)$，时间以小时计.
]
]

