#import "../../template.typ": collection
#show: collection.with(title: "参数方程求导分类汇编", subject: "参数方程求导")
#import "@preview/ezexam:0.3.1" as ezexam
#import "@preview/cetz:0.5.2"
#let choices = ezexam.choices.with(r-gap: 1.3em)
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(true)

= 历年真题：参数方程求导

*一阶导数与微分*

#ezexam.question(label: n => [1992 数二 1（1）])[
设 $cases(x=f(t)-pi,y=f(e^(3t)-1))$，其中 $f$ 可导，且 $f'(0)!=0$，则 $(dif y)/(dif x)|_(t=0)=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
先求导数，再代入值.
$ (dif y)/(dif x)=y'_t/x'_t=(3e^(3t)f'(e^(3t)-1))/(f'(t)), $
$ (dif y)/(dif x)|_(t=0)=(3f'(0))/(f'(0))=3. $
]
]

*高阶导数*

#ezexam.question(label: n => [1987 数二 3])[
设 $cases(x=5(t-sin t),y=5(1-cos t))$，求 $(dif y)/(dif x),(dif^2 y)/(dif x^2)$.
#ezexam.solution(show-number: false)[
$ (dif y)/(dif x)=y'_t/x'_t=(sin t)/(1-cos t), $
$ (dif^2 y)/(dif x^2)=(dif/(dif t)((sin t)/(1-cos t)))/((dif x)/(dif t)) $
$ = (cos t(1-cos t)-sin t dot sin t)/(1-cos t)^2 dot 1/(5(1-cos t))
=-1/(5(1-cos t)^2). $
]
]

#ezexam.question(label: n => [1989 数二 3（4）])[
已知 $cases(x=ln(1+t^2),y=arctan t)$，求 $(dif y)/(dif x)$ 及 $(dif^2 y)/(dif x^2)$.
#ezexam.solution(show-number: false)[
$ (dif y)/(dif x)=y'_t/x'_t=1/(1+t^2)/(2t/(1+t^2))=1/(2t); $
$ (dif^2 y)/(dif x^2)=(dif/(dif t)(1/(2t)))/((dif x)/(dif t)) $
$ =-1/(2t^2)/(2t/(1+t^2))=-(1+t^2)/(4t^3). $
]
]

#ezexam.question(label: n => [1991 数三 3（1）])[
设 $cases(x=t cos t,y=t sin t)$，求 $(dif^2 y)/(dif x^2)$.
#ezexam.solution(show-number: false)[
由参数方程求导公式，
$ (dif y)/(dif x)=(sin t+t cos t)/(cos t-t sin t), $
$ (dif^2 y)/(dif x^2)=1/(cos t-t sin t) dif/(dif t)((sin t+t cos t)/(cos t-t sin t))
=(2+t^2)/(cos t-t sin t)^3. $
]
]

#ezexam.question(label: n => [2010 数二 17])[
设函数 $y=f(x)$ 由参数方程 $cases(x=2t+t^2,y=psi(t))(t>-1)$ 所确定，其中 $psi(t)$ 具有2阶导数，且 $psi(1)=5/2,psi'(1)=6$. 已知 $(dif^2 y)/(dif x^2)=3/(4(1+t))$，求函数 $psi(t)$.
#ezexam.solution(show-number: false)[
解　因为 $(dif y)/(dif x)=psi'(t)/(2+2t)$，所以
$ (dif^2 y)/(dif x^2)=(((2+2t)psi''(t)-2psi'(t))/(2+2t)^2)/(2+2t) \
=((1+t)psi''(t)-psi'(t))/(4(1+t)^3). $
由题设 $(dif^2 y)/(dif x^2)=3/(4(1+t))$，故 $((1+t)psi''(t)-psi'(t))/(4(1+t)^3)=3/(4(1+t))$，从而 $(1+t)psi''(t)-psi'(t)=3(1+t)^2$，即 $psi''(t)-1/(1+t)psi'(t)=3(1+t)$. 设 $u=psi'(t)$，则有 $u'-1/(1+t)u=3(1+t)$，
$ u=e^(integral 1/(1+t)dif t)[integral 3(1+t)e^(-integral 1/(1+t)dif t)dif t+C_1] \
=(1+t)[integral 3(1+t) dot (1+t)^(-1)dif t+C_1] \
=(1+t)(3t+C_1). $
由 $u|_(t=1)=psi'(1)=6$，知 $C_1=0$，于是 $psi'(t)=3t(1+t)$.
$ psi(t)=3integral(t+t^2)dif t=3(1/2 t^2+1/3 t^3)+C_2=3/2 t^2+t^3+C_2. $
由 $psi(1)=5/2$，知 $C_2=0$，于是 $psi(t)=3/2 t^2+t^3(t>-1)$.
]
]

*变限积分与求导综合*

#ezexam.question(label: n => [1994 数一 3（1）、数二 3（1）])[
设 $cases(x=cos(t^2),y=t cos(t^2)-integral_1^(t^2)(cos u)/(2sqrt(u))dif u)$，求 $(dif y)/(dif x)$、$(dif^2 y)/(dif x^2)$ 在 $t=sqrt(pi/2)$ 时的值.
#ezexam.solution(show-number: false)[
在所求点附近 $t>0$，故 $x'= -2t sin(t^2)$，$y'=-2t^2 sin(t^2)$. 所以 $(dif y)/(dif x)=t$，$(dif^2 y)/(dif x^2)=-1/(2t sin(t^2))$，代入分别得 $sqrt(pi/2)$、$-1/sqrt(2pi)$.
]
]

