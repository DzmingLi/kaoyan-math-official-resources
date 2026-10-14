#import "@preview/ezexam:0.3.1" as ezexam
#let choices = ezexam.choices.with(r-gap: 1.3em)
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(true)

= 历年真题：确定极限中的参数

#ezexam.question(label: n => [1990 数二 2（1）])[
已知 $lim_(x->infinity)(x^2/(x+1)-a x-b)=0$，其中 $a,b$ 是常数，则（　）.
#choices([$a=1,b=1$],[$a=-1,b=1$],[$a=1,b=-1$],[$a=-1,b=-1$])
#ezexam.solution(show-number: false)[
由
$ lim_(x->infinity)(x^2/(x+1)-a x-b)=lim_(x->infinity)((1-a)x^2-(a+b)x-b)/(x+1)=0, $
应有 $cases(1-a=0,a+b=0)$，即 $a=1,b=-1$. 应选 C. 注　应注意多项式之比当 $x->infinity$ 时的极限.
]
]

#ezexam.question(label: n => [1990 数二 3（1）])[
已知 $lim_(x->infinity)((x+a)/(x-a))^x=9$，求常数 $a$.
#ezexam.solution(show-number: false)[
由
$ lim_(x->infinity)((x+a)/(x-a))^x=lim_(x->infinity)((1+a/x)^x)/((1-a/x)^x)=e^a/e^(-a)=e^(2a)=9, $
得 $2a=ln 9,a=ln 3$.
]
]

#ezexam.question(label: n => [1993 数四 4、数五 4])[
已知 $lim_(x arrow infinity)((x-a)/(x+a))^x=integral_a^(+infinity)4x^2 e^(-2x)dif x$，求常数 $a$ 的值.
#ezexam.solution(show-number: false)[
左边为 $e^(-2a)$. 右边两次分部积分，得
$ integral_a^(+infinity)4x^2 e^(-2x)dif x=[-(2x^2+2x+1)e^(-2x)]_a^(+infinity)=(2a^2+2a+1)e^(-2a). $
因此 $2a^2+2a=0$，得 $a=0$ 或 $a=-1$.
]
]

#ezexam.question(label: n => [1994 数一 2（4）、数二 2（4）])[
设 $lim_(x arrow 0)(a tan x+b(1-cos x))/(c ln(1-2x)+d(1-e^(-x^2)))=2$，其中 $a^2+c^2≠0$，则必有（　）.
#choices[$b=4d$][$b=-4d$][$a=4c$][$a=-4c$]
#ezexam.solution(show-number: false)[
D. 若 $c=0$，则 $a≠0$，极限不能为有限非零数. 故 $c≠0$，原极限为 $-a/(2c)=2$，即 $a=-4c$.
]
]

#ezexam.question(label: n => [1994 数三 2（1）])[
设 $lim_(x arrow 0)(ln(1+x)-(a x+b x^2))/x^2=2$，则（　）.
#choices[$a=1,b=-5/2$][$a=0,b=-2$][$a=0,b=-5/2$][$a=1,b=-2$]
#ezexam.solution(show-number: false)[
A. 用 $ln(1+x)=x-x^2/2+o(x^2)$，得 $a=1$、$-1/2-b=2$.
]
]

#ezexam.question(label: n => [1995 数五 1（1）])[
设 $lim_(x arrow infinity)((1+x)/x)^(a x)=integral_(-infinity)^a t e^t dif t$，则 $a=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
左端为 $e^a$，右端为 $(a-1)e^a$，因此 $a=2$.
]
]

#ezexam.question(label: n => [1996 数一 1（1）])[
设 $lim_(x arrow infinity)((x+2a)/(x-a))^x=8$，则 $a=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
极限为 $e^(3a)$，由 $e^(3a)=8$，得 $a=ln 2$.
]
]

#ezexam.question(label: n => [1998 数二 4])[
确定常数 $a,b,c$ 的值，使
$ lim_(x -> 0) frac(a x-sin x,integral_b^x frac(ln(1+t^3),t) dif t)=c quad (c!=0). $
#ezexam.solution(show-number: false)[
由于 $x -> 0$ 时，$a x-sin x -> 0$，且极限 $c$ 不为零，所以当 $x -> 0$ 时，$integral_b^x frac(ln(1+t^3),t) dif t -> 0$，故必有 $b=0$. （1分）

由于
$ lim_(x -> 0) frac(a x-sin x,integral_0^x frac(ln(1+t^3),t) dif t)&=lim_(x -> 0) frac(a-cos x,frac(ln(1+x^3),x)) \
&=lim_(x -> 0) frac(x(a-cos x),ln(1+x^3)) \
&=lim_(x -> 0) frac(x(a-cos x),x^3)=lim_(x -> 0) frac(a-cos x,x^2)=c quad (c!=0), quad "（3分）" $
故必有 $a=1$，从而 $c=frac(1,2)$. （5分）
]
]

#ezexam.question(label: n => [2000 数二 2（1）])[
设函数 $f(x)=frac(x,a+e^(b x))$ 在 $(-infinity,+infinity)$ 内连续，且 $lim_(x->-infinity)f(x)=0$，则常数 $a,b$ 满足（　）.
#choices[$a<0,b<0$.][$a>0,b>0$.][$a<=0,b>0$.][$a>=0,b<0$.]
#ezexam.solution(show-number: false)[
D.
]
]

#ezexam.question(label: n => [2001 数三 4、数四 4])[
已知 $f(x)$ 在 $(-infinity,+infinity)$ 内可导，且 $lim_(x->infinity) f'(x)=e$，
$ lim_(x->infinity) ((x+c)/(x-c))^x=lim_(x->infinity) [f(x)-f(x-1)], $
求 $c$ 的值.
#ezexam.solution(show-number: false)[
*解* 由条件易见 $c != 0$.
$ lim_(x->infinity) ((x+c)/(x-c))^x=lim_(x->infinity) [(1+(2c)/(x-c))^((x-c)/(2c))]^((2c x)/(x-c))=e^(2c). $
由拉格朗日定理，有 $f(x)-f(x-1)=f'(xi)dot 1$，其中 $xi$ 介于 $x-1$ 与 $x$ 之间，那么
$ lim_(x->infinity) [f(x)-f(x-1)]=lim_(x->infinity) f'(xi)=e. $
于是，$e^(2c)=e$，故 $c=1/2$.
]
]

#ezexam.question(label: n => [2004 数三 1、数四 1])[
若 $lim_(x->0)(sin x)/(e^x-a)(cos x-b)=5$，则 $a=$#fillin(len: 4em)[]，$b=$#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
1；$-4$.
]
]

#ezexam.question(label: n => [2010 数三 1])[
若 $lim_(x->0)[1/x-(1/x-a)e^x]=1$，则 $a$ 等于
#choices([0.],[1.],[2.],[3.])
#ezexam.solution(show-number: false)[
C.
]
]

#ezexam.question(label: n => [2011 数二 15])[
已知函数 $F(x)=(integral_0^x ln(1+t^2)dif t)/x^alpha$. 设 $lim_(x->+infinity)F(x)=lim_(x->0^+)F(x)=0$，求 $alpha$ 的取值范围.
#ezexam.solution(show-number: false)[
解　因为
$ lim_(x->+infinity)F(x)=lim_(x->+infinity)(integral_0^x ln(1+t^2)dif t)/x^alpha $
$ =lim_(x->+infinity)(ln(1+x^2))/(alpha x^(alpha-1)) $
$ =lim_(x->+infinity)((2x^2)/(1+x^2))/(alpha(alpha-1)x^(alpha-1)) $
$ =2/(alpha(alpha-1))lim_(x->+infinity)1/x^(alpha-1), $
由题意 $lim_(x->+infinity)F(x)=0$，得 $alpha>1$. 又因为
$ lim_(x->0^+)F(x)=lim_(x->0^+)(integral_0^x ln(1+t^2)dif t)/x^alpha=lim_(x->0^+)(ln(1+x^2))/(alpha x^(alpha-1)) $
$ =lim_(x->0^+)x^2/(alpha x^(alpha-1))=1/alpha lim_(x->0^+)x^(3-alpha), $
由题意 $lim_(x->0^+)F(x)=0$，得 $alpha<3$. 综上所述，$1<alpha<3$.
]
]

#ezexam.question(label: n => [2012 数二 15])[
已知函数 $f(x)=(1+x)/(sin x)-1/x$，记 $a=lim_(x->0)f(x)$.

（Ⅰ）求 $a$ 的值；

（Ⅱ）若当 $x->0$ 时，$f(x)-a$ 与 $x^k$ 是同阶无穷小量，求常数 $k$ 的值.
#ezexam.solution(show-number: false)[
（Ⅰ）解　由题意
$ a&=lim_(x->0)((1+x)/(sin x)-1/x)=lim_(x->0)(x+x^2-sin x)/(x sin x) \
 &=lim_(x->0)(x+x^2-sin x)/x^2=lim_(x->0)(1+2x-cos x)/(2x)=1. $

（Ⅱ）*解法1* 因为
$ f(x)-a=(1+x)/(sin x)-1/x-1=(x+x^2-sin x-x sin x)/(x sin x), $
$ lim_(x->0)(f(x)-a)/x^k&=lim_(x->0)(x+x^2-sin x-x sin x)/x^(k+2) \
 &=lim_(x->0)(1+2x-cos x-sin x-x cos x)/((k+2)x^(k+1)) \
 &=lim_(x->0)(2+sin x-2cos x+x sin x)/((k+2)(k+1)x^k) \
 &=lim_(x->0)(cos x+3sin x+x cos x)/((k+2)(k+1)k x^(k-1)). $
所以，当 $k=1$ 时，有 $lim_(x->0)(f(x)-a)/x^k=1/6$. 此时 $f(x)-a$ 与 $x$ 是同阶无穷小量 $(x->0)$，因此 $k=1$.

*解法2* 因为 $sin x=x-x^3/6+o(x^3)$，所以
$ lim_(x->0)(f(x)-a)/x^k&=lim_(x->0)(x+x^2-sin x-x sin x)/x^(k+2) \
 &=lim_(x->0)(x+x^2-(x-x^3/6)-x^2+o(x^3))/x^(k+2) \
 &=lim_(x->0)(x^3/6+o(x^3))/x^(k+2), $
可知当 $3=k+2$ 时，$f(x)-a$ 与 $x$ 是同阶无穷小量，因此 $k=1$.
]
]

#ezexam.question(label: n => [2013 数一 1])[
若 $lim_(x->0)(x-arctan x)/x^k=c$，其中 $k,c$ 为常数，且 $c!=0$，则
#choices([$k=2,c=-1/2$.],[$k=2,c=1/2$.],[$k=3,c=-1/3$.],[$k=3,c=1/3$.])
#ezexam.solution(show-number: false)[
D.
]
]

#ezexam.question(label: n => [2018 数一 9])[
若 $lim_(x->0) ((1-tan x)/(1+tan x))^(1/(sin k x))=e$，则 $k=$#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$-2$.
]
]

#ezexam.question(label: n => [2018 数三 15])[
已知实数 $a,b$ 满足 $lim_(x->+infinity) [(a x+b)e^(1/x)-x]=2$，求 $a,b$.
#ezexam.solution(show-number: false)[
解　令 $t=1/x$，则
$ lim_(x->+infinity) [(a x+b)e^(1/x)-x]=lim_(t->0^+) ((a+b t)e^t-1)/t, $
由题设及 $lim_(t->0^+) [(a+b t)e^t-1]=a-1$ 可得 $a-1=0$，即 $a=1$. 又因为
$ lim_(t->0^+) ((a+b t)e^t-1)/t=lim_(t->0^+) ((1+b t)e^t-1)/t \
 =lim_(t->0^+) (b e^t+(e^t-1)/t)=b+1, $
从而由题设得 $b=1$.
]
]

#ezexam.question(label: n => [2018 数二 1])[
若 $lim_(x->0) (e^x+a x^2+b x)^(1/x^2)=1$，则（　）.
#choices([$a=1/2,b=-1$], [$a=-1/2,b=-1$], [$a=1/2,b=1$], [$a=-1/2,b=1$])
#ezexam.solution(show-number: false)[
B.
]
]
