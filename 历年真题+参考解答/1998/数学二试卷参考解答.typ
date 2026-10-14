#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 1998, subject: "二", title: "1998年全国工学、经济学硕士研究生入学考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 1998 数学二试卷参考解答

= 一、填空题

#answer("1（1）")[
*解法一* 两次使用洛必达法则，
$ lim_(x->0) frac(sqrt(1+x)+sqrt(1-x)-2,x^2)
&=lim_(x->0) frac(1/2(1+x)^(-1/2)-1/2(1-x)^(-1/2),2x) \
&=1/4 lim_(x->0)[-1/2(1+x)^(-3/2)-1/2(1-x)^(-3/2)]=-1/4. $

*解法二* 先用一次洛必达法则，再有理化分子，
$ "原式"&=1/4 lim_(x->0) frac(sqrt(1-x)-sqrt(1+x),x sqrt(1-x^2)) \
&=1/4 lim_(x->0) frac(1-x-(1+x),x(sqrt(1-x)+sqrt(1+x)))=-1/4. $
这里利用了 $sqrt(1-x^2)->1$.
]

#answer("1（2）")[
*分析* 先求曲线 $y=-x^3+x^2+2x$ 的零点 $-1,0,2$，判断图形在 $x$ 轴上方和下方的部分，分别积分.

*解*
$ A&=-integral_(-1)^0(-x^3+x^2+2x) dif x+integral_0^2(-x^3+x^2+2x) dif x \
&=[x^4/4-x^3/3-x^2]_(-1)^0+[-x^4/4+x^3/3+x^2]_0^2=37/12. $
*注* 应注意数值计算的准确性.
]

#answer("1（3）")[
*分析* 本题考查分部积分法. 令 $u=ln sin x$，$dif v=dif x/sin^2 x$，则 $v=-cot x$.

*解*
$ integral frac(ln sin x,sin^2 x) dif x
&=-cot x dot ln sin x+integral cot^2 x dif x \
&=-cot x dot ln sin x+integral(csc^2 x-1) dif x \
&=-cot x dot ln sin x-cot x-x+C. $

*注* 应记住基本微分公式 $dif(cot x)=-dif x/sin^2 x$. 若先令 $u=sin x$，得到的积分 $integral frac(ln u,u^2)frac(dif u,sqrt(1-u^2))$ 反而不易求解. 复习应全面，不可偏废.
]

#answer("1（4）")[
*解* 先换元，将含参数的积分化为变上限积分. 令 $u=x^2-t^2$，则
$ integral_0^x t f(x^2-t^2) dif t=1/2 integral_0^(x^2) f(u) dif u. $
故
$ frac(dif,dif x) integral_0^x t f(x^2-t^2) dif t=1/2 f(x^2) dot 2x=x f(x^2). $
所求导数为 $x f(x^2)$.

*注* 常见错误答案是 $x f(0)$，错误在于忽略了被积函数中也含有 $x$，直接使用变上限积分的求导公式.
]

#answer("1（5）")[
*解* 设斜渐近线为 $y=a x+b$，则
$ a=lim_(x->+infinity) frac(x ln(e+1/x),x)=1, $
$ b&=lim_(x->+infinity) x[ln(e+1/x)-1] \
&=lim_(x->+infinity) frac(ln(e+1/x)-1,1/x)=lim_(x->+infinity) frac(1,e+1/x)=1/e. $
故渐近线方程为 $y=x+1/e$.

*注* 所填答案应是方程，不能只写 $x+1/e$. 又
$ lim_(x->0^+)x ln(e+1/x)=lim_(x->0^+)frac(ln(e+1/x),1/x)=lim_(x->0^+)frac(1,e+1/x)=0, $
所以 $x=0$ 不是垂直渐近线.
]

= 二、选择题

#answer("2（1）")[
*分析* A、B、C 可以用反例排除. A 项取 $y_n=0$ 即可否定. 对 B 项，取
$ x_n=cases(2k-1 & n=2k-1,0 & n=2k), quad y_n=cases(0 & n=2k-1,2k & n=2k), quad k=1,2,..., $
则 $x_n$ 无界，$y_n$ 也无界，但 $x_n y_n=0$. 对 C 项，取 $x_n=0$，则 $y_n$ 可以是任意数列.

*解* 若 $1/x_n$ 是无穷小量，则 $|x_n|$ 趋于无穷大. 对任意 $M>0$，当 $n$ 充分大时有 $|x_n|>M$；又由 $x_n y_n->0$，对任意 $epsilon>0$，当 $n$ 充分大时有 $|x_n y_n|<epsilon$，故 $|y_n|<epsilon/M$，于是 $y_n->0$. 应选 D.

也可令 $a_n=x_n y_n$，则 $a_n->0$，而 $y_n=a_n(1/x_n)$ 是两个无穷小量的乘积，仍为无穷小量.

*注* 必须区别“无界”和“无穷大”. 两个无界变量的乘积也可能是无穷小量.
]

#answer("2（2）")[
*分析* 绝对值可能引入不可导的尖点，先写出分段表达式.

*解*
$ f(x)=cases((x^2-x-2)x(1-x^2) & x<-1,(x^2-x-2)x(x^2-1) & -1<=x<0,(x^2-x-2)x(1-x^2) & 0<=x<1,(x^2-x-2)x(x^2-1) & 1<=x). $
在 $x=-1$ 处，左右导数均为零，故可导. 在 $x=0$ 处，左导数为 $2$，右导数为 $-2$，故不可导；类似地，$x=1$ 处也不可导. 其余点均可导，因此不可导点有两个，应选 C.
]

#answer("2（3）")[
*分析* 舍去增量式中的高阶无穷小量，得到微分方程.

*解* $dif y=frac(y,1+x^2)dif x$，分离变量得 $y=C e^(arctan x)$. 由 $y(0)=pi$，确定 $C=pi$，于是 $y(1)=pi e^(pi/4)$. 应选 A.

*注* 关键是从增量得到微分，继而使用微分方程求解.
]

#answer("2（4）")[
*解* 由极大值的定义，存在 $delta>0$，当 $a-delta<x<a+delta$ 时，$f(x)<=f(a)$.
当 $x<a$ 时，$(x-a)[f(x)-f(a)]>=0$；当 $x>a$ 时，该乘积不大于零，故 A、B 均不成立.
由 $f$ 在 $a$ 处连续，且 $x!=a$，
$ lim_(t->a) frac(f(t)-f(x),(t-x)^2)=frac(f(a)-f(x),(a-x)^2)>=0. $
所以 C 成立，应选 C.
]

#answer("2（5）")[
*分析* 考查数与矩阵的乘法和伴随矩阵的概念.

*解* 设 $A$ 的元素 $a_(i j)$ 的代数余子式为 $A_(i j)$，矩阵 $k A$ 中相应的代数余子式为 $Delta_(i j)$. 由行列式性质，
$ Delta_(i j)=k^(n-1)A_(i j), quad i,j=1,2,...,n. $
由伴随矩阵定义，$(k A)^*=k^(n-1)A^*$. 应选 B.

*注* 对 $n,k$ 的限制（除 $k!=0$ 外）是为了使四个选项中只有一个正确.
]

= 解答题

#answer("三、")[
*分析* 考察 $1/tan(x-pi/4)$ 在 $(0,2pi)$ 内不存在的点，再求左右极限判断间断点类型.

*解*
$f(x)$ 在 $(0,2pi)$ 内的间断点为 $x=frac(pi,4),frac(3pi,4),frac(5pi,4),frac(7pi,4)$. （1分）

在 $x=frac(pi,4)$ 处，$f(frac(pi,4)+0)=+infinity$，在 $x=frac(5pi,4)$ 处，$f(frac(5pi,4)+0)=+infinity$，故 $x=frac(pi,4),frac(5pi,4)$ 为第二类（或无穷）间断点； （3分）

在 $x=frac(3pi,4)$ 处，$lim_(x -> frac(3pi,4)) f(x)=1$，在 $x=frac(7pi,4)$ 处，$lim_(x -> frac(7pi,4)) f(x)=1$，故 $x=frac(3pi,4),frac(7pi,4)$ 为第一类（或可去）间断点. （5分）

*注* 切勿直接将函数改写为 $(1+x)^(x cot(x-pi/4))$，因为这样会把两个可去间断点补成连续点. 恒等式 $1/tan x=cot x$ 仅在两边均有定义时成立.
]

#answer("四、")[
*分析* 分子趋于零而商的极限存在且非零，分母也必须趋于零. 因 $ln(1+t^3)/t$ 在零点两侧均为正，所以 $b$ 只能为零. 确定 $b$ 后，再用洛必达法则求 $a,c$.

*解*
由于 $x -> 0$ 时，$a x-sin x -> 0$，且极限 $c$ 不为零，所以当 $x -> 0$ 时，$integral_b^x frac(ln(1+t^3),t) dif t -> 0$，故必有 $b=0$. （1分）

由于
$ lim_(x -> 0) frac(a x-sin x,integral_0^x frac(ln(1+t^3),t) dif t)&=lim_(x -> 0) frac(a-cos x,frac(ln(1+x^3),x)) \
&=lim_(x -> 0) frac(x(a-cos x),ln(1+x^3)) \
&=lim_(x -> 0) frac(x(a-cos x),x^3)=lim_(x -> 0) frac(a-cos x,x^2)=c quad (c!=0), quad "（3分）" $
故必有 $a=1$，从而 $c=frac(1,2)$. （5分）

*注* 若一开始就使用洛必达法则，虽然形式上也可得到 $a=1,c=1/2$，但确定不出 $b$，并可能误认为 $b$ 任意. 使用前必须核对不定式条件.
]

#answer("五、")[
*分析* 利用代换 $y=u/cos x$，把原方程中的 $y,y',y''$ 用 $u,u',u''$ 表示. 关键是求出一阶和二阶导数.

*解*
*解法1* 由 $u=y cos x$ 两端对 $x$ 求导，得
$ u'&=y' cos x-y sin x, \
u''&=y'' cos x-2y' sin x-y cos x. quad "（2分）" $
于是原方程化为
$ u''+4u=e^x, quad "（3分）" $
其通解为 $u=C_1 cos 2x+C_2 sin 2x+frac(e^x,5)$（$C_1,C_2$ 为任意常数）. 从而原方程的通解为
$ y=C_1 frac(cos 2x,cos x)+2C_2 sin x+frac(e^x,5cos x). quad "（5分）" $
*解法2* $y=u sec x$，
$ y'&=u' sec x+u sec x dot tan x, \
y''&=u'' sec x+2u' sec x dot tan x+u sec x dot tan^2 x+u sec^3 x. quad "（2分）" $
代入原方程得 $u''+4u=e^x$. （3分）

以下同解法1.
]

#answer("六、")[
*分析* 将 $|x-x^2|$ 写成分段表达式，积分分成两部分，并注意两者都是反常积分.

*解*
注意到被积函数内有绝对值号且 $x=1$ 是其无穷间断点，故
$ "原式"=integral_(frac(1,2))^1 frac(dif x,sqrt(x-x^2))+integral_1^(frac(3,2)) frac(dif x,sqrt(x^2-x)). quad "（1分）" $
$ integral_(frac(1,2))^1 frac(dif x,sqrt(x-x^2))&=integral_(frac(1,2))^1 frac(dif x,sqrt(frac(1,4)-(x-frac(1,2))^2)) \
&=arcsin(2x-1)|_(frac(1,2))^1=arcsin 1=frac(pi,2). quad "（3分）" $
$ integral_1^(frac(3,2)) frac(dif x,sqrt(x^2-x))&=integral_1^(frac(3,2)) frac(dif x,sqrt((x-frac(1,2))^2-frac(1,4))) \
&=ln[(x-frac(1,2))+sqrt((x-frac(1,2))^2-frac(1,4))]_1^(frac(3,2)) \
&=ln(2+sqrt(3)). quad "（5分）" $
因此
$ integral_(frac(1,2))^(frac(3,2)) frac(dif x,sqrt(|x-x^2|))=frac(pi,2)+ln(2+sqrt(3)). quad "（6分）" $

*注* 因所求原函数在积分端点处有有限连续延拓，计算时可直接代入上下限，不必每一步都写出截断积分的极限.
]

#answer("七、")[
*分析* 按题意列出微分方程及初始条件，并求解即可.

*解*
取沉放点为原点 $O$，$O y$ 轴的正向铅直向下，则由牛顿第二定律得
$ m frac(dif^2 y,dif t^2)=m g-B rho-k v. quad "（1分）" $
将 $frac(dif^2 y,dif t^2)=v frac(dif v,dif y)$ 代入，消去 $t$，得
$ m v frac(dif v,dif y)=m g-B rho-k v. quad "（2分）" $
分离变量得 $dif y=frac(m v,m g-B rho-k v) dif v$，积分得
$ y=-frac(m,k)v-frac(m(m g-B rho),k^2) ln(m g-B rho-k v)+C. quad "（4分）" $
由初始条件 $v|_(y=0)=0$，定出 $C=frac(m(m g-B rho),k^2) ln(m g-B rho)$. 所求函数为
$ y=-frac(m,k)v-frac(m(m g-B rho),k^2) ln frac(m g-B rho-k v,m g-B rho). quad "（6分）" $

*注* 常见错误包括不会列式或列式错误、不会降阶、分离变量积分出错，以及忘记用初始条件确定常数 $C$. 本题文字较多，积分时尤其容易出错.
]

#answer("八、")[
*分析* 先用罗尔定理构造面积等式，再利用导数的符号证明零点唯一. 另一种证明用非负连续函数在子区间上的最大值构造介值定理的严格异号条件.

*解*
*证法1* （1）设
$ F(x)=x integral_x^1 f(t) dif t, quad "（2分）" $
则 $F(0)=F(1)=0$，且 $F'(x)=integral_x^1 f(t) dif t-x f(x)$. 对 $F(x)$ 在区间 $[0,1]$ 上应用罗尔定理知，存在一点 $x_0 in (0,1)$ 使 $F'(x_0)=0$，因而
$ integral_(x_0)^1 f(x) dif x-x_0 f(x_0)=0, $
即矩形面积 $x_0 f(x_0)$ 等于曲边梯形面积 $integral_(x_0)^1 f(x) dif x$. （4分）

（2）设
$ phi(x)=integral_x^1 f(t) dif t-x f(x), $
则当 $x in (0,1)$ 时，有 $phi'(x)=-f(x)-f(x)-x f'(x)<0$，所以 $phi(x)$ 在区间 $(0,1)$ 内单调减少，故此时（1）中的 $x_0$ 是唯一的. （6分）

*证法2* （1）设在区间 $(a,1)$（$a>=frac(1,2)$）内取 $x_1$. 若在区间 $[x_1,1]$ 上 $f(x) equiv 0$，则 $(x_1,1)$ 内任一点都可作为 $x_0$，否则可设 $f(x_2)>0$ 为连续函数 $f(x)$ 在区间 $[x_1,1]$ 上的最大值，$x_2 in [x_1,1]$. （1分）

在区间 $[0,x_2]$ 上，作辅助函数
$ phi(x)=integral_x^1 f(t) dif t-x f(x), $
则 $phi(x)$ 连续，且 $phi(0)>0$. 又
$ phi(x_2)=integral_(x_2)^1 f(t) dif t-x_2 f(x_2)<=(1-2x_2)f(x_2)<0. quad "（3分）" $
因而由闭区间上连续函数的介值定理，存在一点 $x_0 in (0,x_2) subset (0,1)$ 使 $phi(x_0)=0$，即
$ integral_(x_0)^1 f(t) dif t=x_0 f(x_0). quad "（4分）" $
（2）证法同上.

注：在证明（1）时，若对所设辅助函数利用闭区间上连续函数介值定理仅得出 $x_0 in [0,1]$，但未排除端点，或者排除端点的理由不充分，则只给1分.
]

#answer("九、")[
*分析* 设切点及切线方程，求出切点，再用旋转曲面面积公式计算.

*解*
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

*注* 本题要求表面积，不能误算成体积；还应把两部分旋转曲面的面积相加，不能只求曲线段旋转形成的一部分.
]

#answer("十、")[
*分析* 先由曲率公式列出微分方程，并由切线方程确定初始条件，求出特解后再求极值.

*解*
因曲线向上凸，故 $y''<0$；由题设，有
$ frac(-y'',sqrt((1+y'^2)^3))=frac(1,sqrt(1+y'^2)), quad "（2分）" $
即 $frac(y'',1+y'^2)=-1$.

令 $p=y'$，则 $p'=y''$，从而上述方程化为 $frac(p',1+p^2)=-1$，分离变量得 $frac(dif p,1+p^2)=-dif x$，解之得 $arctan p=C_1-x$. （4分）

因为 $y=y(x)$ 在 $(0,1)$ 处切线方程为 $y=x+1$，所以 $p|_(x=0)=y'|_(x=0)=1$. 代入上式得 $C_1=frac(pi,4)$，故 $y'=tan(frac(pi,4)-x)$. 积分后得
$ y=ln|cos(frac(pi,4)-x)|+C_2. quad "（6分）" $
因为曲线过点 $(0,1)$，所以 $y|_(x=0)=1$，代入上式得 $C_2=1+frac(1,2)ln 2$，故所求曲线的方程为
$ y=ln cos(frac(pi,4)-x)+1+frac(1,2)ln 2, quad x in (-frac(pi,4),frac(3pi,4)). quad "（7分）" $
注：不写 $x in (-frac(pi,4),frac(3pi,4))$ 不扣分.

因为 $cos(frac(pi,4)-x)<=1$，且当 $x=frac(pi,4)$ 时，$cos(frac(pi,4)-x)=1$，所以当 $x=frac(pi,4)$ 时函数取得极大值 $y=1+frac(1,2)ln 2$. （8分）

当 $x->-pi/4^+$ 或 $x->3pi/4^-$ 时，$y->-infinity$，故没有极小值.

*注* 应区分题给曲率数值与一般曲率公式. 及时利用初始条件确定常数，可简化后续讨论. 本题求极值也可以直接利用余弦函数的最大值.
]

#answer("十一、")[
*分析* （1）令 $phi(x)=(1+x)ln^2(1+x)-x^2$，证明它在 $(0,1)$ 内严格减少. （2）令 $f(x)=1/ln(1+x)-1/x$，利用（1）判断导数符号，再结合端点值和端点极限.

*解*
（1）令 $phi(x)=(1+x)ln^2(1+x)-x^2$，则有 $phi(0)=0$， （1分）
$ phi'(x)=ln^2(1+x)+2ln(1+x)-2x, quad phi'(0)=0. $
因为当 $x in (0,1)$ 时，$phi''(x)=frac(2,1+x)[ln(1+x)-x]<0$，所以 $phi'(x)<0$，从而 $phi(x)<0$，即
$ (1+x)ln^2(1+x)<x^2. quad "（3分）" $
（2）令 $f(x)=frac(1,ln(1+x))-frac(1,x)$，$x in (0,1]$，则有
$ f'(x)=frac((1+x)ln^2(1+x)-x^2,x^2(1+x)ln^2(1+x)). quad "（4分）" $
由（1）知，$f'(x)<0$（当 $x in (0,1)$），于是推知在 $(0,1)$ 内 $f(x)$ 单调减少. 又 $f(x)$ 在区间 $(0,1]$ 上连续，且 $f(1)=frac(1,ln 2)-1$，故当 $x in (0,1)$ 时，
$ f(x)=frac(1,ln(1+x))-frac(1,x)>frac(1,ln 2)-1. $
不等式左边证毕. （6分）

又
$ lim_(x -> 0^+) f(x)&=lim_(x -> 0^+) frac(x-ln(1+x),x ln(1+x))=lim_(x -> 0^+) frac(x-ln(1+x),x^2) \
&=lim_(x -> 0^+) frac(x,2x(1+x))=frac(1,2), $
故当 $x in (0,1)$ 时，$f(x)=frac(1,ln(1+x))-frac(1,x)<frac(1,2)$，不等式右边证毕. （8分）

*补充证明* 对（1）还可以继续求导：
$ phi'''(x)=-frac(2ln(1+x),(1+x)^2)<0, quad phi(0)=phi'(0)=phi''(0)=0. $
因此由带拉格朗日余项的泰勒公式，存在 $xi in (0,x)$，使
$ phi(x)=frac(phi'''(xi),3!)x^3<0. $

*注* 第一问是为第二问服务的. 当求导后的符号不易判断时，应继续考察其分子，或结合高阶导数与泰勒公式.
]

#answer("十二、")[
*分析* 利用矩阵运算性质，先从给定矩阵等式推出 $A$ 的表达式，再代入 $B,C$ 计算.

*解*
由题设得
$ C(2E-C^(-1)B)A^"T"=E, quad "（1分）" $
即 $(2C-B)A^"T"=E$. 由于
$ 2C-B=mat(1,2,3,4;0,1,2,3;0,0,1,2;0,0,0,1), quad |2C-B|=1!=0, $
故 $2C-B$ 可逆.

于是
$ A&=[(2C-B)^(-1)]^"T"=[(2C-B)^"T"]^(-1) quad "（3分）" \
&=mat(1,0,0,0;2,1,0,0;3,2,1,0;4,3,2,1)^(-1)=mat(1,0,0,0;-2,1,0,0;1,-2,1,0;0,1,-2,1). quad "（5分）" $
]

#answer("十三、")[
*分析* 将 $beta$ 能否由 $alpha_1,alpha_2,alpha_3$ 线性表示的问题，转化为方程组 $(alpha_1,alpha_2,alpha_3)x=beta$ 有解或无解的问题.

*解*
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

