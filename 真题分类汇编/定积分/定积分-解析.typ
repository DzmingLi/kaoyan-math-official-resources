#import "@preview/ezexam:0.3.1" as ezexam
#let choices = ezexam.choices.with(r-gap: 1.3em)
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(true)

= 历年真题：定积分


*新增真题* 

#ezexam.question(label: n => [1987 数二 1（4）])[
$integral f'(x)dif x=$ #fillin(len: 4em)[]，$integral_a^b f'(2x)dif x=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$ integral f'(x)dif x=f(x)+C; $
$ integral_a^b f'(2x)dif x=1/2 integral_a^b f'(2x)dif(2x)
=1/2 f(2x)|_a^b=1/2(f(2b)-f(2a)). $
]
]

#ezexam.question(label: n => [1987 数二 7])[
求 $integral_0^1 x arcsin x dif x$.
#ezexam.solution(show-number: false)[
令 $x=sin t$，则 $dif x=cos t dif t$.
$ "原式"=1/2 integral_0^(pi/2) t sin(2t)dif t
=-1/4 (t cos(2t)-1/2 sin(2t))|_0^(pi/2)=pi/8. $
]
]

#ezexam.question(label: n => [1987 数四 6])[
求 $integral_(1/2)^1 e^(sqrt(2x-1))dif x$.
#ezexam.solution(show-number: false)[
令 $t=sqrt(2x-1)$，则 $x=(t^2+1)/2$，$dif x=t dif t$.
$ integral_(1/2)^1 e^(sqrt(2x-1))dif x=integral_0^1 t e^t dif t
=(t-1)e^t|_0^1=1. $
]
]

#ezexam.question(label: n => [1988 数二 1（4）])[
$integral_0^4 e^(sqrt(x))dif x=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
令 $sqrt(x)=t$，则 $x=t^2$，$dif x=2t dif t$，
$ "原式"=integral_0^2 e^t dot 2t dif t=2integral_0^2 t dif(e^t)
=2(t e^t|_0^2-integral_0^2 e^t dif t)=2(e^2+1). $
]
]

#ezexam.question(label: n => [1988 数二 6])[
设 $x>=-1$，求 $integral_(-1)^x(1-abs(t))dif t$.
#ezexam.solution(show-number: false)[
当 $-1<=x<0$ 时，$-1<=t<=x<0$，$abs(t)=-t$，
$ integral_(-1)^x (1-abs(t))dif t=integral_(-1)^x (1+t)dif t=1/2(1+x)^2; $
当 $x>=0$ 时，
$ integral_(-1)^x(1-abs(t))dif t=integral_(-1)^0(1+t)dif t+integral_0^x(1-t)dif t
=1-1/2(1-x)^2. $
]
]

#ezexam.question(label: n => [1988 数三 4、数四 6])[
求 $integral_0^3 1/((1+x)sqrt(x))dif x$.
#ezexam.solution(show-number: false)[
$ integral_0^3 dif x/((1+x)sqrt(x))=2integral_0^3 dif(sqrt(x))/(1+x)
=2arctan sqrt(x)|_0^3=2/3 pi. $
]
]

#ezexam.question(label: n => [1989 数二 1（2）])[
$integral_0^pi t sin t dif t=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$ integral_0^pi t sin t dif t=integral_0^pi t dif(-cos t)
=-t cos t|_0^pi+integral_0^pi cos t dif t=pi+0=pi. $
]
]

#ezexam.question(label: n => [1989 数二 3（5）])[
已知 $f(2)=1/2,f'(2)=0$ 及 $integral_0^2 f(x)dif x=1$，求 $integral_0^1 x^2 f''(2x)dif x$.
#ezexam.solution(show-number: false)[
*分析* 被积函数中若出现 $f(x)$ 的导数，则一般采用分部积分法.
$ integral_0^1 x^2 f''(2x)dif x=1/2 integral_0^1 x^2 dif(f'(2x)) \
=1/2 x^2 f'(2x)|_0^1-integral_0^1 x f'(2x)dif x \
=-1/2 integral_0^1 x dif(f(2x))
=-1/2 x f(2x)|_0^1+1/2 integral_0^1 f(2x)dif x \
=-1/4+1/4 integral_0^2 f(t)dif t=0. $
]
]

#ezexam.question(label: n => [1989 数三 5])[
已知函数
$ f(x)=cases(x & 0<=x<=1,2-x & 1<x<=2), $
试计算下列各题.

（1）$S_0=integral_0^2 f(x)e^(-x)dif x$；（4分）

（2）$S_1=integral_2^4 f(x-2)e^(-x)dif x$；（2分）

（3）$S_n=integral_(2n)^(2n+2)f(x-2n)e^(-x)dif x (n=2,3,dots)$；（1分）

（4）$S=sum_(n=0)^infinity S_n$.（2分）
#ezexam.solution(show-number: false)[
*分析* $f(x)$ 是分段函数，因此应分段求积分.（2）、（3）中被积函数含有中间变量，需进行变量代换化为（1）的情形.

（1）由题设
$ S_0=integral_0^1 x e^(-x)dif x+integral_1^2(2-x)e^(-x)dif x. $
而
$ integral_0^1 x e^(-x)dif x=-x e^(-x)|_0^1+integral_0^1 e^(-x)dif x=1-2e^(-1), $
$ integral_1^2(2-x)e^(-x)dif x=-(2-x)e^(-x)|_1^2-integral_1^2 e^(-x)dif x=e^(-2). $
故 $S_0=1-2e^(-1)+e^(-2)=(1-e^(-1))^2$.

（2）令 $t=x-2$，则
$ S_1=integral_2^4 f(x-2)e^(-x)dif x=integral_0^2 f(t)e^(-t-2)dif t
=S_0 e^(-2)=(e-1)^2 e^(-4). $

（3）令 $t=x-2n$，则
$ S_n=integral_0^2 f(t)e^(-t-2n)dif t=S_0 e^(-2n)=(e-1)^2 e^(-2n-2). $

（4）$ S=sum_(n=0)^infinity S_n=sum_(n=0)^infinity S_0 e^(-2n)
=S_0 sum_(n=0)^infinity(e^(-2))^n=S_0/(1-e^(-2))=(e-1)/(e+1). $
]
]

#ezexam.question(label: n => [1990 数一 3（1）])[
求 $integral_0^1 (ln(1+x))/(2-x)^2 dif x$.
#ezexam.solution(show-number: false)[
$ "原式"=integral_0^1 ln(1+x)dif(1/(2-x))
=ln(1+x)/(2-x)|_0^1-integral_0^1 dif x/((1+x)(2-x)) \
=ln 2-1/3 integral_0^1(1/(2-x)+1/(1+x))dif x \
=ln 2-1/3 ln((1+x)/(2-x))|_0^1=1/3 ln 2. $
]
]

#ezexam.question(label: n => [1990 数二 1（3）])[
$integral_0^1 x sqrt(1-x)dif x=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
令 $sqrt(1-x)=t$，则 $x=1-t^2$，$dif x=-2t dif t$.
$ "原式"=integral_1^0(1-t^2)dot t dot(-2t dif t)
=2integral_0^1(t^2-t^4)dif t=2(1/3-1/5)=4/15. $
]
]

#ezexam.question(label: n => [1990 数二 6])[
设 $f(x)=integral_1^x (ln t)/(1+t)dif t$，其中 $x>0$，求 $f(x)+f(1/x)$.
#ezexam.solution(show-number: false)[
*解法一* 令 $t=1/u$，则
$ f(1/x)=integral_1^(1/x)(ln t)/(1+t)dif t
=integral_1^x (ln u)/(u(u+1))dif u
=integral_1^x ((ln t)/t-(ln t)/(t+1))dif t, $
故
$ f(x)+f(1/x)=integral_1^x (ln t)/(1+t)dif t
+integral_1^x((ln t)/t-(ln t)/(t+1))dif t \
=integral_1^x (ln t)/t dif t=1/2 ln^2 x. $

*解法二* 令 $F(x)=f(x)+f(1/x)$，则
$ F'(x)=(ln x)/(1+x)+(ln(1/x))/(1+1/x) dot (-1/x^2)=(ln x)/x. $
由牛顿—莱布尼茨公式，
$ F(x)-F(1)=integral_1^x (ln x)/x dif x=1/2 ln^2 x. $
而 $F(1)=0$，故 $F(x)=1/2 ln^2 x$.
]
]

#ezexam.question(label: n => [1992 数一 3（3）、数二 4])[
设 $f(x)=cases(1+x^2 & x<=0,e^(-x) & x>0)$，求 $integral_1^3 f(x-2)dif x$.
#ezexam.solution(show-number: false)[
令 $x-2=t$，则
$ "原式"=integral_(-1)^1 f(t)dif t=integral_(-1)^0(1+t^2)dif t+integral_0^1 e^(-t)dif t
=7/3-1/e. $
]
]

#ezexam.question(label: n => [1992 数二 1（4）])[
$integral_1^(+infinity)(dif x)/(x(x^2+1))=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$ "原式"=integral_1^(+infinity)((x^2+1)-x^2)/(x(x^2+1))dif x
=integral_1^(+infinity)(1/x-x/(x^2+1))dif x \
=[ln x-1/2 ln(x^2+1)]_1^(+infinity)
=lim_(x->+infinity)ln(x/sqrt(x^2+1))+1/2 ln 2=1/2 ln 2. $
]
]

#ezexam.question(label: n => [1992 数二 3（4）])[
求 $integral_0^pi sqrt(1-sin x)dif x$.
#ezexam.solution(show-number: false)[
$ "原式"=integral_0^pi sqrt((sin(x/2)-cos(x/2))^2)dif x
=integral_0^pi abs(sin(x/2)-cos(x/2))dif x \
=integral_0^(pi/2)(cos(x/2)-sin(x/2))dif x
+integral_(pi/2)^pi(sin(x/2)-cos(x/2))dif x \
=2[sin(x/2)+cos(x/2)]_0^(pi/2)-2[cos(x/2)+sin(x/2)]_(pi/2)^pi
=4(sqrt(2)-1). $
]
]

*直接积分求值*

#ezexam.question(label: n => [1991 数三 3（2）])[
计算 $integral_1^4 (dif x)/(x(1+sqrt(x)))$.
#ezexam.solution(show-number: false)[
令 $t=sqrt(x)$，则 $x=t^2$，$dif x=2t dif t$，所以
$ I=2 integral_1^2 (dif t)/(t(1+t))=2 integral_1^2(1/t-1/(1+t))dif t=2ln(4/3). $
]
]

#ezexam.question(label: n => [1991 数五 4])[
（5分）

求定积分 $I=integral_(-1)^1 (2x+abs(x)+1)^2 dif x$.
#ezexam.solution(show-number: false)[
按 $x=0$ 分段，
$ I=integral_(-1)^0(x+1)^2 dif x+integral_0^1(3x+1)^2 dif x=1/3+7=22/3. $
]
]

#ezexam.question(label: n => [1993 数三 3（3）])[
求 $integral_0^(pi/4) x/(1+cos 2x)dif x$.
#ezexam.solution(show-number: false)[
由 $1+cos 2x=2cos^2 x$，分部积分得
$ I=1/2 integral_0^(pi/4)x dif(tan x)=1/2[x tan x+ln cos x]_0^(pi/4)=pi/8-1/4 ln 2. $
]
]

#ezexam.question(label: n => [1994 数三 3（2）])[
计算 $integral_0^1 x(1-x^4)^(3/2)dif x$.
#ezexam.solution(show-number: false)[
令 $x^2=sin t$，得 $I=1/2 integral_0^(pi/2)cos^4 t dif t=3pi/32$.
]
]

#ezexam.question(label: n => [1994 数四 1（1）、数五 1（1）])[
$integral_(-2)^2 (x+abs(x))/(2+x^2)dif x=$ ＿＿＿＿.
#ezexam.solution(show-number: false)[
奇函数部分积分为零，故原式 $=2integral_0^2 x/(2+x^2)dif x=ln 3$.
]
]

#ezexam.question(label: n => [1996 数三 1（2）])[
$integral_(-1)^1 (x+sqrt(1-x^2))^2 dif x=$ ＿＿＿＿.
#ezexam.solution(show-number: false)[
展开为 $1+2x sqrt(1-x^2)$，第二项为奇函数，积分为0，故答案为2.
]
]

#ezexam.question(label: n => [1996 数三 3（1）])[
计算 $integral_0^(ln 2)sqrt(1-e^(-2x))dif x$.
#ezexam.solution(show-number: false)[
令 $t=e^x$，积分成为 $integral_1^2 sqrt(t^2-1)/t^2 dif t$.分部积分得
$ [-sqrt(t^2-1)/t+ln(t+sqrt(t^2-1))]_1^2=ln(2+sqrt(3))-sqrt(3)/2. $
]
]

#ezexam.question(label: n => [2000 数一 1（1）])[
$integral_0^1 sqrt(2x-x^2)dif x=$ #underline[　　　].
#ezexam.solution(show-number: false)[
$frac(pi,4)$.
]
]

#ezexam.question(label: n => [2001 数二 1（3）])[
$integral_(-pi/2)^(pi/2) (x^3+sin^2 x)cos^2 x dif x=$#h(3em).
#ezexam.solution(show-number: false)[
$pi/8$.
]
]

#ezexam.question(label: n => [2003 数四 1（2）])[
$integral_(-1)^1 (|x|+x)e^(-|x|) dif x=$#h(3em).
#ezexam.solution(show-number: false)[
$2(1-2e^(-1))$.
]
]

#ezexam.question(label: n => [2004 数三 3、数四 3])[
设 $f(x)=cases(x e^(x^2) & -1/2<=x<1/2,-1 & x>=1/2)$，则 $integral_(1/2)^2 f(x-1)dif x=$#h(3em).
#ezexam.solution(show-number: false)[
$-1/2$.
]
]

#ezexam.question(label: n => [2005 数二 3])[
定积分 $integral_0^1 (x dif x)/((2-x^2)sqrt(1-x^2))=$#h(3em).
#ezexam.solution(show-number: false)[
$pi/4$.
]
]

#ezexam.question(label: n => [2007 数一 11])[
$integral_1^2 1/x^3 e^(1/x)dif x=$#h(3em).
#ezexam.solution(show-number: false)[
$sqrt(e)/2$.
]
]

#ezexam.question(label: n => [2008 数二 17])[
（本题满分9分）
计算 $integral_0^1 (x^2 arcsin x)/sqrt(1-x^2)dif x$.
#ezexam.solution(show-number: false)[
解　由于 $lim_(x->1^-) (x^2 arcsin x)/sqrt(1-x^2)=+infinity$，故 $integral_0^1 (x^2 arcsin x)/sqrt(1-x^2)dif x$ 是反常积分.

令 $arcsin x=t$，有 $x=sin t$，$t in [0,pi/2)$，
$ integral_0^1 (x^2 arcsin x)/sqrt(1-x^2)dif x \
=integral_0^(pi/2) (t sin^2 t)/(cos t)cos t dif t \
=integral_0^(pi/2) t sin^2 t dif t \
=integral_0^(pi/2) (t/2-(t cos 2t)/2)dif t \
=lr.|t^2/4|_0^(pi/2)-1/4 integral_0^(pi/2) t dif(sin 2t) \
=pi^2/16-lr.|(t sin 2t)/4|_0^(pi/2)+1/4 integral_0^(pi/2) sin 2t dif t \
=pi^2/16-lr.|1/8 cos 2t|_0^(pi/2)=pi^2/16+1/4. $
]
]

#ezexam.question(label: n => [2010 数一 10])[
$integral_0^(pi^2)sqrt(x)cos sqrt(x)dif x=$ \_\_\_\_.
#ezexam.solution(show-number: false)[
$-4pi$.
]
]

#ezexam.question(label: n => [2012 数一 10])[
$integral_0^2 x sqrt(2x-x^2)dif x=$#h(3em).
#ezexam.solution(show-number: false)[
$pi/2$.
]
]

#ezexam.question(label: n => [2015 数一 10])[
$integral_(-pi/2)^(pi/2)((sin x)/(1+cos x)+abs(x))dif x=$ #underline[　　　].
#ezexam.solution(show-number: false)[
$pi^2/4$.
]
]

#ezexam.question(label: n => [2017 数三 9])[
$integral_(-pi)^pi (sin^3 x+sqrt(pi^2-x^2))dif x=$＿＿＿＿.
#ezexam.solution(show-number: false)[
$pi^3/2$.
]
]

*反常积分求值*

#ezexam.question(label: n => [1991 数二 4（1）])[
求 $integral_3^(+infinity) (dif x)/((x-1)^4 sqrt(x^2-2x))$.
#ezexam.solution(show-number: false)[
令 $x-1=sec theta$，则 $dif x=sec theta tan theta dif theta$，上下限分别为 $pi/3$、$pi/2$.因此
$ I=integral_(pi/3)^(pi/2) cos^3 theta dif theta
=integral_(pi/3)^(pi/2)(1-sin^2 theta)cos theta dif theta=2/3-(3sqrt(3))/8. $
]
]

#ezexam.question(label: n => [1991 数三 1（3）])[
$integral_1^(+infinity)(ln x)/x^2 dif x=$ ＿＿＿＿.
#ezexam.solution(show-number: false)[
分部积分得 $integral_1^R (ln x)/x^2 dif x=1-(ln R+1)/R$，令 $R arrow +infinity$，得答案为1.
]
]

#ezexam.question(label: n => [1993 数三 3（4）])[
求 $integral_0^(+infinity)x/(1+x)^3 dif x$.
#ezexam.solution(show-number: false)[
$ I=lim_(b arrow +infinity)[-1/(1+x)+1/(2(1+x)^2)]_0^b=1/2. $
]
]

#ezexam.question(label: n => [1994 数四 4])[
（5分）

设函数 $y=y(x)$ 满足条件 $cases(y''+4y'+4y=0,y(0)=2, y'(0)=-4)$，求广义积分 $integral_0^infinity y(x)dif x$.
#ezexam.solution(show-number: false)[
特征方程有二重根 $-2$，通解为 $(C_1+C_2 x)e^(-2x)$.由初值得 $C_1=2$、$C_2=0$，故积分为 $integral_0^infinity 2e^(-2x)dif x=1$.
]
]

#ezexam.question(label: n => [1996 数四 5、数五 5])[
计算 $integral_0^infinity (x e^(-x))/(1+e^(-x))^2 dif x$.
#ezexam.solution(show-number: false)[
*1996 数四 5 解答*

分部积分得
$ I=[-x/(1+e^x)]_0^infinity+integral_0^infinity 1/(1+e^x)dif x. $
边界项为0.令 $t=e^x$，得 $I=integral_1^infinity 1/(t(1+t))dif t=ln 2$.

]
]

#ezexam.question(label: n => [1997 数二 1（4）])[
$integral_0^infinity (dif x)/(x^2+4x+8)=$ ＿＿＿＿.
#ezexam.solution(show-number: false)[
$I=[1/2 arctan((x+2)/2)]_0^infinity=pi/8$.
]
]

#ezexam.question(label: n => [1998 数二 6])[
（本题满分6分）

计算积分 $integral_(frac(1,2))^(frac(3,2)) frac(dif x,sqrt(|x-x^2|))$.
#ezexam.solution(show-number: false)[
注意到被积函数内有绝对值号且 $x=1$ 是其无穷间断点，故
$ "原式"=integral_(frac(1,2))^1 frac(dif x,sqrt(x-x^2))+integral_1^(frac(3,2)) frac(dif x,sqrt(x^2-x)). quad "（1分）" $
$ integral_(frac(1,2))^1 frac(dif x,sqrt(x-x^2))&=integral_(frac(1,2))^1 frac(dif x,sqrt(frac(1,4)-(x-frac(1,2))^2)) \
&=arcsin(2x-1)|_(frac(1,2))^1=arcsin 1=frac(pi,2). quad "（3分）" $
$ integral_1^(frac(3,2)) frac(dif x,sqrt(x^2-x))&=integral_1^(frac(3,2)) frac(dif x,sqrt((x-frac(1,2))^2-frac(1,4))) \
&=ln[(x-frac(1,2))+sqrt((x-frac(1,2))^2-frac(1,4))]_1^(frac(3,2)) \
&=ln(2+sqrt(3)). quad "（5分）" $
因此
$ integral_(frac(1,2))^(frac(3,2)) frac(dif x,sqrt(|x-x^2|))=frac(pi,2)+ln(2+sqrt(3)). quad "（6分）" $
]
]

#ezexam.question(label: n => [1999 数二 4])[
（本题满分6分）

计算 $integral_1^(+infinity) frac(arctan x,x^2)dif x$.
#ezexam.solution(show-number: false)[
$ "原式"&=-integral_1^(+infinity) arctan x dif(frac(1,x)) \
&=-frac(1,x)arctan x|_1^(+infinity)+integral_1^(+infinity) frac(1,x(1+x^2))dif x \
&=frac(pi,4)+lim_(b -> +infinity)integral_1^b (frac(1,x)-frac(x,1+x^2))dif x quad "（2分）" \
&=frac(pi,4)+lim_(b -> +infinity)[ln b-frac(1,2)ln(1+b^2)+frac(1,2)ln 2] \
&=frac(pi,4)+frac(1,2)ln 2+lim_(b -> +infinity)ln frac(b,sqrt(1+b^2)) quad "（4分）" \
&=frac(pi,4)+frac(1,2)ln 2. quad "（6分）" $
]
]

#ezexam.question(label: n => [2000 数二 1（3）])[
$integral_2^(+infinity)frac(dif x,(x+7)sqrt(x-2))=$ #underline[　　　].
#ezexam.solution(show-number: false)[
$frac(pi,3)$.
]
]

#ezexam.question(label: n => [2000 数三 1（2）])[
$integral_1^(+infinity)frac(dif x,e^x+e^(2-x))=$ #underline[　　　].
#ezexam.solution(show-number: false)[
$frac(pi,4e)$.
]
]

#ezexam.question(label: n => [2000 数四 4])[
（本题满分6分）计算 $I=integral_1^(+infinity)frac(dif x,e^(1+x)+e^(3-x))$.
#ezexam.solution(show-number: false)[
$ I&=integral_1^(+infinity)frac(e^(x-3),e^(2(x-1))+1)dif x quad "（2分）" \
&=e^(-2)integral_1^(+infinity)frac(dif e^(x-1),1+e^(2(x-1))) quad "（4分）" \
&=e^(-2)dot arctan e^(x-1)|_1^(+infinity) \
&=e^(-2)(frac(pi,2)-frac(pi,4)) \
&=frac(pi,4)e^(-2). quad "（6分）" $
]
]

#ezexam.question(label: n => [2002 数一 1（1）])[
$integral_e^(+infinity) (dif x)/(x ln^2 x)=$#h(3em).
#ezexam.solution(show-number: false)[
1.
]
]

#ezexam.question(label: n => [2006 数二 3])[
反常积分 $integral_0^(+infinity)(x dif x)/(1+x^2)^2=$#h(3em).
#ezexam.solution(show-number: false)[
$1/2$.
]
]

#ezexam.question(label: n => [2011 数二 12])[
设函数 $f(x)=cases(lambda e^(-lambda x) & x>0,0 & x<=0),lambda>0$，则 $integral_(-infinity)^(+infinity)x f(x)dif x=$ \_\_\_\_.
#ezexam.solution(show-number: false)[
$1/lambda$.
]
]

#ezexam.question(label: n => [2013 数一 12、数三 11])[
$integral_1^infinity (ln x)/(1+x)^2 dif x=$#h(3em).
#ezexam.solution(show-number: false)[
$ln 2$.
]
]

#ezexam.question(label: n => [2014 数二 9])[
$integral_(-infinity)^1 1/(x^2+2x+5)dif x=$#h(3em).
#ezexam.solution(show-number: false)[
$(3pi)/8$.
]
]

#ezexam.question(label: n => [2016 数一 16])[
（本题满分 10 分）设函数 $y(x)$ 满足方程 $y''+2y'+k y=0$，其中 $0<k<1$.

（Ⅰ）证明：反常积分 $integral_0^infinity y(x)dif x$ 收敛；

（Ⅱ）若 $y(0)=1,y'(0)=1$，求 $integral_0^infinity y(x)dif x$ 的值.
#ezexam.solution(show-number: false)[
（Ⅰ）微分方程 $y''+2y'+k y=0$ 的特征方程为 $lambda^2+2lambda+k=0$.
解得 $lambda_1=-1+sqrt(1-k),lambda_2=-1-sqrt(1-k)$.
因为 $0<k<1$，所以 $lambda_1<0,lambda_2<0$，从而 $integral_0^infinity e^(lambda_1 x)dif x$ 与 $integral_0^infinity e^(lambda_2 x)dif x$ 收敛.
由于 $lambda_1!=lambda_2$，所以 $y(x)=C_1 e^(lambda_1 x)+C_2 e^(lambda_2 x)$，其中 $C_1$ 与 $C_2$ 是任意常数.综上可知，反常积分 $integral_0^infinity y(x)dif x$ 收敛.
（Ⅱ）由（Ⅰ）知，$lambda_1<0,lambda_2<0$，所以
$ lim_(x->+infinity)y(x)=lim_(x->+infinity)(C_1 e^(lambda_1 x)+C_2 e^(lambda_2 x))=0, $
$ lim_(x->+infinity)y'(x)=lim_(x->+infinity)(C_1 lambda_1 e^(lambda_1 x)+C_2 lambda_2 e^(lambda_2 x))=0. $
又 $y(0)=1,y'(0)=1$，所以
$ integral_0^infinity y(x)dif x&=integral_0^infinity[-1/k(y''(x)+2y'(x))]dif x \
&=-1/k(y'(x)+2y(x))|_0^infinity \
&=3/k. $
]
]

#ezexam.question(label: n => [2017 数二 11])[
$integral_0^(+infinity)ln(1+x)/(1+x)^2 dif x=$＿＿＿＿.
#ezexam.solution(show-number: false)[
1.
]
]

#ezexam.question(label: n => [2018 数二 11])[
$integral_5^(+infinity) 1/(x^2-4x+3) dif x=$\_\_\_\_\_\_.
#ezexam.solution(show-number: false)[
$(ln 2)/2$.
]
]

*由函数关系求积分*

#ezexam.question(label: n => [1991 数三 8])[
（9分）

设函数 $f(x)$ 在 $(-infinity,+infinity)$ 内满足 $f(x)=f(x-pi)+sin x$，且 $f(x)=x$，$x in [0,pi)$.计算 $integral_pi^(3pi) f(x)dif x$.
#ezexam.solution(show-number: false)[
*解一* 将函数关系代入并令 $t=x-pi$，得
$ I=integral_pi^(3pi)[f(x-pi)+sin x]dif x=integral_0^(2pi) f(t)dif t. $
再将 $[pi,2pi]$ 上的积分用关系式展开，有
$ I=integral_0^pi t dif t+integral_pi^(2pi)[f(t-pi)+sin t]dif t
=pi^2/2+pi^2/2-2=pi^2-2. $
*解二* 分段写为 $f(x)=cases(x-pi+sin x,&pi<=x<2pi,x-2pi,&2pi<=x<3pi)$，直接积分得
$ I=integral_pi^(2pi)(x-pi+sin x)dif x+integral_(2pi)^(3pi)(x-2pi)dif x=pi^2-2. $
]
]

#ezexam.question(label: n => [1995 数三 7])[
设 $f(x)=integral_0^x (sin t)/(pi-t)dif t$，计算 $integral_0^pi f(x)dif x$.
#ezexam.solution(show-number: false)[
*1995 数三 7 解答*

交换积分次序，得
$ integral_0^pi dif x integral_0^x (sin t)/(pi-t)dif t=integral_0^pi (sin t)/(pi-t)(pi-t)dif t=2. $

]
]

#ezexam.question(label: n => [1995 数四 8、数五 5])[
设 $f(x),g(x)$ 在区间 $[-a,a]$（$a>0$）上连续，$g(x)$ 为偶函数，且 $f(x)+f(-x)=A$（$A$ 为常数）.

（1）证明 $integral_(-a)^a f(x)g(x)dif x=A integral_0^a g(x)dif x$；

（2）利用（1）的结论计算 $integral_(-pi/2)^(pi/2)abs(sin x)arctan(e^x)dif x$.
#ezexam.solution(show-number: false)[
*1995 数四 8 解答*

（1）将负半轴积分作代换 $x=-t$，得原式 $=integral_0^a [f(x)+f(-x)]g(x)dif x=A integral_0^a g(x)dif x$.

（2）取 $f(x)=arctan(e^x)$，$g(x)=abs(sin x)$.由于 $arctan(e^x)+arctan(e^(-x))=pi/2$，所求积分为 $pi/2 integral_0^(pi/2)sin x dif x=pi/2$.

]
]

#ezexam.question(label: n => [1997 数三 1（2）])[
若 $f(x)=1/(1+x^2)+sqrt(1-x^2)integral_0^1 f(x)dif x$，则 $integral_0^1 f(x)dif x=$ ＿＿＿＿.
#ezexam.solution(show-number: false)[
记所求积分为 $I$，两边在 $[0,1]$ 上积分得 $I=pi/4+pi/4 I$，故 $I=pi/(4-pi)$.
]
]

#ezexam.question(label: n => [1997 数四 1（2）])[
设 $f(x)=1/(1+x^2)+x^3 integral_0^1 f(x)dif x$，则 $integral_0^1 f(x)dif x=$ ＿＿＿＿.
#ezexam.solution(show-number: false)[
*1997 数四 1（2） 解答*

记所求积分为 $I$，两边积分得 $I=pi/4+I/4$，故 $I=pi/3$.

]
]

#ezexam.question(label: n => [1999 数三 1（1）])[
设 $f(x)$ 有一个原函数 $frac(sin x,x)$，则 $integral_(frac(pi,2))^pi x f'(x)dif x=$ #underline[　　　].
#ezexam.solution(show-number: false)[
$frac(4,pi)-1$.
]
]

#ezexam.question(label: n => [1999 数三 7])[
（本题满分6分）设函数 $f(x)$ 连续，且 $integral_0^x t f(2x-t)dif t=frac(1,2)arctan x^2$.已知 $f(1)=1$，求 $integral_1^2 f(x)dif x$ 的值.
#ezexam.solution(show-number: false)[
令 $u=2x-t$，则 $t=2x-u$，$dif t=-dif u$， （1分）
$ integral_0^x t f(2x-t)dif t&=-integral_(2x)^x (2x-u)f(u)dif u \
&=2x integral_x^(2x) f(u)dif u-integral_x^(2x) u f(u)dif u. quad "（2分）" $
于是
$ 2x integral_x^(2x) f(u)dif u-integral_x^(2x) u f(u)dif u=frac(1,2)arctan x^2. quad "（3分）" $
两边对 $x$ 求导，得
$ 2integral_x^(2x) f(u)dif u+2x[2f(2x)-f(x)]-[2x f(2x)dot 2-x f(x)]=frac(x,1+x^4), $
即
$ 2integral_x^(2x) f(u)dif u=frac(x,1+x^4)+x f(x). quad "（5分）" $
令 $x=1$，得 $2integral_1^2 f(u)dif u=frac(1,2)+1=frac(3,2)$，故
$ integral_1^2 f(x)dif x=frac(3,4). quad "（6分）" $
]
]

#ezexam.question(label: n => [1999 数四 7])[
（本题满分6分）已知 $f(x)$ 连续，$integral_0^x t f(x-t)dif t=1-cos x$，求 $integral_0^(frac(pi,2)) f(x)dif x$ 的值.
#ezexam.solution(show-number: false)[
令 $x-t=u$，有
$ integral_0^x t f(x-t)dif t=integral_0^x (x-u)f(u)dif u. quad "（2分）" $
于是
$ x integral_0^x f(u)dif u-integral_0^x u f(u)dif u=1-cos x. quad "（3分）" $
两边对 $x$ 求导，得
$ integral_0^x f(u)dif u=sin x. quad "（4分）" $
在上式中，令 $x=frac(pi,2)$，得
$ integral_0^(frac(pi,2)) f(x)dif x=1. quad "（6分）" $
]
]

#ezexam.question(label: n => [2001 数二 7])[
（本题满分7分）设函数 $f(x),g(x)$ 满足 $f'(x)=g(x),g'(x)=2e^x-f(x)$，且 $f(0)=0,g(0)=2$，求 $integral_0^pi [g(x)/(1+x)-f(x)/(1+x)^2] dif x$.
#ezexam.solution(show-number: false)[
*解法1* 由 $f'(x)=g(x)$ 得 $f''(x)=g'(x)=2e^x-f(x)$，于是有
$ cases(f''(x)+f(x)=2e^x,f(0)=0,f'(0)=2), $
解之得 $f(x)=sin x-cos x+e^x$.

又
$ integral_0^pi [g(x)/(1+x)-f(x)/(1+x)^2] dif x &= integral_0^pi (g(x)(1+x)-f(x))/(1+x)^2 dif x \
&= integral_0^pi (f'(x)(1+x)-f(x))/(1+x)^2 dif x \
&= integral_0^pi dif f(x)/(1+x) \
&= lr(f(x)/(1+x)|)_0^pi=f(pi)/(1+pi)-f(0)=(1+e^pi)/(1+pi). $
*解法2* 同解法1，得 $f(x)=sin x-cos x+e^x$.

又
$ integral_0^pi [g(x)/(1+x)-f(x)/(1+x)^2] dif x &= integral_0^pi g(x)/(1+x) dif x+integral_0^pi f(x) dif 1/(1+x) \
&= integral_0^pi g(x)/(1+x) dif x+lr(f(x)dot 1/(1+x)|)_0^pi-integral_0^pi f'(x)/(1+x) dif x \
&= f(pi)/(1+pi)-f(0)+integral_0^pi g(x)/(1+x) dif x-integral_0^pi g(x)/(1+x) dif x \
&= (1+e^pi)/(1+pi). $
]
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
#ezexam.solution(show-number: false)[
C.
]
]

#ezexam.question(label: n => [2008 数三 10])[
设 $f(x+1/x)=(x+x^3)/(1+x^4)$，则 $integral_2^(2sqrt(2)) f(x)dif x=$#h(2cm).
#ezexam.solution(show-number: false)[
$1/2 ln 3$.
]
]

#ezexam.question(label: n => [2013 数一 15])[
（本题满分10分）设 $f(x)=integral_1^x (ln(t+1))/t dif t$，求 $integral_0^1 f(x)/sqrt(x)dif x$.
#ezexam.solution(show-number: false)[
由题设可知 $f'(x)=(ln(x+1))/x,f(1)=0$.由分部积分法得
$ integral_0^1 f(x)/sqrt(x)dif x&=2sqrt(x)f(x)|_0^1-2integral_0^1 sqrt(x)f'(x)dif x \
&=-2integral_0^1 (ln(x+1))/sqrt(x)dif x \
&=-4sqrt(x)ln(x+1)|_0^1+4integral_0^1 sqrt(x)/(x+1)dif x \
&=-4ln 2+4integral_0^1 sqrt(x)/(x+1)dif x. $
令 $u=sqrt(x)$，则
$ integral_0^1 sqrt(x)/(x+1)dif x&=2integral_0^1 u^2/(u^2+1)dif u \
&=2(u-arctan u)|_0^1=2-pi/2. $
因此
$ integral_0^1 f(x)/sqrt(x)dif x=8-2pi-4ln 2. $
]
]

#ezexam.question(label: n => [2016 数二 21])[
（本题满分11分）
已知函数 $f(x)$ 在 $[0,3pi/2]$ 上连续，在 $(0,3pi/2)$ 内是函数 $cos x/(2x-3pi)$ 的一个原函数，且 $f(0)=0$.

（Ⅰ）求 $f(x)$ 在区间 $[0,3pi/2]$ 上的平均值；

（Ⅱ）证明 $f(x)$ 在区间 $(0,3pi/2)$ 内存在唯一零点.
#ezexam.solution(show-number: false)[
解　（Ⅰ）$f(x)$ 在区间 $[0,3pi/2]$ 上的平均值
$ overline(f)&=2/(3pi)integral_0^(3pi/2)f(x)dif x \
 &=2/(3pi)integral_0^(3pi/2)(integral_0^x cos t/(2t-3pi)dif t)dif x \
 &=2/(3pi)integral_0^(3pi/2)dif t integral_t^(3pi/2)cos t/(2t-3pi)dif x \
 &=-1/(3pi)integral_0^(3pi/2)cos t dif t=1/(3pi). $
（Ⅱ）由题意，得 $f'(x)=cos x/(2x-3pi)$，$x in (0,3pi/2)$.
当 $0<x<pi/2$ 时，因为 $f'(x)<0$，所以 $f(x)<f(0)=0$，故 $f(x)$ 在 $(0,pi/2)$ 内无零点，且 $f(pi/2)<0$.
由积分中值定理，存在 $x_0 in [0,3pi/2]$，使得 $f(x_0)=overline(f)=1/(3pi)>0$.由于当 $x in (0,pi/2]$ 时 $f(x)<0$，所以 $x_0 in (pi/2,3pi/2]$.
根据连续函数介值定理，存在 $xi in (pi/2,x_0) subset (pi/2,3pi/2]$，使得 $f(xi)=0$.又因为当 $pi/2<x<3pi/2$ 时，$f'(x)>0$，所以 $f(x)$ 在 $(pi/2,3pi/2)$ 内至多有一个零点.
综上所述，$f(x)$ 在 $(0,3pi/2)$ 内存在唯一的零点.
]
]

#ezexam.question(label: n => [2018 数一 10])[
设函数 $f(x)$ 具有 2 阶连续导数.若曲线 $y=f(x)$ 过点 $(0,0)$ 且与曲线 $y=2^x$ 在点 $(1,2)$ 处相切，则 $integral_0^1 x f''(x) dif x=$\_\_\_\_\_\_.
#ezexam.solution(show-number: false)[
$2(ln 2-1)$.
]
]

*含参数的积分条件*

#ezexam.question(label: n => [1993 数四 4、数五 4])[
（7分）

已知 $lim_(x arrow infinity)((x-a)/(x+a))^x=integral_a^(+infinity)4x^2 e^(-2x)dif x$，求常数 $a$ 的值.
#ezexam.solution(show-number: false)[
左边为 $e^(-2a)$.右边两次分部积分，得
$ integral_a^(+infinity)4x^2 e^(-2x)dif x=[-(2x^2+2x+1)e^(-2x)]_a^(+infinity)=(2a^2+2a+1)e^(-2a). $
因此 $2a^2+2a=0$，得 $a=0$ 或 $a=-1$.
]
]

#ezexam.question(label: n => [1995 数五 1（1）])[
设 $lim_(x arrow infinity)((1+x)/x)^(a x)=integral_(-infinity)^a t e^t dif t$，则 $a=$ ＿＿＿＿.
#ezexam.solution(show-number: false)[
*1995 数五 1（1） 解答*

左端为 $e^a$，右端为 $(a-1)e^a$，因此 $a=2$.

]
]

#ezexam.question(label: n => [2009 数二 10])[
已知 $integral_(-infinity)^(+infinity)e^(k|x|)dif x=1$，则 $k=$ \_\_\_\_.
#ezexam.solution(show-number: false)[
−2.
]
]

#ezexam.question(label: n => [2014 数三 11])[
设 $integral_0^a x e^(2x)dif x=1/4$，则 $a=$#h(3em).
#ezexam.solution(show-number: false)[
$1/2$.
]
]

#ezexam.question(label: n => [2018 数二 16])[
（本题满分 10 分）

已知连续函数 $f(x)$ 满足 $integral_0^x f(t) dif t+integral_0^x t f(x-t) dif t=a x^2$.

（Ⅰ）求 $f(x)$；

（Ⅱ）若 $f(x)$ 在区间 $[0,1]$ 上的平均值为 1，求 $a$ 的值.
#ezexam.solution(show-number: false)[
解　（Ⅰ）令 $u=x-t$，则
$ integral_0^x t f(x-t) dif t=integral_0^x (x-u)f(u) dif u \
 =x integral_0^x f(u) dif u-integral_0^x u f(u) dif u. $
由题设知
$ integral_0^x f(t) dif t+x integral_0^x f(u) dif u-integral_0^x u f(u) dif u=a x^2. $
对上式两端求导得
$ f(x)+integral_0^x f(u) dif u=2a x, $
所以 $f(x)$ 可导，$f(0)=0$，且 $f'(x)+f(x)=2a$.

于是，
$ f(x)=e^(-x)(C+integral 2a e^x dif x)=C e^(-x)+2a. $
由 $f(0)=0$，得 $C=-2a$，从而 $f(x)=2a(1-e^(-x))$.

（Ⅱ）$integral_0^1 2a(1-e^(-x)) dif x=(2a)/e$，由题设得 $(2a)/e=1$，故 $a=e/2$.
]
]

*变限积分表达式*

#ezexam.question(label: n => [1991 数三 2（2）])[
设函数 $f(x)=cases(x^2,&0<=x<=1,2-x,&1<x<=2)$，记 $F(x)=integral_0^x f(t)dif t$（$0<=x<=2$），则
#choices(
[$F(x)=cases(x^3/3,&0<=x<=1,1/3+2x-x^2/2,&1<x<=2)$.],
[$F(x)=cases(x^3/3,&0<=x<=1,-7/6+2x-x^2/2,&1<x<=2)$.],
[$F(x)=cases(x^3/3,&0<=x<=1,x^3/3+2x-x^2/2,&1<x<=2)$.],
[$F(x)=cases(x^3/3,&0<=x<=1,2x-x^2/2,&1<x<=2)$.])
#ezexam.solution(show-number: false)[
*B.* 当 $0<=x<=1$ 时，$F(x)=x^3/3$；当 $1<x<=2$ 时，$F(x)=integral_0^1 t^2 dif t+integral_1^x(2-t)dif t=-7/6+2x-x^2/2$.
]
]

#ezexam.question(label: n => [1993 数三 2（3）])[
已知 $f(x)=cases(x^2 & 0<=x<1, 1 & 1<=x<=2)$，设 $F(x)=integral_1^x f(t)dif t$（$0<=x<=2$），则 $F(x)$ 为（　）.
#choices[$cases(x^3/3 & 0<=x<1, x & 1<=x<=2)$][$cases(x^3/3-1/3 & 0<=x<1, x & 1<=x<=2)$][$cases(x^3/3 & 0<=x<1, x-1 & 1<=x<=2)$][$cases(x^3/3-1/3 & 0<=x<1, x-1 & 1<=x<=2)$]
#ezexam.solution(show-number: false)[
D.当 $0<=x<1$ 时，$F(x)=-integral_x^1 t^2 dif t=(x^3-1)/3$；当 $1<=x<=2$ 时，$F(x)=integral_1^x 1 dif t=x-1$.
]
]

#ezexam.question(label: n => [2000 数二 4])[
（本题满分5分）设 $x O y$ 平面上有正方形 $D={(x,y)|0<=x<=1,0<=y<=1}$ 及直线 $l:x+y=t$（$t>=0$），若 $S(t)$ 表示正方形 $D$ 位于直线 $l$ 左下方部分的面积，试求 $integral_0^x S(t)dif t$（$x>=0$）.
#ezexam.solution(show-number: false)[
由题设知
$ S(t)=cases(frac(1,2)t^2 quad 0<=t<=1,-frac(1,2)t^2+2t-1 quad 1<t<=2,1 quad t>2). quad "（2分）" $
#import "@preview/cetz:0.5.2"
#cetz.canvas({
 import cetz.draw: *
 set-style(stroke:0.6pt)
 line((0,0),(1.5,0),(0,1.5),close:true,fill:luma(85%))
 line((0,2),(2,2),(2,0))
 line((-0.4,1.9),(1.9,-0.4))
 line((-0.3,0),(3,0),mark:(end:">"));line((0,-0.25),(0,2.7),mark:(end:">"))
 content((3,-0.15),$x$);content((-0.15,2.7),$y$);content((-0.15,-0.15),$O$)
 content((-0.15,2),$1$);content((2.13,0.15),$1$);content((2.2,-0.55),$x+y=t$)
})
所以，当 $0<=x<=1$ 时，
$ integral_0^x S(t)dif t=integral_0^x frac(1,2)t^2 dif t=frac(1,6)x^3; $
当 $1<x<=2$ 时，
$ integral_0^x S(t)dif t=integral_0^1 S(t)dif t+integral_1^x S(t)dif t=-frac(x^3,6)+x^2-x+frac(1,3); $
当 $x>2$ 时，
$ integral_0^x S(t)dif t=integral_0^2 S(t)dif t+integral_2^x S(t)dif t=x-1. quad "（4分）" $
因此
$ integral_0^x S(t)dif t=cases(frac(1,6)x^3 quad 0<=x<=1,-frac(1,6)x^3+x^2-x+frac(1,3) quad 1<x<=2,x-1 quad x>2). quad "（5分）" $
]
]

#ezexam.question(label: n => [2002 数二 4])[
（本题满分7分）设 $f(x)=cases(2x+3/2 x^2 & -1<=x<0,(x e^x)/(e^x+1)^2 & 0<=x<=1)$，求函数 $F(x)=integral_(-1)^x f(t) dif t$ 的表达式.
#ezexam.solution(show-number: false)[
*解* 当 $-1<=x<0$ 时，
$ F(x)=integral_(-1)^x (2t+3/2 t^2) dif t=lr((t^2+1/2 t^3)|)_(-1)^x=1/2 x^3+x^2-1/2. $
当 $0<=x<=1$ 时，
$ F(x)&=integral_(-1)^x f(t) dif t=integral_(-1)^0 f(t) dif t+integral_0^x f(t) dif t \
&=lr((t^2+1/2 t^3)|)_(-1)^0+integral_0^x (t e^t)/(e^t+1)^2 dif t \
&=-1/2-integral_0^x t dif(1/(e^t+1)) \
&=-1/2-lr(t/(e^t+1)|)_0^x+integral_0^x (dif t)/(e^t+1) \
&=-1/2-x/(e^x+1)+integral_0^x (dif e^t)/(e^t (e^t+1)) \
&=-1/2-x/(e^x+1)+lr(ln(e^t/(e^t+1))|)_0^x \
&=-1/2-x/(e^x+1)+ln(e^x/(e^x+1))+ln 2. $
所以 $F(x)=cases(1/2 x^3+x^2-1/2 & -1<=x<0,ln(e^x/(e^x+1))-x/(e^x+1)+ln 2-1/2 & 0<=x<=1)$.
]
]

