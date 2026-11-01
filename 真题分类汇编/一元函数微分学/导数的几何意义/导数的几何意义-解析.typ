#import "@preview/ezexam:0.3.1" as ezexam
#import "@preview/cetz:0.5.2"
#let choices = ezexam.choices.with(r-gap: 1.3em)
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(true)

= 历年真题：导数的几何意义

*切线与法线方程*

#ezexam.question(label: n => [1987 数二 1（3）])[
曲线 $y=arctan x$ 在横坐标为1的点处的切线方程是 #fillin(len: 4em)[]；法线方程是 #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
显见 $y_0=arctan 1=pi/4$，剩下只需求 $y'(1)$. 因为
$ y'(1)=1/(1+x^2)|_(x=1)=1/2, $
故斜率 $k_"切"=1/2$，$k_"法"=-2$. 所以切线、法线的方程分别为
$ y-pi/4=1/2(x-1); quad y-pi/4=-2(x-1). $
]
]

#ezexam.question(label: n => [1988 数二 2（1）])[
$f(x)=1/3 x^3+1/2 x^2+6x+1$ 的图形在点 $(0,1)$ 的切线与 $x$ 轴交点的坐标是（　）.
#choices([$(-1/6,0)$],[$(-1,0)$],[$(1/6,0)$],[$(1,0)$])
#ezexam.solution(show-number: false)[
$ f'(0)=6$，切线方程为 $y-1=6x$，令 $y=0$，故 $x=-1/6$，故选 A.
]
]

#ezexam.question(label: n => [1989 数二 1（3）])[
曲线 $y=integral_0^x(t-1)(t-2)dif t$ 在点 $(0,0)$ 处的切线方程是 #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
分析　先求导得切线斜率，再用点斜式方程得切线方程. 解　曲线在 $(0,0)$ 处切线的斜率为
$ y'|_(x=0)=(x-1)(x-2)|_(x=0)=2. $
因而曲线在 $(0,0)$ 处的切线方程为 $y-0=2(x-0)$，即 $y=2x$.
]
]

#ezexam.question(label: n => [1989 数三 1（1）、数四 1（1）])[
曲线 $y=x+sin^2 x$ 在点 $(pi/2,1+pi/2)$ 处的切线方程是 #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
分析　求曲线在点 $(x_0,f(x_0))$ 处切线方程，关键是写出斜率 $k=f'(x_0)$，然后再写出方程 $y-y_0=f'(x_0)(x-x_0)$.

解　因为 $y'=1+2sin x cos x$，$y'(pi/2)=1$.

从而曲线在点 $(pi/2,1+pi/2)$ 处的切线方程是
$ y-(1+pi/2)=1 dot(x-pi/2), $
即 $y=x+1$.
]
]

#ezexam.question(label: n => [1990 数二 1（1）])[
曲线 $cases(x=cos^3 t,y=sin^3 t)$ 上对应于 $t=pi/6$ 点处的法线方程是 #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$ x|_(t=pi/6)=(3sqrt(3))/8, quad y|_(t=pi/6)=1/8, $
$ (dif y)/(dif x)=((sin^3 t)')/((cos^3 t)')=-tan t. $
令 $t=pi/6$，得切线斜率 $k=-1/sqrt(3)$，因此法线斜率 $k_1=sqrt(3)$，故法线方程为
$ y-1/8=sqrt(3)(x-3/8 sqrt(3)), $
即 $y=sqrt(3)x-1$.
]
]

#ezexam.question(label: n => [1991 数四 1（2）、数五 1（2）])[
设曲线 $f(x)=x^3+a x$ 与 $g(x)=b x^2+c$ 都通过点 $(-1,0)$，且在点 $(-1,0)$ 有公共切线，则 $a=$ #fillin(len: 4em)[]，$b=$ #fillin(len: 4em)[]，$c=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
由过点条件得 $-1-a=0$、$b+c=0$；由切线斜率相同得 $3+a=-2b$. 所以 $a=-1,b=-1,c=1$.
]
]

#ezexam.question(label: n => [1995 数三 1（3）])[
曲线 $cases(x=1+t^2,y=t^3)$ 在 $t=2$ 处的切线方程为 #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
切点为 $(5,8)$，斜率为 $3t^2/(2t)=3$，故 $3x-y-7=0$.
]
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
#ezexam.solution(show-number: false)[
向上单位法向量为 $(-y'_0,1)/sqrt(1+(y'_0)^2)$，与图中 $M P$ 同向. 将其乘以给定长度，再加上 $M$ 的坐标，得
$ xi=x_0-y'_0(1+(y'_0)^2)/y''_0, quad eta=y_0+(1+(y'_0)^2)/y''_0. $
]
]

#ezexam.question(label: n => [1995 数四 2（1）、数五 2（1）])[
设 $f(x)$ 为可导函数，且满足 $lim_(x arrow 0)(f(1)-f(1-x))/(2x)=-1$，则曲线 $y=f(x)$ 在点 $(1,f(1))$ 处的切线斜率为（　）.
#choices[2][$-1$][$1/2$][$-2$]
#ezexam.solution(show-number: false)[
D. 该极限为 $(f'(1))/2$，故斜率为 $-2$.
]
]

#ezexam.question(label: n => [1996 数四 1（3）])[
设 $(x_0,y_0)$ 是抛物线 $y=a x^2+b x+c$ 上的一点，若在该点的切线过原点，则系数应满足的关系是#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
切线在 $y$ 轴上的截距为 $c-a x_0^2$，故 $a x_0^2=c$，即 $c/a>=0$，$b$ 任意.
]
]

#ezexam.question(label: n => [1997 数一 1（3）])[
对数螺线 $rho=e^theta$ 在点 $(rho,theta)=(e^(pi/2),pi/2)$ 处的切线的直角坐标方程为#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
参数方程为 $x=e^theta cos theta$、$y=e^theta sin theta$. 在 $theta=pi/2$ 处，$x'=-e^(pi/2)$、$y'=e^(pi/2)$，切点为 $(0,e^(pi/2))$，故切线为 $x+y=e^(pi/2)$.
]
]

#ezexam.question(label: n => [1997 数三 7])[
从点 $P_1(1,0)$ 作 $x$ 轴的垂线，交抛物线 $y=x^2$ 于点 $Q_1(1,1)$；再从 $Q_1$ 作这条抛物线的切线与 $x$ 轴交于 $P_2$. 然后又从 $P_2$ 作 $x$ 轴的垂线，交抛物线于点 $Q_2$，依次重复上述过程得到一系列的点 $P_1,Q_1;P_2,Q_2;dots;P_n,Q_n;dots$.

（1）求 $overline(O P_n)$；

（2）求级数 $overline(Q_1 P_1)+overline(Q_2 P_2)+dots+overline(Q_n P_n)+dots$ 的和. 其中 $n>=1$ 为自然数，$overline(M_1 M_2)$ 表示点 $M_1$ 与 $M_2$ 之间的距离.
#ezexam.solution(show-number: false)[
（1）在 $(a,a^2)$ 处的切线为 $y-a^2=2a(x-a)$，与 $x$ 轴相交于 $(a/2,0)$. 因此 $overline(O P_n)=2^(-(n-1))$.

#cetz.canvas({
 import cetz.draw: *
 let p(x,y)=(4*x,3*y)
 line(p(-.08,0),p(1.2,0),mark:(end:">"))
 line(p(0,-.08),p(0,1.35),mark:(end:">"))
 line(..range(0,111).map(i=>{let x=i/100; p(x,x*x)}))
 for (a,n) in ((1,1),(.5,2),(.25,3)) {
  line(p(a,0),p(a,a*a),stroke:(dash:"dashed"))
  line(p(a/2,0),p(a+.05,2*a*(a+.05) - a*a))
  content(p(a,-.08),$P_#n$)
  content(p(a - .08,a*a+.055),$Q_#n$)
 }
 content(p(-.05,-.06),$O$)
 content(p(1.2,-.07),$x$)
 content(p(-.06,1.35),$y$)
 content(p(.95,1.3),$y=x^2$)
})

（2）$overline(Q_n P_n)=(overline(O P_n))^2=4^(-(n-1))$，故级数的和为 $1/(1-1/4)=4/3$.
]
]

#ezexam.question(label: n => [1998 数三 1（1）、数四 1（1）])[
设曲线 $f(x)=x^n$ 在点 $(1,1)$ 处的切线与 $x$ 轴的交点为 $(xi_n,0)$，则 $lim_(n -> infinity) f(xi_n)=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$frac(1,e)$.
]
]

#ezexam.question(label: n => [1999 数二 1（1）])[
曲线 $cases(x=e^t sin 2t,y=e^t cos t)$ 在点 $(0,1)$ 处的法线方程为 #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$y+2x-1=0$.
]
]

#ezexam.question(label: n => [2001 数二 1（2）])[
设函数 $y=f(x)$ 由方程 $e^(2x+y)-cos(x y)=e-1$ 所确定，则曲线 $y=f(x)$ 在点 $(0,1)$ 处的法线方程为#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$x-2y+2=0$.
]
]

#ezexam.question(label: n => [2002 数一 4])[
已知两曲线 $y=f(x)$ 与 $y=integral_0^(arctan x) e^(-t^2) dif t$ 在点 $(0,0)$ 处的切线相同，写出此切线方程，并求极限 $lim_(n->infinity) n f(2/n)$.
#ezexam.solution(show-number: false)[
*解* 由已知条件得
$ f(0)=0, quad f'(0)=lr((e^(-(arctan x)^2))/(1+x^2)|)_(x=0)=1, $
故所求切线方程为 $y=x$.
$ lim_(n->infinity) n f(2/n)=lim_(n->infinity) 2dot (f(2/n)-f(0))/(2/n)=2f'(0)=2. $
]
]

#ezexam.question(label: n => [2003 数二 1（2）])[
设函数 $y=f(x)$ 由方程 $x y+2 ln x=y^4$ 所确定，则曲线 $y=f(x)$ 在点 $(1,1)$ 处的切线方程是#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$x-y=0$.
]
]

#ezexam.question(label: n => [2004 数一 1])[
曲线 $y=ln x$ 上与直线 $x+y=1$ 垂直的切线方程为#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$y=x-1$.
]
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
#ezexam.solution(show-number: false)[
解
$ integral_0^3(x^2+x)f'''(x)dif x \
=lr((x^2+x)f''(x))|_0^3-integral_0^3(2x+1)f''(x)dif x \
=-integral_0^3(2x+1)f''(x)dif x \
=-lr((2x+1)f'(x))|_0^3+2integral_0^3 f'(x)dif x \
=-[7 times (-2)-2]+2integral_0^3 f'(x)dif x \
=16+2f(x)|_0^3=16+4=20. $
]
]

#ezexam.question(label: n => [2005 数二 9])[
设函数 $y=y(x)$ 由参数方程 $cases(x=t^2+2t,y=ln(1+t))$ 确定，则曲线 $y=y(x)$ 在 $x=3$ 处的法线与 $x$ 轴交点的横坐标是
#choices([$1/8 ln 2+3$.],[$-1/8 ln 2+3$.],[$-8 ln 2+3$.],[$8 ln 2+3$.])
#ezexam.solution(show-number: false)[
A.
]
]

#ezexam.question(label: n => [2007 数二 12])[
曲线 $cases(x=cos t+cos^2 t,y=1+sin t)$ 上对应于 $t=pi/4$ 的点处的法线斜率为#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$1+sqrt(2)$.
]
]

#ezexam.question(label: n => [2008 数一 10、数二 11])[
曲线 $sin(x y)+ln(y-x)=x$ 在点 $(0,1)$ 处的切线方程是#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$y=x+1$.
]
]

#ezexam.question(label: n => [2008 数四 10])[
已知函数 $f(x)$ 连续，且 $lim_(x->0) f(x)/x=2$，则曲线 $y=f(x)$ 上对应 $x=0$ 处的切线方程是#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$y=2x$.
]
]

#ezexam.question(label: n => [2009 数二 20])[
设 $y=y(x)$ 是区间 $(-pi,pi)$ 内过点 $(-pi/sqrt(2),pi/sqrt(2))$ 的光滑曲线. 当 $-pi<x<0$ 时，曲线上任一点处的法线都过原点；当 $0<=x<pi$ 时，函数 $y(x)$ 满足 $y''+y+x=0$. 求函数 $y(x)$ 的表达式.
#ezexam.solution(show-number: false)[
解　当 $-pi<x<0$ 时，设 $(x,y)$ 为曲线上任一点，由导数几何意义，法线斜率为 $k=-1/((dif y)/(dif x))$. 由题意，法线斜率为 $y/x$，所以有 $(dif y)/(dif x)=-x/y$. 分离变量，解得 $x^2+y^2=C$. 由初始条件 $y(-pi/sqrt(2))=pi/sqrt(2)$，得 $C=pi^2$，所以
$ y=sqrt(pi^2-x^2),quad -pi<x<0. quad "①" $
当 $0<=x<pi$ 时，$y''+y+x=0$ 的通解为
$ y=C_1 cos x+C_2 sin x-x,quad "②" $
$ y'=-C_1 sin x+C_2 cos x-1. quad "③" $
因为曲线 $y=y(x)$ 光滑，所以 $y(x)$ 连续且可导，由①式知
$ y(0)=lim_(x->0^-)y(x)=lim_(x->0^-)sqrt(pi^2-x^2)=pi, $
$ y'(0)=y'_-(0)=lim_(x->0^-)(sqrt(pi^2-x^2)-pi)/x=0, $
代入②、③式，得 $C_1=pi,C_2=1$，故 $y=pi cos x+sin x-x,0<=x<pi$. 因此
$ y(x)=cases(sqrt(pi^2-x^2) quad -pi<x<0,pi cos x+sin x-x quad 0<=x<pi). $
]
]

#ezexam.question(label: n => [2009 数二 9])[
曲线 $cases(x=integral_0^(1-t)e^(-u^2)dif u,y=t^2 ln(2-t^2))$ 在点 $(0,0)$ 处的切线方程为 #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$y=2x$.
]
]

#ezexam.question(label: n => [2011 数二 18])[
设函数 $y(x)$ 具有二阶导数，且曲线 $l:y=y(x)$ 与直线 $y=x$ 相切于原点. 记 $alpha$ 为曲线 $l$ 在点 $(x,y)$ 处切线的倾角，若 $(dif alpha)/(dif x)=(dif y)/(dif x)$，求 $y(x)$ 的表达式.
#ezexam.solution(show-number: false)[
解　由于 $y'=tan alpha$，即 $alpha=arctan y'$，所以
$ (dif alpha)/(dif x)=y''/(1+y'^2), $
于是有 $y''/(1+y'^2)=y'$，即
$ y''=y'(1+y'^2). quad "①" $
令 $y'=p$，则 $y''=p'$，代入①式得 $p'=p(1+p^2)$，分离变量得
$ (dif p)/(p(1+p^2))=dif x, $
两边积分得
$ ln(p^2/(1+p^2))=2x+ln C_1. quad "②" $
由题意 $y'(0)=1$，即当 $x=0$ 时 $p=1$，代入②式得 $C_1=1/2$，于是有
$ y'=p=(e^x/sqrt(2))/sqrt(1-1/2 e^(2x)), $
两边积分得
$ y=integral(e^x/sqrt(2))/sqrt(1-(e^x/sqrt(2))^2)dif x=arcsin(e^x/sqrt(2))+C_2, $
由 $y(0)=0$ 得 $C_2=-pi/4$，所以
$ y=arcsin(e^x/sqrt(2))-pi/4. $
]
]

#ezexam.question(label: n => [2013 数二 12])[
曲线 $cases(x=arctan t,y=ln sqrt(1+t^2))$ 上对应于 $t=1$ 的点处的法线方程为#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$x+y=pi/4+1/2 ln 2$.
]
]

#ezexam.question(label: n => [2013 数三 9])[
设曲线 $y=f(x)$ 与 $y=x^2-x$ 在点 $(1,0)$ 处有公共切线，则 $lim_(n->infinity)n f(n/(n+2))=$#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$-2$.
]
]

#ezexam.question(label: n => [2014 数二 12])[
曲线 $L$ 的极坐标方程是 $r=theta$，则 $L$ 在点 $(r,theta)=(pi/2,pi/2)$ 处的切线的直角坐标方程是#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$2/pi x+y-pi/2=0$.
]
]

#ezexam.question(label: n => [2015 数二 21])[
已知函数 $f(x)$ 在区间 $[a,+infinity)$ 上具有 2 阶导数，$f(a)=0,f'(x)>0,f''(x)>0$. 设 $b>a$，曲线 $y=f(x)$ 在点 $(b,f(b))$ 处的切线与 $x$ 轴的交点是 $(x_0,0)$，证明 $a<x_0<b$.
#ezexam.solution(show-number: false)[
曲线 $y=f(x)$ 在点 $(b,f(b))$ 处的切线方程是 $y-f(b)=f'(b)(x-b)$，解得切线与 $x$ 轴交点的横坐标 $x_0=b-f(b)/f'(b)$. 由于 $f'(x)>0$，故 $f(x)$ 单调增加. 由 $b>a$ 可知 $f(b)>f(a)=0$. 又 $f'(b)>0$，故 $f(b)/f'(b)>0$，即有 $x_0<b$.
$ x_0-a=b-f(b)/f'(b)-a=((b-a)f'(b)-f(b))/f'(b). $
由拉格朗日中值定理得 $f(b)=f(b)-f(a)=f'(xi)(b-a),a<xi<b$. 因为 $f''(x)>0$，所以 $f'(x)$ 单调增加，从而 $f'(xi)<f'(b)$，故 $f(b)<(b-a)f'(b)$. 由此可知 $x_0-a>0$，即 $x_0>a$. 综上，$a<x_0<b$.
]
]

#ezexam.question(label: n => [2016 数二 5])[
设函数 $f_i(x)$（$i=1,2$）具有二阶连续导数，且 $f_i''(x_0)<0$（$i=1,2$）. 若两条曲线 $y=f_i(x)$（$i=1,2$）在点 $(x_0,y_0)$ 处具有公切线 $y=g(x)$，且在该点处曲线 $y=f_1(x)$ 的曲率大于曲线 $y=f_2(x)$ 的曲率，则在 $x_0$ 的某个邻域内，有（　）.
#choices([$f_1(x)<=f_2(x)<=g(x)$],[$f_2(x)<=f_1(x)<=g(x)$],[$f_1(x)<=g(x)<=f_2(x)$],[$f_2(x)<=g(x)<=f_1(x)$])
#ezexam.solution(show-number: false)[
A.
]
]

#ezexam.question(label: n => [2017 数二 21])[
设 $y(x)$ 是区间 $(0,3/2)$ 内的可导函数，且 $y(1)=0$. 点 $P$ 是曲线 $l:y=y(x)$ 上的任意一点，$l$ 在点 $P$ 处的切线与 $y$ 轴相交于点 $(0,Y_P)$，法线与 $x$ 轴相交于点 $(X_P,0)$. 若 $X_P=Y_P$，求 $l$ 上点的坐标 $(x,y)$ 满足的方程.
#ezexam.solution(show-number: false)[
解　曲线 $l:y=y(x)$ 在点 $P(x,y)$ 的切线方程为 $Y-y=y'(X-x)$. 令 $X=0$ 得 $Y_P=y-x y'$. 曲线 $l:y=y(x)$ 在点 $P(x,y)$ 的法线方程为 $y'(Y-y)=-X+x$. 令 $Y=0$ 得 $X_P=x+y y'$. 由题设知 $x+y y'=y-x y'$，整理得
$ y'=(y-x)/(y+x)=(y/x-1)/(y/x+1). $
令 $y/x=u$，则 $(dif y)/(dif x)=u+x(dif u)/(dif x)$，代入上述方程并分离变量得
$ (1+u)/(1+u^2)dif u=-1/x dif x. $
两边积分得 $arctan u+1/2 ln(1+u^2)=-ln abs(x)+C$，即 $arctan(y/x)+1/2 ln(x^2+y^2)=C$. 因为曲线 $l$ 过点 $(1,0)$，所以 $C=0$，于是曲线 $l$ 上点的坐标 $(x,y)$ 满足的方程为
$ arctan(y/x)+1/2 ln(x^2+y^2)=0. $
]
]

#ezexam.question(label: n => [2018 数一 10])[
设函数 $f(x)$ 具有 2 阶连续导数. 若曲线 $y=f(x)$ 过点 $(0,0)$ 且与曲线 $y=2^x$ 在点 $(1,2)$ 处相切，则 $integral_0^1 x f''(x) dif x=$#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$2(ln 2-1)$.
]
]

#ezexam.question(label: n => [2018 数二 10、数三 9])[
曲线 $y=x^2+2ln x$ 在其拐点处的切线方程是#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$y=4x-3$.
]
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
#ezexam.solution(show-number: false)[
D.
]
]

*切线、法线条件确定曲线*

#ezexam.question(label: n => [1995 数一 5、数二 5])[
设曲线 $L$ 位于 $x O y$ 平面的第一象限内，$L$ 上任一点 $M$ 处的切线与 $y$ 轴总相交，交点记为 $A$. 已知 $abs(M A)=abs(O A)$，且 $L$ 过点 $(3/2,3/2)$，求 $L$ 的方程.
#ezexam.solution(show-number: false)[
设 $M=(x,y)$，切线与 $y$ 轴交于 $A=(0,y-x y')$. 由长度条件平方并化简得 $2y y'-y^2/x=-x$. 令 $z=y^2$，则 $z'-z/x=-x$，解得 $z=C x-x^2$. 由给定点得 $C=3$，故 $y=sqrt(3x-x^2)$，$0<x<3$.
]
]

#ezexam.question(label: n => [1996 数一 6])[
设对任意 $x>0$，曲线 $y=f(x)$ 上点 $(x,f(x))$ 处的切线在 $y$ 轴上的截距等于 $1/x integral_0^x f(t)dif t$，求 $f(x)$ 的一般表达式.
#ezexam.solution(show-number: false)[
切线截距为 $f(x)-x f'(x)$，故 $integral_0^x f(t)dif t=x f(x)-x^2 f'(x)$. 求导并化简得 $x f''(x)+f'(x)=0$，即 $(x f'(x))'=0$. 因此 $f(x)=C_1 ln x+C_2$，$x>0$. 代回原式可验证任意 $C_1,C_2$ 均成立.
]
]

#ezexam.question(label: n => [2002 数二 3])[
求曲线 $r=1-cos theta$ 在 $theta=pi/6$ 处的切线与法线的直角坐标方程.
#ezexam.solution(show-number: false)[
*解* 曲线的参数方程为
$ cases(x=(1-cos theta)cos theta,y=(1-cos theta)sin theta), $
即 $cases(x=cos theta-cos^2 theta,y=sin theta-sin theta cos theta)$. 曲线上对应于 $theta=pi/6$ 的点的直角坐标为 $(sqrt(3)/2-3/4,1/2-sqrt(3)/4)$.
$ lr((dif y)/(dif x)|)_(theta=pi/6)=lr(((dif y)/(dif theta))/((dif x)/(dif theta))|)_(theta=pi/6)=lr((cos theta-cos^2 theta+sin^2 theta)/(-sin theta+2cos theta sin theta)|)_(theta=pi/6)=1. $
所求的切线方程为 $y-1/2+sqrt(3)/4=x-sqrt(3)/2+3/4$，即
$ x-y-(3sqrt(3))/4+5/4=0. $
所求的法线方程为 $y-1/2+sqrt(3)/4=-(x-sqrt(3)/2+3/4)$，即
$ x+y-sqrt(3)/4+1/4=0. $
]
]

#ezexam.question(label: n => [2003 数二 8])[
设位于第一象限的曲线 $y=f(x)$ 过点 $(sqrt(2)/2,1/2)$，其上任一点 $P(x,y)$ 处的法线与 $y$ 轴的交点为 $Q$，且线段 $P Q$ 被 $x$ 轴平分.

（1）求曲线 $y=f(x)$ 的方程；

（2）已知曲线 $y=sin x$ 在 $[0,pi]$ 上的弧长为 $l$，试用 $l$ 表示曲线 $y=f(x)$ 的弧长 $s$.
#ezexam.solution(show-number: false)[
解 （1）曲线 $y=f(x)$ 在点 $P(x,y)$ 处的法线方程为
$ Y-y=-1/y' (X-x), $
其中 $(X,Y)$ 为法线上任意一点的坐标. 令 $X=0$，则
$ Y=y+x/y', $
故 $Q$ 点坐标为 $(0,y+x/y')$. 由题设知
$ y+y+x/y'=0, #text[即] 2y dif y+x dif x=0. $
积分得
$ x^2+2y^2=C quad (C #text[为任意常数]). $
由 $lr(y)|_(x=sqrt(2)/2)=1/2$ 知 $C=1$，故曲线 $y=f(x)$ 的方程为
$ x^2+2y^2=1. $
（2）曲线 $y=sin x$ 在 $[0,pi]$ 上的弧长为
$ l=2 integral_0^(pi/2) sqrt(1+cos^2 x) dif x. $
曲线 $y=f(x)$ 的参数方程为
$ cases(x=cos theta,y=sqrt(2)/2 sin theta), $
故
$ s=integral_0^(pi/2) sqrt(sin^2 theta+1/2 cos^2 theta) dif theta=1/sqrt(2) integral_0^(pi/2) sqrt(1+sin^2 theta) dif theta. $
令 $theta=pi/2-t$，则
$ s&=1/sqrt(2) integral_(pi/2)^0 sqrt(1+cos^2 t)(-dif t)=1/sqrt(2) integral_0^(pi/2) sqrt(1+cos^2 t) dif t \
&=l/(2 sqrt(2))=sqrt(2)/4 l. $
]
]

*切线与面积、体积及最值综合*

#ezexam.question(label: n => [1987 数二 8])[
求过曲线 $y=-x^2+1$ 上的一点，使过该点的切线与这条曲线及 $x,y$ 轴在第一象限围成图形的面积最小，最小面积是多少？
#ezexam.solution(show-number: false)[
由于曲线上点 $(x,y)$ 处的切线斜率为 $y'=-2x$，切线方程为
$ Y-y=-2x(X-x); $
令 $Y=0$ 解得 $X=x+y/(2x)=x/2+1/(2x)$；

令 $X=0$ 解得 $Y=y+2x^2=1+x^2$；

所求的图形面积为
$ S=1/2(x/2+1/(2x))(1+x^2)-integral_0^1(1-x^2)dif x $
$ =x^3/4+x/2+1/(4x)-2/3. $
$ S'_x=3/4 x^2+1/2-1/(4x^2)=((x^2+1)(3x^2-1))/(4x^2). $
令 $S'_x=0$ 解得唯一驻点 $x=1/sqrt(3)$，而且 $S'_x$ 在该处由负变正，$x=1/sqrt(3)$ 是极小点也是最小点. 所求的切点为 $(1/sqrt(3),2/3)$，最小面积
$ S(1/sqrt(3))=4/9 sqrt(3)-2/3. $
#align(center)[#image("assets/1987-数二-1987-数学二-切线面积.svg", width: 45%)]
]
]

#ezexam.question(label: n => [1988 数三 6、数四 9])[
过曲线 $y=x^2 (x>=0)$ 上某点 $A$ 作一切线，使之与曲线及 $x$ 轴围成图形的面积为 $1/12$，求：（1）切点 $A$ 的坐标；（2）过切点 $A$ 的切线方程；（3）由上述图形绕 $x$ 轴旋转成的旋转体体积 $V$.
#ezexam.solution(show-number: false)[
解　先画出草图.
#align(center)[#cetz.canvas(length: 20mm, {
 import cetz.draw: *
 let curve = range(0, 121).map(i => { let x = i/100; (x, x*x) })
 let top = range(0, 101).map(i => { let x = i/100; (x, x*x) })
 let bottom = range(0, 101).rev().map(i => { let x = i/100; (x, calc.max(0,2*x - 1)) })
 line(..(top+bottom), close: true, fill: rgb("eeeeee"), stroke: none)
 line((0,0),(1.55,0), mark: (end: ">"))
 line((0,0),(0,1.65), mark: (end: ">"))
 line(..curve)
 line((0.5,0),(1.25,1.5))
 line((1,0),(1,1), stroke: (dash: "dashed"))
 line((0,1),(1,1), stroke: (dash: "dashed"))
 content((-0.12,-0.1), $O$)
 content((1.6,-0.04), $x$)
 content((-0.05,1.7), $y$)
 content((1.12,1.03), $A$)
 content((0.5,-0.17), $x_0/2$)
 content((1,-0.17), $x_0$)
 content((-0.2,1), $x_0^2$)
 content((0.62,1.1), $y=x^2$)
})]
设曲线 $y=x^2(x>=0)$ 上切点坐标为 $(x_0,x_0^2)$，由 $f'(x)=2x$，知切线斜率为 $f'(x_0)=2x_0$，所以切线方程为
$ y-x_0^2=2x_0(x-x_0), quad y=2x_0x-x_0^2. $
令 $y=0$ 得 $x=x_0/2$，即 $A(x_0/2,0)$，则
$ S=integral_0^(x_0^2)((y+x_0^2)/(2x_0)-sqrt(y))dif y=1/12. $
整理得 $S=x_0^3/12=1/12$，解之即得 $x_0=1$，即 $A(1,1)$，故切线方程 $y=2x-1$.

平面绕 $x$ 轴旋转一周形成的体积为
$ V_x=integral_0^1 pi(x^2)^2 dif x-integral_(1/2)^1 pi(2x-1)^2 dif x=pi/30. $
注　注意在求积分的时候选取适当的积分变量.
]
]

#ezexam.question(label: n => [1990 数二 4])[
在椭圆 $x^2/a^2+y^2/b^2=1$ 的第一象限部分上求一点 $P$，使该点处的切线、椭圆及两坐标轴所围图形面积为最小（其中 $a>0,b>0$）.
#ezexam.solution(show-number: false)[
设 $P_0(x_0,y_0)$ 为所求之点，则 $P_0$ 处的切线方程为
$ (x x_0)/a^2+(y y_0)/b^2=1, $
截距 $a^2/x_0,b^2/y_0$，故所围图形的面积
$ S=1/2 (a^2 b^2)/(x_0 y_0)-pi/4 a b. $
为使计算简化，先求上式分母中 $S_1=x_0 y_0=x_0 b/a sqrt(a^2-x_0^2)$ 的极大值点，因为
$ S'_1=b/a[sqrt(a^2-x_0^2)-x_0^2/sqrt(a^2-x_0^2)] $
$ =b/a (a^2-2x_0^2)/sqrt(a^2-x_0^2). $
令 $S'_1=0$，得 $S_1$ 在 $(0,a)$ 内的唯一驻点 $x_0=a/sqrt(2)$，代入椭圆方程，得 $y_0=b/sqrt(2)$. 由问题的实际意义判断，或讨论 $S'_1$ 在 $x_0=a/sqrt(2)$ 两侧的符号为正变负，知此 $x_0$ 是 $S_1$ 的极大值点，也是在 $S_1$ 在 $(0,a)$ 内的最大值点. 此处是 $S$ 最小值点，故所求点为 $P_0(a/sqrt(2),b/sqrt(2))$.
]
]

#ezexam.question(label: n => [1990 数二 7])[
过点 $P(1,0)$ 作抛物线 $y=sqrt(x-2)$ 的切线，该切线与上述抛物线及 $x$ 轴围成一平面图形，求此平面图形绕 $x$ 轴旋转一周所成旋转体的体积.
#ezexam.solution(show-number: false)[
先求切线方程.
$ y'=1/(2sqrt(x-2)), $
点 $(x_0,sqrt(x_0-2))$ 处的切线方程为
$ y-sqrt(x_0-2)=1/(2sqrt(x_0-2))(x-x_0). $
由切线过 $(1,0)$，有
$ 0-sqrt(x_0-2)=1/(2sqrt(x_0-2))(1-x_0), $
解得 $x_0=3$. 由此，与抛物线相切于 $(3,1)$ 的切线方程为 $x-2y=1$. 求旋转体体积 $V$. 方法一　$dif V=2pi y[(y^2+2)-(2y+1)]dif y$，
$ V=2pi integral_0^1(y^3-2y^2+y)dif y=pi/6. $

方法二
$ V=pi integral_1^3 1/4(x-1)^2 dif x-pi integral_2^3(sqrt(x-2))^2 dif x=pi/6. $
#align(center)[#image("assets/1990-数二-1990-数学二-切线旋转体.svg", width: 45%)]
]
]

#ezexam.question(label: n => [1992 数二 7])[
求曲线 $y=sqrt(x)$ 的一条切线 $l$，使该曲线与切线 $l$ 及直线 $x=0,x=2$ 所围成的平面图形面积最小.
#ezexam.solution(show-number: false)[
点 $(t,sqrt(t))$ 处的切线方程为
$ y-sqrt(t)=1/(2sqrt(t))(x-t), $
即 $y=x/(2sqrt(t))+sqrt(t)/2$；

面积
$ S(t)=integral_0^2[x/(2sqrt(t))+sqrt(t)/2-sqrt(x)]dif x $
$ =1/sqrt(t)+sqrt(t)-4/3 sqrt(2), $
$ S'(t)=-1/2 t^(-3/2)+1/2 t^(-1/2)=(t-1)/(2t sqrt(t)). $
令 $S'(t)=0$ 解得唯一驻点 $t=1$，而且 $S'$ 在此处由负变正，$S$ 在此取极小值也即是最小值. 所求切线方程为 $y=x/2+1/2$.
#align(center)[#image("assets/1992-数二-1992-数学二-切线面积.svg", width: 45%)]
]
]

#ezexam.question(label: n => [1992 数三 8])[
设曲线方程为 $y=e^(-x) (x>=0)$.

（1）把曲线 $y=e^(-x)$，$x$ 轴，$y$ 轴和直线 $x=xi (xi>0)$ 所围成平面图形绕 $x$ 轴旋转一周，得一旋转体，求此旋转体体积 $V(xi)$；求满足 $V(a)=1/2 lim_(xi->+infinity)V(xi)$ 的 $a$.

（2）在此曲线上找一点，使过该点的切线与两个坐标轴所夹平面图形的面积最大，并求出该面积.
#ezexam.solution(show-number: false)[
分析　先利用定积分求旋转体体积公式求出 $V(xi)$，并求出极限 $lim_(xi->infinity)V(xi)$，问题（2）则是导数在求最值问题中的应用，首先应建立切线与坐标轴所夹面积关于切点横坐标的目标函数，然后运用导数方法求出极值点.

解　（1）
$ V(xi)&=pi integral_0^xi y^2 dif x=pi integral_0^xi e^(-2x)dif x \
&=-pi/2 e^(-2x)|_0^xi=pi/2(1-e^(-2xi)). $
故 $lim_(xi->infinity)V(xi)=pi/2$，$V(a)=pi/2(1-e^(-2a))$.

由 $pi/2(1-e^(-2a))=pi/4$ 得 $a=1/2ln 2$.

（2）设切点为 $(a,e^(-a))$，切线方程为
$ y-e^(-a)=-e^(-a)(x-a). $
令 $x=0$ 得 $y=(1+a)e^(-a)$；令 $y=0$ 得 $x=1+a$，切线与坐标轴所夹面积
$ S=1/2(1+a)^2e^(-a). $
$ S'&=(1+a)e^(-a)-1/2(1+a)^2e^(-a) \
&=(1+a)(1/2-1/2a)e^(-a)=1/2(1-a^2)e^(-a). $
令 $S'=0$，得 $a_1=1,a_2=-1$（舍去）.

由于 $a<1$ 时 $S'>0$；当 $a>1$ 时 $S'<0$，故当 $a=1$ 时面积 $S$ 有极大值，即最大值.

所求切点为 $(1,e^(-1))$，最大面积 $S=1/2 dot 2^2e^(-1)=2e^(-1)$.
]
]

#ezexam.question(label: n => [1992 数四 9])[
给定曲线 $y=1/x^2$.

（1）求曲线在横坐标为 $x_0$ 的点处的切线方程；

（2）求曲线的切线被两坐标轴所截线段的最短长度.
#ezexam.solution(show-number: false)[
解　（1）曲线上横坐标为 $x_0$ 的点是 $(x_0,1/x_0^2)$，曲线在该点处切线的斜率为 $y'|_(x=x_0)=-2/x_0^3$.

过此点的切线方程为 $y-1/x_0^2=-2/x_0^3(x-x_0)$.

（2）由上式可知，曲线上一点切线方程为 $y-1/x_0^2=-2/x_0^3(x-x_0)$.

令 $x=0$ 得 $y=3/x_0^2$，故在 $y$ 轴上截距为 $B=3/x_0^2$.

令 $y=0$ 得 $x=3/2x_0$，故在 $x$ 轴截距为 $A=3/2x_0$.

设所截线段长度为 $l$，则 $l^2=A^2+B^2=9(x_0^2/4+1/x_0^4)$.

设 $z=l^2$，则 $z'=9(x_0/2-4/x_0^5)$.

令 $z'=0$，得驻点 $x_0=plus.minus sqrt(2)$.

由 $z''=9(1/2+20/x_0^6)>0$ 知，$l$ 在 $x_0=plus.minus sqrt(2)$ 取极小值，亦即最小值.

因此 $l^2=9(2/4+1/4)=27/4$，$l=(3sqrt(3))/2$.
]
]

#ezexam.question(label: n => [1994 数四 7])[
已知曲线 $y=a sqrt(x)$（$a>0$）与曲线 $y=ln sqrt(x)$ 在点 $(x_0,y_0)$ 处有公共切线，求：

（1）常数 $a$ 及切点 $(x_0,y_0)$；

（2）两曲线与 $x$ 轴围成的平面图形绕 $x$ 轴旋转所得旋转体的体积 $V_x$.
#ezexam.solution(show-number: false)[
（1）切线斜率相同给出 $a/(2sqrt(x_0))=1/(2x_0)$，结合 $a sqrt(x_0)=ln sqrt(x_0)$，得 $a=1/e$、$(x_0,y_0)=(e^2,1)$.

（2）由截面圆环法，
$ V_x=pi integral_0^(e^2) x/e^2 dif x-pi/4 integral_1^(e^2)(ln x)^2 dif x=pi/2. $
对应两条母线及旋转截面如下.
#cetz.canvas({
 import cetz.draw: *
 line((-.3,0),(4.4,0),mark:(end:"stealth")); content((4.5,0),$x$)
 line((0,-1.8),(0,2),mark:(end:"stealth")); content((.15,2),$y$)
 for sign in (-1,1) {
  line(..range(0,101).map(i=>{let x=calc.exp(2)*i/100; (x*.5,sign*1.5*calc.sqrt(x)/calc.exp(1))}))
  line(..range(0,101).map(i=>{let x=1+(calc.exp(2)-1)*i/100; (x*.5,sign*.75*calc.ln(x))}),stroke:(dash:"dashed"))
 }
 circle((calc.exp(2)*.5,0),radius:(.25,1.5))
 content((3.7,-.2),$e^2$); content((.5,-.2),$1$); content((-.2,-.2),$O$)
 content((2.2,1.55),$y=e^(-1)sqrt(x)$); content((2,-1.6),$y=ln sqrt(x)$)
})
]
]

#ezexam.question(label: n => [1994 数五 7])[
已知曲线 $y=a sqrt(x)$（$a>0$）与曲线 $y=ln sqrt(x)$ 在点 $(x_0,y_0)$ 处有公共切线，求：

（1）常数 $a$ 及切点 $(x_0,y_0)$；

（2）两曲线与 $x$ 轴围成的平面图形的面积 $S$.
#ezexam.solution(show-number: false)[
（1）切线斜率相同给出 $a/(2sqrt(x_0))=1/(2x_0)$，结合 $a sqrt(x_0)=ln sqrt(x_0)$，得 $a=1/e$、$(x_0,y_0)=(e^2,1)$.

（2）按 $y$ 积分，两条边界为 $x=e^2 y^2$ 和 $x=e^(2y)$，故
$ S=integral_0^1 (e^(2y)-e^2 y^2)dif y=e^2/6-1/2. $
#cetz.canvas({
 import cetz.draw: *
 line((-.3,0),(4.4,0),mark:(end:"stealth")); content((4.5,0),$x$)
 line((0,-.6),(0,2),mark:(end:"stealth")); content((.15,2),$y$)
 line(..range(0,101).map(i=>{let x=calc.exp(2)*i/100; (x*.5,1.5*calc.sqrt(x)/calc.exp(1))}))
 line(..range(0,101).map(i=>{let x=.5+(calc.exp(2)-.5)*i/100; (x*.5,.75*calc.ln(x))}))
 line((0,1.5),(3.695,1.5),(3.695,0),stroke:(dash:"dashed"))
 content((3.7,-.2),$e^2$); content((.5,-.2),$1$); content((-.2,-.2),$O$)
 content((2.2,1.7),$y=e^(-1)sqrt(x)$); content((2,.65),$y=ln sqrt(x)$)
})
]
]

#ezexam.question(label: n => [1995 数MBA 5])[
试求：

（1）曲线 $y=sqrt(x)$ 在点 $(1,1)$ 处的切线方程；

（2）曲线 $y=sqrt(x)$ 在点 $(1,1)$ 处的切线与曲线 $y=1/2 x^2-1/2$ 所围区域的面积 $S$.
#ezexam.solution(show-number: false)[
（1）切线斜率为 $y'(1)=1/2$，故切线方程为 $y=x/2+1/2$.

（2）联立直线与抛物线方程，得交点横坐标为 $-1,2$，因此
$ S=integral_(-1)^2 (x/2+1/2-(x^2/2-1/2))dif x=9/4. $
]
]

#ezexam.question(label: n => [1998 数二 9])[
设有曲线 $y=sqrt(x-1)$，过原点作其切线，求由此曲线、切线及 $x$ 轴围成的平面图形绕 $x$ 轴旋转一周所得到的旋转体的表面积.
#ezexam.solution(show-number: false)[
设切点为 $(x_0,sqrt(x_0-1))$，则过原点的切线方程为 $y=frac(1,2sqrt(x_0-1))x$. 再以点 $(x_0,sqrt(x_0-1))$ 代入，解得 $x_0=2$，$y_0=sqrt(x_0-1)=1$，则上述切线方程为 $y=frac(1,2)x$. （3分）

由曲线 $y=sqrt(x-1)$（$1<=x<=2$）绕 $x$ 轴旋转一周所得到的旋转面的面积
$ S_1=integral_1^2 2pi y sqrt(1+y'^2) dif x=pi integral_1^2 sqrt(4x-3) dif x=frac(pi,6)(5sqrt(5)-1); quad "（6分）" $
由直线段 $y=frac(1,2)x$（$0<=x<=2$）绕 $x$ 轴旋转一周所得到的旋转面的面积
$ S_2=integral_0^2 2pi dot frac(1,2)x frac(sqrt(5),2) dif x=sqrt(5)pi. $
#import "@preview/cetz:0.5.2"
#cetz.canvas({
 import cetz.draw: *
 let p = (0, 0)
 let curve = range(0, 41).map(i => { let y = i / 40; (1 + y*y, y) })
 set-style(stroke: 0.6pt)
 line((0,0),(2,1),..curve.rev(),close: true,fill: luma(92%))
 line((-0.2,0),(2.7,0),mark: (end: ">"))
 line((0,-0.15),(0,1.8),mark: (end: ">"))
 line((2,0),(2,1),stroke: (dash: "dashed"))
 circle((2,1),radius: 0.025,fill: black)
 content((2.75,0),$x$); content((0,1.85),$y$)
 content((-0.12,-0.12),$O$)
 content((1,-0.13),$1$); content((2,-0.13),$2$)
 content((2.1,1.2),$(2,1)$)
})
因此，所求旋转体的表面积为
$ S=S_1+S_2=frac(pi,6)(11sqrt(5)-1). quad "（8分）" $
]
]

#ezexam.question(label: n => [1999 数一 5、数二 9])[
设函数 $y(x)$（$x>=0$）二阶可导且 $y'(x)>0,y(0)=1$. 过曲线 $y=y(x)$ 上任意一点 $P(x,y)$ 作该曲线的切线及 $x$ 轴的垂线，上述两直线与 $x$ 轴所围成的三角形的面积记为 $S_1$，区间 $[0,x]$ 上以 $y=y(x)$ 为曲边的曲边梯形面积记为 $S_2$，并设 $2S_1-S_2$ 恒为1，求此曲线 $y=y(x)$ 的方程.
#ezexam.solution(show-number: false)[
曲线 $y=y(x)$ 上点 $P(x,y)$ 处的切线方程为 $Y-y=y'(x)(X-x)$. 它与 $x$ 轴的交点为 $(x-frac(y,y'),0)$. 由于 $y'(x)>0,y(0)=1$，从而 $y(x)>0$，于是
$ S_1=frac(1,2)y|x-(x-frac(y,y'))|=frac(y^2,2y'). $
又 $S_2=integral_0^x y(t)dif t$，由条件 $2S_1-S_2=1$ 知
$ frac(y^2,y')-integral_0^x y(t)dif t=1. quad "（*）" quad "（2分）" $
两边对 $x$ 求导并化简得
$ y y''=(y')^2. quad "（3分）" $
令 $p=y'$，则上述方程可化为 $y p frac(dif p,dif y)=p^2$，从而 $frac(dif p,p)=frac(dif y,y)$. 解得 $p=C_1 y$，即 $frac(dif y,dif x)=C_1 y$. 于是
$ y=e^(C_1 x+C_2). quad "（5分）" $
注意到 $y(0)=1$，并由（\*）式得 $y'(0)=1$. 由此可得 $C_1=1,C_2=0$，故所求曲线的方程是
$ y=e^x. quad "（6分）" $
]
]

#ezexam.question(label: n => [1999 数三 3、数四 3])[
曲线 $y=frac(1,sqrt(x))$ 的切线与 $x$ 轴和 $y$ 轴围成一个图形，记切点的横坐标为 $a$. 试求切线方程和这个图形的面积. 当切点沿曲线趋于无穷远时，该面积的变化趋势如何？
#ezexam.solution(show-number: false)[
由 $y=frac(1,sqrt(x))$，得 $y'=-frac(1,2)x^(-frac(3,2))$，则切点 $P(a,frac(1,sqrt(a)))$ 处的切线方程为
$ y-frac(1,sqrt(a))=-frac(1,2sqrt(a^3))(x-a). quad "（2分）" $
#import "@preview/cetz:0.5.2"
#cetz.canvas({
 import cetz.draw: *
 set-style(stroke:0.6pt)
 line((-0.15,0),(3.5,0),mark:(end:">"));line((0,-0.15),(0,2.8),mark:(end:">"))
 line((0,1.5),(3,0))
 let curve=range(0,61).map(i=>{let x=0.16+i*3/60;(x,1/calc.sqrt(x))})
 line(..curve)
 line((1,0),(1,1),stroke:(dash:"dashed"));circle((1,1),radius:0.025,fill:black)
 content((3.6,0),$x$);content((0,2.9),$y$);content((-0.15,-0.12),$O$)
 content((-0.13,1.5),$R$);content((1,-0.18),$a$);content((1.1,1.22),$P$);content((3,-0.18),$Q$)
})
切线与 $x$ 轴和 $y$ 轴的交点分别为 $Q(3a,0)$ 和 $R(0,frac(3,2sqrt(a)))$. （3分）

于是，$triangle O R Q$ 的面积
$ S=frac(1,2)dot 3a dot frac(3,2sqrt(a))=frac(9,4)sqrt(a). quad "（4分）" $
当切点按 $x$ 轴正方向趋于无穷远时，有 $lim_(a -> +infinity) S=+infinity$. （5分）

当切点按 $y$ 轴正方向趋于无穷远时，有 $lim_(a -> 0^+) S=0$. （6分）
]
]

#ezexam.question(label: n => [2001 数二 8])[
设 $L$ 是一条平面曲线，其上任意一点 $P(x,y) (x>0)$ 到坐标原点的距离，恒等于该点处的切线在 $y$ 轴上的截距，且 $L$ 经过点 $(1/2,0)$.

（1）试求曲线 $L$ 的方程；

（2）求 $L$ 位于第一象限部分的一条切线，使该切线与 $L$ 以及两坐标轴所围图形的面积最小.
#ezexam.solution(show-number: false)[
*解* （1）设曲线 $L$ 过点 $P(x,y)$ 的切线方程为 $Y-y=y'(X-x)$，令 $X=0$，则得该切线在 $y$ 轴上的截距为 $y-x y'$. 由题设知 $sqrt(x^2+y^2)=y-x y'$，令 $u=y/x$，则此方程可化为
$ (dif u)/sqrt(1+u^2)=-(dif x)/x, $
解之得 $y+sqrt(x^2+y^2)=C$. 由 $L$ 经过点 $(1/2,0)$，知 $C=1/2$，于是 $L$ 方程为
$ y+sqrt(x^2+y^2)=1/2, quad #text[即] y=1/4-x^2. $
（2）设第一象限内曲线 $y=1/4-x^2$ 在点 $P(x,y)$ 处的切线方程为
$ Y-(1/4-x^2)=-2x(X-x), $
即 $Y=-2x X+x^2+1/4 (0<x<=1/2)$，它与 $x$ 轴及 $y$ 轴交点分别为 $((x^2+1/4)/(2x),0)$ 与 $(0,x^2+1/4)$，所求面积为
$ S(x)=1/2 dot (x^2+1/4)^2/(2x)-integral_0^(1/2) (1/4-x^2) dif x. $
对 $x$ 求导得
$ S'(x)=1/4 dot (4x^2(x^2+1/4)-(x^2+1/4)^2)/x^2=1/(4x^2)(x^2+1/4)(3x^2-1/4). $
令 $S'(x)=0$，解得 $x=sqrt(3)/6$. 当 $0<x<sqrt(3)/6$ 时，$S'(x)<0$；$x>sqrt(3)/6$ 时，$S'(x)>0$，因而 $x=sqrt(3)/6$ 是 $S(x)$ 在 $(0,1/2)$ 内的唯一极小值点，即最小值点. 于是所求切线为
$ Y=-2dot sqrt(3)/6 X+3/36+1/4, $
即 $Y=-sqrt(3)/3 X+1/3$.
]
]

#ezexam.question(label: n => [2003 数一 3])[
过坐标原点作曲线 $y=ln x$ 的切线，该切线与曲线 $y=ln x$ 及 $x$ 轴围成平面图形 $D$.

（1）求 $D$ 的面积 $A$；

（2）求 $D$ 绕直线 $x=e$ 旋转一周所得旋转体的体积 $V$.
#ezexam.solution(show-number: false)[
*解* （1）设切点的横坐标为 $x_0$，则曲线 $y=ln x$ 在点 $(x_0,ln x_0)$ 处的切线方程是 $y=ln x_0+1/x_0 (x-x_0)$. 由该切线过原点知 $ln x_0-1=0$，从而 $x_0=e$，所以该切线的方程为 $y=1/e x$. 平面图形 $D$ 的面积
$ A=integral_0^1 (e^y-e y) dif y=1/2 e-1. $
（2）切线 $y=1/e x$ 与 $x$ 轴及直线 $x=e$ 所围成的三角形绕直线 $x=e$ 旋转所得的圆锥体积为 $V_1=1/3 pi e^2$. 曲线 $y=ln x$ 与 $x$ 轴及直线 $x=e$ 所围成的图形绕直线 $x=e$ 旋转所得的旋转体体积为
$ V_2=integral_0^1 pi (e-e^y)^2 dif y. $
因此所求旋转体的体积为
$ V=V_1-V_2=1/3 pi e^2-integral_0^1 pi (e-e^y)^2 dif y=pi/6 (5e^2-12e+3). $
]
]

#ezexam.question(label: n => [2006 数二 21])[
已知曲线 $L$ 的方程为 $cases(x=t^2+1,y=4t-t^2) (t>=0)$，

（Ⅰ）讨论 $L$ 的凹凸性；

（Ⅱ）过点 $(-1,0)$ 引 $L$ 的切线，求切点 $(x_0,y_0)$ 并写出切线的方程；

（Ⅲ）求此切线与 $L$（对应于 $x<=x_0$ 的部分）及 $x$ 轴所围成的平面图形的面积.
#ezexam.solution(show-number: false)[
解法1　（Ⅰ）由于 $(dif y)/(dif x)=2/t-1,(dif^2 y)/(dif x^2)=-1/t^3$，当 $t>0$ 时，$(dif^2 y)/(dif x^2)<0$，故 $L$ 上凸.

（Ⅱ）因为当 $t=0$ 时，$L$ 在对应点处的切线方程为 $x=1$，不合题意，故设切点 $(x_0,y_0)$ 对应的参数为 $t_0>0$，则 $L$ 在 $(x_0,y_0)$ 处的切线方程为
$ y-(4t_0-t_0^2)=(2/t_0-1)(x-t_0^2-1). $
令 $x=-1,y=0$，得 $t_0^2+t_0-2=0$，解得 $t_0=1$ 或 $t_0=-2$（舍去）. 由 $t_0=1$ 知，切点为 $(2,3)$，且切线方程为 $y=x+1$.

（Ⅲ）由 $t=0,t=4$ 知 $L$ 与 $x$ 轴的交点分别为 $(1,0)$ 和 $(17,0)$. 所求平面图形的面积为
$ S=integral_(-1)^2(x+1)dif x-integral_1^2 y dif x \
=9/2-integral_0^1(4t-t^2)dif(t^2+1) \
=9/2-2integral_0^1(4t^2-t^3)dif t=7/3. $
解法2　（Ⅰ）同解法1.

（Ⅱ）$L$ 的直角坐标方程为 $y=4sqrt(x-1)-(x-1)$. 因为当 $x_0=1$ 时，$L$ 在对应点处的切线方程为 $x=1$，不合题意，故可设 $L$ 在点 $(x_0,y_0)$ 处的切线方程为
$ y-y_0=(2/sqrt(x_0-1)-1)(x-x_0),quad x_0>1. $
将 $x=-1,y=0$ 代入上式，得
$ -y_0=(2/sqrt(x_0-1)-1)(-1-x_0), $
$ -4sqrt(x_0-1)+(x_0-1)=(-2+sqrt(x_0-1))/sqrt(x_0-1)(x_0+1), $
整理得 $(x_0-1)+sqrt(x_0-1)-2=0$，即 $(sqrt(x_0-1)+2)(sqrt(x_0-1)-1)=0$，解得 $x_0=2$，并得 $y_0=3$，即切点为 $(2,3)$. 因此切线方程为 $y=x+1$.

（Ⅲ）令 $y=0$，得 $L$ 与 $x$ 轴的交点分别为 $(1,0),(17,0)$. 所求平面图形面积为
$ S=integral_(-1)^2(x+1)dif x-integral_1^2[4sqrt(x-1)-(x-1)]dif x \
=9/2-lr([8/3(x-1)^(3/2)-1/2(x-1)^2])|_1^2 \
=9/2-13/6=7/3. $
]
]

#ezexam.question(label: n => [2006 数三 18、数四 18])[
在 $x O y$ 坐标平面上，连续曲线 $L$ 过点 $M(1,0)$，其上任意点 $P(x,y) (x!=0)$ 处的切线斜率与直线 $O P$ 的斜率之差等于 $a x$（常数 $a>0$）.

（Ⅰ）求 $L$ 的方程；

（Ⅱ）当 $L$ 与直线 $y=a x$ 所围成平面图形的面积为 $8/3$ 时，确定 $a$ 的值.
#ezexam.solution(show-number: false)[
（Ⅰ）依题意得 $y'-1/x y=a x$，求得其通解为
$ y=e^(integral 1/x dif x)(integral a x e^(-integral 1/x dif x)dif x+C)=a x^2+C x. $
将 $x=1,y=0$ 代入上式得 $C=-a$，从而 $L$ 的方程为 $y=a x^2-a x$.

（Ⅱ）$L$ 与直线 $y=a x$ 的交点坐标为 $(0,0)$ 和 $(2,2a)$，那么 $L$ 与直线 $y=a x$ 围成平面图形的面积
$ S(a)=integral_0^2(a x-a x^2+a x)dif x=integral_0^2(2a x-a x^2)dif x=4/3 a, $
于是由题设知 $4/3 a=8/3$，从而 $a=2$.
]
]

#ezexam.question(label: n => [2012 数一 18])[
已知曲线 $L:cases(x=f(t),y=cos t) (0<=t<pi/2)$，其中函数 $f(t)$ 具有连续导数，且 $f(0)=0,f'(t)>0 (0<t<pi/2)$. 若曲线 $L$ 的切线与 $x$ 轴交点到切点的距离恒为1，求函数 $f(t)$ 的表达式，并求以曲线 $L$ 及 $x$ 轴和 $y$ 轴为边界的区域的面积.
#ezexam.solution(show-number: false)[
解　曲线 $L$ 的切线斜率 $k=y'_t/x'_t=-(sin t)/f'(t)$，切线方程为
$ y-cos t=-(sin t)/f'(t)[x-f(t)]. $
令 $y=0$，得切线与 $x$ 轴交点的横坐标为 $x_0=f'(t)(cos t)/(sin t)+f(t)$. 由题意得 $[f'(t)(cos t)/(sin t)]^2+cos^2 t=1$. 因为 $f'(t)>0$，解得 $f'(t)=sin^2 t/(cos t)=1/(cos t)-cos t$. 由于 $f(0)=0$，所以 $f(t)=ln(sec t+tan t)-sin t$. 因为 $f(0)=0,lim_(t->pi/2)f(t)=+infinity$，所以以曲线 $L$ 及 $x$ 轴和 $y$ 轴为边界的区域是无界区域，其面积为
$ S=integral_0^(+infinity)y dif x=integral_0^(pi/2)cos t dot f'(t)dif t=integral_0^(pi/2)sin^2 t dif t=pi/4. $
]
]

#ezexam.question(label: n => [2012 数二 17])[
过点 $(0,1)$ 作曲线 $L:y=ln x$ 的切线，切点为 $A$，又 $L$ 与 $x$ 轴交于 $B$ 点，区域 $D$ 由 $L$ 与直线 $A B$ 围成，求区域 $D$ 的面积及 $D$ 绕 $x$ 轴旋转一周所得旋转体的体积.
#ezexam.solution(show-number: false)[
解　设切点 $A$ 的坐标为 $(x_1,y_1)$，则切线方程为
$ y-y_1=1/x_1(x-x_1), $
将点 $(0,1)$ 代入，得 $x_1=e^2,y_1=2$. 所求面积为
$ S&=integral_1^(e^2)ln x dif x-1/2(e^2-1) dot 2 \
 &=lr(x ln x)|_1^(e^2)-integral_1^(e^2)dif x-e^2+1 \
 &=2e^2-e^2+1-e^2+1=2. $
所求体积为
$ V&=pi integral_1^(e^2)ln^2 x dif x-pi/3 dot 4 dot (e^2-1) \
 &=pi lr(x ln^2 x-2x ln x+2x)|_1^(e^2)-(4pi)/3(e^2-1)=(2pi)/3(e^2-1). $
]
]

#ezexam.question(label: n => [2015 数一 16、数三 18])[
设函数 $f(x)$ 在定义域 $I$ 上的导数大于零. 若对任意的 $x_0 in I$，曲线 $y=f(x)$ 在点 $(x_0,f(x_0))$ 处的切线与直线 $x=x_0$ 及 $x$ 轴所围成区域的面积为 4，且 $f(0)=2$，求 $f(x)$ 的表达式.
#ezexam.solution(show-number: false)[
曲线 $y=f(x)$ 在点 $(x_0,f(x_0))$ 处的切线方程为
$ y=f'(x_0)(x-x_0)+f(x_0), $
该切线与 $x$ 轴的交点为 $(x_0-f(x_0)/f'(x_0),0)$. 根据题设条件可知 $1/2 abs(f(x_0))/f'(x_0) dot abs(f(x_0))=4$，即 $y=f(x)$ 满足方程 $y'=1/8 y^2$. 解得 $y=-8/(8C+x)$. 因为 $f(0)=2$，所以 $C=-1/2$. 故 $f(x)=8/(4-x),x in I$.
]
]

