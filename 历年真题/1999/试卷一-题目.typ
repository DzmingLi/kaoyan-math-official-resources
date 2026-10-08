#import "../template.typ": exam
#show: exam.with(year: 1999, subject: "一", title: "1999年全国硕士研究生入学考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)


= 一、填空题（本题共5小题，每小题3分，满分15分）
#ezexam.counter-question.step()

（1）$lim_(x -> 0)(frac(1,x^2)-frac(1,x tan x))=$ #fillin(len: 3em)[].

（2）$frac(dif,dif x)integral_0^x sin(x-t)^2 dif t=$ #fillin(len: 3em)[].

（3）$y''-4y=e^(2x)$ 的通解为 $y=$ #fillin(len: 3em)[].

（4）设 $n$ 阶矩阵 $A$ 的元素全为1，则 $A$ 的 $n$ 个特征值是 #fillin(len: 3em)[].

（5）设两两相互独立的三事件 $A,B$ 和 $C$ 满足条件：$A B C=emptyset$，$P(A)=P(B)=P(C)<frac(1,2)$，且已知 $P(A union B union C)=frac(9,16)$，则 $P(A)=$ #fillin(len: 3em)[].

= 二、选择题（本题共5小题，每小题3分，满分15分）
#ezexam.counter-question.step()

（1）设 $f(x)$ 是连续函数，$F(x)$ 是 $f(x)$ 的原函数，则（　）.
#choices[当 $f(x)$ 是奇函数时，$F(x)$ 必是偶函数.][当 $f(x)$ 是偶函数时，$F(x)$ 必是奇函数.][当 $f(x)$ 是周期函数时，$F(x)$ 必是周期函数.][当 $f(x)$ 是单调增函数时，$F(x)$ 必是单调增函数.]

（2）设 $f(x)=cases(frac(1-cos x,sqrt(x)) & quad x>0,x^2 g(x) & quad x<=0)$，其中 $g(x)$ 是有界函数，则 $f(x)$ 在 $x=0$ 处（　）.
#choices[极限不存在.][极限存在，但不连续.][连续，但不可导.][可导.]

（3）设
$ f(x)=cases(x & quad 0<=x<=frac(1,2),2-2x & quad frac(1,2)<x<1), $
$ S(x)=frac(a_0,2)+sum_(n=1)^infinity a_n cos n pi x, quad -infinity<x<+infinity, $
其中 $a_n=2integral_0^1 f(x)cos n pi x dif x$（$n=0,1,2,dots$），则 $S(-frac(5,2))$ 等于（　）.
#choices[$frac(1,2)$.][$-frac(1,2)$.][$frac(3,4)$.][$-frac(3,4)$.]

（4）设 $A$ 是 $m times n$ 矩阵，$B$ 是 $n times m$ 矩阵，则（　）.
#choices[当 $m>n$ 时，必有行列式 $|A B|!=0$.][当 $m>n$ 时，必有行列式 $|A B|=0$.][当 $n>m$ 时，必有行列式 $|A B|!=0$.][当 $n>m$ 时，必有行列式 $|A B|=0$.]

（5）设两个相互独立的随机变量 $X$ 和 $Y$ 分别服从正态分布 $N(0,1)$ 和 $N(1,1)$，则（　）.
#choices[$P{X+Y<=0}=frac(1,2)$.][$P{X+Y<=1}=frac(1,2)$.][$P{X-Y<=0}=frac(1,2)$.][$P{X-Y<=1}=frac(1,2)$.]

#ezexam.question(label: n => [三、])[
（本题满分5分）

设 $y=y(x),z=z(x)$ 是由方程 $z=x f(x+y)$ 和 $F(x,y,z)=0$ 所确定的函数，其中 $f$ 和 $F$ 分别具有一阶连续导数和一阶连续偏导数，求 $frac(dif z,dif x)$.


]

#ezexam.question(label: n => [四、])[
（本题满分5分）

求 $I=integral_L (e^x sin y-b(x+y))dif x+(e^x cos y-a x)dif y$，其中 $a,b$ 为正的常数，$L$ 为从点 $A(2a,0)$ 沿曲线 $y=sqrt(2a x-x^2)$ 到点 $O(0,0)$ 的弧.


]

#ezexam.question(label: n => [五、])[
（本题满分6分）

设函数 $y(x)$（$x>=0$）二阶可导且 $y'(x)>0,y(0)=1$.过曲线 $y=y(x)$ 上任意一点 $P(x,y)$ 作该曲线的切线及 $x$ 轴的垂线，上述两直线与 $x$ 轴所围成的三角形的面积记为 $S_1$，区间 $[0,x]$ 上以 $y=y(x)$ 为曲边的曲边梯形面积记为 $S_2$，并设 $2S_1-S_2$ 恒为1，求此曲线 $y=y(x)$ 的方程.


]

#ezexam.question(label: n => [六、])[
（本题满分6分）

试证：当 $x>0$ 时，$(x^2-1)ln x>=(x-1)^2$.


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


]

#ezexam.question(label: n => [八、])[
（本题满分7分）

设 $S$ 为椭球面 $frac(x^2,2)+frac(y^2,2)+z^2=1$ 的上半部分，点 $P(x,y,z)in S$，$pi$ 为 $S$ 在点 $P$ 处的切平面，$rho(x,y,z)$ 为点 $O(0,0,0)$ 到平面 $pi$ 的距离，求 $integral.double_S frac(z,rho(x,y,z))dif S$.


]

#ezexam.question(label: n => [九、])[
（本题满分7分）

设 $a_n=integral_0^(frac(pi,4)) tan^n x dif x$，

（1）求 $sum_(n=1)^infinity frac(1,n)(a_n+a_(n+2))$ 的值；

（2）试证：对任意的常数 $lambda>0$，级数 $sum_(n=1)^infinity frac(a_n,n^lambda)$ 收敛.


]

#ezexam.question(label: n => [十、])[
（本题满分8分）

设矩阵 $A=mat(a,-1,c;5,b,3;1-c,0,-a)$，其行列式 $|A|=-1$，又 $A$ 的伴随矩阵 $A^*$ 有一个特征值 $lambda_0$，属于 $lambda_0$ 的一个特征向量为 $bold(alpha)=(-1,-1,1)^"T"$，求 $a,b,c$ 和 $lambda_0$ 的值.


]

#ezexam.question(label: n => [十一、])[
（本题满分6分）

设 $A$ 为 $m$ 阶实对称矩阵且正定，$B$ 为 $m times n$ 实矩阵，$B^"T"$ 为 $B$ 的转置矩阵，试证：$B^"T" A B$ 为正定矩阵的充分必要条件是 $B$ 的秩 $r(B)=n$.


]

#ezexam.question(label: n => [十二、])[
（本题满分8分）

设随机变量 $X$ 与 $Y$ 相互独立，下表列出了二维随机变量 $(X,Y)$ 联合分布律及关于 $X$ 和关于 $Y$ 的边缘分布律中的部分数值，试将其余数值填入表中的空白处.
#table(columns:5, [$X slash Y$], [$y_1$], [$y_2$], [$y_3$], [$P{X=x_i}=p_(i dot)$], [$x_1$], [], [$frac(1,8)$], [], [], [$x_2$], [$frac(1,8)$], [], [], [], [$P{Y=y_j}=p_(dot j)$], [$frac(1,6)$], [], [], [1])


]

#ezexam.question(label: n => [十三、])[
（本题满分6分）

设总体 $X$ 的概率密度为
$ f(x)=cases(frac(6x,theta^3)(theta-x) & quad 0<x<theta,0 & quad "其他"), $
$X_1,X_2,dots,X_n$ 是取自总体 $X$ 的简单随机样本.

（1）求 $theta$ 的矩估计量 $hat(theta)$；

（2）求 $hat(theta)$ 的方差 $D(hat(theta))$.

]
