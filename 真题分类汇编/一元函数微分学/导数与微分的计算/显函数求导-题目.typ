#import "../../template.typ": collection
#show: collection.with(title: "显函数求导分类汇编", subject: "显函数求导")
#import "@preview/ezexam:0.3.1" as ezexam
#import "@preview/cetz:0.5.2"
#let choices = ezexam.choices.with(r-gap: 1.3em)
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)

= 历年真题：显函数求导

*一阶导数与微分*

#ezexam.question(label: n => [1987 数三 3、数四 3])[
设 $y=ln (sqrt(1+x^2)-1)/(sqrt(1+x^2)+1)$，求 $y'$.
]

#ezexam.question(label: n => [1988 数一 1（1）、数二 1（2）])[
若 $f(t)=lim_(x->infinity)t(1+1/x)^(2t x)$，则 $f'(t)=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [1989 数二 1（4）])[
设 $f(x)=x(x+1)(x+2)dots(x+n)$，则 $f'(0)=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [1989 数二 3（1）])[
已知 $y=arcsin(e^(-sqrt(x)))$，求 $y'$.
]

#ezexam.question(label: n => [1990 数二 1（2）])[
设 $y=e^(tan(1/x)) dot sin(1/x)$，则 $y'=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [1991 数三 1（1）])[
设 $y=ln(1+3^(-x))$，则 $dif y=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [1992 数四 1（1）])[
设 $f(t)=lim_(x->infinity)t((x+t)/(x-t))^x$，则 $f'(t)=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [1993 数四 1（2）])[
已知 $y=f((3x-2)/(3x+2))$，$f'(x)=arctan(x^2)$，则 $y'|_(x=0)=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [1993 数五 1（2）])[
已知 $y=f((3x-2)/(3x+2))$，$f'(x)=arcsin(x^2)$，则 $y'|_(x=0)=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [1995 数MBA 3])[
设 $y=ln(e^x+sqrt(1+e^(2x)))$，求 $y'$.
]

#ezexam.question(label: n => [1995 数三 1（1）])[
设 $y=cos(x^2)sin^2(1/x)$，则 $y'=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [1996 数三 1（1）])[
设 $y=(x+e^(-x/2))^(2/3)$，则 $y'|_(x=0)=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [2004 数四 2])[
设 $y=arctan e^x-ln sqrt(e^(2x)/(e^(2x)+1))$，则 $lr((dif y)/(dif x))|_(x=1)=$#fillin(len: 4em)[].
]

#ezexam.question(label: n => [2006 数二 9])[
设函数 $g(x)$ 可微，$h(x)=e^(1+g(x)),h'(1)=1,g'(1)=2$，则 $g(1)$ 等于
#choices([$ln 3-1$.],[$-ln 3-1$.],[$-ln 2-1$.],[$ln 2-1$.])
]

#ezexam.question(label: n => [2008 数二 1])[
设函数 $f(x)=x^2(x-1)(x-2)$，则 $f'(x)$ 的零点个数为（　）.
#choices([0], [1], [2], [3])
]

#ezexam.question(label: n => [2011 数三 9])[
设 $f(x)=lim_(t->0)x(1+3t)^(x/t)$，则 $f'(x)=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [2012 数一 2、数二 2、数三 2])[
设函数 $f(x)=(e^x-1)(e^(2x)-2) dots (e^(n x)-n)$，其中 $n$ 为正整数，则 $f'(0)=$
#choices([$(-1)^(n-1)(n-1)!$.],[$(-1)^n(n-1)!$.],[$(-1)^(n-1)n!$.],[$(-1)^n n!$.])
]

#ezexam.question(label: n => [2012 数三 10])[
设函数 $f(x)=cases(ln sqrt(x) & x>=1,2x-1 & x<1),y=f(f(x))$，则 $lr((dif y)/(dif x))|_(x=e)=$#fillin(len: 4em)[].
]

#ezexam.question(label: n => [2015 数一 18、数三 19])[
（Ⅰ）设函数 $u(x),v(x)$ 可导，利用导数定义证明 $[u(x)v(x)]'=u'(x)v(x)+u(x)v'(x)$；

（Ⅱ）设函数 $u_1(x),u_2(x),dots,u_n(x)$ 可导，$f(x)=u_1(x)u_2(x)dots u_n(x)$，写出 $f(x)$ 的求导公式.
]

#ezexam.question(label: n => [2016 数二 13])[
已知动点 $P$ 在曲线 $y=x^3$ 上运动，记坐标原点与点 $P$ 间的距离为 $l$. 若点 $P$ 的横坐标对时间的变化率为常数 $v_0$，则当点 $P$ 运动到点 $(1,1)$ 时，$l$ 对时间的变化率是#fillin(len: 4em)[].
]

*高阶导数*

#ezexam.question(label: n => [1987 数二 1（2）])[
设 $y=ln(1+a x)$，则 $y'=$ #fillin(len: 4em)[]，$y''=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [1990 数一 2（2）、数二 2（3）])[
已知函数 $f(x)$ 具有任意阶导数，且 $f'(x)=[f(x)]^2$，则当 $n$ 为大于2的正整数时，$f(x)$ 的 $n$ 阶导数 $f^((n))(x)$ 是（　）.
#choices([$n![f(x)]^(n+1)$],[$n[f(x)]^(n+1)$],[$[f(x)]^(2n)$],[$n![f(x)]^(2n)$])
]

#ezexam.question(label: n => [1996 数五 1（3）])[
设 $y=ln(x+sqrt(1+x^2))$，则 $y'''|_(x=sqrt(3))=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [1996 数四 3、数五 3])[
设 $f(x)=cases((g(x)-e^(-x))/x & quad x≠0,0 & quad x=0)$，其中 $g(x)$ 有二阶连续导数，且 $g(0)=1$、$g'(0)=-1$.

（1）求 $f'(x)$；

（2）讨论 $f'(x)$ 在 $(-infinity,+infinity)$ 上的连续性.
]

#ezexam.question(label: n => [1997 数二 1（2）])[
设 $y=ln sqrt((1-x)/(1+x^2))$，则 $y''|_(x=0)=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [2000 数二 5])[
求函数 $f(x)=x^2 ln(1+x)$ 在 $x=0$ 处的 $n$ 阶导数 $f^((n))(0)$（$n>=3$）.
]

#ezexam.question(label: n => [2006 数三 2、数四 2])[
设函数 $f(x)$ 在 $x=2$ 的某邻域内可导，且 $f'(x)=e^(f(x)),f(2)=1$，则 $f'''(2)=$#fillin(len: 4em)[].
]

#ezexam.question(label: n => [2007 数二 13、数三 12、数四 12])[
设函数 $y=1/(2x+3)$，则 $y^((n))(0)=$#fillin(len: 4em)[].
]

#ezexam.question(label: n => [2010 数二 11])[
函数 $y=ln(1-2x)$ 在 $x=0$ 处的 $n$ 阶导数 $y^((n))(0)=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [2015 数二 10])[
函数 $f(x)=x^2 2^x$ 在 $x=0$ 处的 $n$ 阶导数 $f^((n))(0)=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [2016 数一 12])[
设函数 $f(x)=arctan x-x/(1+a x^2)$，且 $f'''(0)=1$，则 $a=$ #fillin(len: 4em)[].
]

*微分计算*

#ezexam.question(label: n => [1997 数三 1（1）、数四 1（1）])[
设 $y=f(ln x)e^(f(x))$，其中 $f$ 可微，则 $dif y=$ #fillin(len: 4em)[].
]

*变限积分与求导综合*

#ezexam.question(label: n => [1990 数一 2（1）、数二 2（4）])[
设 $f(x)$ 是连续函数，且 $F(x)=integral_x^(e^(-x)) f(t)dif t$，则 $F'(x)$ 等于（　）.
#choices([$-e^(-x)f(e^(-x))-f(x)$],[$-e^(-x)f(e^(-x))+f(x)$],[$e^(-x)f(e^(-x))-f(x)$],[$e^(-x)f(e^(-x))+f(x)$])
]

#ezexam.question(label: n => [1992 数二 2（4）])[
设 $f(x)$ 连续，$F(x)=integral_0^(x^2)f(t^2)dif t$，则 $F'(x)$ 等于（　）.
#choices([$f(x^4)$],[$x^2 f(x^4)$],[$2x f(x^4)$],[$2x f(x^2)$])
]

#ezexam.question(label: n => [1993 数四 2（2）])[
设 $f(x)$ 为连续函数，且 $F(x)=integral_(1/x)^(ln x)f(t)dif t$，则 $F'(x)$ 等于（　）.
#choices[$1/x f(ln x)+1/x^2 f(1/x)$][$f(ln x)+f(1/x)$][$1/x f(ln x)-1/x^2 f(1/x)$][$f(ln x)-f(1/x)$]
]

#ezexam.question(label: n => [1993 数五 2（2）])[
设 $f(x)$ 为连续函数，且 $F(x)=integral_(1/x)^(ln x)f(t)dif t$，则 $F'(x)$ 等于（　）.
#choices[$1/x f(ln x)+1/x^2 f(1/x)$][$1/x f(ln x)+f(1/x)$][$1/x f(ln x)-1/x^2 f(1/x)$][$f(ln x)-f(1/x)$]
]

#ezexam.question(label: n => [2004 数一 10])[
设 $f(x)$ 为连续函数，$F(t)=integral_1^t dif y integral_y^t f(x) dif x$，则 $F'(2)$ 等于
#choices([$2f(2)$.],[$f(2)$.],[$-f(2)$.],[0.])
]

#ezexam.question(label: n => [2008 数一 1])[
设函数 $f(x)=integral_0^(x^2) ln(2+t)dif t$，则 $f'(x)$ 的零点个数为（　）.
#choices([0], [1], [2], [3])
]

#ezexam.question(label: n => [2013 数二 10])[
设函数 $f(x)=integral_(-1)^x sqrt(1-e^t)dif t$，则 $y=f(x)$ 的反函数 $x=f^(-1)(y)$ 在 $y=0$ 处的导数 $(dif x)/(dif y)|_(y=0)=$#fillin(len: 4em)[].
]

#ezexam.question(label: n => [2016 数二 16、数三 17])[
设函数 $f(x)=integral_0^1 abs(t^2-x^2) dif t$（$x>0$），求 $f'(x)$，并求 $f(x)$ 的最小值.
]

