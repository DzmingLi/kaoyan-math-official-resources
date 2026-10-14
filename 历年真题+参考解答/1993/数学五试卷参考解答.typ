#import "../template.typ": exam, answer
#show: exam.with(year: 1993, subject: "五", title: "1993年全国工学、经济学硕士研究生入学考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#import "@preview/cetz:0.5.2" as cetz
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 1993 数学五试卷参考解答

= 一、填空题

#answer("1（1）")[
有理化得 $n/(sqrt(n(n+1)/2)+sqrt(n(n-1)/2)) arrow 1/sqrt(2)=sqrt(2)/2$.
]

#answer("1（2）")[
令 $u=(3x-2)/(3x+2)$，有 $u(0)=-1$、$u'(0)=3$.由复合函数求导得 $y'(0)=3f'(-1)=3pi/2$（在实值定义域端点按单侧导数理解）.
]

#answer("1（3）")[
令 $u=sqrt(1-x)$，则原积分为 $-2integral dif u/(1+u^2)=-2arctan sqrt(1-x)+C$.
]

#answer("1（4）")[
所有三阶子式均为零，故 $A^*=0$，秩为0.
]

#answer("1（5）")[
条件是两件中至少一件不合格，故所求条件概率为
$ binom(4,2)/(binom(10,2)-binom(6,2))=6/30=1/5. $
]

= 二、选择题

#answer("2（1）")[
C.由 $abs(f(x))<=sqrt(abs(x))$ 知 $f(x) arrow 0=f(0)$，所以连续；差商 $f(x)/x$ 无极限，所以不可导.
]

#answer("2（2）")[
A.由变限积分求导法则，$F'(x)=f(ln x)/x-f(1/x)(-1/x^2)$.
]

#answer("2（3）")[
C.交换第一、三列并按末列拆开，得 $-[m+det(alpha_1,alpha_2,alpha_3,beta_2)]=-m+n$.
]

#answer("2（4）")[
B.矩阵为 $3A^(-2)$，对应特征值为 $3/lambda^2=3/4$.
]

#answer("2（5）")[
A.标准化得 $p_1=Phi(-1)$，$p_2=1-Phi(1)=Phi(-1)$，与 $mu$ 无关.
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
（1）平均成本 $y=C/x=25000/x+200+x/40$，故 $y'=-25000/x^2+1/40$.在 $x>0$ 内唯一驻点为 $x=1000$，其前导数为负、其后为正，故应生产1000件.

（2）利润 $L=500x-C=300x-25000-x^2/40$，令 $L'=300-x/20=0$，得 $x=6000$.又 $L''=-1/20<0$，故应生产6000件.
]

#answer("六、")[
令 $f(x)=x^p/p+1/q-x$，则 $f'=x^(p-1)-1$，在 $(0,1)$ 为负，在 $(1,+infinity)$ 为正.因此最小值为 $f(1)=1/p+1/q-1=0$，即得结论.
]

#answer("七、")[
定义域为 $(-infinity,0)∪(0,+infinity)$.求导得
$ y'=((x-3)(x+2))/x^2 e^(1/x), quad y''=(13x+6)/x^4 e^(1/x). $
因此在 $(-infinity,-2)$、$(3,+infinity)$ 上递增，在 $(-2,0)$、$(0,3)$ 上递减.极大值为 $y(-2)=4/sqrt(e)$，极小值为 $y(3)=9e^(1/3)$.

在 $(-infinity,-6/13)$ 上 $y''<0$，在 $(-6/13,0)$、$(0,+infinity)$ 上 $y''>0$，拐点为 $(-6/13,72/13 e^(-13/6))$.

$lim_(x arrow 0^+)y=+infinity$，$lim_(x arrow 0^-)y=0$，故 $x=0$ 为竖直渐近线.又 $lim_(x arrow ±infinity)[y-x]=7$，所以 $y=x+7$ 为斜渐近线.曲线与 $x$ 轴交于 $(-6,0)$，图形如下.
#cetz.canvas({
  import cetz.draw: *
  let f(x) = (x + 6) * calc.exp(1 / x)
  let p(x,y) = (0.38 * x,0.28 * y)
  line(p(-10,0),p(10,0),mark: (end: ">"))
  line(p(0,-4),p(0,24),mark: (end: ">"))
  line(p(-10,-3),p(10,17),stroke: (dash: "dashed"))
  line(..range(301).map(i => {let x = -10 + 9.98 * i / 300; p(x,f(x))}))
  line(..range(301).map(i => {let x = 0.85 + 9.15 * i / 300; p(x,f(x))}))
  line(p(-2,0),p(-2,f(-2)),p(0,f(-2)),stroke: (dash: "dashed"))
  line(p(3,0),p(3,f(3)),p(0,f(3)),stroke: (dash: "dashed"))
  circle(p(0,0),radius: 0.035,fill: white)
  content(p(-0.4,-0.8), $O$)
  content(p(10.5,0), $x$)
  content(p(-0.4,24.5), $y$)
  content(p(-7,-0.8), $-7$)
  content(p(-2,-0.8), $-2$)
  content(p(3,-0.8), $3$)
  content(p(-0.6,7), $7$)
  content(p(1.2,3.1), $4/sqrt(e)$)
  content(p(-1.8,f(3)), $9e^(1/3)$)
  content(p(7.5,12.4), $y=x+7$)
})
]

#answer("八、")[
由 $A^*=det(A)A^(-1)$，有 $(A^*)^(-1)=det(A^(-1))A$.计算得
$ det(A^(-1))=2, quad A=mat(5/2,-1,-1/2;-1,1,0;-1/2,0,1/2). $
因此
$ (A^*)^(-1)=mat(5,-2,-1;-2,2,0;-1,0,1). $
]

#answer("九、")[
线性无关.设 $A K=0$，其中 $K=(k_1,dots,k_n)^T$，左乘 $B$ 得 $K=B A K=0$.故列向量的线性组合等于零时，系数只能全部为零.
]

#answer("十、")[
（1）记 $p=P(A)$，则 $P(B)=1-p$，由独立性得 $P(A∪B)=1-p(1-p)=7/9$，解得 $p=1/3$ 或 $2/3$.又 $p=(a-1)/2$，所以 $a=5/3$ 或 $7/3$.

（2）$E(1/X)=1/2 integral_1^3 dif x/x=1/2 ln 3$.
]

#answer("十一、")[
（1）按泊松故障过程模型，$T>t$ 等价于这一时间段内没有故障.因此当 $t>=0$ 时，$P(T>t)=P(N(t)=0)=e^(-lambda t)$，从而
$ F_T(t)=cases(0 & t<0, 1-e^(-lambda t) & t>=0). $
即 $T$ 服从参数为 $lambda$ 的指数分布.

（2）$Q=P(T>=16|T>=8)=P(T>=16)/P(T>=8)=e^(-16lambda)/e^(-8lambda)=e^(-8lambda)$，时间以小时计.
]

