#import "@preview/ezexam:0.3.1" as ezexam
#import "@preview/cetz:0.5.2"
#let choices = ezexam.choices.with(r-gap: 1.3em)
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)

= 历年真题：函数的概念和基本性质

*定义域、复合函数与反函数*

#ezexam.question(label: n => [1988 数一 3、数二 3])[
设 $f(x)=e^(x^2),f(phi(x))=1-x$ 且 $phi(x)>=0$，求 $phi(x)$ 及其定义域.
]

#ezexam.question(label: n => [1990 数一 1（3）、数二 1（5）])[
设函数 $f(x)=cases(1 & abs(x)<=1,0 & abs(x)>1)$，则 $f(f(x))=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [1992 数四 1（3）])[
已知 $f(x)=sin x,f(phi(x))=1-x^2$，则 $phi(x)=$ #fillin(len: 4em)[] 的定义域为 #fillin(len: 4em)[].
]

*有界性*

#ezexam.question(label: n => [1987 数二 2（2）])[
函数 $f(x)=x sin x$（　）.
#choices([在 $(-infinity,+infinity)$ 内有界.],[当 $x->infinity$ 时为无穷大.],[在 $(-infinity,+infinity)$ 内无界.],[当 $x->infinity$ 时有有限极限.])
]

#ezexam.question(label: n => [2004 数三 7、数四 7])[
函数 $f(x)=(|x|sin(x-2))/(x(x-1)(x-2)^2)$ 在下列哪个区间内有界？
#choices([$(-1,0)$.],[$(0,1)$.],[$(1,2)$.],[$(2,3)$.])
]

#ezexam.question(label: n => [2008 数一 4、数二 5])[
设函数 $f(x)$ 在 $(-infinity,+infinity)$ 内单调有界，${x_n}$ 为数列，下列命题正确的是（　）.
#choices([若 ${x_n}$ 收敛，则 ${f(x_n)}$ 收敛], [若 ${x_n}$ 单调，则 ${f(x_n)}$ 收敛], [若 ${f(x_n)}$ 收敛，则 ${x_n}$ 收敛], [若 ${f(x_n)}$ 单调，则 ${x_n}$ 收敛])
]

*基本性质的综合判断*

#ezexam.question(label: n => [1987 数二 2（1）])[
$f(x)=abs(x sin x)e^(cos x),-infinity<x<+infinity$ 是（　）.
#choices([有界函数],[单调函数],[周期函数],[偶函数])
]

#ezexam.question(label: n => [1990 数三 2（1）、数四 2（1）])[
设函数 $f(x)=x dot tan x dot e^(sin x)$，则 $f(x)$ 是（　）.
#choices([偶函数.],[无界函数.],[周期函数.],[单调函数.])
]

#ezexam.question(label: n => [1992 数二 2（2）])[
设 $f(x)=cases(x^2 & x<=0,x^2+x & x>0)$，则（　）.
#choices([$f(-x)=cases(-x^2 & x<=0,-(x^2+x) & x>0)$],[$f(-x)=cases(-(x^2+x) & x>0,x^2 & x<=0)$],[$f(-x)=cases(x^2 & x<=0,x^2-x & x>0)$],[$f(-x)=cases(x^2-x & x<=0,x^2 & x>0)$])
]

