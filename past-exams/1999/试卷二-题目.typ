#import "../template.typ": exam
#show: exam.with(year: 1999, subject: "二", title: "1999年全国硕士研究生入学考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)


= 一、填空题（本题共5小题，每小题3分，满分15分）
#ezexam.counter-question.step()

（1）曲线 $cases(x=e^t sin 2t,y=e^t cos t)$ 在点 $(0,1)$ 处的法线方程为 #fillin(len: 3em)[].

（2）设函数 $y=y(x)$ 由方程 $ln(x^2+y)=x^3 y+sin x$ 确定，则 $frac(dif y,dif x)|_(x=0)=$ #fillin(len: 3em)[].

（3）$integral frac(x+5,x^2-6x+13)dif x=$ #fillin(len: 3em)[].

（4）函数 $y=frac(x^2,sqrt(1-x^2))$ 在区间 $[frac(1,2),frac(sqrt(3),2)]$ 上的平均值为 #fillin(len: 3em)[].

（5）微分方程 $y''-4y=e^(2x)$ 的通解为 #fillin(len: 3em)[].

= 二、选择题（本题共5小题，每小题3分，满分15分）
#ezexam.counter-question.step()

（1）设 $f(x)=cases(frac(1-cos x,sqrt(x)) & quad x>0,x^2 g(x) & quad x<=0)$，其中 $g(x)$ 是有界函数，则 $f(x)$ 在 $x=0$ 处（　）.
#choices[极限不存在.][极限存在，但不连续.][连续，但不可导.][可导.]

（2）设 $alpha(x)=integral_0^(5x) frac(sin t,t)dif t$，$beta(x)=integral_0^(sin x)(1+t)^(frac(1,t))dif t$，则当 $x -> 0$ 时，$alpha(x)$ 是 $beta(x)$ 的（　）.
#choices[高阶无穷小.][低阶无穷小.][同阶但不等价的无穷小.][等价无穷小.]

（3）设 $f(x)$ 是连续函数，$F(x)$ 是 $f(x)$ 的原函数，则（　）.
#choices[当 $f(x)$ 是奇函数时，$F(x)$ 必是偶函数.][当 $f(x)$ 是偶函数时，$F(x)$ 必是奇函数.][当 $f(x)$ 是周期函数时，$F(x)$ 必是周期函数.][当 $f(x)$ 是单调增函数时，$F(x)$ 必是单调增函数.]

（4）“对任意给定的 $epsilon in (0,1)$，总存在正整数 $N$，当 $n>=N$ 时，恒有 $|x_n-a|<=2epsilon$”是数列 $ {x_n} $ 收敛于 $a$ 的（　）.
#choices[充分条件但非必要条件.][必要条件但非充分条件.][充分必要条件.][既非充分条件又非必要条件.]

（5）记行列式
$ mat(delim:"|",x-2,x-1,x-2,x-3;2x-2,2x-1,2x-2,2x-3;3x-3,3x-2,4x-5,3x-5;4x,4x-3,5x-7,4x-3) $
为 $f(x)$，则方程 $f(x)=0$ 的根的个数为（　）.
#choices[1.][2.][3.][4.]

#ezexam.question(label: n => [三、])[
（本题满分5分）

求 $lim_(x -> 0) frac(sqrt(1+tan x)-sqrt(1+sin x),x ln(1+x)-x^2)$.


]

#ezexam.question(label: n => [四、])[
（本题满分6分）

计算 $integral_1^(+infinity) frac(arctan x,x^2)dif x$.


]

#ezexam.question(label: n => [五、])[
（本题满分7分）

求初值问题 $cases((y+sqrt(x^2+y^2))dif x-x dif y=0 quad (x>0),y|_(x=1)=0)$ 的解.


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


]

#ezexam.question(label: n => [七、])[
（本题满分8分）

已知函数 $y=frac(x^3,(x-1)^2)$，求

（1）函数的增减区间及极值；

（2）函数图形的凹凸区间及拐点；

（3）函数图形的渐近线.


]

#ezexam.question(label: n => [八、])[
（本题满分8分）

设函数 $f(x)$ 在闭区间 $[-1,1]$ 上具有三阶连续导数，且 $f(-1)=0,f(1)=1,f'(0)=0$，证明：在开区间 $(-1,1)$ 内至少存在一点 $xi$，使 $f'''(xi)=3$.


]

#ezexam.question(label: n => [九、])[
（本题满分8分）

设函数 $y(x)$（$x>=0$）二阶可导，且 $y'(x)>0,y(0)=1$.过曲线 $y=y(x)$ 上任意一点 $P(x,y)$ 作该曲线的切线及 $x$ 轴的垂线，上述两直线与 $x$ 轴所围成的三角形的面积记为 $S_1$，区间 $[0,x]$ 上以 $y=y(x)$ 为曲边的曲边梯形面积记为 $S_2$，并设 $2S_1-S_2$ 恒为1，求此曲线 $y=y(x)$ 的方程.


]

#ezexam.question(label: n => [十、])[
（本题满分7分）

设 $f(x)$ 是区间 $[0,+infinity)$ 上单调减少且非负的连续函数，$a_n=sum_(k=1)^n f(k)-integral_1^n f(x)dif x$（$n=1,2,dots$），证明数列 $ {a_n} $ 的极限存在.


]

#ezexam.question(label: n => [十一、])[
（本题满分6分）

设矩阵 $A=mat(1,1,-1;-1,1,1;1,-1,1)$，矩阵 $X$ 满足 $A^* X=A^(-1)+2X$，其中 $A^*$ 是 $A$ 的伴随矩阵，求矩阵 $X$.


]

#ezexam.question(label: n => [十二、])[
（本题满分8分）

设向量组 $bold(alpha)_1=[1,1,1,3]^"T"$，$bold(alpha)_2=[-1,-3,5,1]^"T"$，$bold(alpha)_3=[3,2,-1,p+2]^"T"$，$bold(alpha)_4=[-2,-6,10,p]^"T"$，

（1）$p$ 为何值时，该向量组线性无关？并在此时将向量 $bold(alpha)=[4,1,6,10]^"T"$ 用 $bold(alpha)_1,bold(alpha)_2,bold(alpha)_3,bold(alpha)_4$ 线性表出；

（2）$p$ 为何值时，该向量组线性相关？并在此时求出它的秩和一个极大线性无关组.

]
