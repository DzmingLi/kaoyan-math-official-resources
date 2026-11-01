#import "@preview/ezexam:0.3.1" as ezexam
#import "@preview/cetz:0.5.2"
#let choices = ezexam.choices.with(r-gap: 1.3em)
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)

= 历年真题：隐函数求导

*一阶导数与微分*

#ezexam.question(label: n => [1989 数二 1（7）])[
设 $tan y=x+y$，则 $dif y=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [1995 数MBA 1（2）])[
设 $x+y=sin y$，则 $dif y=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [1992 数一 1（1）])[
设函数 $y=y(x)$ 由方程 $e^(x+y)+cos(x y)=0$ 确定，则 $(dif y)/(dif x)=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [1993 数三 1（2）])[
函数 $y=y(x)$ 由方程 $sin(x^2+y^2)+e^x-x y^2=0$ 所确定，则 $(dif y)/(dif x)=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [1994 数四 1（3）、数五 1（3）])[
设方程 $e^(x y)+y^2=cos x$ 确定 $y$ 为 $x$ 的函数，则 $(dif y)/(dif x)=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [1996 数四 1（1）、数五 1（1）])[
设方程 $x=y^y$ 确定 $y$ 是 $x$ 的函数，则 $dif y=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [2006 数二 5])[
设函数 $y=y(x)$ 由方程 $y=1-x e^y$ 确定，则 $lr((dif y)/(dif x))|_(x=0)=$#fillin(len: 4em)[].
]

*高阶导数*

#ezexam.question(label: n => [1988 数二 4])[
设 $y=1+x e^(x y)$，求 $y'|_(x=0),y''|_(x=0)$.
]

#ezexam.question(label: n => [1994 数三 3（1）])[
设 $y=f(x+y)$，其中 $f$ 具有二阶导数，且其一阶导数不等于1. 求 $(dif^2 y)/(dif x^2)$.
]

#ezexam.question(label: n => [1995 数三 3（2）])[
设函数 $y=y(x)$ 由方程 $x e^(f(y))=e^y$ 确定，其中 $f$ 具有二阶导数，且 $f'≠1$，求 $(dif^2 y)/(dif x^2)$.
]

#ezexam.question(label: n => [2002 数一 1（2）])[
已知函数 $y=y(x)$ 由方程 $e^y+6x y+x^2-1=0$ 确定，则 $y''(0)=$#fillin(len: 4em)[].
]

#ezexam.question(label: n => [2007 数二 20])[
已知函数 $f(u)$ 具有二阶导数，且 $f'(0)=1$，函数 $y=y(x)$ 由方程 $y-x e^(y-1)=1$ 所确定. 设 $z=f(ln y-sin x)$，求 $(dif z)/(dif x)|_(x=0),(dif^2 z)/(dif x^2)|_(x=0)$.
]

*微分计算*

#ezexam.question(label: n => [1990 数二 3（2）])[
求由方程 $2y-x=(x-y)ln(x-y)$ 所确定的函数 $y=y(x)$ 的微分 $dif y$.
]

*变限积分与求导综合*

#ezexam.question(label: n => [2010 数三 9])[
设可导函数 $y=y(x)$ 由方程 $integral_0^(x+y)e^(-t^2)dif t=integral_0^x x sin t^2 dif t$ 确定，则 $(dif y)/(dif x)|_(x=0)=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [2016 数二 12])[
已知函数 $f(x)$ 在 $(-infinity,+infinity)$ 上连续，且 $f(x)=(x+1)^2+2integral_0^x f(t) dif t$，则当 $n>=2$ 时，$f^((n))(0)=$#fillin(len: 4em)[].
]

