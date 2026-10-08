#import "../template.typ": exam
#show: exam.with(year: 1991, subject: "三", title: "1991年全国工学、经济学硕士研究生入学考试")
#import "@preview/ezexam:0.3.1" as ezexam
#import "@preview/cetz:0.4.2" as cetz
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(true)


本试卷共8个大题，满分100分.

= 一、填空题（15分，每小题3分，只要求直接填写结果）
#ezexam.counter-question.step()

（1）设 $y=ln(1+3^(-x))$，则 $dif y=$ #fillin(len: 4em)[].

#ezexam.solution(show-number: false)[
由复合函数求导法则，$dif y=-(3^(-x)ln 3)/(1+3^(-x))dif x$.
]

（2）曲线 $y=e^(-x^2)$ 的向上凸区间是 #fillin(len: 4em)[].

#ezexam.solution(show-number: false)[
$y''=(4x^2-2)e^(-x^2)$.向上凸即 $y''<0$，故所求区间为 $(-sqrt(2)/2,sqrt(2)/2)$.
]

（3）$integral_1^(+infinity)(ln x)/x^2 dif x=$ #fillin(len: 4em)[].

#ezexam.solution(show-number: false)[
分部积分得 $integral_1^R (ln x)/x^2 dif x=1-(ln R+1)/R$，令 $R arrow +infinity$，得答案为1.
]

（4）质点以速度 $t sin(t^2)$ 米/秒作直线运动，则从时刻 $t_1=sqrt(pi/2)$ 秒到 $t_2=sqrt(pi)$ 秒内质点所经过的路程等于 #fillin(len: 4em)[] 米.

#ezexam.solution(show-number: false)[
该时间段内速度非负，路程为
$ integral_sqrt(pi/2)^sqrt(pi)t sin(t^2)dif t=1/2 integral_(pi/2)^pi sin u dif u=1/2. $
]

（5）$lim_(x arrow 0^+) (1-e^(1/x))/(x+e^(1/x))=$ #fillin(len: 4em)[].

#ezexam.solution(show-number: false)[
分子、分母同除以 $e^(1/x)$，得 $(e^(-1/x)-1)/(x e^(-1/x)+1) arrow -1$.
]

= 二、选择题（15分，每小题3分；每题只有一个正确选项，不选或选错得0分）
#ezexam.counter-question.step()

（1）若曲线 $y=x^2+a x+b$ 和 $2y=-1+x y^3$ 在点 $(1,-1)$ 处相切，其中 $a,b$ 是常数，则
#choices([$a=0,b=-2$.],[$a=1,b=-3$.],[$a=-3,b=1$.],[$a=-1,b=-1$.])

#ezexam.solution(show-number: false)[
*D.* 由过点条件得 $a+b=-2$.对隐函数求导，$2y'=y^3+3x y^2 y'$，在 $(1,-1)$ 处斜率为1.故 $2+a=1$，从而 $a=b=-1$.
]

（2）设函数 $f(x)=cases(x^2&0<=x<=1,2-x&1<x<=2)$，记 $F(x)=integral_0^x f(t)dif t$（$0<=x<=2$），则
#choices(
[$F(x)=cases(x^3/3&0<=x<=1,1/3+2x-x^2/2&1<x<=2)$.],
[$F(x)=cases(x^3/3&0<=x<=1,-7/6+2x-x^2/2&1<x<=2)$.],
[$F(x)=cases(x^3/3&0<=x<=1,x^3/3+2x-x^2/2&1<x<=2)$.],
[$F(x)=cases(x^3/3&0<=x<=1,2x-x^2/2&1<x<=2)$.])

#ezexam.solution(show-number: false)[
*B.* 当 $0<=x<=1$ 时，$F(x)=x^3/3$；当 $1<x<=2$ 时，$F(x)=integral_0^1 t^2 dif t+integral_1^x(2-t)dif t=-7/6+2x-x^2/2$.
]

（3）设函数 $f(x)$ 在 $(-infinity,+infinity)$ 内有定义，$x_0!=0$ 是函数 $f(x)$ 的极大点，则
#choices([$x_0$ 必是 $f(x)$ 的驻点.],[$-x_0$ 必是 $-f(-x)$ 的极小点.],[$-x_0$ 必是 $-f(x)$ 的极小点.],[对一切 $x$ 都有 $f(x)<=f(x_0)$.])

#ezexam.solution(show-number: false)[
*B.* 在 $x_0$ 的某邻域内 $f(x)<=f(x_0)$，故在 $-x_0$ 的相应邻域内 $-f(-x)>=-f(x_0)$.极值点不一定可导，也不一定是全局最大值点.
]

（4）曲线 $y=(1+e^(-x^2))/(1-e^(-x^2))$
#choices([没有渐近线.],[仅有水平渐近线.],[仅有铅直渐近线.],[既有水平渐近线又有铅直渐近线.])

#ezexam.solution(show-number: false)[
*D.* 当 $x arrow plus.minus infinity$ 时 $y arrow 1$；当 $x arrow 0$ 时 $y arrow +infinity$.故水平渐近线为 $y=1$，铅直渐近线为 $x=0$.
]

（5）如图，$x$ 轴上有一线密度为常数 $mu$、长度为 $l$ 的细杆，有一质量为 $m$ 的质点到杆右端的距离为 $a$，已知引力系数为 $k$，则质点和细杆之间引力的大小为
#cetz.canvas({
  import cetz.draw: *
  line((-4.4, 0), (3.3, 0), mark: (end: ">"))
  line((-4, 0), (0, 0), stroke: 2pt)
  for x in (-4, 0, 2.3) { line((x, -0.1), (x, 0.9)) }
  line((-4, 0.7), (0, 0.7), mark: (start: "<", end: ">"))
  line((0, 0.7), (2.3, 0.7), mark: (start: "<", end: ">"))
  circle((2.3, 0), radius: 0.05, fill: black)
  content((-2, 1), $l$)
  content((1.15, 1), $a$)
  content((0, -0.3), $O$)
  content((2.3, -0.3), $m$)
  content((3.4, -0.2), $x$)
})
#choices([$integral_(-l)^0 (k m mu)/(a-x)^2 dif x$.],[$integral_0^l (k m mu)/(a-x)^2 dif x$.],[$2 integral_(-l/2)^0 (k m mu)/(a+x)^2 dif x$.],[$2 integral_0^(l/2) (k m mu)/(a+x)^2 dif x$.])

#ezexam.solution(show-number: false)[
*A.* 细杆位于 $[-l,0]$，质点位于 $x=a$.坐标为 $x$ 的质量元为 $mu dif x$，距质点 $a-x$，其引力为 $(k m mu)/(a-x)^2 dif x$，沿细杆积分即得A项.
]

#ezexam.question(label: n => [三、])[
（25分，每小题5分）

（1）设 $cases(x=t cos t,y=t sin t)$，求 $(dif^2 y)/(dif x^2)$.

#ezexam.solution(show-number: false)[
由参数方程求导公式，
$ (dif y)/(dif x)=(sin t+t cos t)/(cos t-t sin t), $
$ (dif^2 y)/(dif x^2)=1/(cos t-t sin t) dif/(dif t)((sin t+t cos t)/(cos t-t sin t))
=(2+t^2)/(cos t-t sin t)^3. $
]

（2）计算 $integral_1^4 (dif x)/(x(1+sqrt(x)))$.

#ezexam.solution(show-number: false)[
令 $t=sqrt(x)$，则 $x=t^2$，$dif x=2t dif t$，所以
$ I=2 integral_1^2 (dif t)/(t(1+t))=2 integral_1^2(1/t-1/(1+t))dif t=2ln(4/3). $
]

（3）求 $lim_(x arrow 0)(x-sin x)/(x^2(e^x-1))$.

#ezexam.solution(show-number: false)[
*解一* 由 $e^x-1 tilde.eq x$，并用洛必达法则，得
$ lim_(x arrow 0)(x-sin x)/(x^2(e^x-1))=lim_(x arrow 0)(x-sin x)/x^3
=lim_(x arrow 0)(1-cos x)/(3x^2)=1/6. $
*解二* 对原式连续使用三次洛必达法则，最后得到
$ lim_(x arrow 0)(cos x)/(6e^x+6x e^x+x^2 e^x)=1/6. $
]

（4）求 $integral x sin^2 x dif x$.

#ezexam.solution(show-number: false)[
先用半角公式，再分部积分：
$ integral x sin^2 x dif x=1/2 integral x(1-cos(2x))dif x
=x^2/4-x/4 sin(2x)-1/8 cos(2x)+C. $
]

（5）求微分方程 $x y'+y=x e^x$ 满足 $y(1)=1$ 的特解.

#ezexam.solution(show-number: false)[
*解一* 齐次方程通解为 $y=C/x$.用常数变易法设 $y=C(x)/x$，代入得 $C'(x)=x e^x$，故 $C(x)=(x-1)e^x+C_1$.由 $y(1)=1$，得 $C_1=1$.

*解二* 方程化为 $y'+y/x=e^x$，积分因子为 $x$，于是 $(x y)'=x e^x$.积分并代入初始条件，同得
$ y=((x-1)e^x+1)/x. $
]

]

#ezexam.question(label: n => [四、])[
（9分）

利用导数证明：当 $x>1$ 时，有不等式 $(ln(1+x))/(ln x)>x/(1+x)$.

#ezexam.solution(show-number: false)[
*证一* 令 $F(x)=(1+x)ln(1+x)-x ln x$，则 $F'(x)=ln(1+1/x)>0$.又 $F(1)=2ln 2>0$，故当 $x>1$ 时 $F(x)>0$.除以正数 $(1+x)ln x$ 即得结论.

*证二* 令 $g(x)=x ln x$，在 $x>1$ 时 $g'(x)=1+ln x>0$，所以 $g(1+x)>g(x)$，即 $(1+x)ln(1+x)>x ln x$，从而得证.
]

]

#ezexam.question(label: n => [五、])[
（9分）

求微分方程 $y''+y=x+cos x$ 的通解.

#ezexam.solution(show-number: false)[
齐次方程通解为 $C_1 cos x+C_2 sin x$.方程 $y''+y=x$ 的一个特解为 $y_1=x$.对 $y''+y=cos x$，设 $y_2=E x cos x+D x sin x$，代入比较系数得 $E=0,D=1/2$.所以通解为
$ y=C_1 cos x+C_2 sin x+x+x/2 sin x. $
]

]

#ezexam.question(label: n => [六、])[
（9分）

曲线 $y=(x-1)(x-2)$ 和 $x$ 轴围成一平面图形，求此平面图形绕 $y$ 轴旋转一周所成的旋转体的体积.

#ezexam.solution(show-number: false)[
在 $[1,2]$ 上，$y<=0$.用柱壳法，
$ V=2pi integral_1^2 x abs(y)dif x=-2pi integral_1^2 x(x-1)(x-2)dif x=pi/2. $
]

]

#ezexam.question(label: n => [七、])[
（9分）

如图，$A$ 和 $D$ 分别是曲线 $y=e^x$ 和 $y=e^(-2x)$ 上的点，$A B$ 和 $D C$ 均垂直 $x$ 轴，且 $abs(A B):abs(D C)=2:1$，$abs(A B)<1$，求点 $B$ 和 $C$ 的横坐标，使梯形 $A B C D$ 的面积最大.
#cetz.canvas({
  import cetz.draw: *
  let p(x, y) = (2.4 * x, 1.3 * y)
  let xb = -0.9
  let xc = (calc.ln(2) - xb) / 2
  let ya = calc.exp(xb)
  let yd = calc.exp(-2 * xc)
  line(p(xb, 0), p(xb, ya), p(xc, yd), p(xc, 0), close: true, fill: luma(235))
  line(p(-1.6, 0), p(1.55, 0), mark: (end: ">"))
  line(p(0, -0.2), p(0, 3.5), mark: (end: ">"))
  line(..range(121).map(i => { let x = -1.45 + 2.55 * i / 120; p(x, calc.exp(x)) }))
  line(..range(121).map(i => { let x = -0.58 + 1.98 * i / 120; p(x, calc.exp(-2 * x)) }))
  content(p(xb - 0.12, ya + 0.18), $A$)
  content(p(xb, -0.25), $B$)
  content(p(xc + 0.13, yd + 0.19), $D$)
  content(p(xc, -0.25), $C$)
  content(p(-0.12, -0.25), $O$)
  content(p(1.62, -0.1), $x$)
  content(p(0.13, 3.5), $y$)
  content(p(1.1, 2.5), $y=e^x$, anchor: "west")
  content(p(-0.8, 2.6), $y=e^(-2x)$, anchor: "east")
})

#ezexam.solution(show-number: false)[
设 $B,C$ 的横坐标分别为 $x_1,x$.由高度比得 $e^(x_1)=2e^(-2x)$，所以 $x_1=ln 2-2x$，$B C=3x-ln 2$.面积为
$ S(x)=3/2(3x-ln 2)e^(-2x), quad S'(x)=3/2(3-6x+2ln 2)e^(-2x). $
驻点为 $x=1/2+(ln 2)/3$.导数在该点左侧为正、右侧为负，且该点满足题设条件，故为最大值点.

所求横坐标为 $x_B=(ln 2)/3-1$，$x_C=1/2+(ln 2)/3$.
]

]

#ezexam.question(label: n => [八、])[
（9分）

设函数 $f(x)$ 在 $(-infinity,+infinity)$ 内满足 $f(x)=f(x-pi)+sin x$，且 $f(x)=x$，$x in [0,pi)$.计算 $integral_pi^(3pi) f(x)dif x$.

#ezexam.solution(show-number: false)[
*解一* 将函数关系代入并令 $t=x-pi$，得
$ I=integral_pi^(3pi)[f(x-pi)+sin x]dif x=integral_0^(2pi) f(t)dif t. $
再将 $[pi,2pi]$ 上的积分用关系式展开，有
$ I=integral_0^pi t dif t+integral_pi^(2pi)[f(t-pi)+sin t]dif t
=pi^2/2+pi^2/2-2=pi^2-2. $
*解二* 分段写为 $f(x)=cases(x-pi+sin x&pi<=x<2pi,x-2pi&2pi<=x<3pi)$，直接积分得
$ I=integral_pi^(2pi)(x-pi+sin x)dif x+integral_(2pi)^(3pi)(x-2pi)dif x=pi^2-2. $
]
]

