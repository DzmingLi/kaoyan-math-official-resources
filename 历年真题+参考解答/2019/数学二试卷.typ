#import "../template.typ": exam
#show: exam.with(year: 2019, subject: "二")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices.with(r-gap: 1.3em)
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)


= 一、选择题：第1—8小题，每小题4分，共32分. 下列每小题给出的四个选项中，只有一个选项是符合题目要求的.

#ezexam.question[
当 $x->0$ 时，若 $x-tan x$ 与 $x^k$ 是同阶无穷小量，则 $k=$（　）.
#choices([$1$.],[$2$.],[$3$.],[$4$.])
]

#ezexam.question[
曲线 $y=x sin x+2cos x$（$-pi/2<x<2pi$）的拐点是（　）.
#choices([$(0,2)$.],[$(pi,-2)$.],[$(pi/2,pi/2)$.],[$(3pi/2,-3pi/2)$.])
]

#ezexam.question[
下列反常积分发散的是（　）.
#choices([$integral_0^infinity x e^(-x)dif x$.],[$integral_0^infinity x e^(-x^2)dif x$.],[$integral_0^infinity (arctan x)/(1+x^2)dif x$.],[$integral_0^infinity x/(1+x^2)dif x$.])
]

#ezexam.question[
已知微分方程 $y''+a y'+b y=c e^x$ 的通解为 $y=(C_1+C_2 x)e^(-x)+e^x$，则 $a,b,c$ 依次为（　）.
#choices([$1,0,1$.],[$1,0,2$.],[$2,1,3$.],[$2,1,4$.])
]

#ezexam.question[
已知平面区域 $D={(x,y) | abs(x)+abs(y)<=pi/2}$，记 $I_1=integral.double_D sqrt(x^2+y^2)dif x dif y$，$I_2=integral.double_D sin sqrt(x^2+y^2)dif x dif y$，$I_3=integral.double_D (1-cos sqrt(x^2+y^2))dif x dif y$，则（　）.
#choices([$I_3<I_2<I_1$.],[$I_2<I_1<I_3$.],[$I_1<I_2<I_3$.],[$I_2<I_3<I_1$.])
]

#ezexam.question[
设函数 $f(x),g(x)$ 的二阶导数在 $x=a$ 处连续，则 $lim_(x->a)(f(x)-g(x))/(x-a)^2=0$ 是两条曲线 $y=f(x),y=g(x)$ 在 $x=a$ 对应的点处相切及曲率相等的（　）.
#choices([充分不必要条件.],[充分必要条件.],[必要不充分条件.],[既不充分又不必要条件.])
]

#ezexam.question[
设 $A$ 是4阶矩阵，$A^*$ 为 $A$ 的伴随矩阵. 若线性方程组 $A bold(x)=bold(0)$ 的基础解系中只有2个向量，则 $r(A^*)=$（　）.
#choices([$0$.],[$1$.],[$2$.],[$3$.])
]

#ezexam.question[
设 $A$ 是3阶实对称矩阵，$E$ 是3阶单位矩阵. 若 $A^2+A=2E$，且 $abs(A)=4$，则二次型 $bold(x)^T A bold(x)$ 的规范形为（　）.
#choices([$y_1^2+y_2^2+y_3^2$.],[$y_1^2+y_2^2-y_3^2$.],[$y_1^2-y_2^2-y_3^2$.],[$-y_1^2-y_2^2-y_3^2$.])
]


= 二、填空题：第9—14小题，每小题4分，共24分.

#ezexam.question[
求 $lim_(x->0)(x+2^x)^(2/x)=$#fillin[].
]

#ezexam.question[
曲线 $cases(x=t-sin t,y=1-cos t)$ 在 $t=3pi/2$ 对应点处的切线在 $y$ 轴上的截距为#fillin[].
]

#ezexam.question[
设函数 $f(u)$ 可导，$z=y f(y^2/x)$，则 $2x(partial z)/(partial x)+y(partial z)/(partial y)=$#fillin[].
]

#ezexam.question[
曲线 $y=ln cos x$（$0<=x<=pi/6$）的弧长为#fillin[].
]

#ezexam.question[
设函数 $f(x)=x integral_1^x (sin t^2)/t dif t$，则 $integral_0^1 f(x)dif x=$#fillin[].
]

#ezexam.question[
已知矩阵 $A=mat(1,-1,0,0;-2,1,-1,1;3,-2,2,-1;0,0,3,4)$，$A_(i j)$ 表示 $abs(A)$ 中 $(i,j)$ 元的代数余子式，则 $A_(1 1)-A_(1 2)=$#fillin[].
]


= 三、解答题：第15—23小题，共94分. 解答应写出文字说明、证明过程或演算步骤.

#ezexam.question[
（本题满分10分）已知函数 $f(x)=cases(x^(2x) & x>0,x e^x+1 & x<=0)$，求 $f'(x)$，并求 $f(x)$ 的极值.
]

#ezexam.question[
（本题满分10分）求不定积分 $integral (3x+6)/((x-1)^2(x^2+x+1))dif x$.
]

#ezexam.question[
（本题满分10分）设函数 $y(x)$ 是微分方程 $y'-x y=1/(2sqrt(x))e^(x^2/2)$ 满足条件 $y(1)=sqrt(e)$ 的特解.

（1）求 $y(x)$；

（2）设平面区域 $D={(x,y) | 1<=x<=2,0<=y<=y(x)}$，求 $D$ 绕 $x$ 轴旋转所得旋转体的体积.
]

#ezexam.question[
（本题满分10分）已知平面区域 $D={(x,y) | abs(x)<=y,(x^2+y^2)^3<=y^4}$，计算二重积分 $integral.double_D (x+y)/sqrt(x^2+y^2)dif x dif y$.
]

#ezexam.question[
（本题满分10分）设 $n$ 是正整数，记 $S_n$ 为曲线 $y=e^(-x)sin x$（$0<=x<=n pi$）与 $x$ 轴所围图形的面积. 求 $S_n$，并求 $lim_(n->infinity)S_n$.
]

#ezexam.question[
（本题满分11分）已知函数 $u(x,y)$ 满足 $2(partial^2 u)/(partial x^2)-2(partial^2 u)/(partial y^2)+3(partial u)/(partial x)+3(partial u)/(partial y)=0$，求 $a,b$ 的值，使在变换 $u(x,y)=v(x,y)e^(a x+b y)$ 之下，上述等式可化为函数 $v(x,y)$ 的不含一阶偏导数的等式.
]

#ezexam.question[
（本题满分11分）已知函数 $f(x)$ 在 $[0,1]$ 上具有二阶导数，且 $f(0)=0,f(1)=1$，$integral_0^1 f(x)dif x=1$. 证明：

（1）存在 $xi in (0,1)$，使得 $f'(xi)=0$；

（2）存在 $eta in (0,1)$，使得 $f''(eta)<-2$.
]

#ezexam.question[
（本题满分11分）已知向量组Ⅰ：$bold(alpha)_1=(1,1,4)^T$，$bold(alpha)_2=(1,0,4)^T$，$bold(alpha)_3=(1,2,a^2+3)^T$；向量组Ⅱ：$bold(beta)_1=(1,1,a+3)^T$，$bold(beta)_2=(0,2,1-a)^T$，$bold(beta)_3=(1,3,a^2+3)^T$. 若向量组Ⅰ与向量组Ⅱ等价，求 $a$ 的取值，并将 $bold(beta)_3$ 用 $bold(alpha)_1,bold(alpha)_2,bold(alpha)_3$ 线性表示.
]

#ezexam.question[
（本题满分11分）已知矩阵 $A=mat(-2,-2,1;2,x,-2;0,0,-2)$ 与 $B=mat(2,1,0;0,-1,0;0,0,y)$ 相似.

（1）求 $x,y$；

（2）求可逆矩阵 $P$ 使得 $P^(-1)A P=B$.
]

