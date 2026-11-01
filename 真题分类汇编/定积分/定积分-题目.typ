#import "../template.typ": collection
#show: collection.with(title: "积分分类汇编", subject: "定积分汇编")
#import "@preview/ezexam:0.3.1" as ezexam
#let choices = ezexam.choices.with(r-gap: 1.3em)
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)

= 历年真题：定积分


*新增真题* 

#ezexam.question(label: n => [1987 数二 1（4）])[
$integral f'(x)dif x=$ #fillin(len: 4em)[]，$integral_a^b f'(2x)dif x=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [1987 数二 7])[
求 $integral_0^1 x arcsin x dif x$.
]

#ezexam.question(label: n => [1987 数四 6])[
求 $integral_(1/2)^1 e^(sqrt(2x-1))dif x$.
]

#ezexam.question(label: n => [1988 数二 1（4）])[
$integral_0^4 e^(sqrt(x))dif x=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [1988 数二 6])[
设 $x>=-1$，求 $integral_(-1)^x(1-abs(t))dif t$.
]

#ezexam.question(label: n => [1988 数三 4、数四 6])[
求 $integral_0^3 1/((1+x)sqrt(x))dif x$.
]

#ezexam.question(label: n => [1989 数二 1（2）])[
$integral_0^pi t sin t dif t=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [1989 数二 3（5）])[
已知 $f(2)=1/2,f'(2)=0$ 及 $integral_0^2 f(x)dif x=1$，求 $integral_0^1 x^2 f''(2x)dif x$.
]

#ezexam.question(label: n => [1989 数三 5])[
已知函数
$ f(x)=cases(x & 0<=x<=1,2-x & 1<x<=2), $
试计算下列各题.

（1）$S_0=integral_0^2 f(x)e^(-x)dif x$；（4分）

（2）$S_1=integral_2^4 f(x-2)e^(-x)dif x$；（2分）

（3）$S_n=integral_(2n)^(2n+2)f(x-2n)e^(-x)dif x (n=2,3,dots)$；（1分）

（4）$S=sum_(n=0)^infinity S_n$.（2分）
]

#ezexam.question(label: n => [1990 数一 3（1）])[
求 $integral_0^1 (ln(1+x))/(2-x)^2 dif x$.
]

#ezexam.question(label: n => [1990 数二 1（3）])[
$integral_0^1 x sqrt(1-x)dif x=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [1990 数二 6])[
设 $f(x)=integral_1^x (ln t)/(1+t)dif t$，其中 $x>0$，求 $f(x)+f(1/x)$.
]

#ezexam.question(label: n => [1992 数一 3（3）、数二 4])[
设 $f(x)=cases(1+x^2 & x<=0,e^(-x) & x>0)$，求 $integral_1^3 f(x-2)dif x$.
]

#ezexam.question(label: n => [1992 数二 1（4）])[
$integral_1^(+infinity)(dif x)/(x(x^2+1))=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [1992 数二 3（4）])[
求 $integral_0^pi sqrt(1-sin x)dif x$.
]

*直接积分求值*

#ezexam.question(label: n => [1991 数三 3（2）])[
计算 $integral_1^4 (dif x)/(x(1+sqrt(x)))$.
]

#ezexam.question(label: n => [1991 数五 4])[
（5分）

求定积分 $I=integral_(-1)^1 (2x+abs(x)+1)^2 dif x$.
]

#ezexam.question(label: n => [1993 数三 3（3）])[
求 $integral_0^(pi/4) x/(1+cos 2x)dif x$.
]

#ezexam.question(label: n => [1994 数三 3（2）])[
计算 $integral_0^1 x(1-x^4)^(3/2)dif x$.
]

#ezexam.question(label: n => [1994 数四 1（1）、数五 1（1）])[
$integral_(-2)^2 (x+abs(x))/(2+x^2)dif x=$ ＿＿＿＿.
]

#ezexam.question(label: n => [1996 数三 1（2）])[
$integral_(-1)^1 (x+sqrt(1-x^2))^2 dif x=$ ＿＿＿＿.
]

#ezexam.question(label: n => [1996 数三 3（1）])[
计算 $integral_0^(ln 2)sqrt(1-e^(-2x))dif x$.
]

#ezexam.question(label: n => [2000 数一 1（1）])[
$integral_0^1 sqrt(2x-x^2)dif x=$ #underline[　　　].
]

#ezexam.question(label: n => [2001 数二 1（3）])[
$integral_(-pi/2)^(pi/2) (x^3+sin^2 x)cos^2 x dif x=$#h(3em).
]

#ezexam.question(label: n => [2003 数四 1（2）])[
$integral_(-1)^1 (|x|+x)e^(-|x|) dif x=$#h(3em).
]

#ezexam.question(label: n => [2004 数三 3、数四 3])[
设 $f(x)=cases(x e^(x^2) & -1/2<=x<1/2,-1 & x>=1/2)$，则 $integral_(1/2)^2 f(x-1)dif x=$#h(3em).
]

#ezexam.question(label: n => [2005 数二 3])[
定积分 $integral_0^1 (x dif x)/((2-x^2)sqrt(1-x^2))=$#h(3em).
]

#ezexam.question(label: n => [2007 数一 11])[
$integral_1^2 1/x^3 e^(1/x)dif x=$#h(3em).
]

#ezexam.question(label: n => [2008 数二 17])[
（本题满分9分）
计算 $integral_0^1 (x^2 arcsin x)/sqrt(1-x^2)dif x$.
]

#ezexam.question(label: n => [2010 数一 10])[
$integral_0^(pi^2)sqrt(x)cos sqrt(x)dif x=$ \_\_\_\_.
]

#ezexam.question(label: n => [2012 数一 10])[
$integral_0^2 x sqrt(2x-x^2)dif x=$#h(3em).
]

#ezexam.question(label: n => [2015 数一 10])[
$integral_(-pi/2)^(pi/2)((sin x)/(1+cos x)+abs(x))dif x=$ #underline[　　　].
]

#ezexam.question(label: n => [2017 数三 9])[
$integral_(-pi)^pi (sin^3 x+sqrt(pi^2-x^2))dif x=$＿＿＿＿.
]

*反常积分求值*

#ezexam.question(label: n => [1991 数二 4（1）])[
求 $integral_3^(+infinity) (dif x)/((x-1)^4 sqrt(x^2-2x))$.
]

#ezexam.question(label: n => [1991 数三 1（3）])[
$integral_1^(+infinity)(ln x)/x^2 dif x=$ ＿＿＿＿.
]

#ezexam.question(label: n => [1993 数三 3（4）])[
求 $integral_0^(+infinity)x/(1+x)^3 dif x$.
]

#ezexam.question(label: n => [1994 数四 4])[
（5分）

设函数 $y=y(x)$ 满足条件 $cases(y''+4y'+4y=0,y(0)=2, y'(0)=-4)$，求广义积分 $integral_0^infinity y(x)dif x$.
]

#ezexam.question(label: n => [1996 数四 5、数五 5])[
计算 $integral_0^infinity (x e^(-x))/(1+e^(-x))^2 dif x$.
]

#ezexam.question(label: n => [1997 数二 1（4）])[
$integral_0^infinity (dif x)/(x^2+4x+8)=$ ＿＿＿＿.
]

#ezexam.question(label: n => [1998 数二 6])[
（本题满分6分）

计算积分 $integral_(frac(1,2))^(frac(3,2)) frac(dif x,sqrt(|x-x^2|))$.
]

#ezexam.question(label: n => [1999 数二 4])[
（本题满分6分）

计算 $integral_1^(+infinity) frac(arctan x,x^2)dif x$.
]

#ezexam.question(label: n => [2000 数二 1（3）])[
$integral_2^(+infinity)frac(dif x,(x+7)sqrt(x-2))=$ #underline[　　　].
]

#ezexam.question(label: n => [2000 数三 1（2）])[
$integral_1^(+infinity)frac(dif x,e^x+e^(2-x))=$ #underline[　　　].
]

#ezexam.question(label: n => [2000 数四 4])[
（本题满分6分）计算 $I=integral_1^(+infinity)frac(dif x,e^(1+x)+e^(3-x))$.
]

#ezexam.question(label: n => [2002 数一 1（1）])[
$integral_e^(+infinity) (dif x)/(x ln^2 x)=$#h(3em).
]

#ezexam.question(label: n => [2006 数二 3])[
反常积分 $integral_0^(+infinity)(x dif x)/(1+x^2)^2=$#h(3em).
]

#ezexam.question(label: n => [2011 数二 12])[
设函数 $f(x)=cases(lambda e^(-lambda x) & x>0,0 & x<=0),lambda>0$，则 $integral_(-infinity)^(+infinity)x f(x)dif x=$ \_\_\_\_.
]

#ezexam.question(label: n => [2013 数一 12、数三 11])[
$integral_1^infinity (ln x)/(1+x)^2 dif x=$#h(3em).
]

#ezexam.question(label: n => [2014 数二 9])[
$integral_(-infinity)^1 1/(x^2+2x+5)dif x=$#h(3em).
]

#ezexam.question(label: n => [2016 数一 16])[
（本题满分 10 分）设函数 $y(x)$ 满足方程 $y''+2y'+k y=0$，其中 $0<k<1$.

（Ⅰ）证明：反常积分 $integral_0^infinity y(x)dif x$ 收敛；

（Ⅱ）若 $y(0)=1,y'(0)=1$，求 $integral_0^infinity y(x)dif x$ 的值.
]

#ezexam.question(label: n => [2017 数二 11])[
$integral_0^(+infinity)ln(1+x)/(1+x)^2 dif x=$＿＿＿＿.
]

#ezexam.question(label: n => [2018 数二 11])[
$integral_5^(+infinity) 1/(x^2-4x+3) dif x=$\_\_\_\_\_\_.
]

*由函数关系求积分*

#ezexam.question(label: n => [1991 数三 8])[
（9分）

设函数 $f(x)$ 在 $(-infinity,+infinity)$ 内满足 $f(x)=f(x-pi)+sin x$，且 $f(x)=x$，$x in [0,pi)$.计算 $integral_pi^(3pi) f(x)dif x$.
]

#ezexam.question(label: n => [1995 数三 7])[
设 $f(x)=integral_0^x (sin t)/(pi-t)dif t$，计算 $integral_0^pi f(x)dif x$.
]

#ezexam.question(label: n => [1995 数四 8、数五 5])[
设 $f(x),g(x)$ 在区间 $[-a,a]$（$a>0$）上连续，$g(x)$ 为偶函数，且 $f(x)+f(-x)=A$（$A$ 为常数）.

（1）证明 $integral_(-a)^a f(x)g(x)dif x=A integral_0^a g(x)dif x$；

（2）利用（1）的结论计算 $integral_(-pi/2)^(pi/2)abs(sin x)arctan(e^x)dif x$.
]

#ezexam.question(label: n => [1997 数三 1（2）])[
若 $f(x)=1/(1+x^2)+sqrt(1-x^2)integral_0^1 f(x)dif x$，则 $integral_0^1 f(x)dif x=$ ＿＿＿＿.
]

#ezexam.question(label: n => [1997 数四 1（2）])[
设 $f(x)=1/(1+x^2)+x^3 integral_0^1 f(x)dif x$，则 $integral_0^1 f(x)dif x=$ ＿＿＿＿.
]

#ezexam.question(label: n => [1999 数三 1（1）])[
设 $f(x)$ 有一个原函数 $frac(sin x,x)$，则 $integral_(frac(pi,2))^pi x f'(x)dif x=$ #underline[　　　].
]

#ezexam.question(label: n => [1999 数三 7])[
（本题满分6分）设函数 $f(x)$ 连续，且 $integral_0^x t f(2x-t)dif t=frac(1,2)arctan x^2$.已知 $f(1)=1$，求 $integral_1^2 f(x)dif x$ 的值.
]

#ezexam.question(label: n => [1999 数四 7])[
（本题满分6分）已知 $f(x)$ 连续，$integral_0^x t f(x-t)dif t=1-cos x$，求 $integral_0^(frac(pi,2)) f(x)dif x$ 的值.
]

#ezexam.question(label: n => [2001 数二 7])[
（本题满分7分）设函数 $f(x),g(x)$ 满足 $f'(x)=g(x),g'(x)=2e^x-f(x)$，且 $f(0)=0,g(0)=2$，求 $integral_0^pi [g(x)/(1+x)-f(x)/(1+x)^2] dif x$.
]

#ezexam.question(label: n => [2005 数一 17、数二 17])[
如下图所示，曲线 $C$ 的方程为 $y=f(x)$，点 $(3,2)$ 是它的一个拐点，直线 $l_1$ 与 $l_2$ 分别是曲线 $C$ 在点 $(0,0)$ 与 $(3,2)$ 处的切线，其交点为 $(2,4)$.设函数 $f(x)$ 具有三阶连续导数，计算定积分 $integral_0^3(x^2+x)f'''(x)dif x$.
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

#ezexam.question(label: n => [2008 数二 2、数三 2、数四 4])[
如图，曲线段的方程为 $y=f(x)$，函数 $f(x)$ 在区间 $[0,a]$ 上有连续的导数，则定积分 $integral_0^a x f'(x)dif x$ 等于（　）.
#import "@preview/cetz:0.5.2": canvas, draw
#canvas({
 import draw: *
 line((-0.3,0),(3.8,0),mark:(end:"stealth"));line((0,-0.3),(0,3.8),mark:(end:"stealth"))
 line((0,3),(3,3),(3,0));line((0,0.6),(3,3));bezier((0,0.6),(3,3),(0.9,2.2),(1.9,3))
 content((3.9,0),$x$);content((0,4),$y$);content((-0.2,-0.2),$O$)
 content((3.65,3.1),$A(a,f(a))$);content((3,-0.35),$B(a,0)$)
 content((-0.9,3),$C(0,f(a))$);content((-0.2,0.6),$D$);content((0.8,2.7),$y=f(x)$)
})
#choices([曲边梯形 $A B O D$ 的面积], [梯形 $A B O D$ 的面积], [曲边三角形 $A C D$ 的面积], [三角形 $A C D$ 的面积])
]

#ezexam.question(label: n => [2008 数三 10])[
设 $f(x+1/x)=(x+x^3)/(1+x^4)$，则 $integral_2^(2sqrt(2)) f(x)dif x=$#h(2cm).
]

#ezexam.question(label: n => [2013 数一 15])[
（本题满分10分）设 $f(x)=integral_1^x (ln(t+1))/t dif t$，求 $integral_0^1 f(x)/sqrt(x)dif x$.
]

#ezexam.question(label: n => [2016 数二 21])[
（本题满分11分）
已知函数 $f(x)$ 在 $[0,3pi/2]$ 上连续，在 $(0,3pi/2)$ 内是函数 $cos x/(2x-3pi)$ 的一个原函数，且 $f(0)=0$.

（Ⅰ）求 $f(x)$ 在区间 $[0,3pi/2]$ 上的平均值；

（Ⅱ）证明 $f(x)$ 在区间 $(0,3pi/2)$ 内存在唯一零点.
]

#ezexam.question(label: n => [2018 数一 10])[
设函数 $f(x)$ 具有 2 阶连续导数.若曲线 $y=f(x)$ 过点 $(0,0)$ 且与曲线 $y=2^x$ 在点 $(1,2)$ 处相切，则 $integral_0^1 x f''(x) dif x=$\_\_\_\_\_\_.
]

*含参数的积分条件*

#ezexam.question(label: n => [1993 数四 4、数五 4])[
（7分）

已知 $lim_(x arrow infinity)((x-a)/(x+a))^x=integral_a^(+infinity)4x^2 e^(-2x)dif x$，求常数 $a$ 的值.
]

#ezexam.question(label: n => [1995 数五 1（1）])[
设 $lim_(x arrow infinity)((1+x)/x)^(a x)=integral_(-infinity)^a t e^t dif t$，则 $a=$ ＿＿＿＿.
]

#ezexam.question(label: n => [2009 数二 10])[
已知 $integral_(-infinity)^(+infinity)e^(k|x|)dif x=1$，则 $k=$ \_\_\_\_.
]

#ezexam.question(label: n => [2014 数三 11])[
设 $integral_0^a x e^(2x)dif x=1/4$，则 $a=$#h(3em).
]

#ezexam.question(label: n => [2018 数二 16])[
（本题满分 10 分）

已知连续函数 $f(x)$ 满足 $integral_0^x f(t) dif t+integral_0^x t f(x-t) dif t=a x^2$.

（Ⅰ）求 $f(x)$；

（Ⅱ）若 $f(x)$ 在区间 $[0,1]$ 上的平均值为 1，求 $a$ 的值.
]

*变限积分表达式*

#ezexam.question(label: n => [1991 数三 2（2）])[
设函数 $f(x)=cases(x^2,&0<=x<=1,2-x,&1<x<=2)$，记 $F(x)=integral_0^x f(t)dif t$（$0<=x<=2$），则
#choices(
[$F(x)=cases(x^3/3,&0<=x<=1,1/3+2x-x^2/2,&1<x<=2)$.],
[$F(x)=cases(x^3/3,&0<=x<=1,-7/6+2x-x^2/2,&1<x<=2)$.],
[$F(x)=cases(x^3/3,&0<=x<=1,x^3/3+2x-x^2/2,&1<x<=2)$.],
[$F(x)=cases(x^3/3,&0<=x<=1,2x-x^2/2,&1<x<=2)$.])
]

#ezexam.question(label: n => [1993 数三 2（3）])[
已知 $f(x)=cases(x^2 & 0<=x<1, 1 & 1<=x<=2)$，设 $F(x)=integral_1^x f(t)dif t$（$0<=x<=2$），则 $F(x)$ 为（　）.
#choices[$cases(x^3/3 & 0<=x<1, x & 1<=x<=2)$][$cases(x^3/3-1/3 & 0<=x<1, x & 1<=x<=2)$][$cases(x^3/3 & 0<=x<1, x-1 & 1<=x<=2)$][$cases(x^3/3-1/3 & 0<=x<1, x-1 & 1<=x<=2)$]
]

#ezexam.question(label: n => [2000 数二 4])[
（本题满分5分）设 $x O y$ 平面上有正方形 $D={(x,y)|0<=x<=1,0<=y<=1}$ 及直线 $l:x+y=t$（$t>=0$），若 $S(t)$ 表示正方形 $D$ 位于直线 $l$ 左下方部分的面积，试求 $integral_0^x S(t)dif t$（$x>=0$）.
]

#ezexam.question(label: n => [2002 数二 4])[
（本题满分7分）设 $f(x)=cases(2x+3/2 x^2 & -1<=x<0,(x e^x)/(e^x+1)^2 & 0<=x<=1)$，求函数 $F(x)=integral_(-1)^x f(t) dif t$ 的表达式.
]

