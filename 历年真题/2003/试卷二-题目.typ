#import "../template.typ": exam
#show: exam.with(year: 2003, subject: "二", title: "2003年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#ezexam.answer-state.update(false)


= 一、填空题（本题共6小题，每小题4分，满分24分）
#ezexam.counter-question.step()

（1）若 $x->0$ 时，$(1-a x^2)^(1/4)-1$ 与 $x sin x$ 是等价无穷小，则 $a=$#h(3em).

（2）设函数 $y=f(x)$ 由方程 $x y+2 ln x=y^4$ 所确定，则曲线 $y=f(x)$ 在点 $(1,1)$ 处的切线方程是#h(3em).

（3）$y=2^x$ 的麦克劳林公式中 $x^n$ 项的系数是#h(3em).

（4）设曲线的极坐标方程为 $rho=e^(a theta) (a>0)$，则该曲线上相应于 $theta$ 从0变到 $2 pi$ 的一段弧与极轴所围成的图形的面积为#h(3em).

（5）设 $alpha$ 为3维列向量，$alpha^T$ 是 $alpha$ 的转置.若 $alpha alpha^T=mat(1,-1,1;-1,1,-1;1,-1,1)$，则 $alpha^T alpha=$#h(3em).

（6）设三阶方阵 $A,B$ 满足 $A^2 B-A-B=E$，其中 $E$ 为三阶单位矩阵，若 $A=mat(1,0,1;0,2,0;-2,0,1)$，则 $|B|=$#h(3em).

= 二、选择题（本题共6小题，每小题4分，满分24分）
#ezexam.counter-question.step()

（1）设 $ {a_n},{b_n},{c_n} $ 均为非负数列，且 $lim_(n->infinity) a_n=0,lim_(n->infinity) b_n=1,lim_(n->infinity) c_n=infinity$，则必有（　）.
#choices[$a_n<b_n$ 对任意 $n$ 成立.][$b_n<c_n$ 对任意 $n$ 成立.][极限 $lim_(n->infinity) a_n c_n$ 不存在.][极限 $lim_(n->infinity) b_n c_n$ 不存在.]

（2）设 $a_n=3/2 integral_0^(n/(n+1)) x^(n-1) sqrt(1+x^n) dif x$，则极限 $lim_(n->infinity) n a_n$ 等于（　）.
#choices[$(1+e)^(3/2)+1$.][$(1+e^(-1))^(3/2)-1$.][$(1+e^(-1))^(3/2)+1$.][$(1+e)^(3/2)-1$.]

（3）已知 $y=x/ln x$ 是微分方程 $y'=y/x+phi(x/y)$ 的解，则 $phi(x/y)$ 的表达式为（　）.
#choices[$-y^2/x^2$.][$y^2/x^2$.][$-x^2/y^2$.][$x^2/y^2$.]

（4）设函数 $f(x)$ 在 $(-infinity,+infinity)$ 内连续，其导函数的图形如图所示，则 $f(x)$ 有（　）.
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

（5）设 $I_1=integral_0^(pi/4) (tan x)/x dif x,I_2=integral_0^(pi/4) x/(tan x) dif x$，则（　）.
#choices[$I_1>I_2>1$.][$1>I_1>I_2$.][$I_2>I_1>1$.][$1>I_2>I_1$.]

（6）设向量组Ⅰ：$alpha_1,alpha_2,dots,alpha_r$ 可由向量组Ⅱ：$beta_1,beta_2,dots,beta_s$ 线性表示，则（　）.
#choices[当 $r<s$ 时，向量组Ⅱ必线性相关.][当 $r>s$ 时，向量组Ⅱ必线性相关.][当 $r<s$ 时，向量组Ⅰ必线性相关.][当 $r>s$ 时，向量组Ⅰ必线性相关.]

#ezexam.question(label: n => [三、])[
（本题满分10分）设函数
$ f(x)=cases(ln(1+a x^3)/(x-arcsin x) & x<0,6 & x=0,(e^(a x)+x^2-a x-1)/(x sin(x/4)) & x>0), $
问 $a$ 为何值时，$f(x)$ 在 $x=0$ 处连续；$a$ 为何值时，$x=0$ 是 $f(x)$ 的可去间断点？


]

#ezexam.question(label: n => [四、])[
（本题满分9分）设函数 $y=y(x)$ 由参数方程
$ cases(x=1+2t^2,y=integral_1^(1+2 ln t) e^u/u dif u) quad (t>1) $
所确定，求 $lr((dif^2 y)/(dif x^2))|_(x=9)$.


]

#ezexam.question(label: n => [五、])[
（本题满分9分）求不定积分 $integral (x e^(arctan x))/(1+x^2)^(3/2) dif x$.


]

#ezexam.question(label: n => [六、])[
（本题满分12分）设函数 $y=y(x)$ 在 $(-infinity,+infinity)$ 内具有二阶导数，且 $y'!=0$，$x=x(y)$ 是 $y=y(x)$ 的反函数.

（1）试将 $x=x(y)$ 所满足的微分方程 $(dif^2 x)/(dif y^2)+(y+sin x)((dif x)/(dif y))^3=0$ 变换为 $y=y(x)$ 满足的微分方程；

（2）求变换后的微分方程满足初始条件 $y(0)=0,y'(0)=3/2$ 的解.


]

#ezexam.question(label: n => [七、])[
（本题满分12分）讨论曲线 $y=4 ln x+k$ 与曲线 $y=4x+ln^4 x$ 交点的个数，其中 $k$ 为常数.


]

#ezexam.question(label: n => [八、])[
（本题满分12分）设位于第一象限的曲线 $y=f(x)$ 过点 $(sqrt(2)/2,1/2)$，其上任一点 $P(x,y)$ 处的法线与 $y$ 轴的交点为 $Q$，且线段 $P Q$ 被 $x$ 轴平分.

（1）求曲线 $y=f(x)$ 的方程；

（2）已知曲线 $y=sin x$ 在 $[0,pi]$ 上的弧长为 $l$，试用 $l$ 表示曲线 $y=f(x)$ 的弧长 $s$.


]

#ezexam.question(label: n => [九、])[
（本题满分10分）有一平底容器，其内侧壁是由曲线 $x=phi(y) (y>=0)$ 绕 $y$ 轴旋转而成的旋转曲面（如图），容器的底面圆的半径为2 m.根据设计要求，当以3 m³/min的速率向容器内注入液体时，液面的面积将以 $pi$ m²/min的速率均匀扩大（假设注入液体前，容器内无液体）.
#import "@preview/cetz:0.5.2"
#cetz.canvas({
 import cetz.draw: *
 set-style(stroke:.7pt)
 line((-2.4,0),(2.7,0),mark:(end:">"));line((0,-.4),(0,3.7),mark:(end:">"))
 content((2.7,0),$x$,anchor:"north");content((0,3.7),$y$,anchor:"east");content((0,0),$O$,anchor:"north-west")
 for y in (0,1.5,3) {
  let r=calc.exp(y*.23)
  line(..range(0,61).map(i=>{let a=i*calc.pi/60;(r*calc.cos(a),y+.25*r*calc.sin(a))}),stroke:(dash:if y < 3 {"dashed"} else {"solid"}))
  line(..range(0,61).map(i=>{let a=calc.pi+i*calc.pi/60;(r*calc.cos(a),y+.25*r*calc.sin(a))}))
 }
 for s in (-1,1) {line(..range(0,61).map(i=>{let y=i/20;(s*calc.exp(y*.23),y)}))}
 line((0,1.5),(calc.exp(.345),1.5),stroke:(dash:"dashed"))
 content((0,1.5),$y$,anchor:"east");content((1.6,1.5),$x=phi(y)$,anchor:"west")
 content((-1,0),$-2$,anchor:"north-east");content((1,0),$2$,anchor:"north-west")
})
（1）根据 $t$ 时刻液面的面积，写出 $t$ 与 $phi(y)$ 之间的关系式；

（2）求曲线 $x=phi(y)$ 的方程.

（注：m表示长度单位米，min表示时间单位分.）


]

#ezexam.question(label: n => [十、])[
（本题满分10分）设函数 $f(x)$ 在闭区间 $[a,b]$ 上连续，在开区间 $(a,b)$ 内可导，且 $f'(x)>0$.若极限 $lim_(x->a^+) f(2x-a)/(x-a)$ 存在，证明：

（1）在 $(a,b)$ 内 $f(x)>0$；

（2）在 $(a,b)$ 内存在点 $xi$，使
$ (b^2-a^2)/(integral_a^b f(x) dif x)=(2xi)/f(xi); $
（3）在 $(a,b)$ 内存在与（2）中 $xi$ 相异的点 $eta$，使
$ f'(eta)(b^2-a^2)=(2xi)/(xi-a) integral_a^b f(x) dif x. $


]

#ezexam.question(label: n => [十一、])[
（本题满分10分）若矩阵 $A=mat(2,2,0;8,2,a;0,0,6)$ 相似于对角矩阵 $Lambda$，试确定常数 $a$ 的值；并求可逆矩阵 $P$ 使 $P^(-1) A P=Lambda$.


]

#ezexam.question(label: n => [十二、])[
（本题满分8分）已知平面上三条不同直线的方程分别为
$ l_1:a x+2b y+3c=0, \
l_2:b x+2c y+3a=0, \
l_3:c x+2a y+3b=0. $
试证这三条直线交于一点的充分必要条件为 $a+b+c=0$.

]
