#import "../template.typ": exam
#show: exam.with(year: 2001, subject: "二", title: "2001年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#ezexam.answer-state.update(false)


= 一、填空题（本题共5小题，每小题3分，满分15分）
#ezexam.counter-question.step()

（1）$lim_(x->1) (sqrt(3-x)-sqrt(1+x))/(x^2+x-2)=$#h(3em).

（2）设函数 $y=f(x)$ 由方程 $e^(2x+y)-cos(x y)=e-1$ 所确定，则曲线 $y=f(x)$ 在点 $(0,1)$ 处的法线方程为#h(3em).

（3）$integral_(-pi/2)^(pi/2) (x^3+sin^2 x)cos^2 x dif x=$#h(3em).

（4）过点 $(1/2,0)$ 且满足关系式 $y' arcsin x+y/sqrt(1-x^2)=1$ 的曲线方程为#h(3em).

（5）设方程 $mat(a,1,1;1,a,1;1,1,a)mat(x_1;x_2;x_3)=mat(1;1;-2)$ 有无穷多个解，则 $a=$#h(3em).

= 二、选择题（本题共5小题，每小题3分，满分15分）
#ezexam.counter-question.step()

（1）设 $f(x)=cases(1 & |x|<=1,0 & |x|>1)$，则 $f{f[f(x)]}$ 等于（　）.
#choices[$0$.][$1$.][$cases(1 & |x|<=1,0 & |x|>1)$.][$cases(0 & |x|<=1,1 & |x|>1)$.]

（2）设当 $x->0$ 时，$(1-cos x)ln(1+x^2)$ 是比 $x sin x^n$ 高阶的无穷小，而 $x sin x^n$ 是比 $(e^(x^2)-1)$ 高阶的无穷小，则正整数 $n$ 等于（　）.
#choices[1.][2.][3.][4.]

（3）曲线 $y=(x-1)^2(x-3)^2$ 的拐点个数为（　）.
#choices[0.][1.][2.][3.]

（4）已知函数 $f(x)$ 在区间 $(1-delta,1+delta)$ 内具有二阶导数，$f'(x)$ 严格单调减少，且 $f(1)=f'(1)=1$，则（　）.
#choices[在 $(1-delta,1)$ 和 $(1,1+delta)$ 内均有 $f(x)<x$.][在 $(1-delta,1)$ 和 $(1,1+delta)$ 内均有 $f(x)>x$.][在 $(1-delta,1)$ 内，$f(x)<x$，在 $(1,1+delta)$ 内，$f(x)>x$.][在 $(1-delta,1)$ 内，$f(x)>x$，在 $(1,1+delta)$ 内，$f(x)<x$.]

（5）设函数 $f(x)$ 在定义域内可导，$y=f(x)$ 的图形如图1所示，则导函数 $y=f'(x)$ 的图形为（　）.
#import "@preview/cetz:0.5.2"
#let curve-plot(kind) = cetz.canvas({
 import cetz.draw: *
 set-style(stroke:0.7pt)
 line((-1.65,0),(2.6,0),mark:(end:">"));line((0,-1.5),(0,1.9),mark:(end:">"))
 content((2.7,-0.1),$x$);content((-0.13,2),$y$);content((-0.15,-0.2),$O$)
 let positive-left=kind in ("B","D")
 line(..range(0,71).map(i=>{let x=-1.6+i*1.46/70;let y = if positive-left {0.22/(-x)} else {-0.24/x - 0.75}; (x,calc.clamp(y,-1.5,1.7))}))
 if kind in ("C","D") {
  line(..range(0,81).map(i=>{let x=0.17+i*2.1/80;(x,0.25/x+0.75*(x - 1.35)*(x - 1.35)-0.5)}))
 } else {
  line(..range(0,101).map(i=>{let x=0.15+i*2.12/100;let y = if kind=="base" {0.9*(x - 0.55)*(x - 1.1)*(x - 1.8)/x} else {1.15*(x - 0.32)*(x - 1.5)*(x - 1.5)/x}; (x,calc.clamp(y,-1.5,1.7))}))
 }
})
#curve-plot("base")
图1
#choices[#box(curve-plot("A"))][#box(curve-plot("B"))][#box(curve-plot("C"))][#box(curve-plot("D"))]

#ezexam.question(label: n => [三、])[
（本题满分6分）求 $integral (dif x)/((2x^2+1)sqrt(x^2+1))$.


]

#ezexam.question(label: n => [四、])[
（本题满分7分）求极限 $lim_(t->x) ((sin t)/(sin x))^(x/(sin t-sin x))$，记此极限为 $f(x)$，求函数 $f(x)$ 的间断点并指出其类型.


]

#ezexam.question(label: n => [五、])[
（本题满分7分）设 $rho=rho(x)$ 是抛物线 $y=sqrt(x)$ 上任一点 $M(x,y) (x>=1)$ 处的曲率半径，$s=s(x)$ 是该抛物线上介于点 $A(1,1)$ 与 $M$ 之间的弧长，计算 $3rho (dif^2 rho)/(dif s^2)-((dif rho)/(dif s))^2$ 的值.（在直角坐标系下曲率公式为 $K=|y''|/(1+y'^2)^(3/2)$）


]

#ezexam.question(label: n => [六、])[
（本题满分7分）设函数 $f(x)$ 在 $[0,+infinity)$ 上可导，$f(0)=0$，且其反函数为 $g(x)$.若
$ integral_0^(f(x)) g(t) dif t=x^2 e^x, $
求 $f(x)$.


]

#ezexam.question(label: n => [七、])[
（本题满分7分）设函数 $f(x),g(x)$ 满足 $f'(x)=g(x),g'(x)=2e^x-f(x)$，且 $f(0)=0,g(0)=2$，求 $integral_0^pi [g(x)/(1+x)-f(x)/(1+x)^2] dif x$.


]

#ezexam.question(label: n => [八、])[
（本题满分9分）设 $L$ 是一条平面曲线，其上任意一点 $P(x,y) (x>0)$ 到坐标原点的距离，恒等于该点处的切线在 $y$ 轴上的截距，且 $L$ 经过点 $(1/2,0)$.

（1）试求曲线 $L$ 的方程；

（2）求 $L$ 位于第一象限部分的一条切线，使该切线与 $L$ 以及两坐标轴所围图形的面积最小.


]

#ezexam.question(label: n => [九、])[
（本题满分7分）一个半球体状的雪堆，其体积融化的速率与半球面面积 $S$ 成正比，比例常数 $K>0$.假设在融化过程中雪堆始终保持半球体状，已知半径为 $r_0$ 的雪堆在开始融化的3小时内，融化了其体积的 $7/8$，问雪堆全部融化需要多少小时？


]

#ezexam.question(label: n => [十、])[
（本题满分8分）设 $f(x)$ 在区间 $[-a,a] (a>0)$ 上具有二阶连续导数，$f(0)=0$，

（1）写出 $f(x)$ 的带拉格朗日余项的一阶麦克劳林公式；

（2）证明在 $[-a,a]$ 上至少存在一点 $eta$，使
$ a^3 f''(eta)=3integral_(-a)^a f(x) dif x. $


]

#ezexam.question(label: n => [十一、])[
（本题满分6分）已知矩阵 $A=mat(1,0,0;1,1,0;1,1,1)$，$B=mat(0,1,1;1,0,1;1,1,0)$，且矩阵 $X$ 满足 $A X A+B X B=A X B+B X A+E$，其中 $E$ 是3阶单位阵，求 $X$.


]

#ezexam.question(label: n => [十二、])[
（本题满分6分）已知 $alpha_1,alpha_2,alpha_3,alpha_4$ 是线性方程组 $A X=0$ 的一个基础解系，若 $beta_1=alpha_1+t alpha_2,beta_2=alpha_2+t alpha_3,beta_3=alpha_3+t alpha_4,beta_4=alpha_4+t alpha_1$，讨论实数 $t$ 满足什么关系时，$beta_1,beta_2,beta_3,beta_4$ 也是 $A X=0$ 的一个基础解系.

]
