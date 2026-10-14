#import "../template.typ": exam, answer
#show: exam.with(year: 1993, subject: "三", title: "1993年全国工学、经济学硕士研究生入学考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#import "@preview/cetz:0.5.2" as cetz
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 1993 数学三试卷参考解答

= 一、填空题

#answer("1（1）")[
由洛必达法则，$lim_(x arrow 0^+)(ln x)/(1/x)=lim_(x arrow 0^+)(-x)=0$.
]

#answer("1（2）")[
两边对 $x$ 求导，得 $(2x+2y y')cos(x^2+y^2)+e^x-y^2-2x y y'=0$.所以
$ y'=(y^2-e^x-2x cos(x^2+y^2))/(2y cos(x^2+y^2)-2x y). $
]

#answer("1（3）")[
由 $F'(x)=2-1/sqrt(x)<0$ 得 $0<x<1/4$，可填 $(0,1/4)$（或 $(0,1/4]$）.
]

#answer("1（4）")[
令 $u=cos x$，则原积分为 $-integral u^(-3/2)dif u=2u^(-1/2)+C=2/sqrt(cos x)+C$.
]

#answer("1（5）")[
积分得 $f(x)=1/2(1+x^2)[ln(1+x^2)-1]+C$.代入 $f(0)=-1/2$ 得 $C=0$.
]

= 二、选择题

#answer("2（1）")[
D.取 $x_n=1/(n pi)$ 时变量为0；取 $x_n=1/(2n pi+pi/2)$ 时趋于正无穷.因此无界，但绝对值并不趋于无穷大.
]

#answer("2（2）")[
A.$x$ 在1附近时，左侧 $f(x)=-(x+1)$，右侧 $f(x)=x+1$，故左右极限分别为 $-2$ 与2.
]

#answer("2（3）")[
D.当 $0<=x<1$ 时，$F(x)=-integral_x^1 t^2 dif t=(x^3-1)/3$；当 $1<=x<=2$ 时，$F(x)=integral_1^x 1 dif t=x-1$.
]

#answer("2（4）")[
B.$f'=1/x-1/e$，所以在 $(0,e)$ 递增、$(e,+infinity)$ 递减，最大值 $f(e)=k>0$，而两端极限均为 $-infinity$，故恰有两个零点.
]

#answer("2（5）")[
C.奇函数的一阶导数为偶函数，二阶导数为奇函数，故负半轴上 $f'>0$、$f''<0$.
]

= 解答题

#answer("三（1）")[
由链式法则，$y'=2x f'(x^2)cos[f(x^2)]$.再次求导，得
$ y''=2f'(x^2)cos[f(x^2)]+4x^2 f''(x^2)cos[f(x^2)]-4x^2[f'(x^2)]^2 sin[f(x^2)]. $
]

#answer("三（2）")[
有理化并利用 $x<0$，原极限为
$ lim_(x arrow -infinity)(100x)/(sqrt(x^2+100)-x)=lim_(x arrow -infinity)100/(-sqrt(1+100/x^2)-1)=-50. $
]

#answer("三（3）")[
由 $1+cos 2x=2cos^2 x$，分部积分得
$ I=1/2 integral_0^(pi/4)x dif(tan x)=1/2[x tan x+ln cos x]_0^(pi/4)=pi/8-1/4 ln 2. $
]

#answer("三（4）")[
$ I=lim_(b arrow +infinity)[-1/(1+x)+1/(2(1+x)^2)]_0^b=1/2. $
]

#answer("三（5）")[
方程可写成 $[(x^2-1)y]'=cos x$.积分得 $(x^2-1)y=sin x+C$，由初始条件得 $C=-1$，故 $y=(sin x-1)/(x^2-1)$（$-1<x<1$）.
]

#answer("四、")[
将特解代入并比较 $e^(2x)$、$e^x$、$x e^x$ 的系数，得
$ cases(4+2alpha+beta=0,3+2alpha+beta=gamma,1+alpha+beta=0). $
解得 $alpha=-3$、$beta=2$、$gamma=-1$.齐次方程的特征根为1和2，且 $x e^x$ 为非齐次方程的一个特解，故通解为
$ y=C_1 e^x+C_2 e^(2x)+x e^x. $
]

#answer("五、")[
#cetz.canvas({
  import cetz.draw: *
  let pts = range(81).map(i => { let a = 90deg + i * 90deg / 80; (2 + 2 * calc.cos(a), 2 * calc.sin(a)) })
  line((0,0), (2,2), ..pts, close: true, fill: luma(235))
  circle((2,0), radius: 2)
  line((-0.4,0), (4.8,0), mark: (end: ">"))
  line((0,-2.3), (0,2.6), mark: (end: ">"))
  line((-0.3,-0.3),(2.5,2.5))
  line((4,-2.3),(4,2.5))
  content((4.4,2.3), $x=2$)
  content((-0.2,-0.2), $O$)
  content((4.9,0), $x$)
  content((-0.2,2.7), $y$)
  content((2,-0.2), $1$)
  content((0.7,1.3), $A$)
})
取 $y$ 为积分变量，$0<=y<=1$，区域左右边界为 $x=1-sqrt(1-y^2)$ 与 $x=y$.旋转后圆环的外、内半径分别为 $1+sqrt(1-y^2)$、$2-y$，所以
$ V=pi integral_0^1[(1+sqrt(1-y^2))^2-(2-y)^2]dif y $
$ =2pi integral_0^1[sqrt(1-y^2)-(1-y)^2]dif y=2pi(pi/4-1/3)=pi^2/2-(2pi)/3. $
]

#answer("六、")[
设圆锥底面圆半径为 $R$.在轴截面中，$S C=h$，$O C=O D=r$，$B C=R$，$O D$ 垂直于母线 $S B$.
#cetz.canvas({
  import cetz.draw: *
  let rr = calc.sqrt(2)
  line((-rr,0),(0,4),(rr,0))
  let front = range(81).map(i => { let t = 180deg + i * 180deg / 80; (rr * calc.cos(t), 0.32 * calc.sin(t)) })
  let back = range(81).map(i => { let t = i * 180deg / 80; (rr * calc.cos(t), 0.32 * calc.sin(t)) })
  line(..front)
  line(..back, stroke: (dash: "dashed"))
  circle((0,1), radius: 1, stroke: (dash: "dashed"))
  line((0,4),(0,0), stroke: (dash: "dashed"))
  line((0,1),(calc.sqrt(8)/3,4/3))
  line((0,0),(rr,0), stroke: (dash: "dashed"))
  line((1.95,0),(1.95,4), mark: (start: ">", end: ">"))
  content((2.15,2), $h$)
  content((-0.18,4.15), $S$)
  content((-0.2,1), $O$)
  content((-0.15,-0.18), $C$)
  content((rr+0.15,-0.1), $B$)
  content((1.12,1.4), $D$)
})
由直角三角形相似，$R/h=r/sqrt((h-r)^2-r^2)$，所以
$ V(h)=pi/3 R^2 h=(pi r^2)/3 dot h^2/(h-2r), quad h>2r. $
$ V'(h)=(pi r^2)/3 dot (h(h-4r))/(h-2r)^2. $
导数在 $(2r,4r)$ 为负，在 $(4r,+infinity)$ 为正，故 $h=4r$ 时体积最小，$V_min=(8pi r^3)/3$.
]

#answer("七、")[
令 $f(x)=(a+x)ln a-a ln(a+x)$，则 $f(0)=0$，且 $f'(x)=ln a-a/(a+x)>0$.故 $x>0$ 时 $f(x)>0$，即 $a ln(a+x)<(a+x)ln a$，从而得证.
]

#answer("八、")[
证一：由中值定理，对每个 $x∈(0,a]$，存在 $xi∈(0,x)$ 使 $f(x)=f'(xi)x$，故 $abs(f(x))<=M x$.于是
$ abs(integral_0^a f(x)dif x)<=integral_0^a abs(f(x))dif x<=integral_0^a M x dif x=(M a^2)/2. $
证二：由 $f(x)=integral_0^x f'(t)dif t$ 直接得到 $abs(f(x))<=M x$，再积分即得同样结论.
]

