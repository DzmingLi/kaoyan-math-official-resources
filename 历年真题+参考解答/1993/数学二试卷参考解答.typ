#import "../template.typ": exam, answer
#show: exam.with(year: 1993, subject: "二", title: "1993年全国工学、经济学硕士研究生入学考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#import "@preview/cetz:0.5.2" as cetz
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 1993 数学二试卷参考解答

= 一、填空题

#answer("1（1）")[
由 $F'(x)=2-1/sqrt(x)<0$ 得 $0<x<1/4$，故可填 $(0,1/4)$（或 $(0,1/4]$）.
]

#answer("1（2）")[
旋转面为 $3x^2+2y^2+3z^2=12$，外法向量可取 $(6x,4y,6z)$.代入该点并单位化，得 $1/sqrt(5)(0,sqrt(2),sqrt(3))$.
]

#answer("1（3）")[
由奇偶性和分部积分，$b_n=2 integral_0^pi x sin n x dif x=2pi(-1)^(n+1)/n$，所以 $b_3=2pi/3$.
]

#answer("1（4）")[
记 $r^2=x^2+y^2+z^2$，则 $u_(x x)=1/r^2-2x^2/r^4$，其余类似.三项相加得 $op("div")(op("grad")u)=1/(x^2+y^2+z^2)$.
]

#answer("1（5）")[
向量 $(1,1,dots,1)^T$ 为非零解，解空间维数为 $n-(n-1)=1$，故通解为 $X=k(1,1,dots,1)^T$，$k$ 为任意常数.
]

= 二、选择题

#answer("2（1）")[
B.$f(x)∼(sin x)^3/3∼x^3/3$，$g(x)∼x^3$，故二者比值趋于 $1/3$.
]

#answer("2（2）")[
A.极坐标方程为 $r^2=cos 2theta$，由四象限对称性，面积为 $4 dot 1/2 integral_0^(pi/4)cos 2theta dif theta$.
]

#answer("2（3）")[
C.方向向量分别取 $(1,-2,1)$ 与 $(1,1,-2)$，夹角余弦为 $abs(1-2-2)/6=1/2$.
]

#answer("2（4）")[
B.由 $P_y=Q_x$ 得 $f'+f=e^x$，解得 $f=e^x/2+C e^(-x)$.由 $f(0)=0$ 得 $C=-1/2$.
]

#answer("2（5）")[
C.$t≠6$ 时 $op("rank")Q=2$，由 $P Q=0$ 得 $op("rank")P<=1$，又 $P≠0$，所以秩为1.
]

= 解答题

#answer("三（1）")[
令 $t=1/x$，则
$ lim_(x arrow infinity)x ln(sin(2/x)+cos(1/x))=lim_(t arrow 0)(ln(sin 2t+cos t))/t=2. $
所以原极限为 $e^2$.
]

#answer("三（2）")[
令 $u=sqrt(e^x-1)$，则 $x=ln(1+u^2)$，$dif x=2u/(1+u^2)dif u$.从而
$ I=2integral ln(1+u^2)dif u=2u ln(1+u^2)-4u+4arctan u+C. $
故 $I=2x sqrt(e^x-1)-4sqrt(e^x-1)+4arctan sqrt(e^x-1)+C$.
]

#answer("三（3）")[
解一：令 $y=x u$，得 $x u'=u^2-2u$，分离变量积分得
$ 1/2 ln abs((u-2)/u)=ln abs(x)+C_1, quad (y-2x)/y=C x^2. $
代入初始条件得 $C=-1$，故 $y=2x/(1+x^2)$.

解二：令 $z=1/y$，得 $z'-z/x=-1/x^2$，所以 $z=1/(2x)+C x$.由初始条件得 $C=1/2$，同样得到上述特解.
]

#answer("四（1）")[
以 $f_1,f_2,f_(11),f_(12),f_(22)$ 表示 $f$ 对两个自变量的偏导数，均在 $(x y,y/x)$ 处取值.由链式法则，
$ z_y=x^4 f_1+x^2 f_2, $
$ z_(y y)=x^5 f_(11)+2x^3 f_(12)+x f_(22), $
$ z_(x y)=4x^3 f_1+2x f_2+x^4 y f_(11)-y f_(22). $
其中混合偏导连续，故 $f_(12)=f_(21)$，交叉项抵消.
]

#answer("四（2）")[
向量场 $(2x z,y z,-z^2)$ 的散度为 $2z+z-2z=z$.由高斯公式及球坐标变换，原积分为
$ integral.triple_Omega z dif V=integral_0^(2pi)dif theta integral_0^(pi/4)sin phi cos phi dif phi integral_0^sqrt(2)r^3 dif r=pi/2. $
]

#answer("四（3）")[
设 $A=(alpha_1,alpha_2,alpha_3)$，$B=(beta_1,beta_2,beta_3)$，过渡矩阵 $C$ 满足 $B=A C$.于是
$ C=A^(-1)B=mat(0,1,0;1/2,0,-1/2;1/2,-1,1/2)mat(1,2,3;2,3,4;1,4,3)=mat(2,3,4;0,-1,0;-1,0,-1). $
]

#answer("五、")[
由几何级数逐项求导，$sum_(n=0)^infinity n(n-1)x^n=2x^2/(1-x)^3$（$abs(x)<1$）.令 $x=-1/2$，得该项之和为 $4/27$.又 $sum_(n=0)^infinity (-1/2)^n=2/3$，所以所求和为 $4/27+2/3=22/27$.
]

#answer("六（1）")[
由拉格朗日中值定理，对任意 $x>0$，存在 $xi in (0,x)$，使 $f(x)-f(0)=x f'(xi)>=k x$. 取 $x_1>-f(0)/k$ 即有 $f(x_1)>0$.由连续性和零点定理，$(0,x_1)$ 内至少存在一个零点.又 $f'>0$，故 $f$ 严格递增，零点唯一.
]

#answer("六（2）")[
令 $f(x)=x ln a-a ln x$（$x>=a$）.因为 $f'(x)=ln a-a/x>1-a/x>=0$，所以 $f(b)>f(a)=0$，即 $b ln a>a ln b$，从而 $a^b>b^a$.
]

#answer("七、")[
二次型矩阵 $A=mat(2,0,0;0,3,a;0,a,3)$ 的特征值为 $2,3-a,3+a$，又由标准形知特征值为 $1,2,5$.结合 $a>0$，得 $a=2$.

分别对应 $1,2,5$ 的单位特征向量为 $1/sqrt(2)(0,1,-1)^T$、$(1,0,0)^T$、$1/sqrt(2)(0,1,1)^T$.故可取
$ T=mat(0,1,0;1/sqrt(2),0,1/sqrt(2);-1/sqrt(2),0,1/sqrt(2)), quad X=T Y. $
此时 $T^T A T=op("diag")(1,2,5)$.
]

#answer("八、")[
证一：设 $B X=0$，左乘 $A$ 得 $X=A B X=0$，故 $B$ 的列向量组线性无关.

证二：$n=op("rank")(A B)<=op("rank")B<=n$，故 $op("rank")B=n$，即满列秩.
]

#answer("九、")[
设时刻 $t$，$B$ 位于 $(x,y)$，$A$ 位于 $(0,1+v t)$，则
$ y'=(y-1-v t)/x, quad x y''=-v (dif t)/(dif x). $
由 $2v=(dif s)/(dif t)=sqrt(1+(y')^2)(dif x)/(dif t)$ 得
$ (dif t)/(dif x)=1/(2v)sqrt(1+(y')^2). $
故所求方程和初始条件为
$ x y''+1/2 sqrt(1+(y')^2)=0, quad y(-1)=0, quad y'(-1)=1. $
#cetz.canvas({
  import cetz.draw: *
  let a = 1 + calc.sqrt(2)
  let f(u) = a * (1 - calc.sqrt(u)) - (1 - calc.pow(u, 1.5)) / (3 * a)
  let pts = range(101).map(i => { let u = 1 - i / 100; (-2 * u, 2 * f(u)) })
  line((-2.6, 0), (1.2, 0), mark: (end: ">"))
  line((0, -0.3), (0, 4.8), mark: (end: ">"))
  line(..pts)
  let u = 0.45
  let yb = f(u)
  let slope = (a / calc.sqrt(u) - calc.sqrt(u) / a) / 2
  line((-2 * u, 2 * yb), (0, 2 * (yb + u * slope)), stroke: (dash: "dashed"))
  content((-2, -0.25), $-1$)
  content((0.2, -0.2), $O$)
  content((1.3, -0.1), $x$)
  content((0.2, 4.8), $y$)
  content((0.2, 2), $1$)
  content((-2 * u - 0.2, 2 * yb), $B$)
  content((0.25, 2 * (yb + u * slope)), $A$)
})
]

