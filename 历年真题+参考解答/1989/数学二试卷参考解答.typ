#import "../template.typ": exam, answer
#show: exam.with(year: 1989, subject: "二", title: "1989年全国硕士研究生入学统一考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 1989 数学二试卷参考解答

= 一、填空题

#answer("（1）")[
$ lim_(x->0)x cot(2x)=1/2 lim_(x->0)(2x)/(sin(2x))dot cos(2x)=1/2. $
]

#answer("（2）")[
$ integral_0^pi t sin t dif t=integral_0^pi t dif(-cos t) $
$ =-t cos t|_0^pi+integral_0^pi cos t dif t=pi+0=pi. $
]

#answer("（3）")[
分析　先求导得切线斜率，再用点斜式方程得切线方程.

解　曲线在 $(0,0)$ 处切线的斜率为
$ y'|_(x=0)=(x-1)(x-2)|_(x=0)=2. $
因而曲线在 $(0,0)$ 处的切线方程为 $y-0=2(x-0)$，即 $y=2x$.
]

#answer("（4）")[
解法一　多项式 $f(x)$ 的一次项为 $n!x$，故 $f'(0)=n!$.

解法二　由导数的四则运算法则得
$ f'(x)=(x+1)(x+2)dots(x+n)+x(x+2)(x+3)dots(x+n) $
$ quad +dots+x(x+1)(x+2)dots(x+n-1), $
只有第一项不含因子 $x$，故 $f'(0)=n!$.

解法三　由导数定义有
$ f'(0)=lim_(x->0)(f(x)-f(0))/x=lim_(x->0)(x+1)(x+2)dots(x+n)=n!. $
]

#answer("（5）")[
设 $integral_0^1 f(t)dif t=a$，则 $f(x)=x+2a$；积分得
$ a=integral_0^1 x dif x+2a=1/2+2a, $
故 $a=-1/2$，$f(x)=x-1$.

注　此题考察“定积分 $integral_a^b f(x)dif x$ 是一常数”.
]

#answer("（6）")[
$ f_-(0)=f(0)=a, quad f_+(0)=lim_(x->0^+)(sin(b x))/x=b. $
故 $a=b$.
]

#answer("（7）")[
解法一　$tan y=x+y$，即 $y=arctan(x+y)$，两边微分，得
$ dif y=1/(1+(x+y)^2)(dif x+dif y), $
从而
$ [1-1/(1+(x+y)^2)]dif y=1/(1+(x+y)^2)dif x, $
故 $dif y=1/(x+y)^2 dif x$.

解法二　在 $tan y=x+y$ 两边求微分，得 $sec^2 y dif y=dif x+dif y$.
所以
$ dif y=1/(sec^2 y-1)dif x=1/(tan^2 y)dif x=1/(x+y)^2 dif x. $
]

= 二、选择题

#answer("（1）")[
因 $lim_(x->0)x sin(1/x)=0$，$lim_(x->infinity)x sin(1/x)=1$，所以选 A.
]

#answer("（2）")[
$ f(x)=x^5+2a x^3+3b x+4c$ 是奇次的，故方程 $f(x)=0$ 至少有一实根.

$f'(x)=5x^4+6a x^2+3b$ 的判别法
$ Delta=12(3a^2-5b)<0, $
故 $f'(x)>0$，所以 $f(x)$ 严格单调增加，方程 $f(x)=0$ 有根必唯一，故选 B.
]

#answer("（3）")[
$ V=pi integral_(-pi/2)^(pi/2)y^2 dif x=pi integral_(-pi/2)^(pi/2)cos^2 x dif x $
$ =2pi integral_0^(pi/2)cos^2 x dif x=2pi dot 1/2 dot pi/2=pi^2/2. $
应选 C.
]

#answer("（4）")[
取 $f(x)=g(x)=-x^2$，而 $f(x)g(x)=x^4$ 取了极小值；而
$ phi(x)=f(x)g(x)=-x^2(1-x^2) $
在 $x=0$ 处仍然取得了极大值. 这是因为
$ phi(x)=-x^2+x^4, quad phi'(x)=-2x+4x^3, quad phi''(x)=-2+12x^2. $
在驻点 $x=0$ 处 $phi''(0)=-2<0$，即取极大值. 于是也排除了 B. 故选 D.
]

#answer("（5）")[
特征方程的两个根是 $r_1=1,r_2=-1$.

$y''-y=e^x$ 有特解 $Y_1=x dot a e^x$，$y''-y=1$ 有特解 $Y_2=b$.

由叠加原理，原方程必有特解
$ Y=Y_1+Y_2=a x e^x+b. $
应选 B.
]

#answer("（6）")[
观察 D，与导数定义最接近，事实上
$ lim_(h->0)(f(a)-f(a-h))/h=lim_(-h->0)(f(a-h)-f(a))/(-h)=f'(a), $
故选 D.

A 只能保证 $f'_+(a)$ 存在. B 和 C 可用如下反例说明错误：

设 $f(x)=cases(1 & x!=a,0 & x=a)$，则 $f(x)$ 在 $x=a$ 间断，因此 $f(x)$ 在 $x=a$ 不可导，但 B 和 C 中的极限均存在.
]

= 三、

#answer("（1）")[
$ y'=1/sqrt(1-e^(-2sqrt(x)))dot e^(-sqrt(x))(-1/(2sqrt(x))) $
$ =-1/2 dot 1/sqrt(x) dot e^(-sqrt(x))/sqrt(1-e^(-2sqrt(x))). $
]

#answer("（2）")[
令 $t=ln x$，则 $dif t=(dif x)/x$，
$ "原式"=integral (dif t)/t^2=-1/t+C=-1/(ln x)+C. $
]

#answer("（3）")[
解法一
$ 2sin x+cos x=1+(2sin x+cos x-1), $
$ lim_(x->0)(2sin x+cos x-1)/x=lim_(x->0)(2(sin x)/x+(cos x-1)/x)=2. $
故
$ "原式"=lim_(x->0)[1+(2sin x+cos x-1)]^(1/(2sin x+cos x-1) dot (2sin x+cos x-1)/x)=e^2. $

解法二
$ lim_(x->0)(2sin x+cos x)^(1/x)=lim_(x->0)e^((ln(2sin x+cos x))/x) $
$ =e^(lim_(x->0)(2cos x-sin x)/(2sin x+cos x))=e^2. $
]

#answer("（4）")[
$ (dif y)/(dif x)=y'_t/x'_t=1/(1+t^2)/(2t/(1+t^2))=1/(2t); $
$ (dif^2 y)/(dif x^2)=(dif/(dif t)(1/(2t)))/((dif x)/(dif t)) $
$ =-1/(2t^2)/(2t/(1+t^2))=-(1+t^2)/(4t^3). $
]

#answer("（5）")[
分析　被积函数中若出现 $f(x)$ 的导数，则一般采用分部积分法.

解
$ integral_0^1 x^2 f''(2x)dif x=1/2 integral_0^1 x^2 dif f'(2x) $
$ =1/2 x^2 f'(2x)|_0^1-integral_0^1 x f'(2x)dif x=-1/2 integral_0^1 x dif f(2x) $
$ =-1/2 x f(2x)|_0^1+1/2 integral_0^1 f(2x)dif x $
$ =-1/4+1/4 integral_0^2 f(t)dif t=0. $
]

= 解答题

#answer("四、")[
所给方程为一阶线性非齐次方程，标准形式为
$ y'+(1/x-1)y=1/x e^(2x), $
通解为
$ y=e^(-integral(1/x-1)dif x)(integral 1/x e^(2x)dot e^(integral(1/x-1)dif x)dif x+C) $
$ =e^x/x(integral e^x dif x+C)=e^x/x(e^x+C). $
代入初始条件 $y(1)=0$，得 $C=-e$，则所求解为 $y=e^x/x(e^x-e)$.
]

#answer("五、")[
原方程即为
$ f(x)=sin x-x integral_0^x f(t)dif t+integral_0^x t f(t)dif t. $（1）
两边求导，得
$ f'(x)=cos x-integral_0^x f(t)dif t-x f(x)+x f(x). $（2）
再求导，得 $f''(x)=-sin x-f(x)$.

此为常系数二阶非齐次线性方程.

特征方程 $r^2+1=0$ 的两个根 $r_1,r_2=+-i$；右边的 $-sin x$ 可看作 $-"Im"(e^(i x))$，$lambda=i$ 是特征根，设非齐次解
$ Y=x dot a sin x+x dot b cos x, $
代入方程并比较系数，得 $a=0,b=1/2$，因而通解为
$ y=c_1 cos x+c_2 sin x+x/2 cos x. $
又注意到由（1）、（2）有 $f(0)=0,f'(0)=1$，由此初始条件可确定 $c_1=0,c_2=1/2$，所求函数为
$ f(x)=1/2 sin x+x/2 cos x. $
]

#answer("六、")[
因为
$ integral_0^pi sqrt(1-cos(2x))dif x=integral_0^pi sqrt(2)abs(sin x)dif x $
$ =integral_0^pi sqrt(2)sin x dif x=2sqrt(2). $
所以原方程可变为 $ln x=x/e-2sqrt(2)$.

作辅助函数 $F(x)=ln x-x/e+2sqrt(2)$.
令 $F'(x)=1/x-1/e=0=>x_0=e$.

又 $e^(-3)<e<e^4$，$F(e^(-3))<0,F(e)=2sqrt(2)>0,F(e^4)<0$.

由闭区间上连续函数的零点定理，$F(x)$ 在 $(e^(-3),e)$ 与 $(e,e^4)$ 内分别至少有一个零点；再由当 $0<x<e$ 时，$F'(x)>0$，$F(x)$ 单调递增；当 $e<x<+infinity$ 时，$F'(x)<0$，$F(x)$ 单调递减. 所以 $F(x)$ 在这两个区间内各至多有一个零点.

综上所述，题设方程在 $(0,+infinity)$ 内有且仅有2个不同实根，得证.

注　事实上，本题只须给出 $integral_0^pi sqrt(1-cos(2x))dif x>0$ 即可，而不必算出其值.
]

#answer("七、")[
$ y=1/x+1/x^2, quad y'=-1/x^2-2/x^3=-(x+2)/x^3, $
$ y''=2/x^3+6/x^4=(2(x+3))/x^4. $
令 $y'=0$，得 $x=-2$；令 $y''=0$，得 $x=-3$.
列表讨论如下：
#table(columns: 5, stroke: 0.4pt,
[$x$],[$(-infinity,-3)$],[$(-3,-2)$],[$(-2,0)$],[$(0,+infinity)$],
[$y'$],[$-$],[$-$],[$+$],[$-$],
[$y''$],[$-$],[$+$],[$+$],[$+$])
可见函数在 $(-2,0)$ 单调增，在 $(-infinity,-2)union(0,+infinity)$ 单调减；在 $(-3,0)union(0,+infinity)$ 凹，在 $(-infinity,-3)$ 凸；在 $x=-2$ 取极小值 $y=-1/4$，而拐点为 $(-3,-2/9)$.

又 $lim_(x->0)y=+infinity$，$x=0$ 是铅直渐近线；$lim_(x->+-infinity)y=0$，$y=0$ 是水平渐近线.
]

#answer("八、")[
由曲线过 $(0,0)$，$c=0$. 由面积
$ integral_0^1 y dif x=integral_0^1(a x^2+b x)dif x=1/3, $
有 $a/3+b/2=1/3$.

旋转体体积
$ V=pi integral_0^1(a x^2+b x)^2 dif x=pi(a^2/5+(a b)/2+b^2/3), $
以 $b=2/3(1-a)$ 代入消去 $b$，得
$ V=pi[1/5 a^2+1/3 a(1-a)+4/27(1-a)^2]. $
$ (dif V)/(dif a)=pi[2/5 a+1/3(1-a)-1/3 a-8/27(1-a)] $
$ =pi 4/27(1/5 a+1). $
由 $(dif V)/(dif a)=0$ 解得唯一驻点 $a=-5/4$，又 $(dif^2 V)/(dif a^2)=4/135 pi>0$，$a=-5/4$ 为极小点也是最小点；这时 $b=3/2$. 故当 $a=-5/4,b=3/2,c=0$ 时体积 $V$ 最小.
]

