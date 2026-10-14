#import "../template.typ": exam, answer
#show: exam.with(year: 1991, subject: "三", title: "1991年全国工学、经济学硕士研究生入学考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#import "@preview/cetz:0.5.2" as cetz
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 1991 数学三试卷参考解答

= 一、填空题

#answer("1（1）")[
由复合函数求导法则，$dif y=-(3^(-x)ln 3)/(1+3^(-x))dif x$.
]

#answer("1（2）")[
$y''=(4x^2-2)e^(-x^2)$.向上凸即 $y''<0$，故所求区间为 $(-sqrt(2)/2,sqrt(2)/2)$.
]

#answer("1（3）")[
分部积分得 $integral_1^R (ln x)/x^2 dif x=1-(ln R+1)/R$，令 $R arrow +infinity$，得答案为1.
]

#answer("1（4）")[
该时间段内速度非负，路程为
$ integral_sqrt(pi/2)^sqrt(pi)t sin(t^2)dif t=1/2 integral_(pi/2)^pi sin u dif u=1/2. $
]

#answer("1（5）")[
分子、分母同除以 $e^(1/x)$，得 $(e^(-1/x)-1)/(x e^(-1/x)+1) arrow -1$.
]

= 二、选择题

#answer("2（1）")[
*D.* 由过点条件得 $a+b=-2$.对隐函数求导，$2y'=y^3+3x y^2 y'$，在 $(1,-1)$ 处斜率为1.故 $2+a=1$，从而 $a=b=-1$.
]

#answer("2（2）")[
*B.* 当 $0<=x<=1$ 时，$F(x)=x^3/3$；当 $1<x<=2$ 时，$F(x)=integral_0^1 t^2 dif t+integral_1^x(2-t)dif t=-7/6+2x-x^2/2$.
]

#answer("2（3）")[
*B.* 在 $x_0$ 的某邻域内 $f(x)<=f(x_0)$，故在 $-x_0$ 的相应邻域内 $-f(-x)>=-f(x_0)$.极值点不一定可导，也不一定是全局最大值点.
]

#answer("2（4）")[
*D.* 当 $x arrow plus.minus infinity$ 时 $y arrow 1$；当 $x arrow 0$ 时 $y arrow +infinity$.故水平渐近线为 $y=1$，铅直渐近线为 $x=0$.
]

#answer("2（5）")[
*A.* 细杆位于 $[-l,0]$，质点位于 $x=a$.坐标为 $x$ 的质量元为 $mu dif x$，距质点 $a-x$，其引力为 $(k m mu)/(a-x)^2 dif x$，沿细杆积分即得A项.
]

= 解答题

#answer("三（1）")[
由参数方程求导公式，
$ (dif y)/(dif x)=(sin t+t cos t)/(cos t-t sin t), $
$ (dif^2 y)/(dif x^2)=1/(cos t-t sin t) dif/(dif t)((sin t+t cos t)/(cos t-t sin t))
=(2+t^2)/(cos t-t sin t)^3. $
]

#answer("三（2）")[
令 $t=sqrt(x)$，则 $x=t^2$，$dif x=2t dif t$，所以
$ I=2 integral_1^2 (dif t)/(t(1+t))=2 integral_1^2(1/t-1/(1+t))dif t=2ln(4/3). $
]

#answer("三（3）")[
*解一* 由 $e^x-1 tilde.eq x$，并用洛必达法则，得
$ lim_(x arrow 0)(x-sin x)/(x^2(e^x-1))=lim_(x arrow 0)(x-sin x)/x^3
=lim_(x arrow 0)(1-cos x)/(3x^2)=1/6. $
*解二* 对原式连续使用三次洛必达法则，最后得到
$ lim_(x arrow 0)(cos x)/(6e^x+6x e^x+x^2 e^x)=1/6. $
]

#answer("三（4）")[
先用半角公式，再分部积分：
$ integral x sin^2 x dif x=1/2 integral x(1-cos(2x))dif x
=x^2/4-x/4 sin(2x)-1/8 cos(2x)+C. $
]

#answer("三（5）")[
*解一* 齐次方程通解为 $y=C/x$.用常数变易法设 $y=C(x)/x$，代入得 $C'(x)=x e^x$，故 $C(x)=(x-1)e^x+C_1$.由 $y(1)=1$，得 $C_1=1$.

*解二* 方程化为 $y'+y/x=e^x$，积分因子为 $x$，于是 $(x y)'=x e^x$.积分并代入初始条件，同得
$ y=((x-1)e^x+1)/x. $
]

#answer("四、")[
*证一* 令 $F(x)=(1+x)ln(1+x)-x ln x$，则 $F'(x)=ln(1+1/x)>0$.又 $F(1)=2ln 2>0$，故当 $x>1$ 时 $F(x)>0$.除以正数 $(1+x)ln x$ 即得结论.

*证二* 令 $g(x)=x ln x$，在 $x>1$ 时 $g'(x)=1+ln x>0$，所以 $g(1+x)>g(x)$，即 $(1+x)ln(1+x)>x ln x$，从而得证.
]

#answer("五、")[
齐次方程通解为 $C_1 cos x+C_2 sin x$.方程 $y''+y=x$ 的一个特解为 $y_1=x$.对 $y''+y=cos x$，设 $y_2=E x cos x+D x sin x$，代入比较系数得 $E=0,D=1/2$.所以通解为
$ y=C_1 cos x+C_2 sin x+x+x/2 sin x. $
]

#answer("六、")[
在 $[1,2]$ 上，$y<=0$.用柱壳法，
$ V=2pi integral_1^2 x abs(y)dif x=-2pi integral_1^2 x(x-1)(x-2)dif x=pi/2. $
]

#answer("七、")[
设 $B,C$ 的横坐标分别为 $x_1,x$.由高度比得 $e^(x_1)=2e^(-2x)$，所以 $x_1=ln 2-2x$，$B C=3x-ln 2$.面积为
$ S(x)=3/2(3x-ln 2)e^(-2x), quad S'(x)=3/2(3-6x+2ln 2)e^(-2x). $
驻点为 $x=1/2+(ln 2)/3$.导数在该点左侧为正、右侧为负，且该点满足题设条件，故为最大值点.

所求横坐标为 $x_B=(ln 2)/3-1$，$x_C=1/2+(ln 2)/3$.
]

#answer("八、")[
*解一* 将函数关系代入并令 $t=x-pi$，得
$ I=integral_pi^(3pi)[f(x-pi)+sin x]dif x=integral_0^(2pi) f(t)dif t. $
再将 $[pi,2pi]$ 上的积分用关系式展开，有
$ I=integral_0^pi t dif t+integral_pi^(2pi)[f(t-pi)+sin t]dif t
=pi^2/2+pi^2/2-2=pi^2-2. $
*解二* 分段写为 $f(x)=cases(x-pi+sin x&pi<=x<2pi,x-2pi&2pi<=x<3pi)$，直接积分得
$ I=integral_pi^(2pi)(x-pi+sin x)dif x+integral_(2pi)^(3pi)(x-2pi)dif x=pi^2-2. $
]

