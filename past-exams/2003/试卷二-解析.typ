#import "../template.typ": exam
#show: exam.with(year: 2003, subject: "二", title: "2003年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#ezexam.answer-state.update(true)


= 一、填空题（本题共6小题，每小题4分，满分24分）
#ezexam.counter-question.step()

（1）若 $x->0$ 时，$(1-a x^2)^(1/4)-1$ 与 $x sin x$ 是等价无穷小，则 $a=$#h(3em).
#ezexam.solution(show-number: false)[
$-4$.
]

（2）设函数 $y=f(x)$ 由方程 $x y+2 ln x=y^4$ 所确定，则曲线 $y=f(x)$ 在点 $(1,1)$ 处的切线方程是#h(3em).
#ezexam.solution(show-number: false)[
$x-y=0$.
]

（3）$y=2^x$ 的麦克劳林公式中 $x^n$ 项的系数是#h(3em).
#ezexam.solution(show-number: false)[
$(ln 2)^n/(n!)$.
]

（4）设曲线的极坐标方程为 $rho=e^(a theta) (a>0)$，则该曲线上相应于 $theta$ 从0变到 $2 pi$ 的一段弧与极轴所围成的图形的面积为#h(3em).
#ezexam.solution(show-number: false)[
$1/(4a)(e^(4 pi a)-1)$.
]

（5）设 $alpha$ 为3维列向量，$alpha^T$ 是 $alpha$ 的转置.若 $alpha alpha^T=mat(1,-1,1;-1,1,-1;1,-1,1)$，则 $alpha^T alpha=$#h(3em).
#ezexam.solution(show-number: false)[
3.
]

（6）设三阶方阵 $A,B$ 满足 $A^2 B-A-B=E$，其中 $E$ 为三阶单位矩阵，若 $A=mat(1,0,1;0,2,0;-2,0,1)$，则 $|B|=$#h(3em).
#ezexam.solution(show-number: false)[
$1/2$.
]

= 二、选择题（本题共6小题，每小题4分，满分24分）
#ezexam.counter-question.step()

（1）设 $ {a_n},{b_n},{c_n} $ 均为非负数列，且 $lim_(n->infinity) a_n=0,lim_(n->infinity) b_n=1,lim_(n->infinity) c_n=infinity$，则必有（　）.
#choices[$a_n<b_n$ 对任意 $n$ 成立.][$b_n<c_n$ 对任意 $n$ 成立.][极限 $lim_(n->infinity) a_n c_n$ 不存在.][极限 $lim_(n->infinity) b_n c_n$ 不存在.]
#ezexam.solution(show-number: false)[
D.
]

（2）设 $a_n=3/2 integral_0^(n/(n+1)) x^(n-1) sqrt(1+x^n) dif x$，则极限 $lim_(n->infinity) n a_n$ 等于（　）.
#choices[$(1+e)^(3/2)+1$.][$(1+e^(-1))^(3/2)-1$.][$(1+e^(-1))^(3/2)+1$.][$(1+e)^(3/2)-1$.]
#ezexam.solution(show-number: false)[
B.
]

（3）已知 $y=x/ln x$ 是微分方程 $y'=y/x+phi(x/y)$ 的解，则 $phi(x/y)$ 的表达式为（　）.
#choices[$-y^2/x^2$.][$y^2/x^2$.][$-x^2/y^2$.][$x^2/y^2$.]
#ezexam.solution(show-number: false)[
A.
]

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
#ezexam.solution(show-number: false)[
C.
]

（5）设 $I_1=integral_0^(pi/4) (tan x)/x dif x,I_2=integral_0^(pi/4) x/(tan x) dif x$，则（　）.
#choices[$I_1>I_2>1$.][$1>I_1>I_2$.][$I_2>I_1>1$.][$1>I_2>I_1$.]
#ezexam.solution(show-number: false)[
B.
]

（6）设向量组Ⅰ：$alpha_1,alpha_2,dots,alpha_r$ 可由向量组Ⅱ：$beta_1,beta_2,dots,beta_s$ 线性表示，则（　）.
#choices[当 $r<s$ 时，向量组Ⅱ必线性相关.][当 $r>s$ 时，向量组Ⅱ必线性相关.][当 $r<s$ 时，向量组Ⅰ必线性相关.][当 $r>s$ 时，向量组Ⅰ必线性相关.]
#ezexam.solution(show-number: false)[
D.
]

#ezexam.question(label: n => [三、])[
（本题满分10分）设函数
$ f(x)=cases(ln(1+a x^3)/(x-arcsin x) & x<0,6 & x=0,(e^(a x)+x^2-a x-1)/(x sin(x/4)) & x>0), $
问 $a$ 为何值时，$f(x)$ 在 $x=0$ 处连续；$a$ 为何值时，$x=0$ 是 $f(x)$ 的可去间断点？
#ezexam.solution(show-number: false)[
解
$ lim_(x->0^-) f(x)&=lim_(x->0^-) ln(1+a x^3)/(x-arcsin x)=lim_(x->0^-) (a x^3)/(x-arcsin x) \
&=lim_(x->0^-) (3a x^2)/(1-1/sqrt(1-x^2)) \
&=lim_(x->0^-) (3a x^2)/(sqrt(1-x^2)-1) dot lim_(x->0^-) sqrt(1-x^2) \
&=lim_(x->0^-) (6a x)/(-x/sqrt(1-x^2))=-6a. $
$ lim_(x->0^+) f(x)&=4 lim_(x->0^+) (e^(a x)+x^2-a x-1)/x^2 \
&=4 lim_(x->0^+) (a e^(a x)+2x-a)/(2x) \
&=2 lim_(x->0^+) (a^2 e^(a x)+2)=2a^2+4. $
令 $-6a=2a^2+4$，得 $a=-1$ 或 $a=-2$.

当 $a=-1$ 时，$lim_(x->0) f(x)=6=f(0)$，故 $f(x)$ 在 $x=0$ 处连续；当 $a=-2$ 时，$lim_(x->0) f(x)=12 != f(0)$，故 $x=0$ 是 $f(x)$ 的可去间断点.
]


]

#ezexam.question(label: n => [四、])[
（本题满分9分）设函数 $y=y(x)$ 由参数方程
$ cases(x=1+2t^2,y=integral_1^(1+2 ln t) e^u/u dif u) quad (t>1) $
所确定，求 $lr((dif^2 y)/(dif x^2))|_(x=9)$.
#ezexam.solution(show-number: false)[
解 因为
$ (dif y)/(dif t)=e^(1+2 ln t)/(1+2 ln t) dot 2/t=(2e t)/(1+2 ln t), quad (dif x)/(dif t)=4t, $
所以
$ (dif y)/(dif x)=((2e t)/(1+2 ln t))/(4t)=e/(2(1+2 ln t)), $
$ (dif^2 y)/(dif x^2)&=dif/(dif t)((dif y)/(dif x)) dot 1/((dif x)/(dif t)) \
&=e/2 dot (-1)/(1+2 ln t)^2 dot 2/t dot 1/(4t)=-e/(4t^2 (1+2 ln t)^2). $
当 $x=9$ 时，$t=2$，故
$ lr((dif^2 y)/(dif x^2))|_(x=9)=-e/(16(1+2 ln 2)^2). $
]


]

#ezexam.question(label: n => [五、])[
（本题满分9分）求不定积分 $integral (x e^(arctan x))/(1+x^2)^(3/2) dif x$.
#ezexam.solution(show-number: false)[
解法1 令 $x=tan t$，则
$ integral (x e^(arctan x))/(1+x^2)^(3/2) dif x=integral (e^t tan t)/(1+tan^2 t)^(3/2) sec^2 t dif t=integral e^t sin t dif t. $
而
$ integral e^t sin t dif t&=-integral e^t dif cos t=-(e^t cos t-integral e^t cos t dif t) \
&=-e^t cos t+e^t sin t-integral e^t sin t dif t, $
故
$ integral e^t sin t dif t=1/2 e^t (sin t-cos t)+C. $
因此
$ integral (x e^(arctan x))/(1+x^2)^(3/2) dif x&=1/2 e^(arctan x)(x/sqrt(1+x^2)-1/sqrt(1+x^2))+C \
&=((x-1)e^(arctan x))/(2 sqrt(1+x^2))+C. $
解法2
$ integral (x e^(arctan x))/(1+x^2)^(3/2) dif x&=integral x/sqrt(1+x^2) dif e^(arctan x) \
&=(x e^(arctan x))/sqrt(1+x^2)-integral e^(arctan x)/(1+x^2)^(3/2) dif x \
&=(x e^(arctan x))/sqrt(1+x^2)-integral 1/sqrt(1+x^2) dif e^(arctan x) \
&=(x e^(arctan x))/sqrt(1+x^2)-e^(arctan x)/sqrt(1+x^2)-integral (x e^(arctan x))/(1+x^2)^(3/2) dif x. $
移项，得
$ integral (x e^(arctan x))/(1+x^2)^(3/2) dif x=((x-1)e^(arctan x))/(2 sqrt(1+x^2))+C. $
]


]

#ezexam.question(label: n => [六、])[
（本题满分12分）设函数 $y=y(x)$ 在 $(-infinity,+infinity)$ 内具有二阶导数，且 $y'!=0$，$x=x(y)$ 是 $y=y(x)$ 的反函数.

（1）试将 $x=x(y)$ 所满足的微分方程 $(dif^2 x)/(dif y^2)+(y+sin x)((dif x)/(dif y))^3=0$ 变换为 $y=y(x)$ 满足的微分方程；

（2）求变换后的微分方程满足初始条件 $y(0)=0,y'(0)=3/2$ 的解.
#ezexam.solution(show-number: false)[
*解* （1）由反函数导数公式知 $(dif x)/(dif y)=1/y'$，即 $y'(dif x)/(dif y)=1$.

上式两端关于 $x$ 求导，得
$ y''(dif x)/(dif y)+(dif^2 x)/(dif y^2)(y')^2=0, $
所以 $(dif^2 x)/(dif y^2)=-(((dif x)/(dif y))y'')/(y')^2=-y''/(y')^3$.

代入原微分方程得 $y''-y=sin x$.（\*）

（2）方程（\*）所对应的齐次方程 $y''-y=0$ 的通解为 $Y=C_1 e^x+C_2 e^(-x)$.

设方程（\*）的特解为 $y^*=A cos x+B sin x$，代入方程（\*）求得 $A=0,B=-1/2$，故 $y^*=-1/2 sin x$，从而 $y''-y=sin x$ 的通解是
$ y(x)=C_1 e^x+C_2 e^(-x)-1/2 sin x. $
由 $y(0)=0,y'(0)=3/2$，得 $C_1=1,C_2=-1$，故所求初值问题的解为
$ y(x)=e^x-e^(-x)-1/2 sin x. $
]


]

#ezexam.question(label: n => [七、])[
（本题满分12分）讨论曲线 $y=4 ln x+k$ 与曲线 $y=4x+ln^4 x$ 交点的个数，其中 $k$ 为常数.
#ezexam.solution(show-number: false)[
解 问题等价于讨论方程 $ln^4 x-4 ln x+4x-k=0$ 有几个不同实根.

设 $phi(x)=ln^4 x-4 ln x+4x-k$，则
$ phi'(x)=4(ln^3 x-1+x)/x. $
不难看出，$x=1$ 是 $phi(x)$ 的驻点.

当 $0<x<1$ 时，$phi'(x)<0$，即 $phi(x)$ 单调减少；当 $x>1$ 时，$phi'(x)>0$，即 $phi(x)$ 单调增加，故 $phi(1)=4-k$ 为函数 $phi(x)$ 的最小值.

当 $k<4$，即 $4-k>0$ 时，$phi(x)=0$ 无实根，即两条曲线无交点.

当 $k=4$，即 $4-k=0$ 时，$phi(x)=0$ 有唯一实根，即两条曲线只有一个交点.

当 $k>4$，即 $4-k<0$ 时，由于
$ lim_(x->0^+) phi(x)=lim_(x->0^+) [ln x(ln^3 x-4)+4x-k]=+infinity; $
$ lim_(x->+infinity) phi(x)=lim_(x->+infinity) [ln x(ln^3 x-4)+4x-k]=+infinity, $
故 $phi(x)=0$ 有两个实根，分别位于 $(0,1)$ 与 $(1,+infinity)$ 内，即两条曲线有两个交点.
]


]

#ezexam.question(label: n => [八、])[
（本题满分12分）设位于第一象限的曲线 $y=f(x)$ 过点 $(sqrt(2)/2,1/2)$，其上任一点 $P(x,y)$ 处的法线与 $y$ 轴的交点为 $Q$，且线段 $P Q$ 被 $x$ 轴平分.

（1）求曲线 $y=f(x)$ 的方程；

（2）已知曲线 $y=sin x$ 在 $[0,pi]$ 上的弧长为 $l$，试用 $l$ 表示曲线 $y=f(x)$ 的弧长 $s$.
#ezexam.solution(show-number: false)[
解 （1）曲线 $y=f(x)$ 在点 $P(x,y)$ 处的法线方程为
$ Y-y=-1/y' (X-x), $
其中 $(X,Y)$ 为法线上任意一点的坐标.令 $X=0$，则
$ Y=y+x/y', $
故 $Q$ 点坐标为 $(0,y+x/y')$.由题设知
$ y+y+x/y'=0, #text[即] 2y dif y+x dif x=0. $
积分得
$ x^2+2y^2=C quad (C #text[为任意常数]). $
由 $lr(y)|_(x=sqrt(2)/2)=1/2$ 知 $C=1$，故曲线 $y=f(x)$ 的方程为
$ x^2+2y^2=1. $
（2）曲线 $y=sin x$ 在 $[0,pi]$ 上的弧长为
$ l=2 integral_0^(pi/2) sqrt(1+cos^2 x) dif x. $
曲线 $y=f(x)$ 的参数方程为
$ cases(x=cos theta,y=sqrt(2)/2 sin theta), $
故
$ s=integral_0^(pi/2) sqrt(sin^2 theta+1/2 cos^2 theta) dif theta=1/sqrt(2) integral_0^(pi/2) sqrt(1+sin^2 theta) dif theta. $
令 $theta=pi/2-t$，则
$ s&=1/sqrt(2) integral_(pi/2)^0 sqrt(1+cos^2 t)(-dif t)=1/sqrt(2) integral_0^(pi/2) sqrt(1+cos^2 t) dif t \
&=l/(2 sqrt(2))=sqrt(2)/4 l. $
]


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
#ezexam.solution(show-number: false)[
解 （1）设在 $t$ 时刻，液面的高度为 $y$，则由题设知此时液面的面积为 $pi phi^2(y)=4 pi+pi t$，从而 $t=phi^2(y)-4$.

（2）液面的高度为 $y$ 时，液体的体积为 $pi integral_0^y phi^2(u) dif u=3t=3 phi^2(y)-12$.

上式两边对 $y$ 求导，得
$ pi phi^2(y)=6 phi(y)phi'(y), #text[即] pi phi(y)=6 phi'(y). $
解此微分方程，得
$ phi(y)=C e^(pi/6 y), #text[其中] C #text[为任意常数], $
由 $phi(0)=2$，知 $C=2$，故所求曲线方程为
$ x=2e^(pi/6 y). $
]


]

#ezexam.question(label: n => [十、])[
（本题满分10分）设函数 $f(x)$ 在闭区间 $[a,b]$ 上连续，在开区间 $(a,b)$ 内可导，且 $f'(x)>0$.若极限 $lim_(x->a^+) f(2x-a)/(x-a)$ 存在，证明：

（1）在 $(a,b)$ 内 $f(x)>0$；

（2）在 $(a,b)$ 内存在点 $xi$，使
$ (b^2-a^2)/(integral_a^b f(x) dif x)=(2xi)/f(xi); $
（3）在 $(a,b)$ 内存在与（2）中 $xi$ 相异的点 $eta$，使
$ f'(eta)(b^2-a^2)=(2xi)/(xi-a) integral_a^b f(x) dif x. $
#ezexam.solution(show-number: false)[
证 （1）因为 $lim_(x->a^+) f(2x-a)/(x-a)$ 存在，故 $lim_(x->a^+) f(2x-a)=0$.由 $f(x)$ 在 $[a,b]$ 上连续，从而 $f(a)=0$.又 $f'(x)>0$ 知 $f(x)$ 在 $(a,b)$ 内单调增加，故
$ f(x)>f(a)=0,x in (a,b). $
（2）设 $F(x)=x^2,g(x)=integral_a^x f(t) dif t (a<=x<=b)$，则 $g'(x)=f(x)>0$，故 $F(x),g(x)$ 满足柯西中值定理的条件，于是在 $(a,b)$ 内存在点 $xi$，使
$ (F(b)-F(a))/(g(b)-g(a))=(b^2-a^2)/(integral_a^b f(t) dif t-integral_a^a f(t) dif t)=lr(((x^2)')/((integral_a^x f(t) dif t)'))|_(x=xi), $
即
$ (b^2-a^2)/(integral_a^b f(x) dif x)=(2xi)/f(xi). $
（3）因 $f(xi)=f(xi)-0=f(xi)-f(a)$，在 $[a,xi]$ 上应用拉格朗日中值定理，知在 $(a,xi)$ 内存在一点 $eta$，使 $f(xi)=f'(eta)(xi-a)$，从而由（2）的结论得
$ (b^2-a^2)/(integral_a^b f(x) dif x)=(2xi)/(f'(eta)(xi-a)), $
即有
$ f'(eta)(b^2-a^2)=(2xi)/(xi-a) integral_a^b f(x) dif x. $
]


]

#ezexam.question(label: n => [十一、])[
（本题满分10分）若矩阵 $A=mat(2,2,0;8,2,a;0,0,6)$ 相似于对角矩阵 $Lambda$，试确定常数 $a$ 的值；并求可逆矩阵 $P$ 使 $P^(-1) A P=Lambda$.
#ezexam.solution(show-number: false)[
解 矩阵 $A$ 的特征多项式为
$ |lambda E-A|&=mat(delim:"|",lambda-2,-2,0;-8,lambda-2,-a;0,0,lambda-6) \
&=(lambda-6)[(lambda-2)^2-16]=(lambda-6)^2 (lambda+2), $
故 $A$ 的特征值 $lambda_1=lambda_2=6,lambda_3=-2$.

由于 $A$ 相似于对角矩阵 $Lambda$，故对应于 $lambda_1=lambda_2=6$ 应有两个线性无关的特征向量，因此矩阵 $6E-A$ 的秩应为1.从而有
$ 6E-A=mat(4,-2,0;-8,4,-a;0,0,0)->mat(2,-1,0;0,0,a;0,0,0), $
知 $a=0$.

于是对应于 $lambda_1=lambda_2=6$ 的两个线性无关特征向量可取为
$ xi_1=mat(0;0;1),xi_2=mat(1;2;0). $
当 $lambda_3=-2$ 时
$ lambda E-A=mat(-4,-2,0;-8,-4,0;0,0,-8)->mat(2,1,0;0,0,1;0,0,0), $
解方程组 $cases(2x_1+x_2=0,x_3=0)$，得对应于 $lambda_3=-2$ 的特征向量 $xi_3=mat(1;-2;0)$.

令 $P=mat(0,1,1;0,2,-2;1,0,0)$，则 $P$ 可逆，并有 $P^(-1) A P=Lambda$.
]


]

#ezexam.question(label: n => [十二、])[
（本题满分8分）已知平面上三条不同直线的方程分别为
$ l_1:a x+2b y+3c=0, \
l_2:b x+2c y+3a=0, \
l_3:c x+2a y+3b=0. $
试证这三条直线交于一点的充分必要条件为 $a+b+c=0$.
#ezexam.solution(show-number: false)[
*证法1* 必要性：设三直线 $l_1,l_2,l_3$ 交于一点，则线性方程组
$ cases(a x+2b y=-3c,b x+2c y=-3a,c x+2a y=-3b) quad #text[（\*）] $
有唯一解，故系数矩阵 $A=mat(a,2b;b,2c;c,2a)$ 与增广矩阵 $overline(A)=mat(a,2b,-3c;b,2c,-3a;c,2a,-3b)$ 的秩均为2，于是 $|overline(A)|=0$.

由于
$ |overline(A)|&=mat(delim:"|",a,2b,-3c;b,2c,-3a;c,2a,-3b) \
&=6(a+b+c)[a^2+b^2+c^2-a b-a c-b c] \
&=3(a+b+c)[(a-b)^2+(b-c)^2+(c-a)^2], $
但 $(a-b)^2+(b-c)^2+(c-a)^2!=0$，故 $a+b+c=0$.

充分性：由 $a+b+c=0$，则从必要性的证明可知，$|overline(A)|=0$，故秩$(overline(A))<3$.

由于
$ mat(delim:"|",a,2b;b,2c)=2(a c-b^2)=-2[a(a+b)+b^2]=-2[(a+1/2 b)^2+3/4 b^2]!=0, $
故秩$(A)=2$.于是，秩$(A)=$秩$(overline(A))=2$.

因此方程组（\*）有唯一解，即三直线 $l_1,l_2,l_3$ 交于一点.

*证法2* 必要性：设三直线交于一点 $(x_0,y_0)$，则 $mat(x_0;y_0;1)$ 为 $A x=0$ 的非零解，其中 $A=mat(a,2b,3c;b,2c,3a;c,2a,3b)$.于是 $|A|=0$.

而
$ |A|&=mat(delim:"|",a,2b,3c;b,2c,3a;c,2a,3b) \
&=-6(a+b+c)[a^2+b^2+c^2-a b-b c-a c] \
&=-3(a+b+c)[(a-b)^2+(b-c)^2+(c-a)^2], $
但 $(a-b)^2+(b-c)^2+(c-a)^2!=0$，故 $a+b+c=0$.

充分性：考虑线性方程组
$ cases(a x+2b y=-3c,b x+2c y=-3a,c x+2a y=-3b). quad #text[（\*）] $
将方程组（\*）的三个方程相加，并由 $a+b+c=0$ 可知，方程组（\*）等价于方程组
$ cases(a x+2b y=-3c,b x+2c y=-3a). quad #text[（\*\*）] $
因为
$ mat(delim:"|",a,2b;b,2c)=2(a c-b^2)=-2[a(a+b)+b^2]=-[a^2+b^2+(a+b)^2]!=0. $
故方程组（\*\*）有唯一解，所以方程组（\*）有唯一解，即三直线 $l_1,l_2,l_3$ 交于一点.
]

]
