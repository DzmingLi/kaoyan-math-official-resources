#import "../template.typ": exam
#show: exam.with(year: 2024, subject: "二")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices.with(r-gap: 1.3em)
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)


= 一、选择题：第1—10小题，每小题5分，共50分. 下列每小题给出的四个选项中，只有一个选项是最符合题目要求的.

#ezexam.question[
函数 $f(x)=abs(x)^(1/((1-x)(x-2)))$ 的第一类间断点的个数是（　）.
#choices([3.],[2.],[1.],[0.])
]

#ezexam.question[
设函数 $y=f(x)$ 由参数方程 $cases(x=1+t^3,y=e^(t^2))$ 确定，则 $lim_(x->infinity) x(f(2+2/x)-f(2))=$（　）.
#choices([$2e$],[$(4e)/3$],[$(2e)/3$],[$e/3$])
]

#ezexam.question[
设函数 $f(x)=integral_0^(sin x) sin t^3 dif t$，$g(x)=integral_0^x f(t) dif t$，则（　）.
#choices([$f(x)$ 是奇函数，$g(x)$ 是奇函数.],[$f(x)$ 是奇函数，$g(x)$ 是偶函数.],[$f(x)$ 是偶函数，$g(x)$ 是偶函数.],[$f(x)$ 是偶函数，$g(x)$ 是奇函数.])
]

#ezexam.question[
已知数列 $\{a_n\}$（$a_n!=0$）.若 $\{a_n\}$ 发散，则（　）.
#choices([$\{a_n+1/a_n\}$ 发散.],[$\{a_n-1/a_n\}$ 发散.],[$\{e^(a_n)+1/e^(a_n)\}$ 发散.],[$\{e^(a_n)-1/e^(a_n)\}$ 发散.])
]

#ezexam.question[
已知函数 $f(x,y)=cases((x^2+y^2) dot sin(1/(x y))&x y!=0,0&x y=0)$，则在点 $(0,0)$ 处（　）.
#choices([$(partial f(x,y))/(partial x)$ 连续，$f(x,y)$ 可微.],[$(partial f(x,y))/(partial x)$ 连续，$f(x,y)$ 不可微.],[$(partial f(x,y))/(partial x)$ 不连续，$f(x,y)$ 可微.],[$(partial f(x,y))/(partial x)$ 不连续，$f(x,y)$ 不可微.])
]

#ezexam.question[
设 $f(x,y)$ 是连续函数，则 $integral_(pi/6)^(pi/2) dif x integral_(sin x)^1 f(x,y) dif y=$（　）.
#choices([$integral_(1/2)^1 dif y integral_(pi/6)^(arcsin y) f(x,y) dif x$],[$integral_(1/2)^1 dif y integral_(arcsin y)^(pi/2) f(x,y) dif x$],[$integral_0^(1/2) dif y integral_(pi/6)^(arcsin y) f(x,y) dif x$],[$integral_0^(1/2) dif y integral_(arcsin y)^(pi/2) f(x,y) dif x$])
]

#ezexam.question[
设非负函数 $f(x)$ 在 $[0,+infinity)$ 上连续，给出以下三个命题：

① 若 $integral_0^(+infinity) f^2(x) dif x$ 收敛，则 $integral_0^(+infinity) f(x) dif x$ 收敛.

② 若存在 $p>1$，使得 $lim_(x->+infinity) x^p f(x)$ 存在，则 $integral_0^(+infinity) f(x) dif x$ 收敛.

③ 若 $integral_0^(+infinity) f(x) dif x$ 收敛，则存在 $p>1$，使得 $lim_(x->+infinity) x^p f(x)$ 存在.

其中真命题的个数为（　）.
#choices([0.],[1.],[2.],[3.])
]

#ezexam.question[
设 $A$ 为3阶矩阵，$P=mat(1,0,0;0,1,0;1,0,1)$.若 $P^"T" A P^2=mat(a+2c,0,c;0,b,0;2c,0,c)$，则 $A=$（　）.
#choices([$mat(c,0,0;0,a,0;0,0,b)$],[$mat(b,0,0;0,c,0;0,0,a)$],[$mat(a,0,0;0,b,0;0,0,c)$],[$mat(c,0,0;0,b,0;0,0,a)$])
]

#ezexam.question[
设 $A$ 为4阶矩阵，$A^*$ 为 $A$ 的伴随矩阵.若 $A(A-A^*)=O$，且 $A!=A^*$，则 $r(A)$ 取值为（　）.
#choices([0或1.],[1或3.],[2或3.],[1或2.])
]

#ezexam.question[
设 $A,B$ 为2阶矩阵，且 $A B=B A$，则“$A$ 有两个不相等的特征值”是“$B$ 可对角化”的（　）.
#choices([充分必要条件.],[充分不必要条件.],[必要不充分条件.],[既不充分也不必要条件.])
]

= 二、填空题：第11—16小题，每小题5分，共30分.

#ezexam.question[
曲线 $y^2=x$ 在点 $(0,0)$ 处的曲率圆方程为#fillin(len: 2.97656em)[].
]

#ezexam.question[
函数 $f(x,y)=2x^3-9x^2-6y^4+12x+24y$ 的极值点是#fillin(len: 2.97656em)[].
]

#ezexam.question[
微分方程 $y'=1/(x+y)^2$ 满足条件 $y(1)=0$ 的解为#fillin(len: 2.97656em)[].
]

#ezexam.question[
已知函数 $f(x)=x^2(e^x+1)$，则 $f^((5))(1)=$#fillin(len: 2.97656em)[].
]

#ezexam.question[
某物体以速度 $v(t)=t+k sin pi t$ 做直线运动，若它从 $t=0$ 到 $t=3$ 的时间段内平均速度是 $5/2$，则 $k=$#fillin(len: 2.97656em)[].
]

#ezexam.question[
设向量 $bold(alpha)_1=mat(a;1;-1;1)$，$bold(alpha)_2=mat(1;1;b;a)$，$bold(alpha)_3=mat(1;a;-1;1)$.若 $bold(alpha)_1,bold(alpha)_2,bold(alpha)_3$ 线性相关，且其中任意两个向量均线性无关，则 $a b=$#fillin(len: 2.97656em)[].
]

= 三、解答题：第17—22小题，共70分. 解答应写出文字说明、证明过程或演算步骤.

#ezexam.question[
（本题满分10分）

设平面有界区域 $D$ 位于第一象限，由曲线 $x y=1/3$，$x y=3$ 与直线 $y=1/3 x$，$y=3x$ 围成，计算 $integral.double_D (1+x-y) dif x dif y$.
]

#ezexam.question[
（本题满分12分）

设 $y(x)$ 为微分方程 $x^2 y''+x y'-9y=0$ 满足条件 $y|_(x=1)=2$，$y'|_(x=1)=6$ 的解.

（1）利用变换 $x=e^t$ 将上述方程化为常系数线性方程，并求 $y(x)$；

（2）计算 $integral_1^2 y(x)sqrt(4-x^2) dif x$.
]

#ezexam.question[
（本题满分12分）

设 $t>0$，平面有界区域 $D$ 由曲线 $y=sqrt(x)e^(-x)$ 与直线 $x=t$，$x=2t$ 及 $x$ 轴围成，$D$ 绕 $x$ 轴旋转一周所成旋转体的体积为 $V(t)$，求 $V(t)$ 的最大值.
]

#ezexam.question[
（本题满分12分）

已知函数 $f(u,v)$ 具有2阶连续偏导数，且函数 $g(x,y)=f(2x+y,3x-y)$ 满足 $(partial^2 g)/(partial x^2)+(partial^2 g)/(partial x partial y)-6(partial^2 g)/(partial y^2)=1$.

（1）求 $(partial^2 f)/(partial u partial v)$；

（2）若 $(partial f(u,0))/(partial u)=u e^(-u)$，$f(0,v)=1/50 v^2-1$，求 $f(u,v)$ 的表达式.
]

#ezexam.question[
（本题满分12分）

设函数 $f(x)$ 具有2阶导数，且 $f'(0)=f'(1)$，$abs(f''(x))<=1$.证明：

（1）当 $x in (0,1)$ 时，$abs(f(x)-f(0)(1-x)-f(1)x)<=x(1-x)/2$；

（2）$abs(integral_0^1 f(x) dif x-(f(0)+f(1))/2)<=1/12$.
]

#ezexam.question[
（本题满分12分）

设矩阵 $A=mat(0,1,a;1,0,1)$，$B=mat(1,1;1,1;b,2)$，二次型 $f(x_1,x_2,x_3)=bold(x)^"T" B A bold(x)$.已知方程组 $A bold(x)=bold(0)$ 的解均是 $B^"T" bold(x)=bold(0)$ 的解，但这两个方程组不同解.

（1）求 $a,b$ 的值；

（2）求正交变换 $bold(x)=Q bold(y)$ 将 $f(x_1,x_2,x_3)$ 化为标准形.
]

