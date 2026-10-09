#import "../template.typ": exam
#show: exam.with(year: 2008, subject: "二", title: "2008年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#ezexam.answer-state.update(false)


= 一、选择题：1—8小题，每小题4分，共32分. 在每小题给出的四个选项中，只有一项符合题目要求，把所选项前的字母填在题后的括号内.

#ezexam.question[
设函数 $f(x)=x^2(x-1)(x-2)$，则 $f'(x)$ 的零点个数为（　）.
#choices([0], [1], [2], [3])
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
在下列微分方程中，以 $y=C_1 e^x+C_2 cos 2x+C_3 sin 2x$（$C_1,C_2,C_3$ 为任意常数）为通解的是（　）.
#choices([$y'''+y''-4y'-4y=0$], [$y'''+y''+4y'+4y=0$], [$y'''-y''-4y'+4y=0$], [$y'''-y''+4y'-4y=0$])
]

#ezexam.question[
设函数 $f(x)=ln abs(x)/abs(x-1) sin x$，则 $f(x)$ 有（　）.
#choices([1个可去间断点，1个跳跃间断点], [1个可去间断点，1个无穷间断点], [2个跳跃间断点], [2个无穷间断点])
]

#ezexam.question[
设函数 $f(x)$ 在 $(-infinity,+infinity)$ 内单调有界，${x_n}$ 为数列，下列命题正确的是（　）.
#choices([若 ${x_n}$ 收敛，则 ${f(x_n)}$ 收敛], [若 ${x_n}$ 单调，则 ${f(x_n)}$ 收敛], [若 ${f(x_n)}$ 收敛，则 ${x_n}$ 收敛], [若 ${f(x_n)}$ 单调，则 ${x_n}$ 收敛])
]

#ezexam.question[
设函数 $f$ 连续.若 $F(u,v)=integral.double_(D_(u v)) f(x^2+y^2)/sqrt(x^2+y^2) dif x dif y$，其中区域 $D_(u v)$ 为图中阴影部分，则 $(partial F)/(partial u)=$（　）.
#import "@preview/cetz:0.3.4": canvas, draw
#canvas({
 import draw: *
 let pt(r,a)=(r*calc.cos(a),r*calc.sin(a))
 let v=35deg
 line((-0.3,0),(3.8,0),mark:(end:"stealth"));line((0,-0.3),(0,3.8),mark:(end:"stealth"))
 arc((0,0),anchor:"origin",start:0deg,stop:90deg,radius:1.5);arc((0,0),anchor:"origin",start:0deg,stop:90deg,radius:3)
 line((0,0),pt(3,v));arc((0,0),anchor:"origin",start:0deg,stop:v,radius:0.6)
 for a in range(0,35,step:5) {line(pt(1.55,a*1deg),pt(2.95,(a+4)*1deg),stroke:0.4pt)}
 content((3.9,0),$x$);content((0,4),$y$);content((-0.2,-0.2),$O$);content((0.8,0.2),$v$)
 content((1.25,1.85),$x^2+y^2=1$);content((2.4,3.1),$x^2+y^2=u^2$);content((2.25,0.65),$D_(u v)$)
})
#choices([$v f(u^2)$], [$v/u f(u^2)$], [$v f(u)$], [$v/u f(u)$])
]

#ezexam.question[
设 $A$ 为 $n$ 阶非零矩阵，$E$ 为 $n$ 阶单位矩阵.若 $A^3=O$，则（　）.
#choices([$E-A$ 不可逆，$E+A$ 不可逆], [$E-A$ 不可逆，$E+A$ 可逆], [$E-A$ 可逆，$E+A$ 可逆], [$E-A$ 可逆，$E+A$ 不可逆])
]

#ezexam.question[
设 $A=mat(1,2;2,1)$，则在实数域上与 $A$ 合同的矩阵为（　）.
#choices([$mat(-2,1;1,-2)$], [$mat(2,-1;-1,2)$], [$mat(2,1;1,2)$], [$mat(1,-2;-2,1)$])
]

= 二、填空题：9—14小题，每小题4分，共24分. 把答案填在题中横线上.

#ezexam.question[
已知函数 $f(x)$ 连续，且 $lim_(x->0) (1-cos[x f(x)])/((e^(x^2)-1)f(x))=1$，则 $f(0)=$#h(2cm).
]

#ezexam.question[
微分方程 $(y+x^2 e^(-x))dif x-x dif y=0$ 的通解是 $y=$#h(2cm).
]

#ezexam.question[
曲线 $sin(x y)+ln(y-x)=x$ 在点 $(0,1)$ 处的切线方程是#h(2cm).
]

#ezexam.question[
曲线 $y=(x-5)x^(2/3)$ 的拐点坐标为#h(2cm).
]

#ezexam.question[
设 $z=(y/x)^(x/y)$，则 $lr.|(partial z)/(partial x)|_((1,2))=$#h(2cm).
]

#ezexam.question[
设3阶矩阵 $A$ 的特征值为 $2,3,lambda$.若行列式 $abs(2A)=-48$，则 $lambda=$#h(2cm).
]

= 三、解答题：15—23小题，共94分. 解答应写出文字说明、证明过程或演算步骤.

#ezexam.question[
（本题满分9分）
求极限 $lim_(x->0) ([sin x-sin(sin x)]sin x)/x^4$.
]

#ezexam.question[
（本题满分10分）
设函数 $y=y(x)$ 由参数方程 $cases(x=x(t),y=integral_0^(t^2) ln(1+u)dif u)$ 确定，其中 $x(t)$ 是初值问题 $cases((dif x)/(dif t)-2t e^(-x)=0,lr.|x|_(t=0)=0)$ 的解.求 $(dif^2 y)/(dif x^2)$.
]

#ezexam.question[
（本题满分9分）
计算 $integral_0^1 (x^2 arcsin x)/sqrt(1-x^2)dif x$.
]

#ezexam.question[
（本题满分11分）
计算 $integral.double_D max{x y,1}dif x dif y$，其中 $D={(x,y)bar 0<=x<=2,0<=y<=2}$.
]

#ezexam.question[
（本题满分11分）
设 $f(x)$ 是区间 $[0,+infinity)$ 上具有连续导数的单调增加函数，且 $f(0)=1$.对任意的 $t in [0,+infinity)$，直线 $x=0$，$x=t$，曲线 $y=f(x)$ 以及 $x$ 轴所围成的曲边梯形绕 $x$ 轴旋转一周生成一旋转体.若该旋转体的侧面积在数值上等于其体积的2倍，求函数 $f(x)$ 的表达式.
]

#ezexam.question[
（本题满分11分）
（Ⅰ）证明积分中值定理：若函数 $f(x)$ 在闭区间 $[a,b]$ 上连续，则至少存在一点 $eta in [a,b]$，使得 $integral_a^b f(x)dif x=f(eta)(b-a)$；

（Ⅱ）若函数 $phi(x)$ 具有二阶导数，且满足 $phi(2)>phi(1)$，$phi(2)>integral_2^3 phi(x)dif x$，则至少存在一点 $xi in (1,3)$，使得 $phi''(xi)<0$.
]

#ezexam.question[
（本题满分11分）
求函数 $u=x^2+y^2+z^2$ 在约束条件 $z=x^2+y^2$ 和 $x+y+z=4$ 下的最大值与最小值.
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

