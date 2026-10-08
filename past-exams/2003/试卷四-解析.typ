#import "../template.typ": exam
#show: exam.with(year: 2003, subject: "四", title: "2003年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#ezexam.answer-state.update(true)


= 一、填空题（本题共6小题，每小题4分，满分24分）
#ezexam.counter-question.step()

（1）极限 $lim_(x->0) [1+ln(1+x)]^(2/x)=$#h(3em).
#ezexam.solution(show-number: false)[
$e^2$.
]

（2）$integral_(-1)^1 (|x|+x)e^(-|x|) dif x=$#h(3em).
#ezexam.solution(show-number: false)[
$2(1-2e^(-1))$.
]

（3）设 $a>0,f(x)=g(x)=cases(a & 0<=x<=1,0 & #text[其他])$，而 $D$ 表示全平面，则 $I=integral.double_D f(x)g(y-x) dif x dif y=$#h(3em).
#ezexam.solution(show-number: false)[
$a^2$.
]

（4）设 $A,B$ 均为三阶矩阵，$E$ 是三阶单位矩阵.已知 $A B=2A+B,B=mat(2,0,2;0,4,0;2,0,2)$，则 $(A-E)^(-1)=$#h(3em).
#ezexam.solution(show-number: false)[
$mat(0,0,1;0,1,0;1,0,0)$.
]

（5）设 $n$ 维向量 $alpha=(a,0,dots,0,a)^T,a<0$；$E$ 为 $n$ 阶单位矩阵，矩阵
$ A=E-alpha alpha^T,B=E+1/a alpha alpha^T, $
其中 $A$ 的逆矩阵为 $B$，则 $a=$#h(3em).
#ezexam.solution(show-number: false)[
$-1$.
]

（6）设随机变量 $X$ 和 $Y$ 的相关系数为0.5，$E X=E Y=0,E X^2=E Y^2=2$，则 $E(X+Y)^2=$#h(3em).
#ezexam.solution(show-number: false)[
6.
]

= 二、选择题（本题共6小题，每小题4分，满分24分）
#ezexam.counter-question.step()

（1）曲线 $y=x e^(1/x^2)$（　）.
#choices[仅有水平渐近线.][仅有铅直渐近线.][既有铅直又有水平渐近线.][既有铅直又有斜渐近线.]
#ezexam.solution(show-number: false)[
D.
]

（2）设函数 $f(x)=|x^3-1| phi(x)$，其中 $phi(x)$ 在 $x=1$ 处连续，则 $phi(1)=0$ 是 $f(x)$ 在 $x=1$ 处可导的（　）.
#choices[充分必要条件.][必要但非充分条件.][充分但非必要条件.][既非充分也非必要条件.]
#ezexam.solution(show-number: false)[
A.
]

（3）设可微函数 $f(x,y)$ 在点 $(x_0,y_0)$ 取得极小值，则下列结论正确的是（　）.
#choices[$f(x_0,y)$ 在 $y=y_0$ 处的导数大于零.][$f(x_0,y)$ 在 $y=y_0$ 处的导数等于零.][$f(x_0,y)$ 在 $y=y_0$ 处的导数小于零.][$f(x_0,y)$ 在 $y=y_0$ 处的导数不存在.]
#ezexam.solution(show-number: false)[
B.
]

（4）设矩阵 $B=mat(0,0,1;0,1,0;1,0,0)$，已知矩阵 $A$ 相似于 $B$，则 $op("秩")(A-2E)$ 与 $op("秩")(A-E)$ 之和等于（　）.
#choices[2.][3.][4.][5.]
#ezexam.solution(show-number: false)[
C.
]

（5）对于任意二事件 $A$ 和 $B$，（　）.
#choices[若 $A B != emptyset$，则 $A,B$ 一定独立.][若 $A B != emptyset$，则 $A,B$ 有可能独立.][若 $A B != emptyset$，则 $B,B$ 一定独立.][若 $A B != emptyset$，则 $A,B$ 一定不独立.]
#ezexam.solution(show-number: false)[
B.
]

（6）设随机变量 $X$ 和 $Y$ 都服从正态分布，且它们不相关，则（　）.
#choices[$X$ 与 $Y$ 一定独立.][$(X,Y)$ 服从二维正态分布.][$X$ 与 $Y$ 未必独立.][$X+Y$ 服从一维正态分布.]
#ezexam.solution(show-number: false)[
C.
]

#ezexam.question(label: n => [三、])[
（本题满分8分）设 $f(x)=1/(sin pi x)-1/(pi x)-1/(pi(1-x)),x in (0,1/2]$，试补充定义 $f(0)$，使得 $f(x)$ 在 $[0,1/2]$ 上连续.
#ezexam.solution(show-number: false)[
解
$ lim_(x->0^+) f(x)&=-1/pi+lim_(x->0^+) (pi x-sin pi x)/(pi x sin pi x) \
&=-1/pi+lim_(x->0^+) (pi x-sin pi x)/(pi^2 x^2) \
&=-1/pi+lim_(x->0^+) (pi-pi cos pi x)/(2 pi^2 x) \
&=-1/pi+lim_(x->0^+) (pi^2 sin pi x)/(2 pi^2)=-1/pi. $
由于 $f(x)$ 在 $(0,1/2]$ 上连续，则定义
$ f(0)=-1/pi, $
就可使 $f(x)$ 在 $[0,1/2]$ 上连续.
]


]

#ezexam.question(label: n => [四、])[
（本题满分8分）设 $f(u,v)$ 具有二阶连续偏导数，且满足 $(partial^2 f)/(partial u^2)+(partial^2 f)/(partial v^2)=1$，又 $g(x,y)=f[x y,1/2(x^2-y^2)]$，求 $(partial^2 g)/(partial x^2)+(partial^2 g)/(partial y^2)$.
#ezexam.solution(show-number: false)[
解
$ (partial g)/(partial x)=y (partial f)/(partial u)+x (partial f)/(partial v), \
(partial g)/(partial y)=x (partial f)/(partial u)-y (partial f)/(partial v). $
故
$ (partial^2 g)/(partial x^2)=y^2 (partial^2 f)/(partial u^2)+2x y (partial^2 f)/(partial u partial v)+x^2 (partial^2 f)/(partial v^2)+(partial f)/(partial v), \
(partial^2 g)/(partial y^2)=x^2 (partial^2 f)/(partial u^2)-2x y (partial^2 f)/(partial u partial v)+y^2 (partial^2 f)/(partial v^2)-(partial f)/(partial v). $
所以
$ (partial^2 g)/(partial x^2)+(partial^2 g)/(partial y^2)&=(x^2+y^2)(partial^2 f)/(partial u^2)+(x^2+y^2)(partial^2 f)/(partial v^2) \
&=x^2+y^2. $
]


]

#ezexam.question(label: n => [五、])[
（本题满分8分）计算二重积分
$ I=integral.double_D e^(-(x^2+y^2-pi)) sin(x^2+y^2) dif x dif y, $
其中积分区域 $D={(x,y) | x^2+y^2<=pi}$.
#ezexam.solution(show-number: false)[
解 作极坐标变换：$x=r cos theta,y=r sin theta$，有
$ I&=e^pi integral.double_D e^(-(x^2+y^2)) sin(x^2+y^2) dif x dif y \
&=e^pi integral_0^(2 pi) dif theta integral_0^sqrt (pi) r e^(-r^2) sin r^2 dif r. $
令 $t=r^2$，则
$ I=pi e^pi integral_0^pi e^(-t) sin t dif t. $
记 $A=integral_0^pi e^(-t) sin t dif t$，则
$ A&=-integral_0^pi sin t dif e^(-t) \
&=-[lr(e^(-t) sin t)|_0^pi-integral_0^pi e^(-t) cos t dif t] \
&=-integral_0^pi cos t dif e^(-t) \
&=-[lr(e^(-t) cos t)|_0^pi+integral_0^pi e^(-t) sin t dif t] \
&=e^(-pi)+1-A. $
因此
$ A=1/2(1+e^(-pi)), quad I=(pi e^pi)/2(1+e^(-pi))=pi/2(1+e^pi). $
]


]

#ezexam.question(label: n => [六、])[
（本题满分9分）设 $a>1,f(t)=a^t-a t$ 在 $(-infinity,+infinity)$ 内的驻点为 $t(a)$.问 $a$ 为何值时，$t(a)$ 最小？并求出最小值.
#ezexam.solution(show-number: false)[
解 由 $f'(t)=a^t ln a-a=0$，得唯一驻点
$ t(a)=1-(ln ln a)/(ln a). $
考察函数 $t(a)=1-(ln ln a)/(ln a)$ 在 $a>1$ 时的最小值.令
$ t'(a)=-(1/a-1/a ln ln a)/(ln a)^2=-(1-ln ln a)/(a(ln a)^2)=0, $
得唯一驻点 $a=e^e$.

当 $a>e^e$ 时，$t'(a)>0$；当 $a<e^e$ 时，$t'(a)<0$，因此
$ t(e^e)=1-1/e $
为极小值，从而是最小值.
]


]

#ezexam.question(label: n => [七、])[
（本题满分9分）设 $y=f(x)$ 是第一象限内连接点 $A(0,1),B(1,0)$ 的一段连续曲线，$M(x,y)$ 为该曲线上任意一点，点 $C$ 为 $M$ 在 $x$ 轴上的投影，$O$ 为坐标原点.若梯形 $O C M A$ 的面积与曲边三角形 $C B M$ 的面积之和为 $x^3/6+1/3$，求 $f(x)$ 的表达式.
#ezexam.solution(show-number: false)[
解 根据题意，有
$ x/2[1+f(x)]+integral_x^1 f(t) dif t=x^3/6+1/3. $
#import "@preview/cetz:0.5.2"
#cetz.canvas({
 import cetz.draw: *
 set-style(stroke:.7pt)
 line((-.4,0),(3.7,0),mark:(end:">"));line((0,-.3),(0,3.5),mark:(end:">"))
 line(..range(0,81).map(i=>{let x=i/80;(3*x,3*(1 - x)*(1 - x))}))
 line((0,3),(1.32,.9408),(1.32,0))
 content((0,0),$O$,anchor:"north-east");content((0,3),$A$,anchor:"south-west")
 content((3,0),$B$,anchor:"north");content((1.32,0),$C$,anchor:"north")
 content((1.32,.9408),$M$,anchor:"south-west");content((3.7,0),$x$,anchor:"north");content((0,3.5),$y$,anchor:"east")
})
两边关于 $x$ 求导，得
$ 1/2[1+f(x)]+1/2 x f'(x)-f(x)=1/2 x^2. $
当 $x != 0$ 时，得
$ f'(x)-1/x f(x)=(x^2-1)/x. $
故
$ f(x)&=e^(-integral -1/x dif x)[integral (x^2-1)/x e^(integral -1/x dif x) dif x+C] \
&=e^(ln x)[integral (x^2-1)/x e^(-ln x) dif x+C] \
&=x(integral (x^2-1)/x^2 dif x+C)=x(x+1/x+C)=x^2+1+C x. $
当 $x=0$ 时，$f(0)=1$.

由于 $x=1$ 时，$f(1)=0$，故有 $2+C=0$，从而 $C=-2$.所以
$ f(x)=x^2-2x+1=(x-1)^2. $
]


]

#ezexam.question(label: n => [八、])[
（本题满分8分）设某商品从时刻0到时刻 $t$ 的销售量为 $x(t)=k t,t in [0,T],(k>0)$.欲在 $T$ 时将数量为 $A$ 的该商品销售完，试求

（1）$t$ 时的商品剩余量，并确定 $k$ 的值；

（2）在时间段 $[0,T]$ 上的平均剩余量.
#ezexam.solution(show-number: false)[
解 （1）在时刻 $t$ 商品的剩余量为
$ y(t)=A-x(t)=A-k t, quad t in [0,T]. $
由 $A-k T=0$，得 $k=A/T$，因此
$ y(t)=A-A/T t, quad t in [0,T]. $
（2）依题意，$y(t)$ 在 $[0,T]$ 上的平均值为
$ overline(y)=1/T integral_0^T y(t) dif t=1/T integral_0^T (A-A/T t) dif t=A/2. $
因此在时间段 $[0,T]$ 上的平均剩余量为 $A/2$.
]


]

#ezexam.question(label: n => [九、])[
（本题满分13分）设有向量组（Ⅰ）：$alpha_1=(1,0,2)^T,alpha_2=(1,1,3)^T,alpha_3=(1,-1,a+2)^T$ 和向量组（Ⅱ）：$beta_1=(1,2,a+3)^T,beta_2=(2,1,a+6)^T,beta_3=(2,1,a+4)^T$.试问：当 $a$ 为何值时，向量组（Ⅰ）与（Ⅱ）等价？当 $a$ 为何值时，向量组（Ⅰ）与（Ⅱ）不等价？
#ezexam.solution(show-number: false)[
解 作初等行变换，有
$ (alpha_1,alpha_2,alpha_3 quad bar.v quad beta_1,beta_2,beta_3)&=mat(augment:#3,1,1,1,1,2,2;0,1,-1,2,1,1;2,3,a+2,a+3,a+6,a+4) \
&->mat(augment:#3,1,0,2,-1,1,1;0,1,-1,2,1,1;0,0,a+1,a-1,a+1,a-1). $
（1）当 $a != -1$ 时，有行列式 $|alpha_1 quad alpha_2 quad alpha_3|=a+1 != 0$，$op("秩")(alpha_1,alpha_2,alpha_3)=3$，故线性方程组 $x_1 alpha_1+x_2 alpha_2+x_3 alpha_3=beta_i (i=1,2,3)$ 均有唯一解.所以 $beta_1,beta_2,beta_3$ 可由向量组（Ⅰ）线性表示.

同样，行列式 $|beta_1 quad beta_2 quad beta_3|=6 != 0$，$op("秩")(beta_1,beta_2,beta_3)=3$，故 $alpha_1,alpha_2,alpha_3$ 可由向量组（Ⅱ）线性表示.因此，向量组（Ⅰ）与（Ⅱ）等价.

（2）当 $a=-1$ 时，有
$ (alpha_1,alpha_2,alpha_3 quad bar.v quad beta_1,beta_2,beta_3)->mat(augment:#3,1,0,2,-1,1,1;0,1,-1,2,1,1;0,0,0,-2,0,-2). $
由于 $op("秩")(alpha_1,alpha_2,alpha_3) != op("秩")(alpha_1,alpha_2,alpha_3 quad bar.v quad beta_1)$，线性方程组 $x_1 alpha_1+x_2 alpha_2+x_3 alpha_3=beta_1$ 无解，故向量 $beta_1$ 不能由 $alpha_1,alpha_2,alpha_3$ 线性表示.因此，向量组（Ⅰ）与（Ⅱ）不等价.
]


]

#ezexam.question(label: n => [十、])[
（本题满分13分）设矩阵 $A=mat(2,1,1;1,2,1;1,1,a)$ 可逆，向量 $alpha=mat(1;b;1)$ 是矩阵 $A^*$ 的一个特征向量，$lambda$ 是 $alpha$ 对应的特征值，其中 $A^*$ 是矩阵 $A$ 的伴随矩阵.试求 $a,b$ 和 $lambda$ 的值.
#ezexam.solution(show-number: false)[
解 矩阵 $A^*$ 的属于特征值 $lambda$ 的特征向量为 $alpha$，由于矩阵 $A$ 可逆，故 $A^*$ 可逆.于是 $lambda != 0,|A| != 0$，且
$ A^* alpha=lambda alpha. $
两边同时左乘矩阵 $A$，得
$ A A^* alpha=lambda A alpha, quad A alpha=|A|/lambda alpha, $
即
$ mat(2,1,1;1,2,1;1,1,a)mat(1;b;1)=|A|/lambda mat(1;b;1), $
由此，得方程组
$ cases(3+b=|A|/lambda & #text[①],2+2b=|A|/lambda b & #text[②],a+b+1=|A|/lambda & #text[③]). $
由式①，②解得 $b=1$ 或 $b=-2$；由式①，③解得 $a=2$.

由于
$ |A|=mat(delim:"|",2,1,1;1,2,1;1,1,a)=3a-2=4, $
根据①式知，特征向量 $alpha$ 所对应的特征值
$ lambda=|A|/(3+b)=4/(3+b). $
所以，当 $b=1$ 时，$lambda=1$；当 $b=-2$ 时，$lambda=4$.
]


]

#ezexam.question(label: n => [十一、])[
（本题满分13分）设随机变量 $X$ 的概率密度为
$ f(x)=cases(1/(3 root(3,x^2)) & x in [1,8],0 & #text[其他]); $
$F(x)$ 是 $X$ 的分布函数.求随机变量 $Y=F(X)$ 的分布函数.
#ezexam.solution(show-number: false)[
解 易见，当 $x<1$ 时，$F(x)=0$；当 $x>8$ 时，$F(x)=1$.

对于 $x in [1,8]$，有
$ F(x)=integral_1^x 1/(3 root(3,t^2)) dif t=root(3,x)-1. $
设 $G(y)$ 是随机变量 $Y=F(X)$ 的分布函数.显然，当 $y<=0$ 时 $G(y)=0$；当 $y>=1$ 时 $G(y)=1$.

对于 $y in (0,1)$，有
$ G(y)&=P{Y<=y}=P{F(X)<=y} \
&=P{root(3,X)-1<=y}=P{X<=(y+1)^3}=F[(y+1)^3]=y. $
于是，$Y=F(X)$ 的分布函数为
$ G(y)=cases(0 & y<=0,y & 0<y<1,1 & y>=1). $
]


]

#ezexam.question(label: n => [十二、])[
（本题满分13分）对于任意二事件 $A$ 和 $B$，$0<P(A)<1,0<P(B)<1$，
$ rho=(P(A B)-P(A)P(B))/sqrt(P(A)P(B)P(overline(A))P(overline(B))) $
称做事件 $A$ 和 $B$ 的相关系数.

（1）证明事件 $A$ 和 $B$ 独立的充分必要条件是其相关系数等于零；

（2）利用随机变量相关系数的基本性质，证明 $|rho|<=1$.
#ezexam.solution(show-number: false)[
证明 （1）由 $rho$ 的定义，可见 $rho=0$ 当且仅当
$ P(A B)-P(A)P(B)=0, $
而这恰好是二事件 $A$ 和 $B$ 独立的定义，即 $rho=0$ 是 $A$ 和 $B$ 独立的充分必要条件.

（2）考虑随机变量 $X$ 和 $Y$：
$ X=cases(1 & #text[若] A #text[出现],0 & #text[若] A #text[不出现]); quad Y=cases(1 & #text[若] B #text[出现],0 & #text[若] B #text[不出现]). $
由条件知，$X$ 和 $Y$ 都服从0—1分布：
$ X tilde mat(0,1;1-P(A),P(A)),Y tilde mat(0,1;1-P(B),P(B)). $
易见
$ E X=P(A),E Y=P(B); \
 D X=P(A)P(overline(A)),D Y=P(B)P(overline(B)); \
 op("cov")(X,Y)=P(A B)-P(A)P(B). $
因此，事件 $A$ 和 $B$ 的相关系数就是随机变量 $X$ 和 $Y$ 的相关系数.

于是由二维随机变量相关系数的基本性质，可见 $|rho|<=1$.
]

]
