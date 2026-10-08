#import "../template.typ": exam
#show: exam.with(year: 2006, subject: "二", title: "2006年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#ezexam.answer-state.update(false)


= 一、填空题（本题共6小题，每小题4分，满分24分）

#ezexam.question[
曲线 $y=(x+4sin x)/(5x-2cos x)$ 的水平渐近线方程为#h(3em).
]

#ezexam.question[
设函数 $f(x)=cases(1/x^3 integral_0^x sin(t^2)dif t & x!=0,a & x=0)$ 在 $x=0$ 处连续，则 $a=$#h(3em).
]

#ezexam.question[
反常积分 $integral_0^(+infinity)(x dif x)/(1+x^2)^2=$#h(3em).
]

#ezexam.question[
微分方程 $y'=(y(1-x))/x$ 的通解是#h(3em).
]

#ezexam.question[
设函数 $y=y(x)$ 由方程 $y=1-x e^y$ 确定，则 $lr((dif y)/(dif x))|_(x=0)=$#h(3em).
]

#ezexam.question[
设矩阵 $A=mat(2,1;-1,2)$，$E$ 为二阶单位矩阵，矩阵 $B$ 满足 $B A=B+2E$，则 $|B|=$#h(3em).
]

= 二、选择题（本题共8小题，每小题4分，满分32分）

#ezexam.question[
设函数 $y=f(x)$ 具有二阶导数，且 $f'(x)>0,f''(x)>0$，$Delta x$ 为自变量 $x$ 在点 $x_0$ 处的增量，$Delta y$ 与 $dif y$ 分别为 $f(x)$ 在点 $x_0$ 处对应的增量与微分，若 $Delta x>0$，则
#choices([$0<dif y<Delta y$.],[$0<Delta y<dif y$.],[$Delta y<dif y<0$.],[$dif y<Delta y<0$.])
]

#ezexam.question[
设 $f(x)$ 是奇函数，除 $x=0$ 外处处连续，$x=0$ 是其第一类间断点，则 $integral_0^x f(t)dif t$ 是
#choices[连续的奇函数.][连续的偶函数.][在 $x=0$ 间断的奇函数.][在 $x=0$ 间断的偶函数.]
]

#ezexam.question[
设函数 $g(x)$ 可微，$h(x)=e^(1+g(x)),h'(1)=1,g'(1)=2$，则 $g(1)$ 等于
#choices([$ln 3-1$.],[$-ln 3-1$.],[$-ln 2-1$.],[$ln 2-1$.])
]

#ezexam.question[
函数 $y=C_1 e^x+C_2 e^(-2x)+x e^x$ 满足的一个微分方程是
#choices([$y''-y'-2y=3x e^x$.],[$y''-y'-2y=3e^x$.],[$y''+y'-2y=3x e^x$.],[$y''+y'-2y=3e^x$.])
]

#ezexam.question[
设 $f(x,y)$ 为连续函数，则 $integral_0^(pi/4)dif theta integral_0^1 f(r cos theta,r sin theta)r dif r$ 等于
#choices([$integral_0^(sqrt(2)/2)dif x integral_x^(sqrt(1-x^2))f(x,y)dif y$.],[$integral_0^(sqrt(2)/2)dif x integral_0^(sqrt(1-x^2))f(x,y)dif y$.],[$integral_0^(sqrt(2)/2)dif y integral_y^(sqrt(1-y^2))f(x,y)dif x$.],[$integral_0^(sqrt(2)/2)dif y integral_0^(sqrt(1-y^2))f(x,y)dif x$.])
]

#ezexam.question[
设 $f(x,y)$ 与 $phi(x,y)$ 均为可微函数，且 $phi'_y(x,y)!=0$.已知 $(x_0,y_0)$ 是 $f(x,y)$ 在约束条件 $phi(x,y)=0$ 下的一个极值点，下列选项正确的是
#choices([若 $f'_x(x_0,y_0)=0$，则 $f'_y(x_0,y_0)=0$.],[若 $f'_x(x_0,y_0)=0$，则 $f'_y(x_0,y_0)!=0$.],[若 $f'_x(x_0,y_0)!=0$，则 $f'_y(x_0,y_0)=0$.],[若 $f'_x(x_0,y_0)!=0$，则 $f'_y(x_0,y_0)!=0$.])
]

#ezexam.question[
设 $alpha_1,alpha_2,dots,alpha_s$ 均为 $n$ 维列向量，$A$ 是 $m times n$ 矩阵，下列选项正确的是
#choices([若 $alpha_1,alpha_2,dots,alpha_s$ 线性相关，则 $A alpha_1,A alpha_2,dots,A alpha_s$ 线性相关.],[若 $alpha_1,alpha_2,dots,alpha_s$ 线性相关，则 $A alpha_1,A alpha_2,dots,A alpha_s$ 线性无关.],[若 $alpha_1,alpha_2,dots,alpha_s$ 线性无关，则 $A alpha_1,A alpha_2,dots,A alpha_s$ 线性相关.],[若 $alpha_1,alpha_2,dots,alpha_s$ 线性无关，则 $A alpha_1,A alpha_2,dots,A alpha_s$ 线性无关.])
]

#ezexam.question[
设 $A$ 为三阶矩阵，将 $A$ 的第2行加到第1行得 $B$，再将 $B$ 的第1列的 $-1$ 倍加到第2列得 $C$，记 $P=mat(1,1,0;0,1,0;0,0,1)$，则
#choices([$C=P^(-1)A P$.],[$C=P A P^(-1)$.],[$C=P^T A P$.],[$C=P A P^T$.])
]

= 三、解答题（本题共9小题，满分94分.解答应写出文字说明、证明过程或演算步骤.）

#ezexam.question[
（本题满分10分）

试确定常数 $A,B,C$ 的值，使得
$ e^x(1+B x+C x^2)=1+A x+o(x^3), $
其中 $o(x^3)$ 是当 $x->0$ 时比 $x^3$ 高阶的无穷小量.
]

#ezexam.question[
（本题满分10分）

求 $integral (arcsin e^x)/e^x dif x$.
]

#ezexam.question[
（本题满分10分）

设区域 $D={(x,y)|x^2+y^2<=1,x>=0}$，计算二重积分 $I=integral.double_D(1+x y)/(1+x^2+y^2)dif x dif y$.
]

#ezexam.question[
（本题满分12分）

设数列 $\{x_n\}$ 满足 $0<x_1<pi,x_(n+1)=sin x_n (n=1,2,dots)$.

（Ⅰ）证明 $lim_(n->infinity)x_n$ 存在，并求该极限；

（Ⅱ）计算 $lim_(n->infinity)(x_(n+1)/x_n)^(1/x_n^2)$.
]

#ezexam.question[
（本题满分10分）

证明：当 $0<a<b<pi$ 时，$b sin b+2cos b+pi b>a sin a+2cos a+pi a$.
]

#ezexam.question[
（本题满分12分）

设函数 $f(u)$ 在 $(0,+infinity)$ 内具有二阶导数，且 $z=f(sqrt(x^2+y^2))$ 满足等式 $(partial^2 z)/(partial x^2)+(partial^2 z)/(partial y^2)=0$.

（Ⅰ）验证 $f''(u)+f'(u)/u=0$；

（Ⅱ）若 $f(1)=0,f'(1)=1$，求函数 $f(u)$ 的表达式.
]

#ezexam.question[
（本题满分12分）

已知曲线 $L$ 的方程为 $cases(x=t^2+1,y=4t-t^2) (t>=0)$，

（Ⅰ）讨论 $L$ 的凹凸性；

（Ⅱ）过点 $(-1,0)$ 引 $L$ 的切线，求切点 $(x_0,y_0)$ 并写出切线的方程；

（Ⅲ）求此切线与 $L$（对应于 $x<=x_0$ 的部分）及 $x$ 轴所围成的平面图形的面积.
]

#ezexam.question[
（本题满分9分）

已知非齐次线性方程组
$ cases(x_1+x_2+x_3+x_4=-1,4x_1+3x_2+5x_3-x_4=-1,a x_1+x_2+3x_3+b x_4=1) $
有三个线性无关的解.

（Ⅰ）证明方程组系数矩阵 $A$ 的秩 $r(A)=2$；

（Ⅱ）求 $a,b$ 的值及方程组的通解.
]

#ezexam.question[
（本题满分9分）

设三阶实对称矩阵 $A$ 的各行元素之和均为3，向量 $alpha_1=(-1,2,-1)^T,alpha_2=(0,-1,1)^T$ 是线性方程组 $A x=bold(0)$ 的两个解.

（Ⅰ）求 $A$ 的特征值与特征向量；

（Ⅱ）求正交矩阵 $Q$ 和对角矩阵 $Lambda$，使得 $Q^T A Q=Lambda$.
]

