#import "../template.typ": exam
#show: exam.with(year: 1993, subject: "五", title: "1993年全国工学、经济学硕士研究生入学考试")
#import "@preview/ezexam:0.3.1" as ezexam
#import "@preview/cetz:0.4.2" as cetz
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(true)


= 一、填空题（15分，每小题3分）
#ezexam.counter-question.step()

（1）$lim_(n arrow infinity)[sqrt(1+2+dots+n)-sqrt(1+2+dots+(n-1))]=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
有理化得 $n/(sqrt(n(n+1)/2)+sqrt(n(n-1)/2)) arrow 1/sqrt(2)=sqrt(2)/2$.
]

（2）已知 $y=f((3x-2)/(3x+2))$，$f'(x)=arcsin(x^2)$，则 $y'|_(x=0)=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
令 $u=(3x-2)/(3x+2)$，有 $u(0)=-1$、$u'(0)=3$.由复合函数求导得 $y'(0)=3f'(-1)=3pi/2$（在实值定义域端点按单侧导数理解）.
]

（3）$integral dif x/((2-x)sqrt(1-x))=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
令 $u=sqrt(1-x)$，则原积分为 $-2integral dif u/(1+u^2)=-2arctan sqrt(1-x)+C$.
]

（4）设4阶方阵 $A$ 的秩为2，则其伴随矩阵 $A^*$ 的秩为 #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
所有三阶子式均为零，故 $A^*=0$，秩为0.
]

（5）设10件产品中有4件不合格品，从中任取两件，已知所取两件产品中有一件是不合格品，则另一件也是不合格品的概率为 #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
条件是两件中至少一件不合格，故所求条件概率为
$ binom(4,2)/(binom(10,2)-binom(6,2))=6/30=1/5. $
]

= 二、选择题（15分，每小题3分）
#ezexam.counter-question.step()

（1）设函数 $f(x)=cases(sqrt(abs(x))sin(1/x^2) & x≠0, 0 & x=0)$，则 $f(x)$ 在点 $x=0$ 处（　）.
#choices[极限不存在][极限存在但不连续][连续但不可导][可导]
#ezexam.solution(show-number: false)[
C.由 $abs(f(x))<=sqrt(abs(x))$ 知 $f(x) arrow 0=f(0)$，所以连续；差商 $f(x)/x$ 无极限，所以不可导.
]

（2）设 $f(x)$ 为连续函数，且 $F(x)=integral_(1/x)^(ln x)f(t)dif t$，则 $F'(x)$ 等于（　）.
#choices[$1/x f(ln x)+1/x^2 f(1/x)$][$1/x f(ln x)+f(1/x)$][$1/x f(ln x)-1/x^2 f(1/x)$][$f(ln x)-f(1/x)$]
#ezexam.solution(show-number: false)[
A.由变限积分求导法则，$F'(x)=f(ln x)/x-f(1/x)(-1/x^2)$.
]

（3）若 $alpha_1,alpha_2,alpha_3,beta_1,beta_2$ 都是四维列向量，且四阶行列式 $det(alpha_1,alpha_2,alpha_3,beta_1)=m$，$det(alpha_1,alpha_2,beta_2,alpha_3)=n$，则四阶行列式 $det(alpha_3,alpha_2,alpha_1,beta_1+beta_2)$ 等于（　）.
#choices[$m+n$][$-(m+n)$][$n-m$][$m-n$]
#ezexam.solution(show-number: false)[
C.交换第一、三列并按末列拆开，得 $-[m+det(alpha_1,alpha_2,alpha_3,beta_2)]=-m+n$.
]

（4）设 $lambda=2$ 是非奇异矩阵 $A$ 的一个特征值，则矩阵 $(1/3 A^2)^(-1)$ 有一特征值等于（　）.
#choices[$4/3$][$3/4$][$1/2$][$1/4$]
#ezexam.solution(show-number: false)[
B.矩阵为 $3A^(-2)$，对应特征值为 $3/lambda^2=3/4$.
]

（5）设随机变量 $X$ 与 $Y$ 均服从正态分布，$X∼N(mu,4^2)$，$Y∼N(mu,5^2)$；记 $p_1=P(X<=mu-4)$，$p_2=P(Y>=mu+5)$，则（　）.
#choices[对任何实数 $mu$，都有 $p_1=p_2$][对任何实数 $mu$，都有 $p_1<p_2$][只对 $mu$ 的个别值，才有 $p_1=p_2$][对任何实数 $mu$，都有 $p_1>p_2$]
#ezexam.solution(show-number: false)[
A.标准化得 $p_1=Phi(-1)$，$p_2=1-Phi(1)=Phi(-1)$，与 $mu$ 无关.
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
（7分）

已知某厂生产 $x$ 件产品的成本为 $C=25000+200x+1/40 x^2$（元）.问：

（1）要使平均成本最小，应生产多少件产品？

（2）若产品以每件500元售出，要使利润最大，应生产多少件产品？
#ezexam.solution(show-number: false)[
（1）平均成本 $y=C/x=25000/x+200+x/40$，故 $y'=-25000/x^2+1/40$.在 $x>0$ 内唯一驻点为 $x=1000$，其前导数为负、其后为正，故应生产1000件.

（2）利润 $L=500x-C=300x-25000-x^2/40$，令 $L'=300-x/20=0$，得 $x=6000$.又 $L''=-1/20<0$，故应生产6000件.
]

]

#ezexam.question(label: n => [六、])[
（6分）

设 $p,q$ 是大于1的常数，且 $1/p+1/q=1$.证明：对于任意 $x>0$，有 $1/p x^p+1/q>=x$.
#ezexam.solution(show-number: false)[
令 $f(x)=x^p/p+1/q-x$，则 $f'=x^(p-1)-1$，在 $(0,1)$ 为负，在 $(1,+infinity)$ 为正.因此最小值为 $f(1)=1/p+1/q-1=0$，即得结论.
]

]

#ezexam.question(label: n => [七、])[
（13分）

运用导数的知识作函数 $y=(x+6)e^(1/x)$ 的图形.
#ezexam.solution(show-number: false)[
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

]

#ezexam.question(label: n => [八、])[
（8分）

已知三阶矩阵 $A$ 的逆矩阵为
$ A^(-1)=mat(1,1,1;1,2,1;1,1,3), $
试求伴随矩阵 $A^*$ 的逆矩阵.
#ezexam.solution(show-number: false)[
由 $A^*=det(A)A^(-1)$，有 $(A^*)^(-1)=det(A^(-1))A$.计算得
$ det(A^(-1))=2, quad A=mat(5/2,-1,-1/2;-1,1,0;-1/2,0,1/2). $
因此
$ (A^*)^(-1)=mat(5,-2,-1;-2,2,0;-1,0,1). $
]

]

#ezexam.question(label: n => [九、])[
（8分）

设 $A$ 是 $m times n$ 矩阵，$B$ 是 $n times m$ 矩阵，$E$ 是 $n$ 阶单位矩阵（$m>n$）.已知 $B A=E$，试判断 $A$ 的列向量组是否线性相关？为什么？
#ezexam.solution(show-number: false)[
线性无关.设 $A K=0$，其中 $K=(k_1,dots,k_n)^T$，左乘 $B$ 得 $K=B A K=0$.故列向量的线性组合等于零时，系数只能全部为零.
]

]

#ezexam.question(label: n => [十、])[
（8分）

设随机变量 $X$ 和 $Y$ 独立，都在区间 $[1,3]$ 上服从均匀分布；引进事件 $A=\{X<=a\}$、$B=\{Y>a\}$.

（1）已知 $P(A∪B)=7/9$，求常数 $a$.

（2）求 $1/X$ 的数学期望.
#ezexam.solution(show-number: false)[
（1）记 $p=P(A)$，则 $P(B)=1-p$，由独立性得 $P(A∪B)=1-p(1-p)=7/9$，解得 $p=1/3$ 或 $2/3$.又 $p=(a-1)/2$，所以 $a=5/3$ 或 $7/3$.

（2）$E(1/X)=1/2 integral_1^3 dif x/x=1/2 ln 3$.
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

