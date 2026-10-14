#import "../template.typ": exam
#show: exam.with(year: 2026, subject: "一")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices.with(r-gap: 1.3em)
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)


= 一、选择题：第1—10小题，每小题5分，共50分. 下列每小题给出的四个选项中，只有一个选项是符合题目要求的.

#ezexam.question[
设函数 $z=z(x,y)$ 由方程 $x-a z=e^(y+a z)$（$a$ 是非零常数）确定，则（　）.
#choices([$(partial z)/(partial x)-(partial z)/(partial y)=1/a$],[$(partial z)/(partial x)+(partial z)/(partial y)=1/a$],[$(partial z)/(partial x)-(partial z)/(partial y)=-1/a$],[$(partial z)/(partial x)+(partial z)/(partial y)=-1/a$])
]

#ezexam.question[
幂级数 $sum_(n=1)^infinity ((3+(-1)^n)/4)^n x^(2n)$ 的收敛域是（　）.
#choices([$[-2,2]$],[$[-1,1]$],[$(-2,2)$],[$(-1,1)$])
]

#ezexam.question[
设函数 $f(x)$ 在区间 $[-1,1]$ 上有定义，则（　）.
#choices([当 $f(x)$ 在 $(-1,0)$ 单调递减，在 $(0,1)$ 单调递增时，$f(0)$ 是极小值.],[当 $f(0)$ 是极小值时，$f(x)$ 在 $(-1,0)$ 单调递减，在 $(0,1)$ 单调递增.],[当 $f(x)$ 的图形在 $[-1,1]$ 是凹的时，$(f(x)-f(1))/(x-1)$ 在 $[-1,1)$ 单调递增.],[当 $(f(x)-f(1))/(x-1)$ 在 $[-1,1)$ 单调递增时，$f(x)$ 的图形在 $[-1,1]$ 是凹的.])
]

#ezexam.question[
已知有界区域 $Omega$ 由曲面 $z=sqrt(4-x^2-y^2)$ 与 $z=sqrt(x^2+y^2)$ 围成，函数 $f(u)$ 连续，则 $integral.triple_Omega f(x^2+y^2+z^2) dif x dif y dif z=$（　）.
#choices([$integral_0^(2pi) dif theta integral_0^2 dif r integral_r^(sqrt(4-r^2)) f(r^2+z^2)r dif z$],[$integral_0^(2pi) dif theta integral_0^(sqrt(2)) dif r integral_0^(sqrt(4-r^2)) f(r^2+z^2)r dif z$],[$integral_0^(2pi) dif theta integral_0^(pi/4) dif phi integral_0^2 f(r^2)r^2 sin phi dif r$],[$integral_0^(2pi) dif theta integral_0^(pi/2) dif phi integral_0^2 f(r^2)r^2 sin phi dif r$])
]

#ezexam.question[
单位矩阵经过若干次互换两行得到的矩阵称为置换矩阵.设 $A$ 为 $n$ 阶置换矩阵，$A^*$ 为 $A$ 的伴随矩阵，则（　）.
#choices([$A^*$ 为置换矩阵.],[$A^(-1)$ 为置换矩阵.],[$A^(-1)=A^*$.],[$A^(-1)=-A^*$. ])
]

#ezexam.question[
设 $A,B$ 为 $n$ 阶矩阵，$bold(beta)$ 是 $n$ 维列向量.若 $A$ 的列向量组可由 $B$ 的列向量组线性表示，则（　）.
#choices([当 $A bold(x)=bold(beta)$ 有解时，$B bold(x)=bold(beta)$ 有解.],[当 $A^"T" bold(x)=bold(beta)$ 有解时，$B^"T" bold(x)=bold(beta)$ 有解.],[当 $B bold(x)=bold(beta)$ 有解时，$A bold(x)=bold(beta)$ 有解.],[当 $B^"T" bold(x)=bold(beta)$ 有解时，$A^"T" bold(x)=bold(beta)$ 有解.])
]

#ezexam.question[
设二次型 $f(x_1,x_2,x_3)=a(x_1^2+x_2^2+x_3^2)+4x_1 x_2+4x_1 x_3+4x_2 x_3$.若方程 $f(x_1,x_2,x_3)=-1$ 表示的曲面为圆柱面，则（　）.
#choices([$a=-4$，且 $f$ 的规范形为 $-y_1^2-y_2^2-y_3^2$.],[$a=-4$，且 $f$ 在正交变换下的标准形为 $-6y_1^2-6y_2^2$.],[$a=2$，且 $f$ 的规范形为 $-y_1^2-y_2^2-y_3^2$.],[$a=2$，且 $f$ 在正交变换下的标准形为 $-6y_1^2-6y_2^2$.])
]

#ezexam.question[
设随机变量 $X tilde N(1,2)$.令 $f(t)=E[(X+t)^2]$，则 $f(t)$ 的最小值点和最小值分别为（　）.
#choices([$1,2$.],[$1,4$.],[$-1,2$.],[$-1,4$.])
]

#ezexam.question[
设连续型随机变量 $X$ 的分布函数为 $F(x)$，随机变量 $Y$ 的分布函数为 $F(a y+b)$，$X$ 的数学期望为 $mu$，方差为 $sigma^2$（$sigma>0$）.若 $Y$ 的数学期望和方差分别为0和1，则（　）.
#choices([$a=sigma,b=mu$.],[$a=sigma,b=-mu$.],[$a=1/sigma,b=mu$.],[$a=1/sigma,b=-mu$.])
]

#ezexam.question[
设随机变量 $X$ 的概率分布为 $P{X=k}=1/2^(k+1)+1/3^k$（$k=1,2,dots$），则对于正整数 $m,n$，有（　）.
#choices([$P{X>m+n|X>m}=P{X>m}$.],[$P{X>m+n|X>m}=P{X>n}$.],[$P{X>m+n|X>m}>P{X>m}$.],[$P{X>m+n|X>m}>P{X>n}$.])
]


= 二、填空题：第11—16小题，每小题5分，共30分.

#ezexam.question[
设向量 $bold(v)_1=(0,x,z)$，$bold(v)_2=(y,0,1)$.令 $bold(F)(x,y,z)=bold(v)_1 times bold(v)_2$，则 $"div" bold(F)=$#fillin(len: 2.97656em)[].
]

#ezexam.question[
$lim_(x->0) (1/x-ln(1+x)/(x sin x))=$#fillin(len: 2.97656em)[].
]

#ezexam.question[
设函数 $y=y(x)$ 由参数方程 $cases(x=2sin^2 t,y=t+cos t)$（$t in (0,pi/2)$）确定，则 $(dif^2 y)/(dif x^2)|_(t=pi/4)=$#fillin(len: 2.97656em)[].
]

#ezexam.question[
$integral_1^(+infinity) ln(x+1)/x^2 dif x=$#fillin(len: 2.97656em)[].
]

#ezexam.question[
设矩阵 $A=mat(1,0,0;2,a,2;0,2,a)$，$B=mat(a,-1,-1;-1,2,1;-1,-1,a)$，记 $m(X)$ 为3阶矩阵 $X$ 的实特征值中的最大值.若 $m(A)<m(B)$，则 $a$ 的取值范围是#fillin(len: 2.97656em)[].
]

#ezexam.question[
设随机变量 $X$ 服从参数为1的泊松分布，随机变量 $Y$ 服从参数为3的泊松分布，$X$ 与 $Y-X$ 相互独立，则 $E(X Y)=$#fillin(len: 2.97656em)[].
]


= 三、解答题：第17—22小题，共70分. 解答应写出文字说明、证明过程或演算步骤.

#ezexam.question[
（本题满分10分）

求函数 $f(x,y)=(2x^2-y^2)e^x$ 的极值.
]

#ezexam.question[
（本题满分12分）

设函数 $f(u)$ 在区间 $(0,+infinity)$ 内具有3阶连续导数，且存在可微函数 $F(x,y)$ 使得 $dif F(x,y)=f(x y)/(x^2 y) dif x+f''(x y)/(x y^2) dif y$（$x y>0$）.

（1）证明：$f''(u)/u-f(u)/u=C$，$C$ 为常数；

（2）设 $f(1)=1,f'(1)=-1,f''(1)=0$，求 $f(u)$ 的表达式.
]

#ezexam.question[
（本题满分12分）

设有向曲线 $L$ 为椭圆 $x^2+3y^2=1$ 上沿逆时针方向从点 $A(-1/2,-1/2)$ 到点 $B(1/2,1/2)$ 的部分，计算曲线积分
$ I=integral_L (e^(x^2)sin x-2x y) dif x+(6x-x^2-y cos^4 y) dif y. $
]

#ezexam.question[
（本题满分12分）

设可导函数 $f(x)$ 严格单调递增且满足 $integral_(-1)^1 f(x) dif x=0$.记 $a=integral_0^1 f(x) dif x$.

（1）证明 $a>0$；

（2）令 $F(x)=a(1-x^2)+integral_1^x f(t) dif t$，证明：存在 $xi in (-1,1)$，使得 $F''(xi)=0$.
]

#ezexam.question[
（本题满分12分）

已知向量组 $bold(alpha)_1=(1,0,-1,-1)^"T"$，$bold(alpha)_2=(1,-1,0,-2)^"T"$，$bold(alpha)_3=(0,-1,1,-1)^"T"$，$bold(alpha)_4=(0,1,-1,1)^"T"$.记 $A=(bold(alpha)_1,bold(alpha)_2,bold(alpha)_3,bold(alpha)_4)$，$G=(bold(alpha)_1,bold(alpha)_2)$.

（1）证明：$bold(alpha)_1,bold(alpha)_2$ 是向量组的极大线性无关组；

（2）求矩阵 $H$ 使得 $A=G H$，并求 $A^10$.
]

#ezexam.question[
（本题满分12分）

假设某种元件的寿命服从指数分布，其均值 $theta$ 是未知参数.为估计 $theta$，取 $n$ 个这种元件同时做寿命试验，试验到出现 $k$（$1<=k<=n$）个元件失效时停止.

（1）若 $k=1$，失效元件的寿命记为 $T$，（i）求 $T$ 的概率密度；（ii）确定 $a$，使得 $hat(theta)=a T$ 是 $theta$ 的无偏估计，并求 $D(hat(theta))$；

（2）已知 $k$ 个失效元件的寿命值分别为 $t_1,t_2,dots,t_k$，且 $t_1<=t_2<=dots<=t_k$，似然函数为 $L(theta)=1/theta^k e^(-1/theta [sum_(i=1)^k t_i+(n-k)t_k])$，求 $theta$ 的最大似然估计值.
]

