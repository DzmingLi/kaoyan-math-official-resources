#import "../../template.typ": collection
#show: collection.with(title: "无穷小量及其阶的比较分类汇编", subject: "无穷小量及其阶的比较")
#import "@preview/ezexam:0.3.1" as ezexam
#let choices = ezexam.choices.with(r-gap: 1.3em)
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)

= 历年真题：无穷小量及其阶的比较

*无穷小量的概念与运算*

#ezexam.question(label: n => [1991 数五 2（2）])[
设数列的通项为
$ x_n=cases((n^2+sqrt(n))/n&"若" n "为奇数",1/n&"若" n "为偶数"), $
则当 $n arrow infinity$ 时，$x_n$ 是
#choices([无穷大量.],[无穷小量.],[有界变量.],[无界变量.])
]

#ezexam.question(label: n => [1993 数三 2（1）])[
当 $x arrow 0$ 时，变量 $1/x^2 sin(1/x)$ 是（　）.
#choices[无穷小][无穷大][有界的，但不是无穷小量][无界的，但不是无穷大]
]

#ezexam.question(label: n => [1998 数二 2（1）])[
设数列 $x_n$ 与 $y_n$ 满足 $lim_(n -> infinity) x_n y_n=0$，则下列断言正确的是（　）.
#choices[若 $x_n$ 发散，则 $y_n$ 必发散.][若 $x_n$ 无界，则 $y_n$ 必有界.][若 $x_n$ 有界，则 $y_n$ 必为无穷小.][若 $frac(1,x_n)$ 为无穷小，则 $y_n$ 必为无穷小.]
]

#ezexam.question(label: n => [2013 数三 1])[
当 $x->0$ 时，用 $o(x)$ 表示比 $x$ 高阶的无穷小量，则下列式子中错误的是
#choices([$x dot o(x^2)=o(x^3)$.],[$o(x)dot o(x^2)=o(x^3)$.],[$o(x^2)+o(x^2)=o(x^2)$.],[$o(x)+o(x^2)=o(x^2)$.])
]

*等价、同阶与高低阶比较*

#ezexam.question(label: n => [1988 数一 2（1）、数二 2（3）])[
设 $f(x)$ 可导且 $f'(x_0)=1/2$，则 $Delta x->0$ 时，$f(x)$ 在 $x_0$ 处的微分 $dif y$ 是（　）.
#choices([与 $Delta x$ 等价的无穷小.],[与 $Delta x$ 同阶的无穷小.],[与 $Delta x$ 低阶的无穷小.],[比 $Delta x$ 高阶的无穷小.])
]

#ezexam.question(label: n => [1989 数三 2（1）、数四 2（1）])[
设 $f(x)=2^x+3^x-2$，则当 $x->0$ 时（　）.
#choices([$f(x)$ 与 $x$ 是等价无穷小量.],[$f(x)$ 与 $x$ 是同阶但非等价无穷小量.],[$f(x)$ 是比 $x$ 较高阶的无穷小量.],[$f(x)$ 是比 $x$ 较低阶的无穷小量.])
]

#ezexam.question(label: n => [1992 数二 2（1）])[
当 $x->0$ 时，$x-sin x$ 是 $x^2$ 的（　）.
#choices([低阶无穷小.],[高阶无穷小.],[等价无穷小.],[同阶但非等价的无穷小.])
]

#ezexam.question(label: n => [1992 数三 2（2）])[
当 $x->0$ 时，下列四个无穷小量中，哪一个是比其他三个更高阶的无穷小量？（　）.
#choices([$x^2$],[$1-cos x$],[$sqrt(1-x^2)-1$],[$x-tan x$])
]

#ezexam.question(label: n => [1992 数四 2（2）])[
当 $x->0$ 时，下列四个无穷小量中，哪一个是比其他三个更高阶的无穷小量？（　）.
#choices([$x^2$],[$1-cos x$],[$sqrt(1-x^2)-1$],[$x-sin x$])
]

#ezexam.question(label: n => [1993 数一 2（1）、数二 2（1）])[
设 $f(x)=integral_0^(sin x) sin(t^2)dif t$，$g(x)=x^3+x^4$，则当 $x arrow 0$ 时，$f(x)$ 是 $g(x)$ 的（　）.
#choices[等价无穷小][同阶但非等价的无穷小][高阶无穷小][低阶无穷小]
]

#ezexam.question(label: n => [1997 数三 2（1）])[
设 $f(x)=integral_0^(1-cos x)sin(t^2)dif t$，$g(x)=x^5/5+x^6/6$，则当 $x arrow 0$ 时，$f(x)$ 是 $g(x)$ 的（　）.
#choices[低阶无穷小][高阶无穷小][等价无穷小][同阶但不等价的无穷小]
]

#ezexam.question(label: n => [1997 数四 2（1）])[
设 $f(x),phi(x)$ 在点 $x=0$ 的某邻域内连续，且当 $x arrow 0$ 时，$f(x)$ 是 $phi(x)$ 的高阶无穷小，则当 $x arrow 0$ 时，$integral_0^x f(t)sin t dif t$ 是 $integral_0^x t phi(t)dif t$ 的（　）.
#choices[低阶无穷小][高阶无穷小][同阶但不等价的无穷小][等价无穷小]
]

#ezexam.question(label: n => [1999 数二 2（2）])[
设 $alpha(x)=integral_0^(5x) frac(sin t,t)dif t$，$beta(x)=integral_0^(sin x)(1+t)^(frac(1,t))dif t$，则当 $x -> 0$ 时，$alpha(x)$ 是 $beta(x)$ 的（　）.
#choices[高阶无穷小.][低阶无穷小.][同阶但不等价的无穷小.][等价无穷小.]
]

#ezexam.question(label: n => [2004 数一 7、数二 7])[
把 $x->0^+$ 时的无穷小量 $alpha=integral_0^x cos t^2 dif t,beta=integral_0^(x^2) tan sqrt(t) dif t,gamma=integral_0^sqrt(x) sin t^3 dif t$ 排列起来，使排在后面的是前一个的高阶无穷小量，则正确的排列次序是
#choices([$alpha,beta,gamma$.],[$alpha,gamma,beta$.],[$beta,alpha,gamma$.],[$beta,gamma,alpha$.])
]

#ezexam.question(label: n => [2007 数一 1、数二 1])[
当 $x->0^+$ 时，与 $sqrt(x)$ 等价的无穷小量是
#choices([$1-e^sqrt(x)$.],[$ln((1+x)/(1-sqrt(x)))$.],[$sqrt(1+sqrt(x))-1$.],[$1-cos sqrt(x)$.])
]

#ezexam.question(label: n => [2007 数三 1、数四 1])[
当 $x->0^+$ 时，与 $sqrt(x)$ 等价的无穷小量是
#choices([$1-e^sqrt(x)$.],[$ln(1+sqrt(x))$.],[$sqrt(1+sqrt(x))-1$.],[$1-cos sqrt(x)$.])
]

#ezexam.question(label: n => [2013 数二 1])[
设 $cos x-1=x sin alpha(x)$，其中 $|alpha(x)|<pi/2$，则当 $x->0$ 时，$alpha(x)$ 是
#choices([比 $x$ 高阶的无穷小量.],[比 $x$ 低阶的无穷小量.],[与 $x$ 同阶但不等价的无穷小量.],[与 $x$ 等价的无穷小量.])
]

#ezexam.question(label: n => [2016 数二 1])[
设 $alpha_1=x(cos sqrt(x)-1)$，$alpha_2=sqrt(x) ln(1+root(3,x))$，$alpha_3=root(3,x+1)-1$. 当 $x->0^+$ 时，以上三个无穷小量按照从低阶到高阶的排序是（　）.
#choices([$alpha_1,alpha_2,alpha_3$],[$alpha_2,alpha_3,alpha_1$],[$alpha_2,alpha_1,alpha_3$],[$alpha_3,alpha_2,alpha_1$])
]

*由无穷小关系确定参数*

#ezexam.question(label: n => [1991 数一 1（4）、数二 1（4）])[
已知当 $x arrow 0$ 时，$(1+a x^2)^(1/3)-1$ 与 $cos x-1$ 是等价无穷小，则常数 $a=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [1996 数一 2（4）])[
设 $f(x)$ 有连续的导数，$f(0)=0$，$f'(0)≠0$，$F(x)=integral_0^x (x^2-t^2)f(t)dif t$，且当 $x arrow 0$ 时 $F'(x)$ 与 $x^k$ 是同阶无穷小，则 $k$ 等于（　）.
#choices[1][2][3][4]
]

#ezexam.question(label: n => [1996 数三 2（1）])[
设当 $x arrow 0$ 时，$e^x-(a x^2+b x+1)$ 是比 $x^2$ 高阶的无穷小，则（　）.
#choices[$a=1/2,b=1$][$a=1,b=1$][$a=-1/2,b=1$][$a=-1,b=1$]
]

#ezexam.question(label: n => [1997 数二 2（1）])[
设 $x arrow 0$ 时，$e^(tan x)-e^x$ 与 $x^n$ 是同阶无穷小，则 $n$ 为（　）.
#choices[1][2][3][4]
]

#ezexam.question(label: n => [2001 数二 2（2）])[
设当 $x->0$ 时，$(1-cos x)ln(1+x^2)$ 是比 $x sin x^n$ 高阶的无穷小，而 $x sin x^n$ 是比 $(e^(x^2)-1)$ 高阶的无穷小，则正整数 $n$ 等于（　）.
#choices[1.][2.][3.][4.]
]

#ezexam.question(label: n => [2002 数一 3])[
设函数 $f(x)$ 在 $x=0$ 的某邻域内具有一阶连续导数，且 $f(0) != 0,f'(0) != 0$，若 $a f(h)+b f(2h)-f(0)$ 在 $h->0$ 时是比 $h$ 高阶的无穷小，试确定 $a,b$ 的值.
]

#ezexam.question(label: n => [2002 数二 10])[
设函数 $f(x)$ 在 $x=0$ 的某邻域内具有二阶连续导数，且 $f(0)!=0,f'(0)!=0,f''(0)!=0$. 证明：存在唯一的一组实数 $lambda_1,lambda_2,lambda_3$，使得当 $h->0$ 时，$lambda_1 f(h)+lambda_2 f(2h)+lambda_3 f(3h)-f(0)$ 是比 $h^2$ 高阶的无穷小.
]

#ezexam.question(label: n => [2003 数二 1（1）])[
若 $x->0$ 时，$(1-a x^2)^(1/4)-1$ 与 $x sin x$ 是等价无穷小，则 $a=$#fillin(len: 4em)[].
]

#ezexam.question(label: n => [2005 数二 5])[
当 $x->0$ 时，$alpha(x)=k x^2$ 与 $beta(x)=sqrt(1+x arcsin x)-sqrt(cos x)$ 是等价无穷小量，则 $k=$#fillin(len: 4em)[].
]

#ezexam.question(label: n => [2006 数二 15、数四 19])[
试确定常数 $A,B,C$ 的值，使得
$ e^x(1+B x+C x^2)=1+A x+o(x^3), $
其中 $o(x^3)$ 是当 $x->0$ 时比 $x^3$ 高阶的无穷小量.
]

#ezexam.question(label: n => [2009 数一 1、数二 2、数三 2])[
当 $x->0$ 时，$f(x)=x-sin(a x)$ 与 $g(x)=x^2 ln(1-b x)$ 是等价无穷小，则
#choices([$a=1,b=-1/6$.],[$a=1,b=1/6$.],[$a=-1,b=-1/6$.],[$a=-1,b=1/6$.])
]

#ezexam.question(label: n => [2011 数二 1、数三 1])[
已知当 $x->0$ 时，函数 $f(x)=3sin x-sin 3x$ 与 $c x^k$ 是等价无穷小量，则
#choices([$k=1,c=4$.],[$k=1,c=-4$.],[$k=3,c=4$.],[$k=3,c=-4$.])
]

#ezexam.question(label: n => [2012 数二 15])[
已知函数 $f(x)=(1+x)/(sin x)-1/x$，记 $a=lim_(x->0)f(x)$.

（Ⅰ）求 $a$ 的值；

（Ⅱ）若当 $x->0$ 时，$f(x)-a$ 与 $x^k$ 是同阶无穷小量，求常数 $k$ 的值.
]

#ezexam.question(label: n => [2013 数二 15、数三 15])[
当 $x->0$ 时，$1-cos x cos 2x cos 3x$ 与 $a x^n$ 为等价无穷小量，求 $n$ 与 $a$ 的值.
]

#ezexam.question(label: n => [2014 数二 1])[
当 $x->0^+$ 时，若 $ln^alpha(1+2x),(1-cos x)^(1/alpha)$ 均是比 $x$ 高阶的无穷小，则 $alpha$ 的取值范围是
#choices([$(2,+infinity)$.],[$(1,2)$.],[$(1/2,1)$.],[$(0,1/2)$.])
]

#ezexam.question(label: n => [2014 数三 3])[
设 $p(x)=a+b x+c x^2+d x^3$. 当 $x->0$ 时，若 $p(x)-tan x$ 是比 $x^3$ 高阶的无穷小，则下列选项中错误的是
#choices([$a=0$.],[$b=1$.],[$c=0$.],[$d=1/6$.])
]

#ezexam.question(label: n => [2015 数一 15、数二 15、数三 15])[
设函数 $f(x)=x+a ln(1+x)+b x sin x,g(x)=k x^3$，若 $f(x)$ 与 $g(x)$ 在 $x->0$ 时是等价无穷小，求 $a,b,k$ 的值.
]

