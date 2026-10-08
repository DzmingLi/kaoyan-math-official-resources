#import "../template.typ": exam
#show: exam.with(year: 1999, subject: "二", title: "1999年全国硕士研究生入学考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(true)


= 一、填空题（本题共5小题，每小题3分，满分15分）
#ezexam.counter-question.step()

（1）曲线 $cases(x=e^t sin 2t,y=e^t cos t)$ 在点 $(0,1)$ 处的法线方程为 #fillin(len: 3em)[].
#ezexam.solution(show-number: false)[
$y+2x-1=0$.
]

（2）设函数 $y=y(x)$ 由方程 $ln(x^2+y)=x^3 y+sin x$ 确定，则 $frac(dif y,dif x)|_(x=0)=$ #fillin(len: 3em)[].
#ezexam.solution(show-number: false)[
1.
]

（3）$integral frac(x+5,x^2-6x+13)dif x=$ #fillin(len: 3em)[].
#ezexam.solution(show-number: false)[
$frac(1,2)ln(x^2-6x+13)+4arctan frac(x-3,2)+C$（$C$ 为任意常数）.
]

（4）函数 $y=frac(x^2,sqrt(1-x^2))$ 在区间 $[frac(1,2),frac(sqrt(3),2)]$ 上的平均值为 #fillin(len: 3em)[].
#ezexam.solution(show-number: false)[
$frac(sqrt(3)+1,12)pi$.
]

（5）微分方程 $y''-4y=e^(2x)$ 的通解为 #fillin(len: 3em)[].
#ezexam.solution(show-number: false)[
$y=C_1 e^(-2x)+(C_2+frac(1,4)x)e^(2x)$（$C_1,C_2$ 为任意常数）.
]

= 二、选择题（本题共5小题，每小题3分，满分15分）
#ezexam.counter-question.step()

（1）设 $f(x)=cases(frac(1-cos x,sqrt(x)) & quad x>0,x^2 g(x) & quad x<=0)$，其中 $g(x)$ 是有界函数，则 $f(x)$ 在 $x=0$ 处（　）.
#choices[极限不存在.][极限存在，但不连续.][连续，但不可导.][可导.]
#ezexam.solution(show-number: false)[
D.
]

（2）设 $alpha(x)=integral_0^(5x) frac(sin t,t)dif t$，$beta(x)=integral_0^(sin x)(1+t)^(frac(1,t))dif t$，则当 $x -> 0$ 时，$alpha(x)$ 是 $beta(x)$ 的（　）.
#choices[高阶无穷小.][低阶无穷小.][同阶但不等价的无穷小.][等价无穷小.]
#ezexam.solution(show-number: false)[
C.
]

（3）设 $f(x)$ 是连续函数，$F(x)$ 是 $f(x)$ 的原函数，则（　）.
#choices[当 $f(x)$ 是奇函数时，$F(x)$ 必是偶函数.][当 $f(x)$ 是偶函数时，$F(x)$ 必是奇函数.][当 $f(x)$ 是周期函数时，$F(x)$ 必是周期函数.][当 $f(x)$ 是单调增函数时，$F(x)$ 必是单调增函数.]
#ezexam.solution(show-number: false)[
A.
]

（4）“对任意给定的 $epsilon in (0,1)$，总存在正整数 $N$，当 $n>=N$ 时，恒有 $|x_n-a|<=2epsilon$”是数列 $ {x_n} $ 收敛于 $a$ 的（　）.
#choices[充分条件但非必要条件.][必要条件但非充分条件.][充分必要条件.][既非充分条件又非必要条件.]
#ezexam.solution(show-number: false)[
C.
]

（5）记行列式
$ mat(delim:"|",x-2,x-1,x-2,x-3;2x-2,2x-1,2x-2,2x-3;3x-3,3x-2,4x-5,3x-5;4x,4x-3,5x-7,4x-3) $
为 $f(x)$，则方程 $f(x)=0$ 的根的个数为（　）.
#choices[1.][2.][3.][4.]
#ezexam.solution(show-number: false)[
B.
]

#ezexam.question(label: n => [三、])[
（本题满分5分）

求 $lim_(x -> 0) frac(sqrt(1+tan x)-sqrt(1+sin x),x ln(1+x)-x^2)$.
#ezexam.solution(show-number: false)[
$ "原式"&=lim_(x -> 0){frac(tan x-sin x,x[ln(1+x)-x])dot frac(1,sqrt(1+tan x)+sqrt(1+sin x))} \
&=frac(1,2)lim_(x -> 0) frac(1-cos x,ln(1+x)-x) quad "（3分）" \
&=frac(1,2)lim_(x -> 0) frac(sin x,-frac(x,1+x))=-frac(1,2). quad "（5分）" $
]


]

#ezexam.question(label: n => [四、])[
（本题满分6分）

计算 $integral_1^(+infinity) frac(arctan x,x^2)dif x$.
#ezexam.solution(show-number: false)[
$ "原式"&=-integral_1^(+infinity) arctan x dif(frac(1,x)) \
&=-frac(1,x)arctan x|_1^(+infinity)+integral_1^(+infinity) frac(1,x(1+x^2))dif x \
&=frac(pi,4)+lim_(b -> +infinity)integral_1^b (frac(1,x)-frac(x,1+x^2))dif x quad "（2分）" \
&=frac(pi,4)+lim_(b -> +infinity)[ln b-frac(1,2)ln(1+b^2)+frac(1,2)ln 2] \
&=frac(pi,4)+frac(1,2)ln 2+lim_(b -> +infinity)ln frac(b,sqrt(1+b^2)) quad "（4分）" \
&=frac(pi,4)+frac(1,2)ln 2. quad "（6分）" $
]


]

#ezexam.question(label: n => [五、])[
（本题满分7分）

求初值问题 $cases((y+sqrt(x^2+y^2))dif x-x dif y=0 quad (x>0),y|_(x=1)=0)$ 的解.
#ezexam.solution(show-number: false)[
原方程可化为 $frac(dif y,dif x)=frac(y+sqrt(x^2+y^2),x)$，令 $y=x u$，得
$ u+x frac(dif u,dif x)=u+sqrt(1+u^2), quad "（3分）" $
即 $frac(dif u,sqrt(1+u^2))=frac(dif x,x)$.解得
$ ln(u+sqrt(1+u^2))=ln(C x), quad "（5分）" $
其中 $C>0$ 为任意常数，从而 $u+sqrt(1+u^2)=C x$，即 $frac(y,x)+sqrt(1+frac(y^2,x^2))=C x$，亦即
$ y+sqrt(x^2+y^2)=C x^2. quad "（6分）" $
将 $y|_(x=1)=0$ 代入，得 $C=1$，故初值问题的解为 $y+sqrt(x^2+y^2)=x^2$，化简得
$ y=frac(1,2)x^2-frac(1,2). quad "（7分）" $
注：不化简不扣分.
]


]

#ezexam.question(label: n => [六、])[
（本题满分7分）

为清除井底的污泥，用缆绳将抓斗放入井底，抓起污泥后提出井口（见图）.已知井深30 m，抓斗自重400 N，缆绳每米重50 N，抓斗抓起的污泥重2000 N，提升速度为3 m/s，在提升过程中，污泥以20 N/s的速率从抓斗缝隙中漏掉.现将抓起污泥的抓斗提升至井口，问克服重力需作多少焦耳的功？

（说明：①1 N × 1 m = 1 J；m、N、s、J分别表示米、牛顿、秒、焦耳.②抓斗的高度及位于井口上方的缆绳长度忽略不计.）
#import "@preview/cetz:0.5.2"
#let well-diagram(axis: false) = cetz.canvas({
 import cetz.draw: *
 set-style(stroke:0.6pt)
 line((-1.3,3),(0,3),(0,0),(0.8,0),(0.8,3),(1.1,3))
 for y in range(0,16) {let t=y*0.2; line((-0.1,t),(0,t+0.1));line((0.8,t),(0.9,t+0.1))}
 circle((-0.9,3.45),radius:0.22);circle((0.1,3.45),radius:0.22)
 line((-1.08,3),(-0.9,3.45),(-0.72,3));line((-0.25,3),(0.1,3.45))
 line((-0.9,3.67),(0.1,3.67));line((0.32,3.45),(0.32,1.65))
 line((0.16,1.65),(0.48,1.65),(0.58,1.35),(0.06,1.35),close:true)
 for x in (0.22,0.32,0.42) {line((x,1.48),(x,0.95),stroke:(dash:"dashed"))}
 if axis {
  line((1.45,0),(1.45,3.6),mark:(end:">"));content((1.52,3.75),$x$)
  for (y,t) in ((0,[$0$]),(1.5,[$x$]),(1.75,[$x+dif x$]),(3,[$30$])) {
   line((1.4,y),(1.5,y));content((1.8,y),t)
  }
 }
})
#well-diagram()
#ezexam.solution(show-number: false)[
作 $x$ 轴如图所示，将抓起污泥的抓斗提升至井口需作功 $w=w_1+w_2+w_3$，其中 $w_1$ 是克服抓斗自重所作的功；$w_2$ 是克服缆绳重力所作的功；$w_3$ 为提出污泥所作的功.
#well-diagram(axis: true)
由题意知
$ w_1=400times 30=12000. quad "（1分）" $
将抓斗由 $x$ 处提升到 $x+dif x$ 处，克服缆绳重力所作的功为 $dif w_2=50(30-x)dif x$，从而
$ w_2=integral_0^30 50(30-x)dif x=22500. quad "（3分）" $
在时间间隔 $[t,t+dif t]$ 内提升污泥需作功为 $dif w_3=3(2000-20t)dif t$，将污泥从井底提升至井口共需时间 $frac(30,3)=10$，所以
$ w_3=integral_0^10 3(2000-20t)dif t=57000. quad "（6分）" $
因此，共需作功
$ w=12000+22500+57000=91500 quad ("J"). quad "（7分）" $
]


]

#ezexam.question(label: n => [七、])[
（本题满分8分）

已知函数 $y=frac(x^3,(x-1)^2)$，求

（1）函数的增减区间及极值；

（2）函数图形的凹凸区间及拐点；

（3）函数图形的渐近线.
#ezexam.solution(show-number: false)[
所给函数的定义域为 $(-infinity,1)union(1,+infinity)$.

$y'=frac(x^2(x-3),(x-1)^3)$，令 $y'=0$，得驻点 $x=0$ 及 $x=3$. （1分）

$y''=frac(6x,(x-1)^4)$，令 $y''=0$，得 $x=0$. （2分）

列表讨论如下：
#table(columns:7, [$x$], [$(-infinity,0)$], [0], [$(0,1)$], [$(1,3)$], [3], [$(3,+infinity)$], [$y'$], [$+$], [0], [$+$], [$-$], [0], [$+$], [$y''$], [$-$], [0], [$+$], [$+$], [$+$], [$+$], [$y$], [$arrow.tr$], [拐点], [$arrow.tr$], [$arrow.br$], [极小值], [$arrow.tr$])
由此可知：（1）函数的单调增加区间为 $(-infinity,1)$ 和 $(3,+infinity)$，单调减少区间为 $(1,3)$； （3分）

极小值为 $y|_(x=3)=frac(27,4)$. （4分）

（2）函数图形在区间 $(-infinity,0)$ 内是（向上）凸的，在区间 $(0,1)$、$(1,+infinity)$ 内是（向上）凹的，拐点为点 $(0,0)$. （6分）

（3）由 $lim_(x -> 1)frac(x^3,(x-1)^2)=+infinity$ 知，$x=1$ 是函数图形的铅直渐近线； （7分）

又
$ lim_(x -> infinity)frac(y,x)=lim_(x -> infinity)frac(x^2,(x-1)^2)=1, \
lim_(x -> infinity)(y-x)=lim_(x -> infinity)[frac(x^3,(x-1)^2)-x]=2, $
故 $y=x+2$ 是函数图形的斜渐近线. （8分）
]


]

#ezexam.question(label: n => [八、])[
（本题满分8分）

设函数 $f(x)$ 在闭区间 $[-1,1]$ 上具有三阶连续导数，且 $f(-1)=0,f(1)=1,f'(0)=0$，证明：在开区间 $(-1,1)$ 内至少存在一点 $xi$，使 $f'''(xi)=3$.
#ezexam.solution(show-number: false)[
由麦克劳林公式得
$ f(x)=f(0)+f'(0)x+frac(1,2!)f''(0)x^2+frac(1,3!)f'''(eta)x^3, $
其中 $eta$ 介于0与 $x$ 之间，$x in [-1,1]$. （1分）

分别令 $x=-1$ 和 $x=1$，并结合已知条件，得
$ 0=f(-1)=f(0)+frac(1,2)f''(0)-frac(1,6)f'''(eta_1), quad -1<eta_1<0, \
1=f(1)=f(0)+frac(1,2)f''(0)+frac(1,6)f'''(eta_2), quad 0<eta_2<1. quad "（4分）" $
两式相减，可得
$ f'''(eta_1)+f'''(eta_2)=6. quad "（5分）" $
由 $f'''(x)$ 的连续性，$f'''(x)$ 在闭区间 $[eta_1,eta_2]$ 上有最大值和最小值，设它们分别为 $M$ 和 $m$，则有
$ m<=frac(1,2)[f'''(eta_1)+f'''(eta_2)]<=M. quad "（6分）" $
再由连续函数的介值定理知，至少存在一点 $xi in [eta_1,eta_2]subset(-1,1)$，使
$ f'''(xi)=frac(1,2)[f'''(eta_1)+f'''(eta_2)]=3. quad "（8分）" $
]


]

#ezexam.question(label: n => [九、])[
（本题满分8分）

设函数 $y(x)$（$x>=0$）二阶可导，且 $y'(x)>0,y(0)=1$.过曲线 $y=y(x)$ 上任意一点 $P(x,y)$ 作该曲线的切线及 $x$ 轴的垂线，上述两直线与 $x$ 轴所围成的三角形的面积记为 $S_1$，区间 $[0,x]$ 上以 $y=y(x)$ 为曲边的曲边梯形面积记为 $S_2$，并设 $2S_1-S_2$ 恒为1，求此曲线 $y=y(x)$ 的方程.
#ezexam.solution(show-number: false)[
曲线 $y=y(x)$ 上点 $P(x,y)$ 处的切线方程为
$ Y-y=y'(x)(X-x), quad "（1分）" $
它与 $x$ 轴的交点为 $(x-frac(y,y'),0)$，从而
$ S_1=frac(1,2)y|x-(x-frac(y,y'))|=frac(1,2)frac(y^2,y'). $
又 $S_2=integral_0^x y(t)dif t$，由条件 $2S_1-S_2=1$ 知
$ frac(y^2,y')-integral_0^x y(t)dif t=1. quad "（*）" quad "（3分）" $
两边对 $x$ 求导并化简得
$ y y''=y'^2, quad "（4分）" $
令 $p=y'$，则上述方程可化为 $y frac(dif p,dif y)=p$，从而 $frac(dif p,p)=frac(dif y,y)$.解之得 $p=C_1 y$，即 $frac(dif y,dif x)=C_1 y$，于是
$ y=e^(C_1 x+C_2). quad "（6分）" $
注意到 $y(0)=1$，并由（\*）式得 $y'(0)=1$.由此可得 $C_1=1,C_2=0$，故所求曲线的方程是
$ y=e^x. quad "（8分）" $
]


]

#ezexam.question(label: n => [十、])[
（本题满分7分）

设 $f(x)$ 是区间 $[0,+infinity)$ 上单调减少且非负的连续函数，$a_n=sum_(k=1)^n f(k)-integral_1^n f(x)dif x$（$n=1,2,dots$），证明数列 $ {a_n} $ 的极限存在.
#ezexam.solution(show-number: false)[
由题设可得
$ f(k+1)<=integral_k^(k+1) f(x)dif x<=f(k) quad (k=1,2,dots), quad "（2分）" $
因此
$ a_n&=sum_(k=1)^n f(k)-integral_1^n f(x)dif x \
&=sum_(k=1)^n f(k)-sum_(k=1)^(n-1)integral_k^(k+1) f(x)dif x \
&=sum_(k=1)^(n-1)[f(k)-integral_k^(k+1) f(x)dif x]+f(n)>=0, quad "（5分）" $
即数列 $ {a_n} $ 有下界.又
$ a_(n+1)-a_n=f(n+1)-integral_n^(n+1) f(x)dif x<=0, $
即数列 $ {a_n} $ 单调下降，故由单调有界数列必有极限的准则知数列 $ {a_n} $ 的极限存在. （7分）
]


]

#ezexam.question(label: n => [十一、])[
（本题满分6分）

设矩阵 $A=mat(1,1,-1;-1,1,1;1,-1,1)$，矩阵 $X$ 满足 $A^* X=A^(-1)+2X$，其中 $A^*$ 是 $A$ 的伴随矩阵，求矩阵 $X$.
#ezexam.solution(show-number: false)[
由原等式得 $(A^*-2E)X=A^(-1)$，其中 $E$ 是3阶单位矩阵，用矩阵 $A$ 左乘等式两端，得 $(|A|E-2A)X=E$，可见 $(|A|E-2A)$ 可逆，从而
$ X=(|A|E-2A)^(-1). quad "（3分）" $
由于
$ |A|=mat(delim:"|",1,1,-1;-1,1,1;1,-1,1)=4, \
|A|E-2A=2mat(1,-1,1;1,1,-1;-1,1,1), quad "（4分）" $
故
$ X=frac(1,2)mat(1,-1,1;1,1,-1;-1,1,1)^(-1)=frac(1,4)mat(1,1,0;0,1,1;1,0,1). quad "（6分）" $
]


]

#ezexam.question(label: n => [十二、])[
（本题满分8分）

设向量组 $bold(alpha)_1=[1,1,1,3]^"T"$，$bold(alpha)_2=[-1,-3,5,1]^"T"$，$bold(alpha)_3=[3,2,-1,p+2]^"T"$，$bold(alpha)_4=[-2,-6,10,p]^"T"$，

（1）$p$ 为何值时，该向量组线性无关？并在此时将向量 $bold(alpha)=[4,1,6,10]^"T"$ 用 $bold(alpha)_1,bold(alpha)_2,bold(alpha)_3,bold(alpha)_4$ 线性表出；

（2）$p$ 为何值时，该向量组线性相关？并在此时求出它的秩和一个极大线性无关组.
#ezexam.solution(show-number: false)[
对矩阵 $[bold(alpha)_1 bold(alpha)_2 bold(alpha)_3 bold(alpha)_4 dots.v bold(alpha)]$ 作初等行变换：
$ mat(augment:#4,1,-1,3,-2,4;1,-3,2,-6,1;1,5,-1,10,6;3,1,p+2,p,10) \
->mat(augment:#4,1,-1,3,-2,4;0,-2,-1,-4,-3;0,6,-4,12,2;0,4,p-7,p+6,-2) \
->mat(augment:#4,1,-1,3,-2,4;0,-2,-1,-4,-3;0,0,-7,0,-7;0,0,p-9,p-2,-8) \
->mat(augment:#4,1,-1,3,-2,4;0,-2,-1,-4,-3;0,0,1,0,1;0,0,0,p-2,1-p). quad "（3分）" $
（1）当 $p!=2$ 时，向量组 $bold(alpha)_1,bold(alpha)_2,bold(alpha)_3,bold(alpha)_4$ 线性无关.

此时设 $bold(alpha)=x_1 bold(alpha)_1+x_2 bold(alpha)_2+x_3 bold(alpha)_3+x_4 bold(alpha)_4$，解得
$ x_1=2,x_2=frac(3p-4,p-2),x_3=1,x_4=frac(1-p,p-2). quad "（6分）" $
（2）当 $p=2$ 时，向量组 $bold(alpha)_1,bold(alpha)_2,bold(alpha)_3,bold(alpha)_4$ 线性相关，此时，向量组
的秩等于3.$bold(alpha)_1,bold(alpha)_2,bold(alpha)_3$（或 $bold(alpha)_1,bold(alpha)_3,bold(alpha)_4$）为其一个极大线性无关组. （8分）
]

]
