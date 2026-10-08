#import "../template.typ": exam
#show: exam.with(year: 2002, subject: "四", title: "2002年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#ezexam.answer-state.update(true)


= 一、填空题（本题共5小题，每小题3分，满分15分）
#ezexam.counter-question.step()

（1）设常数 $a!=1/2$，则 $lim_(n->infinity) ln[(n-2n a+1)/(n(1-2a))]^n=$#h(3em).
#ezexam.solution(show-number: false)[
$1/(1-2a)$.
]

（2）已知 $f(x)$ 的一个原函数为 $ln^2 x$，则 $integral x f'(x) dif x=$#h(3em).
#ezexam.solution(show-number: false)[
$2ln x-ln^2 x+C$.
]

（3）设矩阵 $A=mat(1,-1;2,3),B=A^2-3A+2E$，则 $B^(-1)=$#h(3em).
#ezexam.solution(show-number: false)[
$mat(0,1/2;-1,-1)$.
]

（4）设向量组 $alpha_1=(a,0,c),alpha_2=(b,c,0),alpha_3=(0,a,b)$ 线性无关，则 $a,b,c$ 必满足关系式#h(3em).
#ezexam.solution(show-number: false)[
$a b c!=0$.
]

（5）设随机变量 $X$ 和 $Y$ 的联合概率分布为
#table(columns:4,[$X \ Y$],[$-1$],[0],[1],[0],[0.07],[0.18],[0.15],[1],[0.08],[0.32],[0.20])
则 $X$ 和 $Y$ 的相关系数 $rho=$#h(3em).
#ezexam.solution(show-number: false)[
0.
]

= 二、选择题（本题共5小题，每小题3分，满分15分）
#ezexam.counter-question.step()

（1）设函数 $f(x)$ 在闭区间 $[a,b]$ 上有定义，在开区间 $(a,b)$ 内可导，则（　）.
#choices[当 $f(a)f(b)<0$ 时，存在 $xi in (a,b)$，使 $f(xi)=0$.][对任何 $xi in (a,b)$，有 $lim_(x->xi) [f(x)-f(xi)]=0$.][当 $f(a)=f(b)$ 时，存在 $xi in (a,b)$，使 $f'(xi)=0$.][存在 $xi in (a,b)$，使 $f(b)-f(a)=f'(xi)(b-a)$.]
#ezexam.solution(show-number: false)[
B.
]

（2）设函数 $f(x)$ 连续，则在下列变上限定积分定义的函数中，必为偶函数的是（　）.
#choices[$integral_0^x t[f(t)+f(-t)] dif t$.][$integral_0^x t[f(t)-f(-t)] dif t$.][$integral_0^x f(t^2) dif t$.][$integral_0^x f^2(t) dif t$.]
#ezexam.solution(show-number: false)[
A.
]

（3）设 $A,B$ 为 $n$ 阶矩阵，$A^*,B^*$ 分别为 $A,B$ 对应的伴随矩阵.分块矩阵 $C=mat(A,O;O,B)$，则 $C$ 的伴随矩阵 $C^*=$（　）.
#choices[$mat(|A|A^*,O;O,|B|B^*)$.][$mat(|B|B^*,O;O,|A|A^*)$.][$mat(|A|B^*,O;O,|B|A^*)$.][$mat(|B|A^*,O;O,|A|B^*)$.]
#ezexam.solution(show-number: false)[
D.
]

（4）设 $X_1$ 和 $X_2$ 是任意两个相互独立的连续型随机变量，它们的概率密度分别为 $f_1(x)$ 和 $f_2(x)$，分布函数分别为 $F_1(x)$ 和 $F_2(x)$，则（　）.
#choices[$f_1(x)+f_2(x)$ 必为某一随机变量的概率密度.][$F_1(x)F_2(x)$ 必为某一随机变量的分布函数.][$F_1(x)+F_2(x)$ 必为某一随机变量的分布函数.][$f_1(x)f_2(x)$ 必为某一随机变量的概率密度.]
#ezexam.solution(show-number: false)[
B.
]

（5）设随机变量 $X_1,X_2,dots,X_n$ 相互独立，$S_n=X_1+X_2+dots+X_n$，则根据列维－林德伯格（Levy－Lindberg）中心极限定理，当 $n$ 充分大时，$S_n$ 近似服从正态分布，只要 $X_1,X_2,dots,X_n$（　）.
#choices[有相同的数学期望.][有相同的方差.][服从同一指数分布.][服从同一离散型分布.]
#ezexam.solution(show-number: false)[
C.
]

#ezexam.question(label: n => [三、])[
（本题满分5分）求极限 $lim_(x->0) (integral_0^x [integral_0^(u^2) arctan(1+t) dif t] dif u)/(x(1-cos x))$.
#ezexam.solution(show-number: false)[
*解法1*
$ lim_(x->0) (integral_0^x [integral_0^(u^2) arctan(1+t) dif t] dif u)/(x(1-cos x)) \
=lim_(x->0) (integral_0^(x^2) arctan(1+t) dif t)/(1-cos x+x sin x) \
=lim_(x->0) (2x arctan(1+x^2))/(sin x+sin x+x cos x) \
=2lim_(x->0) arctan(1+x^2) lim_(x->0) 1/((2sin x)/x+cos x)=2dot pi/4 dot 1/3=pi/6. $
*解法2*
$ lim_(x->0) (integral_0^x [integral_0^(u^2) arctan(1+t) dif t] dif u)/(x(1-cos x)) \
=2lim_(x->0) (integral_0^x [integral_0^(u^2) arctan(1+t) dif t] dif u)/x^3 \
=2lim_(x->0) (integral_0^(x^2) arctan(1+t) dif t)/(3x^2) \
=2lim_(x->0) (2x arctan(1+x^2))/(6x)=2/3 dot pi/4=pi/6. $
]


]

#ezexam.question(label: n => [四、])[
（本题满分7分）设函数 $u=f(x,y,z)$ 有连续偏导数，且 $z=z(x,y)$ 由方程 $x e^x-y e^y=z e^z$ 所确定，求 $dif u$.
#ezexam.solution(show-number: false)[
*解法1* 设 $F(x,y,z)=x e^x-y e^y-z e^z$，则
$ F'_x=(x+1)e^x, quad F'_y=-(y+1)e^y, quad F'_z=-(z+1)e^z. $
故
$ (partial z)/(partial x)=-F'_x/F'_z=(x+1)/(z+1)e^(x-z), \
(partial z)/(partial y)=-F'_y/F'_z=-(y+1)/(z+1)e^(y-z), $
而
$ (partial u)/(partial x)=f'_x+f'_z (partial z)/(partial x)=f'_x+f'_z (x+1)/(z+1)e^(x-z), \
(partial u)/(partial y)=f'_y+f'_z (partial z)/(partial y)=f'_y-f'_z (y+1)/(z+1)e^(y-z), $
所以
$ dif u&=(partial u)/(partial x)dif x+(partial u)/(partial y)dif y \
&=(f'_x+f'_z (x+1)/(z+1)e^(x-z))dif x+(f'_y-f'_z (y+1)/(z+1)e^(y-z))dif y. $
*解法2* 在 $x e^x-y e^y=z e^z$ 两边微分，得
$ e^x dif x+x e^x dif x-e^y dif y-y e^y dif y=e^z dif z+z e^z dif z, $
故 $dif z=((1+x)e^x dif x-(1+y)e^y dif y)/((1+z)e^z)$.

由 $u=f(x,y,z)$，得 $dif u=f'_x dif x+f'_y dif y+f'_z dif z$，故
$ dif u=(f'_x+f'_z (x+1)/(z+1)e^(x-z))dif x+(f'_y-f'_z (y+1)/(z+1)e^(y-z))dif y. $
]


]

#ezexam.question(label: n => [五、])[
（本题满分6分）设 $f(sin^2 x)=x/(sin x)$，求 $integral sqrt(x)/sqrt(1-x) f(x) dif x$.
#ezexam.solution(show-number: false)[
*解* 令 $u=sin^2 x$，则有 $sin x=sqrt(u),x=arcsin sqrt(u)$，$f(x)=(arcsin sqrt(x))/sqrt(x)$.

于是
$ integral sqrt(x)/sqrt(1-x) f(x) dif x \
=integral (arcsin sqrt(x))/sqrt(1-x) dif x \
=-integral (arcsin sqrt(x))/sqrt(1-x) dif(1-x) \
=-2integral arcsin sqrt(x) dif sqrt(1-x) \
=-2sqrt(1-x)arcsin sqrt(x)+2integral sqrt(1-x)1/sqrt(1-x)dif sqrt(x) \
=-2sqrt(1-x)arcsin sqrt(x)+2sqrt(x)+C. $
]


]

#ezexam.question(label: n => [六、])[
（本题满分7分）设闭区域 $D:x^2+y^2<=y,x>=0$.$f(x,y)$ 为 $D$ 上的连续函数，且
$ f(x,y)=sqrt(1-x^2-y^2)-8/pi integral.double_D f(u,v) dif u dif v. $
求 $f(x,y)$.
#ezexam.solution(show-number: false)[
*解* 设 $integral.double_D f(u,v) dif u dif v=A$，在已知等式两边求区域 $D$ 上的二重积分，有
$ integral.double_D f(x,y) dif x dif y=integral.double_D sqrt(1-x^2-y^2) dif x dif y-(8A)/pi integral.double_D dif x dif y, $
从而 $A=integral.double_D sqrt(1-x^2-y^2) dif x dif y-A$.
#import "@preview/cetz:0.5.2"
#cetz.canvas({
 import cetz.draw: *
 set-style(stroke:.65pt)
 line(..range(0,81).map(i=>{let a=(-90+i*180/80)*1deg;(1.1*calc.cos(a),1.1+1.1*calc.sin(a))}),close:true,fill:luma(90%))
 line((-.3,0),(1.55,0),mark:(end:">"));line((0,-.3),(0,2.6),mark:(end:">"));line((1.1,0),(1.1,1.1),stroke:(dash:"dashed"))
 content((1.55,0),$x$,anchor:"north");content((0,2.6),$y$,anchor:"east");content((0,0),$O$,anchor:"north-east")
 content((0,1.1),$1/2$,anchor:"east");content((0,2.2),[1],anchor:"east");content((1.1,0),$1/2$,anchor:"north");content((.5,1.1),$D$)
})
所以
$ 2A=integral_0^(pi/2) dif theta integral_0^(sin theta) sqrt(1-r^2)dot r dif r=1/3 integral_0^(pi/2)(1-cos^3 theta) dif theta=1/3 (pi/2-2/3). $
故 $A=1/6 (pi/2-2/3)$.

于是 $f(x,y)=sqrt(1-x^2-y^2)-4/(3pi)(pi/2-2/3)$.
]


]

#ezexam.question(label: n => [七、])[
（本题满分7分）设某商品需求量 $Q$ 是价格 $p$ 的单调减少函数：$Q=Q(p)$，其需求弹性 $eta=(2p^2)/(192-p^2)>0$.

（1）设 $R$ 为总收益函数，证明 $(dif R)/(dif p)=Q(1-eta)$.

（2）求 $p=6$ 时，总收益对价格的弹性，并说明其经济意义.
#ezexam.solution(show-number: false)[
*解* （1）$R(p)=p Q(p)$.上式两边对 $p$ 求导数，得
$ (dif R)/(dif p)=Q+p(dif Q)/(dif p)=Q(1+p/Q (dif Q)/(dif p))=Q(1-eta). $
（2）
$ (E R)/(E p)=p/R (dif R)/(dif p)=p/(p Q)Q(1-eta)=1-eta=1-(2p^2)/(192-p^2)=(192-3p^2)/(192-p^2). \
lr((E R)/(E p)|)_(p=6)=(192-3times 6^2)/(192-6^2)=7/13 approx 0.54. $
经济意义：当 $p=6$ 时，若价格上涨1%，则总收益将增加0.54%.
]


]

#ezexam.question(label: n => [八、])[
（本题满分6分）设函数 $f(x),g(x)$ 在 $[a,b]$ 上连续，且 $g(x)>0$.利用闭区间上连续函数性质，证明存在一点 $xi in [a,b]$，使
$ integral_a^b f(x)g(x) dif x=f(xi)integral_a^b g(x) dif x. $
#ezexam.solution(show-number: false)[
*证明* 因为 $f(x),g(x)$ 在 $[a,b]$ 上连续，且 $g(x)>0$，由最值定理，知 $f(x)$ 在 $[a,b]$ 上有最大值 $M$ 和最小值 $m$，即 $m<=f(x)<=M$，故
$ m g(x)<=f(x)g(x)<=M g(x). \
integral_a^b m g(x) dif x<=integral_a^b f(x)g(x) dif x<=integral_a^b M g(x) dif x, \
m<=(integral_a^b f(x)g(x) dif x)/(integral_a^b g(x) dif x)<=M. $
由介值定理知，存在 $xi in [a,b]$，使
$ f(xi)=(integral_a^b f(x)g(x) dif x)/(integral_a^b g(x) dif x), $
即 $integral_a^b f(x)g(x) dif x=f(xi)integral_a^b g(x) dif x$.
]


]

#ezexam.question(label: n => [九、])[
（本题满分8分）设四元齐次线性方程组（Ⅰ）为
$ cases(2x_1+3x_2-x_3=0,x_1+2x_2+x_3-x_4=0). $
且已知另一四元齐次线性方程组（Ⅱ）的一个基础解系为
$ alpha_1=(2,-1,a+2,1)^T, quad alpha_2=(-1,2,4,a+8)^T. $
（1）求方程组（Ⅰ）的一个基础解系；

（2）当 $a$ 为何值时，方程组（Ⅰ）与（Ⅱ）有非零公共解？在有非零公共解时，求出全部非零公共解.
#ezexam.solution(show-number: false)[
*解法1* （1）对方程组（Ⅰ）的系数矩阵作行初等变换，有
$ A=mat(2,3,-1,0;1,2,1,-1)->mat(1,0,-5,3;0,1,3,-2). $
得方程组（Ⅰ）的同解方程组
$ cases(x_1=5x_3-3x_4,x_2=-3x_3+2x_4). $
由此可得方程组（Ⅰ）的一个基础解系为
$ beta_1=(5,-3,1,0)^T,beta_2=(-3,2,0,1)^T. $
（2）由题设条件，方程组（Ⅱ）的全部解为
$ mat(x_1;x_2;x_3;x_4)=k_1 alpha_1+k_2 alpha_2=mat(2k_1-k_2;-k_1+2k_2;(a+2)k_1+4k_2;k_1+(a+8)k_2) quad #text[①] $
（$k_1,k_2$ 为任意常数）.

将上式代入方程组（Ⅰ），得
$ cases((a+1)k_1=0,(a+1)k_1-(a+1)k_2=0). quad #text[②] $
要使方程组（Ⅰ）与（Ⅱ）有非零公共解，只需关于 $k_1,k_2$ 的方程组②有非零解.因为
$ mat(delim:"|",a+1,0;a+1,-(a+1))=-(a+1)^2, $
所以，当 $a!=-1$ 时，方程组（Ⅰ）与（Ⅱ）无非零公共解.

当 $a=-1$ 时，方程组②有非零解，且 $k_1,k_2$ 为不全为零的任意常数.此时，由①可得方程组（Ⅰ）与（Ⅱ）的全部非零公共解为
$ mat(x_1;x_2;x_3;x_4)=k_1 mat(2;-1;1;1)+k_2 mat(-1;2;4;7) $
（$k_1,k_2$ 为不全为零的任意常数）.

*解法2* （1）对方程组（Ⅰ）的系数矩阵作行初等变换，有
$ A=mat(2,3,-1,0;1,2,1,-1)->mat(-2,-3,1,0;-3,-5,0,1). $
得方程组（Ⅰ）的同解方程组 $cases(x_3=2x_1+3x_2,x_4=3x_1+5x_2)$.

由此可得方程组（Ⅰ）的一个基础解系为
$ beta_1=(1,0,2,3)^T,beta_2=(0,1,3,5)^T. $
（2）设方程组（Ⅰ）与（Ⅱ）的公共解为 $eta$，则有数 $k_1,k_2,k_3,k_4$，使得
$ eta=k_1 beta_1+k_2 beta_2=k_3 alpha_1+k_4 alpha_2. $
由此得线性方程组
$ #text[（Ⅲ）] quad cases(-k_1+2k_3-k_4=0,-k_2-k_3+2k_4=0,-2k_1-3k_2+(a+2)k_3+4k_4=0,-3k_1-5k_2+k_3+(a+8)k_4=0). $
对方程组（Ⅲ）的系数矩阵作行初等变换，有
$ mat(-1,0,2,-1;0,-1,-1,2;-2,-3,a+2,4;-3,-5,1,a+8)->mat(1,0,-2,1;0,1,1,-2;0,0,a+1,0;0,0,0,a+1). $
由此可知，当 $a!=-1$ 时，方程组（Ⅲ）仅有零解，故方程组（Ⅰ）与（Ⅱ）无非零公共解.

当 $a=-1$ 时，方程组（Ⅲ）的同解方程组为 $cases(k_1=2k_3-k_4,k_2=-k_3+2k_4)$.

令 $k_3=c_1,k_4=c_2$，得方程组（Ⅰ）与（Ⅱ）的非零公共解为
$ eta=c_1 mat(2;-1;1;1)+c_2 mat(-1;2;4;7) $
（$c_1,c_2$ 为不全为零的任意常数）.
]


]

#ezexam.question(label: n => [十、])[
（本题满分8分）设实对称矩阵 $A=mat(a,1,1;1,a,-1;1,-1,a)$，求可逆矩阵 $P$，使 $P^(-1)A P$ 为对角形矩阵，并计算行列式 $|A-E|$ 的值.
#ezexam.solution(show-number: false)[
*解* 矩阵 $A$ 的特征多项式
$ |lambda E-A|=mat(delim:"|",lambda-a,-1,-1;-1,lambda-a,1;-1,1,lambda-a)=(lambda-a-1)^2(lambda-a+2). $
由此得矩阵 $A$ 的特征值 $lambda_1=lambda_2=a+1,lambda_3=a-2$.

对于特征值 $lambda_1=lambda_2=a+1$，可得对应的两个线性无关的特征向量
$ alpha_1=(1,1,0)^T,quad alpha_2=(1,0,1)^T. $
对于特征值 $lambda_3=a-2$，可得对应的特征向量 $alpha_3=(-1,1,1)^T$.

令矩阵
$ P=(alpha_1,alpha_2,alpha_3)=mat(1,1,-1;1,0,1;0,1,1), quad Lambda=mat(a+1,,;,a+1,;,,a-2), $
则 $P^(-1)A P=Lambda=mat(a+1,,;,a+1,;,,a-2)$.
$ |A-E|&=|P Lambda P^(-1)-P P^(-1)|=|P|dot |Lambda-E|dot |P^(-1)| \
&=mat(delim:"|",a,0,0;0,a,0;0,0,a-3)=a^2(a-3). $
]


]

#ezexam.question(label: n => [十一、])[
（本题满分8分）设 $A,B$ 是任意二事件，其中 $A$ 的概率不等于0和1，证明，$P(B|A)=P(B|overline(A))$ 是事件 $A$ 与 $B$ 独立的充分必要条件.
#ezexam.solution(show-number: false)[
*证* 由于 $A$ 的概率不等于0和1，知题中两个条件概率都存在.

（1）必要性.由事件 $A$ 与 $B$ 独立，知事件 $overline(A)$ 与 $B$ 也独立，因此 $P(B|A)=P(B),P(B|overline(A))=P(B)$，从而 $P(B|A)=P(B|overline(A))$.

（2）充分性.由 $P(B|A)=P(B|overline(A))$，可见
$ (P(A B))/(P(A))=(P(overline(A)B))/(P(overline(A)))=(P(B)-P(A B))/(1-P(A)), \
P(A B)[1-P(A)]=P(A)P(B)-P(A)P(A B), \
P(A B)=P(A)P(B), $
因此 $A$ 和 $B$ 独立.
]


]

#ezexam.question(label: n => [十二、])[
（本题满分8分）假设一设备开机后无故障工作的时间 $X$ 服从指数分布，平均无故障工作的时间（$E X$）为5小时.设备定时开机，出现故障时自动关机，而在无故障的情况下工作2小时便关机.试求该设备每次开机无故障工作的时间 $Y$ 的分布函数 $F(y)$.
#ezexam.solution(show-number: false)[
*解* 设 $X$ 的分布参数为 $lambda$.由于 $E X=1/lambda=5$，可见 $lambda=1/5$.

显然，$Y=min{X,2}$.

对于 $y<0,F(y)=0$；对于 $y>=2,F(y)=1$.

设 $0<=y<2$，有
$ F(y)=P{Y<=y}=P{min{X,2}<=y}=P{X<=y}=1-e^(-y/5). $
于是，$Y$ 的分布函数为
$ F(y)=cases(0 & y<0,1-e^(-y/5) & 0<=y<2,1 & y>=2). $
]

]
