#import "../../template.typ": collection
#show: collection.with(title: "傅里叶级数分类汇编", subject: "傅里叶级数")
#import "@preview/ezexam:0.3.1" as ezexam
#let choices = ezexam.choices.with(r-gap: 1.3em)
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(true)

= 历年真题：傅里叶级数

#ezexam.question(label: n => [1988 数一 1（3）])[
设 $f(x)$ 是周期为2的周期函数，它在区间 $(-1,1]$ 上定义为
$ f(x)=cases(2 & -1<x<=0,x^3 & 0<x<=1), $
则 $f(x)$ 的傅里叶（Fourier）级数在 $x=1$ 处收敛于 #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
解　$x=1$ 是 $f(x)$ 的间断点，$f(1-0)=1,f(1+0)=2$. 根据狄利克雷定理，级数在 $x=1$ 处收敛于
$ 1/2[f(1-0)+f(1+0)]=3/2. $

注　由收敛定理，在连续点 $x_0$ 处，$S(x_0)=f(x_0)$；在间断点 $x_1$ 处，$S(x_1)=(f(x_1-0)+f(x_1+0))/2$. 本题中 $f(1+0)$ 由 $f(x)$ 的周期性得到.
]
]

#ezexam.question(label: n => [1989 数一 2（4）])[
设函数 $f(x)=x^2,0<x<1$，而 $S(x)=sum_(n=1)^infinity b_n sin(n pi x),-infinity<x<+infinity$，其中 $b_n=2integral_0^1 f(x)sin(n pi x)dif x,n=1,2,3,dots$，则 $S(-1/2)$ 等于（　）.
#choices([$-1/2$],[$-1/4$],[$1/4$],[$1/2$])
#ezexam.solution(show-number: false)[
解　由 $S(x)=sum_(n=1)^infinity b_n sin n pi x$ 和 $b_n=2integral_0^1 f(x)sin n pi x dif x$ 可知，$S(x)$ 是由 $f(x)$ 作奇延拓后再作周期为2的周期延拓后的函数的傅氏级数的和. $S(x)$ 是奇函数，则
$ S(-1/2)=-S(1/2)=-f(1/2)=-(1/2)^2=-1/4. $
所以应选（B）.

注　本题只给出了 $f(x)$ 在 $[0,1)$ 上的表达式，要求 $S(-1/2)$，先用奇偶性将它化为 $S(1/2)$，而 $1/2$ 是 $f(x)$ 的连续点，则由收敛定理可知 $S(1/2)=f(1/2)$.
]
]

#ezexam.question(label: n => [1991 数一 5、数二 5])[
（8分）

将函数 $f(x)=2+abs(x)$（$-1<=x<=1$）展开成以2为周期的傅里叶级数，并由此求级数 $sum_(n=1)^infinity 1/n^2$ 的和.
#ezexam.solution(show-number: false)[
分析　$f(x)$ 为偶函数，展开式应为余弦级数，且由于 $f(x)$ 在 $[-1,1]$ 上连续，且 $f(-1)=f(1)$，则在区间 $[-1,1]$ 上，展开式收敛于 $f(x)$. 借助于 $f(x)$ 的展开式，给 $x$ 以特定值，可求出级数 $sum_(n=1)^infinity 1/n^2$ 的和.

解　$f(x)=2+abs(x)$ 在 $[-1,1]$ 上为偶函数，故 $b_n=0$.
$ a_0=2integral_0^1 f(x)dif x=2integral_0^1(2+x)dif x=5. $
$ a_n&=2integral_0^1 f(x)cos n pi x dif x \\
&=2integral_0^1(2+x)cos n pi x dif x \\
&=2[1/(n pi)(2+x)sin n pi x+1/(n^2 pi^2)cos n pi x]_0^1 \\
&=2/(n^2 pi^2)[(-1)^n-1] \\
&=cases(0 & n=2k,-4/(n^2 pi^2) & n=2k-1), quad k=1,2,dots. $
$f(x)$ 在 $[-1,1]$ 上连续，且 $f(-1)=f(1)$，所以
$ 2+abs(x)=5/2-4/pi^2 sum_(n=1)^infinity 1/(2n-1)^2 cos((2n-1)pi x), quad x in [-1,1]. $
令 $x=0$，得 $2=5/2-4/pi^2 sum_(n=1)^infinity 1/(2n-1)^2$，故 $sum_(n=1)^infinity 1/(2n-1)^2=pi^2/8$.
又
$ sum_(n=1)^infinity 1/n^2&=sum_(n=1)^infinity 1/(2n-1)^2+sum_(n=1)^infinity 1/(2n)^2 \\
&=sum_(n=1)^infinity 1/(2n-1)^2+1/4 sum_(n=1)^infinity 1/n^2, $
所以 $3/4 sum_(n=1)^infinity 1/n^2=sum_(n=1)^infinity 1/(2n-1)^2=pi^2/8$，即 $sum_(n=1)^infinity 1/n^2=pi^2/6$.
]
]

#ezexam.question(label: n => [1992 数一 1（3）])[
设 $f(x)=cases(-1 & -pi<x<=0,1+x^2 & 0<x<=pi)$，则其以 $2pi$ 为周期的傅里叶级数在点 $x=pi$ 处收敛于 #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
解　$x=pi$ 是 $f(x)$ 的间断点，$f(pi-0)=1+pi^2,f(pi+0)=-1$. 由狄利克雷定理知，该傅氏级数在 $x=pi$ 处收敛于
$ 1/2[f(pi-0)+f(pi+0)]=pi^2/2. $

注　本题和1987题类似，都是直接利用收敛定理，并用到周期性.
]
]

#ezexam.question(label: n => [1993 数一 1（3）、数二 1（3）])[
设函数 $f(x)=pi x+x^2$（$-pi<x<pi$）的傅里叶级数展开式为 $a_0/2+sum_(n=1)^infinity (a_n cos n x+b_n sin n x)$，则其中系数 $b_3$ 的值为 #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
由奇偶性和分部积分，$b_n=2 integral_0^pi x sin n x dif x=2pi(-1)^(n+1)/n$，所以 $b_3=2pi/3$.
]
]

#ezexam.question(label: n => [1995 数一 4（2）、数二 4（2）])[
（本题满分 6 分）将函数 $f(x)=x-1$（$0<=x<=2$）展开成周期为 4 的余弦级数.
#ezexam.solution(show-number: false)[
解
$ a_0=2/2 integral_0^2 (x-1)dif x=0, quad dots.c "1 分" $
$ a_n&=2/2 integral_0^2 (x-1)cos((n pi x)/2)dif x \
&=2/(n pi)integral_0^2 (x-1)dif sin((n pi x)/2)=-2/(n pi)integral_0^2 sin((n pi x)/2)dif x \
&=4/(n^2 pi^2)[(-1)^n-1] quad dots.c "4 分" \
&=cases(0 & n=2k,-8/((2k-1)^2 pi^2) & n=2k-1),quad (k=1,2,dots). $
$ f(x)=-8/pi^2 sum_(k=1)^infinity 1/(2k-1)^2 cos(((2k-1)pi x)/2),quad x in [0,2]. quad dots.c "6 分" $
注：展开式也可写作 $f(x)=4/pi^2 sum_(n=1)^infinity ((-1)^n-1)/n^2 cos((n pi x)/2),x in [0,2]$.
]
]

#ezexam.question(label: n => [1999 数一 2（3）])[
设
$ f(x)=cases(x & quad 0<=x<=frac(1,2),2-2x & quad frac(1,2)<x<1), $
$ S(x)=frac(a_0,2)+sum_(n=1)^infinity a_n cos n pi x, quad -infinity<x<+infinity, $
其中 $a_n=2integral_0^1 f(x)cos n pi x dif x$（$n=0,1,2,dots$），则 $S(-frac(5,2))$ 等于（　）.
#choices[$frac(1,2)$.][$-frac(1,2)$.][$frac(3,4)$.][$-frac(3,4)$.]
#ezexam.solution(show-number: false)[
C.
]
]

#ezexam.question(label: n => [2003 数一 1（3）])[
设 $x^2=sum_(n=0)^infinity a_n cos(n x) (-pi<=x<=pi)$，则 $a_2=$#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
1.
]
]

#ezexam.question(label: n => [2008 数一 19])[
（本题满分11分）
将函数 $f(x)=1-x^2$（$0<=x<=pi$）展开成余弦级数，并求级数 $sum_(n=1)^infinity (-1)^(n-1)/n^2$ 的和.
#ezexam.solution(show-number: false)[
解　由于
$ a_0=2/pi integral_0^pi (1-x^2)dif x=2-(2pi^2)/3, $
$ a_n=2/pi integral_0^pi (1-x^2)cos n x dif x=4/n^2 (-1)^(n+1), quad n=1,2,dots, $
所以
$ f(x)=a_0/2+sum_(n=1)^infinity a_n cos n x \
=1-pi^2/3+4sum_(n=1)^infinity (-1)^(n+1)/n^2 cos n x, quad 0<=x<=pi. $
令 $x=0$，有
$ f(0)=1-pi^2/3+4sum_(n=1)^infinity (-1)^(n+1)/n^2, $
又 $f(0)=1$，所以
$ sum_(n=1)^infinity (-1)^(n-1)/n^2=pi^2/12. $
]
]

#ezexam.question(label: n => [2013 数一 3])[
设 $f(x)=|x-1/2|$，$b_n=2integral_0^1 f(x)sin(n pi x)dif x$，则级数 $sum_(n=1)^infinity b_n sin(n pi x)$ 在 $x=-9/4$ 处的和为
#choices([$3/4$.],[$1/4$.],[$-1/4$.],[$-3/4$.])
#ezexam.solution(show-number: false)[
C.
]
]

