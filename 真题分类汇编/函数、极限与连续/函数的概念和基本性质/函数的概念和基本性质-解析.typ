#import "../../template.typ": collection
#show: collection.with(title: "函数的概念和基本性质分类汇编", subject: "函数的概念和基本性质")
#import "@preview/ezexam:0.3.1" as ezexam
#import "@preview/cetz:0.5.2"
#let choices = ezexam.choices.with(r-gap: 1.3em)
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(true)

= 历年真题：函数的概念和基本性质

*定义域、复合函数与反函数*

#ezexam.question(label: n => [1988 数一 3、数二 3])[
设 $f(x)=e^(x^2),f(phi(x))=1-x$ 且 $phi(x)>=0$，求 $phi(x)$ 及其定义域.
#ezexam.solution(show-number: false)[
分析　解出 $phi(x)$，然后确定其定义域. 解　由题设 $f(phi(x))=e^([phi(x)]^2)=1-x$，所以 $phi(x)=sqrt(ln(1-x))$. 由 $ln(1-x)>=0$ 知 $1-x>=1$，即 $x<=0$，故 $phi(x)$ 定义域为 $(-infinity,0]$. 注　要熟记常见简单函数的定义域，如 $y=log_a x,x>0$；$y=arcsin x,y=arccos x,abs(x)<=1$ 等. 已知 $f(x)$ 的定义域，求 $f(phi(x))$ 的定义域，一般采用方法：令 $u=phi(x)$，由 $u$ 的变化范围解出 $x$ 的变化范围，即为 $f(phi(x))$ 的定义域. 已知 $f(phi(x))$ 的定义域，求 $f(x)$ 的定义域，一般采用方法：令 $u=phi(x)$，由 $x$ 的变化范围解出 $u$ 的变化范围，即为 $f(x)$ 的定义域.
]
]

#ezexam.question(label: n => [1990 数一 1（3）、数二 1（5）])[
设函数 $f(x)=cases(1 & abs(x)<=1,0 & abs(x)>1)$，则 $f(f(x))=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
分析　若从 $x$ 的取值分析，显然略显复杂. 注意到 $abs(f(x))<=1$，则易得答案. 解　由题设知：$abs(f(x))<=1,x in (-infinity,+infinity)$，所以 $f(f(x))=1$.
]
]

#ezexam.question(label: n => [1992 数四 1（3）])[
已知 $f(x)=sin x,f(phi(x))=1-x^2$，则 $phi(x)=$ #fillin(len: 4em)[] 的定义域为 #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
解　$f(x)=sin x$ 的反函数为 $y=f^(-1)(x)=arcsin x$，定义域为 $[-1,1]$.
则 $phi(x)=f^(-1)(1-x^2)=arcsin(1-x^2)$，$x$ 应满足 $|1-x^2|<=1$，即 $-sqrt(2)<=x<=sqrt(2)$，故 $phi(x)$ 的定义域为 $[-sqrt(2),sqrt(2)]$.

或由 $f[phi(x)]=sin[phi(x)]=sin phi(x)=1-x^2$，得出 $phi(x)=arcsin(1-x^2)$.

注　本题考查了函数的定义域、复合函数、反函数概念，要求大家熟悉基本初等函数的性质.
]
]

*有界性*

#ezexam.question(label: n => [1987 数二 2（2）])[
函数 $f(x)=x sin x$（　）.
#choices([在 $(-infinity,+infinity)$ 内有界.],[当 $x->infinity$ 时为无穷大.],[在 $(-infinity,+infinity)$ 内无界.],[当 $x->infinity$ 时有有限极限.])
#ezexam.solution(show-number: false)[
注意到当 $n->infinity$ 时，
$ f(2n pi)=(2n pi)sin(2n pi)=0->0, $
$ f(pi/2+2n pi)=(pi/2+2n pi)dot 1->infinity, $
则 $f(x)$ 在 $(-infinity,+infinity)$ 内无界，但 $x->infinity$ 时，$f(x)$ 不是无穷大，也没有有限极限，故应选 C. 注　本题主要考查无穷大量、无穷变量、有界变量这三个基本概念. 这里应特别注意无穷大量和无界变量的关系及两者的区别，无穷大量一定是无界的，而无界变量不一定是无穷大量.
]
]

#ezexam.question(label: n => [2004 数三 7、数四 7])[
函数 $f(x)=(|x|sin(x-2))/(x(x-1)(x-2)^2)$ 在下列哪个区间内有界？
#choices([$(-1,0)$.],[$(0,1)$.],[$(1,2)$.],[$(2,3)$.])
#ezexam.solution(show-number: false)[
A.
]
]

#ezexam.question(label: n => [2008 数一 4、数二 5])[
设函数 $f(x)$ 在 $(-infinity,+infinity)$ 内单调有界，${x_n}$ 为数列，下列命题正确的是（　）.
#choices([若 ${x_n}$ 收敛，则 ${f(x_n)}$ 收敛], [若 ${x_n}$ 单调，则 ${f(x_n)}$ 收敛], [若 ${f(x_n)}$ 收敛，则 ${x_n}$ 收敛], [若 ${f(x_n)}$ 单调，则 ${x_n}$ 收敛])
#ezexam.solution(show-number: false)[
B.
]
]

*基本性质的综合判断*

#ezexam.question(label: n => [1987 数二 2（1）])[
$f(x)=abs(x sin x)e^(cos x),-infinity<x<+infinity$ 是（　）.
#choices([有界函数],[单调函数],[周期函数],[偶函数])
#ezexam.solution(show-number: false)[
由于
$ f(-x)=abs(-x sin(-x))e^(cos(-x))=abs(x sin x)e^(cos x)=f(x), $
则 $f(x)$ 为偶函数，故应选 D. 注　本题主要考查函数的四个基本性质即单调性、偶性、周期性、有界性的概念.
]
]

#ezexam.question(label: n => [1990 数三 2（1）、数四 2（1）])[
设函数 $f(x)=x dot tan x dot e^(sin x)$，则 $f(x)$ 是（　）.
#choices([偶函数.],[无界函数.],[周期函数.],[单调函数.])
#ezexam.solution(show-number: false)[
分析　本题考查函数的性质：单调性、奇偶性、周期性、有界性. 从函数的表达式依定义判断.

观察 $f(x)$ 的三个因子 $x,tan x,e^(sin x)$，易发现 $tan x$ 当 $x$ 趋于 $k pi+pi/2$ 时无界，故 $f(x)$ 无界. 选 B.

对其它选项，可以证明它们不正确.

（A）：$f(-x)=-x dot tan(-x)dot e^(sin(-x))=x tan x dot e^(-sin x)!=f(x)$，故非偶函数.

（D）：单调性的判定可举例排除：$x->(pi/2)^-$ 时，$f(x)->+infinity$；$x->(pi/2)^+$ 时，$f(x)->-infinity$；$x=0$ 时，$f'(x)=0$.

（C）：显然 $f(x)$ 非周期函数，反证如下：
假设 $f(x)$ 以 $T(T>0)$ 为周期，则 $f(x)=f(x+T)$.
令 $x=0$，则 $T tan T e^(sin T)=0$，从而 $T=k pi(k in NN)$，则 $2k pi$ 也是 $f(x)$ 的周期：
$ f(x)&=f(x+2k pi) \
=> x tan x e^(sin x)&=(x+2k pi)tan(x+2k pi)e^(sin(x+2k pi)) \
=> 2k pi dot tan x dot e^(sin x)&=0. $
显然不成立，矛盾.
]
]

#ezexam.question(label: n => [1992 数二 2（2）])[
设 $f(x)=cases(x^2 & x<=0,x^2+x & x>0)$，则（　）.
#choices([$f(-x)=cases(-x^2 & x<=0,-(x^2+x) & x>0)$],[$f(-x)=cases(-(x^2+x) & x>0,x^2 & x<=0)$],[$f(-x)=cases(x^2 & x<=0,x^2-x & x>0)$],[$f(-x)=cases(x^2-x & x<=0,x^2 & x>0)$])
#ezexam.solution(show-number: false)[
方法一　令 $y=-x$，且当 $x<=0$ 时，$y>=0$；$x>0$ 时，$y<0$. 代入 $f(x)$ 的表达式，有
$ f(-y)=cases((-y)^2 & y>=0,(-y)^2+(-y) & y<0). $
视式中的 $y$ 为 $x$，便是
$ f(-x)=cases(x^2-x & x<0,x^2 & x>=0). $
可见 D 是正确的. 方法二　直接计算. 当 $x>=0$ 时，$-x<=0$，故由 $f(x)$ 的定义，$f(-x)=(-x)^2=x^2$；而当 $x<0$ 时，$-x>0$，则 $f(-x)=(-x)^2+(-x)=x^2-x$. 即 D 是正确的. 方法三　也可利用 $f(x)$ 与 $f(-x)$ 的图象是关于 $y$ 轴对称的原理，直接从图形上判断 D 是正确的.
]
]

