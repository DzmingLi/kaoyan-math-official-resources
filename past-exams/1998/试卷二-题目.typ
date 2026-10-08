#import "../template.typ": exam
#show: exam.with(year: 1998, subject: "二", title: "1998年全国工学、经济学硕士研究生入学考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)


= 一、填空题（本题共5小题，每小题3分，满分15分）
#ezexam.counter-question.step()

（1）$lim_(x -> 0) frac(sqrt(1+x)+sqrt(1-x)-2,x^2)=$ #fillin(len: 3em)[].

（2）曲线 $y=-x^3+x^2+2x$ 与 $x$ 轴所围成的图形的面积 $A=$ #fillin(len: 3em)[].

（3）$integral frac(ln sin x,sin^2 x) dif x=$ #fillin(len: 3em)[].

（4）设 $f(x)$ 连续，则 $frac(dif,dif x) integral_0^x t f(x^2-t^2) dif t=$ #fillin(len: 3em)[].

（5）曲线 $y=x ln(e+frac(1,x))$（$x>0$）的渐近线方程为 #fillin(len: 3em)[].

= 二、选择题（本题共5小题，每小题3分，满分15分）
#ezexam.counter-question.step()

（1）设数列 $x_n$ 与 $y_n$ 满足 $lim_(n -> infinity) x_n y_n=0$，则下列断言正确的是（　）.
#choices[若 $x_n$ 发散，则 $y_n$ 必发散.][若 $x_n$ 无界，则 $y_n$ 必有界.][若 $x_n$ 有界，则 $y_n$ 必为无穷小.][若 $frac(1,x_n)$ 为无穷小，则 $y_n$ 必为无穷小.]

（2）函数 $f(x)=(x^2-x-2)|x^3-x|$ 的不可导点的个数为（　）.
#choices[0.][1.][2.][3.]

（3）已知函数 $y=y(x)$ 在任意点 $x$ 处的增量 $Delta y=frac(y Delta x,1+x^2)+alpha$，其中 $alpha$ 是比 $Delta x$（$Delta x -> 0$）高阶的无穷小，且 $y(0)=pi$，则 $y(1)=$（　）.
#choices[$pi e^(frac(pi,4))$.][$2pi$.][$pi$.][$e^(frac(pi,4))$.]

（4）设函数 $f(x)$ 在 $x=a$ 的某个邻域内连续，且 $f(a)$ 为其极大值，则存在 $delta>0$，当 $x in (a-delta,a+delta)$ 时，必有（　）.
#choices[$(x-a)[f(x)-f(a)]>=0$.][$(x-a)[f(x)-f(a)]<=0$.][$lim_(t -> a) frac(f(t)-f(x),(t-x)^2)>=0$（$x!=a$）.][$lim_(t -> a) frac(f(t)-f(x),(t-x)^2)<=0$（$x!=a$）.]

（5）设 $A$ 是任一 $n$（$n>=3$）阶方阵，$A^*$ 是其伴随矩阵，又 $k$ 为常数，且 $k!=0,plus.minus 1$，则必有 $(k A)^*=$（　）.
#choices[$k A^*$.][$k^(n-1) A^*$.][$k^n A^*$.][$k^(-1) A^*$.]

#ezexam.question(label: n => [三、])[
（本题满分5分）

求函数 $f(x)=(1+x)^(frac(x,tan(x-frac(pi,4))))$ 在区间 $(0,2pi)$ 内的间断点，并判断其类型.


]

#ezexam.question(label: n => [四、])[
（本题满分5分）

确定常数 $a,b,c$ 的值，使
$ lim_(x -> 0) frac(a x-sin x,integral_b^x frac(ln(1+t^3),t) dif t)=c quad (c!=0). $


]

#ezexam.question(label: n => [五、])[
（本题满分5分）

利用代换 $y=frac(u,cos x)$ 将方程
$ y'' cos x-2y' sin x+3y cos x=e^x $
化简，并求出原方程的通解.


]

#ezexam.question(label: n => [六、])[
（本题满分6分）

计算积分 $integral_(frac(1,2))^(frac(3,2)) frac(dif x,sqrt(|x-x^2|))$.


]

#ezexam.question(label: n => [七、])[
（本题满分6分）

从船上向海中沉放某种探测仪器，按探测要求，需确定仪器的下沉深度 $y$（从海平面算起）与下沉速度 $v$ 之间的函数关系.设仪器在重力作用下，从海平面由静止开始铅直下沉，在下沉过程中还受到阻力和浮力的作用.仪器的质量为 $m$，体积为 $B$，海水的比重为 $rho$，仪器所受的阻力与速度成正比，比例系数为 $k>0$.建立 $y$ 与 $v$ 所满足的微分方程，并求出函数关系 $y=y(v)$.


]

#ezexam.question(label: n => [八、])[
（本题满分6分）

设 $y=f(x)$ 是区间 $[0,1]$ 上的任一非负连续函数.

（1）试证存在 $x_0 in (0,1)$，使得在区间 $[0,x_0]$ 上以 $f(x_0)$ 为高的矩形面积，等于在区间 $[x_0,1]$ 上以 $y=f(x)$ 为曲边的曲边梯形面积.

（2）又设 $f(x)$ 在区间 $(0,1)$ 内可导且 $f'(x)>-frac(2f(x),x)$，证明（1）中的 $x_0$ 是唯一的.


]

#ezexam.question(label: n => [九、])[
（本题满分8分）

设有曲线 $y=sqrt(x-1)$，过原点作其切线，求由此曲线、切线及 $x$ 轴围成的平面图形绕 $x$ 轴旋转一周所得到的旋转体的表面积.


]

#ezexam.question(label: n => [十、])[
（本题满分8分）

设 $y=y(x)$ 是一向上凸的连续曲线，其上任意一点 $(x,y)$ 处的曲率为 $frac(1,sqrt(1+y'^2))$，且此曲线上点 $(0,1)$ 处的切线方程为 $y=x+1$，求该曲线的方程，并求函数 $y=y(x)$ 的极值.


]

#ezexam.question(label: n => [十一、])[
（本题满分8分）

设 $x in (0,1)$，证明

（1）$(1+x)ln^2(1+x)<x^2$；

（2）$frac(1,ln 2)-1<frac(1,ln(1+x))-frac(1,x)<frac(1,2)$.


]

#ezexam.question(label: n => [十二、])[
（本题满分5分）

设 $(2E-C^(-1)B)A^"T"=C^(-1)$，其中 $E$ 是4阶单位矩阵，$A^"T"$ 是4阶矩阵 $A$ 的转置矩阵，
$ B=mat(1,2,-3,-2;0,1,2,-3;0,0,1,2;0,0,0,1), quad C=mat(1,2,0,1;0,1,2,0;0,0,1,2;0,0,0,1), $
求 $A$.


]

#ezexam.question(label: n => [十三、])[
（本题满分8分）

已知 $bold(alpha)_1=[1,4,0,2]^"T"$，$bold(alpha)_2=[2,7,1,3]^"T"$，$bold(alpha)_3=[0,1,-1,a]^"T"$，$bold(beta)=[3,10,b,4]^"T"$，问

（1）$a,b$ 取何值时，$bold(beta)$ 不能由 $bold(alpha)_1,bold(alpha)_2,bold(alpha)_3$ 线性表示？

（2）$a,b$ 取何值时，$bold(beta)$ 可由 $bold(alpha)_1,bold(alpha)_2,bold(alpha)_3$ 线性表示？并写出此表示式.

]
