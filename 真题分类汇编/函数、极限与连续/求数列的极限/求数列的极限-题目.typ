#import "../../template.typ": collection
#show: collection.with(title: "求数列的极限分类汇编", subject: "求数列的极限")
#import "@preview/ezexam:0.3.1" as ezexam
#let choices = ezexam.choices.with(r-gap: 1.3em)
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)

= 历年真题：求数列的极限

*直接求值与递推数列*

#ezexam.question(label: n => [1987 数二 1（1）])[
$lim_(n->infinity)((n-2)/(n+1))^n=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [1990 数三 1（1）、数四 1（1）])[
极限 $lim_(n->infinity)(sqrt(n+3sqrt(n))-sqrt(n-sqrt(n)))=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [1993 数五 1（1）])[
$lim_(n arrow infinity)[sqrt(1+2+dots+n)-sqrt(1+2+dots+(n-1))]=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [1994 数三 3（3）])[
计算 $lim_(n arrow infinity)tan^n(pi/4+2/n)$.
]

#ezexam.question(label: n => [1995 数三 1（4）])[
$lim_(n arrow infinity)(1/(n^2+n+1)+2/(n^2+n+2)+dots+n/(n^2+n+n))=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [1996 数一 3（2）])[
设 $x_1=10$，$x_(n+1)=sqrt(6+x_n)$（$n=1,2,dots$），证明数列 ${x_n}$ 极限存在，并求此极限.
]

#ezexam.question(label: n => [1998 数一 7])[
求极限
$ lim_(n -> infinity) [frac(sin frac(pi,n),n+1)+frac(sin frac(2 pi,n),n+frac(1,2))+dots+frac(sin pi,n+frac(1,n))]. $
]

#ezexam.question(label: n => [1998 数三 1（1）、数四 1（1）])[
设曲线 $f(x)=x^n$ 在点 $(1,1)$ 处的切线与 $x$ 轴的交点为 $(xi_n,0)$，则 $lim_(n -> infinity) f(xi_n)=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [1998 数四 3])[
求 $lim_(n -> infinity)(n tan frac(1,n))^(n^2)$（$n$ 为自然数）.
]

#ezexam.question(label: n => [1999 数四 1（1）])[
设函数 $f(x)=a^x$（$a>0,a!=1$），则 $lim_(n->infinity) frac(1,n^2)ln[f(1)f(2)dots f(n)]=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [2002 数二 1（4）])[
$lim_(n->infinity) 1/n [sqrt(1+cos(pi/n))+sqrt(1+cos(2pi/n))+dots+sqrt(1+cos(n pi/n))]=$#fillin(len: 4em)[].
]

#ezexam.question(label: n => [2002 数二 8])[
设 $0<x_1<3,x_(n+1)=sqrt(x_n (3-x_n)) (n=1,2,dots)$，证明数列 $ {x_n} $ 的极限存在，并求此极限.
]

#ezexam.question(label: n => [2002 数三 1（1）、数四 1（1）])[
设常数 $a!=1/2$，则 $lim_(n->infinity) ln[(n-2n a+1)/(n(1-2a))]^n=$#fillin(len: 4em)[].
]

#ezexam.question(label: n => [2006 数一 16、数二 18])[
设数列 $\{x_n\}$ 满足 $0<x_1<pi,x_(n+1)=sin x_n (n=1,2,dots)$.

（Ⅰ）证明 $lim_(n->infinity)x_n$ 存在，并求该极限；

（Ⅱ）计算 $lim_(n->infinity)(x_(n+1)/x_n)^(1/x_n^2)$.
]

#ezexam.question(label: n => [2006 数三 1、数四 1])[
$lim_(n->infinity)((n+1)/n)^((-1)^n)=$#fillin(len: 4em)[].
]

#ezexam.question(label: n => [2008 数四 1])[
设 $0<a<b$，则 $lim_(n->infinity)(a^(-n)+b^(-n))^(1/n)=$（　）.
#choices([$a$], [$a^(-1)$], [$b$], [$b^(-1)$])
]

#ezexam.question(label: n => [2012 数二 10])[
$lim_(n->infinity)n(1/(1+n^2)+1/(2^2+n^2)+dots+1/(n^2+n^2))=$#fillin(len: 4em)[].
]

#ezexam.question(label: n => [2012 数二 21])[
（Ⅰ）证明方程 $x^n+x^(n-1)+dots+x=1$（$n$ 为大于1的整数）在区间 $(1/2,1)$ 内有且仅有一个实根；

（Ⅱ）记（Ⅰ）中的实根为 $x_n$，证明 $lim_(n->infinity)x_n$ 存在，并求此极限.
]

#ezexam.question(label: n => [2013 数一 9])[
设函数 $y=f(x)$ 由方程 $y-x=e^(x(1-y))$ 确定，则 $lim_(n->infinity)n[f(1/n)-1]=$#fillin(len: 4em)[].
]

#ezexam.question(label: n => [2013 数二 2])[
设函数 $y=f(x)$ 由方程 $cos(x y)+ln y-x=1$ 确定，则 $lim_(n->infinity)n[f(2/n)-1]=$
#choices([2.],[1.],[$-1$.],[$-2$.])
]

#ezexam.question(label: n => [2013 数二 20])[
设函数 $f(x)=ln x+1/x$.

（Ⅰ）求 $f(x)$ 的最小值；

（Ⅱ）设数列 $x_n$ 满足 $ln x_n+1/x_(n+1)<1$，证明 $lim_(n->infinity)x_n$ 存在，并求此极限.
]

#ezexam.question(label: n => [2013 数三 9])[
设曲线 $y=f(x)$ 与 $y=x^2-x$ 在点 $(1,0)$ 处有公共切线，则 $lim_(n->infinity)n f(n/(n+2))=$#fillin(len: 4em)[].
]

#ezexam.question(label: n => [2014 数二 20])[
设函数 $f(x)=x/(1+x),x in [0,1]$. 定义函数列：$f_1(x)=f(x),f_2(x)=f(f_1(x)),dots,f_n(x)=f(f_(n-1)(x)),dots$. 记 $S_n$ 是由曲线 $y=f_n(x)$、直线 $x=1$ 及 $x$ 轴所围平面图形的面积，求极限 $lim_(n->infinity)n S_n$.
]

#ezexam.question(label: n => [2016 数二 10、数三 10])[
极限 $lim_(n->infinity) 1/n^2 (sin 1/n+2sin 2/n+dots+n sin n/n)=$#fillin(len: 4em)[].
]

#ezexam.question(label: n => [2017 数一 16、数二 17、数三 17])[
求 $lim_(n->+infinity)sum_(k=1)^n k/n^2 ln(1+k/n)$.
]

#ezexam.question(label: n => [2018 数一 19、数二 21、数三 19])[
设数列 $\{x_n\}$ 满足：$x_1>0$，$x_n e^(x_(n+1))=e^(x_n)-1$（$n=1,2,dots$）. 证明 $\{x_n\}$ 收敛，并求 $lim_(n->infinity) x_n$.
]

*积分与极限综合*

#ezexam.question(label: n => [2002 数一 4])[
已知两曲线 $y=f(x)$ 与 $y=integral_0^(arctan x) e^(-t^2) dif t$ 在点 $(0,0)$ 处的切线相同，写出此切线方程，并求极限 $lim_(n->infinity) n f(2/n)$.
]

#ezexam.question(label: n => [2003 数二 2（2）])[
设 $a_n=3/2 integral_0^(n/(n+1)) x^(n-1) sqrt(1+x^n) dif x$，则极限 $lim_(n->infinity) n a_n$ 等于（　）.
#choices[$(1+e)^(3/2)+1$.][$(1+e^(-1))^(3/2)-1$.][$(1+e^(-1))^(3/2)+1$.][$(1+e)^(3/2)-1$.]
]

#ezexam.question(label: n => [2004 数二 9])[
$lim_(n->infinity) ln root(n,(1+1/n)^2(1+2/n)^2 dots (1+n/n)^2)$ 等于
#choices([$integral_1^2 ln^2 x dif x$.],[$2integral_1^2 ln x dif x$.],[$2integral_1^2 ln(1+x) dif x$.],[$integral_1^2 ln^2(1+x) dif x$.])
]

#ezexam.question(label: n => [2009 数二 11])[
$lim_(n->infinity)integral_0^1 e^(-x)sin(n x)dif x=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [2010 数一 17、数二 16、数三 18])[
（Ⅰ）比较 $integral_0^1|ln t[ln(1+t)]^n|dif t$ 与 $integral_0^1 t^n|ln t|dif t(n=1,2,dots)$ 的大小，说明理由；

（Ⅱ）记 $u_n=integral_0^1|ln t[ln(1+t)]^n|dif t(n=1,2,dots)$，求极限 $lim_(n->infinity)u_n$.
]

#ezexam.question(label: n => [2010 数一 4、数二 6])[
$lim_(n->infinity)sum_(i=1)^n sum_(j=1)^n n/((n+i)(n^2+j^2))=$
#choices([$integral_0^1 dif x integral_0^x 1/((1+x)(1+y^2))dif y$.],[$integral_0^1 dif x integral_0^x 1/((1+x)(1+y))dif y$.],[$integral_0^1 dif x integral_0^1 1/((1+x)(1+y))dif y$.],[$integral_0^1 dif x integral_0^1 1/((1+x)(1+y^2))dif y$.])
]

*极限与级数、概率统计综合*

#ezexam.question(label: n => [2005 数四 14])[
设 $X_1,X_2,dots,X_n,dots$ 为独立同分布的随机变量列，且均服从参数为 $lambda (lambda>1)$ 的指数分布，记 $Phi(x)$ 为标准正态分布函数，则
#choices([$lim_(n->infinity)P{(sum_(i=1)^n X_i-n lambda)/(lambda sqrt(n))<=x}=Phi(x)$.],[$lim_(n->infinity)P{(sum_(i=1)^n X_i-n lambda)/sqrt(n lambda)<=x}=Phi(x)$.],[$lim_(n->infinity)P{(lambda sum_(i=1)^n X_i-n)/sqrt(n)<=x}=Phi(x)$.],[$lim_(n->infinity)P{(sum_(i=1)^n X_i-lambda)/sqrt(n lambda)<=x}=Phi(x)$.])
]

#ezexam.question(label: n => [2014 数一 19])[
设数列 $a_n,b_n$ 满足 $0<a_n<pi/2,0<b_n<pi/2,cos a_n-a_n=cos b_n$，且级数 $sum_(n=1)^infinity b_n$ 收敛.

（Ⅰ）证明 $lim_(n->infinity)a_n=0$；

（Ⅱ）证明级数 $sum_(n=1)^infinity a_n/b_n$ 收敛.
]

#ezexam.question(label: n => [2014 数一 23])[
设总体 $X$ 的分布函数为 $F(x;theta)=cases(1-e^(-x^2/theta) & x>=0,0 & x<0)$，其中 $theta$ 是未知参数且大于零，$X_1,X_2,dots,X_n$ 为来自总体 $X$ 的简单随机样本.

（Ⅰ）求 $E X$ 与 $E X^2$；

（Ⅱ）求 $theta$ 的最大似然估计量 $hat(theta)_n$；

（Ⅲ）是否存在实数 $a$，使得对任何 $epsilon>0$，都有 $lim_(n->infinity)P{|hat(theta)_n-a|>=epsilon}=0$？
]

