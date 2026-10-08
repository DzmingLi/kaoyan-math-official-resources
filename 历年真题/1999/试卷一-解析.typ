#import "../template.typ": exam
#show: exam.with(year: 1999, subject: "一", title: "1999年全国硕士研究生入学考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(true)


= 一、填空题（本题共5小题，每小题3分，满分15分）
#ezexam.counter-question.step()

（1）$lim_(x -> 0)(frac(1,x^2)-frac(1,x tan x))=$ #fillin(len: 3em)[].
#ezexam.solution(show-number: false)[
$frac(1,3)$.
]

（2）$frac(dif,dif x)integral_0^x sin(x-t)^2 dif t=$ #fillin(len: 3em)[].
#ezexam.solution(show-number: false)[
$sin x^2$.
]

（3）$y''-4y=e^(2x)$ 的通解为 $y=$ #fillin(len: 3em)[].
#ezexam.solution(show-number: false)[
$C_1 e^(-2x)+(C_2+frac(1,4)x)e^(2x)$，其中 $C_1,C_2$ 为任意常数.
]

（4）设 $n$ 阶矩阵 $A$ 的元素全为1，则 $A$ 的 $n$ 个特征值是 #fillin(len: 3em)[].
#ezexam.solution(show-number: false)[
$n,underbrace(0 comma dots comma 0,n-1"个")$.
]

（5）设两两相互独立的三事件 $A,B$ 和 $C$ 满足条件：$A B C=emptyset$，$P(A)=P(B)=P(C)<frac(1,2)$，且已知 $P(A union B union C)=frac(9,16)$，则 $P(A)=$ #fillin(len: 3em)[].
#ezexam.solution(show-number: false)[
$frac(1,4)$.
]

= 二、选择题（本题共5小题，每小题3分，满分15分）
#ezexam.counter-question.step()

（1）设 $f(x)$ 是连续函数，$F(x)$ 是 $f(x)$ 的原函数，则（　）.
#choices[当 $f(x)$ 是奇函数时，$F(x)$ 必是偶函数.][当 $f(x)$ 是偶函数时，$F(x)$ 必是奇函数.][当 $f(x)$ 是周期函数时，$F(x)$ 必是周期函数.][当 $f(x)$ 是单调增函数时，$F(x)$ 必是单调增函数.]
#ezexam.solution(show-number: false)[
A.
]

（2）设 $f(x)=cases(frac(1-cos x,sqrt(x)) & quad x>0,x^2 g(x) & quad x<=0)$，其中 $g(x)$ 是有界函数，则 $f(x)$ 在 $x=0$ 处（　）.
#choices[极限不存在.][极限存在，但不连续.][连续，但不可导.][可导.]
#ezexam.solution(show-number: false)[
D.
]

（3）设
$ f(x)=cases(x & quad 0<=x<=frac(1,2),2-2x & quad frac(1,2)<x<1), $
$ S(x)=frac(a_0,2)+sum_(n=1)^infinity a_n cos n pi x, quad -infinity<x<+infinity, $
其中 $a_n=2integral_0^1 f(x)cos n pi x dif x$（$n=0,1,2,dots$），则 $S(-frac(5,2))$ 等于（　）.
#choices[$frac(1,2)$.][$-frac(1,2)$.][$frac(3,4)$.][$-frac(3,4)$.]
#ezexam.solution(show-number: false)[
C.
]

（4）设 $A$ 是 $m times n$ 矩阵，$B$ 是 $n times m$ 矩阵，则（　）.
#choices[当 $m>n$ 时，必有行列式 $|A B|!=0$.][当 $m>n$ 时，必有行列式 $|A B|=0$.][当 $n>m$ 时，必有行列式 $|A B|!=0$.][当 $n>m$ 时，必有行列式 $|A B|=0$.]
#ezexam.solution(show-number: false)[
B.
]

（5）设两个相互独立的随机变量 $X$ 和 $Y$ 分别服从正态分布 $N(0,1)$ 和 $N(1,1)$，则（　）.
#choices[$P{X+Y<=0}=frac(1,2)$.][$P{X+Y<=1}=frac(1,2)$.][$P{X-Y<=0}=frac(1,2)$.][$P{X-Y<=1}=frac(1,2)$.]
#ezexam.solution(show-number: false)[
B.
]

#ezexam.question(label: n => [三、])[
（本题满分5分）

设 $y=y(x),z=z(x)$ 是由方程 $z=x f(x+y)$ 和 $F(x,y,z)=0$ 所确定的函数，其中 $f$ 和 $F$ 分别具有一阶连续导数和一阶连续偏导数，求 $frac(dif z,dif x)$.
#ezexam.solution(show-number: false)[
分别在 $z=x f(x+y)$ 和 $F(x,y,z)=0$ 的两端对 $x$ 求导，得
$ cases(frac(dif z,dif x)=f+x(1+frac(dif y,dif x))f' & quad "（2分）",F_x+F_y frac(dif y,dif x)+F_z frac(dif z,dif x)=0 & quad "（3分）"). $
整理后得
$ cases(-x f'frac(dif y,dif x)+frac(dif z,dif x)=f+x f',F_y frac(dif y,dif x)+F_z frac(dif z,dif x)=-F_x). $
由此解得
$ frac(dif z,dif x)=frac((f+x f')F_y-x f'F_x,F_y+x f'F_z) quad (F_y+x f'F_z!=0). quad "（5分）" $
注：不写出条件 $F_y+x f'F_z!=0$ 不扣分.
]


]

#ezexam.question(label: n => [四、])[
（本题满分5分）

求 $I=integral_L (e^x sin y-b(x+y))dif x+(e^x cos y-a x)dif y$，其中 $a,b$ 为正的常数，$L$ 为从点 $A(2a,0)$ 沿曲线 $y=sqrt(2a x-x^2)$ 到点 $O(0,0)$ 的弧.
#ezexam.solution(show-number: false)[
*解法1* 添加从点 $O(0,0)$ 沿 $y=0$ 到点 $A(2a,0)$ 的有向直线段 $L_1$，
$ I&=integral_(L union L_1) (e^x sin y-b(x+y))dif x+(e^x cos y-a x)dif y \
&quad-integral_(L_1) (e^x sin y-b(x+y))dif x+(e^x cos y-a x)dif y. quad "（1分）" $
由格林公式，前一积分
$ I_1=integral.double_D (b-a)dif sigma=frac(pi,2)a^2(b-a), quad "（3分）" $
其中 $D$ 为 $L union L_1$ 所围成的半圆域.直接计算后一积分可得
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


]

#ezexam.question(label: n => [五、])[
（本题满分6分）

设函数 $y(x)$（$x>=0$）二阶可导且 $y'(x)>0,y(0)=1$.过曲线 $y=y(x)$ 上任意一点 $P(x,y)$ 作该曲线的切线及 $x$ 轴的垂线，上述两直线与 $x$ 轴所围成的三角形的面积记为 $S_1$，区间 $[0,x]$ 上以 $y=y(x)$ 为曲边的曲边梯形面积记为 $S_2$，并设 $2S_1-S_2$ 恒为1，求此曲线 $y=y(x)$ 的方程.
#ezexam.solution(show-number: false)[
曲线 $y=y(x)$ 上点 $P(x,y)$ 处的切线方程为 $Y-y=y'(x)(X-x)$.它与 $x$ 轴的交点为 $(x-frac(y,y'),0)$.由于 $y'(x)>0,y(0)=1$，从而 $y(x)>0$，于是
$ S_1=frac(1,2)y|x-(x-frac(y,y'))|=frac(y^2,2y'). $
又 $S_2=integral_0^x y(t)dif t$，由条件 $2S_1-S_2=1$ 知
$ frac(y^2,y')-integral_0^x y(t)dif t=1. quad "（*）" quad "（2分）" $
两边对 $x$ 求导并化简得
$ y y''=(y')^2. quad "（3分）" $
令 $p=y'$，则上述方程可化为 $y p frac(dif p,dif y)=p^2$，从而 $frac(dif p,p)=frac(dif y,y)$.解得 $p=C_1 y$，即 $frac(dif y,dif x)=C_1 y$.于是
$ y=e^(C_1 x+C_2). quad "（5分）" $
注意到 $y(0)=1$，并由（\*）式得 $y'(0)=1$.由此可得 $C_1=1,C_2=0$，故所求曲线的方程是
$ y=e^x. quad "（6分）" $
]


]

#ezexam.question(label: n => [六、])[
（本题满分6分）

试证：当 $x>0$ 时，$(x^2-1)ln x>=(x-1)^2$.
#ezexam.solution(show-number: false)[
*证法1* 令 $phi(x)=(x^2-1)ln x-(x-1)^2$，易知 $phi(1)=0$.由于
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
]


]

#ezexam.question(label: n => [七、])[
（本题满分6分）

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
$ w_3=integral_0^10 3(2000-20t)dif t=57000. quad "（5分）" $
因此，共需作功
$ w=12000+22500+57000=91500 quad ("J"). quad "（6分）" $
]


]

#ezexam.question(label: n => [八、])[
（本题满分7分）

设 $S$ 为椭球面 $frac(x^2,2)+frac(y^2,2)+z^2=1$ 的上半部分，点 $P(x,y,z)in S$，$pi$ 为 $S$ 在点 $P$ 处的切平面，$rho(x,y,z)$ 为点 $O(0,0,0)$ 到平面 $pi$ 的距离，求 $integral.double_S frac(z,rho(x,y,z))dif S$.
#ezexam.solution(show-number: false)[
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
]


]

#ezexam.question(label: n => [九、])[
（本题满分7分）

设 $a_n=integral_0^(frac(pi,4)) tan^n x dif x$，

（1）求 $sum_(n=1)^infinity frac(1,n)(a_n+a_(n+2))$ 的值；

（2）试证：对任意的常数 $lambda>0$，级数 $sum_(n=1)^infinity frac(a_n,n^lambda)$ 收敛.
#ezexam.solution(show-number: false)[
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


]

#ezexam.question(label: n => [十、])[
（本题满分8分）

设矩阵 $A=mat(a,-1,c;5,b,3;1-c,0,-a)$，其行列式 $|A|=-1$，又 $A$ 的伴随矩阵 $A^*$ 有一个特征值 $lambda_0$，属于 $lambda_0$ 的一个特征向量为 $bold(alpha)=(-1,-1,1)^"T"$，求 $a,b,c$ 和 $lambda_0$ 的值.
#ezexam.solution(show-number: false)[
根据题设可得
$ A A^*=|A|E=-E quad "（1分）" $
和
$ A^* bold(alpha)=lambda_0 bold(alpha). quad "（2分）" $
于是 $A A^* bold(alpha)=A(lambda_0 bold(alpha))=lambda_0 A bold(alpha)$.又 $A A^* bold(alpha)=-E bold(alpha)=-bold(alpha)$，所以 $lambda_0 A bold(alpha)=-bold(alpha)$，即
$ lambda_0 mat(a,-1,c;5,b,3;1-c,0,-a)vec(-1,-1,1)=-vec(-1,-1,1). quad "（4分）" $
由此可得
$ cases(lambda_0(-a+1+c)=1 & quad "（1）",lambda_0(-5-b+3)=1 & quad "（2）",lambda_0(-1+c-a)=-1 & quad "（3）"). $
由（1）和（3）解得 $lambda_0=1$. （5分）

将 $lambda_0=1$ 代入（2）和（1），得 $b=-3,a=c$.由 $|A|=-1$ 和 $a=c$，有
$ mat(delim:"|",a,-1,a;5,-3,3;1-a,0,-a)=a-3=-1, $
故 $a=c=2$.因此
$ a=2,b=-3,c=2,lambda_0=1. quad "（8分）" $
]


]

#ezexam.question(label: n => [十一、])[
（本题满分6分）

设 $A$ 为 $m$ 阶实对称矩阵且正定，$B$ 为 $m times n$ 实矩阵，$B^"T"$ 为 $B$ 的转置矩阵，试证：$B^"T" A B$ 为正定矩阵的充分必要条件是 $B$ 的秩 $r(B)=n$.
#ezexam.solution(show-number: false)[
必要性.设 $B^"T" A B$ 为正定矩阵，则对任意的实 $n$ 维列向量 $bold(x)!=0$，有 $bold(x)^"T"(B^"T" A B)bold(x)>0$，即 $(B bold(x))^"T" A(B bold(x))>0$，于是，$B bold(x)!=0$. （2分）

因此，$B bold(x)=0$ 只有零解.从而 $r(B)=n$. （3分）

充分性.因 $(B^"T" A B)^"T"=B^"T" A^"T" B=B^"T" A B$，故 $B^"T" A B$ 为实对称矩阵.

若 $r(B)=n$，则线性方程组 $B bold(x)=0$ 只有零解.从而对任意实 $n$ 维列向量 $bold(x)!=0$ 有 $B bold(x)!=0$. （4分）

又 $A$ 为正定矩阵，所以对于 $B bold(x)!=0$ 有 $(B bold(x))^"T" A(B bold(x))>0$.

于是当 $bold(x)!=0$ 时，$bold(x)^"T"(B^"T" A B)bold(x)>0$，故 $B^"T" A B$ 为正定矩阵. （6分）
]


]

#ezexam.question(label: n => [十二、])[
（本题满分8分）

设随机变量 $X$ 与 $Y$ 相互独立，下表列出了二维随机变量 $(X,Y)$ 联合分布律及关于 $X$ 和关于 $Y$ 的边缘分布律中的部分数值，试将其余数值填入表中的空白处.
#table(columns:5, [$X slash Y$], [$y_1$], [$y_2$], [$y_3$], [$P{X=x_i}=p_(i dot)$], [$x_1$], [], [$frac(1,8)$], [], [], [$x_2$], [$frac(1,8)$], [], [], [], [$P{Y=y_j}=p_(dot j)$], [$frac(1,6)$], [], [], [1])
#ezexam.solution(show-number: false)[
#table(columns:5, [$X slash Y$], [$y_1$], [$y_2$], [$y_3$], [$P{X=x_i}=p_(i dot)$], [$x_1$], [$frac(1,24)$], [$frac(1,8)$], [$frac(1,12)$], [$frac(1,4)$], [$x_2$], [$frac(1,8)$], [$frac(3,8)$], [$frac(1,4)$], [$frac(3,4)$], [$P{Y=y_j}=p_(dot j)$], [$frac(1,6)$], [$frac(1,2)$], [$frac(1,3)$], [1])
注：每个正确答数给1分.
]


]

#ezexam.question(label: n => [十三、])[
（本题满分6分）

设总体 $X$ 的概率密度为
$ f(x)=cases(frac(6x,theta^3)(theta-x) & quad 0<x<theta,0 & quad "其他"), $
$X_1,X_2,dots,X_n$ 是取自总体 $X$ 的简单随机样本.

（1）求 $theta$ 的矩估计量 $hat(theta)$；

（2）求 $hat(theta)$ 的方差 $D(hat(theta))$.
#ezexam.solution(show-number: false)[
（1）
$ E(X)=integral_(-infinity)^infinity x f(x)dif x=integral_0^theta frac(6x^2,theta^3)(theta-x)dif x=frac(theta,2). quad "（2分）" $
记 $overline(X)=frac(1,n)sum_(i=1)^n X_i$，令 $frac(theta,2)=overline(X)$，得 $theta$ 的矩估计量为
$ hat(theta)=2overline(X). quad "（3分）" $
（2）由于
$ E(X^2)&=integral_(-infinity)^infinity x^2 f(x)dif x=integral_0^theta frac(6x^3,theta^3)(theta-x)dif x=frac(6theta^2,20), \
D(X)&=E(X^2)-[E(X)]^2=frac(6theta^2,20)-(frac(theta,2))^2=frac(theta^2,20), quad "（5分）" $
所以 $hat(theta)=2overline(X)$ 的方差为
$ D(hat(theta))=D(2overline(X))=4D(overline(X))=frac(4,n)D(X)=frac(theta^2,5n). quad "（6分）" $
]

]
