#import "../template.typ": exam
#show: exam.with(year: 2018, subject: "二")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)


= 一、选择题：1—8小题，每小题4分，共32分. 在每小题给出的四个选项中，只有一项符合题目要求，把所选项前的字母填在题后的括号内.

#ezexam.question[
若 $lim_(x->0) (e^x+a x^2+b x)^(1/x^2)=1$，则（　）.
#choices([$a=1/2,b=-1$], [$a=-1/2,b=-1$], [$a=1/2,b=1$], [$a=-1/2,b=1$])
]

#ezexam.question[
下列函数中，在 $x=0$ 处不可导的是（　）.
#choices([$f(x)=abs(x) sin abs(x)$], [$f(x)=abs(x) sin sqrt(abs(x))$], [$f(x)=cos abs(x)$], [$f(x)=cos sqrt(abs(x))$])
]

#ezexam.question[
设函数 $f(x)=cases(-1 & x<0,1 & x>=0)$，$g(x)=cases(2-a x & x<=-1,x & -1<x<0,x-b & x>=0)$，若 $f(x)+g(x)$ 在 $bold(upright(R))$ 上连续，则（　）.
#choices([$a=3,b=1$], [$a=3,b=2$], [$a=-3,b=1$], [$a=-3,b=2$])
]

#ezexam.question[
设函数 $f(x)$ 在 $[0,1]$ 上二阶可导，且 $integral_0^1 f(x) dif x=0$，则（　）.
#choices([当 $f'(x)<0$ 时，$f(1/2)<0$.], [当 $f''(x)<0$ 时，$f(1/2)<0$.], [当 $f'(x)>0$ 时，$f(1/2)<0$.], [当 $f''(x)>0$ 时，$f(1/2)<0$.])
]

#ezexam.question[
设 $M=integral_(-pi/2)^(pi/2) (1+x)^2/(1+x^2) dif x$，$N=integral_(-pi/2)^(pi/2) (1+x)/e^x dif x$，$K=integral_(-pi/2)^(pi/2) (1+sqrt(cos x)) dif x$，则（　）.
#choices([$M>N>K$], [$M>K>N$], [$K>M>N$], [$K>N>M$])
]

#ezexam.question[
$integral_(-1)^0 dif x integral_(-x)^(2-x^2) (1-x y) dif y+integral_0^1 dif x integral_x^(2-x^2) (1-x y) dif y=$（　）.
#choices([$5/3$], [$5/6$], [$7/3$], [$7/6$])
]

#ezexam.question[
下列矩阵中，与矩阵 $mat(1,1,0;0,1,1;0,0,1)$ 相似的为（　）.
#choices([$mat(1,1,-1;0,1,1;0,0,1)$], [$mat(1,0,-1;0,1,1;0,0,1)$], [$mat(1,1,-1;0,1,0;0,0,1)$], [$mat(1,0,-1;0,1,0;0,0,1)$])
]

#ezexam.question[
设 $A,B$ 为 $n$ 阶矩阵，记 $r(X)$ 为矩阵 $X$ 的秩，$(X quad Y)$ 表示分块矩阵，则（　）.
#choices([$r(A quad A B)=r(A)$], [$r(A quad B A)=r(A)$], [$r(A quad B)=max{r(A),r(B)}$], [$r(A quad B)=r(A^"T" B^"T")$])
]

= 二、填空题：9—14小题，每小题4分，共24分. 把答案填在题中横线上.

#ezexam.question[
$lim_(x->+infinity) x^2[arctan(x+1)-arctan x]=$#fillin(len: 2.97656em)[].
]

#ezexam.question[
曲线 $y=x^2+2ln x$ 在其拐点处的切线方程是#fillin(len: 2.97656em)[].
]

#ezexam.question[
$integral_5^(+infinity) 1/(x^2-4x+3) dif x=$#fillin(len: 2.97656em)[].
]

#ezexam.question[
曲线 $cases(x=cos^3 t,y=sin^3 t)$ 在 $t=pi/4$ 对应点处的曲率为#fillin(len: 2.97656em)[].
]

#ezexam.question[
设函数 $z=z(x,y)$ 由方程 $ln z+e^(z-1)=x y$ 确定，则 $lr((partial z)/(partial x) bar.v)_(2,1/2)=$#fillin(len: 2.97656em)[].
]

#ezexam.question[
设 $A$ 为 3 阶矩阵，$alpha_1,alpha_2,alpha_3$ 为线性无关的向量组.若 $A alpha_1=2alpha_1+alpha_2+alpha_3$，$A alpha_2=alpha_2+2alpha_3$，$A alpha_3=-alpha_2+alpha_3$，则 $A$ 的实特征值为#fillin(len: 2.97656em)[].
]

= 三、解答题：15—23小题，共94分. 解答应写出文字说明、证明过程或演算步骤.

#ezexam.question[
（本题满分 10 分）

求不定积分 $integral e^(2x) arctan sqrt(e^x-1) dif x$.
]

#ezexam.question[
（本题满分 10 分）

已知连续函数 $f(x)$ 满足 $integral_0^x f(t) dif t+integral_0^x t f(x-t) dif t=a x^2$.

（Ⅰ）求 $f(x)$；

（Ⅱ）若 $f(x)$ 在区间 $[0,1]$ 上的平均值为 1，求 $a$ 的值.
]

#ezexam.question[
（本题满分 10 分）

设平面区域 $D$ 由曲线 $cases(x=t-sin t,y=1-cos t)$（$0<=t<=2pi$）与 $x$ 轴围成，计算二重积分 $integral.double_D (x+2y) dif x dif y$.
]

#ezexam.question[
（本题满分 10 分）

已知常数 $k>=ln 2-1$.证明：$(x-1)(x-ln^2 x+2k ln x-1)>=0$.
]

#ezexam.question[
（本题满分 10 分）

将长为 2 m 的铁丝分成三段，依次围成圆、正方形与正三角形.三个图形的面积之和是否存在最小值？若存在，求出最小值.
]

#ezexam.question[
（本题满分 11 分）

已知曲线 $L:y=4/9 x^2$（$x>=0$），点 $O(0,0)$，点 $A(0,1)$.设 $P$ 是 $L$ 上的动点，$S$ 是直线 $O A$ 与直线 $A P$ 及曲线 $L$ 所围图形的面积.若 $P$ 运动到点 $(3,4)$ 时沿 $x$ 轴正向的速度是 4，求此时 $S$ 关于时间 $t$ 的变化率.
]

#ezexam.question[
（本题满分 11 分）

设数列 $\{x_n\}$ 满足：$x_1>0$，$x_n e^(x_(n+1))=e^(x_n)-1$（$n=1,2,dots$）.证明 $\{x_n\}$ 收敛，并求 $lim_(n->infinity) x_n$.
]

#ezexam.question[
（本题满分 11 分）

设实二次型 $f(x_1,x_2,x_3)=(x_1-x_2+x_3)^2+(x_2+x_3)^2+(x_1+a x_3)^2$，其中 $a$ 是参数.

（Ⅰ）求 $f(x_1,x_2,x_3)=0$ 的解；

（Ⅱ）求 $f(x_1,x_2,x_3)$ 的规范形.
]

#ezexam.question[
（本题满分 11 分）

已知 $a$ 是常数，且矩阵 $A=mat(1,2,a;1,3,0;2,7,-a)$ 可经初等列变换化为矩阵 $B=mat(1,a,2;0,1,1;-1,1,1)$.

（Ⅰ）求 $a$；

（Ⅱ）求满足 $A P=B$ 的可逆矩阵 $P$.
]

