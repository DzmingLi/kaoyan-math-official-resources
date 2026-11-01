#import "../template.typ": collection
#show: collection.with(title: "积分分类汇编", subject: "不定积分汇编（含解析）")
#import "@preview/ezexam:0.3.1" as ezexam
#let choices = ezexam.choices.with(r-gap: 1.3em)
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(true)

= 历年真题：不定积分


*新增真题* 

#ezexam.question(label: n => [1987 数二 6])[
求 $integral (dif x)/(a^2 sin^2 x+b^2 cos^2 x)$.（$a,b$ 是不全为零的非负常数.）
#ezexam.solution(show-number: false)[
当 $a=0,b!=0$ 时，原式 $=1/b^2 integral dif x/cos^2 x=1/b^2 tan x+C$；
当 $a!=0,b=0$ 时，原式 $=1/a^2 integral dif x/sin^2 x=-1/a^2 cot x+C$；
当 $a!=0,b!=0$ 时，
$ "原式"=integral 1/(a^2 tan^2 x+b^2) dot dif x/cos^2 x
=1/(a b) integral dif(a/b tan x)/(1+(a/b tan x)^2)
=1/(a b) arctan(a/b tan x)+C. $
]
]

#ezexam.question(label: n => [1987 数三 4])[
求 $integral e^(sqrt(2x-1))dif x$.
#ezexam.solution(show-number: false)[
令 $t=sqrt(2x-1)$，则 $x=1/2(t^2+1)$，$dif x=t dif t$.
从而
$ "原式"=integral t dot e^t dif t=(t-1)dot e^t+C. $
]
]

#ezexam.question(label: n => [1987 数四 5])[
求 $integral x/(x^4+2x^2+5)dif x$.
#ezexam.solution(show-number: false)[
$ integral x/(x^4+2x^2+5)dif x
=integral (x dif x)/((x^2+1)^2+4)
=1/2 integral dif(x^2+1)/((x^2+1)^2+4)
=1/4 arctan((1+x^2)/2)+C. $
]
]

#ezexam.question(label: n => [1989 数二 3（2）])[
求 $integral (dif x)/(x ln^2 x)$.
#ezexam.solution(show-number: false)[
$ "原式"=integral dif(ln x)/ln^2 x=-1/(ln x)+C. $
]
]

#ezexam.question(label: n => [1989 数四 3（3）])[
求不定积分 $integral (x+ln(1-x))/x^2 dif x$.
#ezexam.solution(show-number: false)[
$ "原式"=integral 1/x dif x-integral ln(1-x)dif(1/x)
=ln abs(x)-1/x ln(1-x)-integral 1/(x(1-x))dif x \
=ln abs(x)-1/x ln(1-x)-integral (1/x+1/(1-x))dif x \
=ln abs(x)-1/x ln(1-x)-ln abs(x)+ln(1-x)+C \
=(1-1/x)ln(1-x)+C. $
]
]

#ezexam.question(label: n => [1990 数二 3（4）])[
计算 $integral (ln x)/(1-x)^2 dif x$.
#ezexam.solution(show-number: false)[
$ "原式"=integral ln x dif(1/(1-x))
=(ln x)/(1-x)-integral 1/(1-x) dif x/x \
=(ln x)/(1-x)-integral (1/x+1/(1-x))dif x \
=(ln x)/(1-x)-ln x+ln abs(1-x)+C \
=(x ln x)/(1-x)+ln abs(1-x)+C. $
]
]

#ezexam.question(label: n => [1990 数四 3（2）])[
求不定积分 $integral (x cos^4(x/2))/(sin^3 x)dif x$.
#ezexam.solution(show-number: false)[
*分析* 被积函数是三角函数与幂函数的乘积时，一般要采用分部积分法.

*解法一*
$ "原式"=1/8 integral (x cos(x/2))/(sin^3(x/2))dif x
=1/4 integral x sin^(-3)(x/2)dif(sin(x/2)) \
=-1/8 integral x dif(sin^(-2)(x/2))
=-1/8 x sin^(-2)(x/2)+1/8 integral 1/(sin^2(x/2))dif x \
=-1/8 x sin^(-2)(x/2)-1/4 cot(x/2)+C. $

*解法二*
$ "原式"=-1/4 integral x cot(x/2)dif(cot(x/2))
=-1/8 integral x dif(cot^2(x/2)) \
=-1/8 x cot^2(x/2)+1/8 integral cot^2(x/2)dif x \
=-1/8 x cot^2(x/2)+1/8 integral (csc^2(x/2)-1)dif x \
=-1/8 x csc^2(x/2)-1/4 cot(x/2)+C. $
]
]

#ezexam.question(label: n => [1992 数二 3（3）])[
求 $integral x^3/sqrt(1+x^2)dif x$.
#ezexam.solution(show-number: false)[
*解法一*
$ "原式"=1/2 integral x^2/sqrt(1+x^2)dif(x^2)
=1/2 integral ((1+x^2)-1)/sqrt(1+x^2)dif(x^2) \
=1/2 integral (sqrt(1+x^2)-1/sqrt(1+x^2))dif(1+x^2) \
=1/3(1+x^2)^(3/2)-(1+x^2)^(1/2)+C. $

*解法二*
$ "原式"=integral x^2 dif(sqrt(1+x^2))
=x^2 sqrt(1+x^2)-integral sqrt(1+x^2)dif(x^2) \
=x^2(1+x^2)^(1/2)-2/3(1+x^2)^(3/2)+C. $

*解法三* 设 $x=tan t$（$-pi/2<t<pi/2$），则 $dif x=sec^2 t dif t$.
$ "原式"=integral (tan^3 t dot sec^2 t)/(sec t)dif t
=integral tan^2 t dif(sec t) \
=integral (sec^2 t-1)dif(sec t)
=1/3(1+x^2)^(3/2)-(1+x^2)^(1/2)+C. $
]
]

#ezexam.question(label: n => [1992 数三 4])[
计算 $I=integral (op("arccot")(e^x))/e^x dif x$.
#ezexam.solution(show-number: false)[
*解法一*
$ I=-integral op("arccot")(e^x)dif(e^(-x))
=-e^(-x)op("arccot")(e^x)-integral dif x/(1+e^(2x)) \
=-e^(-x)op("arccot")(e^x)-integral (1-e^(2x)/(1+e^(2x)))dif x \
=-e^(-x)op("arccot")(e^x)-x+1/2 ln(1+e^(2x))+C. $

*解法二* 令 $t=e^x$，则
$ "原式"=integral op("arccot")(t)/t^2 dif t
=-integral op("arccot")(t)dif(1/t) \
=-1/t op("arccot")(t)-integral dif t/(t(1+t^2)) \
=-op("arccot")(t)/t-ln t+1/2 ln(1+t^2)+C \
=-e^(-x)op("arccot")(e^x)-x+1/2 ln(1+e^(2x))+C. $
]
]

#ezexam.question(label: n => [1992 数四 4])[
计算 $I=integral (arctan(e^x))/e^x dif x$.
#ezexam.solution(show-number: false)[
*解法一*
$ I=-integral arctan(e^x)dif(e^(-x))
=-e^(-x)arctan(e^x)+integral dif x/(1+e^(2x)) \
=-e^(-x)arctan(e^x)+integral (1-e^(2x)/(1+e^(2x)))dif x \
=-e^(-x)arctan(e^x)+x-1/2 ln(1+e^(2x))+C. $

*解法二* 令 $t=e^x$，则
$ "原式"=integral arctan(t)/t^2 dif t=-integral arctan(t)dif(1/t) \
=-1/t arctan(t)+integral dif t/(t(1+t^2)) \
=-arctan(t)/t+ln t-1/2 ln(1+t^2)+C \
=-e^(-x)arctan(e^x)+x-1/2 ln(1+e^(2x))+C. $
]
]

#ezexam.question(label: n => [1992 数二 2（5）])[
若 $f(x)$ 的导函数是 $sin x$，则 $f(x)$ 有一个原函数为（　）.
#choices([$1+sin x$],[$1-sin x$],[$1+cos x$],[$1-cos x$])
#ezexam.solution(show-number: false)[
$f'(x)=sin x$，则 $f(x)=integral sin x dif x=-cos x+C_1$.
从而 $f(x)$ 的原函数为
$ F(x)=integral f(x)dif x=-sin x+C_1 x+C_2, $
取 $C_1=0,C_2=1$，则有 $f(x)$ 的一个原函数 $1-sin x$.应选 B.

*注* 做为选择题求解时，也可对选项求二阶导数验证.
]
]

#ezexam.question(label: n => [1987 数二 1（4）])[
$integral f'(x)dif x=$ #fillin(len: 4em)[]，$integral_a^b f'(2x)dif x=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$ integral f'(x)dif x=f(x)+C; $
$ integral_a^b f'(2x)dif x=1/2 integral_a^b f'(2x)dif(2x)
=1/2 f(2x)|_a^b=1/2(f(2b)-f(2a)). $
]
]


*直接积分求值*

#ezexam.question(label: n => [1991 数三 3（4）])[
求 $integral x sin^2 x dif x$.
#ezexam.solution(show-number: false)[
先用半角公式，再分部积分：
$ integral x sin^2 x dif x=1/2 integral x(1-cos(2x))dif x
=x^2/4-x/4 sin(2x)-1/8 cos(2x)+C. $
]
]

#ezexam.question(label: n => [1991 数五 5])[
（5分）

求不定积分 $I=integral x^2/(1+x^2) arctan x dif x$.
#ezexam.solution(show-number: false)[
*解一* 拆分并分部积分，
$ I=integral arctan x dif x-integral arctan x dif(arctan x) \
=x arctan x-1/2 ln(1+x^2)-1/2(arctan x)^2+C. $
*解二* 令 $u=arctan x$，则 $x=tan u$，$dif x=sec^2 u dif u$，得到
$ I=integral u tan^2 u dif u=integral u(sec^2 u-1)dif u
=u tan u+ln abs(cos u)-u^2/2+C. $
代回 $u=arctan x$ 即得同一结果.
]
]

#ezexam.question(label: n => [1993 数一 3（2）、数二 3（2）])[
求 $integral (x e^x)/sqrt(e^x-1)dif x$.
#ezexam.solution(show-number: false)[
令 $u=sqrt(e^x-1)$，则 $x=ln(1+u^2)$，$dif x=2u/(1+u^2)dif u$.从而
$ I=2integral ln(1+u^2)dif u=2u ln(1+u^2)-4u+4arctan u+C. $
故 $I=2x sqrt(e^x-1)-4sqrt(e^x-1)+4arctan sqrt(e^x-1)+C$.
]
]

#ezexam.question(label: n => [1993 数三 1（4）])[
$integral (tan x)/sqrt(cos x)dif x=$ ＿＿＿＿.
#ezexam.solution(show-number: false)[
令 $u=cos x$，则原积分为 $-integral u^(-3/2)dif u=2u^(-1/2)+C=2/sqrt(cos x)+C$.
]
]

#ezexam.question(label: n => [1993 数五 1（3）])[
$integral dif x/((2-x)sqrt(1-x))=$ ＿＿＿＿.
#ezexam.solution(show-number: false)[
令 $u=sqrt(1-x)$，则原积分为 $-2integral dif u/(1+u^2)=-2arctan sqrt(1-x)+C$.
]
]

#ezexam.question(label: n => [1994 数一 3（3）、数二 3（3）、数三 3（4）])[
求 $integral 1/(sin 2x+2sin x)dif x$.
#ezexam.solution(show-number: false)[
*1994 数一 3（3） 解答*

令 $u=tan(x/2)$，则
$ I=1/4 integral (1+u^2)/u dif u=1/8 u^2+1/4 ln abs(u)+C. $
故 $I=1/8 tan^2(x/2)+1/4 ln abs(tan(x/2))+C$.

]
]

#ezexam.question(label: n => [1994 数三 1（4）])[
$integral x^3 e^(x^2)dif x=$ ＿＿＿＿.
#ezexam.solution(show-number: false)[
令 $u=x^2$，分部积分得 $1/2 integral u e^u dif u=1/2 e^(x^2)(x^2-1)+C$.
]
]

#ezexam.question(label: n => [1995 数五 4])[
（6分）

计算不定积分 $integral (arcsin x)^2 dif x$.
#ezexam.solution(show-number: false)[
令 $u=arcsin x$，两次分部积分得
$ integral u^2 cos u dif u=u^2 sin u+2u cos u-2sin u+C. $
故所求为 $x(arcsin x)^2+2sqrt(1-x^2)arcsin x-2x+C$.
]
]

#ezexam.question(label: n => [1995 MBA数 4])[
（7分）

计算不定积分 $integral 1/(x(1+x^2))dif x$.
#ezexam.solution(show-number: false)[
将被积函数拆分为 $1/x-x/(1+x^2)$，得
$ integral 1/(x(1+x^2))dif x=ln abs(x)-1/2 ln(1+x^2)+C. $
]
]

#ezexam.question(label: n => [1996 数三 3（2）])[
求 $integral 1/(1+sin x)dif x$.
#ezexam.solution(show-number: false)[
有理化后积分为 $integral (1-sin x)/(cos^2 x) dif x=tan x-1/(cos x)+C$，亦可写为 $-(cos x)/(1+sin x)+C$.
]
]

#ezexam.question(label: n => [1996 数三 4])[
（8分）

计算不定积分 $integral (arctan x)/(x^2(1+x^2))dif x$.
#ezexam.solution(show-number: false)[
拆分为 $integral (arctan x)/x^2 dif x-integral (arctan x)/(1+x^2)dif x$，对第一项分部积分，得
$ I=-(arctan x)/x+integral 1/(x(1+x^2))dif x-1/2 (arctan x)^2 $
$ =-(arctan x)/x-1/2 (arctan x)^2+1/2 ln(x^2/(1+x^2))+C. $
]
]

#ezexam.question(label: n => [1997 数二 1（3）])[
$integral (dif x)/sqrt(x(4-x))=$ ＿＿＿＿.
#ezexam.solution(show-number: false)[
配方得 $x(4-x)=4-(x-2)^2$，故积分为 $arcsin((x-2)/2)+C$.
]
]

#ezexam.question(label: n => [1997 数二 3（3）])[
计算 $integral e^(2x)(tan x+1)^2 dif x$.
#ezexam.solution(show-number: false)[
利用 $(tan x+1)^2=sec^2 x+2tan x$，被积函数恰为 $(e^(2x)tan x)'$，故积分为 $e^(2x)tan x+C$.
]
]

#ezexam.question(label: n => [1998 数二 1（3）])[
$integral frac(ln sin x,sin^2 x) dif x=$ #underline[　　　].
#ezexam.solution(show-number: false)[
$-cot x dot ln sin x-cot x-x+C$.
]
]

#ezexam.question(label: n => [1998 数三 1（2）、数四 1（2）])[
$integral frac(ln x-1,x^2) dif x=$ #underline[　　　].
#ezexam.solution(show-number: false)[
$-frac(ln x,x)+C$.
]
]

#ezexam.question(label: n => [1999 数二 1（3）])[
$integral frac(x+5,x^2-6x+13)dif x=$ #underline[　　　].
#ezexam.solution(show-number: false)[
$frac(1,2)ln(x^2-6x+13)+4arctan frac(x-3,2)+C$（$C$ 为任意常数）.
]
]

#ezexam.question(label: n => [2000 数四 1（1）])[
$integral frac(arcsin sqrt(x),sqrt(x))dif x=$ #underline[　　　].
#ezexam.solution(show-number: false)[
$2sqrt(x)arcsin sqrt(x)+2sqrt(1-x)+C$.
]
]

#ezexam.question(label: n => [2001 数一 3])[
（本题满分6分）求 $integral frac(arctan e^x,e^(2x))dif x$.
#ezexam.solution(show-number: false)[
$ integral frac(arctan e^x,e^(2x))dif x&=-frac(1,2)integral arctan e^x dif(e^(-2x)) \
&=-frac(1,2)[e^(-2x)arctan e^x-integral frac(dif e^x,e^(2x)(1+e^(2x)))] \
&=-frac(1,2)(e^(-2x)arctan e^x+e^(-x)+arctan e^x)+C. $
注：答案中缺任意常数 $C$ 扣1分.
]
]

#ezexam.question(label: n => [2001 数二 3])[
（本题满分6分）求 $integral (dif x)/((2x^2+1)sqrt(x^2+1))$.
#ezexam.solution(show-number: false)[
*解* 设 $x=tan u$，则 $dif x=sec^2 u dif u$.
$ #text[原式] &= integral (dif u)/(cos u dot (2tan^2 u+1))=integral (cos u dif u)/(2sin^2 u+cos^2 u) \
&= integral (dif sin u)/(1+sin^2 u) \
&= arctan(sin u)+C \
&= arctan(x/sqrt(1+x^2))+C. $
注：答案中缺任意常数 $C$ 扣1分.
]
]

#ezexam.question(label: n => [2003 数二 5])[
（本题满分9分）求不定积分 $integral (x e^(arctan x))/(1+x^2)^(3/2) dif x$.
#ezexam.solution(show-number: false)[
解法1 令 $x=tan t$，则
$ integral (x e^(arctan x))/(1+x^2)^(3/2) dif x=integral (e^t tan t)/(1+tan^2 t)^(3/2) sec^2 t dif t=integral e^t sin t dif t. $
而
$ integral e^t sin t dif t&=-integral e^t dif cos t=-(e^t cos t-integral e^t cos t dif t) \
&=-e^t cos t+e^t sin t-integral e^t sin t dif t, $
故
$ integral e^t sin t dif t=1/2 e^t (sin t-cos t)+C. $
因此
$ integral (x e^(arctan x))/(1+x^2)^(3/2) dif x&=1/2 e^(arctan x)(x/sqrt(1+x^2)-1/sqrt(1+x^2))+C \
&=((x-1)e^(arctan x))/(2 sqrt(1+x^2))+C. $
解法2
$ integral (x e^(arctan x))/(1+x^2)^(3/2) dif x&=integral x/sqrt(1+x^2) dif e^(arctan x) \
&=(x e^(arctan x))/sqrt(1+x^2)-integral e^(arctan x)/(1+x^2)^(3/2) dif x \
&=(x e^(arctan x))/sqrt(1+x^2)-integral 1/sqrt(1+x^2) dif e^(arctan x) \
&=(x e^(arctan x))/sqrt(1+x^2)-e^(arctan x)/sqrt(1+x^2)-integral (x e^(arctan x))/(1+x^2)^(3/2) dif x. $
移项，得
$ integral (x e^(arctan x))/(1+x^2)^(3/2) dif x=((x-1)e^(arctan x))/(2 sqrt(1+x^2))+C. $
]
]

#ezexam.question(label: n => [2006 数二 16])[
（本题满分10分）

求 $integral (arcsin e^x)/e^x dif x$.
#ezexam.solution(show-number: false)[
解法1　令 $arcsin e^x=t$，则 $x=ln sin t,dif x=cos t/(sin t)dif t$.
$ integral (arcsin e^x)/e^x dif x=integral t/(sin t) dot cos t/(sin t)dif t \
=-integral t dif(1/(sin t)) \
=-t/(sin t)+integral 1/(sin t)dif t \
=-t/(sin t)+ln|csc t-cot t|+C \
=-(arcsin e^x)/e^x+ln|1/e^x-sqrt(1-e^(2x))/e^x|+C \
=-(arcsin e^x)/e^x+ln(1-sqrt(1-e^(2x)))-x+C. $
解法2
$ integral (arcsin e^x)/e^x dif x=-integral arcsin e^x dif(e^(-x)) \
=-(arcsin e^x)/e^x+integral (dif x)/sqrt(1-e^(2x)). $
在 $integral (dif x)/sqrt(1-e^(2x))$ 中，令 $sqrt(1-e^(2x))=t$，则 $dif x=(-t dif t)/(1-t^2)$，
$ integral (dif x)/sqrt(1-e^(2x))=-integral (dif t)/(1-t^2) \
=-1/2 ln|(1+t)/(1-t)|+C \
=-1/2 ln((1+sqrt(1-e^(2x)))/(1-sqrt(1-e^(2x))))+C, $
于是
$ integral (arcsin e^x)/e^x dif x=-(arcsin e^x)/e^x-1/2 ln((1+sqrt(1-e^(2x)))/(1-sqrt(1-e^(2x))))+C. $
]
]

#ezexam.question(label: n => [2009 数二 16、数三 16])[
（本题满分10分）计算不定积分 $integral ln(1+sqrt((1+x)/x))dif x(x>0)$.
#ezexam.solution(show-number: false)[
*2009 数二 16 解答*

解　设 $sqrt((1+x)/x)=t$，则 $x=1/(t^2-1)$，故有
$ integral ln(1+sqrt((1+x)/x))dif x \
=integral ln(1+t)dif(1/(t^2-1)) \
=(ln(1+t))/(t^2-1)-integral 1/(t^2-1) dot 1/(t+1)dif t, $
而
$ integral 1/((t^2-1)(t+1))dif t \
=1/4 integral[1/(t-1)-1/(t+1)-2/(t+1)^2]dif t \
=1/4 ln(t-1)-1/4 ln(t+1)+1/(2(t+1))-C, $
所以
$ integral ln(1+sqrt((1+x)/x))dif x \
=(ln(1+t))/(t^2-1)+1/4 ln((t+1)/(t-1))-1/(2(t+1))+C \
=x ln(1+sqrt((1+x)/x))+1/2 ln(sqrt(1+x)+sqrt(x)) \
-1/2 sqrt(x)/(sqrt(1+x)+sqrt(x))+C \
=x ln(1+sqrt((1+x)/x))+1/2 ln(sqrt(1+x)+sqrt(x)) \
+1/2 x-1/2 sqrt(x+x^2)+C. $

*2009 数三 16 解答*

解　设 $sqrt((1+x)/x)=t$，则 $x=1/(t^2-1)$，故有
$ integral ln(1+sqrt((1+x)/x))dif x \
=integral ln(1+t)dif(1/(t^2-1)) \
=(ln(1+t))/(t^2-1)-integral 1/(t^2-1) dot 1/(t+1)dif t, $
而
$ integral 1/((t^2-1)(t+1))dif t \
=1/4 integral[1/(t-1)-1/(t+1)-2/(t+1)^2]dif t \
=1/4 ln(t-1)-1/4 ln(t+1)+1/(2(t+1))-C, $
所以
$ integral ln(1+sqrt((1+x)/x))dif x \
=(ln(1+t))/(t^2-1)+1/4 ln((t+1)/(t-1))-1/(2(t+1))+C \
=x ln(1+sqrt((1+x)/x))+1/2 ln(sqrt(1+x)+sqrt(x)) \
-1/2 sqrt(x)/(sqrt(1+x)+sqrt(x))+C. $
]
]

#ezexam.question(label: n => [2011 数三 17])[
（本题满分10分）求不定积分 $integral(arcsin sqrt(x)+ln x)/sqrt(x)dif x$.
#ezexam.solution(show-number: false)[
解　利用分部积分法可得
$ integral(arcsin sqrt(x)+ln x)/sqrt(x)dif x=2integral(arcsin sqrt(x)+ln x)dif sqrt(x) $
$ =2sqrt(x)(arcsin sqrt(x)+ln x)-integral(dif x)/sqrt(1-x)-2integral(dif x)/sqrt(x) $
$ =2sqrt(x)(arcsin sqrt(x)+ln x)+integral(dif(1-x))/sqrt(1-x)-4sqrt(x) $
$ =2sqrt(x)(arcsin sqrt(x)+ln x)+2sqrt(1-x)-4sqrt(x)+C. $
]
]

#ezexam.question(label: n => [2018 数一 15、数二 15])[
（本题满分 10 分）

求不定积分 $integral e^(2x) arctan sqrt(e^x-1) dif x$.
#ezexam.solution(show-number: false)[
解
$ integral e^(2x) arctan sqrt(e^x-1) dif x
 =1/2 integral arctan sqrt(e^x-1) dif e^(2x) \
 =1/2 e^(2x) arctan sqrt(e^x-1)-1/4 integral e^(2x)/sqrt(e^x-1) dif x. $
又
$ integral e^(2x)/sqrt(e^x-1) dif x=integral e^x/sqrt(e^x-1) dif e^x \
 =integral sqrt(e^x-1) dif e^x+integral 1/sqrt(e^x-1) dif e^x \
 =2/3 (e^x-1)sqrt(e^x-1)+2sqrt(e^x-1)+C, $
所以
$ integral e^(2x) arctan sqrt(e^x-1) dif x \
 =1/2 e^(2x) arctan sqrt(e^x-1)-1/6 (e^x+2)sqrt(e^x-1)+C. $
]
]

#ezexam.question(label: n => [2018 数三 10])[
$integral e^x arcsin sqrt(1-e^(2x)) dif x=$\_\_\_\_\_\_.
#ezexam.solution(show-number: false)[
$e^x arcsin sqrt(1-e^(2x))-sqrt(1-e^(2x))+C$.
]
]

*由函数关系求积分*

#ezexam.question(label: n => [1994 数五 5])[
（6分）

已知 $(sin x)/x$ 是函数 $f(x)$ 的一个原函数，求 $integral x^3 f'(x)dif x$.
#ezexam.solution(show-number: false)[
$f(x)=(x cos x-sin x)/x^2$.分部积分得
$ integral x^3 f'(x)dif x=x^3 f(x)-3integral x^2 f(x)dif x \
=x^2 cos x-4x sin x-6cos x+C. $
]
]

#ezexam.question(label: n => [1995 数三 3（3）])[
设 $f(x^2-1)=ln(x^2/(x^2-2))$，且 $f(phi(x))=ln x$，求 $integral phi(x)dif x$.
#ezexam.solution(show-number: false)[
*1995 数三 3（3） 解答*

换元得 $f(u)=ln((u+1)/(u-1))$.由 $(phi(x)+1)/(phi(x)-1)=x$ 得 $phi(x)=(x+1)/(x-1)$，故 $integral phi(x)dif x=x+2ln abs(x-1)+C$.

]
]

#ezexam.question(label: n => [1996 数四 1（2）、数五 1（2）])[
设 $integral x f(x)dif x=arcsin x+C$，则 $integral 1/f(x)dif x=$ ＿＿＿＿.
#ezexam.solution(show-number: false)[
*1996 数四 1（2） 解答*

求导得 $x f(x)=1/sqrt(1-x^2)$，所以所求为 $integral x sqrt(1-x^2)dif x=-(1-x^2)^(3/2)/3+C$.

]
]

#ezexam.question(label: n => [2000 数二 3])[
（本题满分5分）设 $f(ln x)=frac(ln(1+x),x)$，计算 $integral f(x)dif x$.
#ezexam.solution(show-number: false)[
设 $ln x=t$，则 $x=e^t$，$f(t)=frac(ln(1+e^t),e^t)$. （1分）
$ integral f(x)dif x&=integral frac(ln(1+e^x),e^x)dif x \
&=-integral ln(1+e^x)dif e^(-x) \
&=-e^(-x)ln(1+e^x)+integral frac(1,1+e^x)dif x quad "（3分）" \
&=-e^(-x)ln(1+e^x)+integral(1-frac(e^x,1+e^x))dif x \
&=-e^(-x)ln(1+e^x)+x-ln(1+e^x)+C \
&=x-(1+e^(-x))ln(1+e^x)+C. quad "（5分）" $
注：若结论中没有常数 $C$ 扣1分.
]
]

#ezexam.question(label: n => [2002 数三 5、数四 5])[
（本题满分6分）设 $f(sin^2 x)=x/(sin x)$，求 $integral sqrt(x)/sqrt(1-x) f(x) dif x$.
#ezexam.solution(show-number: false)[
*解* 令 $u=sin^2 x$，则有 $sin x=sqrt(u),x=arcsin sqrt(u)$，$f(x)=(arcsin sqrt(x))/sqrt(x)$.

于是
$ integral sqrt(x)/sqrt(1-x) f(x) dif x \
=integral (arcsin sqrt(x))/sqrt(1-x) dif x \
=-integral (arcsin sqrt(x))/sqrt(1-x) dif(1-x) \
=-2integral arcsin sqrt(x) dif sqrt(1-x) \
=-2sqrt(1-x)arcsin sqrt(x)+2integral sqrt(1-x)1/sqrt(1-x)dif sqrt(x) \
=-2sqrt(1-x)arcsin sqrt(x)+2sqrt(x)+C. $
]
]

#ezexam.question(label: n => [2002 数四 1（2）])[
已知 $f(x)$ 的一个原函数为 $ln^2 x$，则 $integral x f'(x) dif x=$#h(3em).
#ezexam.solution(show-number: false)[
$2ln x-ln^2 x+C$.
]
]



*求原函数*

#ezexam.question(label: n => [2016 数一 2、数二 2])[
已知函数 $f(x)=cases(2(x-1) & x<1,ln x & x>=1)$，则 $f(x)$ 的一个原函数是
#choices([$F(x)=cases((x-1)^2 & x<1,x(ln x-1) & x>=1)$.], [$F(x)=cases((x-1)^2 & x<1,x(ln x+1)-1 & x>=1)$.], [$F(x)=cases((x-1)^2 & x<1,x(ln x+1)+1 & x>=1)$.], [$F(x)=cases((x-1)^2 & x<1,x(ln x-1)+1 & x>=1)$.])
#ezexam.solution(show-number: false)[
D.
]
]

