#import "../template.typ": exam
#show: exam.with(year: 2003, subject: "一", title: "2003年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#ezexam.answer-state.update(true)


= 一、填空题（本题共6小题，每小题4分，满分24分）
#ezexam.counter-question.step()

（1）$lim_(x->0) (cos x)^(1/ln(1+x^2))=$#h(3em).
#ezexam.solution(show-number: false)[
$1/sqrt(e)$.
]

（2）曲面 $z=x^2+y^2$ 与平面 $2x+4y-z=0$ 平行的切平面的方程是#h(3em).
#ezexam.solution(show-number: false)[
$2x+4y-z=5$.
]

（3）设 $x^2=sum_(n=0)^infinity a_n cos(n x) (-pi<=x<=pi)$，则 $a_2=$#h(3em).
#ezexam.solution(show-number: false)[
1.
]

（4）从 $bold(upright(R))^2$ 的基 $alpha_1=mat(1;0),alpha_2=mat(1;-1)$ 到基 $beta_1=mat(1;1),beta_2=mat(1;2)$ 的过渡矩阵为#h(3em).
#ezexam.solution(show-number: false)[
$mat(2,3;-1,-2)$.
]

（5）设二维随机变量 $(X,Y)$ 的概率密度为
$ f(x,y)=cases(6x & 0<=x<=y<=1,0 & #text[其他]), $
则 $P{X+Y<=1}=$#h(3em).
#ezexam.solution(show-number: false)[
$1/4$.
]

（6）已知一批零件的长度 $X$（单位：cm）服从正态分布 $N(mu,1)$，从中随机地抽取16个零件，得到长度的平均值为40（cm），则 $mu$ 的置信度为0.95的置信区间是#h(3em).

（注：标准正态分布函数值 $Phi(1.96)=0.975,Phi(1.645)=0.95$.）
#ezexam.solution(show-number: false)[
$(39.51,40.49)$.
]

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
#ezexam.solution(show-number: false)[
C.
]

（2）设 $ {a_n},{b_n},{c_n} $ 均为非负数列，且 $lim_(n->infinity) a_n=0,lim_(n->infinity) b_n=1,lim_(n->infinity) c_n=infinity$，则必有（　）.
#choices[$a_n<b_n$ 对任意 $n$ 成立.][$b_n<c_n$ 对任意 $n$ 成立.][极限 $lim_(n->infinity) a_n c_n$ 不存在.][极限 $lim_(n->infinity) b_n c_n$ 不存在.]
#ezexam.solution(show-number: false)[
D.
]

（3）已知函数 $f(x,y)$ 在点 $(0,0)$ 的某个邻域内连续，且 $lim_((x,y)->(0,0)) (f(x,y)-x y)/(x^2+y^2)^2=1$，则（　）.
#choices[点 $(0,0)$ 不是 $f(x,y)$ 的极值点.][点 $(0,0)$ 是 $f(x,y)$ 的极大值点.][点 $(0,0)$ 是 $f(x,y)$ 的极小值点.][根据所给条件无法判断点 $(0,0)$ 是否为 $f(x,y)$ 的极值点.]
#ezexam.solution(show-number: false)[
A.
]

（4）设向量组Ⅰ：$alpha_1,alpha_2,dots,alpha_r$ 可由向量组Ⅱ：$beta_1,beta_2,dots,beta_s$ 线性表示，则（　）.
#choices[当 $r<s$ 时，向量组Ⅱ必线性相关.][当 $r>s$ 时，向量组Ⅱ必线性相关.][当 $r<s$ 时，向量组Ⅰ必线性相关.][当 $r>s$ 时，向量组Ⅰ必线性相关.]
#ezexam.solution(show-number: false)[
D.
]

（5）设有齐次线性方程组 $A x=0$ 和 $B x=0$，其中 $A,B$ 均为 $m times n$ 矩阵.现有4个命题：

① 若 $A x=0$ 的解均是 $B x=0$ 的解，则秩$(A)>=$秩$(B)$；

② 若秩$(A)>=$秩$(B)$，则 $A x=0$ 的解均是 $B x=0$ 的解；

③ 若 $A x=0$ 与 $B x=0$ 同解，则秩$(A)=$秩$(B)$；

④ 若秩$(A)=$秩$(B)$，则 $A x=0$ 与 $B x=0$ 同解.

以上命题中正确的是（　）.
#choices[①②.][①③.][②④.][③④.]
#ezexam.solution(show-number: false)[
B.
]

（6）设随机变量 $X~t(n) (n>1),Y=1/X^2$，则（　）.
#choices[$Y~chi^2(n)$.][$Y~chi^2(n-1)$.][$Y~F(n,1)$.][$Y~F(1,n)$.]
#ezexam.solution(show-number: false)[
C.
]

#ezexam.question(label: n => [三、])[
（本题满分10分）过坐标原点作曲线 $y=ln x$ 的切线，该切线与曲线 $y=ln x$ 及 $x$ 轴围成平面图形 $D$.

（1）求 $D$ 的面积 $A$；

（2）求 $D$ 绕直线 $x=e$ 旋转一周所得旋转体的体积 $V$.
#ezexam.solution(show-number: false)[
*解* （1）设切点的横坐标为 $x_0$，则曲线 $y=ln x$ 在点 $(x_0,ln x_0)$ 处的切线方程是 $y=ln x_0+1/x_0 (x-x_0)$.

由该切线过原点知 $ln x_0-1=0$，从而 $x_0=e$，所以该切线的方程为 $y=1/e x$.

平面图形 $D$ 的面积
$ A=integral_0^1 (e^y-e y) dif y=1/2 e-1. $
（2）切线 $y=1/e x$ 与 $x$ 轴及直线 $x=e$ 所围成的三角形绕直线 $x=e$ 旋转所得的圆锥体积为 $V_1=1/3 pi e^2$.

曲线 $y=ln x$ 与 $x$ 轴及直线 $x=e$ 所围成的图形绕直线 $x=e$ 旋转所得的旋转体体积为
$ V_2=integral_0^1 pi (e-e^y)^2 dif y. $
因此所求旋转体的体积为
$ V=V_1-V_2=1/3 pi e^2-integral_0^1 pi (e-e^y)^2 dif y=pi/6 (5e^2-12e+3). $
]


]

#ezexam.question(label: n => [四、])[
（本题满分12分）将函数 $f(x)=arctan((1-2x)/(1+2x))$ 展开成 $x$ 的幂级数，并求级数 $sum_(n=0)^infinity (-1)^n/(2n+1)$ 的和.
#ezexam.solution(show-number: false)[
*解* 因为
$ f'(x)=-2/(1+4x^2)=-2sum_(n=0)^infinity (-1)^n 4^n x^(2n), quad x in (-1/2,1/2). $
又 $f(0)=pi/4$，所以
$ f(x)&=f(0)+integral_0^x f'(t) dif t \
&=pi/4-2integral_0^x [sum_(n=0)^infinity (-1)^n 4^n t^(2n)] dif t \
&=pi/4-2sum_(n=0)^infinity ((-1)^n 4^n)/(2n+1)x^(2n+1), quad x in (-1/2,1/2). $
因为级数 $sum_(n=0)^infinity (-1)^n/(2n+1)$ 收敛，函数 $f(x)$ 在 $x=1/2$ 处连续，所以
$ f(x)=pi/4-2sum_(n=0)^infinity ((-1)^n 4^n)/(2n+1)x^(2n+1), quad x in (-1/2,1/2]. $
令 $x=1/2$，得
$ f(1/2)=pi/4-2sum_(n=0)^infinity [((-1)^n 4^n)/(2n+1)dot 1/2^(2n+1)], $
再由 $f(1/2)=0$，得 $sum_(n=0)^infinity (-1)^n/(2n+1)=pi/4-f(1/2)=pi/4$.
]


]

#ezexam.question(label: n => [五、])[
（本题满分10分）已知平面区域 $D={(x,y)|0<=x<=pi,0<=y<=pi}$，$L$ 为 $D$ 的正向边界.试证：

（1）$integral.cont_L x e^(sin y) dif y-y e^(-sin x) dif x=integral.cont_L x e^(-sin y) dif y-y e^(sin x) dif x$；

（2）$integral.cont_L x e^(sin y) dif y-y e^(-sin x) dif x>=2pi^2$.
#ezexam.solution(show-number: false)[
*证法1* （1）
$ #text[左边]&=integral_0^pi pi e^(sin y) dif y-integral_pi^0 pi e^(-sin x) dif x=pi integral_0^pi (e^(sin x)+e^(-sin x)) dif x, \
#text[右边]&=integral_0^pi pi e^(-sin y) dif y-integral_pi^0 pi e^(sin x) dif x=pi integral_0^pi (e^(sin x)+e^(-sin x)) dif x, $
所以
$ integral.cont_L x e^(sin y) dif y-y e^(-sin x) dif x=integral.cont_L x e^(-sin y) dif y-y e^(sin x) dif x. $
（2）由于 $e^(sin x)+e^(-sin x)>=2$，故由（1）得
$ integral.cont_L x e^(sin y) dif y-y e^(-sin x) dif x=pi integral_0^pi (e^(sin x)+e^(-sin x)) dif x>=2pi^2. $
*证法2* （1）根据格林公式，得
$ integral.cont_L x e^(sin y) dif y-y e^(-sin x) dif x=integral.double_D (e^(sin y)+e^(-sin x)) dif sigma, \
integral.cont_L x e^(-sin y) dif y-y e^(sin x) dif x=integral.double_D (e^(-sin y)+e^(sin x)) dif sigma. $
因为 $D$ 关于 $y=x$ 对称，所以
$ integral.double_D (e^(sin y)+e^(-sin x)) dif sigma=integral.double_D (e^(-sin y)+e^(sin x)) dif sigma, $
故
$ integral.cont_L x e^(sin y) dif y-y e^(-sin x) dif x=integral.cont_L x e^(-sin y) dif y-y e^(sin x) dif x. $
（2）由（1）知
$ integral.cont_L x e^(sin y) dif y-y e^(-sin x) dif x \
=integral.double_D (e^(sin y)+e^(-sin x)) dif sigma \
=integral.double_D (e^(sin x)+e^(-sin x)) dif sigma>=integral.double_D 2dif sigma=2pi^2. $
]


]

#ezexam.question(label: n => [六、])[
（本题满分10分）某建筑工程打地基时，需用汽锤将桩打进土层.汽锤每次击打，都将克服土层对桩的阻力而作功.设土层对桩的阻力的大小与桩被打进地下的深度成正比（比例系数为 $k,k>0$），汽锤第一次击打将桩打进地下 $a$ m.根据设计方案，要求汽锤每次击打桩时所作的功与前一次击打时所作的功之比为常数 $r (0<r<1)$.问

（1）汽锤击打桩3次后，可将桩打进地下多深？

（2）若击打次数不限，汽锤至多能将桩打进地下多深？

（注：m表示长度单位米.）
#ezexam.solution(show-number: false)[
*解* （1）设第 $n$ 次击打后，桩被打进地下 $x_n$，第 $n$ 次击打时，汽锤所作的功为 $W_n (n=1,2,3,dots)$.由题设，当桩被打进地下的深度为 $x$ 时，土层对桩的阻力的大小为 $k x$，所以
$ W_1=integral_0^(x_1) k x dif x=k/2 x_1^2=k/2 a^2, \
W_2=integral_(x_1)^(x_2) k x dif x=k/2 (x_2^2-x_1^2)=k/2 (x_2^2-a^2). $
由 $W_2=r W_1$ 可得 $x_2^2-a^2=r a^2$，即 $x_2^2=(1+r)a^2$.
$ W_3=integral_(x_2)^(x_3) k x dif x=k/2 (x_3^2-x_2^2)=k/2 [x_3^2-(1+r)a^2]. $
由 $W_3=r W_2=r^2 W_1$ 可得 $x_3^2-(1+r)a^2=r^2 a^2$，从而 $x_3=sqrt(1+r+r^2)a$，即汽锤击打3次后，可将桩打进地下 $sqrt(1+r+r^2)a$ m.

（2）由归纳法，设 $x_n=sqrt(1+r+dots+r^(n-1))a$，则
$ W_(n+1)&=integral_(x_n)^(x_(n+1)) k x dif x=k/2 (x_(n+1)^2-x_n^2) \
&=k/2 [x_(n+1)^2-(1+r+dots+r^(n-1))a^2]. $
由于 $W_(n+1)=r W_n=r^2 W_(n-1)=dots=r^n W_1$，故得
$ x_(n+1)^2-(1+r+dots+r^(n-1))a^2=r^n a^2, $
从而 $x_(n+1)=sqrt(1+r+dots+r^n)a=sqrt((1-r^(n+1))/(1-r))a$.

于是 $lim_(n->infinity) x_(n+1)=sqrt(1/(1-r))a$，即若不限击打次数，汽锤至多能将桩打进地下 $sqrt(1/(1-r))a$ m.
]


]

#ezexam.question(label: n => [七、])[
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
由 $y(0)=0,y'(0)=3/2$，得 $C_1=1,C_2=-1$，故所初值问题的解为
$ y(x)=e^x-e^(-x)-1/2 sin x. $
]


]

#ezexam.question(label: n => [八、])[
（本题满分12分）设函数 $f(x)$ 连续且恒大于零，
$ F(t)=(integral.triple_(Omega(t)) f(x^2+y^2+z^2) dif v)/(integral.double_(D(t)) f(x^2+y^2) dif sigma), quad G(t)=(integral.double_(D(t)) f(x^2+y^2) dif sigma)/(integral_(-t)^t f(x^2) dif x), $
其中 $Omega(t)={(x,y,z)|x^2+y^2+z^2<=t^2},D(t)={(x,y)|x^2+y^2<=t^2}$.

（1）讨论 $F(t)$ 在区间 $(0,+infinity)$ 内的单调性.

（2）证明当 $t>0$ 时，$F(t)>2/pi G(t)$.
#ezexam.solution(show-number: false)[
（1）*解* 因为
$ F(t)=(integral_0^(2pi) dif theta integral_0^pi dif phi integral_0^t f(r^2)r^2 sin phi dif r)/(integral_0^(2pi) dif theta integral_0^t f(r^2)r dif r)=(2integral_0^t f(r^2)r^2 dif r)/(integral_0^t f(r^2)r dif r), \
F'(t)=2(t f(t^2)integral_0^t f(r^2)r(t-r) dif r)/([integral_0^t f(r^2)r dif r]^2), $
所以在 $(0,+infinity)$ 上 $F'(t)>0$，故 $F(t)$ 在 $(0,+infinity)$ 内单调增加.

（2）*证* 因为 $G(t)=(pi integral_0^t f(r^2)r dif r)/(integral_0^t f(r^2) dif r)$，要证明 $t>0$ 时 $F(t)>2/pi G(t)$，只需证明 $t>0$ 时，$F(t)-2/pi G(t)>0$，即
$ integral_0^t f(r^2)r^2 dif r integral_0^t f(r^2) dif r-[integral_0^t f(r^2)r dif r]^2>0. $
令
$ g(t)=integral_0^t f(r^2)r^2 dif r integral_0^t f(r^2) dif r-[integral_0^t f(r^2)r dif r]^2, $
则 $g'(t)=f(t^2)integral_0^t f(r^2)(t-r)^2 dif r>0$，故 $g(t)$ 在 $(0,+infinity)$ 内单调增加.

因为 $g(t)$ 在 $t=0$ 处连续，所以当 $t>0$ 时，有 $g(t)>g(0)$.

又 $g(0)=0$，故当 $t>0$ 时，$g(t)>0$.

因此，当 $t>0$ 时，$F(t)>2/pi G(t)$.
]


]

#ezexam.question(label: n => [九、])[
（本题满分10分）设矩阵 $A=mat(3,2,2;2,3,2;2,2,3),P=mat(0,1,0;1,0,1;0,0,1),B=P^(-1)A^* P$，求 $B+2E$ 的特征值与特征向量，其中 $A^*$ 为 $A$ 的伴随矩阵，$E$ 为3阶单位矩阵.
#ezexam.solution(show-number: false)[
*解法1* 经计算可得
$ A^*=mat(5,-2,-2;-2,5,-2;-2,-2,5), quad P^(-1)=mat(0,1,-1;1,0,0;0,0,1), \
B=P^(-1)A^* P=mat(7,0,0;-2,5,-4;-2,-2,3). $
从而
$ B+2E=mat(9,0,0;-2,7,-4;-2,-2,5), \
|lambda E-(B+2E)|=mat(delim:"|",lambda-9,0,0;2,lambda-7,4;2,2,lambda-5)=(lambda-9)^2(lambda-3), $
故 $B+2E$ 的特征值为9，9，3.

当 $lambda_1=lambda_2=9$ 时，对应的线性无关特征向量可取为 $eta_1=mat(-1;1;0),eta_2=mat(-2;0;1)$，所以对应于特征值9的全部特征向量为
$ k_1 eta_1+k_2 eta_2=k_1 mat(-1;1;0)+k_2 mat(-2;0;1), $
其中 $k_1,k_2$ 是不全为零的任意常数.

当 $lambda_3=3$ 时，对应的一个特征向量为 $eta_3=mat(0;1;1)$，所以对应于特征值3的全部特征向量为 $k_3 eta_3=k_3 mat(0;1;1)$，其中 $k_3$ 是不为零的任意常数.

*解法2* 设 $A$ 的特征值为 $lambda$，对应的特征向量为 $eta$，即 $A eta=lambda eta$.由于 $|A|=7!=0$，所以 $lambda!=0$.

又因 $A^* A=|A|E$，故有 $A^* eta=|A|/lambda eta$.

于是有
$ B(P^(-1)eta)=P^(-1)A^* P(P^(-1)eta)=|A|/lambda (P^(-1)eta), \
(B+2E)P^(-1)eta=(|A|/lambda+2)P^(-1)eta. $
因此，$|A|/lambda+2$ 为 $B+2E$ 的特征值，对应的特征向量为 $P^(-1)eta$.

由于
$ |lambda E-A|=mat(delim:"|",lambda-3,-2,-2;-2,lambda-3,-2;-2,-2,lambda-3)=(lambda-1)^2(lambda-7), $
故 $A$ 的特征值为 $lambda_1=lambda_2=1,lambda_3=7$.

当 $lambda_1=lambda_2=1$ 时，对应的线性无关特征向量可取为 $eta_1=mat(-1;1;0),eta_2=mat(-1;0;1)$.

当 $lambda_3=7$ 时，对应的一个特征向量为 $eta_3=mat(1;1;1)$.

由 $P^(-1)=mat(0,1,-1;1,0,0;0,0,1)$，得
$ P^(-1)eta_1=mat(1;-1;0),quad P^(-1)eta_2=mat(-1;-1;1),quad P^(-1)eta_3=mat(0;1;1). $
因此，$B+2E$ 的三个特征值分别为9，9，3.

对应于特征值9的全部特征向量为
$ k_1 P^(-1)eta_1+k_2 P^(-1)eta_2=k_1 mat(1;-1;0)+k_2 mat(-1;-1;1), $
其中 $k_1,k_2$ 是不全为零的任意常数；对应于特征值3的全部特征向量为 $k_3 P^(-1)eta_3=k_3 mat(0;1;1)$，其中 $k_3$ 是不为零的任意常数.
]


]

#ezexam.question(label: n => [十、])[
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

#ezexam.question(label: n => [十一、])[
（本题满分10分）已知甲、乙两箱中装有同种产品，其中甲箱中装有3件合格品和3件次品，乙箱中仅装有3件合格品.从甲箱中任取3件产品放入乙箱后，求：

（1）乙箱中次品件数 $X$ 的数学期望；

（2）从乙箱中任取一件产品是次品的概率.
#ezexam.solution(show-number: false)[
*解法1* （1）$X$ 的可能取值为0，1，2，3，$X$ 的概率分布为
$ P{X=k}=(C_3^k C_3^(3-k))/C_6^3, quad k=0,1,2,3, $
即
#table(columns:5,[$X$],[0],[1],[2],[3],[$P$],[$1/20$],[$9/20$],[$9/20$],[$1/20$])
因此 $E X=0times 1/20+1times 9/20+2times 9/20+3times 1/20=3/2$.

（2）设 $A$ 表示事件“从乙箱中任意取出的一件产品是次品”，根据全概率公式，有
$ P(A)=sum_(k=0)^3 P{X=k}P{A|X=k}=1/20 times 0+9/20 times 1/6+9/20 times 2/6+1/20 times 3/6=1/4. $
*解法2* （1）设
$ X_i=cases(0 & #text[从甲箱中取出的第] i #text[件产品是合格品],1 & #text[从甲箱中取出的第] i #text[件产品是次品]), $
从 $X_i$ 的概率分布为
#table(columns:3,[$X_i$],[0],[1],[$P$],[$1/2$],[$1/2$])
$i=1,2,3$，且 $E X_i=1/2 (i=1,2,3)$.

因为 $X=X_1+X_2+X_3$，所以
$ E X=E(X_1+X_2+X_3)=E X_1+E X_2+E X_3=3/2. $
（2）设 $A$ 表示事件“从乙箱中任意取出的一件产品是次品”，由于 $ {X=0},{X=1},{X=2} $ 和 $ {X=3} $ 构成完全事件组，因此根据全概率公式，有
$ P(A)&=sum_(k=0)^3 P{X=k}P{A|X=k}=sum_(k=0)^3 P{X=k}dot k/6 \
&=1/6 sum_(k=0)^3 k P{X=k}=1/6 E X=1/6 dot 3/2=1/4. $
]


]

#ezexam.question(label: n => [十二、])[
（本题满分8分）设总体 $X$ 的概率密度为
$ f(x)=cases(2e^(-2(x-theta)) & x>theta,0 & x<=theta). $
其中 $theta>0$ 是未知参数.从总体 $X$ 中抽取简单随机样本 $X_1,X_2,dots,X_n$，记 $hat(theta)=min(X_1,X_2,dots,X_n)$.

（1）求总体 $X$ 的分布函数 $F(x)$；

（2）求统计量 $hat(theta)$ 的分布函数 $F_(hat(theta))(x)$；

（3）如果用 $hat(theta)$ 作为 $theta$ 的估计量，讨论它是否具有无偏性.
#ezexam.solution(show-number: false)[
*解* （1）
$ F(x)=integral_(-infinity)^x f(t) dif t=cases(1-e^(-2(x-theta)) & x>theta,0 & x<=theta). $
（2）
$ F_(hat(theta))(x)&=P{hat(theta)<=x}=P{min(X_1,X_2,dots,X_n)<=x} \
&=1-P{min(X_1,X_2,dots,X_n)>x} \
&=1-P{X_1>x,X_2>x,dots,X_n>x} \
&=1-P{X_1>x}P{X_2>x}dots P{X_n>x} \
&=1-[1-F(x)]^n=cases(1-e^(-2n(x-theta)) & x>theta,0 & x<=theta). $
（3）$hat(theta)$ 的概率密度为
$ f_(hat(theta))(x)=F'_(hat(theta))(x)=cases(2n e^(-2n(x-theta)) & x>theta,0 & x<=theta). $
因为
$ E hat(theta)=integral_(-infinity)^infinity x f_(hat(theta))(x) dif x=integral_theta^infinity 2n x e^(-2n(x-theta)) dif x=theta+1/(2n)!=theta, $
所以 $hat(theta)$ 作为 $theta$ 的估计量不具有无偏性.
]

]
