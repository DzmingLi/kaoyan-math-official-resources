#import "@preview/ezexam:0.3.1" as ezexam
#import "@preview/cetz:0.5.2"
#let choices = ezexam.choices.with(r-gap: 1.3em)
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)

= 历年真题：参数方程求导

*一阶导数与微分*

#ezexam.question(label: n => [1992 数二 1（1）])[
设 $cases(x=f(t)-pi,y=f(e^(3t)-1))$，其中 $f$ 可导，且 $f'(0)!=0$，则 $(dif y)/(dif x)|_(t=0)=$ #fillin(len: 4em)[].
]

*高阶导数*

#ezexam.question(label: n => [1987 数二 3])[
设 $cases(x=5(t-sin t),y=5(1-cos t))$，求 $(dif y)/(dif x),(dif^2 y)/(dif x^2)$.
]

#ezexam.question(label: n => [1989 数二 3（4）])[
已知 $cases(x=ln(1+t^2),y=arctan t)$，求 $(dif y)/(dif x)$ 及 $(dif^2 y)/(dif x^2)$.
]

#ezexam.question(label: n => [1991 数三 3（1）])[
设 $cases(x=t cos t,y=t sin t)$，求 $(dif^2 y)/(dif x^2)$.
]

#ezexam.question(label: n => [2010 数二 17])[
设函数 $y=f(x)$ 由参数方程 $cases(x=2t+t^2,y=psi(t))(t>-1)$ 所确定，其中 $psi(t)$ 具有2阶导数，且 $psi(1)=5/2,psi'(1)=6$. 已知 $(dif^2 y)/(dif x^2)=3/(4(1+t))$，求函数 $psi(t)$.
]

*变限积分与求导综合*

#ezexam.question(label: n => [1994 数一 3（1）、数二 3（1）])[
设 $cases(x=cos(t^2),y=t cos(t^2)-integral_1^(t^2)(cos u)/(2sqrt(u))dif u)$，求 $(dif y)/(dif x)$、$(dif^2 y)/(dif x^2)$ 在 $t=sqrt(pi/2)$ 时的值.
]

