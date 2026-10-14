#import "../template.typ": exam, answer
#show: exam.with(year: 1999, subject: "一", title: "1999年全国硕士研究生入学考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
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
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 1999 数学一试卷参考解答

= 一、填空题

#answer("1（1）")[
应填 $1/3$.

*分析*　考查要点为未定型极限的处理、洛必达法则、等价无穷小代换.

*解*
$ lim_(x->0)(1/x^2-1/(x tan x))
 &=lim_(x->0)(tan x-x)/(x^2 tan x) \
 &=lim_(x->0)(tan x-x)/x^3=lim_(x->0)(sec^2 x-1)/(3x^2) \
 &=lim_(x->0)(tan^2 x)/(3x^2)=1/3. $
注：在第2步中如果不用等价无穷小代换，也是可以的，不过使用洛必达法则求导时略为麻烦一些.
]

#answer("1（2）")[
应填 $sin x^2$.

*分析*　考查要点为定积分变量变换、积分变上限函数求导.

*解*　令 $x-t=u$，有
$ dif/(dif x)integral_0^x sin(x-t)^2 dif t
 =dif/(dif x)integral_x^0 -sin u^2 dif u
 =dif/(dif x)integral_0^x sin u^2 dif u=sin x^2. $
注：必须将被积函数中的 $x$ 设法换到上限或者能方便地提到积分号外边，才能对 $x$ 求导.
]

#answer("1（3）")[
应填 $y=C_1 e^(-2x)+(C_2+1/4 x)e^(2x)$（$C_1,C_2$ 为任意常数）.

*分析*　本题考查二阶常系数非齐次线性微分方程的通解的求法. 要求考生熟知通解求法的方法和步骤，特别是注意特解的设置与特殊方程根及 $f(x)$ 形式之间的关系（本题 $f(x)=e^(2x)$）.

*解*　特征方程为：$r^2-4=0$，解得 $r_1=2,r_2=-2$，故 $y''-4y=0$ 的通解
$ y_1=C_1 e^(-2x)+C_2 e^(2x). $
由于非齐次方程右端的非齐次项为 $e^(2x)$，指数上的2为特征方程的单根，故原方程特解可设为 $y^*=A x e^(2x)$，代入原方程化简得 $A=1/4$. 故所求的通解
$ y=y_1+y^*=C_1 e^(-2x)+C_2 e^(2x)+1/4 x e^(2x). $
]

#answer("1（4）")[
应填 $n,underbrace(0 comma dots comma 0,n-1"个")$.

*分析*　矩阵 $A$ 的 $n$ 个特征值，就是其特征方程 $|A-lambda E|=0$ 的 $n$ 个根. 因此本题实质是考查 $n$ 阶行列式的计算和特征方程与特征值的概念.

*解*　因为
$ |A-lambda E|
 &=mat(delim: "|",1-lambda,1,dots.h,1;1,1-lambda,dots.h,1;dots.v,dots.v,dots.down,dots.v;1,1,dots.h,1-lambda) \
 &=(n-lambda)mat(delim: "|",1,1,dots.h,1;0,-lambda,dots.h,0;dots.v,dots.v,dots.down,dots.v;0,0,dots.h,-lambda) \
 &=(-1)^(n-1)lambda^(n-1)(n-lambda). $
故矩阵 $A$ 的 $n$ 个特征值是 $n$ 和0（$n-1$ 重）.
]

#answer("1（5）")[
应填 $1/4$.

*分析*　应用概率的加法公式及概率的有关性质计算.

*解*　根据加法公式，
$ P(A union B union C)=P(A)+P(B)+P(C)-P(A B)-P(A C)-P(B C)+P(A B C). quad "（*）" $
由于 $A,B,C$ 两两相互独立，$A B C=emptyset$，$P(A)=P(B)=P(C)$，故
$ P(A B)=P(A C)=P(B C)=P^2(A);quad P(A B C)=P(emptyset)=0, $
因而（\*）式化简为
$ P(A union B union C)=3P(A)-3P^2(A)=9/16, $
解得 $P(A)=3/4$，$P(A)=1/4$. 根据题设，$P(A)<1/2$，故 $P(A)=1/4$.

实际上，题中即使不给出 $P(A)<1/2$ 这一条件，也能判定 $P(A)=3/4$ 是不正确的，因为若 $P(A)=3/4$，则
$ 3/4=P(A)<=P(A union B union C)=9/16 $
是矛盾的.

本题考查事件的概率以及相互独立事件的概率的性质.
]

= 二、选择题

#answer("2（1）")[
应选A.

*分析*　$f(x)$ 的原函数 $F(x)$ 可以写成
$ F(x)=integral_0^x f(t)dif t+C $
的形式.

则
$ F(-x)=integral_0^(-x) f(t)dif t+C
 =integral_0^x f(-u)dif(-u)+C, $
其中令 $u=-t$. 当 $f(x)$ 是奇函数时，$f(-u)=-f(u)$，从而有
$ F(-x)=integral_0^x f(u)dif u+C=F(x), $
故（A）为正确选项. 至于（B）、（C）、（D）可分别举反例如下：

（B）的反例：$f(x)=cos x$，$F(x)=sin x+1$ 不是奇函数；

（C）的反例：$f(x)=cos^2 x$，$F(x)=1/2 x+1/4 sin 2x+C$，不论 $C$ 取什么常数，$F(x)$ 都不是周期函数；

（D）的反例：$f(x)=-1/x$ 在 $(0,+infinity)$ 内是单调增加的，但 $F(x)=-ln x$ 在 $(0,+infinity)$ 内是单调减少的.

本题考查原函数的概念及其用变上限函数表示法. 要求考生熟知函数的奇偶性、周期性和单调性的概念，并会用举反例法排除干扰项. “周期函数的导函数是周期函数，但原函数不一定是周期函数”是一个重要的知识点，考生知之甚少.
]

#answer("2（2）")[
应选D.

*分析*　根据一元函数性质，若能首先判定 $f(x)$ 在 $x=0$ 处可导，则（A）、（B）、（C）均被排除.

*解*
$ f'(0^+)=lim_(x->0^+)(f(x)-f(0))/x=lim_(x->0^+)(1-cos x)/x^(3/2)=0, $
$ f'(0^-)=lim_(x->0^-)(x^2 g(x))/x=lim_(x->0^-)g(x)x=0. $
最后一个等式利用了 $g(x)$ 是有界函数这一条件. 由于 $f(x)$ 在 $x=0$ 点的左导数等于右导数，因而，$f(x)$ 在 $x=0$ 处可导.

本题考查了函数极限、连续、可导性等重要知识点. 题目类型较为常见.
]

#answer("2（3）")[
应选C.

*分析*　显然，$f(x)$ 是定义在 $[0,1)$ 上的一个间断函数，$S(x)$ 为其在 $(-infinity,+infinity)$ 上周期为2的余弦傅里叶级数展开，根据狄利克雷定理知
$ S(-5/2)=S(-1/2)=S(1/2)
 =1/2[S(1/2+0)+S(1/2-0)]
 =1/2[1+1/2]=3/4. $
其中 $S(-1/2)=S(1/2)$ 利用了 $S(x)$ 是偶函数的性质.

用狄利克雷定理写出傅里叶级数的和时，应注意：（1）奇偶性；（2）周期. 将欲求的 $S(x_1)$ 转化为 $S(x_0)$，其中 $x_0$ 在原给的函数 $f(x)$ 的定义域内，然后再用狄利克雷定理写出其和.
]

#answer("2（4）")[
应选B.

*分析*　由各选项可见，主要区分行列式不为零与为零的情形. 而题中并未给出 $A$ 与 $B$ 的具体形式，所以无法用计算来回答. 方阵的行列式不为零（为零）等价于该方阵满秩（不满秩）. 故用秩的办法来讨论.

$A B$ 为 $m$ 阶方阵，
$ r(A B)<=min(r(A),r(B))<=min(m,n). $
当 $m>n$ 时，由上式有 $r(A B)<=n<m$. 即 $A B$ 不是满秩的，所以 $|A B|=0$. 故选（B）.

注：本题外表是行列式，但解决问题却是依赖于秩的讨论. 按秩的定义，秩是用行列式来定义的，而今却反过来用，值得注意！
]

#answer("2（5）")[
应选B.

*分析*　根据正态分布的性质，服从正态分布的随机变量的线性组合仍服从正态分布. 因此，$X+Y~N(1,2)$，$X-Y~N(-1,2)$. 即
$ (X+Y-1)/sqrt(2)~N(0,1);quad (X-Y+1)/sqrt(2)~N(0,1). $
根据标准正态分布的性质，变量小于零的概率为 $1/2$，因此，
$ P{(X+Y-1)/sqrt(2)<0}=1/2, $
即
$ P{X+Y-1<0}=1/2. $
同样，$P{X-Y+1<0}=1/2$. 对照所列的几个选项，只有（B）是正确的.
]

= 解答题

#answer("三、")[
*分析*　求隐函数方程所确定函数的导数的方法通常是对隐函数方程两边对自变量求导. 本题自变量为 $x$，$y$ 和 $z$ 均为 $x$ 的函数，在对两个隐函数方程两边求导后，解关于 $(dif z)/(dif x)$ 和 $(dif y)/(dif x)$ 的方程组，可同时求得 $(dif z)/(dif x)$ 和 $(dif y)/(dif x)$. 在解题过程中需分清谁是自变量，谁是因变量.

*解*

分别在 $z=x f(x+y)$ 和 $F(x,y,z)=0$ 的两端对 $x$ 求导，得
$ cases(frac(dif z,dif x)=f+x(1+frac(dif y,dif x))f' & quad "（2分）",F_x+F_y frac(dif y,dif x)+F_z frac(dif z,dif x)=0 & quad "（3分）"). $
整理后得
$ cases(-x f'frac(dif y,dif x)+frac(dif z,dif x)=f+x f',F_y frac(dif y,dif x)+F_z frac(dif z,dif x)=-F_x). $
由此解得
$ frac(dif z,dif x)=frac((f+x f')F_y-x f'F_x,F_y+x f'F_z) quad (F_y+x f'F_z!=0). quad "（5分）" $
注：不写出条件 $F_y+x f'F_z!=0$ 不扣分.

有些考生把 $z=x f(x+y)$ 中的 $f(x+y)$ 误认为是二元函数，错误地得出
$ (dif z)/(dif x)=f(x+y)+x[f'_x dot 1+f'_y (dif y)/(dif x)], $
应引起注意.
]

#answer("四、")[
*分析*　本题计算对坐标的曲线积分. 如果直接利用公式计算是很困难的. 有两个途径可以简化计算过程，一是增加一有向线段 $L_1$，使 $L+L_1$ 为一封闭曲线，再利用格林公式计算. 此时要注意有向线段的方向，以免出现符号错误. 二是将原积分分成两部分，使其一积分与路径无关，从而化简积分计算过程. 另外，考生解题时，首先画出积分路线有助于找到正确的解题方法.

*解*

*解法1* 添加从点 $O(0,0)$ 沿 $y=0$ 到点 $A(2a,0)$ 的有向直线段 $L_1$，
$ I&=integral_(L union L_1) (e^x sin y-b(x+y))dif x+(e^x cos y-a x)dif y \
&quad-integral_(L_1) (e^x sin y-b(x+y))dif x+(e^x cos y-a x)dif y. quad "（1分）" $
由格林公式，前一积分
$ I_1=integral.double_D (b-a)dif sigma=frac(pi,2)a^2(b-a), quad "（3分）" $
其中 $D$ 为 $L union L_1$ 所围成的半圆域. 直接计算后一积分可得
$ I_2=integral_0^(2a) (-b x)dif x=-2a^2 b. quad "（4分）" $
从而
$ I=I_1-I_2=frac(pi,2)a^2(b-a)+2a^2 b=(frac(pi,2)+2)a^2 b-frac(pi,2)a^3. quad "（5分）" $
*解法2*
$ I&=integral_L (e^x sin y-b(x+y))dif x+(e^x cos y-a x)dif y \
&=integral_L e^x sin y dif x+e^x cos y dif y-integral_L b(x+y)dif x+a x dif y. quad "（1分）" $
前一积分与路径无关，所以
$ integral_L e^x sin y dif x+e^x cos y dif y=e^x sin y|_((2a,0))^((0,0))=0. quad "（2分）" $
对后一积分，取 $L$ 的参数方程：$cases(x=a+a cos t,y=a sin t)$，$t$ 从0到 $pi$，得
$ integral_L b(x+y)dif x+a x dif y&=integral_0^pi (-a^2 b sin t-a^2 b sin t cos t \
&quad-a^2 b sin^2 t+a^3 cos t+a^3 cos^2 t)dif t \
&=-2a^2 b-frac(1,2)pi a^2 b+frac(1,2)pi a^3. quad "（4分）" $
从而 $I=(frac(pi,2)+2)a^2 b-frac(pi,2)a^3$. （5分）
]

#answer("五、")[
*分析*　此问题的反问题即根据已知曲线方程 $y=y(x)$ 求 $S_1$ 和 $S_2$ 是一个简单的问题. 但根据方程 $2S_1-S_2=1$ 求 $y=y(x)$ 就是一个考查学生综合能力的试题，要求考生能正确写出 $P(x,y)$ 点的切线方程、正确写出 $S_1$ 和 $S_2$ 的表达式；将问题转化为求微分方程的解，其中，还要求考生能够确定初始条件.

*解*

曲线 $y=y(x)$ 上点 $P(x,y)$ 处的切线方程为 $Y-y=y'(x)(X-x)$. 它与 $x$ 轴的交点为 $(x-frac(y,y'),0)$. 由于 $y'(x)>0,y(0)=1$，从而 $y(x)>0$，于是
$ S_1=frac(1,2)y|x-(x-frac(y,y'))|=frac(y^2,2y'). $
又 $S_2=integral_0^x y(t)dif t$，由条件 $2S_1-S_2=1$ 知
$ frac(y^2,y')-integral_0^x y(t)dif t=1. quad "（*）" quad "（2分）" $
两边对 $x$ 求导并化简得
$ y y''=(y')^2. quad "（3分）" $
令 $p=y'$，则上述方程可化为 $y p frac(dif p,dif y)=p^2$，从而 $frac(dif p,p)=frac(dif y,y)$. 解得 $p=C_1 y$，即 $frac(dif y,dif x)=C_1 y$. 于是
$ y=e^(C_1 x+C_2). quad "（5分）" $
注意到 $y(0)=1$，并由（\*）式得 $y'(0)=1$. 由此可得 $C_1=1,C_2=0$，故所求曲线的方程是
$ y=e^x. quad "（6分）" $

本题综合考查了曲线的切线、曲边梯形的面积、变上限函数求导数、二阶可降阶微分方程的解法等知识点.
]

#answer("六、")[
*分析*　利用函数的单调性与导数正负性之间的关系证明不等式. 就本题而言，证明方法很多，主要取决于如何构造辅助函数. 一是直接令 $phi(x)=(x^2-1)ln x-(x-1)^2$，证明 $x>0$ 时，$phi(x)>=0$；二是令 $phi(x)=ln x-(x-1)/(x+1)$，通过 $phi(x)$ 在 $(0,1)$ 及 $(1,+infinity)$ 上的正负性，说明 $(x^2-1)phi(x)>=0$；三是直接分 $0<x<1$ 和 $x>1$ 两种情况来证明.

*解*

*证法1* 令 $phi(x)=(x^2-1)ln x-(x-1)^2$，易知 $phi(1)=0$. 由于
$ phi'(x)&=2x ln x-x+2-frac(1,x), quad phi'(1)=0. \
phi''(x)&=2ln x+1+frac(1,x^2), quad phi''(1)=2>0. \
phi'''(x)&=frac(2(x^2-1),x^3). quad "（3分）" $
所以当 $0<x<1$ 时 $phi'''(x)<0$；当 $1<x<+infinity$ 时 $phi'''(x)>0$，从而推知当 $x in (0,+infinity)$ 时 $phi''(x)>0$. （4分）

由 $phi'(1)=0$ 推知当 $0<x<1$ 时 $phi'(x)<0$；当 $1<x<+infinity$ 时 $phi'(x)>0$. （5分）

再由 $phi(1)=0$ 推知当 $x>0$ 时 $(x^2-1)ln x>=(x-1)^2$. （6分）

*证法2* 令 $phi(x)=ln x-frac(x-1,x+1)$.
$ phi'(x)=frac(1,x)-frac(2,(x+1)^2)=frac(x^2+1,x(x+1)^2)>0 quad ("当" x>0). quad "（3分）" $
$phi(1)=0$，所以当 $0<x<1$ 时，$phi(x)<0$，当 $1<x<+infinity$ 时，$phi(x)>0$. （5分）

于是当 $x>0$ 时，
$ (x^2-1)phi(x)=(x^2-1)ln x-(x-1)^2>=0, $
即 $(x^2-1)ln x>=(x-1)^2$. （6分）

注：也可令 $phi(x)=(x+1)ln x-(x-1)$ 来处理.

*证法3*　由证法1已有 $phi(1)=0,phi'(1)=0,phi''(1)=2$，当 $0<x<1$ 时 $phi'''(x)<0$，当 $1<x<+infinity$ 时 $phi'''(x)>0$. 将 $phi(x)$ 在 $x=1$ 处按拉格朗日余项展开至 $n=2$，得
$ phi(x)&=phi(1)+phi'(1)(x-1)+1/(2!)phi''(1)(x-1)^2+1/(3!)phi'''(xi)(x-1)^3 \
 &=(x-1)^2+1/6 phi'''(xi)(x-1)^3. $
当 $0<x<1$ 时，$x<xi<1$；当 $1<x<+infinity$ 时，$1<xi<x$. 所以当 $x>0$ 时 $phi(x)>=0$.

*证法4*　对 $ln x$ 在1与 $x$ 之间用拉格朗日中值定理，有
$ (ln x)/(x-1)=(ln x-ln 1)/(x-1)=(ln x)'|_(x=xi)=1/xi, $
其中 $xi$ 介于1与 $x$ 之间，$1<xi<x$ 或 $x<xi<1$. 所以总有 $0<xi<1+x$，即 $(x+1)/xi>1$. 于是，当 $x>0$ 时
$ (x^2-1)ln x-(x-1)^2=(x-1)^2[(x+1)/xi-1]>=0. $

注1：用单调性证不等式，有规范操作步骤. 用拉格朗日中值定理证不等式，难点在于取什么函数使用拉格朗日中值定理. 如果能像证法4那样找到适当的函数，那么用后一方法是较方便的.

注2：证法2比证法1可以少求几次导数，关键在于证法2中，求一阶导数就将 $ln x$ 去掉了，较容易地看出 $phi'(x)$ 的符号. 所以适当选取 $phi(x)$ 是必要的. 证法2中这样的 $phi(x)$ 还是容易想到的.

注3：将证法1转到证法3，可以避免证法1后半段倒推 $phi''(x)>0$ 以及 $phi'(x)>0,phi(x)>=0$ 的麻烦，值得注意.
]

#answer("七、")[
*分析*　这是一道定积分的应用题. 要求考生能将这一实际情景中功的计算转化为定积分的问题. 具体地说，抓斗将污泥从井底提升至井口克服重力作功包括抓斗自身、悬提抓斗的缆绳和抓斗中的污泥三方面克服重力所做的功. 而在缆绳上升的过程中其自身重量及抓斗中污泥的重量随绳长的变化而变化，因此，需要用定积分计算其功.

*解*

作 $x$ 轴如图所示，将抓起污泥的抓斗提升至井口需作功 $w=w_1+w_2+w_3$，其中 $w_1$ 是克服抓斗自重所作的功；$w_2$ 是克服缆绳重力所作的功；$w_3$ 为提出污泥所作的功.
#well-diagram(axis: true)
由题意知
$ w_1=400times 30=12000. quad "（1分）" $
将抓斗由 $x$ 处提升到 $x+dif x$ 处，克服缆绳重力所作的功为 $dif w_2=50(30-x)dif x$，从而
$ w_2=integral_0^30 50(30-x)dif x=22500. quad "（3分）" $
在时间间隔 $[t,t+dif t]$ 内提升污泥需作功为 $dif w_3=3(2000-20t)dif t$，将污泥从井底提升至井口共需时间 $frac(30,3)=10$，所以
$ w_3=integral_0^10 3(2000-20t)dif t=57000. quad "（5分）" $
因此，共需作功
$ w=12000+22500+57000=91500 quad ("J"). quad "（6分）" $

如果将 $dif w_1,dif w_2,dif w_3$ 写在一个式子里，则在做积分时，应统一到一个变量（$x$ 或 $t$），要注意到变量关系转换问题（$x=3t$）. 不少考生没有注意到这个问题而出现错误.
]

#answer("八、")[
*分析*　求此对面积的曲面积分应注意以下关键问题：第一，准确写出 $rho(x,y,z)$；第二，准确写出 $dif S$（将其化为对坐标的微分）；第三，正确计算二重积分. 每一步都有一定的计算量并需要选择正确的方法.

*解*

设 $(X,Y,Z)$ 为 $pi$ 上任意一点，则 $pi$ 的方程为
$ frac(x X,2)+frac(y Y,2)+z Z=1, quad "（1分）" $
从而知
$ rho(x,y,z)=(frac(x^2,4)+frac(y^2,4)+z^2)^(-frac(1,2)). quad "（3分）" $
由 $z=sqrt(1-(frac(x^2,2)+frac(y^2,2)))$，有
$ frac(partial z,partial x)=frac(-x,2sqrt(1-(frac(x^2,2)+frac(y^2,2)))), quad frac(partial z,partial y)=frac(-y,2sqrt(1-(frac(x^2,2)+frac(y^2,2)))), $
于是
$ dif S=sqrt(1+(frac(partial z,partial x))^2+(frac(partial z,partial y))^2)dif sigma=frac(sqrt(4-x^2-y^2),2sqrt(1-(frac(x^2,2)+frac(y^2,2))))dif sigma. quad "（5分）" $
所以
$ integral.double_S frac(z dif S,rho(x,y,z))&=frac(1,4)integral.double_D (4-x^2-y^2)dif sigma \
&=frac(1,4)integral_0^(2pi) dif theta integral_0^(sqrt(2)) (4-r^2)r dif r=frac(3,2)pi. quad "（7分）" $

本题考查了切平面方程、点到平面距离公式、对面积的曲面积分的计算等知识点.
]

#answer("九、")[
*分析*　（1）是计算问题；（2）是证明问题. （1）对（2）有一定的启发作用. （1）可利用部分和的极限求之；而（2）就需要估计 $a_n$ 的阶数，从而利用比较法判定 $sum_(n=1)^infinity a_n/n^lambda$ 的收敛问题. 计算和证明都将涉及被积函数为 $tan x$ 的函数的积分问题，通常要应用到 $(arctan x)'=1/(1+x^2)$.

*解*

（1）因为
$ frac(1,n)(a_n+a_(n+2))&=frac(1,n)integral_0^(frac(pi,4)) tan^n x(1+tan^2 x)dif x \
&=frac(1,n)integral_0^(frac(pi,4)) tan^n x sec^2 x dif x \
&=frac(1,n)integral_0^1 t^n dif t quad (tan x=t) \
&=frac(1,n(n+1)), quad "（2分）" \
S_n&=sum_(i=1)^n frac(1,i)(a_i+a_(i+2))=sum_(i=1)^n frac(1,i(i+1))=1-frac(1,n+1), $
所以
$ sum_(n=1)^infinity frac(1,n)(a_n+a_(n+2))=lim_(n -> infinity) S_n=1. quad "（4分）" $
（2）因为
$ a_n&=integral_0^(frac(pi,4)) tan^n x dif x=integral_0^1 frac(t^n,1+t^2)dif t quad (tan x=t) \
&<integral_0^1 t^n dif t=frac(1,n+1), quad "（6分）" $
所以 $frac(a_n,n^lambda)<frac(1,n^lambda (n+1))<frac(1,n^(lambda+1))$，由 $lambda+1>1$，知 $sum_(n=1)^infinity frac(1,n^(lambda+1))$ 收敛，从而 $sum_(n=1)^infinity frac(a_n,n^lambda)$ 收敛. （7分）
]

#answer("十、")[
*分析*　尽管看上去要计算的参数值较多，但如果能找到所给条件之间的联系，并转化为求方程组的解，问题就简单得多. 根据题目条件，可以联想到以下公式和定义：$A A^*=|A|E$；$A^* bold(alpha)=lambda_0 bold(alpha)$，继而得出方程组 $lambda_0 A bold(alpha)=-bold(alpha)$.

*解*

根据题设可得
$ A A^*=|A|E=-E quad "（1分）" $
和
$ A^* bold(alpha)=lambda_0 bold(alpha). quad "（2分）" $
于是 $A A^* bold(alpha)=A(lambda_0 bold(alpha))=lambda_0 A bold(alpha)$. 又 $A A^* bold(alpha)=-E bold(alpha)=-bold(alpha)$，所以 $lambda_0 A bold(alpha)=-bold(alpha)$，即
$ lambda_0 mat(a,-1,c;5,b,3;1-c,0,-a)vec(-1,-1,1)=-vec(-1,-1,1). quad "（4分）" $
由此可得
$ cases(lambda_0(-a+1+c)=1 & quad "（1）",lambda_0(-5-b+3)=1 & quad "（2）",lambda_0(-1+c-a)=-1 & quad "（3）"). $
由（1）和（3）解得 $lambda_0=1$. （5分）

将 $lambda_0=1$ 代入（2）和（1），得 $b=-3,a=c$. 由 $|A|=-1$ 和 $a=c$，有
$ mat(delim:"|",a,-1,a;5,-3,3;1-a,0,-a)=a-3=-1, $
故 $a=c=2$. 因此
$ a=2,b=-3,c=2,lambda_0=1. quad "（8分）" $

本题综合考查了伴随矩阵与原矩阵的关系、特征值与特征向量的线性方程求解等重要知识点.
]

#answer("十一、")[
*分析*　$A$ 是正定矩阵，其定义很多，但在证明上述问题时，利用如下定义最为有效：若 $A$ 为正定矩阵，则对任意的实 $m$ 维向量 $bold(x)!=0$，有 $bold(x)^"T" A bold(x)>0$. 即二次型正定的定义.

*解*

必要性. 设 $B^"T" A B$ 为正定矩阵，则对任意的实 $n$ 维列向量 $bold(x)!=0$，有 $bold(x)^"T"(B^"T" A B)bold(x)>0$，即 $(B bold(x))^"T" A(B bold(x))>0$，于是，$B bold(x)!=0$. （2分）

因此，$B bold(x)=0$ 只有零解. 从而 $r(B)=n$. （3分）

充分性. 因 $(B^"T" A B)^"T"=B^"T" A^"T" B=B^"T" A B$，故 $B^"T" A B$ 为实对称矩阵.

若 $r(B)=n$，则线性方程组 $B bold(x)=0$ 只有零解. 从而对任意实 $n$ 维列向量 $bold(x)!=0$ 有 $B bold(x)!=0$. （4分）

又 $A$ 为正定矩阵，所以对于 $B bold(x)!=0$ 有 $(B bold(x))^"T" A(B bold(x))>0$.

于是当 $bold(x)!=0$ 时，$bold(x)^"T"(B^"T" A B)bold(x)>0$，故 $B^"T" A B$ 为正定矩阵. （6分）

必要性的另一证法：由 $B^"T" A B$ 正定，所以 $r(B^"T" A B)=n$. 另一方面 $r(B^"T" A B)<=r(B)<=n$，所以 $r(B)=n$.

由于考生对线性代数的证明题的解题能力普遍较差，加上对正定矩阵概念的不熟悉，值得注意.
]

#answer("十二、")[
*分析*　由于 $X,Y$ 相互独立，因此
$ P{X=x_i,Y=y_j}=P{X=x_i} dot P{Y=y_j},quad i=1,2;quad j=1,2,3. $
根据边缘概率分布的性质还知：
$ P{Y=y_1}=P{X=x_1,Y=y_1}+P{X=x_2,Y=y_1}, $
以及
$ P{X=x_i}=P{X=x_i,Y=y_1}+P{X=x_i,Y=y_2}+P{X=x_i,Y=y_3}. $
记 $p_(i j)=P{X=x_i,Y=y_j}$，则：
$ p_(1 1)=1/6-1/8=1/24. $
$ p_(1 dot)=p_(1 1)/p_(dot 1)=1/4;quad p_(1 3)=p_(1 dot)-p_(1 1)-p_(1 2)=1/4-1/24-1/8=1/12. $
同理，可以计算出 $p_(2 dot),p_(dot 2),p_(dot 3),p_(2 2),p_(2 3)$.

*解*

#table(columns:5, [$X slash Y$], [$y_1$], [$y_2$], [$y_3$], [$P{X=x_i}=p_(i dot)$], [$x_1$], [$frac(1,24)$], [$frac(1,8)$], [$frac(1,12)$], [$frac(1,4)$], [$x_2$], [$frac(1,8)$], [$frac(3,8)$], [$frac(1,4)$], [$frac(3,4)$], [$P{Y=y_j}=p_(dot j)$], [$frac(1,6)$], [$frac(1,2)$], [$frac(1,3)$], [1])
注：每个正确答数给1分.

本题考查相互独立的二维随机变量的联合分布和边缘分布.
]

#answer("十三、")[
*分析*　求 $theta$ 的矩估计量 $hat(theta)$，只要令 $E(X)=overline(X)$ 即可. 求 $hat(theta)$ 的方差需计算 $D(X)$. 本题实质上是计算已给密度函数的随机变量的均值和方差问题.

*解*

（1）
$ E(X)=integral_(-infinity)^infinity x f(x)dif x=integral_0^theta frac(6x^2,theta^3)(theta-x)dif x=frac(theta,2). quad "（2分）" $
记 $overline(X)=frac(1,n)sum_(i=1)^n X_i$，令 $frac(theta,2)=overline(X)$，得 $theta$ 的矩估计量为
$ hat(theta)=2overline(X). quad "（3分）" $
（2）由于
$ E(X^2)&=integral_(-infinity)^infinity x^2 f(x)dif x=integral_0^theta frac(6x^3,theta^3)(theta-x)dif x=frac(6theta^2,20), \
D(X)&=E(X^2)-[E(X)]^2=frac(6theta^2,20)-(frac(theta,2))^2=frac(theta^2,20), quad "（5分）" $
所以 $hat(theta)=2overline(X)$ 的方差为
$ D(hat(theta))=D(2overline(X))=4D(overline(X))=frac(4,n)D(X)=frac(theta^2,5n). quad "（6分）" $

本题考查参数的矩估计量及其均值和方差的计算.
]

