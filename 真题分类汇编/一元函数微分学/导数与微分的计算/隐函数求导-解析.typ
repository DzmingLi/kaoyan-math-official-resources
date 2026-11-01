#import "../../template.typ": collection
#show: collection.with(title: "隐函数求导分类汇编", subject: "隐函数求导")
#import "@preview/ezexam:0.3.1" as ezexam
#import "@preview/cetz:0.5.2"
#let choices = ezexam.choices.with(r-gap: 1.3em)
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(true)

= 历年真题：隐函数求导

*一阶导数与微分*

#ezexam.question(label: n => [1989 数二 1（7）])[
设 $tan y=x+y$，则 $dif y=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
解法一　$tan y=x+y$，即 $y=arctan(x+y)$，两边微分，得
$ dif y=1/(1+(x+y)^2)(dif x+dif y), $
从而
$ [1-1/(1+(x+y)^2)]dif y=1/(1+(x+y)^2)dif x, $
故 $dif y=1/(x+y)^2 dif x$. 解法二　在 $tan y=x+y$ 两边求微分，得 $sec^2 y dif y=dif x+dif y$. 所以
$ dif y=1/(sec^2 y-1)dif x=1/(tan^2 y)dif x=1/(x+y)^2 dif x. $
]
]

#ezexam.question(label: n => [1995 数MBA 1（2）])[
设 $x+y=sin y$，则 $dif y=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
两边微分得 $dif x+dif y=cos y dif y$，故 $dif y=(dif x)/(cos y-1)$.
]
]

#ezexam.question(label: n => [1992 数一 1（1）])[
设函数 $y=y(x)$ 由方程 $e^(x+y)+cos(x y)=0$ 确定，则 $(dif y)/(dif x)=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
解　由隐函数求导法，方程两边对 $x$ 求导，有
$ e^(x+y)(1+y')-sin(x y)(y+x y')=0, $
$ therefore y'=(y sin(x y)-e^(x+y))/(e^(x+y)-x sin(x y)). $
]
]

#ezexam.question(label: n => [1993 数三 1（2）])[
函数 $y=y(x)$ 由方程 $sin(x^2+y^2)+e^x-x y^2=0$ 所确定，则 $(dif y)/(dif x)=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
两边对 $x$ 求导，得 $(2x+2y y')cos(x^2+y^2)+e^x-y^2-2x y y'=0$. 所以
$ y'=(y^2-e^x-2x cos(x^2+y^2))/(2y cos(x^2+y^2)-2x y). $
]
]

#ezexam.question(label: n => [1994 数四 1（3）、数五 1（3）])[
设方程 $e^(x y)+y^2=cos x$ 确定 $y$ 为 $x$ 的函数，则 $(dif y)/(dif x)=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
两边求导得 $e^(x y)(y+x y')+2y y'=-sin x$，故 $y'=-(y e^(x y)+sin x)/(x e^(x y)+2y)$.
]
]

#ezexam.question(label: n => [1996 数四 1（1）、数五 1（1）])[
设方程 $x=y^y$ 确定 $y$ 是 $x$ 的函数，则 $dif y=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
取对数得 $ln x=y ln y$，微分得 $dif y=(dif x)/(x(1+ln y))$.
]
]

#ezexam.question(label: n => [2006 数二 5])[
设函数 $y=y(x)$ 由方程 $y=1-x e^y$ 确定，则 $lr((dif y)/(dif x))|_(x=0)=$#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$-e$.
]
]

*高阶导数*

#ezexam.question(label: n => [1988 数二 4])[
设 $y=1+x e^(x y)$，求 $y'|_(x=0),y''|_(x=0)$.
#ezexam.solution(show-number: false)[
由隐函数求导法，得
$ y'=e^(x y)+x e^(x y)(y+x y'), quad y'=(e^(x y)(1+x y))/(1-x^2 e^(x y)), $
所以 $y'|_(x=0)=y'|_(x=0,y=1)=1$. 再用隐函数求导法（也可对得到的 $y'$ 求导，略），得
$ y''=e^(x y)(y+x y')+e^(x y)(y+x y')+x y'e^(x y)(y+x y') $
$ quad +x e^(x y)(y+x y')^2+x e^(x y)(y'+y'+x y''). $
为求出 $y''(0)$，代入 $y'(0)=1$，及 $x=0,y=1$，有
$ y''(0)=1dot(1+0)+1(1+0)+0+0=>y''(0)=2. $
]
]

#ezexam.question(label: n => [1994 数三 3（1）])[
设 $y=f(x+y)$，其中 $f$ 具有二阶导数，且其一阶导数不等于1. 求 $(dif^2 y)/(dif x^2)$.
#ezexam.solution(show-number: false)[
求导得 $y'=(1+y')f'$，故 $y'=f'/(1-f')$. 再求导得 $y''=(1+y')^2 f''+y'' f'$，所以 $y''=f''/(1-f')^3$，其中 $f',f''$ 的自变量均为 $x+y$.
]
]

#ezexam.question(label: n => [1995 数三 3（2）])[
设函数 $y=y(x)$ 由方程 $x e^(f(y))=e^y$ 确定，其中 $f$ 具有二阶导数，且 $f'≠1$，求 $(dif^2 y)/(dif x^2)$.
#ezexam.solution(show-number: false)[
取对数得 $ln x+f(y)=y$，所以 $y'=1/(x(1-f'(y)))$. 再求导得
$ y''=(f''(y)-(1-f'(y))^2)/(x^2(1-f'(y))^3). $
]
]

#ezexam.question(label: n => [2002 数一 1（2）])[
已知函数 $y=y(x)$ 由方程 $e^y+6x y+x^2-1=0$ 确定，则 $y''(0)=$#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$-2$.
]
]

#ezexam.question(label: n => [2007 数二 20])[
已知函数 $f(u)$ 具有二阶导数，且 $f'(0)=1$，函数 $y=y(x)$ 由方程 $y-x e^(y-1)=1$ 所确定. 设 $z=f(ln y-sin x)$，求 $(dif z)/(dif x)|_(x=0),(dif^2 z)/(dif x^2)|_(x=0)$.
#ezexam.solution(show-number: false)[
解　在 $y-x e^(y-1)=1$ 中，令 $x=0$ 得 $y=1$. 在 $y-x e^(y-1)=1$ 两边对 $x$ 求导，得 $y'-e^(y-1)-x y'e^(y-1)=0$，即
$ (2-y)y'-e^(y-1)=0. quad "（*）" $
由 $x=0,y=1$ 得 $y'|_(x=0)=1$. 在（＊）式两边对 $x$ 求导，得 $(2-y)y''-y'^2-e^(y-1)y'=0$. 由 $x=0$ 时，$y=1,y'=1$ 得 $y''|_(x=0)=2$. 因为 $(dif z)/(dif x)=f'(ln y-sin x)(y'/y-cos x)$，故 $(dif z)/(dif x)|_(x=0)=0$. 又
$ (dif^2 z)/(dif x^2)=&f''(ln y-sin x)(y'/y-cos x)^2 \
&+f'(ln y-sin x)[y''/y-(y')^2/y^2+sin x], $
所以 $(dif^2 z)/(dif x^2)|_(x=0)=f'(0)(2-1)=1$.
]
]

*微分计算*

#ezexam.question(label: n => [1990 数二 3（2）])[
求由方程 $2y-x=(x-y)ln(x-y)$ 所确定的函数 $y=y(x)$ 的微分 $dif y$.
#ezexam.solution(show-number: false)[
等式两边同时对 $x$ 求导得
$ 2y'-1=(1-y')ln(x-y)+(x-y)(1-y')/(x-y), $
解得 $y'=(2+ln(x-y))/(3+ln(x-y))$，故
$ dif y=y'dif x=(2+ln(x-y))/(3+ln(x-y))dif x. $
]
]

*变限积分与求导综合*

#ezexam.question(label: n => [2010 数三 9])[
设可导函数 $y=y(x)$ 由方程 $integral_0^(x+y)e^(-t^2)dif t=integral_0^x x sin t^2 dif t$ 确定，则 $(dif y)/(dif x)|_(x=0)=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
−1.
]
]

#ezexam.question(label: n => [2016 数二 12])[
已知函数 $f(x)$ 在 $(-infinity,+infinity)$ 上连续，且 $f(x)=(x+1)^2+2integral_0^x f(t) dif t$，则当 $n>=2$ 时，$f^((n))(0)=$#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$5 dot 2^(n-1)$.
]
]

