#import "../template.typ": exam
#show: exam.with(year: 1993, subject: "一", title: "1993年全国工学、经济学硕士研究生入学考试")
#import "@preview/ezexam:0.3.1" as ezexam
#import "@preview/cetz:0.5.2" as cetz
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(true)


= 一、填空题（15分，每小题3分）
#ezexam.counter-question.step()

（1）函数 $F(x)=integral_1^x (2-1/sqrt(t))dif t$（$x>0$）的单调减少区间为 #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
由 $F'(x)=2-1/sqrt(x)<0$ 得 $0<x<1/4$，故可填 $(0,1/4)$（或 $(0,1/4]$）.
]

（2）由曲线 $cases(3x^2+2y^2=12,z=0)$ 绕 $y$ 轴旋转一周得到的旋转面在点 $(0,sqrt(3),sqrt(2))$ 处的指向外侧的单位法向量为 #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
旋转面为 $3x^2+2y^2+3z^2=12$，外法向量可取 $(6x,4y,6z)$.代入该点并单位化，得 $1/sqrt(5)(0,sqrt(2),sqrt(3))$.
]

（3）设函数 $f(x)=pi x+x^2$（$-pi<x<pi$）的傅里叶级数展开式为 $a_0/2+sum_(n=1)^infinity (a_n cos n x+b_n sin n x)$，则其中系数 $b_3$ 的值为 #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
由奇偶性和分部积分，$b_n=2 integral_0^pi x sin n x dif x=2pi(-1)^(n+1)/n$，所以 $b_3=2pi/3$.
]

（4）设数量场 $u=ln sqrt(x^2+y^2+z^2)$，则 $op("div")(op("grad")u)=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
记 $r^2=x^2+y^2+z^2$，则 $u_(x x)=1/r^2-2x^2/r^4$，其余类似.三项相加得 $op("div")(op("grad")u)=1/(x^2+y^2+z^2)$.
]

（5）设 $n$ 阶矩阵 $A$ 的各行元素之和均为零，且 $A$ 的秩为 $n-1$，则线性方程组 $A X=0$ 的通解为 #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
向量 $(1,1,dots,1)^T$ 为非零解，解空间维数为 $n-(n-1)=1$，故通解为 $X=k(1,1,dots,1)^T$，$k$ 为任意常数.
]

= 二、选择题（15分，每小题3分）
#ezexam.counter-question.step()

（1）设 $f(x)=integral_0^(sin x) sin(t^2)dif t$，$g(x)=x^3+x^4$，则当 $x arrow 0$ 时，$f(x)$ 是 $g(x)$ 的（　）.
#choices[等价无穷小][同阶但非等价的无穷小][高阶无穷小][低阶无穷小]
#ezexam.solution(show-number: false)[
B.$f(x)∼(sin x)^3/3∼x^3/3$，$g(x)∼x^3$，故二者比值趋于 $1/3$.
]

（2）双纽线 $(x^2+y^2)^2=x^2-y^2$ 所围成的区域面积可用定积分表示为（　）.
#choices[$2integral_0^(pi/4) cos 2theta dif theta$][$4integral_0^(pi/4) cos 2theta dif theta$][$2integral_0^(pi/4) sqrt(cos 2theta)dif theta$][$1/2 integral_0^(pi/4)(cos 2theta)^2 dif theta$]
#ezexam.solution(show-number: false)[
A.极坐标方程为 $r^2=cos 2theta$，由四象限对称性，面积为 $4 dot 1/2 integral_0^(pi/4)cos 2theta dif theta$.
]

（3）设有直线 $l_1:(x-1)/1=(y-5)/(-2)=(z+8)/1$ 与 $l_2:cases(x-y=6,2y+z=3)$，则 $l_1$ 与 $l_2$ 的夹角为（　）.
#choices[$pi/6$][$pi/4$][$pi/3$][$pi/2$]
#ezexam.solution(show-number: false)[
C.方向向量分别取 $(1,-2,1)$ 与 $(1,1,-2)$，夹角余弦为 $abs(1-2-2)/6=1/2$.
]

（4）设曲线积分 $integral_l [f(x)-e^x]sin y dif x-f(x)cos y dif y$ 与路径无关，其中 $f(x)$ 具有一阶连续导数，且 $f(0)=0$，则 $f(x)$ 等于（　）.
#choices[$(e^(-x)-e^x)/2$][$(e^x-e^(-x))/2$][$(e^x+e^(-x))/2-1$][$1-(e^x+e^(-x))/2$]
#ezexam.solution(show-number: false)[
B.由 $P_y=Q_x$ 得 $f'+f=e^x$，解得 $f=e^x/2+C e^(-x)$.由 $f(0)=0$ 得 $C=-1/2$.
]

（5）已知 $Q=mat(1,2,3;2,4,t;3,6,9)$，$P$ 为三阶非零矩阵，且满足 $P Q=0$，则（　）.
#choices[$t=6$ 时 $P$ 的秩必为1][$t=6$ 时 $P$ 的秩必为2][$t≠6$ 时 $P$ 的秩必为1][$t≠6$ 时 $P$ 的秩必为2]
#ezexam.solution(show-number: false)[
C.$t≠6$ 时 $op("rank")Q=2$，由 $P Q=0$ 得 $op("rank")P<=1$，又 $P≠0$，所以秩为1.
]

#ezexam.question(label: n => [三、])[
（15分，每小题5分）

（1）求 $lim_(x arrow infinity)(sin(2/x)+cos(1/x))^x$.
#ezexam.solution(show-number: false)[
令 $t=1/x$，则
$ lim_(x arrow infinity)x ln(sin(2/x)+cos(1/x))=lim_(t arrow 0)(ln(sin 2t+cos t))/t=2. $
所以原极限为 $e^2$.
]

（2）求 $integral (x e^x)/sqrt(e^x-1)dif x$.
#ezexam.solution(show-number: false)[
令 $u=sqrt(e^x-1)$，则 $x=ln(1+u^2)$，$dif x=2u/(1+u^2)dif u$.从而
$ I=2integral ln(1+u^2)dif u=2u ln(1+u^2)-4u+4arctan u+C. $
故 $I=2x sqrt(e^x-1)-4sqrt(e^x-1)+4arctan sqrt(e^x-1)+C$.
]

（3）求微分方程 $x^2 y'+x y=y^2$ 满足初始条件 $y|_(x=1)=1$ 的特解.
#ezexam.solution(show-number: false)[
解一：令 $y=x u$，得 $x u'=u^2-2u$，分离变量积分得
$ 1/2 ln abs((u-2)/u)=ln abs(x)+C_1, quad (y-2x)/y=C x^2. $
代入初始条件得 $C=-1$，故 $y=2x/(1+x^2)$.

解二：令 $z=1/y$，得 $z'-z/x=-1/x^2$，所以 $z=1/(2x)+C x$.由初始条件得 $C=1/2$，同样得到上述特解.
]

]

#ezexam.question(label: n => [四、])[
（6分）

计算 $integral.double_Sigma 2x z dif y dif z+y z dif z dif x-z^2 dif x dif y$，其中 $Sigma$ 是由曲面 $z=sqrt(x^2+y^2)$ 与 $z=sqrt(2-x^2-y^2)$ 所围立体的表面外侧.
#ezexam.solution(show-number: false)[
向量场 $(2x z,y z,-z^2)$ 的散度为 $2z+z-2z=z$.由高斯公式及球坐标变换，原积分为
$ integral.triple_Omega z dif V=integral_0^(2pi)dif theta integral_0^(pi/4)sin phi cos phi dif phi integral_0^sqrt(2)r^3 dif r=pi/2. $
]

]

#ezexam.question(label: n => [五、])[
（7分）

求级数 $sum_(n=0)^infinity ((-1)^n (n^2-n+1))/2^n$ 之和.
#ezexam.solution(show-number: false)[
由几何级数逐项求导，$sum_(n=0)^infinity n(n-1)x^n=2x^2/(1-x)^3$（$abs(x)<1$）.令 $x=-1/2$，得该项之和为 $4/27$.又 $sum_(n=0)^infinity (-1/2)^n=2/3$，所以所求和为 $4/27+2/3=22/27$.
]

]

#ezexam.question(label: n => [六、])[
（10分，每小题5分）

（1）设在 $[0,+infinity)$ 上函数 $f(x)$ 有连续导数，且 $f'(x)>=k>0$，$f(0)<0$，证明 $f(x)$ 在 $(0,+infinity)$ 内有且仅有一个零点.
#ezexam.solution(show-number: false)[
由 $f(x)-f(0)=integral_0^x f'(t)dif t>=k x$，取 $x_1>-f(0)/k$ 即有 $f(x_1)>0$.由连续性和零点定理，$(0,x_1)$ 内至少存在一个零点.又 $f'>0$，故 $f$ 严格递增，零点唯一.
]

（2）设 $b>a>e$，证明 $a^b>b^a$.
#ezexam.solution(show-number: false)[
令 $f(x)=x ln a-a ln x$（$x>=a$）.因为 $f'(x)=ln a-a/x>1-a/x>=0$，所以 $f(b)>f(a)=0$，即 $b ln a>a ln b$，从而 $a^b>b^a$.
]

]

#ezexam.question(label: n => [七、])[
（8分）

已知二次型 $f(x_1,x_2,x_3)=2x_1^2+3x_2^2+3x_3^2+2a x_2 x_3$（$a>0$）通过正交变换化成标准形 $f=y_1^2+2y_2^2+5y_3^2$，求参数 $a$ 及所用的正交变换矩阵.
#ezexam.solution(show-number: false)[
二次型矩阵 $A=mat(2,0,0;0,3,a;0,a,3)$ 的特征值为 $2,3-a,3+a$，又由标准形知特征值为 $1,2,5$.结合 $a>0$，得 $a=2$.

分别对应 $1,2,5$ 的单位特征向量为 $1/sqrt(2)(0,1,-1)^T$、$(1,0,0)^T$、$1/sqrt(2)(0,1,1)^T$.故可取
$ T=mat(0,1,0;1/sqrt(2),0,1/sqrt(2);-1/sqrt(2),0,1/sqrt(2)), quad X=T Y. $
此时 $T^T A T=op("diag")(1,2,5)$.
]

]

#ezexam.question(label: n => [八、])[
（6分）

设 $A$ 是 $n times m$ 矩阵，$B$ 是 $m times n$ 矩阵，其中 $n<m$，$I$ 是 $n$ 阶单位矩阵.若 $A B=I$，证明 $B$ 的列向量组线性无关.
#ezexam.solution(show-number: false)[
证一：设 $B X=0$，左乘 $A$ 得 $X=A B X=0$，故 $B$ 的列向量组线性无关.

证二：$n=op("rank")(A B)<=op("rank")B<=n$，故 $op("rank")B=n$，即满列秩.
]

]

#ezexam.question(label: n => [九、])[
（6分）

设物体 $A$ 从点 $(0,1)$ 出发，以速度大小为常数 $v$ 沿 $y$ 轴正向运动.物体 $B$ 从点 $(-1,0)$ 与 $A$ 同时出发，其速度大小为 $2v$，方向始终指向 $A$.试建立物体 $B$ 的运动轨迹所满足的微分方程，并写出初始条件.
#ezexam.solution(show-number: false)[
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

]

= 十、填空题（6分，每小题3分）
#ezexam.counter-question.step()

（1）一批产品共有10个正品和2个次品，任意抽取两次，每次抽一个，抽出后不再放回，则第二次抽出的是次品的概率为 #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
由全概率公式，$P=10/12 dot 2/11+2/12 dot 1/11=1/6$.
]

（2）设随机变量 $X$ 服从 $(0,2)$ 上的均匀分布，则随机变量 $Y=X^2$ 在 $(0,4)$ 内概率分布密度 $f_Y(y)=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
当 $0<y<4$ 时，$F_Y(y)=P(X<=sqrt(y))=sqrt(y)/2$，求导得 $f_Y(y)=1/(4sqrt(y))$.
]

#ezexam.question(label: n => [十一、])[
（6分）

设随机变量 $X$ 的概率分布密度为 $f(x)=1/2 e^(-abs(x))$，$-infinity<x<+infinity$.

（1）求 $X$ 的数学期望 $E X$ 和方差 $D X$.

（2）求 $X$ 与 $abs(X)$ 的协方差，并问 $X$ 与 $abs(X)$ 是否不相关？

（3）问 $X$ 与 $abs(X)$ 是否相互独立？为什么？
#ezexam.solution(show-number: false)[
（1）由对称性，$E X=0$，且 $D X=E X^2=integral_0^infinity x^2 e^(-x)dif x=2$.

（2）$op("Cov")(X,abs(X))=E(X abs(X))-E X dot E abs(X)=0$，因为 $x abs(x)f(x)$ 为奇函数.因此二者不相关.

（3）不独立.任取 $a>0$，事件 $abs(X)<a$ 包含于 $X<a$，且其概率为正，而 $P(X<a)<1$.所以
$ P(X<a,abs(X)<a)=P(abs(X)<a)>P(X<a)P(abs(X)<a), $
不满足独立性条件.
]
]

