#import "../../template.typ": collection
#show: collection.with(title: "求数列的极限分类汇编", subject: "求数列的极限")
#import "@preview/ezexam:0.3.1" as ezexam
#let choices = ezexam.choices.with(r-gap: 1.3em)
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(true)

= 历年真题：求数列的极限

*直接求值与递推数列*

#ezexam.question(label: n => [1987 数二 1（1）])[
$lim_(n->infinity)((n-2)/(n+1))^n=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
由重要极限公式，
$ "原式"=lim_(n->infinity)[(1-3/(n+1))^(-(n+1)/3)]^(-3n/(n+1))=e^(-3). $
]
]

#ezexam.question(label: n => [1990 数三 1（1）、数四 1（1）])[
极限 $lim_(n->infinity)(sqrt(n+3sqrt(n))-sqrt(n-sqrt(n)))=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
分析　函数为无理根式，自然想到将其有理化.

解　$ "原式"=lim_(n->infinity)(n+3sqrt(n)-(n-sqrt(n)))/(sqrt(n+3sqrt(n))+sqrt(n-sqrt(n))) \
=lim_(n->infinity)4/(sqrt(1+3/sqrt(n))+sqrt(1-1/sqrt(n)))=2. $
]
]

#ezexam.question(label: n => [1993 数五 1（1）])[
$lim_(n arrow infinity)[sqrt(1+2+dots+n)-sqrt(1+2+dots+(n-1))]=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
有理化得 $n/(sqrt(n(n+1)/2)+sqrt(n(n-1)/2)) arrow 1/sqrt(2)=sqrt(2)/2$.
]
]

#ezexam.question(label: n => [1994 数三 3（3）])[
计算 $lim_(n arrow infinity)tan^n(pi/4+2/n)$.
#ezexam.solution(show-number: false)[
令 $L_n=tan^n(pi/4+2/n)$. 由和角公式，
$ ln L_n=n ln(1+(2tan(2/n))/(1-tan(2/n))) arrow 4. $
故原极限为 $e^4$.
]
]

#ezexam.question(label: n => [1995 数三 1（4）])[
$lim_(n arrow infinity)(1/(n^2+n+1)+2/(n^2+n+2)+dots+n/(n^2+n+n))=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
和式介于 $n(n+1)/(2(n^2+2n))$ 与 $n(n+1)/(2(n^2+n+1))$ 之间，两端均趋于 $1/2$.
]
]

#ezexam.question(label: n => [1996 数一 3（2）])[
设 $x_1=10$，$x_(n+1)=sqrt(6+x_n)$（$n=1,2,dots$），证明数列 ${x_n}$ 极限存在，并求此极限.
#ezexam.solution(show-number: false)[
由归纳法可得 $x_n>3$. 因为 $x_n^2>x_n+6$，所以 $x_(n+1)<x_n$. 数列单调递减且有下界，故极限存在. 设极限为 $l>=3$，则 $l=sqrt(6+l)$，解得 $l=3$.
]
]

#ezexam.question(label: n => [1998 数一 7])[
求极限
$ lim_(n -> infinity) [frac(sin frac(pi,n),n+1)+frac(sin frac(2 pi,n),n+frac(1,2))+dots+frac(sin pi,n+frac(1,n))]. $
#ezexam.solution(show-number: false)[
记方括号中的和为 $S_n$，则
$ S_n<frac(1,n)[sin frac(pi,n)+sin frac(2 pi,n)+dots+sin pi]=frac(1,n)sum_(i=1)^n sin frac(i pi,n). quad "（2分）" $
而
$ lim_(n -> infinity) frac(1,n)sum_(i=1)^n sin frac(i pi,n)=integral_0^1 sin pi x dif x=frac(2,pi). quad "（3分）" $
另一方面，
$ S_n>frac(1,n+1)[sin frac(pi,n)+sin frac(2 pi,n)+dots+sin pi]=frac(n,n+1)dot frac(1,n)sum_(i=1)^n sin frac(i pi,n), quad "（5分）" $
且
$ lim_(n -> infinity)[frac(n,n+1)dot frac(1,n)sum_(i=1)^n sin frac(i pi,n)]=integral_0^1 sin pi x dif x=frac(2,pi). $
由夹逼准则得所求极限为 $frac(2,pi)$. （6分）
]
]

#ezexam.question(label: n => [1998 数三 1（1）、数四 1（1）])[
设曲线 $f(x)=x^n$ 在点 $(1,1)$ 处的切线与 $x$ 轴的交点为 $(xi_n,0)$，则 $lim_(n -> infinity) f(xi_n)=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$frac(1,e)$.
]
]

#ezexam.question(label: n => [1998 数四 3])[
求 $lim_(n -> infinity)(n tan frac(1,n))^(n^2)$（$n$ 为自然数）.
#ezexam.solution(show-number: false)[
因为
$ lim_(x -> 0^+)(frac(tan x,x))^(frac(1,x^2))=lim_(x -> 0^+)[(1+frac(tan x-x,x))^(frac(x,tan x-x))]^(frac(tan x-x,x^3)), quad "（2分）" $
其中
$ lim_(x -> 0^+) frac(tan x-x,x^3)=lim_(x -> 0^+) frac(sec^2 x-1,3x^2)=frac(1,3), quad "（4分）" $
故
$ lim_(x -> 0^+)(frac(tan x,x))^(frac(1,x^2))=e^(frac(1,3)). quad "（5分）" $
取 $x=frac(1,n)$，则原式 $=e^(frac(1,3))$. （6分）

注：对数列极限直接用洛必达法则，扣2分.
]
]

#ezexam.question(label: n => [1999 数四 1（1）])[
设函数 $f(x)=a^x$（$a>0,a!=1$），则 $lim_(n->infinity) frac(1,n^2)ln[f(1)f(2)dots f(n)]=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$frac(1,2)ln a$.
]
]

#ezexam.question(label: n => [2002 数二 1（4）])[
$lim_(n->infinity) 1/n [sqrt(1+cos(pi/n))+sqrt(1+cos(2pi/n))+dots+sqrt(1+cos(n pi/n))]=$#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$2sqrt(2)/pi$.
]
]

#ezexam.question(label: n => [2002 数二 8])[
设 $0<x_1<3,x_(n+1)=sqrt(x_n (3-x_n)) (n=1,2,dots)$，证明数列 $ {x_n} $ 的极限存在，并求此极限.
#ezexam.solution(show-number: false)[
*解* 由 $0<x_1<3$ 知 $x_1,3-x_1$ 均为正数. 故
$ 0<x_2=sqrt(x_1(3-x_1))<=1/2 (x_1+3-x_1)=3/2. $
设 $0<x_k<=3/2 (k>1)$，则
$ 0<x_(k+1)=sqrt(x_k (3-x_k))<=1/2 (x_k+3-x_k)=3/2, $
由数学归纳法知，对任意正整数 $n>1$ 均有 $0<x_n<=3/2$，因而数列 $ {x_n} $ 有界. 又当 $n>1$ 时，
$ x_(n+1)-x_n&=sqrt(x_n (3-x_n))-x_n=sqrt(x_n)(sqrt(3-x_n)-sqrt(x_n)) \
&=(sqrt(x_n)(3-2x_n))/(sqrt(3-x_n)+sqrt(x_n))>=0, $
因而有 $x_(n+1)>=x_n (n>1)$，故数列 $ {x_n} $ 单调增加. 由单调有界数列必有极限知 $lim_(n->infinity) x_n$ 存在. 设 $lim_(n->infinity) x_n=a$，在 $x_(n+1)=sqrt(x_n (3-x_n))$ 两边取极限，得 $a=sqrt(a(3-a))$，解之得 $a=3/2,a=0$（舍去）. 故 $lim_(n->infinity) x_n=3/2$.
]
]

#ezexam.question(label: n => [2002 数三 1（1）、数四 1（1）])[
设常数 $a!=1/2$，则 $lim_(n->infinity) ln[(n-2n a+1)/(n(1-2a))]^n=$#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$1/(1-2a)$.
]
]

#ezexam.question(label: n => [2006 数一 16、数二 18])[
设数列 $\{x_n\}$ 满足 $0<x_1<pi,x_(n+1)=sin x_n (n=1,2,dots)$.

（Ⅰ）证明 $lim_(n->infinity)x_n$ 存在，并求该极限；

（Ⅱ）计算 $lim_(n->infinity)(x_(n+1)/x_n)^(1/x_n^2)$.
#ezexam.solution(show-number: false)[
（Ⅰ）用归纳法证明 $\{x_n\}$ 单调下降且有下界. 由 $0<x_1<pi$，得 $0<x_2=sin x_1<x_1<pi$. 设 $0<x_n<pi$，则 $0<x_(n+1)=sin x_n<x_n<pi$，所以 $\{x_n\}$ 单调下降且有下界，故 $lim_(n->infinity)x_n$ 存在. 记 $a=lim_(n->infinity)x_n$，由 $x_(n+1)=sin x_n$ 得 $a=sin a$，所以 $a=0$，即 $lim_(n->infinity)x_n=0$.

（Ⅱ）解法1　因为
$ lim_(x->0)(sin x/x)^(1/x^2)=lim_(x->0)e^(1/x^2 ln(sin x/x)) \
=lim_(x->0)e^(1/(2x)(cos x/(sin x)-1/x)) \
=lim_(x->0)e^((x cos x-sin x)/(2x^3)) \
=lim_(x->0)e^((-x sin x)/(6x^2))=e^(-1/6). $
又由（Ⅰ）$lim_(n->infinity)x_n=0$，所以
$ lim_(n->infinity)(x_(n+1)/x_n)^(1/x_n^2) \
=lim_(n->infinity)(sin x_n/x_n)^(1/x_n^2)=lim_(x->0)(sin x/x)^(1/x^2)=e^(-1/6). $
解法2　因为
$ (sin x/x)^(1/x^2)=[(1+(sin x-x)/x)^(x/(sin x-x))]^((sin x-x)/x^3), $
又因为 $lim_(x->0)(sin x-x)/x^3=-1/6,lim_(x->0)(1+(sin x-x)/x)^(x/(sin x-x))=e$，所以 $lim_(x->0)(sin x/x)^(1/x^2)=e^(-1/6)$，故
$ lim_(n->infinity)(x_(n+1)/x_n)^(1/x_n^2)=lim_(n->infinity)(sin x_n/x_n)^(1/x_n^2)=lim_(x->0)(sin x/x)^(1/x^2)=e^(-1/6). $
]
]

#ezexam.question(label: n => [2006 数三 1、数四 1])[
$lim_(n->infinity)((n+1)/n)^((-1)^n)=$#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
1.
]
]

#ezexam.question(label: n => [2008 数四 1])[
设 $0<a<b$，则 $lim_(n->infinity)(a^(-n)+b^(-n))^(1/n)=$（　）.
#choices([$a$], [$a^(-1)$], [$b$], [$b^(-1)$])
#ezexam.solution(show-number: false)[
B.
]
]

#ezexam.question(label: n => [2012 数二 10])[
$lim_(n->infinity)n(1/(1+n^2)+1/(2^2+n^2)+dots+1/(n^2+n^2))=$#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$pi/4$.
]
]

#ezexam.question(label: n => [2012 数二 21])[
（Ⅰ）证明方程 $x^n+x^(n-1)+dots+x=1$（$n$ 为大于1的整数）在区间 $(1/2,1)$ 内有且仅有一个实根；

（Ⅱ）记（Ⅰ）中的实根为 $x_n$，证明 $lim_(n->infinity)x_n$ 存在，并求此极限.
#ezexam.solution(show-number: false)[
（Ⅰ）证　令 $f(x)=x^n+x^(n-1)+dots+x-1 (n>1)$，则 $f(x)$ 在 $[1/2,1]$ 上连续，且
$ f(1/2)=((1/2)(1-1/2^n))/(1-1/2)-1=-1/2^n<0,f(1)=n-1>0, $
由闭区间上连续函数的介值定理知，方程 $f(x)=0$ 在 $(1/2,1)$ 内至少有一个实根. 当 $x in (1/2,1)$ 时，$f'(x)=n x^(n-1)+(n-1)x^(n-2)+dots+2x+1>0$，故 $f(x)$ 在 $(1/2,1)$ 内单调增加. 综上所述，方程 $f(x)=0$ 在 $(1/2,1)$ 内有且仅有一个实根.

（Ⅱ）解　由 $x_n in (1/2,1)$ 知数列 ${x_n}$ 有界，又
$ x_n^n+x_n^(n-1)+dots+x_n=1,quad x_(n+1)^(n+1)+x_(n+1)^n+x_(n+1)^(n-1)+dots+x_(n+1)=1. $
因为 $x_(n+1)^(n+1)>0$，所以
$ x_n^n+x_n^(n-1)+dots+x_n>x_(n+1)^n+x_(n+1)^(n-1)+dots+x_(n+1), $
于是有 $x_n>x_(n+1),n=1,2,dots$，即 ${x_n}$ 单调减少. 综上所述，数列 ${x_n}$ 单调有界，故 ${x_n}$ 收敛. 记 $a=lim_(n->infinity)x_n$. 由于 $(x_n-x_n^(n+1))/(1-x_n)=1$，令 $n->infinity$ 并注意到 $1/2<x_n<x_1<1$，则有 $a/(1-a)=1$，解得 $a=1/2$，即 $lim_(n->infinity)x_n=1/2$.
]
]

#ezexam.question(label: n => [2013 数一 9])[
设函数 $y=f(x)$ 由方程 $y-x=e^(x(1-y))$ 确定，则 $lim_(n->infinity)n[f(1/n)-1]=$#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
1.
]
]

#ezexam.question(label: n => [2013 数二 2])[
设函数 $y=f(x)$ 由方程 $cos(x y)+ln y-x=1$ 确定，则 $lim_(n->infinity)n[f(2/n)-1]=$
#choices([2.],[1.],[$-1$.],[$-2$.])
#ezexam.solution(show-number: false)[
A.
]
]

#ezexam.question(label: n => [2013 数二 20])[
设函数 $f(x)=ln x+1/x$.

（Ⅰ）求 $f(x)$ 的最小值；

（Ⅱ）设数列 $x_n$ 满足 $ln x_n+1/x_(n+1)<1$，证明 $lim_(n->infinity)x_n$ 存在，并求此极限.
#ezexam.solution(show-number: false)[
（Ⅰ）$f'(x)=(x-1)/x^2$. 令 $f'(x)=0$，解得 $f(x)$ 的唯一驻点 $x=1$. 又 $f''(1)=(2-x)/x^3|_(x=1)=1>0$，故 $f(1)=1$ 是唯一极小值，即最小值.

（Ⅱ）由（Ⅰ）的结果知 $ln x+1/x>=1$，从而有
$ ln x_n+1/x_(n+1)<1<=ln x_n+1/x_n, $
于是 $x_n<=x_(n+1)$，即数列 $x_n$ 单调增加. 又由 $ln x_n+1/x_(n+1)<1$ 知 $ln x_n<1$，得 $x_n<e$. 从而数列 $x_n$ 单调增加且有上界，故 $lim_(n->infinity)x_n$ 存在. 记 $lim_(n->infinity)x_n=a$，可知 $a>=x_1>0$. 在不等式 $ln x_n+1/x_(n+1)<1$ 两边取极限，得 $ln a+1/a<=1$. 又 $ln a+1/a>=1$，故 $ln a+1/a=1$，可得 $a=1$，即 $lim_(n->infinity)x_n=1$.
]
]

#ezexam.question(label: n => [2013 数三 9])[
设曲线 $y=f(x)$ 与 $y=x^2-x$ 在点 $(1,0)$ 处有公共切线，则 $lim_(n->infinity)n f(n/(n+2))=$#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$-2$.
]
]

#ezexam.question(label: n => [2014 数二 20])[
设函数 $f(x)=x/(1+x),x in [0,1]$. 定义函数列：$f_1(x)=f(x),f_2(x)=f(f_1(x)),dots,f_n(x)=f(f_(n-1)(x)),dots$. 记 $S_n$ 是由曲线 $y=f_n(x)$、直线 $x=1$ 及 $x$ 轴所围平面图形的面积，求极限 $lim_(n->infinity)n S_n$.
#ezexam.solution(show-number: false)[
$ f_2(x)=f(f_1(x))=f_1(x)/(1+f_1(x))=(x/(1+x))/(1+x/(1+x))=x/(1+2x); $
$ f_3(x)=f(f_2(x))=f_2(x)/(1+f_2(x))=x/(1+3x). $
由数学归纳法得 $f_n(x)=x/(1+n x)(n=1,2,3,dots)$. 于是
$ S_n&=integral_0^1 x/(1+n x)dif x=1/n integral_0^1(1-1/(1+n x))dif x \
&=1/n-(ln(1+n))/n^2. $
故 $lim_(n->infinity)n S_n=lim_(n->infinity)(1-(ln(1+n))/n)=1$.
]
]

#ezexam.question(label: n => [2016 数二 10、数三 10])[
极限 $lim_(n->infinity) 1/n^2 (sin 1/n+2sin 2/n+dots+n sin n/n)=$#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$sin 1-cos 1$.
]
]

#ezexam.question(label: n => [2017 数一 16、数二 17、数三 17])[
求 $lim_(n->+infinity)sum_(k=1)^n k/n^2 ln(1+k/n)$.
#ezexam.solution(show-number: false)[
解
$ lim_(n->+infinity)sum_(k=1)^n k/n^2 ln(1+k/n)
 &=lim_(n->+infinity)sum_(k=1)^n k/n ln(1+k/n)dot 1/n \
 &=integral_0^1 x ln(1+x)dif x \
 &=1/2 x^2 ln(1+x)|_0^1-1/2 integral_0^1 x^2/(1+x)dif x \
 &=1/2 ln 2-1/2 integral_0^1(x-1+1/(1+x))dif x \
 &=1/2 ln 2-1/4(x-1)^2|_0^1-1/2 ln(1+x)|_0^1=1/4. $
]
]

#ezexam.question(label: n => [2018 数一 19、数二 21、数三 19])[
设数列 $\{x_n\}$ 满足：$x_1>0$，$x_n e^(x_(n+1))=e^(x_n)-1$（$n=1,2,dots$）. 证明 $\{x_n\}$ 收敛，并求 $lim_(n->infinity) x_n$.
#ezexam.solution(show-number: false)[
解　由于 $x_1!=0$，所以 $e^(x_2)=(e^(x_1)-1)/x_1$. 根据微分中值定理，存在 $xi in (0,x_1)$，使得 $(e^(x_1)-1)/x_1=e^xi$. 所以 $e^(x_2)=e^xi$，故 $0<x_2<x_1$. 假设 $0<x_(n+1)<x_n$，则
$ e^(x_(n+2))=(e^(x_(n+1))-1)/x_(n+1)=e^eta quad (0<eta<x_(n+1)), $
所以 $0<x_(n+2)<x_(n+1)$. 故 $\{x_n\}$ 是单调减少的数列，且有下界，从而 $\{x_n\}$ 收敛. 设 $lim_(n->infinity) x_n=a$，得 $a e^a=e^a-1$，易知 $a=0$ 为其解. 令 $f(x)=x e^x-e^x+1$，则 $f'(x)=x e^x$. 当 $x>0$ 时，$f'(x)>0$，函数 $f(x)$ 在 $[0,+infinity)$ 上单调增加，所以 $a=0$ 是方程 $a e^a=e^a-1$ 在 $[0,+infinity)$ 上的唯一解，故 $lim_(n->infinity) x_n=0$.
]
]

*积分与极限综合*

#ezexam.question(label: n => [2002 数一 4])[
已知两曲线 $y=f(x)$ 与 $y=integral_0^(arctan x) e^(-t^2) dif t$ 在点 $(0,0)$ 处的切线相同，写出此切线方程，并求极限 $lim_(n->infinity) n f(2/n)$.
#ezexam.solution(show-number: false)[
*解* 由已知条件得
$ f(0)=0, quad f'(0)=lr((e^(-(arctan x)^2))/(1+x^2)|)_(x=0)=1, $
故所求切线方程为 $y=x$.
$ lim_(n->infinity) n f(2/n)=lim_(n->infinity) 2dot (f(2/n)-f(0))/(2/n)=2f'(0)=2. $
]
]

#ezexam.question(label: n => [2003 数二 2（2）])[
设 $a_n=3/2 integral_0^(n/(n+1)) x^(n-1) sqrt(1+x^n) dif x$，则极限 $lim_(n->infinity) n a_n$ 等于（　）.
#choices[$(1+e)^(3/2)+1$.][$(1+e^(-1))^(3/2)-1$.][$(1+e^(-1))^(3/2)+1$.][$(1+e)^(3/2)-1$.]
#ezexam.solution(show-number: false)[
B.
]
]

#ezexam.question(label: n => [2004 数二 9])[
$lim_(n->infinity) ln root(n,(1+1/n)^2(1+2/n)^2 dots (1+n/n)^2)$ 等于
#choices([$integral_1^2 ln^2 x dif x$.],[$2integral_1^2 ln x dif x$.],[$2integral_1^2 ln(1+x) dif x$.],[$integral_1^2 ln^2(1+x) dif x$.])
#ezexam.solution(show-number: false)[
B.
]
]

#ezexam.question(label: n => [2009 数二 11])[
$lim_(n->infinity)integral_0^1 e^(-x)sin(n x)dif x=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
0.
]
]

#ezexam.question(label: n => [2010 数一 17、数二 16、数三 18])[
（Ⅰ）比较 $integral_0^1|ln t[ln(1+t)]^n|dif t$ 与 $integral_0^1 t^n|ln t|dif t(n=1,2,dots)$ 的大小，说明理由；

（Ⅱ）记 $u_n=integral_0^1|ln t[ln(1+t)]^n|dif t(n=1,2,dots)$，求极限 $lim_(n->infinity)u_n$.
#ezexam.solution(show-number: false)[
解　（Ⅰ）当 $0<=t<=1$ 时，因为 $ln(1+t)<=t$，所以 $|ln t[ln(1+t)]^n|<=t^n|ln t|$，因此
$ integral_0^1|ln t[ln(1+t)]^n|dif t<=integral_0^1 t^n|ln t|dif t. $
（Ⅱ）由（Ⅰ）知 $0<=u_n=integral_0^1|ln t[ln(1+t)]^n|dif t<=integral_0^1 t^n|ln t|dif t$. 因为
$ integral_0^1 t^n|ln t|dif t=-integral_0^1 t^n ln t dif t \
=1/(n+1)integral_0^1 t^n dif t=1/(n+1)^2, $
所以 $lim_(n->infinity)integral_0^1 t^n|ln t|dif t=0$，从而 $lim_(n->infinity)u_n=0$.
]
]

#ezexam.question(label: n => [2010 数一 4、数二 6])[
$lim_(n->infinity)sum_(i=1)^n sum_(j=1)^n n/((n+i)(n^2+j^2))=$
#choices([$integral_0^1 dif x integral_0^x 1/((1+x)(1+y^2))dif y$.],[$integral_0^1 dif x integral_0^x 1/((1+x)(1+y))dif y$.],[$integral_0^1 dif x integral_0^1 1/((1+x)(1+y))dif y$.],[$integral_0^1 dif x integral_0^1 1/((1+x)(1+y^2))dif y$.])
#ezexam.solution(show-number: false)[
D.
]
]

*极限与级数、概率统计综合*

#ezexam.question(label: n => [2005 数四 14])[
设 $X_1,X_2,dots,X_n,dots$ 为独立同分布的随机变量列，且均服从参数为 $lambda (lambda>1)$ 的指数分布，记 $Phi(x)$ 为标准正态分布函数，则
#choices([$lim_(n->infinity)P{(sum_(i=1)^n X_i-n lambda)/(lambda sqrt(n))<=x}=Phi(x)$.],[$lim_(n->infinity)P{(sum_(i=1)^n X_i-n lambda)/sqrt(n lambda)<=x}=Phi(x)$.],[$lim_(n->infinity)P{(lambda sum_(i=1)^n X_i-n)/sqrt(n)<=x}=Phi(x)$.],[$lim_(n->infinity)P{(sum_(i=1)^n X_i-lambda)/sqrt(n lambda)<=x}=Phi(x)$.])
#ezexam.solution(show-number: false)[
C.
]
]

#ezexam.question(label: n => [2014 数一 19])[
设数列 $a_n,b_n$ 满足 $0<a_n<pi/2,0<b_n<pi/2,cos a_n-a_n=cos b_n$，且级数 $sum_(n=1)^infinity b_n$ 收敛.

（Ⅰ）证明 $lim_(n->infinity)a_n=0$；

（Ⅱ）证明级数 $sum_(n=1)^infinity a_n/b_n$ 收敛.
#ezexam.solution(show-number: false)[
（Ⅰ）因为 $cos a_n-cos b_n=a_n$，且 $0<a_n<pi/2,0<b_n<pi/2$，所以 $0<a_n<b_n$. 又因为 $sum_(n=1)^infinity b_n$ 收敛，所以 $lim_(n->infinity)b_n=0$，故 $lim_(n->infinity)a_n=0$.

（Ⅱ）因为
$ lim_(n->infinity)a_n/b_n^2&=lim_(n->infinity)(1-cos b_n)/b_n^2 dot a_n/(1-cos b_n) \
&=1/2 lim_(n->infinity)a_n/(1-cos b_n) \
&=1/2 lim_(n->infinity)a_n/(a_n+1-cos a_n)=1/2, $
且级数 $sum_(n=1)^infinity b_n$ 收敛，所以 $sum_(n=1)^infinity a_n/b_n$ 收敛.
]
]

#ezexam.question(label: n => [2014 数一 23])[
设总体 $X$ 的分布函数为 $F(x;theta)=cases(1-e^(-x^2/theta) & x>=0,0 & x<0)$，其中 $theta$ 是未知参数且大于零，$X_1,X_2,dots,X_n$ 为来自总体 $X$ 的简单随机样本.

（Ⅰ）求 $E X$ 与 $E X^2$；

（Ⅱ）求 $theta$ 的最大似然估计量 $hat(theta)_n$；

（Ⅲ）是否存在实数 $a$，使得对任何 $epsilon>0$，都有 $lim_(n->infinity)P{|hat(theta)_n-a|>=epsilon}=0$？
#ezexam.solution(show-number: false)[
（Ⅰ）总体 $X$ 的概率密度为 $f(x;theta)=cases((2x)/theta e^(-x^2/theta) & x>=0,0 & x<0)$.
$ E X&=integral_0^(+infinity)x dot (2x)/theta e^(-x^2/theta)dif x \
&=-integral_0^(+infinity)x dif e^(-x^2/theta) \
&=integral_0^(+infinity)e^(-x^2/theta)dif x \
&=sqrt(pi theta)/2 dot 1/sqrt(pi theta)integral_(-infinity)^(+infinity)e^(-x^2/theta)dif x=sqrt(pi theta)/2, $
$ E X^2&=integral_0^(+infinity)x^2 dot (2x)/theta e^(-x^2/theta)dif x \
&=theta integral_0^(+infinity)u e^(-u)dif u=theta. $

（Ⅱ）设 $x_1,x_2,dots,x_n$ 为样本观测值，似然函数为
$ L(theta)&=product_(i=1)^n f(x_i;theta) \
=cases((2^n x_1 x_2 dots x_n)/theta^n e^(-1/theta sum_(i=1)^n x_i^2) & x_1,x_2,dots,x_n>0,0 & "其他"). $
当 $x_1,x_2,dots,x_n>0$ 时，
$ ln L(theta)=n ln 2+sum_(i=1)^n ln x_i-n ln theta-1/theta sum_(i=1)^n x_i^2. $
令 $(dif ln L(theta))/(dif theta)=-n/theta+1/theta^2 sum_(i=1)^n x_i^2=0$，得 $theta$ 的最大似然估计值为 $hat(theta)_n=1/n sum_(i=1)^n x_i^2$. 从而最大似然估计量为
$ hat(theta)_n=1/n sum_(i=1)^n X_i^2. $

（Ⅲ）存在，$a=theta$. 因为 $X_n^2$ 是独立同分布的随机变量序列，且 $E X_1^2=theta<+infinity$，所以根据辛钦大数定律，当 $n->infinity$ 时，$hat(theta)_n=1/n sum_(i=1)^n X_i^2$ 依概率收敛于 $E X_1^2$，即 $theta$. 所以对任何 $epsilon>0$ 都有
$ lim_(n->infinity)P{|hat(theta)_n-theta|>=epsilon}=0. $
]
]

