#import "../template.typ": exam
#show: exam.with(year: 1998, subject: "二", title: "1998年全国工学、经济学硕士研究生入学考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(true)


= 一、填空题（本题共5小题，每小题3分，满分15分）
#ezexam.counter-question.step()

（1）$lim_(x -> 0) frac(sqrt(1+x)+sqrt(1-x)-2,x^2)=$ #fillin(len: 3em)[].
#ezexam.solution(show-number: false)[
$-frac(1,4)$.
]

（2）曲线 $y=-x^3+x^2+2x$ 与 $x$ 轴所围成的图形的面积 $A=$ #fillin(len: 3em)[].
#ezexam.solution(show-number: false)[
$frac(37,12)$.
]

（3）$integral frac(ln sin x,sin^2 x) dif x=$ #fillin(len: 3em)[].
#ezexam.solution(show-number: false)[
$-cot x dot ln sin x-cot x-x+C$.
]

（4）设 $f(x)$ 连续，则 $frac(dif,dif x) integral_0^x t f(x^2-t^2) dif t=$ #fillin(len: 3em)[].
#ezexam.solution(show-number: false)[
$x f(x^2)$.
]

（5）曲线 $y=x ln(e+frac(1,x))$（$x>0$）的渐近线方程为 #fillin(len: 3em)[].
#ezexam.solution(show-number: false)[
$y=x+frac(1,e)$.
]

= 二、选择题（本题共5小题，每小题3分，满分15分）
#ezexam.counter-question.step()

（1）设数列 $x_n$ 与 $y_n$ 满足 $lim_(n -> infinity) x_n y_n=0$，则下列断言正确的是（　）.
#choices[若 $x_n$ 发散，则 $y_n$ 必发散.][若 $x_n$ 无界，则 $y_n$ 必有界.][若 $x_n$ 有界，则 $y_n$ 必为无穷小.][若 $frac(1,x_n)$ 为无穷小，则 $y_n$ 必为无穷小.]
#ezexam.solution(show-number: false)[
D.
]

（2）函数 $f(x)=(x^2-x-2)|x^3-x|$ 的不可导点的个数为（　）.
#choices[0.][1.][2.][3.]
#ezexam.solution(show-number: false)[
C.
]

（3）已知函数 $y=y(x)$ 在任意点 $x$ 处的增量 $Delta y=frac(y Delta x,1+x^2)+alpha$，其中 $alpha$ 是比 $Delta x$（$Delta x -> 0$）高阶的无穷小，且 $y(0)=pi$，则 $y(1)=$（　）.
#choices[$pi e^(frac(pi,4))$.][$2pi$.][$pi$.][$e^(frac(pi,4))$.]
#ezexam.solution(show-number: false)[
A.
]

（4）设函数 $f(x)$ 在 $x=a$ 的某个邻域内连续，且 $f(a)$ 为其极大值，则存在 $delta>0$，当 $x in (a-delta,a+delta)$ 时，必有（　）.
#choices[$(x-a)[f(x)-f(a)]>=0$.][$(x-a)[f(x)-f(a)]<=0$.][$lim_(t -> a) frac(f(t)-f(x),(t-x)^2)>=0$（$x!=a$）.][$lim_(t -> a) frac(f(t)-f(x),(t-x)^2)<=0$（$x!=a$）.]
#ezexam.solution(show-number: false)[
C.
]

（5）设 $A$ 是任一 $n$（$n>=3$）阶方阵，$A^*$ 是其伴随矩阵，又 $k$ 为常数，且 $k!=0,plus.minus 1$，则必有 $(k A)^*=$（　）.
#choices[$k A^*$.][$k^(n-1) A^*$.][$k^n A^*$.][$k^(-1) A^*$.]
#ezexam.solution(show-number: false)[
B.
]

#ezexam.question(label: n => [三、])[
（本题满分5分）

求函数 $f(x)=(1+x)^(frac(x,tan(x-frac(pi,4))))$ 在区间 $(0,2pi)$ 内的间断点，并判断其类型.
#ezexam.solution(show-number: false)[
$f(x)$ 在 $(0,2pi)$ 内的间断点为 $x=frac(pi,4),frac(3pi,4),frac(5pi,4),frac(7pi,4)$. （1分）

在 $x=frac(pi,4)$ 处，$f(frac(pi,4)+0)=+infinity$，在 $x=frac(5pi,4)$ 处，$f(frac(5pi,4)+0)=+infinity$，故 $x=frac(pi,4),frac(5pi,4)$ 为第二类（或无穷）间断点； （3分）

在 $x=frac(3pi,4)$ 处，$lim_(x -> frac(3pi,4)) f(x)=1$，在 $x=frac(7pi,4)$ 处，$lim_(x -> frac(7pi,4)) f(x)=1$，故 $x=frac(3pi,4),frac(7pi,4)$ 为第一类（或可去）间断点. （5分）
]


]

#ezexam.question(label: n => [四、])[
（本题满分5分）

确定常数 $a,b,c$ 的值，使
$ lim_(x -> 0) frac(a x-sin x,integral_b^x frac(ln(1+t^3),t) dif t)=c quad (c!=0). $
#ezexam.solution(show-number: false)[
由于 $x -> 0$ 时，$a x-sin x -> 0$，且极限 $c$ 不为零，所以当 $x -> 0$ 时，$integral_b^x frac(ln(1+t^3),t) dif t -> 0$，故必有 $b=0$. （1分）

由于
$ lim_(x -> 0) frac(a x-sin x,integral_0^x frac(ln(1+t^3),t) dif t)&=lim_(x -> 0) frac(a-cos x,frac(ln(1+x^3),x)) \
&=lim_(x -> 0) frac(x(a-cos x),ln(1+x^3)) \
&=lim_(x -> 0) frac(x(a-cos x),x^3)=lim_(x -> 0) frac(a-cos x,x^2)=c quad (c!=0), quad "（3分）" $
故必有 $a=1$，从而 $c=frac(1,2)$. （5分）
]


]

#ezexam.question(label: n => [五、])[
（本题满分5分）

利用代换 $y=frac(u,cos x)$ 将方程
$ y'' cos x-2y' sin x+3y cos x=e^x $
化简，并求出原方程的通解.
#ezexam.solution(show-number: false)[
*解法1* 由 $u=y cos x$ 两端对 $x$ 求导，得
$ u'&=y' cos x-y sin x, \
u''&=y'' cos x-2y' sin x-y cos x. quad "（2分）" $
于是原方程化为
$ u''+4u=e^x, quad "（3分）" $
其通解为 $u=C_1 cos 2x+C_2 sin 2x+frac(e^x,5)$（$C_1,C_2$ 为任意常数）.从而原方程的通解为
$ y=C_1 frac(cos 2x,cos x)+2C_2 sin x+frac(e^x,5cos x). quad "（5分）" $
*解法2* $y=u sec x$，
$ y'&=u' sec x+u sec x dot tan x, \
y''&=u'' sec x+2u' sec x dot tan x+u sec x dot tan^2 x+u sec^3 x. quad "（2分）" $
代入原方程得 $u''+4u=e^x$. （3分）

以下同解法1.
]


]

#ezexam.question(label: n => [六、])[
（本题满分6分）

计算积分 $integral_(frac(1,2))^(frac(3,2)) frac(dif x,sqrt(|x-x^2|))$.
#ezexam.solution(show-number: false)[
注意到被积函数内有绝对值号且 $x=1$ 是其无穷间断点，故
$ "原式"=integral_(frac(1,2))^1 frac(dif x,sqrt(x-x^2))+integral_1^(frac(3,2)) frac(dif x,sqrt(x^2-x)). quad "（1分）" $
$ integral_(frac(1,2))^1 frac(dif x,sqrt(x-x^2))&=integral_(frac(1,2))^1 frac(dif x,sqrt(frac(1,4)-(x-frac(1,2))^2)) \
&=arcsin(2x-1)|_(frac(1,2))^1=arcsin 1=frac(pi,2). quad "（3分）" $
$ integral_1^(frac(3,2)) frac(dif x,sqrt(x^2-x))&=integral_1^(frac(3,2)) frac(dif x,sqrt((x-frac(1,2))^2-frac(1,4))) \
&=ln[(x-frac(1,2))+sqrt((x-frac(1,2))^2-frac(1,4))]_1^(frac(3,2)) \
&=ln(2+sqrt(3)). quad "（5分）" $
因此
$ integral_(frac(1,2))^(frac(3,2)) frac(dif x,sqrt(|x-x^2|))=frac(pi,2)+ln(2+sqrt(3)). quad "（6分）" $
]


]

#ezexam.question(label: n => [七、])[
（本题满分6分）

从船上向海中沉放某种探测仪器，按探测要求，需确定仪器的下沉深度 $y$（从海平面算起）与下沉速度 $v$ 之间的函数关系.设仪器在重力作用下，从海平面由静止开始铅直下沉，在下沉过程中还受到阻力和浮力的作用.仪器的质量为 $m$，体积为 $B$，海水的比重为 $rho$，仪器所受的阻力与速度成正比，比例系数为 $k>0$.建立 $y$ 与 $v$ 所满足的微分方程，并求出函数关系 $y=y(v)$.
#ezexam.solution(show-number: false)[
取沉放点为原点 $O$，$O y$ 轴的正向铅直向下，则由牛顿第二定律得
$ m frac(dif^2 y,dif t^2)=m g-B rho-k v. quad "（1分）" $
将 $frac(dif^2 y,dif t^2)=v frac(dif v,dif y)$ 代入，消去 $t$，得
$ m v frac(dif v,dif y)=m g-B rho-k v. quad "（2分）" $
分离变量得 $dif y=frac(m v,m g-B rho-k v) dif v$，积分得
$ y=-frac(m,k)v-frac(m(m g-B rho),k^2) ln(m g-B rho-k v)+C. quad "（4分）" $
由初始条件 $v|_(y=0)=0$，定出 $C=frac(m(m g-B rho),k^2) ln(m g-B rho)$.所求函数为
$ y=-frac(m,k)v-frac(m(m g-B rho),k^2) ln frac(m g-B rho-k v,m g-B rho). quad "（6分）" $
]


]

#ezexam.question(label: n => [八、])[
（本题满分6分）

设 $y=f(x)$ 是区间 $[0,1]$ 上的任一非负连续函数.

（1）试证存在 $x_0 in (0,1)$，使得在区间 $[0,x_0]$ 上以 $f(x_0)$ 为高的矩形面积，等于在区间 $[x_0,1]$ 上以 $y=f(x)$ 为曲边的曲边梯形面积.

（2）又设 $f(x)$ 在区间 $(0,1)$ 内可导且 $f'(x)>-frac(2f(x),x)$，证明（1）中的 $x_0$ 是唯一的.
#ezexam.solution(show-number: false)[
*证法1* （1）设
$ F(x)=x integral_x^1 f(t) dif t, quad "（2分）" $
则 $F(0)=F(1)=0$，且 $F'(x)=integral_x^1 f(t) dif t-x f(x)$.对 $F(x)$ 在区间 $[0,1]$ 上应用罗尔定理知，存在一点 $x_0 in (0,1)$ 使 $F'(x_0)=0$，因而
$ integral_(x_0)^1 f(x) dif x-x_0 f(x_0)=0, $
即矩形面积 $x_0 f(x_0)$ 等于曲边梯形面积 $integral_(x_0)^1 f(x) dif x$. （4分）

（2）设
$ phi(x)=integral_x^1 f(t) dif t-x f(x), $
则当 $x in (0,1)$ 时，有 $phi'(x)=-f(x)-f(x)-x f'(x)<0$，所以 $phi(x)$ 在区间 $(0,1)$ 内单调减少，故此时（1）中的 $x_0$ 是唯一的. （6分）

*证法2* （1）设在区间 $(a,1)$（$a>=frac(1,2)$）内取 $x_1$.若在区间 $[x_1,1]$ 上 $f(x) equiv 0$，则 $(x_1,1)$ 内任一点都可作为 $x_0$，否则可设 $f(x_2)>0$ 为连续函数 $f(x)$ 在区间 $[x_1,1]$ 上的最大值，$x_2 in [x_1,1]$. （1分）

在区间 $[0,x_2]$ 上，作辅助函数
$ phi(x)=integral_x^1 f(t) dif t-x f(x), $
则 $phi(x)$ 连续，且 $phi(0)>0$.又
$ phi(x_2)=integral_(x_2)^1 f(t) dif t-x_2 f(x_2)<=(1-2x_2)f(x_2)<0. quad "（3分）" $
因而由闭区间上连续函数的介值定理，存在一点 $x_0 in (0,x_2) subset (0,1)$ 使 $phi(x_0)=0$，即
$ integral_(x_0)^1 f(t) dif t=x_0 f(x_0). quad "（4分）" $
（2）证法同上.

注：在证明（1）时，若对所设辅助函数利用闭区间上连续函数介值定理仅得出 $x_0 in [0,1]$，但未排除端点，或者排除端点的理由不充分，则只给1分.
]


]

#ezexam.question(label: n => [九、])[
（本题满分8分）

设有曲线 $y=sqrt(x-1)$，过原点作其切线，求由此曲线、切线及 $x$ 轴围成的平面图形绕 $x$ 轴旋转一周所得到的旋转体的表面积.
#ezexam.solution(show-number: false)[
设切点为 $(x_0,sqrt(x_0-1))$，则过原点的切线方程为 $y=frac(1,2sqrt(x_0-1))x$.

再以点 $(x_0,sqrt(x_0-1))$ 代入，解得 $x_0=2$，$y_0=sqrt(x_0-1)=1$，则上述切线方程为 $y=frac(1,2)x$. （3分）

由曲线 $y=sqrt(x-1)$（$1<=x<=2$）绕 $x$ 轴旋转一周所得到的旋转面的面积
$ S_1=integral_1^2 2pi y sqrt(1+y'^2) dif x=pi integral_1^2 sqrt(4x-3) dif x=frac(pi,6)(5sqrt(5)-1); quad "（6分）" $
由直线段 $y=frac(1,2)x$（$0<=x<=2$）绕 $x$ 轴旋转一周所得到的旋转面的面积
$ S_2=integral_0^2 2pi dot frac(1,2)x frac(sqrt(5),2) dif x=sqrt(5)pi. $
#import "@preview/cetz:0.5.2"
#cetz.canvas({
 import cetz.draw: *
 let p = (0, 0)
 let curve = range(0, 41).map(i => { let y = i / 40; (1 + y*y, y) })
 set-style(stroke: 0.6pt)
 line((0,0),(2,1),..curve.rev(),close: true,fill: luma(92%))
 line((-0.2,0),(2.7,0),mark: (end: ">"))
 line((0,-0.15),(0,1.8),mark: (end: ">"))
 line((2,0),(2,1),stroke: (dash: "dashed"))
 circle((2,1),radius: 0.025,fill: black)
 content((2.75,0),$x$); content((0,1.85),$y$)
 content((-0.12,-0.12),$O$)
 content((1,-0.13),$1$); content((2,-0.13),$2$)
 content((2.1,1.2),$(2,1)$)
})
因此，所求旋转体的表面积为
$ S=S_1+S_2=frac(pi,6)(11sqrt(5)-1). quad "（8分）" $
]


]

#ezexam.question(label: n => [十、])[
（本题满分8分）

设 $y=y(x)$ 是一向上凸的连续曲线，其上任意一点 $(x,y)$ 处的曲率为 $frac(1,sqrt(1+y'^2))$，且此曲线上点 $(0,1)$ 处的切线方程为 $y=x+1$，求该曲线的方程，并求函数 $y=y(x)$ 的极值.
#ezexam.solution(show-number: false)[
因曲线向上凸，故 $y''<0$；由题设，有
$ frac(-y'',sqrt((1+y'^2)^3))=frac(1,sqrt(1+y'^2)), quad "（2分）" $
即 $frac(y'',1+y'^2)=-1$.

令 $p=y'$，则 $p'=y''$，从而上述方程化为 $frac(p',1+p^2)=-1$，分离变量得 $frac(dif p,1+p^2)=-dif x$，解之得 $arctan p=C_1-x$. （4分）

因为 $y=y(x)$ 在 $(0,1)$ 处切线方程为 $y=x+1$，所以 $p|_(x=0)=y'|_(x=0)=1$.代入上式得 $C_1=frac(pi,4)$，故 $y'=tan(frac(pi,4)-x)$.积分后得
$ y=ln|cos(frac(pi,4)-x)|+C_2. quad "（6分）" $
因为曲线过点 $(0,1)$，所以 $y|_(x=0)=1$，代入上式得 $C_2=1+frac(1,2)ln 2$，故所求曲线的方程为
$ y=ln cos(frac(pi,4)-x)+1+frac(1,2)ln 2, quad x in (-frac(pi,4),frac(3pi,4)). quad "（7分）" $
注：不写 $x in (-frac(pi,4),frac(3pi,4))$ 不扣分.

因为 $cos(frac(pi,4)-x)<=1$，且当 $x=frac(pi,4)$ 时，$cos(frac(pi,4)-x)=1$，所以当 $x=frac(pi,4)$ 时函数取得极大值 $y=1+frac(1,2)ln 2$. （8分）
]


]

#ezexam.question(label: n => [十一、])[
（本题满分8分）

设 $x in (0,1)$，证明

（1）$(1+x)ln^2(1+x)<x^2$；

（2）$frac(1,ln 2)-1<frac(1,ln(1+x))-frac(1,x)<frac(1,2)$.
#ezexam.solution(show-number: false)[
（1）令 $phi(x)=(1+x)ln^2(1+x)-x^2$，则有 $phi(0)=0$， （1分）
$ phi'(x)=ln^2(1+x)+2ln(1+x)-2x, quad phi'(0)=0. $
因为当 $x in (0,1)$ 时，$phi''(x)=frac(2,1+x)[ln(1+x)-x]<0$，所以 $phi'(x)<0$，从而 $phi(x)<0$，即
$ (1+x)ln^2(1+x)<x^2. quad "（3分）" $
（2）令 $f(x)=frac(1,ln(1+x))-frac(1,x)$，$x in (0,1]$，则有
$ f'(x)=frac((1+x)ln^2(1+x)-x^2,x^2(1+x)ln^2(1+x)). quad "（4分）" $
由（1）知，$f'(x)<0$（当 $x in (0,1)$），于是推知在 $(0,1)$ 内 $f(x)$ 单调减少.又 $f(x)$ 在区间 $(0,1]$ 上连续，且 $f(1)=frac(1,ln 2)-1$，故当 $x in (0,1)$ 时，
$ f(x)=frac(1,ln(1+x))-frac(1,x)>frac(1,ln 2)-1. $
不等式左边证毕. （6分）

又
$ lim_(x -> 0^+) f(x)&=lim_(x -> 0^+) frac(x-ln(1+x),x ln(1+x))=lim_(x -> 0^+) frac(x-ln(1+x),x^2) \
&=lim_(x -> 0^+) frac(x,2x(1+x))=frac(1,2), $
故当 $x in (0,1)$ 时，$f(x)=frac(1,ln(1+x))-frac(1,x)<frac(1,2)$，不等式右边证毕. （8分）
]


]

#ezexam.question(label: n => [十二、])[
（本题满分5分）

设 $(2E-C^(-1)B)A^"T"=C^(-1)$，其中 $E$ 是4阶单位矩阵，$A^"T"$ 是4阶矩阵 $A$ 的转置矩阵，
$ B=mat(1,2,-3,-2;0,1,2,-3;0,0,1,2;0,0,0,1), quad C=mat(1,2,0,1;0,1,2,0;0,0,1,2;0,0,0,1), $
求 $A$.
#ezexam.solution(show-number: false)[
由题设得
$ C(2E-C^(-1)B)A^"T"=E, quad "（1分）" $
即 $(2C-B)A^"T"=E$.由于
$ 2C-B=mat(1,2,3,4;0,1,2,3;0,0,1,2;0,0,0,1), quad |2C-B|=1!=0, $
故 $2C-B$ 可逆.

于是
$ A&=[(2C-B)^(-1)]^"T"=[(2C-B)^"T"]^(-1) quad "（3分）" \
&=mat(1,0,0,0;2,1,0,0;3,2,1,0;4,3,2,1)^(-1)=mat(1,0,0,0;-2,1,0,0;1,-2,1,0;0,1,-2,1). quad "（5分）" $
]


]

#ezexam.question(label: n => [十三、])[
（本题满分8分）

已知 $bold(alpha)_1=[1,4,0,2]^"T"$，$bold(alpha)_2=[2,7,1,3]^"T"$，$bold(alpha)_3=[0,1,-1,a]^"T"$，$bold(beta)=[3,10,b,4]^"T"$，问

（1）$a,b$ 取何值时，$bold(beta)$ 不能由 $bold(alpha)_1,bold(alpha)_2,bold(alpha)_3$ 线性表示？

（2）$a,b$ 取何值时，$bold(beta)$ 可由 $bold(alpha)_1,bold(alpha)_2,bold(alpha)_3$ 线性表示？并写出此表示式.
#ezexam.solution(show-number: false)[
因为
$ mat(1,2,0,3;4,7,1,10;0,1,-1,b;2,3,a,4)&->mat(1,2,0,3;0,-1,1,-2;0,1,-1,b;0,-1,a,-2) \
&->mat(1,2,0,3;0,-1,1,-2;0,0,a-1,0;0,0,0,b-2), quad "（2分）" $
所以

（1）当 $b!=2$ 时，线性方程组 $(bold(alpha)_1,bold(alpha)_2,bold(alpha)_3)bold(x)=bold(beta)$ 无解，此时 $bold(beta)$ 不能由 $bold(alpha)_1,bold(alpha)_2,bold(alpha)_3$ 线性表示； （4分）

（2）当 $b=2,a!=1$ 时，线性方程组 $(bold(alpha)_1,bold(alpha)_2,bold(alpha)_3)bold(x)=bold(beta)$ 有唯一解：
$ bold(x)=(x_1,x_2,x_3)^"T"=(-1,2,0)^"T", $
于是 $bold(beta)$ 可唯一表示为 $bold(beta)=-bold(alpha)_1+2bold(alpha)_2$； （6分）

当 $b=2,a=1$ 时，线性方程组 $(bold(alpha)_1,bold(alpha)_2,bold(alpha)_3)bold(x)=bold(beta)$ 有无穷多个解：
$ bold(x)=(x_1,x_2,x_3)^"T"=k(-2,1,1)^"T"+(-1,2,0)^"T", $
其中 $k$ 为任意常数，这时 $bold(beta)$ 可由 $bold(alpha)_1,bold(alpha)_2,bold(alpha)_3$ 线性表示为
$ bold(beta)=-(2k+1)bold(alpha)_1+(k+2)bold(alpha)_2+k bold(alpha)_3. quad "（8分）" $
]

]
