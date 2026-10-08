#import "../template.typ": exam
#show: exam.with(year: 2002, subject: "一", title: "2002年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#ezexam.answer-state.update(false)


= 一、填空题（本题共5小题，每小题3分，满分15分）
#ezexam.counter-question.step()

（1）$integral_e^(+infinity) (dif x)/(x ln^2 x)=$#h(3em).

（2）已知函数 $y=y(x)$ 由方程 $e^y+6x y+x^2-1=0$ 确定，则 $y''(0)=$#h(3em).

（3）微分方程 $y y''+y'^2=0$ 满足初始条件 $y|_(x=0)=1,y'|_(x=0)=1/2$ 的特解是#h(3em).

（4）已知实二次型 $f(x_1,x_2,x_3)=a(x_1^2+x_2^2+x_3^2)+4x_1 x_2+4x_1 x_3+4x_2 x_3$ 经正交变换 $x=P y$ 可化成标准形 $f=6y_1^2$，则 $a=$#h(3em).

（5）设随机变量 $X$ 服从正态分布 $N(mu,sigma^2) (sigma>0)$，且二次方程 $y^2+4y+X=0$ 无实根的概率为 $1/2$，则 $mu=$#h(3em).

= 二、选择题（本题共5小题，每小题3分，满分15分）
#ezexam.counter-question.step()

（1）考虑二元函数 $f(x,y)$ 的下面4条性质：

① $f(x,y)$ 在点 $(x_0,y_0)$ 处连续，

② $f(x,y)$ 在点 $(x_0,y_0)$ 处的两个偏导数连续，

③ $f(x,y)$ 在点 $(x_0,y_0)$ 处可微，

④ $f(x,y)$ 在点 $(x_0,y_0)$ 处的两个偏导数存在.

若用“$P => Q$”表示可由性质 $P$ 推出性质 $Q$，则有（　）.
#choices[②$=>$③$=>$①.][③$=>$②$=>$①.][③$=>$④$=>$①.][③$=>$①$=>$④.]

（2）设 $u_n != 0 (n=1,2,3,dots)$，且 $lim_(n->infinity) n/u_n=1$，则级数 $sum_(n=1)^infinity (-1)^(n+1)(1/u_n+1/u_(n+1))$（　）.
#choices[发散.][绝对收敛.][条件收敛.][收敛性根据所给条件不能判定.]

（3）设函数 $y=f(x)$ 在 $(0,+infinity)$ 内有界且可导，则（　）.
#choices[当 $lim_(x->+infinity) f(x)=0$ 时，必有 $lim_(x->+infinity) f'(x)=0$.][当 $lim_(x->+infinity) f'(x)$ 存在时，必有 $lim_(x->+infinity) f'(x)=0$.][当 $lim_(x->0^+) f(x)=0$ 时，必有 $lim_(x->0^+) f'(x)=0$.][当 $lim_(x->0^+) f'(x)$ 存在时，必有 $lim_(x->0^+) f'(x)=0$.]

（4）设有三张不同平面的方程 $a_(i 1)x+a_(i 2)y+a_(i 3)z=b_i,i=1,2,3$，它们所组成的线性方程组的系数矩阵与增广矩阵的秩都为2，则这三张平面可能的位置关系为（　）.
#import "@preview/cetz:0.5.2"
#let planes(kind)=cetz.canvas({
 import cetz.draw: *
 set-style(stroke:.65pt,fill:white)
 if kind=="A" {
  line((-.7,-1),(.65,-1),(.65,1),(-.7,1),close:true)
  line((-1.15,-.2),(.3,-.2),(1.1,.25),(-.35,.25),close:true)
  line((-.45,-1.2),(.4,-.75),(.4,1.2),(-.45,.8),close:true)
  line((0,-.2),(0,.25),stroke:(dash:"dashed"))
 } else if kind=="B" {
  line((-.25,-1.2),(.4,-1.2),(.25,1.2),(-.4,1.2),close:true)
  line((-1.2,.85),(-.5,.85),(1.2,-.85),(.5,-.85),close:true)
  line((-1.2,-.85),(-.5,-.85),(1.2,.85),(.5,.85),close:true)
  line((-.35,0),(.35,0))
 } else if kind=="C" {
  line((-1.2,-.9),(1.2,-.9),(1.25,-.5),(-1.15,-.5),close:true)
  line((-1,1),(-1,.6),(1,-1.25),(1,-.8),close:true)
  line((-1,-1.25),(-1,-.8),(1,1),(1,.6),close:true)
 } else {
  line((-1.2,.9),(1.1,-.7),(1.1,-1.2),(-1.2,.4),close:true)
  line((-1.25,-.75),(.1,.25),(.1,1),(-1.25,0),close:true)
  line((-.15,-1.25),(1.2,-.25),(1.2,.5),(-.15,-.5),close:true)
 }
})
#choices[#box(planes("A"))][#box(planes("B"))][#box(planes("C"))][#box(planes("D"))]

（5）设 $X_1$ 和 $X_2$ 是任意两个相互独立的连续型随机变量，它们的概率密度分别为 $f_1(x)$ 和 $f_2(x)$，分布函数分别为 $F_1(x)$ 和 $F_2(x)$，则（　）.
#choices[$f_1(x)+f_2(x)$ 必为某一随机变量的概率密度.][$f_1(x)f_2(x)$ 必为某一随机变量的概率密度.][$F_1(x)+F_2(x)$ 必为某一随机变量的分布函数.][$F_1(x)F_2(x)$ 必为某一随机变量的分布函数.]

#ezexam.question(label: n => [三、])[
（本题满分6分）设函数 $f(x)$ 在 $x=0$ 的某邻域内具有一阶连续导数，且 $f(0) != 0,f'(0) != 0$，若 $a f(h)+b f(2h)-f(0)$ 在 $h->0$ 时是比 $h$ 高阶的无穷小，试确定 $a,b$ 的值.


]

#ezexam.question(label: n => [四、])[
（本题满分7分）已知两曲线 $y=f(x)$ 与 $y=integral_0^(arctan x) e^(-t^2) dif t$ 在点 $(0,0)$ 处的切线相同，写出此切线方程，并求极限 $lim_(n->infinity) n f(2/n)$.


]

#ezexam.question(label: n => [五、])[
（本题满分7分）计算二重积分 $integral.double_D e^(max{x^2,y^2}) dif x dif y$，其中 $D={(x,y)|0<=x<=1,0<=y<=1}$.


]

#ezexam.question(label: n => [六、])[
（本题满分8分）设函数 $f(x)$ 在 $(-infinity,+infinity)$ 内具有一阶连续导数，$L$ 是上半平面（$y>0$）内的有向分段光滑曲线，其起点为 $(a,b)$，终点为 $(c,d)$.记
$ I=integral_L 1/y [1+y^2 f(x y)] dif x+x/y^2 [y^2 f(x y)-1] dif y, $
（1）证明曲线积分 $I$ 与路径 $L$ 无关；

（2）当 $a b=c d$ 时，求 $I$ 的值.


]

#ezexam.question(label: n => [七、])[
（本题满分7分）

（1）验证函数 $y(x)=1+x^3/(3!)+x^6/(6!)+x^9/(9!)+dots+x^(3n)/((3n)!)+dots (-infinity<x<+infinity)$ 满足微分方程 $y''+y'+y=e^x$；

（2）利用（1）的结果求幂级数 $sum_(n=0)^infinity x^(3n)/((3n)!)$ 的和函数.


]

#ezexam.question(label: n => [八、])[
（本题满分7分）设有一小山，取它的底面所在的平面为 $x O y$ 坐标面，其底部所占的区域为 $D={(x,y)|x^2+y^2-x y<=75}$，小山的高度函数为 $h(x,y)=75-x^2-y^2+x y$.

（1）设 $M(x_0,y_0)$ 为区域 $D$ 上一点，问 $h(x,y)$ 在该点沿平面上什么方向的方向导数最大？若记此方向导数的最大值为 $g(x_0,y_0)$，试写出 $g(x_0,y_0)$ 的表达式.

（2）现欲利用此小山开展攀岩活动，为此需要在山脚寻找一上山坡度最大的点作为攀登的起点.也就是说，要在 $D$ 的边界线 $x^2+y^2-x y=75$ 上找出使（1）中的 $g(x,y)$ 达到最大值的点.试确定攀登起点的位置.


]

#ezexam.question(label: n => [九、])[
（本题满分6分）已知4阶方阵 $A=(alpha_1,alpha_2,alpha_3,alpha_4)$，$alpha_1,alpha_2,alpha_3,alpha_4$ 均为4维列向量，其中 $alpha_2,alpha_3,alpha_4$ 线性无关，$alpha_1=2alpha_2-alpha_3$.如果 $beta=alpha_1+alpha_2+alpha_3+alpha_4$，求线性方程组 $A x=beta$ 的通解.


]

#ezexam.question(label: n => [十、])[
（本题满分8分）设 $A,B$ 为同阶方阵，

（1）如果 $A,B$ 相似，试证 $A,B$ 的特征多项式相等.

（2）举一个二阶方阵的例子说明（1）的逆命题不成立.

（3）当 $A,B$ 均为实对称矩阵时，试证（1）的逆命题成立.


]

#ezexam.question(label: n => [十一、])[
（本题满分7分）设随机变量 $X$ 的概率密度为
$ f(x)=cases(1/2 cos(x/2) & 0<=x<=pi,0 & #text[其他]), $
对 $X$ 独立地重复观察4次，用 $Y$ 表示观察值大于 $pi/3$ 的次数，求 $Y^2$ 的数学期望.


]

#ezexam.question(label: n => [十二、])[
（本题满分7分）设总体 $X$ 的概率分布为
#table(columns:5,[$X$],[0],[1],[2],[3],[$P$],[$theta^2$],[$2theta (1-theta)$],[$theta^2$],[$1-2theta$])
其中 $theta (0<theta<1/2)$ 是未知参数，利用总体 $X$ 的如下样本值

3，1，3，0，3，1，2，3，

求 $theta$ 的矩估计值和最大似然估计值.

]
