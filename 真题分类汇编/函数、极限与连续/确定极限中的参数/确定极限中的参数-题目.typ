#import "../../template.typ": collection
#show: collection.with(title: "确定极限中的参数分类汇编", subject: "确定极限中的参数")
#import "@preview/ezexam:0.3.1" as ezexam
#let choices = ezexam.choices.with(r-gap: 1.3em)
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)

= 历年真题：确定极限中的参数

#ezexam.question(label: n => [1990 数二 2（1）])[
已知 $lim_(x->infinity)(x^2/(x+1)-a x-b)=0$，其中 $a,b$ 是常数，则（　）.
#choices([$a=1,b=1$],[$a=-1,b=1$],[$a=1,b=-1$],[$a=-1,b=-1$])
]

#ezexam.question(label: n => [1990 数二 3（1）])[
已知 $lim_(x->infinity)((x+a)/(x-a))^x=9$，求常数 $a$.
]

#ezexam.question(label: n => [1993 数四 4、数五 4])[
已知 $lim_(x arrow infinity)((x-a)/(x+a))^x=integral_a^(+infinity)4x^2 e^(-2x)dif x$，求常数 $a$ 的值.
]

#ezexam.question(label: n => [1994 数一 2（4）、数二 2（4）])[
设 $lim_(x arrow 0)(a tan x+b(1-cos x))/(c ln(1-2x)+d(1-e^(-x^2)))=2$，其中 $a^2+c^2≠0$，则必有（　）.
#choices[$b=4d$][$b=-4d$][$a=4c$][$a=-4c$]
]

#ezexam.question(label: n => [1994 数三 2（1）])[
设 $lim_(x arrow 0)(ln(1+x)-(a x+b x^2))/x^2=2$，则（　）.
#choices[$a=1,b=-5/2$][$a=0,b=-2$][$a=0,b=-5/2$][$a=1,b=-2$]
]

#ezexam.question(label: n => [1995 数五 1（1）])[
设 $lim_(x arrow infinity)((1+x)/x)^(a x)=integral_(-infinity)^a t e^t dif t$，则 $a=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [1996 数一 1（1）])[
设 $lim_(x arrow infinity)((x+2a)/(x-a))^x=8$，则 $a=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [1998 数二 4])[
确定常数 $a,b,c$ 的值，使
$ lim_(x -> 0) frac(a x-sin x,integral_b^x frac(ln(1+t^3),t) dif t)=c quad (c!=0). $
]

#ezexam.question(label: n => [2000 数二 2（1）])[
设函数 $f(x)=frac(x,a+e^(b x))$ 在 $(-infinity,+infinity)$ 内连续，且 $lim_(x->-infinity)f(x)=0$，则常数 $a,b$ 满足（　）.
#choices[$a<0,b<0$.][$a>0,b>0$.][$a<=0,b>0$.][$a>=0,b<0$.]
]

#ezexam.question(label: n => [2001 数三 4、数四 4])[
已知 $f(x)$ 在 $(-infinity,+infinity)$ 内可导，且 $lim_(x->infinity) f'(x)=e$，
$ lim_(x->infinity) ((x+c)/(x-c))^x=lim_(x->infinity) [f(x)-f(x-1)], $
求 $c$ 的值.
]

#ezexam.question(label: n => [2004 数三 1、数四 1])[
若 $lim_(x->0)(sin x)/(e^x-a)(cos x-b)=5$，则 $a=$#fillin(len: 4em)[]，$b=$#fillin(len: 4em)[].
]

#ezexam.question(label: n => [2010 数三 1])[
若 $lim_(x->0)[1/x-(1/x-a)e^x]=1$，则 $a$ 等于
#choices([0.],[1.],[2.],[3.])
]

#ezexam.question(label: n => [2011 数二 15])[
已知函数 $F(x)=(integral_0^x ln(1+t^2)dif t)/x^alpha$. 设 $lim_(x->+infinity)F(x)=lim_(x->0^+)F(x)=0$，求 $alpha$ 的取值范围.
]

#ezexam.question(label: n => [2012 数二 15])[
已知函数 $f(x)=(1+x)/(sin x)-1/x$，记 $a=lim_(x->0)f(x)$.

（Ⅰ）求 $a$ 的值；

（Ⅱ）若当 $x->0$ 时，$f(x)-a$ 与 $x^k$ 是同阶无穷小量，求常数 $k$ 的值.
]

#ezexam.question(label: n => [2013 数一 1])[
若 $lim_(x->0)(x-arctan x)/x^k=c$，其中 $k,c$ 为常数，且 $c!=0$，则
#choices([$k=2,c=-1/2$.],[$k=2,c=1/2$.],[$k=3,c=-1/3$.],[$k=3,c=1/3$.])
]

#ezexam.question(label: n => [2018 数一 9])[
若 $lim_(x->0) ((1-tan x)/(1+tan x))^(1/(sin k x))=e$，则 $k=$#fillin(len: 4em)[].
]

#ezexam.question(label: n => [2018 数三 15])[
已知实数 $a,b$ 满足 $lim_(x->+infinity) [(a x+b)e^(1/x)-x]=2$，求 $a,b$.
]

#ezexam.question(label: n => [2018 数二 1])[
若 $lim_(x->0) (e^x+a x^2+b x)^(1/x^2)=1$，则（　）.
#choices([$a=1/2,b=-1$], [$a=-1/2,b=-1$], [$a=1/2,b=1$], [$a=-1/2,b=1$])
]
