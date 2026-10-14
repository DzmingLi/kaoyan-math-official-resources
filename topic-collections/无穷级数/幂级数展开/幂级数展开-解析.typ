#import "@preview/ezexam:0.3.1" as ezexam
#let choices = ezexam.choices.with(r-gap: 1.3em)
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(true)

= 历年真题：幂级数展开

#ezexam.question(label: n => [1987 数三 9])[
将函数 $f(x)=1/(x^2-3x+2)$ 展成 $x$ 的幂级数，并指出其收敛区间.
#ezexam.solution(show-number: false)[
解　$ f(x)=1/(x^2-3x+2)=1/(1-x)-1/(2-x)=1/(1-x)-1/2 dot 1/(1-x/2). $
于是有
$ f(x)=sum_(n=0)^infinity x^n-1/2 sum_(n=0)^infinity (x/2)^n
=sum_(n=0)^infinity (1-1/2^(n+1))x^n, quad x in (-1,1). $
其收敛区间为 $(-1,1)$.
]
]

#ezexam.question(label: n => [1989 数一 4])[
将函数 $f(x)=arctan (1+x)/(1-x)$ 展为 $x$ 的幂级数.
#ezexam.solution(show-number: false)[
分析　显然直接展开比较困难，而 $f'(x)$ 易展开，因此可先对 $f'(x)$ 展开，再逐项积分得到 $f(x)$.

解　用间接展开法. 因为
$ f'(x)=1/(1+((1+x)/(1-x))^2) dot (1-x+1+x)/(1-x)^2=1/(1+x^2), $
由
$ 1/(1+x)=1-x+x^2-dots+(-1)^n x^n+dots=sum_(n=0)^infinity (-1)^n x^n, quad abs(x)<1, $
得
$ f'(x)=1/(1+x^2)=sum_(n=0)^infinity (-1)^n x^(2n), quad abs(x)<1. $
在幂级数的收敛区间内逐项积分得
$ f(x)&=f(0)+integral_0^x f'(t)dif t=pi/4+integral_0^x sum_(n=0)^infinity (-1)^n t^(2n)dif t \
&=pi/4+sum_(n=0)^infinity ((-1)^n)/(2n+1)x^(2n+1), quad x in (-1,1). $
在端点处，当 $x=-1$ 时，上式是收敛的莱布尼兹型级数；当 $x=1$ 时，所得幂级数同样收敛，但原函数无定义. 因此原函数的展开式在 $[-1,1)$ 内成立，所得幂级数本身的收敛域为 $[-1,1]$.
]
]

#ezexam.question(label: n => [1994 数一 3（2）、数二 3（2）])[
将函数 $f(x)=1/4 ln((1+x)/(1-x))+1/2 arctan x-x$ 展开成 $x$ 的幂级数.
#ezexam.solution(show-number: false)[
由 $f'(x)=1/(1-x^4)-1=sum_(n=1)^infinity x^(4n)$，且 $f(0)=0$，逐项积分得
$ f(x)=sum_(n=1)^infinity x^(4n+1)/(4n+1), quad -1<x<1. $
]
]

#ezexam.question(label: n => [1995 数四 5])[
（6分）

将函数 $y=ln(1-x-2x^2)$ 展成 $x$ 的幂级数，并指出其收敛区间.
#ezexam.solution(show-number: false)[
分解为 $ln(1+x)+ln(1-2x)$，分别展开相加，得
$ ln(1-x-2x^2)=sum_(n=1)^infinity ((-1)^(n+1)-2^n)/n x^n. $
两级数的共同收敛区间为 $[-1/2,1/2)$.
]
]

#ezexam.question(label: n => [1996 数三 3（4）])[
求函数 $f(x)=(1-x)/(1+x)$ 在 $x=0$ 点处带拉格朗日型余项的 $n$ 阶泰勒展开式.
#ezexam.solution(show-number: false)[
由 $f(x)=2/(1+x)-1$，$f^(k)(x)=2(-1)^k k!/(1+x)^(k+1)$，故
$ f(x)=1+2sum_(k=1)^n (-1)^k x^k+2(-1)^(n+1)x^(n+1)/(1+theta x)^(n+2), $
其中 $0<theta<1$，$x>-1$.
]
]

#ezexam.question(label: n => [2001 数一 5])[
（本题满分8分）设 $f(x)=cases(frac(1+x^2,x)arctan x & x!=0,1 & x=0)$，试将 $f(x)$ 展开成 $x$ 的幂级数，并求级数 $sum_(n=1)^infinity frac((-1)^n,1-4n^2)$ 的和.
#ezexam.solution(show-number: false)[
因 $frac(1,1+x^2)=sum_(n=0)^infinity (-1)^n x^(2n)$，$x in (-1,1)$，
故 $arctan x=integral_0^x (arctan x)'dif x=sum_(n=0)^infinity frac((-1)^n,2n+1)x^(2n+1)$，$x in [-1,1]$.

于是
$ f(x)&=1+sum_(n=1)^infinity frac((-1)^n,2n+1)x^(2n)+sum_(n=0)^infinity frac((-1)^n,2n+1)x^(2n+2) \
&=1+sum_(n=1)^infinity frac((-1)^n,2n+1)x^(2n)+sum_(n=1)^infinity frac((-1)^(n-1),2n-1)x^(2n) \
&=1+sum_(n=1)^infinity frac((-1)^n 2,1-4n^2)x^(2n),quad x in [-1,1], $
因此 $sum_(n=1)^infinity frac((-1)^n,1-4n^2)=frac(1,2)[f(1)-1]=frac(pi,4)-frac(1,2)$.
]
]

#ezexam.question(label: n => [2003 数一 4])[
（本题满分12分）将函数 $f(x)=arctan((1-2x)/(1+2x))$ 展开成 $x$ 的幂级数，并求级数 $sum_(n=0)^infinity (-1)^n/(2n+1)$ 的和.
#ezexam.solution(show-number: false)[
*解* 因为
$ f'(x)=-2/(1+4x^2)=-2sum_(n=0)^infinity (-1)^n 4^n x^(2n), quad x in (-1/2,1/2). $
又 $f(0)=pi/4$，所以
$ f(x)&=f(0)+integral_0^x f'(t) dif t \
&=pi/4-2integral_0^x [sum_(n=0)^infinity (-1)^n 4^n t^(2n)] dif t \
&=pi/4-2sum_(n=0)^infinity ((-1)^n 4^n)/(2n+1)x^(2n+1), quad x in (-1/2,1/2). $
因为级数 $sum_(n=0)^infinity (-1)^n/(2n+1)$ 收敛，函数 $f(x)$ 在 $x=1/2$ 处连续，所以
$ f(x)=pi/4-2sum_(n=0)^infinity ((-1)^n 4^n)/(2n+1)x^(2n+1), quad x in (-1/2,1/2]. $
令 $x=1/2$，得
$ f(1/2)=pi/4-2sum_(n=0)^infinity [((-1)^n 4^n)/(2n+1)dot 1/2^(2n+1)], $
再由 $f(1/2)=0$，得 $sum_(n=0)^infinity (-1)^n/(2n+1)=pi/4-f(1/2)=pi/4$.
]
]

#ezexam.question(label: n => [2006 数一 17])[
（本题满分12分）

将函数 $f(x)=x/(2+x-x^2)$ 展开成 $x$ 的幂级数.
#ezexam.solution(show-number: false)[
解法1　因为 $x/(2+x-x^2)=x/3(1/(1+x)+1/(2-x))$，分别将 $1/(1+x),1/(2-x)$ 展开成 $x$ 的幂级数：
$ 1/(1+x)=sum_(n=0)^infinity (-1)^n x^n,quad |x|<1, $
$ 1/(2-x)=1/2 dot 1/(1-x/2)=sum_(n=0)^infinity x^n/2^(n+1),quad |x|<2, $
所以
$ x/(2+x-x^2)=x/3(1/(1+x)+1/(2-x)) \
=1/3 sum_(n=0)^infinity [(-1)^n+1/2^(n+1)]x^(n+1),quad |x|<1. $
解法2　因为 $x/(2+x-x^2)=1/3(2/(2-x)-1/(1+x))$，分别将 $1/(1+x),2/(2-x)$ 展开成 $x$ 的幂级数：
$ 1/(1+x)=sum_(n=0)^infinity (-1)^n x^n,quad |x|<1, $
$ 2/(2-x)=1/(1-x/2)=sum_(n=0)^infinity x^n/2^n,quad |x|<2, $
所以
$ x/(2+x-x^2)=1/3(2/(2-x)-1/(1+x)) \
=1/3 sum_(n=0)^infinity [1/2^n-(-1)^n]x^n,quad |x|<1. $
]
]

#ezexam.question(label: n => [2007 数一 20])[
（本题满分10分）设幂级数 $sum_(n=0)^infinity a_n x^n$ 在 $(-infinity,+infinity)$ 内收敛，其和函数 $y(x)$ 满足 $y''-2x y'-4y=0,y(0)=0,y'(0)=1$.

（Ⅰ）证明 $a_(n+2)=2/(n+1)a_n,n=1,2,dots$；

（Ⅱ）求 $y(x)$ 的表达式.
#ezexam.solution(show-number: false)[
解　（Ⅰ）对 $y=sum_(n=0)^infinity a_n x^n$ 求一、二阶导数，得
$ y'=sum_(n=1)^infinity n a_n x^(n-1),quad y''=sum_(n=2)^infinity n(n-1)a_n x^(n-2), $
代入 $y''-2x y'-4y=0$ 并整理得
$ sum_(n=0)^infinity (n+1)(n+2)a_(n+2)x^n-sum_(n=1)^infinity 2n a_n x^n-sum_(n=0)^infinity 4a_n x^n=0. $
于是
$ cases(2a_2-4a_0=0,(n+1)(n+2)a_(n+2)-2(n+2)a_n=0 & n=1\,2\,dots), $
从而 $a_(n+2)=2/(n+1)a_n,n=1,2,dots$.

（Ⅱ）因为 $y(0)=a_0=0,y'(0)=a_1=1$，故
$ a_(2n)=0,n=0,1,2,dots, $
$ a_(2n+1)=2/(2n)a_(2n-1)=dots=2^n/(2n dot (2n-2) dots 4 dot 2)a_1=1/(n!),quad n=1,2,dots, $
从而
$ y=sum_(n=0)^infinity a_n x^n=sum_(n=0)^infinity a_(2n+1)x^(2n+1)=sum_(n=0)^infinity x^(2n+1)/(n!) \
=x sum_(n=0)^infinity (x^2)^n/(n!)=x e^(x^2),quad x in (-infinity,+infinity). $
]
]

#ezexam.question(label: n => [2007 数三 20])[
（本题满分10分）将函数 $f(x)=1/(x^2-3x-4)$ 展开成 $x-1$ 的幂级数，并指出其收敛区间.
#ezexam.solution(show-number: false)[
解　因为 $1/(x^2-3x-4)=1/5(1/(x-4)-1/(x+1))$，
$ 1/(x-4)=1/((x-1)-3)=-1/3 1/(1-(x-1)/3) \
=-1/3 sum_(n=0)^infinity ((x-1)/3)^n,quad x in (-2,4), $
$ 1/(x+1)=1/((x-1)+2)=1/2 1/(1+(x-1)/2) \
=1/2 sum_(n=0)^infinity (-(x-1)/2)^n,quad x in (-1,3), $
所以
$ 1/(x^2-3x-4)=-1/5 sum_(n=0)^infinity [1/3^(n+1)+(-1)^n/2^(n+1)](x-1)^n,quad x in (-1,3). $
]
]

