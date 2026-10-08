#import "../template.typ": exam
#show: exam.with(year: 2003, subject: "一", title: "2003年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#ezexam.answer-state.update(false)


= 一、填空题（本题共6小题，每小题4分，满分24分）
#ezexam.counter-question.step()

（1）$lim_(x->0) (cos x)^(1/ln(1+x^2))=$#h(3em).

（2）曲面 $z=x^2+y^2$ 与平面 $2x+4y-z=0$ 平行的切平面的方程是#h(3em).

（3）设 $x^2=sum_(n=0)^infinity a_n cos(n x) (-pi<=x<=pi)$，则 $a_2=$#h(3em).

（4）从 $bold(upright(R))^2$ 的基 $alpha_1=mat(1;0),alpha_2=mat(1;-1)$ 到基 $beta_1=mat(1;1),beta_2=mat(1;2)$ 的过渡矩阵为#h(3em).

（5）设二维随机变量 $(X,Y)$ 的概率密度为
$ f(x,y)=cases(6x & 0<=x<=y<=1,0 & #text[其他]), $
则 $P{X+Y<=1}=$#h(3em).

（6）已知一批零件的长度 $X$（单位：cm）服从正态分布 $N(mu,1)$，从中随机地抽取16个零件，得到长度的平均值为40（cm），则 $mu$ 的置信度为0.95的置信区间是#h(3em).

（注：标准正态分布函数值 $Phi(1.96)=0.975,Phi(1.645)=0.95$.）

= 二、选择题（本题共6小题，每小题4分，满分24分）
#ezexam.counter-question.step()

（1）设函数 $f(x)$ 在 $(-infinity,+infinity)$ 内连续，其导函数的图形如图所示，则 $f(x)$ 有（　）.
#import "@preview/cetz:0.5.2"
#cetz.canvas({
 import cetz.draw: *
 set-style(stroke:.7pt)
 line((-2.3,0),(2.4,0),mark:(end:">"));line((0,-2),(0,2.3),mark:(end:">"))
 content((2.4,0),$x$,anchor:"north");content((0,2.3),$y$,anchor:"east");content((0,0),$O$,anchor:"north-east")
 line(..range(0,81).map(i=>{let x=-2.1+2.02*i/80;(x,.75*(x + 1)*(x + 1) - .55 - .17/x)}))
 line(..range(0,81).map(i=>{let x=.08+2.02*i/80;(x,.95*calc.ln(x/.55))}))
})
#choices[一个极小值点和两个极大值点.][两个极小值点和一个极大值点.][两个极小值点和两个极大值点.][三个极小值点和一个极大值点.]

（2）设 $ {a_n},{b_n},{c_n} $ 均为非负数列，且 $lim_(n->infinity) a_n=0,lim_(n->infinity) b_n=1,lim_(n->infinity) c_n=infinity$，则必有（　）.
#choices[$a_n<b_n$ 对任意 $n$ 成立.][$b_n<c_n$ 对任意 $n$ 成立.][极限 $lim_(n->infinity) a_n c_n$ 不存在.][极限 $lim_(n->infinity) b_n c_n$ 不存在.]

（3）已知函数 $f(x,y)$ 在点 $(0,0)$ 的某个邻域内连续，且 $lim_((x,y)->(0,0)) (f(x,y)-x y)/(x^2+y^2)^2=1$，则（　）.
#choices[点 $(0,0)$ 不是 $f(x,y)$ 的极值点.][点 $(0,0)$ 是 $f(x,y)$ 的极大值点.][点 $(0,0)$ 是 $f(x,y)$ 的极小值点.][根据所给条件无法判断点 $(0,0)$ 是否为 $f(x,y)$ 的极值点.]

（4）设向量组Ⅰ：$alpha_1,alpha_2,dots,alpha_r$ 可由向量组Ⅱ：$beta_1,beta_2,dots,beta_s$ 线性表示，则（　）.
#choices[当 $r<s$ 时，向量组Ⅱ必线性相关.][当 $r>s$ 时，向量组Ⅱ必线性相关.][当 $r<s$ 时，向量组Ⅰ必线性相关.][当 $r>s$ 时，向量组Ⅰ必线性相关.]

（5）设有齐次线性方程组 $A x=0$ 和 $B x=0$，其中 $A,B$ 均为 $m times n$ 矩阵.现有4个命题：

① 若 $A x=0$ 的解均是 $B x=0$ 的解，则秩$(A)>=$秩$(B)$；

② 若秩$(A)>=$秩$(B)$，则 $A x=0$ 的解均是 $B x=0$ 的解；

③ 若 $A x=0$ 与 $B x=0$ 同解，则秩$(A)=$秩$(B)$；

④ 若秩$(A)=$秩$(B)$，则 $A x=0$ 与 $B x=0$ 同解.

以上命题中正确的是（　）.
#choices[①②.][①③.][②④.][③④.]

（6）设随机变量 $X~t(n) (n>1),Y=1/X^2$，则（　）.
#choices[$Y~chi^2(n)$.][$Y~chi^2(n-1)$.][$Y~F(n,1)$.][$Y~F(1,n)$.]

#ezexam.question(label: n => [三、])[
（本题满分10分）过坐标原点作曲线 $y=ln x$ 的切线，该切线与曲线 $y=ln x$ 及 $x$ 轴围成平面图形 $D$.

（1）求 $D$ 的面积 $A$；

（2）求 $D$ 绕直线 $x=e$ 旋转一周所得旋转体的体积 $V$.


]

#ezexam.question(label: n => [四、])[
（本题满分12分）将函数 $f(x)=arctan((1-2x)/(1+2x))$ 展开成 $x$ 的幂级数，并求级数 $sum_(n=0)^infinity (-1)^n/(2n+1)$ 的和.


]

#ezexam.question(label: n => [五、])[
（本题满分10分）已知平面区域 $D={(x,y)|0<=x<=pi,0<=y<=pi}$，$L$ 为 $D$ 的正向边界.试证：

（1）$integral.cont_L x e^(sin y) dif y-y e^(-sin x) dif x=integral.cont_L x e^(-sin y) dif y-y e^(sin x) dif x$；

（2）$integral.cont_L x e^(sin y) dif y-y e^(-sin x) dif x>=2pi^2$.


]

#ezexam.question(label: n => [六、])[
（本题满分10分）某建筑工程打地基时，需用汽锤将桩打进土层.汽锤每次击打，都将克服土层对桩的阻力而作功.设土层对桩的阻力的大小与桩被打进地下的深度成正比（比例系数为 $k,k>0$），汽锤第一次击打将桩打进地下 $a$ m.根据设计方案，要求汽锤每次击打桩时所作的功与前一次击打时所作的功之比为常数 $r (0<r<1)$.问

（1）汽锤击打桩3次后，可将桩打进地下多深？

（2）若击打次数不限，汽锤至多能将桩打进地下多深？

（注：m表示长度单位米.）


]

#ezexam.question(label: n => [七、])[
（本题满分12分）设函数 $y=y(x)$ 在 $(-infinity,+infinity)$ 内具有二阶导数，且 $y'!=0$，$x=x(y)$ 是 $y=y(x)$ 的反函数.

（1）试将 $x=x(y)$ 所满足的微分方程 $(dif^2 x)/(dif y^2)+(y+sin x)((dif x)/(dif y))^3=0$ 变换为 $y=y(x)$ 满足的微分方程；

（2）求变换后的微分方程满足初始条件 $y(0)=0,y'(0)=3/2$ 的解.


]

#ezexam.question(label: n => [八、])[
（本题满分12分）设函数 $f(x)$ 连续且恒大于零，
$ F(t)=(integral.triple_(Omega(t)) f(x^2+y^2+z^2) dif v)/(integral.double_(D(t)) f(x^2+y^2) dif sigma), quad G(t)=(integral.double_(D(t)) f(x^2+y^2) dif sigma)/(integral_(-t)^t f(x^2) dif x), $
其中 $Omega(t)={(x,y,z)|x^2+y^2+z^2<=t^2},D(t)={(x,y)|x^2+y^2<=t^2}$.

（1）讨论 $F(t)$ 在区间 $(0,+infinity)$ 内的单调性.

（2）证明当 $t>0$ 时，$F(t)>2/pi G(t)$.


]

#ezexam.question(label: n => [九、])[
（本题满分10分）设矩阵 $A=mat(3,2,2;2,3,2;2,2,3),P=mat(0,1,0;1,0,1;0,0,1),B=P^(-1)A^* P$，求 $B+2E$ 的特征值与特征向量，其中 $A^*$ 为 $A$ 的伴随矩阵，$E$ 为3阶单位矩阵.


]

#ezexam.question(label: n => [十、])[
（本题满分8分）已知平面上三条不同直线的方程分别为
$ l_1:a x+2b y+3c=0, \
l_2:b x+2c y+3a=0, \
l_3:c x+2a y+3b=0. $
试证这三条直线交于一点的充分必要条件为 $a+b+c=0$.


]

#ezexam.question(label: n => [十一、])[
（本题满分10分）已知甲、乙两箱中装有同种产品，其中甲箱中装有3件合格品和3件次品，乙箱中仅装有3件合格品.从甲箱中任取3件产品放入乙箱后，求：

（1）乙箱中次品件数 $X$ 的数学期望；

（2）从乙箱中任取一件产品是次品的概率.


]

#ezexam.question(label: n => [十二、])[
（本题满分8分）设总体 $X$ 的概率密度为
$ f(x)=cases(2e^(-2(x-theta)) & x>theta,0 & x<=theta). $
其中 $theta>0$ 是未知参数.从总体 $X$ 中抽取简单随机样本 $X_1,X_2,dots,X_n$，记 $hat(theta)=min(X_1,X_2,dots,X_n)$.

（1）求总体 $X$ 的分布函数 $F(x)$；

（2）求统计量 $hat(theta)$ 的分布函数 $F_(hat(theta))(x)$；

（3）如果用 $hat(theta)$ 作为 $theta$ 的估计量，讨论它是否具有无偏性.

]
