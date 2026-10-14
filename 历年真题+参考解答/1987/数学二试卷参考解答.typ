#import "../template.typ": exam, answer
#show: exam.with(year: 1987, subject: "二", title: "1987年全国硕士研究生入学统一考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 1987 数学二试卷参考解答

= 一、填空题

#answer("（1）")[
由重要极限公式，
$ "原式"=lim_(n->infinity)[(1-3/(n+1))^(-(n+1)/3)]^(-3n/(n+1))=e^(-3). $
]

#answer("（2）")[
由复合函数求导公式易得
$ y'=a/(1+a x), quad y''=-(a dot a)/(1+a x)^2=-a^2/(1+a x)^2. $
]

#answer("（3）")[
显见 $y_0=arctan 1=pi/4$，剩下只需求 $y'(1)$. 因为
$ y'(1)=1/(1+x^2)|_(x=1)=1/2, $
故斜率 $k_"切"=1/2$，$k_"法"=-2$.
所以切线、法线的方程分别为
$ y-pi/4=1/2(x-1); quad y-pi/4=-2(x-1). $
]

#answer("（4）")[
$ integral f'(x)dif x=f(x)+C; $
$ integral_a^b f'(2x)dif x=1/2 integral_a^b f'(2x)dif(2x)
=1/2 f(2x)|_a^b=1/2(f(2b)-f(2a)). $
]

#answer("（5）")[
积分中值定理的条件是“$f(x)$ 在 $[a,b]$ 上连续”，结论是“$exists xi in (a,b)$，使
$ integral_a^b f(x)dif x=f(xi)(b-a). $”
]

= 二、选择题

#answer("（1）")[
由于
$ f(-x)=abs(-x sin(-x))e^(cos(-x))=abs(x sin x)e^(cos x)=f(x), $
则 $f(x)$ 为偶函数，故应选 D.

注　本题主要考查函数的四个基本性质即单调性、偶性、周期性、有界性的概念.
]

#answer("（2）")[
注意到当 $n->infinity$ 时，
$ f(2n pi)=(2n pi)sin(2n pi)=0->0, $
$ f(pi/2+2n pi)=(pi/2+2n pi)dot 1->infinity, $
则 $f(x)$ 在 $(-infinity,+infinity)$ 内无界，但 $x->infinity$ 时，$f(x)$ 不是无穷大，也没有有限极限，故应选 C.

注　本题主要考查无穷大量、无穷变量、有界变量这三个基本概念. 这里应特别注意无穷大量和无界变量的关系及两者的区别，无穷大量一定是无界的，而无界变量不一定是无穷大量.
]

#answer("（3）")[
$ "原式"=lim_(x->0)([f(a+x)-f(a)]-[f(a-x)-f(a)])/x
=f'(a)+f'(a)=2f'(a). $
]

#answer("（4）")[
首先，积分值 $I$ 不依赖积分变量 $x$，由于被积函数中含有参量 $t$，故可先换元，令 $u=t x$，得
$ I=t integral_0^s f(u)dot (dif u)/t=integral_0^s f(u)dif u. $
可见 $I$ 依赖于 $s$ 而不依赖于 $t$，应选 D.
]

= 解答题

#answer("三、")[
$ (dif y)/(dif x)=y'_t/x'_t=(sin t)/(1-cos t), $
$ (dif^2 y)/(dif x^2)=(dif/(dif t)((sin t)/(1-cos t)))/((dif x)/(dif t)) $
$ = (cos t(1-cos t)-sin t dot sin t)/(1-cos t)^2 dot 1/(5(1-cos t))
=-1/(5(1-cos t)^2). $
]

#answer("四、")[
$ "原式"=lim_(x->0)(e^x-1-x)/(x(e^x-1))=lim_(x->0)(e^x-1-x)/x^2 $
$ =lim_(x->0)(e^x-1)/(2x)=lim_(x->0)x/(2x)=1/2. $

注　1. $x->0$ 时，$e^x-1~x$.

2. 利用等价无穷小代换，可以简化计算. 但应注意：等价无穷小代换可以用于乘除运算的各因式，而不能随意用于和差运算.

3. 应熟记 $x->0$ 时某些等价无穷小量，如
$ sin x~x, quad tan x~x, quad 1-cos x~x^2/2, $
$ sqrt(1-x)-1~-x/2, quad ln(1+x)~x, quad e^x-1~x, $
$ arcsin x~x, quad arctan x~x, quad (1+x)^alpha-1~alpha x $
等.
]

#answer("五、")[
（1）在 $(a,b)$ 内任取两不同点 $x_1,x_2$，根据拉格朗日公式
$ f(x_2)-f(x_1)=f'(xi)(x_2-x_1), quad xi "在" x_1 "与" x_2 "之间". $
因为 $f'(xi)>0$，所以当 $x_2>x_1$ 时 $f(x_2)>f(x_1)$，即 $f(x)$ 单增.

（2）因为
$ g''(c)=lim_(x->c)(g'(x)-g'(c))/(x-c)<0, $
故由极限的保号性，在 $c$ 的去心邻域内
$ (g'(x)-g'(c))/(x-c)<0. $
当 $x<c$ 时 $g'(x)>0$，当 $x>c$ 时 $g'(x)<0$，故 $g(c)$ 为极大值.
]

#answer("六、")[
当 $a=0,b!=0$ 时，
$ "原式"=1/b^2 integral (dif x)/(cos^2 x)=1/b^2 tan x+C; $
当 $a!=0,b=0$ 时，
$ "原式"=1/a^2 integral (dif x)/(sin^2 x)=-1/a^2 cot x+C; $
当 $a!=0,b!=0$ 时，
$ "原式"=integral 1/(a^2 tan^2 x+b^2)dot (dif x)/(cos^2 x) $
$ =1/(a b)integral (dif(a/b tan x))/(1+(a/b tan x)^2)
=1/(a b)arctan(a/b tan x)+C. $
]

#answer("七、")[
令 $x=sin t$，则 $dif x=cos t dif t$.
$ "原式"=1/2 integral_0^(pi/2)t sin(2t)dif t
=-1/4(t cos(2t)-1/2 sin(2t))|_0^(pi/2)=pi/8. $
]

#answer("八、")[
由于曲线上点 $(x,y)$ 处的切线斜率为 $y'=-2x$，切线方程为
$ Y-y=-2x(X-x); $
令 $Y=0$ 解得 $X=x+y/(2x)=x/2+1/(2x)$；

令 $X=0$ 解得 $Y=y+2x^2=1+x^2$；

所求的图形面积为
$ S=1/2(x/2+1/(2x))(1+x^2)-integral_0^1(1-x^2)dif x $
$ =x^3/4+x/2+1/(4x)-2/3. $
$ S'_x=3/4 x^2+1/2-1/(4x^2)=((x^2+1)(3x^2-1))/(4x^2). $
令 $S'_x=0$ 解得唯一驻点 $x=1/sqrt(3)$，而且 $S'_x$ 在该处由负变正，$x=1/sqrt(3)$ 是极小点也是最小点. 所求的切点为 $(1/sqrt(3),2/3)$，最小面积
$ S(1/sqrt(3))=4/9 sqrt(3)-2/3. $
#align(center)[#image("1987-数学二-切线面积.svg", width: 45%)]
]

#answer("九、")[
$ dif V=pi y^2 dif x=pi(1+sin x)^2 dif x, $
$ V=2pi integral_0^(pi/2)(1+sin x)^2 dif x quad ("图形关于" x=pi/2 "对称") $
$ =2pi integral_0^(pi/2)(1+2sin x+sin^2 x)dif x $
$ =2pi(pi/2+2dot 1+1/2 dot pi/2)=3/2 pi^2+4pi. $
#align(center)[#image("1987-数学二-旋转体.svg", width: 45%)]
]

#answer("十、")[
所给方程为一阶线性非齐次方程，其标准形式为
$ y'+1/x y=1. $
通解为
$ y=e^(-integral 1/x dif x)(integral 1dot e^(integral 1/x dif x)dif x+C)=x/2+C/x. $
代入初始条件，得 $sqrt(2)/2+C/sqrt(2)=0$，故 $C=-1$.

则所求解为 $y=x/2-1/x$.
]

#answer("十一、")[
特征方程 $r^2+2r+1=0$ 的两个根为 $r_1=r_2=-1$；非齐次项写成 $x e^(lambda x)$，则 $lambda=1$，它不是特征方程的根，设非齐次方程的特解为
$ Y=(a x+b)e^x, $
代入原方程并比较系数，得 $a=1/4,b=-1/4$，故所求通解为
$ y=(c_1+c_2 x)e^(-x)+1/4(x-1)e^x. $
]

