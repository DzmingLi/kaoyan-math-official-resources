#import "../template.typ": exam
#show: exam.with(year: 2008, subject: "四", title: "2008年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#ezexam.answer-state.update(false)


= 一、选择题：1—8小题，每小题4分，共32分.在每小题给出的四个选项中，只有一项符合题目要求，把所选项前的字母填在题后的括号内.

#ezexam.question[
设 $0<a<b$，则 $lim_(n->infinity)(a^(-n)+b^(-n))^(1/n)=$（　）.
#choices([$a$], [$a^(-1)$], [$b$], [$b^(-1)$])
]

#ezexam.question[
设函数 $f(x)$ 在区间 $[-1,1]$ 上连续，则 $x=0$ 是函数 $g(x)=(integral_0^x f(t)dif t)/x$ 的（　）.
#choices([跳跃间断点], [可去间断点], [无穷间断点], [振荡间断点])
]

#ezexam.question[
设 $f(x)$ 是连续的奇函数，$g(x)$ 是连续的偶函数，区域 $D={(x,y)bar 0<=x<=1,-sqrt(x)<=y<=sqrt(x)}$，则以下结论正确的是（　）.
#choices([$integral.double_D f(y)g(x)dif x dif y=0$], [$integral.double_D f(x)g(y)dif x dif y=0$], [$integral.double_D [f(x)+g(y)]dif x dif y=0$], [$integral.double_D [f(y)+g(x)]dif x dif y=0$])
]

#ezexam.question[
如图，曲线段的方程为 $y=f(x)$，函数 $f(x)$ 在区间 $[0,a]$ 上有连续的导数，则定积分 $integral_0^a x f'(x)dif x$ 等于（　）.
#import "@preview/cetz:0.3.4": canvas, draw
#canvas({
 import draw: *
 line((-0.3,0),(3.8,0),mark:(end:"stealth"));line((0,-0.3),(0,3.8),mark:(end:"stealth"))
 line((0,3),(3,3),(3,0));line((0,0.6),(3,3));bezier((0,0.6),(3,3),(0.9,2.2),(1.9,3))
 content((3.9,0),$x$);content((0,4),$y$);content((-0.2,-0.2),$O$)
 content((3.65,3.1),$A(a,f(a))$);content((3,-0.35),$B(a,0)$)
 content((-0.9,3),$C(0,f(a))$);content((-0.2,0.6),$D$);content((0.8,2.7),$y=f(x)$)
})
#choices([曲边梯形 $A B O D$ 的面积], [梯形 $A B O D$ 的面积], [曲边三角形 $A C D$ 的面积], [三角形 $A C D$ 的面积])
]

#ezexam.question[
设 $A$ 为 $n$ 阶非零矩阵，$E$ 为 $n$ 阶单位矩阵.若 $A^3=O$，则（　）.
#choices([$E-A$ 不可逆，$E+A$ 不可逆], [$E-A$ 不可逆，$E+A$ 可逆], [$E-A$ 可逆，$E+A$ 可逆], [$E-A$ 可逆，$E+A$ 不可逆])
]

#ezexam.question[
设 $A=mat(1,2;2,1)$，则在实数域上与 $A$ 合同的矩阵为（　）.
#choices([$mat(-2,1;1,-2)$], [$mat(2,-1;-1,2)$], [$mat(2,1;1,2)$], [$mat(1,-2;-2,1)$])
]

#ezexam.question[
设随机变量 $X,Y$ 独立同分布，且 $X$ 的分布函数为 $F(x)$，则 $Z=max{X,Y}$ 的分布函数为（　）.
#choices([$F^2(x)$], [$F(x)F(y)$], [$1-[1-F(x)]^2$], [$[1-F(x)][1-F(y)]$])
]

#ezexam.question[
设随机变量 $X tilde N(0,1)$，$Y tilde N(1,4)$，相关系数 $rho_(X Y)=1$，则（　）.
#choices([$P{Y=-2X-1}=1$], [$P{Y=2X-1}=1$], [$P{Y=-2X+1}=1$], [$P{Y=2X+1}=1$])
]

= 二、填空题：9—14小题，每小题4分，共24分.把答案填在题中横线上.

#ezexam.question[
设函数 $f(x)=cases(x^2+1 & abs(x)<=c,2/abs(x) & abs(x)>c)$ 在 $(-infinity,+infinity)$ 内连续，则 $c=$#h(2cm).
]

#ezexam.question[
已知函数 $f(x)$ 连续，且 $lim_(x->0) f(x)/x=2$，则曲线 $y=f(x)$ 上对应 $x=0$ 处的切线方程是#h(2cm).
]

#ezexam.question[
$integral_1^e dif x integral_0^1 x^y ln x dif y=$#h(2cm).
]

#ezexam.question[
微分方程 $(y+x^2 e^(-x))dif x-x dif y=0$ 的通解是 $y=$#h(2cm).
]

#ezexam.question[
设3阶矩阵 $A$ 的特征值互不相同.若行列式 $abs(A)=0$，则 $A$ 的秩为#h(2cm).
]

#ezexam.question[
设随机变量 $X$ 服从参数为1的泊松分布，则 $P{X=E X^2}=$#h(2cm).
]

= 三、解答题：15—23小题，共94分.解答应写出文字说明、证明过程或演算步骤.

#ezexam.question[
（本题满分9分）
求极限 $lim_(x->0) 1/x^2 ln((sin x)/x)$.
]

#ezexam.question[
（本题满分10分）
设函数 $f(x)=integral_0^1 abs(t(t-x))dif t$（$0<x<1$），求 $f(x)$ 的极值、单调区间及曲线 $y=f(x)$ 的凹凸区间.
]

#ezexam.question[
（本题满分11分）
求函数 $u=x^2+y^2+z^2$ 在约束条件 $z=x^2+y^2$ 和 $x+y+z=4$ 下的最大值与最小值.
]

#ezexam.question[
（本题满分10分）
设 $z=z(x,y)$ 是由方程 $x^2+y^2-z=phi(x+y+z)$ 所确定的函数，其中 $phi$ 具有二阶导数，且 $phi'!=-1$.

（Ⅰ）求 $dif z$；

（Ⅱ）记 $u(x,y)=1/(x-y)((partial z)/(partial x)-(partial z)/(partial y))$，求 $(partial u)/(partial x)$.
]

#ezexam.question[
（本题满分10分）
设 $f(x)$ 是周期为2的连续函数.

（Ⅰ）证明对任意的实数 $t$，有 $integral_t^(t+2) f(x)dif x=integral_0^2 f(x)dif x$；

（Ⅱ）证明 $G(x)=integral_0^x [2f(t)-integral_t^(t+2) f(s)dif s]dif t$ 是周期为2的周期函数.
]

#ezexam.question[
（本题满分12分）
设 $n$ 元线性方程组 $A bold(x)=bold(b)$，其中
$ A=mat(2a,1,,,;a^2,2a,1,,;,a^2,2a,1,;,,dots.down,dots.down,dots.down;,,,a^2,2a,1;,,,,a^2,2a)_(n times n), quad bold(x)=mat(x_1;x_2; dots.v;x_n), quad bold(b)=mat(1;0; dots.v;0). $
（Ⅰ）证明行列式 $abs(A)=(n+1)a^n$；

（Ⅱ）当 $a$ 为何值时，该方程组有唯一解，并求 $x_1$；

（Ⅲ）当 $a$ 为何值时，该方程组有无穷多解，并求通解.
]

#ezexam.question[
（本题满分10分）
设 $A$ 为3阶矩阵，$alpha_1,alpha_2$ 为 $A$ 的分别属于特征值 $-1,1$ 的特征向量，向量 $alpha_3$ 满足 $A alpha_3=alpha_2+alpha_3$.

（Ⅰ）证明 $alpha_1,alpha_2,alpha_3$ 线性无关；

（Ⅱ）令 $P=(alpha_1,alpha_2,alpha_3)$，求 $P^(-1)A P$.
]

#ezexam.question[
（本题满分11分）
设随机变量 $X$ 与 $Y$ 相互独立，$X$ 的概率分布为 $P{X=i}=1/3$（$i=-1,0,1$），$Y$ 的概率密度为 $f_Y(y)=cases(1 & 0<=y<1,0 & "其他")$.记 $Z=X+Y$.

（Ⅰ）求 $P{Z<=1/2 bar X=0}$；

（Ⅱ）求 $Z$ 的概率密度 $f_Z(z)$.
]

#ezexam.question[
（本题满分11分）
设某企业生产线上产品的合格率为0.96，不合格产品中只有 $3/4$ 的产品可进行再加工，且再加工的合格率为0.8，其余均为废品.已知每件合格产品可获利80元，每件废品亏损20元，为保证该企业每天平均利润不低于2万元，问该企业每天至少应生产多少件产品？
]

