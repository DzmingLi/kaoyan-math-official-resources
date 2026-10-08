#import "../template.typ": exam
#show: exam.with(year: 2012, subject: "二", title: "2012年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#ezexam.answer-state.update(false)


= 一、选择题：1—8小题，每小题4分，共32分.在每小题给出的四个选项中，只有一项符合题目要求，把所选项前的字母填在题后的括号内.

#ezexam.question[
曲线 $y=(x^2+x)/(x^2-1)$ 的渐近线的条数为
#choices([0.],[1.],[2.],[3.])
]

#ezexam.question[
设函数 $f(x)=(e^x-1)(e^(2x)-2) dots (e^(n x)-n)$，其中 $n$ 为正整数，则 $f'(0)=$
#choices([$(-1)^(n-1)(n-1)!$.],[$(-1)^n(n-1)!$.],[$(-1)^(n-1)n!$.],[$(-1)^n n!$.])
]

#ezexam.question[
设 $a_n>0 (n=1,2,dots),S_n=a_1+a_2+dots+a_n$，则数列 ${S_n}$ 有界是数列 ${a_n}$ 收敛的
#choices([充分必要条件.],[充分非必要条件.],[必要非充分条件.],[既非充分也非必要条件.])
]

#ezexam.question[
设 $I_k=integral_0^(k pi)e^(x^2)sin x dif x (k=1,2,3)$，则有
#choices([$I_1<I_2<I_3$.],[$I_3<I_2<I_1$.],[$I_2<I_3<I_1$.],[$I_2<I_1<I_3$.])
]

#ezexam.question[
设函数 $f(x,y)$ 可微，且对任意 $x,y$ 都有 $(partial f(x,y))/(partial x)>0,(partial f(x,y))/(partial y)<0$，则使不等式 $f(x_1,y_1)<f(x_2,y_2)$ 成立的一个充分条件是
#choices([$x_1>x_2,y_1<y_2$.],[$x_1>x_2,y_1>y_2$.],[$x_1<x_2,y_1<y_2$.],[$x_1<x_2,y_1>y_2$.])
]

#ezexam.question[
设区域 $D$ 由曲线 $y=sin x,x=±pi/2,y=1$ 围成，则 $integral.double_D(x y^5-1)dif x dif y=$
#choices([$pi$.],[2.],[$-2$.],[$-pi$.])
]

#ezexam.question[
设 $alpha_1=mat(0;0;c_1),alpha_2=mat(0;1;c_2),alpha_3=mat(1;-1;c_3),alpha_4=mat(-1;1;c_4)$，其中 $c_1,c_2,c_3,c_4$ 为任意常数，则下列向量组线性相关的为
#choices([$alpha_1,alpha_2,alpha_3$.],[$alpha_1,alpha_2,alpha_4$.],[$alpha_1,alpha_3,alpha_4$.],[$alpha_2,alpha_3,alpha_4$.])
]

#ezexam.question[
设 $A$ 为3阶矩阵，$P$ 为3阶可逆矩阵，且 $P^(-1)A P=mat(1,0,0;0,1,0;0,0,2)$.若 $P=(alpha_1,alpha_2,alpha_3),Q=(alpha_1+alpha_2,alpha_2,alpha_3)$，则 $Q^(-1)A Q=$
#choices([$mat(1,0,0;0,2,0;0,0,1)$.],[$mat(1,0,0;0,1,0;0,0,2)$.],[$mat(2,0,0;0,1,0;0,0,2)$.],[$mat(2,0,0;0,2,0;0,0,1)$.])
]

= 二、填空题：9—14小题，每小题4分，共24分.把答案填在题中横线上.

#ezexam.question[
设 $y=y(x)$ 是由方程 $x^2-y+1=e^y$ 所确定的隐函数，则 $lr((dif^2 y)/(dif x^2))|_(x=0)=$#h(3em).
]

#ezexam.question[
$lim_(n->infinity)n(1/(1+n^2)+1/(2^2+n^2)+dots+1/(n^2+n^2))=$#h(3em).
]

#ezexam.question[
设 $z=f(ln x+1/y)$，其中函数 $f(u)$ 可微，则 $x(partial z)/(partial x)+y^2(partial z)/(partial y)=$#h(3em).
]

#ezexam.question[
微分方程 $y dif x+(x-3y^2)dif y=0$ 满足条件 $lr(y)|_(x=1)=1$ 的解为 $y=$#h(3em).
]

#ezexam.question[
曲线 $y=x^2+x (x<0)$ 上曲率为 $sqrt(2)/2$ 的点的坐标是#h(3em).
]

#ezexam.question[
设 $A$ 为3阶矩阵，$|A|=3,A^*$ 为 $A$ 的伴随矩阵.若交换 $A$ 的第1行与第2行得矩阵 $B$，则 $|B A^*|=$#h(3em).
]

= 三、解答题：15—23小题，共94分.解答应写出文字说明、证明过程或演算步骤.

#ezexam.question[
（本题满分10分）已知函数 $f(x)=(1+x)/(sin x)-1/x$，记 $a=lim_(x->0)f(x)$.

（Ⅰ）求 $a$ 的值；

（Ⅱ）若当 $x->0$ 时，$f(x)-a$ 与 $x^k$ 是同阶无穷小量，求常数 $k$ 的值.
]

#ezexam.question[
（本题满分10分）求函数 $f(x,y)=x e^(-(x^2+y^2)/2)$ 的极值.
]

#ezexam.question[
（本题满分12分）过点 $(0,1)$ 作曲线 $L:y=ln x$ 的切线，切点为 $A$，又 $L$ 与 $x$ 轴交于 $B$ 点，区域 $D$ 由 $L$ 与直线 $A B$ 围成，求区域 $D$ 的面积及 $D$ 绕 $x$ 轴旋转一周所得旋转体的体积.
]

#ezexam.question[
（本题满分10分）计算二重积分 $integral.double_D x y dif sigma$，其中区域 $D$ 由曲线 $r=1+cos theta (0<=theta<=pi)$ 与极轴围成.
]

#ezexam.question[
（本题满分10分）已知函数 $f(x)$ 满足方程 $f''(x)+f'(x)-2f(x)=0$ 及 $f''(x)+f(x)=2e^x$.

（Ⅰ）求 $f(x)$ 的表达式；

（Ⅱ）求曲线 $y=f(x^2)integral_0^x f(-t^2)dif t$ 的拐点.
]

#ezexam.question[
（本题满分10分）证明：$x ln((1+x)/(1-x))+cos x>=1+x^2/2 (-1<x<1)$.
]

#ezexam.question[
（本题满分10分）（Ⅰ）证明方程 $x^n+x^(n-1)+dots+x=1$（$n$ 为大于1的整数）在区间 $(1/2,1)$ 内有且仅有一个实根；

（Ⅱ）记（Ⅰ）中的实根为 $x_n$，证明 $lim_(n->infinity)x_n$ 存在，并求此极限.
]

#ezexam.question[
（本题满分11分）设 $A=mat(1,a,0,0;0,1,a,0;0,0,1,a;a,0,0,1),beta=mat(1;-1;0;0)$.

（Ⅰ）计算行列式 $|A|$；

（Ⅱ）当实数 $a$ 为何值时，方程组 $A x=beta$ 有无穷多解，并求其通解.
]

#ezexam.question[
（本题满分11分）已知 $A=mat(1,0,1;0,1,1;-1,0,a;0,a,-1)$，二次型 $f(x_1,x_2,x_3)=x^T(A^T A)x$ 的秩为2.

（Ⅰ）求实数 $a$ 的值；

（Ⅱ）求正交变换 $x=Q y$ 将 $f$ 化为标准形.
]

