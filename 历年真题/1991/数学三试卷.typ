#import "../template.typ": exam
#show: exam.with(year: 1991, subject: "三", title: "1991年全国工学、经济学硕士研究生入学考试")
#import "@preview/ezexam:0.3.1" as ezexam
#import "@preview/cetz:0.5.2" as cetz
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])


本试卷共8个大题，满分100分.

= 一、填空题（15分，每小题3分，只要求直接填写结果）
#ezexam.counter-question.step()

（1）设 $y=ln(1+3^(-x))$，则 $dif y=$ #fillin(len: 4em)[].

（2）曲线 $y=e^(-x^2)$ 的向上凸区间是 #fillin(len: 4em)[].

（3）$integral_1^(+infinity)(ln x)/x^2 dif x=$ #fillin(len: 4em)[].

（4）质点以速度 $t sin(t^2)$ 米/秒作直线运动，则从时刻 $t_1=sqrt(pi/2)$ 秒到 $t_2=sqrt(pi)$ 秒内质点所经过的路程等于 #fillin(len: 4em)[] 米.

（5）$lim_(x arrow 0^+) (1-e^(1/x))/(x+e^(1/x))=$ #fillin(len: 4em)[].

= 二、选择题（15分，每小题3分；每题只有一个正确选项，不选或选错得0分）
#ezexam.counter-question.step()

（1）若曲线 $y=x^2+a x+b$ 和 $2y=-1+x y^3$ 在点 $(1,-1)$ 处相切，其中 $a,b$ 是常数，则
#choices([$a=0,b=-2$.],[$a=1,b=-3$.],[$a=-3,b=1$.],[$a=-1,b=-1$.])

（2）设函数 $f(x)=cases(x^2&0<=x<=1,2-x&1<x<=2)$，记 $F(x)=integral_0^x f(t)dif t$（$0<=x<=2$），则
#choices(
[$F(x)=cases(x^3/3&0<=x<=1,1/3+2x-x^2/2&1<x<=2)$.],
[$F(x)=cases(x^3/3&0<=x<=1,-7/6+2x-x^2/2&1<x<=2)$.],
[$F(x)=cases(x^3/3&0<=x<=1,x^3/3+2x-x^2/2&1<x<=2)$.],
[$F(x)=cases(x^3/3&0<=x<=1,2x-x^2/2&1<x<=2)$.])

（3）设函数 $f(x)$ 在 $(-infinity,+infinity)$ 内有定义，$x_0!=0$ 是函数 $f(x)$ 的极大点，则
#choices([$x_0$ 必是 $f(x)$ 的驻点.],[$-x_0$ 必是 $-f(-x)$ 的极小点.],[$-x_0$ 必是 $-f(x)$ 的极小点.],[对一切 $x$ 都有 $f(x)<=f(x_0)$.])

（4）曲线 $y=(1+e^(-x^2))/(1-e^(-x^2))$
#choices([没有渐近线.],[仅有水平渐近线.],[仅有铅直渐近线.],[既有水平渐近线又有铅直渐近线.])

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

#ezexam.question(label: n => [三、])[
（25分，每小题5分）

（1）设 $cases(x=t cos t,y=t sin t)$，求 $(dif^2 y)/(dif x^2)$.

（2）计算 $integral_1^4 (dif x)/(x(1+sqrt(x)))$.

（3）求 $lim_(x arrow 0)(x-sin x)/(x^2(e^x-1))$.

（4）求 $integral x sin^2 x dif x$.

（5）求微分方程 $x y'+y=x e^x$ 满足 $y(1)=1$ 的特解.

]

#ezexam.question(label: n => [四、])[
（9分）

利用导数证明：当 $x>1$ 时，有不等式 $(ln(1+x))/(ln x)>x/(1+x)$.

]

#ezexam.question(label: n => [五、])[
（9分）

求微分方程 $y''+y=x+cos x$ 的通解.

]

#ezexam.question(label: n => [六、])[
（9分）

曲线 $y=(x-1)(x-2)$ 和 $x$ 轴围成一平面图形，求此平面图形绕 $y$ 轴旋转一周所成的旋转体的体积.

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

]

#ezexam.question(label: n => [八、])[
（9分）

设函数 $f(x)$ 在 $(-infinity,+infinity)$ 内满足 $f(x)=f(x-pi)+sin x$，且 $f(x)=x$，$x in [0,pi)$.计算 $integral_pi^(3pi) f(x)dif x$.
]

