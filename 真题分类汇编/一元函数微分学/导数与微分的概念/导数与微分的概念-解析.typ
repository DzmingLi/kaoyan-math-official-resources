#import "../../template.typ": collection
#show: collection.with(title: "导数与微分的概念分类汇编", subject: "导数与微分的概念")
#import "@preview/ezexam:0.3.1" as ezexam
#import "@preview/cetz:0.5.2"
#let choices = ezexam.choices.with(r-gap: 1.3em)
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(true)

= 历年真题：导数与微分的概念

*导数定义与抽象函数*

#ezexam.question(label: n => [1989 数一 1（1）])[
已知 $f'(3)=2$，则 $lim_(h->0)(f(3-h)-f(3))/(2h)=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
解　$ "原式"=-1/2 lim_(h->0)(f(3-h)-f(3))/(-h)=-1/2 f'(3)=-1. $
]
]

#ezexam.question(label: n => [1994 数四 1（2）、数五 1（2）])[
已知 $f'(x_0)=-1$，则 $lim_(x arrow 0)x/(f(x_0-2x)-f(x_0-x))=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
由可导性，分母 $=-x f'(x_0)+o(x)=x+o(x)$，故极限为 $1$.
]
]

#ezexam.question(label: n => [2003 数三 2（1）])[
设 $f(x)$ 为不恒等于零的奇函数，且 $f'(0)$ 存在，则函数 $g(x)=f(x)/x$（　）.
#choices[在 $x=0$ 处左极限不存在.][有跳跃间断点 $x=0$.][在 $x=0$ 处右极限不存在.][有可去间断点 $x=0$.]
#ezexam.solution(show-number: false)[
D.
]
]

*连续性与可导性*

#ezexam.question(label: n => [1987 数二 2（3）])[
设 $f(x)$ 在 $x=a$ 处可导，则 $lim_(x->0)(f(a+x)-f(a-x))/x$ 等于（　）.
#choices([$f'(a)$],[$2f'(a)$],[$0$],[$f'(2a)$])
#ezexam.solution(show-number: false)[
$ "原式"=lim_(x->0)([f(a+x)-f(a)]-[f(a-x)-f(a)])/x
=f'(a)+f'(a)=2f'(a). $
]
]

#ezexam.question(label: n => [1989 数二 2（6）])[
设 $f(x)$ 在 $x=a$ 的某个邻域内有定义，则 $f(x)$ 在 $x=a$ 处可导的一个充分条件是（　）.
#choices([$lim_(h->infinity)h[f(a+1/h)-f(a)]$ 存在.],[$lim_(h->0)(f(a+2h)-f(a+h))/h$ 存在.],[$lim_(h->0)(f(a+h)-f(a-h))/(2h)$ 存在.],[$lim_(h->0)(f(a)-f(a-h))/h$ 存在.])
#ezexam.solution(show-number: false)[
观察 D，与导数定义最接近，事实上
$ lim_(h->0)(f(a)-f(a-h))/h=lim_(-h->0)(f(a-h)-f(a))/(-h)=f'(a), $
故选 D.

A 只能保证 $f'_+(a)$ 存在. B 和 C 可用如下反例说明错误：

设 $f(x)=cases(1 & x!=a,0 & x=a)$，则 $f(x)$ 在 $x=a$ 间断，因此 $f(x)$ 在 $x=a$ 不可导，但 B 和 C 中的极限均存在.
]
]

#ezexam.question(label: n => [1990 数三 2（2）、数四 2（2）])[
设函数 $f(x)$ 对任意 $x$ 均满足等式 $f(1+x)=a f(x)$，且有 $f'(0)=b$，其中 $a,b$ 为非零常数，则（　）.
#choices([$f(x)$ 在 $x=1$ 处不可导.],[$f(x)$ 在 $x=1$ 处可导，且 $f'(1)=a$.],[$f(x)$ 在 $x=1$ 处可导，且 $f'(1)=b$.],[$f(x)$ 在 $x=1$ 处可导，且 $f'(1)=a b$.])
#ezexam.solution(show-number: false)[
解　判断函数在一点可导性，直接应用导数定义即可.
$ f'(1)&=lim_(Delta x->0)(f(1+Delta x)-f(1))/(Delta x) \
&=lim_(Delta x->0)(a f(Delta x)-a f(0))/(Delta x) \
&=a f'(0)=a b. $
选 D.

注　对于抽象函数，不知道其在某点可导，只能用定义计算函数在该点的导数. 本题仅假定 $f(x)$ 在 $x=0$ 可导，在 $x=1$ 和其它点是否可导并不知道. 因而下面的解法是错误的：
$f(1+x)=a f(x)=>f'(1+x)=a f'(x)$，令 $x=0$ 有 $f'(1)=a f'(0)=a b$.
]
]

#ezexam.question(label: n => [1995 数一 2（3）、数二 2（3）])[
设 $f(x)$ 可导，$F(x)=f(x)(1+abs(sin x))$，则 $f(0)=0$ 是 $F(x)$ 在 $x=0$ 处可导的（　）.
#choices[充分必要条件][充分条件但非必要条件][必要条件但非充分条件][既非充分条件又非必要条件]
#ezexam.solution(show-number: false)[
A.$F$ 在0处右、左导数分别为 $f'(0)+f(0)$、$f'(0)-f(0)$，二者相等当且仅当 $f(0)=0$.
]
]

#ezexam.question(label: n => [1995 数三 2（5）])[
设 $f(x)$ 可导，$F(x)=f(x)(1+abs(sin x))$. 若使 $F(x)$ 在 $x=0$ 处可导，则必有（　）.
#choices[$f(0)=0$][$f'(0)=0$][$f(0)+f'(0)=0$][$f(0)-f'(0)=0$]
#ezexam.solution(show-number: false)[
A. 左右导数为 $f'(0)±f(0)$，相等须有 $f(0)=0$.
]
]

#ezexam.question(label: n => [1996 数三 2（2）])[
设函数 $f(x)$ 在 $(-delta,delta)$ 内有定义，且恒有 $abs(f(x))<=x^2$，则 $x=0$ 必是 $f(x)$ 的（　）.
#choices[间断点][连续而不可导的点][可导的点，且 $f'(0)=0$][可导的点，且 $f'(0)≠0$]
#ezexam.solution(show-number: false)[
C.$f(0)=0$，且 $abs((f(x)-f(0))/x)<=abs(x) arrow 0$，所以 $f'(0)=0$.
]
]

#ezexam.question(label: n => [1998 数一 2（2）])[
函数 $f(x)=(x^2-x-2)abs(x^3-x)$ 不可导点的个数是（　）.
#choices[3.][2.][1.][0.]
#ezexam.solution(show-number: false)[
B.
]
]

#ezexam.question(label: n => [1998 数二 2（2）])[
函数 $f(x)=(x^2-x-2)|x^3-x|$ 的不可导点的个数为（　）.
#choices[0.][1.][2.][3.]
#ezexam.solution(show-number: false)[
C.
]
]

#ezexam.question(label: n => [2000 数三 2（2）])[
设函数 $f(x)$ 在点 $x=a$ 处可导，则函数 $|f(x)|$ 在点 $x=a$ 处不可导的充分条件是（　）.
#choices[$f(a)=0$ 且 $f'(a)=0$.][$f(a)=0$ 且 $f'(a)!=0$.][$f(a)>0$ 且 $f'(a)>0$.][$f(a)<0$ 且 $f'(a)<0$.]
#ezexam.solution(show-number: false)[
B.
]
]

#ezexam.question(label: n => [2001 数一 2（3）])[
设 $f(0)=0$，则 $f(x)$ 在点 $x=0$ 可导的充要条件为（　）.
#choices[$lim_(h->0) frac(1,h^2)f(1-cos h)$ 存在.][$lim_(h->0) frac(1,h)f(1-e^h)$ 存在.][$lim_(h->0) frac(1,h^2)f(h-sin h)$ 存在.][$lim_(h->0) frac(1,h)[f(2h)-f(h)]$ 存在.]
#ezexam.solution(show-number: false)[
B.
]
]

#ezexam.question(label: n => [2002 数三 2（1）、数四 2（1）])[
设函数 $f(x)$ 在闭区间 $[a,b]$ 上有定义，在开区间 $(a,b)$ 内可导，则（　）.
#choices[当 $f(a)f(b)<0$ 时，存在 $xi in (a,b)$，使 $f(xi)=0$.][对任何 $xi in (a,b)$，有 $lim_(x->xi) [f(x)-f(xi)]=0$.][当 $f(a)=f(b)$ 时，存在 $xi in (a,b)$，使 $f'(xi)=0$.][存在 $xi in (a,b)$，使 $f(b)-f(a)=f'(xi)(b-a)$.]
#ezexam.solution(show-number: false)[
B.
]
]

#ezexam.question(label: n => [2003 数四 2（2）])[
设函数 $f(x)=|x^3-1| phi(x)$，其中 $phi(x)$ 在 $x=1$ 处连续，则 $phi(1)=0$ 是 $f(x)$ 在 $x=1$ 处可导的（　）.
#choices[充分必要条件.][必要但非充分条件.][充分但非必要条件.][既非充分也非必要条件.]
#ezexam.solution(show-number: false)[
A.
]
]

#ezexam.question(label: n => [2004 数一 8、数二 10])[
设函数 $f(x)$ 连续，且 $f'(0)>0$，则存在 $delta>0$，使得
#choices([$f(x)$ 在 $(0,delta)$ 内单调增加.],[$f(x)$ 在 $(-delta,0)$ 内单调减少.],[对任意的 $x in (0,delta)$，有 $f(x)>f(0)$.],[对任意的 $x in (-delta,0)$，有 $f(x)>f(0)$.])
#ezexam.solution(show-number: false)[
C.
]
]

#ezexam.question(label: n => [2004 数二 16])[
设函数 $f(x)$ 在 $(-infinity,+infinity)$ 内有定义，在区间 $[0,2]$ 上 $f(x)=x(x^2-4)$，若对任意的 $x$ 都满足 $f(x)=k f(x+2)$，其中 $k$ 为常数.

（Ⅰ）写出 $f(x)$ 在 $[-2,0)$ 上的表达式；

（Ⅱ）问 $k$ 为何值时，$f(x)$ 在 $x=0$ 处可导.
#ezexam.solution(show-number: false)[
解　（Ⅰ）当 $-2<=x<0$，即 $0<=x+2<2$ 时，
$ f(x)=k f(x+2)=k(x+2)[(x+2)^2-4]=k x(x+2)(x+4). $
（Ⅱ）由题设知 $f(0)=0$.
$ f'_+(0)=lim_(x->0^+)(f(x)-f(0))/(x-0)=lim_(x->0^+)(x(x^2-4))/x=-4, \
f'_-(0)=lim_(x->0^-)(f(x)-f(0))/(x-0)=lim_(x->0^-)(k x(x+2)(x+4))/x=8k. $
令 $f'_-(0)=f'_+(0)$，得 $k=-1/2$，即当 $k=-1/2$ 时，$f(x)$ 在 $x=0$ 处可导.
]
]

#ezexam.question(label: n => [2005 数一 7、数二 7])[
设函数 $f(x)=lim_(n->infinity) root(n,1+|x|^(3n))$，则 $f(x)$ 在 $(-infinity,+infinity)$ 内
#choices[处处可导.][恰有一个不可导点.][恰有两个不可导点.][至少有三个不可导点.]
#ezexam.solution(show-number: false)[
C.
]
]

#ezexam.question(label: n => [2006 数三 8、数四 8])[
设函数 $f(x)$ 在 $x=0$ 处连续，且 $lim_(h->0)f(h^2)/h^2=1$，则
#choices([$f(0)=0$ 且 $f'_-(0)$ 存在.],[$f(0)=1$ 且 $f'_-(0)$ 存在.],[$f(0)=0$ 且 $f'_+(0)$ 存在.],[$f(0)=1$ 且 $f'_+(0)$ 存在.])
#ezexam.solution(show-number: false)[
C.
]
]

#ezexam.question(label: n => [2007 数一 4、数二 4、数三 2、数四 2])[
设函数 $f(x)$ 在 $x=0$ 处连续，下列命题错误的是
#choices([若 $lim_(x->0)f(x)/x$ 存在，则 $f(0)=0$.],[若 $lim_(x->0)(f(x)+f(-x))/x$ 存在，则 $f(0)=0$.],[若 $lim_(x->0)f(x)/x$ 存在，则 $f'(0)$ 存在.],[若 $lim_(x->0)(f(x)-f(-x))/x$ 存在，则 $f'(0)$ 存在.])
#ezexam.solution(show-number: false)[
D.
]
]

#ezexam.question(label: n => [2009 数一 18（Ⅱ）、数二 21（Ⅱ）、数三 18（Ⅱ）])[
证明：若函数 $f(x)$ 在 $x=0$ 处连续，在 $(0,delta)(delta>0)$ 内可导，且 $lim_(x->0^+)f'(x)=A$，则 $f'_+(0)$ 存在，且 $f'_+(0)=A$.
#ezexam.solution(show-number: false)[
对于任意的 $t in(0,delta)$，函数 $f(x)$ 在 $[0,t]$ 上连续，在 $(0,t)$ 内可导，由右导数定义及拉格朗日中值定理可得
$ f'_+(0)=lim_(t->0^+)(f(t)-f(0))/(t-0) \
=lim_(t->0^+)(f'(xi)t)/t=lim_(t->0^+)f'(xi), $
其中 $xi in(0,t)$. 由于 $lim_(t->0^+)f'(t)=A$，且当 $t->0^+$ 时，$xi->0^+$，所以 $lim_(t->0^+)f'(xi)=A$，故 $f'_+(0)$ 存在，且 $f'_+(0)=A$.
]
]

#ezexam.question(label: n => [2011 数二 2、数三 2])[
设函数 $f(x)$ 在 $x=0$ 处可导，且 $f(0)=0$，则 $lim_(x->0)(x^2 f(x)-2f(x^3))/x^3=$
#choices([$-2f'(0)$.],[$-f'(0)$.],[$f'(0)$.],[0.])
#ezexam.solution(show-number: false)[
B.
]
]

#ezexam.question(label: n => [2015 数一 18、数三 19])[
（Ⅰ）设函数 $u(x),v(x)$ 可导，利用导数定义证明 $[u(x)v(x)]'=u'(x)v(x)+u(x)v'(x)$；

（Ⅱ）设函数 $u_1(x),u_2(x),dots,u_n(x)$ 可导，$f(x)=u_1(x)u_2(x)dots u_n(x)$，写出 $f(x)$ 的求导公式.
#ezexam.solution(show-number: false)[
（Ⅰ）因为函数 $u(x),v(x)$ 可导，所以
$ lim_(Delta x->0)(u(x+Delta x)-u(x))/(Delta x)=u'(x), $
$ lim_(Delta x->0)(v(x+Delta x)-v(x))/(Delta x)=v'(x), $
且 $lim_(Delta x->0)v(x+Delta x)=v(x)$. 从而
$ [u(x)v(x)]'&=lim_(Delta x->0)(u(x+Delta x)v(x+Delta x)-u(x)v(x))/(Delta x) \
&=lim_(Delta x->0)[(u(x+Delta x)-u(x))/(Delta x)v(x+Delta x) \
&quad+u(x)(v(x+Delta x)-v(x))/(Delta x)] \
&=lim_(Delta x->0)(u(x+Delta x)-u(x))/(Delta x) dot lim_(Delta x->0)v(x+Delta x) \
&quad+u(x)lim_(Delta x->0)(v(x+Delta x)-v(x))/(Delta x) \
&=u'(x)v(x)+u(x)v'(x). $
（Ⅱ）$f'(x)=u'_1(x)u_2(x)dots u_n(x)+u_1(x)u'_2(x)dots u_n(x)+dots+u_1(x)u_2(x)dots u'_n(x)$.
]
]

#ezexam.question(label: n => [2018 数一 1、数二 2、数三 1])[
下列函数中，在 $x=0$ 处不可导的是（　）.
#choices([$f(x)=abs(x) sin abs(x)$], [$f(x)=abs(x) sin sqrt(abs(x))$], [$f(x)=cos abs(x)$], [$f(x)=cos sqrt(abs(x))$])
#ezexam.solution(show-number: false)[
D.
]
]

*左右导数与分段函数*

#ezexam.question(label: n => [1988 数四 3])[
若 $f(x)=cases(x^2 & x<=1,a x+b & x>1)$ 处处可导，求 $a,b$ 的值.
#ezexam.solution(show-number: false)[
分析　$f(x)$ 是分段函数. 当 $x>1$ 和 $x<=1$ 时，$f(x)$ 是初等函数，必可导，因此只需考查函数在分段点 $x=1$ 处的可导性. 由可导必连续，因此可由连续性和可导性列出两个关系式，求得参数 $a,b$ 的值.

解　$f(x)$ 在 $x=1$ 可导，则必然连续，因此 $lim_(x->1^+)f(x)=f(1)$，得 $a+b=1$.

$f(x)$ 在 $x=1$ 可导，则左、右导数相等，因此 $f'_+(1)=f'_-(1)$.

而
$ f'_+(1)&=lim_(x->1^+)(f(x)-f(1))/(x-1) \
&=lim_(x->1^+)(a x+b-1)/(x-1) \
&=lim_(x->1^+)(a x+b-(a+b))/(x-1)=a, $
$ f'_-(1)=lim_(x->1^-)(f(x)-f(1))/(x-1)=lim_(x->1^-)(x^2-1)/(x-1)=2. $
综上可得 $a=2,b=-1$.

注　本题考查函数可导的概念. 利用了两个重要性质：函数在某点可导必连续；函数在某点可导，则在该点处左、右导数相等. 注意求左、右导数的时候，要利用导数的定义.
]
]

#ezexam.question(label: n => [1990 数二 2（5）])[
设 $F(x)=cases(f(x)/x & x!=0,f(0) & x=0)$，其中 $f(x)$ 在 $x=0$ 处可导，$f'(0)!=0,f(0)=0$，则 $x=0$ 是 $F(x)$ 的（　）.
#choices([连续点.],[第一类间断点.],[第二类间断点.],[连续点或间断点不能由此确定.])
#ezexam.solution(show-number: false)[
$ lim_(x->0)F(x)=lim_(x->0)f(x)/x=lim_(x->0)(f(x)-f(0))/x $
$ =f'(0)!=0=f(0)=F(0). $
极限存在但不等于函数值，第一类（可去性）间断点. 应选 B.
]
]

#ezexam.question(label: n => [1990 数三 1（2）、数四 1（2）])[
设函数 $f(x)$ 有连续的导函数，$f(0)=0$ 且 $f'(0)=b$，若函数
$ F(x)=cases((f(x)+a sin x)/x & x!=0,A & x=0) $
在 $x=0$ 处连续，则常数 $A=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
分析　显然根据连续性的定义求解.

$F(x)$ 在 $x=0$ 连续，即 $lim_(x->0)F(x)=F(0)$，即 $lim_(x->0)(f(x)+a sin x)/x=A$.
而
$ lim_(x->0)(f(x)+a sin x)/x=lim_(x->0)(f'(x)+a cos x)=f'(0)+a=b+a, $
即 $A=a+b$.

注　连续性问题实质上为极限问题，极限的求法一定要熟练！
]
]

#ezexam.question(label: n => [1993 数三 2（2）])[
设 $f(x)=cases(abs(x^2-1)/(x-1) & x≠1, 2 & x=1)$，则在点 $x=1$ 处函数 $f(x)$（　）.
#choices[不连续][连续，但不可导][可导，但导数不连续][可导，且导数连续]
#ezexam.solution(show-number: false)[
A.$x$ 在1附近时，左侧 $f(x)=-(x+1)$，右侧 $f(x)=x+1$，故左右极限分别为 $-2$ 与2.
]
]

#ezexam.question(label: n => [1993 数四 2（1）、数五 2（1）])[
设函数 $f(x)=cases(sqrt(abs(x))sin(1/x^2) & x≠0, 0 & x=0)$，则 $f(x)$ 在点 $x=0$ 处（　）.
#choices[极限不存在][极限存在但不连续][连续但不可导][可导]
#ezexam.solution(show-number: false)[
C. 由 $abs(f(x))<=sqrt(abs(x))$ 知 $f(x) arrow 0=f(0)$，所以连续；差商 $f(x)/x$ 无极限，所以不可导.
]
]

#ezexam.question(label: n => [1994 数三 2（2）])[
设 $f(x)=cases(2/3 x^3 & quad x<=1,x^2 & quad x>1)$，则 $f(x)$ 在 $x=1$ 处（　）.
#choices[左、右导数都存在][左导数存在，但右导数不存在][左导数不存在，但右导数存在][左、右导数都不存在]
#ezexam.solution(show-number: false)[
B. 左导数为 $2$；右侧函数极限为 $1≠f(1)=2/3$，故右导数不存在.
]
]

#ezexam.question(label: n => [1995 数三 3（4）])[
设 $f(x)=cases(x arctan(1/x^2) & quad x≠0,0 & quad x=0)$，讨论 $f'(x)$ 在 $x=0$ 处的连续性.
#ezexam.solution(show-number: false)[
由定义 $f'(0)=lim_(x arrow 0)arctan(1/x^2)=pi/2$. 当 $x≠0$ 时 $f'(x)=arctan(1/x^2)-2x^2/(1+x^4)$，其极限也为 $pi/2$，故连续.
]
]

#ezexam.question(label: n => [1995 数四 3、数五 3])[
设 $f(x)=cases(2(1-cos x)/x^2 & quad x<0,1 & quad x=0,1/x integral_0^x cos(t^2)dif t & quad x>0)$. 试讨论 $f(x)$ 在 $x=0$ 处的连续性和可导性.
#ezexam.solution(show-number: false)[
左极限由等价无穷小得1，右极限由洛必达法则得1，因此连续. 左侧 $f(x)=1-x^2/12+o(x^2)$，右侧 $f(x)=1-x^4/10+o(x^4)$，两侧差商均趋于0，故可导，且 $f'(0)=0$.
]
]

#ezexam.question(label: n => [1999 数一 2（2）、数二 2（1）])[
设 $f(x)=cases(frac(1-cos x,sqrt(x)) & quad x>0,x^2 g(x) & quad x<=0)$，其中 $g(x)$ 是有界函数，则 $f(x)$ 在 $x=0$ 处（　）.
#choices[极限不存在.][极限存在，但不连续.][连续，但不可导.][可导.]
#ezexam.solution(show-number: false)[
D.
]
]

#ezexam.question(label: n => [2003 数三 1（1）])[
设 $f(x)=cases(x^lambda cos(1/x) & x != 0,0 & x=0)$，其导函数在 $x=0$ 处连续，则 $lambda$ 取值范围是#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$lambda>2$.
]
]

#ezexam.question(label: n => [2004 数四 10])[
设 $f(x)=cases(1 & x>0,0 & x=0,-1 & x<0),F(x)=integral_0^x f(t)dif t$，则
#choices([$F(x)$ 在 $x=0$ 点不连续.],[$F(x)$ 在 $(-infinity,+infinity)$ 内连续，在 $x=0$ 点不可导.],[$F(x)$ 在 $(-infinity,+infinity)$ 内可导，且满足 $F'(x)=f(x)$.],[$F(x)$ 在 $(-infinity,+infinity)$ 内可导，但不一定满足 $F'(x)=f(x)$.])
#ezexam.solution(show-number: false)[
B.
]
]

#ezexam.question(label: n => [2013 数二 3])[
设函数 $f(x)=cases(sin x & 0<=x<pi,2 & pi<=x<=2pi)$，$F(x)=integral_0^x f(t)dif t$，则
#choices([$x=pi$ 是函数 $F(x)$ 的跳跃间断点.],[$x=pi$ 是函数 $F(x)$ 的可去间断点.],[$F(x)$ 在 $x=pi$ 处连续但不可导.],[$F(x)$ 在 $x=pi$ 处可导.])
#ezexam.solution(show-number: false)[
C.
]
]

#ezexam.question(label: n => [2015 数二 3])[
设函数 $f(x)=cases(x^alpha cos(1/x^beta) & x>0,0 & x<=0)$（$alpha>0,beta>0$）. 若 $f'(x)$ 在 $x=0$ 处连续，则
#choices([$alpha-beta>1$.], [$0<alpha-beta<=1$.], [$alpha-beta>2$.], [$0<alpha-beta<=2$.])
#ezexam.solution(show-number: false)[
A.
]
]

#ezexam.question(label: n => [2016 数一 4])[
已知函数 $f(x)=cases(x & x<=0,1/n & 1/(n+1)<x<=1/n quad (n=1,2,dots))$，则
#choices([$x=0$ 是 $f(x)$ 的第一类间断点.], [$x=0$ 是 $f(x)$ 的第二类间断点.], [$f(x)$ 在 $x=0$ 处连续但不可导.], [$f(x)$ 在 $x=0$ 处可导.])
#ezexam.solution(show-number: false)[
D.
]
]

*微分的概念*

#ezexam.question(label: n => [1988 数一 2（1）、数二 2（3）])[
设 $f(x)$ 可导且 $f'(x_0)=1/2$，则 $Delta x->0$ 时，$f(x)$ 在 $x_0$ 处的微分 $dif y$ 是（　）.
#choices([与 $Delta x$ 等价的无穷小.],[与 $Delta x$ 同阶的无穷小.],[与 $Delta x$ 低阶的无穷小.],[比 $Delta x$ 高阶的无穷小.])
#ezexam.solution(show-number: false)[
因为
$ dif y=f'(x_0)Delta x=1/2 Delta x, quad lim_(Delta x->0)(dif y)/(Delta x)=1/2. $
可见，当 $Delta x->0$ 时，$f(x)$ 在 $x_0$ 处的微分 $dif y$ 是与 $Delta x$ 同阶的无穷小，选 B. 注　要理解微分的定义：设 $Delta x$ 为自变量在 $x$ 点处的改变量，若函数 $y=f(x)$ 的相应改变量 $Delta y$ 可分解为
$ Delta y=A Delta x+o(Delta x) quad (Delta x->0), $
其中 $A$ 与 $Delta x$ 无关，且 $o(Delta x)$ 是比 $Delta x$ 高阶的无穷小，则 $f(x)$ 在 $x$ 处可微. $A Delta x$ 就是 $f(x)$ 在点 $x$ 处的微分，即
$ dif y=dif f(x)=A Delta x=A dif x=f'(x)dif x=f'(x)Delta x. $
]
]

*高阶导数与综合判断*

#ezexam.question(label: n => [1992 数一 2（4）])[
设 $f(x)=3x^3+x^2 abs(x)$，则使 $f^((n))(0)$ 存在的最高阶数 $n$ 为（　）.
#choices([0],[1],[2],[3])
#ezexam.solution(show-number: false)[
解　用逐阶计算法验，记 $f_1(x)=3x^3$，显见 $f_1^(n)(0)$ 都存在，再记 $f_2(x)=x^2|x|$，则由求导公式和定义，有
$ f_2(x)=cases(x^3 & x>=0,-x^3 & x<0), $
$ f'_2(x)=cases(3x^2 & x>0,-3x^2 & x<0,0 & x=0), $
$ f''_2(x)=cases(6x & x>0,-6x & x<0,0 & x=0)=6|x|. $
有 $f'_2(0)=f''_2(0)=0$.

由 $|x|$ 在 $x=0$ 不可导，知 $f_2^((3))(0)$ 不存在，即 $n=2$. 选 C.
]
]

#ezexam.question(label: n => [1996 数四 3、数五 3])[
设 $f(x)=cases((g(x)-e^(-x))/x & quad x≠0,0 & quad x=0)$，其中 $g(x)$ 有二阶连续导数，且 $g(0)=1$、$g'(0)=-1$.

（1）求 $f'(x)$；

（2）讨论 $f'(x)$ 在 $(-infinity,+infinity)$ 上的连续性.
#ezexam.solution(show-number: false)[
（1）$x≠0$ 时按商法则求导；0处按定义并用洛必达法则，得
$ f'(x)=cases((x g'(x)-g(x)+(x+1)e^(-x))/x^2 & quad x≠0,(g''(0)-1)/2 & quad x=0). $
（2）$x≠0$ 处显然连续；在0处，洛必达法则给出 $lim_(x arrow 0)f'(x)=lim_(x arrow 0)(g''(x)-e^(-x))/2=(g''(0)-1)/2=f'(0)$. 所以 $f'$ 处处连续.
]
]

#ezexam.question(label: n => [2006 数一 7、数二 7、数三 7、数四 7])[
设函数 $y=f(x)$ 具有二阶导数，且 $f'(x)>0,f''(x)>0$，$Delta x$ 为自变量 $x$ 在点 $x_0$ 处的增量，$Delta y$ 与 $dif y$ 分别为 $f(x)$ 在点 $x_0$ 处对应的增量与微分，若 $Delta x>0$，则
#choices([$0<dif y<Delta y$.],[$0<Delta y<dif y$.],[$Delta y<dif y<0$.],[$dif y<Delta y<0$.])
#ezexam.solution(show-number: false)[
A.
]
]

