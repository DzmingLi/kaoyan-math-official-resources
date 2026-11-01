#import "@preview/ezexam:0.3.1" as ezexam
#import "@preview/cetz:0.5.2"
#let choices = ezexam.choices.with(r-gap: 1.3em)
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(true)

= 历年真题：显函数求导

*一阶导数与微分*

#ezexam.question(label: n => [1987 数三 3、数四 3])[
设 $y=ln (sqrt(1+x^2)-1)/(sqrt(1+x^2)+1)$，求 $y'$.
#ezexam.solution(show-number: false)[
解
$ y&=ln((sqrt(1+x^2)-1)/(sqrt(1+x^2)+1)) \
&=ln(sqrt(1+x^2)-1)-ln(sqrt(1+x^2)+1). $
$ y'&=((sqrt(1+x^2)-1)')/(sqrt(1+x^2)-1)-((sqrt(1+x^2)+1)')/(sqrt(1+x^2)+1) \
&=(2x)/(2sqrt(1+x^2)(sqrt(1+x^2)-1))-(2x)/(2sqrt(1+x^2)(sqrt(1+x^2)+1)) \
&=2/(x sqrt(1+x^2)). $
注　复合函数求导，应用公式 $dif y/dif x=(dif y/dif u)dot(dif u/dif x)$. 本题也可先有理化，再利用对数性质化简后求导.
]
]

#ezexam.question(label: n => [1988 数一 1（1）、数二 1（2）])[
若 $f(t)=lim_(x->infinity)t(1+1/x)^(2t x)$，则 $f'(t)=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$ f(t)=t lim_(x->infinity)[(1+1/x)^x]^(2t)=t e^(2t), $
故 $f'(t)=e^(2t)+2t e^(2t)=(1+2t)e^(2t)$.
]
]

#ezexam.question(label: n => [1989 数二 1（4）])[
设 $f(x)=x(x+1)(x+2)dots(x+n)$，则 $f'(0)=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
解法一　多项式 $f(x)$ 的一次项为 $n!x$，故 $f'(0)=n!$. 解法二　由导数的四则运算法则得
$ f'(x)=(x+1)(x+2)dots(x+n)+x(x+2)(x+3)dots(x+n) $
$ quad +dots+x(x+1)(x+2)dots(x+n-1), $
只有第一项不含因子 $x$，故 $f'(0)=n!$. 解法三　由导数定义有
$ f'(0)=lim_(x->0)(f(x)-f(0))/x=lim_(x->0)(x+1)(x+2)dots(x+n)=n!. $
]
]

#ezexam.question(label: n => [1989 数二 3（1）])[
已知 $y=arcsin(e^(-sqrt(x)))$，求 $y'$.
#ezexam.solution(show-number: false)[
$ y'=1/sqrt(1-e^(-2sqrt(x)))dot e^(-sqrt(x))(-1/(2sqrt(x))) $
$ =-1/2 dot 1/sqrt(x) dot e^(-sqrt(x))/sqrt(1-e^(-2sqrt(x))). $
]
]

#ezexam.question(label: n => [1990 数二 1（2）])[
设 $y=e^(tan(1/x)) dot sin(1/x)$，则 $y'=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
由求导公式，得
$ y'=e^(tan(1/x))sec^2(1/x)(-1/x^2)sin(1/x)+e^(tan(1/x))cos(1/x)(-1/x^2) $
$ =-1/x^2 e^(tan(1/x))(tan(1/x)sec(1/x)+cos(1/x)). $
]
]

#ezexam.question(label: n => [1991 数三 1（1）])[
设 $y=ln(1+3^(-x))$，则 $dif y=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
由复合函数求导法则，$dif y=-(3^(-x)ln 3)/(1+3^(-x))dif x$.
]
]

#ezexam.question(label: n => [1992 数四 1（1）])[
设 $f(t)=lim_(x->infinity)t((x+t)/(x-t))^x$，则 $f'(t)=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
解
$ f(t)&=t lim_(x->infinity)((x+t)/(x-t))^x \
&=t lim_(x->infinity)(1+(2t)/(x-t))^(((x-t)/(2t)) ((2t x)/(x-t))) \
&=t e^(2t). $
故 $f'(t)=e^(2t)(2t+1)$.
]
]

#ezexam.question(label: n => [1993 数四 1（2）])[
已知 $y=f((3x-2)/(3x+2))$，$f'(x)=arctan(x^2)$，则 $y'|_(x=0)=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
令 $u=(3x-2)/(3x+2)$，则 $u(0)=-1$，$u'(0)=3$，所以 $y'(0)=3f'(-1)=3pi/4$.
]
]

#ezexam.question(label: n => [1993 数五 1（2）])[
已知 $y=f((3x-2)/(3x+2))$，$f'(x)=arcsin(x^2)$，则 $y'|_(x=0)=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
令 $u=(3x-2)/(3x+2)$，有 $u(0)=-1$、$u'(0)=3$. 由复合函数求导得 $y'(0)=3f'(-1)=3pi/2$（在实值定义域端点按单侧导数理解）.
]
]

#ezexam.question(label: n => [1995 数MBA 3])[
设 $y=ln(e^x+sqrt(1+e^(2x)))$，求 $y'$.
#ezexam.solution(show-number: false)[
由复合函数求导，
$ y'=(e^x+e^(2x)/sqrt(1+e^(2x)))/(e^x+sqrt(1+e^(2x)))=e^x/sqrt(1+e^(2x)). $
]
]

#ezexam.question(label: n => [1995 数三 1（1）])[
设 $y=cos(x^2)sin^2(1/x)$，则 $y'=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
用乘积和链式法则，得 $y'=-2x sin(x^2)sin^2(1/x)-sin(2/x)cos(x^2)/x^2$.
]
]

#ezexam.question(label: n => [1996 数三 1（1）])[
设 $y=(x+e^(-x/2))^(2/3)$，则 $y'|_(x=0)=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
链式法则给出 $y'=2/3 (x+e^(-x/2))^(-1/3)(1-e^(-x/2)/2)$，代入0得 $1/3$.
]
]

#ezexam.question(label: n => [2004 数四 2])[
设 $y=arctan e^x-ln sqrt(e^(2x)/(e^(2x)+1))$，则 $lr((dif y)/(dif x))|_(x=1)=$#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$(e-1)/(e^2+1)$.
]
]

#ezexam.question(label: n => [2006 数二 9])[
设函数 $g(x)$ 可微，$h(x)=e^(1+g(x)),h'(1)=1,g'(1)=2$，则 $g(1)$ 等于
#choices([$ln 3-1$.],[$-ln 3-1$.],[$-ln 2-1$.],[$ln 2-1$.])
#ezexam.solution(show-number: false)[
C.
]
]

#ezexam.question(label: n => [2008 数二 1])[
设函数 $f(x)=x^2(x-1)(x-2)$，则 $f'(x)$ 的零点个数为（　）.
#choices([0], [1], [2], [3])
#ezexam.solution(show-number: false)[
D.
]
]

#ezexam.question(label: n => [2011 数三 9])[
设 $f(x)=lim_(t->0)x(1+3t)^(x/t)$，则 $f'(x)=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$(1+3x)e^(3x)$.
]
]

#ezexam.question(label: n => [2012 数一 2、数二 2、数三 2])[
设函数 $f(x)=(e^x-1)(e^(2x)-2) dots (e^(n x)-n)$，其中 $n$ 为正整数，则 $f'(0)=$
#choices([$(-1)^(n-1)(n-1)!$.],[$(-1)^n(n-1)!$.],[$(-1)^(n-1)n!$.],[$(-1)^n n!$.])
#ezexam.solution(show-number: false)[
A.
]
]

#ezexam.question(label: n => [2012 数三 10])[
设函数 $f(x)=cases(ln sqrt(x) & x>=1,2x-1 & x<1),y=f(f(x))$，则 $lr((dif y)/(dif x))|_(x=e)=$#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$1/e$.
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

#ezexam.question(label: n => [2016 数二 13])[
已知动点 $P$ 在曲线 $y=x^3$ 上运动，记坐标原点与点 $P$ 间的距离为 $l$. 若点 $P$ 的横坐标对时间的变化率为常数 $v_0$，则当点 $P$ 运动到点 $(1,1)$ 时，$l$ 对时间的变化率是#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$2sqrt(2)v_0$.
]
]

*高阶导数*

#ezexam.question(label: n => [1987 数二 1（2）])[
设 $y=ln(1+a x)$，则 $y'=$ #fillin(len: 4em)[]，$y''=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
由复合函数求导公式易得
$ y'=a/(1+a x), quad y''=-(a dot a)/(1+a x)^2=-a^2/(1+a x)^2. $
]
]

#ezexam.question(label: n => [1990 数一 2（2）、数二 2（3）])[
已知函数 $f(x)$ 具有任意阶导数，且 $f'(x)=[f(x)]^2$，则当 $n$ 为大于2的正整数时，$f(x)$ 的 $n$ 阶导数 $f^((n))(x)$ 是（　）.
#choices([$n![f(x)]^(n+1)$],[$n[f(x)]^(n+1)$],[$[f(x)]^(2n)$],[$n![f(x)]^(2n)$])
#ezexam.solution(show-number: false)[
分析　逐步求导得 $n$ 阶导数的一般表达式. 解
$ f''(x)=(f'(x))'=2f(x)dot f'(x)=2[f(x)]^3=2![f(x)]^3, $
$ f^((3))(x)=2dot 3[f(x)]^2 dot f'(x)=2dot 3[f(x)]^4=3![f(x)]^4, $
一般地 $f^((n))(x)=n![f(x)]^(n+1)$.
]
]

#ezexam.question(label: n => [1996 数五 1（3）])[
设 $y=ln(x+sqrt(1+x^2))$，则 $y'''|_(x=sqrt(3))=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
逐次求导得 $y'=(1+x^2)^(-1/2)$、$y''=-x(1+x^2)^(-3/2)$、$y'''=(2x^2-1)/(1+x^2)^(5/2)$. 代入 $x=sqrt(3)$，得 $5/32$.
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

#ezexam.question(label: n => [1997 数二 1（2）])[
设 $y=ln sqrt((1-x)/(1+x^2))$，则 $y''|_(x=0)=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
写成 $y=1/2 ln(1-x)-1/2 ln(1+x^2)$，得 $y''=-1/(2(1-x)^2)-(1-x^2)/(1+x^2)^2$，所以 $y''(0)=-3/2$.
]
]

#ezexam.question(label: n => [2000 数二 5])[
求函数 $f(x)=x^2 ln(1+x)$ 在 $x=0$ 处的 $n$ 阶导数 $f^((n))(0)$（$n>=3$）.
#ezexam.solution(show-number: false)[
*解法1* 由莱布尼兹公式
$ (u v)^((n))=u^((n))v^((0))+C_n^1 u^((n-1))v'+C_n^2 u^((n-2))v''+dots+u^((0))v^((n)) $
及 $[ln(1+x)]^((k))=frac((-1)^(k-1)(k-1)!,(1+x)^k)$（$k$ 为正整数）， （2分）
得
$ f^((n))(x)&=x^2 frac((-1)^(n-1)(n-1)!,(1+x)^n)+2n x frac((-1)^(n-2)(n-2)!,(1+x)^(n-1)) \
& quad +n(n-1)dot frac((-1)^(n-3)(n-3)!,(1+x)^(n-2)). quad "（4分）" $
所以
$ f^((n))(0)=(-1)^(n-3)n(n-1)(n-3)!=frac((-1)^(n-1)n!,n-2). quad "（5分）" $
*解法2* 由麦克劳林公式
$ f(x)=f(0)+frac(f'(0),1!)x+dots+frac(f^((n))(0),n!)x^n+o(x^n), $
及
$ x^2 ln(1+x)&=x^2[x-frac(x^2,2)+frac(x^3,3)+dots+(-1)^(n-1)frac(x^(n-2),n-2)+o(x^(n-2))] \
&=x^3-frac(x^4,2)+frac(x^5,3)+dots+(-1)^(n-1)dot frac(x^n,n-2)+o(x^n), quad "（3分）" $
比较 $x^n$ 的系数得 $frac(f^((n))(0),n!)=frac((-1)^(n-1),n-2)$，

所以 $f^((n))(0)=frac((-1)^(n-1)n!,n-2)$. （5分）
]
]

#ezexam.question(label: n => [2006 数三 2、数四 2])[
设函数 $f(x)$ 在 $x=2$ 的某邻域内可导，且 $f'(x)=e^(f(x)),f(2)=1$，则 $f'''(2)=$#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$2e^3$.
]
]

#ezexam.question(label: n => [2007 数二 13、数三 12、数四 12])[
设函数 $y=1/(2x+3)$，则 $y^((n))(0)=$#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$((-1)^n 2^n n!)/3^(n+1)$.
]
]

#ezexam.question(label: n => [2010 数二 11])[
函数 $y=ln(1-2x)$ 在 $x=0$ 处的 $n$ 阶导数 $y^((n))(0)=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$-2^n dot (n-1)!$.
]
]

#ezexam.question(label: n => [2015 数二 10])[
函数 $f(x)=x^2 2^x$ 在 $x=0$ 处的 $n$ 阶导数 $f^((n))(0)=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$n(n-1)(ln 2)^(n-2)$.
]
]

#ezexam.question(label: n => [2016 数一 12])[
设函数 $f(x)=arctan x-x/(1+a x^2)$，且 $f'''(0)=1$，则 $a=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$1/2$.
]
]

*微分计算*

#ezexam.question(label: n => [1997 数三 1（1）、数四 1（1）])[
设 $y=f(ln x)e^(f(x))$，其中 $f$ 可微，则 $dif y=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
由乘积及链式求导法则，$dif y=e^(f(x))[(f'(ln x))/x+f'(x)f(ln x)]dif x$.
]
]

*变限积分与求导综合*

#ezexam.question(label: n => [1990 数一 2（1）、数二 2（4）])[
设 $f(x)$ 是连续函数，且 $F(x)=integral_x^(e^(-x)) f(t)dif t$，则 $F'(x)$ 等于（　）.
#choices([$-e^(-x)f(e^(-x))-f(x)$],[$-e^(-x)f(e^(-x))+f(x)$],[$e^(-x)f(e^(-x))-f(x)$],[$e^(-x)f(e^(-x))+f(x)$])
#ezexam.solution(show-number: false)[
$ F'(x)=f(e^(-x))(e^(-x))'-f(x)=-e^(-x)f(e^(-x))-f(x). $
应选 A.
]
]

#ezexam.question(label: n => [1992 数二 2（4）])[
设 $f(x)$ 连续，$F(x)=integral_0^(x^2)f(t^2)dif t$，则 $F'(x)$ 等于（　）.
#choices([$f(x^4)$],[$x^2 f(x^4)$],[$2x f(x^4)$],[$2x f(x^2)$])
#ezexam.solution(show-number: false)[
$ F'(x)=f((x^2)^2)dot(x^2)'=2x f(x^4). $
应选 C.
]
]

#ezexam.question(label: n => [1993 数四 2（2）])[
设 $f(x)$ 为连续函数，且 $F(x)=integral_(1/x)^(ln x)f(t)dif t$，则 $F'(x)$ 等于（　）.
#choices[$1/x f(ln x)+1/x^2 f(1/x)$][$f(ln x)+f(1/x)$][$1/x f(ln x)-1/x^2 f(1/x)$][$f(ln x)-f(1/x)$]
#ezexam.solution(show-number: false)[
A. 由变限积分求导法则，$F'(x)=f(ln x)/x-f(1/x)(-1/x^2)$.
]
]

#ezexam.question(label: n => [1993 数五 2（2）])[
设 $f(x)$ 为连续函数，且 $F(x)=integral_(1/x)^(ln x)f(t)dif t$，则 $F'(x)$ 等于（　）.
#choices[$1/x f(ln x)+1/x^2 f(1/x)$][$1/x f(ln x)+f(1/x)$][$1/x f(ln x)-1/x^2 f(1/x)$][$f(ln x)-f(1/x)$]
#ezexam.solution(show-number: false)[
A. 由变限积分求导法则，$F'(x)=f(ln x)/x-f(1/x)(-1/x^2)$.
]
]

#ezexam.question(label: n => [2004 数一 10])[
设 $f(x)$ 为连续函数，$F(t)=integral_1^t dif y integral_y^t f(x) dif x$，则 $F'(2)$ 等于
#choices([$2f(2)$.],[$f(2)$.],[$-f(2)$.],[0.])
#ezexam.solution(show-number: false)[
B.
]
]

#ezexam.question(label: n => [2008 数一 1])[
设函数 $f(x)=integral_0^(x^2) ln(2+t)dif t$，则 $f'(x)$ 的零点个数为（　）.
#choices([0], [1], [2], [3])
#ezexam.solution(show-number: false)[
B.
]
]

#ezexam.question(label: n => [2013 数二 10])[
设函数 $f(x)=integral_(-1)^x sqrt(1-e^t)dif t$，则 $y=f(x)$ 的反函数 $x=f^(-1)(y)$ 在 $y=0$ 处的导数 $(dif x)/(dif y)|_(y=0)=$#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$1/sqrt(1-e^(-1))$.
]
]

#ezexam.question(label: n => [2016 数二 16、数三 17])[
设函数 $f(x)=integral_0^1 abs(t^2-x^2) dif t$（$x>0$），求 $f'(x)$，并求 $f(x)$ 的最小值.
#ezexam.solution(show-number: false)[
解　当 $0<x<=1$ 时，
$ f(x)&=integral_0^x abs(t^2-x^2) dif t+integral_x^1 abs(t^2-x^2) dif t \
 &=integral_0^x(x^2-t^2)dif t+integral_x^1 (t^2-x^2)dif t=4/3 x^3-x^2+1/3; $
当 $x>1$ 时，$f(x)=integral_0^1(x^2-t^2)dif t=x^2-1/3$，所以
$ f(x)=cases(4/3 x^3-x^2+1/3&0<x<=1,x^2-1/3&x>1), $
而
$ f_-'(1)=lim_(x->1^-)(4/3 x^3-x^2+1/3-2/3)/(x-1)=2,
quad f_+'(1)=lim_(x->1^+)(x^2-1/3-2/3)/(x-1)=2, $
故 $f'(x)=cases(4x^2-2x&0<x<=1,2x&x>1)$. 由 $f'(x)=0$ 求得唯一驻点 $x=1/2$，又 $f''(1/2)>0$，从而 $x=1/2$ 为 $f(x)$ 的最小值点，最小值为 $f(1/2)=1/4$.
]
]

