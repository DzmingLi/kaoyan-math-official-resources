#import "../template.typ": exam
#show: exam.with(year: 2001, subject: "一", title: "2001年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)


= 一、填空题（本题共5小题，每小题3分，满分15分）
#ezexam.counter-question.step()

（1）设 $y=e^x (C_1 sin x+C_2 cos x)$（$C_1,C_2$ 为任意常数）为某二阶常系数线性齐次微分方程的通解，则该方程为 #fillin(len: 3em)[].

（2）设 $r=sqrt(x^2+y^2+z^2)$，则 $op("div")(op("grad") r)|_((1,-2,2))=$ #fillin(len: 3em)[].

（3）交换二次积分的积分次序：$integral_(-1)^0 dif y integral_2^(1-y) f(x,y)dif x=$ #fillin(len: 3em)[].

（4）设矩阵 $A$ 满足 $A^2+A-4E=O$，其中 $E$ 为单位矩阵，则 $(A-E)^(-1)=$ #fillin(len: 3em)[].

（5）设随机变量 $X$ 的方差为2，则根据切比雪夫不等式有估计 $P{|X-E(X)|>=2}<=$ #fillin(len: 3em)[].

= 二、选择题（本题共5小题，每小题3分，满分15分）
#ezexam.counter-question.step()

（1）设函数 $f(x)$ 在定义域内可导，$y=f(x)$ 的图形如图1所示，则导函数 $y=f'(x)$ 的图形为（　）.
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

（2）设函数 $f(x,y)$ 在点 $(0,0)$ 附近有定义，且 $f'_x (0,0)=3$，$f'_y (0,0)=1$，则（　）.
#choices[$dif z|_((0,0))=3dif x+dif y$.][曲面 $z=f(x,y)$ 在点 $(0,0,f(0,0))$ 的法向量为 $[3,1,1]$.][曲线 $cases(z=f(x,y),y=0)$ 在点 $(0,0,f(0,0))$ 的切向量为 $[1,0,3]$.][曲线 $cases(z=f(x,y),y=0)$ 在点 $(0,0,f(0,0))$ 的切向量为 $[3,0,1]$.]

（3）设 $f(0)=0$，则 $f(x)$ 在点 $x=0$ 可导的充要条件为（　）.
#choices[$lim_(h->0) frac(1,h^2)f(1-cos h)$ 存在.][$lim_(h->0) frac(1,h)f(1-e^h)$ 存在.][$lim_(h->0) frac(1,h^2)f(h-sin h)$ 存在.][$lim_(h->0) frac(1,h)[f(2h)-f(h)]$ 存在.]

（4）设 $A=mat(1,1,1,1;1,1,1,1;1,1,1,1;1,1,1,1)$，$B=mat(4,0,0,0;0,0,0,0;0,0,0,0;0,0,0,0)$，则 $A$ 与 $B$（　）.
#choices[合同且相似.][合同但不相似.][不合同但相似.][不合同且不相似.]

（5）将一枚硬币重复掷 $n$ 次，以 $X$ 和 $Y$ 分别表示正面向上和反面向上的次数，则 $X$ 和 $Y$ 的相关系数等于（　）.
#choices[$-1$.][$0$.][$frac(1,2)$.][$1$.]

#ezexam.question(label: n => [三、])[
（本题满分6分）求 $integral frac(arctan e^x,e^(2x))dif x$.


]

#ezexam.question(label: n => [四、])[
（本题满分6分）设函数 $z=f(x,y)$ 在点 $(1,1)$ 处可微，且 $f(1,1)=1$，$frac(partial f,partial x)|_((1,1))=2$，$frac(partial f,partial y)|_((1,1))=3$，$phi(x)=f(x,f(x,x))$，求 $frac(dif,dif x)phi^3(x)|_(x=1)$.


]

#ezexam.question(label: n => [五、])[
（本题满分8分）设 $f(x)=cases(frac(1+x^2,x)arctan x quad x!=0,1 quad x=0)$，试将 $f(x)$ 展开成 $x$ 的幂级数，并求级数 $sum_(n=1)^infinity frac((-1)^n,1-4n^2)$ 的和.


]

#ezexam.question(label: n => [六、])[
（本题满分7分）计算 $I=integral.cont_L (y^2-z^2)dif x+(2z^2-x^2)dif y+(3x^2-y^2)dif z$，其中 $L$ 是平面 $x+y+z=2$ 与柱面 $|x|+|y|=1$ 的交线，从 $z$ 轴正向看去，$L$ 为逆时针方向.


]

#ezexam.question(label: n => [七、])[
（本题满分7分）设函数 $y=f(x)$ 在区间 $(-1,1)$ 内具有二阶连续导数，且 $f''(x) != 0$.证明：

（1）对于每一个非零的 $x in (-1,1)$，存在唯一的 $theta(x) in (0,1)$，使得
$ f(x)=f(0)+x f'(theta(x)x); $
（2）$lim_(x->0) theta(x)=1/2$.


]

#ezexam.question(label: n => [八、])[
（本题满分8分）设有一高度为 $h(t)$（$t$ 为时间）的雪堆在融化过程中，其侧面满足方程 $z=h(t)-(2(x^2+y^2))/h(t)$（设长度单位为厘米，时间单位为小时），已知体积减少的速率与侧面积成正比（比例系数0.9），问高度为130（厘米）的雪堆全部融化需多少小时？


]

#ezexam.question(label: n => [九、])[
（本题满分6分）设 $alpha_1,alpha_2,dots,alpha_s$ 为线性方程组 $A x=0$ 的一个基础解系，$beta_1=t_1 alpha_1+t_2 alpha_2,beta_2=t_1 alpha_2+t_2 alpha_3,dots,beta_s=t_1 alpha_s+t_2 alpha_1$，其中 $t_1,t_2$ 为实常数.试问 $t_1,t_2$ 满足什么关系时，$beta_1,beta_2,dots,beta_s$ 也为 $A x=0$ 的一个基础解系.


]

#ezexam.question(label: n => [十、])[
（本题满分8分）已知3阶矩阵 $A$ 与三维向量 $x$，使得向量组 $x,A x,A^2 x$ 线性无关，且满足
$ A^3 x=3A x-2A^2 x. $
（1）记 $P=(x,A x,A^2 x)$，求3阶矩阵 $B$，使 $A=P B P^(-1)$；

（2）计算行列式 $|A+E|$.


]

#ezexam.question(label: n => [十一、])[
（本题满分7分）设某班车起点站上客人数 $X$ 服从参数为 $lambda (lambda>0)$ 的泊松分布，每位乘客在中途下车的概率为 $p (0<p<1)$，且中途下车与否相互独立.以 $Y$ 表示在中途下车的人数，求：

（1）在发车时有 $n$ 个乘客的条件下，中途有 $m$ 人下车的概率；

（2）二维随机变量 $(X,Y)$ 的概率分布.


]

#ezexam.question(label: n => [十二、])[
（本题满分7分）设总体 $X$ 服从正态分布 $N(mu,sigma^2) (sigma>0)$，从该总体中抽取简单随机样本 $X_1,X_2,dots,X_(2n) (n>=2)$，其样本均值为 $overline(X)=1/(2n) sum_(i=1)^(2n) X_i$，求统计量 $Y=sum_(i=1)^n (X_i+X_(n+i)-2overline(X))^2$ 的数学期望 $E(Y)$.

]
