#import "../../template.typ": collection
#show: collection.with(title: "导数的几何意义分类汇编", subject: "导数的几何意义")
#import "@preview/ezexam:0.3.1" as ezexam
#import "@preview/cetz:0.5.2"
#let choices = ezexam.choices.with(r-gap: 1.3em)
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)

= 历年真题：导数的几何意义

*切线与法线方程*

#ezexam.question(label: n => [1987 数二 1（3）])[
曲线 $y=arctan x$ 在横坐标为1的点处的切线方程是 #fillin(len: 4em)[]；法线方程是 #fillin(len: 4em)[].
]

#ezexam.question(label: n => [1988 数二 2（1）])[
$f(x)=1/3 x^3+1/2 x^2+6x+1$ 的图形在点 $(0,1)$ 的切线与 $x$ 轴交点的坐标是（　）.
#choices([$(-1/6,0)$],[$(-1,0)$],[$(1/6,0)$],[$(1,0)$])
]

#ezexam.question(label: n => [1989 数二 1（3）])[
曲线 $y=integral_0^x(t-1)(t-2)dif t$ 在点 $(0,0)$ 处的切线方程是 #fillin(len: 4em)[].
]

#ezexam.question(label: n => [1989 数三 1（1）、数四 1（1）])[
曲线 $y=x+sin^2 x$ 在点 $(pi/2,1+pi/2)$ 处的切线方程是 #fillin(len: 4em)[].
]

#ezexam.question(label: n => [1990 数二 1（1）])[
曲线 $cases(x=cos^3 t,y=sin^3 t)$ 上对应于 $t=pi/6$ 点处的法线方程是 #fillin(len: 4em)[].
]

#ezexam.question(label: n => [1991 数四 1（2）、数五 1（2）])[
设曲线 $f(x)=x^3+a x$ 与 $g(x)=b x^2+c$ 都通过点 $(-1,0)$，且在点 $(-1,0)$ 有公共切线，则 $a=$ #fillin(len: 4em)[]，$b=$ #fillin(len: 4em)[]，$c=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [1995 数三 1（3）])[
曲线 $cases(x=1+t^2,y=t^3)$ 在 $t=2$ 处的切线方程为 #fillin(len: 4em)[].
]

#ezexam.question(label: n => [1995 数三 6])[
如图，设曲线 $L$ 的方程为 $y=f(x)$，且 $y''>0$. 又 $M T$、$M P$ 分别为该曲线在点 $M(x_0,y_0)$ 处的切线和法线. 已知线段 $M P$ 的长度为 $(1+(y'_0)^2)^(3/2)/y''_0$（其中 $y'_0=y'(x_0)$，$y''_0=y''(x_0)$），试推导出点 $P(xi,eta)$ 的坐标表达式.
#cetz.canvas({
 import cetz.draw: *
 line((-.2,0),(3.8,0),mark:(end:"stealth")); content((3.9,0),$x$)
 line((0,-.3),(0,3.8),mark:(end:"stealth")); content((.2,3.8),$y$)
 line(..range(0,101).map(i=>{let x=.3+3.1*i/100; (x,.25*calc.pow(x - .5,2)+.5)}))
 line((1,0),(3.5,2.5)); line((.5,3.5),(2.5,1.5))
 circle((2.5,1.5),radius:.04,fill:black)
 circle((.5,3.5),radius:.04,fill:black); content((1.25,3.75),$P(xi,eta)$)
 content((3.6,1.05),$M(x_0,y_0)$); content((3.45,2.9),$L$); content((1,-.2),$T$); content((-.15,-.15),$O$)
})
]

#ezexam.question(label: n => [1995 数四 2（1）、数五 2（1）])[
设 $f(x)$ 为可导函数，且满足 $lim_(x arrow 0)(f(1)-f(1-x))/(2x)=-1$，则曲线 $y=f(x)$ 在点 $(1,f(1))$ 处的切线斜率为（　）.
#choices[2][$-1$][$1/2$][$-2$]
]

#ezexam.question(label: n => [1996 数四 1（3）])[
设 $(x_0,y_0)$ 是抛物线 $y=a x^2+b x+c$ 上的一点，若在该点的切线过原点，则系数应满足的关系是#fillin(len: 4em)[].
]

#ezexam.question(label: n => [1997 数一 1（3）])[
对数螺线 $rho=e^theta$ 在点 $(rho,theta)=(e^(pi/2),pi/2)$ 处的切线的直角坐标方程为#fillin(len: 4em)[].
]

#ezexam.question(label: n => [1997 数三 7])[
从点 $P_1(1,0)$ 作 $x$ 轴的垂线，交抛物线 $y=x^2$ 于点 $Q_1(1,1)$；再从 $Q_1$ 作这条抛物线的切线与 $x$ 轴交于 $P_2$. 然后又从 $P_2$ 作 $x$ 轴的垂线，交抛物线于点 $Q_2$，依次重复上述过程得到一系列的点 $P_1,Q_1;P_2,Q_2;dots;P_n,Q_n;dots$.

（1）求 $overline(O P_n)$；

（2）求级数 $overline(Q_1 P_1)+overline(Q_2 P_2)+dots+overline(Q_n P_n)+dots$ 的和. 其中 $n>=1$ 为自然数，$overline(M_1 M_2)$ 表示点 $M_1$ 与 $M_2$ 之间的距离.
]

#ezexam.question(label: n => [1998 数三 1（1）、数四 1（1）])[
设曲线 $f(x)=x^n$ 在点 $(1,1)$ 处的切线与 $x$ 轴的交点为 $(xi_n,0)$，则 $lim_(n -> infinity) f(xi_n)=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [1999 数二 1（1）])[
曲线 $cases(x=e^t sin 2t,y=e^t cos t)$ 在点 $(0,1)$ 处的法线方程为 #fillin(len: 4em)[].
]

#ezexam.question(label: n => [2001 数二 1（2）])[
设函数 $y=f(x)$ 由方程 $e^(2x+y)-cos(x y)=e-1$ 所确定，则曲线 $y=f(x)$ 在点 $(0,1)$ 处的法线方程为#fillin(len: 4em)[].
]

#ezexam.question(label: n => [2002 数一 4])[
已知两曲线 $y=f(x)$ 与 $y=integral_0^(arctan x) e^(-t^2) dif t$ 在点 $(0,0)$ 处的切线相同，写出此切线方程，并求极限 $lim_(n->infinity) n f(2/n)$.
]

#ezexam.question(label: n => [2003 数二 1（2）])[
设函数 $y=f(x)$ 由方程 $x y+2 ln x=y^4$ 所确定，则曲线 $y=f(x)$ 在点 $(1,1)$ 处的切线方程是#fillin(len: 4em)[].
]

#ezexam.question(label: n => [2004 数一 1])[
曲线 $y=ln x$ 上与直线 $x+y=1$ 垂直的切线方程为#fillin(len: 4em)[].
]

#ezexam.question(label: n => [2005 数一 17、数二 17])[
如下图所示，曲线 $C$ 的方程为 $y=f(x)$，点 $(3,2)$ 是它的一个拐点，直线 $l_1$ 与 $l_2$ 分别是曲线 $C$ 在点 $(0,0)$ 与 $(3,2)$ 处的切线，其交点为 $(2,4)$. 设函数 $f(x)$ 具有三阶连续导数，计算定积分 $integral_0^3(x^2+x)f'''(x)dif x$.
#import "@preview/cetz:0.5.2"
#cetz.canvas({
 import cetz.draw: *
 for i in range(1,6) {line((i,0),(i,5),stroke:.3pt);line((0,i),(5,i),stroke:.3pt)}
 line((-.4,0),(5.6,0),mark:(end:">"));line((0,-.4),(0,5.7),mark:(end:">"))
 line((0,0),(2.4,4.8));line((1.6,4.8),(4,0))
 bezier((0,0),(3,2),(.7,1.4),(2,4));bezier((3,2),(4.3,1.3),(3.4,1.2),(3.8,1.2))
 for i in range(1,5){content((i,-.1),[ #i ],anchor:"north");content((-.1,i),[ #i ],anchor:"east")}
 content((-.1,-.1),$O$,anchor:"north-east");content((5.6,0),$x$,anchor:"north");content((0,5.7),$y$,anchor:"east");content((2.5,4.5),$l_1$);content((1.4,4.5),$l_2$);content((1.2,1.5),$C$);content((4.1,1.7),$y=f(x)$)
})
]

#ezexam.question(label: n => [2005 数二 9])[
设函数 $y=y(x)$ 由参数方程 $cases(x=t^2+2t,y=ln(1+t))$ 确定，则曲线 $y=y(x)$ 在 $x=3$ 处的法线与 $x$ 轴交点的横坐标是
#choices([$1/8 ln 2+3$.],[$-1/8 ln 2+3$.],[$-8 ln 2+3$.],[$8 ln 2+3$.])
]

#ezexam.question(label: n => [2007 数二 12])[
曲线 $cases(x=cos t+cos^2 t,y=1+sin t)$ 上对应于 $t=pi/4$ 的点处的法线斜率为#fillin(len: 4em)[].
]

#ezexam.question(label: n => [2008 数一 10、数二 11])[
曲线 $sin(x y)+ln(y-x)=x$ 在点 $(0,1)$ 处的切线方程是#fillin(len: 4em)[].
]

#ezexam.question(label: n => [2008 数四 10])[
已知函数 $f(x)$ 连续，且 $lim_(x->0) f(x)/x=2$，则曲线 $y=f(x)$ 上对应 $x=0$ 处的切线方程是#fillin(len: 4em)[].
]

#ezexam.question(label: n => [2009 数二 20])[
设 $y=y(x)$ 是区间 $(-pi,pi)$ 内过点 $(-pi/sqrt(2),pi/sqrt(2))$ 的光滑曲线. 当 $-pi<x<0$ 时，曲线上任一点处的法线都过原点；当 $0<=x<pi$ 时，函数 $y(x)$ 满足 $y''+y+x=0$. 求函数 $y(x)$ 的表达式.
]

#ezexam.question(label: n => [2009 数二 9])[
曲线 $cases(x=integral_0^(1-t)e^(-u^2)dif u,y=t^2 ln(2-t^2))$ 在点 $(0,0)$ 处的切线方程为 #fillin(len: 4em)[].
]

#ezexam.question(label: n => [2011 数二 18])[
设函数 $y(x)$ 具有二阶导数，且曲线 $l:y=y(x)$ 与直线 $y=x$ 相切于原点. 记 $alpha$ 为曲线 $l$ 在点 $(x,y)$ 处切线的倾角，若 $(dif alpha)/(dif x)=(dif y)/(dif x)$，求 $y(x)$ 的表达式.
]

#ezexam.question(label: n => [2013 数二 12])[
曲线 $cases(x=arctan t,y=ln sqrt(1+t^2))$ 上对应于 $t=1$ 的点处的法线方程为#fillin(len: 4em)[].
]

#ezexam.question(label: n => [2013 数三 9])[
设曲线 $y=f(x)$ 与 $y=x^2-x$ 在点 $(1,0)$ 处有公共切线，则 $lim_(n->infinity)n f(n/(n+2))=$#fillin(len: 4em)[].
]

#ezexam.question(label: n => [2014 数二 12])[
曲线 $L$ 的极坐标方程是 $r=theta$，则 $L$ 在点 $(r,theta)=(pi/2,pi/2)$ 处的切线的直角坐标方程是#fillin(len: 4em)[].
]

#ezexam.question(label: n => [2015 数二 21])[
已知函数 $f(x)$ 在区间 $[a,+infinity)$ 上具有 2 阶导数，$f(a)=0,f'(x)>0,f''(x)>0$. 设 $b>a$，曲线 $y=f(x)$ 在点 $(b,f(b))$ 处的切线与 $x$ 轴的交点是 $(x_0,0)$，证明 $a<x_0<b$.
]

#ezexam.question(label: n => [2016 数二 5])[
设函数 $f_i(x)$（$i=1,2$）具有二阶连续导数，且 $f_i''(x_0)<0$（$i=1,2$）. 若两条曲线 $y=f_i(x)$（$i=1,2$）在点 $(x_0,y_0)$ 处具有公切线 $y=g(x)$，且在该点处曲线 $y=f_1(x)$ 的曲率大于曲线 $y=f_2(x)$ 的曲率，则在 $x_0$ 的某个邻域内，有（　）.
#choices([$f_1(x)<=f_2(x)<=g(x)$],[$f_2(x)<=f_1(x)<=g(x)$],[$f_1(x)<=g(x)<=f_2(x)$],[$f_2(x)<=g(x)<=f_1(x)$])
]

#ezexam.question(label: n => [2017 数二 21])[
设 $y(x)$ 是区间 $(0,3/2)$ 内的可导函数，且 $y(1)=0$. 点 $P$ 是曲线 $l:y=y(x)$ 上的任意一点，$l$ 在点 $P$ 处的切线与 $y$ 轴相交于点 $(0,Y_P)$，法线与 $x$ 轴相交于点 $(X_P,0)$. 若 $X_P=Y_P$，求 $l$ 上点的坐标 $(x,y)$ 满足的方程.
]

#ezexam.question(label: n => [2018 数一 10])[
设函数 $f(x)$ 具有 2 阶连续导数. 若曲线 $y=f(x)$ 过点 $(0,0)$ 且与曲线 $y=2^x$ 在点 $(1,2)$ 处相切，则 $integral_0^1 x f''(x) dif x=$#fillin(len: 4em)[].
]

#ezexam.question(label: n => [2018 数二 10、数三 9])[
曲线 $y=x^2+2ln x$ 在其拐点处的切线方程是#fillin(len: 4em)[].
]

*函数与导函数图像*

#ezexam.question(label: n => [2001 数一 2（1）、数二 2（5）])[
设函数 $f(x)$ 在定义域内可导，$y=f(x)$ 的图形如图1所示，则导函数 $y=f'(x)$ 的图形为（　）.
#import "@preview/cetz:0.5.2"
#let curve-plot(kind) = cetz.canvas({
 import cetz.draw: *
 set-style(stroke:0.7pt)
 line((-1.65,0),(2.6,0),mark:(end:">"));line((0,-1.5),(0,1.9),mark:(end:">"))
 content((2.7,-0.1),$x$);content((-0.13,2),$y$);content((-0.15,-0.2),$O$)
 let positive-left=kind in ("B","D")
 line(..range(0,71).map(i=>{let x=-1.6+i*1.46/70;let y = if positive-left {0.22/(-x)} else {-0.24/x - 0.75}; (x,calc.clamp(y,-1.5,1.7))}))
 if kind in ("C","D") {
  line(..range(0,81).map(i=>{let x=0.17+i*2.1/80;(x,0.25/x+0.75*(x - 1.35)*(x - 1.35)-0.5)}))
 } else {
  line(..range(0,101).map(i=>{let x=0.15+i*2.12/100;let y = if kind=="base" {0.9*(x - 0.55)*(x - 1.1)*(x - 1.8)/x} else {1.15*(x - 0.32)*(x - 1.5)*(x - 1.5)/x}; (x,calc.clamp(y,-1.5,1.7))}))
 }
})
#curve-plot("base")
图1
#choices[#box(curve-plot("A"))][#box(curve-plot("B"))][#box(curve-plot("C"))][#box(curve-plot("D"))]
]

*切线、法线条件确定曲线*

#ezexam.question(label: n => [1995 数一 5、数二 5])[
设曲线 $L$ 位于 $x O y$ 平面的第一象限内，$L$ 上任一点 $M$ 处的切线与 $y$ 轴总相交，交点记为 $A$. 已知 $abs(M A)=abs(O A)$，且 $L$ 过点 $(3/2,3/2)$，求 $L$ 的方程.
]

#ezexam.question(label: n => [1996 数一 6])[
设对任意 $x>0$，曲线 $y=f(x)$ 上点 $(x,f(x))$ 处的切线在 $y$ 轴上的截距等于 $1/x integral_0^x f(t)dif t$，求 $f(x)$ 的一般表达式.
]

#ezexam.question(label: n => [2002 数二 3])[
求曲线 $r=1-cos theta$ 在 $theta=pi/6$ 处的切线与法线的直角坐标方程.
]

#ezexam.question(label: n => [2003 数二 8])[
设位于第一象限的曲线 $y=f(x)$ 过点 $(sqrt(2)/2,1/2)$，其上任一点 $P(x,y)$ 处的法线与 $y$ 轴的交点为 $Q$，且线段 $P Q$ 被 $x$ 轴平分.

（1）求曲线 $y=f(x)$ 的方程；

（2）已知曲线 $y=sin x$ 在 $[0,pi]$ 上的弧长为 $l$，试用 $l$ 表示曲线 $y=f(x)$ 的弧长 $s$.
]

*切线与面积、体积及最值综合*

#ezexam.question(label: n => [1987 数二 8])[
求过曲线 $y=-x^2+1$ 上的一点，使过该点的切线与这条曲线及 $x,y$ 轴在第一象限围成图形的面积最小，最小面积是多少？
]

#ezexam.question(label: n => [1988 数三 6、数四 9])[
过曲线 $y=x^2 (x>=0)$ 上某点 $A$ 作一切线，使之与曲线及 $x$ 轴围成图形的面积为 $1/12$，求：（1）切点 $A$ 的坐标；（2）过切点 $A$ 的切线方程；（3）由上述图形绕 $x$ 轴旋转成的旋转体体积 $V$.
]

#ezexam.question(label: n => [1990 数二 4])[
在椭圆 $x^2/a^2+y^2/b^2=1$ 的第一象限部分上求一点 $P$，使该点处的切线、椭圆及两坐标轴所围图形面积为最小（其中 $a>0,b>0$）.
]

#ezexam.question(label: n => [1990 数二 7])[
过点 $P(1,0)$ 作抛物线 $y=sqrt(x-2)$ 的切线，该切线与上述抛物线及 $x$ 轴围成一平面图形，求此平面图形绕 $x$ 轴旋转一周所成旋转体的体积.
]

#ezexam.question(label: n => [1992 数二 7])[
求曲线 $y=sqrt(x)$ 的一条切线 $l$，使该曲线与切线 $l$ 及直线 $x=0,x=2$ 所围成的平面图形面积最小.
]

#ezexam.question(label: n => [1992 数三 8])[
设曲线方程为 $y=e^(-x) (x>=0)$.

（1）把曲线 $y=e^(-x)$，$x$ 轴，$y$ 轴和直线 $x=xi (xi>0)$ 所围成平面图形绕 $x$ 轴旋转一周，得一旋转体，求此旋转体体积 $V(xi)$；求满足 $V(a)=1/2 lim_(xi->+infinity)V(xi)$ 的 $a$.

（2）在此曲线上找一点，使过该点的切线与两个坐标轴所夹平面图形的面积最大，并求出该面积.
]

#ezexam.question(label: n => [1992 数四 9])[
给定曲线 $y=1/x^2$.

（1）求曲线在横坐标为 $x_0$ 的点处的切线方程；

（2）求曲线的切线被两坐标轴所截线段的最短长度.
]

#ezexam.question(label: n => [1994 数四 7])[
已知曲线 $y=a sqrt(x)$（$a>0$）与曲线 $y=ln sqrt(x)$ 在点 $(x_0,y_0)$ 处有公共切线，求：

（1）常数 $a$ 及切点 $(x_0,y_0)$；

（2）两曲线与 $x$ 轴围成的平面图形绕 $x$ 轴旋转所得旋转体的体积 $V_x$.
]

#ezexam.question(label: n => [1994 数五 7])[
已知曲线 $y=a sqrt(x)$（$a>0$）与曲线 $y=ln sqrt(x)$ 在点 $(x_0,y_0)$ 处有公共切线，求：

（1）常数 $a$ 及切点 $(x_0,y_0)$；

（2）两曲线与 $x$ 轴围成的平面图形的面积 $S$.
]

#ezexam.question(label: n => [1995 数MBA 5])[
试求：

（1）曲线 $y=sqrt(x)$ 在点 $(1,1)$ 处的切线方程；

（2）曲线 $y=sqrt(x)$ 在点 $(1,1)$ 处的切线与曲线 $y=1/2 x^2-1/2$ 所围区域的面积 $S$.
]

#ezexam.question(label: n => [1998 数二 9])[
设有曲线 $y=sqrt(x-1)$，过原点作其切线，求由此曲线、切线及 $x$ 轴围成的平面图形绕 $x$ 轴旋转一周所得到的旋转体的表面积.
]

#ezexam.question(label: n => [1999 数一 5、数二 9])[
设函数 $y(x)$（$x>=0$）二阶可导且 $y'(x)>0,y(0)=1$. 过曲线 $y=y(x)$ 上任意一点 $P(x,y)$ 作该曲线的切线及 $x$ 轴的垂线，上述两直线与 $x$ 轴所围成的三角形的面积记为 $S_1$，区间 $[0,x]$ 上以 $y=y(x)$ 为曲边的曲边梯形面积记为 $S_2$，并设 $2S_1-S_2$ 恒为1，求此曲线 $y=y(x)$ 的方程.
]

#ezexam.question(label: n => [1999 数三 3、数四 3])[
曲线 $y=frac(1,sqrt(x))$ 的切线与 $x$ 轴和 $y$ 轴围成一个图形，记切点的横坐标为 $a$. 试求切线方程和这个图形的面积. 当切点沿曲线趋于无穷远时，该面积的变化趋势如何？
]

#ezexam.question(label: n => [2001 数二 8])[
设 $L$ 是一条平面曲线，其上任意一点 $P(x,y) (x>0)$ 到坐标原点的距离，恒等于该点处的切线在 $y$ 轴上的截距，且 $L$ 经过点 $(1/2,0)$.

（1）试求曲线 $L$ 的方程；

（2）求 $L$ 位于第一象限部分的一条切线，使该切线与 $L$ 以及两坐标轴所围图形的面积最小.
]

#ezexam.question(label: n => [2003 数一 3])[
过坐标原点作曲线 $y=ln x$ 的切线，该切线与曲线 $y=ln x$ 及 $x$ 轴围成平面图形 $D$.

（1）求 $D$ 的面积 $A$；

（2）求 $D$ 绕直线 $x=e$ 旋转一周所得旋转体的体积 $V$.
]

#ezexam.question(label: n => [2006 数二 21])[
已知曲线 $L$ 的方程为 $cases(x=t^2+1,y=4t-t^2) (t>=0)$，

（Ⅰ）讨论 $L$ 的凹凸性；

（Ⅱ）过点 $(-1,0)$ 引 $L$ 的切线，求切点 $(x_0,y_0)$ 并写出切线的方程；

（Ⅲ）求此切线与 $L$（对应于 $x<=x_0$ 的部分）及 $x$ 轴所围成的平面图形的面积.
]

#ezexam.question(label: n => [2006 数三 18、数四 18])[
在 $x O y$ 坐标平面上，连续曲线 $L$ 过点 $M(1,0)$，其上任意点 $P(x,y) (x!=0)$ 处的切线斜率与直线 $O P$ 的斜率之差等于 $a x$（常数 $a>0$）.

（Ⅰ）求 $L$ 的方程；

（Ⅱ）当 $L$ 与直线 $y=a x$ 所围成平面图形的面积为 $8/3$ 时，确定 $a$ 的值.
]

#ezexam.question(label: n => [2012 数一 18])[
已知曲线 $L:cases(x=f(t),y=cos t) (0<=t<pi/2)$，其中函数 $f(t)$ 具有连续导数，且 $f(0)=0,f'(t)>0 (0<t<pi/2)$. 若曲线 $L$ 的切线与 $x$ 轴交点到切点的距离恒为1，求函数 $f(t)$ 的表达式，并求以曲线 $L$ 及 $x$ 轴和 $y$ 轴为边界的区域的面积.
]

#ezexam.question(label: n => [2012 数二 17])[
过点 $(0,1)$ 作曲线 $L:y=ln x$ 的切线，切点为 $A$，又 $L$ 与 $x$ 轴交于 $B$ 点，区域 $D$ 由 $L$ 与直线 $A B$ 围成，求区域 $D$ 的面积及 $D$ 绕 $x$ 轴旋转一周所得旋转体的体积.
]

#ezexam.question(label: n => [2015 数一 16、数三 18])[
设函数 $f(x)$ 在定义域 $I$ 上的导数大于零. 若对任意的 $x_0 in I$，曲线 $y=f(x)$ 在点 $(x_0,f(x_0))$ 处的切线与直线 $x=x_0$ 及 $x$ 轴所围成区域的面积为 4，且 $f(0)=2$，求 $f(x)$ 的表达式.
]

