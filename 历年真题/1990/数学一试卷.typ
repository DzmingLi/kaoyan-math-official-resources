#import "../template.typ": exam
#show: exam.with(year: 1990, subject: "一", title: "1990年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)

= 一、填空题（本题满分15分，每小题3分.）

#ezexam.question(label: n => [（1）])[
过点 $M(1,2,-1)$ 且与直线 $cases(x=-t+2,y=3t-4,z=t-1)$ 垂直的平面方程是 #fillin(len: 4em)[].
]

#ezexam.question(label: n => [（2）])[
设 $a$ 为非零常数，则 $lim_(x->infinity)((x+a)/(x-a))^x=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [（3）])[
设函数 $f(x)=cases(1 & abs(x)<=1,0 & abs(x)>1)$，则 $f(f(x))=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [（4）])[
积分 $integral_0^2 dif x integral_x^2 e^(-y^2)dif y$ 的值等于 #fillin(len: 4em)[].
]

#ezexam.question(label: n => [（5）])[
已知向量组 $alpha_1=(1,2,3,4),alpha_2=(2,3,4,5),alpha_3=(3,4,5,6),alpha_4=(4,5,6,7)$，则该向量组的秩是 #fillin(len: 4em)[].
]

= 二、选择题（本题满分15分，每小题3分.）

#ezexam.question(label: n => [（1）])[
设 $f(x)$ 是连续函数，且 $F(x)=integral_x^(e^(-x)) f(t)dif t$，则 $F'(x)$ 等于（　）.
#choices([$-e^(-x)f(e^(-x))-f(x)$],[$-e^(-x)f(e^(-x))+f(x)$],[$e^(-x)f(e^(-x))-f(x)$],[$e^(-x)f(e^(-x))+f(x)$])
]

#ezexam.question(label: n => [（2）])[
已知函数 $f(x)$ 具有任意阶导数，且 $f'(x)=[f(x)]^2$，则当 $n$ 为大于2的正整数时，$f(x)$ 的 $n$ 阶导数 $f^((n))(x)$ 是（　）.
#choices([$n![f(x)]^(n+1)$],[$n[f(x)]^(n+1)$],[$[f(x)]^(2n)$],[$n![f(x)]^(2n)$])
]

#ezexam.question(label: n => [（3）])[
设 $a$ 为常数，则级数 $sum_(n=1)^infinity ((sin(n a))/n^2-1/sqrt(n))$（　）.
#choices([绝对收敛.],[条件收敛.],[发散.],[收敛性与 $a$ 的取值有关.])
]

#ezexam.question(label: n => [（4）])[
已知 $f(x)$ 在 $x=0$ 的某个邻域内连续，且 $f(0)=0,lim_(x->0)f(x)/(1-cos x)=2$，则在点 $x=0$ 处 $f(x)$（　）.
#choices([不可导.],[可导，且 $f'(0)!=0$.],[取得极大值.],[取得极小值.])
]

#ezexam.question(label: n => [（5）])[
已知 $beta_1,beta_2$ 是非齐次线性方程组 $A x=b$ 的两个不同的解，$alpha_1,alpha_2$ 是对应齐次线性方程组 $A x=0$ 的基础解系，$k_1,k_2$ 为任意常数，则方程组 $A x=b$ 的通解（一般解）必是（　）.
#choices([$k_1 alpha_1+k_2(alpha_1+alpha_2)+(beta_1-beta_2)/2$],[$k_1 alpha_1+k_2(alpha_1-alpha_2)+(beta_1+beta_2)/2$],[$k_1 alpha_1+k_2(beta_1+beta_2)+(beta_1-beta_2)/2$],[$k_1 alpha_1+k_2(beta_1-beta_2)+(beta_1+beta_2)/2$])
]

= 三、（本题满分15分，每小题5分.）

#ezexam.question(label: n => [（1）])[
求 $integral_0^1 (ln(1+x))/(2-x)^2 dif x$.
]

#ezexam.question(label: n => [（2）])[
设 $z=f(2x-y,y sin x)$，其中 $f(u,v)$ 具有连续的二阶偏导数，求 $(partial^2 z)/(partial x partial y)$.
]

#ezexam.question(label: n => [（3）])[
求微分方程 $y''+4y'+4y=e^(-2x)$ 的通解（一般解）.
]

#ezexam.question(label: n => [四、])[
（本题满分6分）

求幂级数 $sum_(n=0)^infinity (2n+1)x^n$ 的收敛域，并求其和函数.
]

#ezexam.question(label: n => [五、])[
（本题满分8分）

求曲面积分
$ I=integral.double_S y z dif z dif x+2dif x dif y $
其中 $S$ 是球面 $x^2+y^2+z^2=4$ 外侧在 $z>=0$ 的部分.
]

#ezexam.question(label: n => [六、])[
（本题满分7分）

设不恒为常数的函数 $f(x)$ 在闭区间 $[a,b]$ 上连续，在开区间 $(a,b)$ 内可导，且 $f(a)=f(b)$.证明在 $(a,b)$ 内至少存在一点 $xi$，使得 $f'(xi)>0$.
]

#ezexam.question(label: n => [七、])[
（本题满分6分）

设四阶矩阵
$ B=mat(1,-1,0,0;0,1,-1,0;0,0,1,-1;0,0,0,1),quad C=mat(2,1,3,4;0,2,1,3;0,0,2,1;0,0,0,2) $
且矩阵 $A$ 满足关系式 $A(E-C^(-1)B)^T C^T=E$，其中 $E$ 为四阶单位矩阵，$C^(-1)$ 表示 $C$ 的逆矩阵，$C^T$ 表示 $C$ 的转置矩阵.将上述关系式化简并求矩阵 $A$.
]

#ezexam.question(label: n => [八、])[
（本题满分8分）

求一个正交变换化二次型 $f=x_1^2+4x_2^2+4x_3^2-4x_1 x_2+4x_1 x_3-8x_2 x_3$ 成标准形.
]

#ezexam.question(label: n => [九、])[
（本题满分8分）

质点 $P$ 沿着以 $A B$ 为直径的半圆周，从点 $A(1,2)$ 运动到点 $B(3,4)$ 过程中受变力 $bold(F)$ 作用（见图）.$bold(F)$ 的大小等于点 $P$ 与原点 $O$ 之间的距离，其方向垂直于线段 $O P$ 且与 $y$ 轴正向的夹角小于 $pi/2$.求变力 $bold(F)$ 对质点 $P$ 所作的功.
#align(center)[#image("1990-数学一-变力.svg", width: 48mm)]
]

= 十、填空题（本题满分6分，每小题2分.）

#ezexam.question(label: n => [（1）])[
已知随机变量 $X$ 的概率密度函数
$ f(x)=1/2 e^(-abs(x)),-infinity<x<+infinity $
则 $X$ 的概率分布函数 $F(x)=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [（2）])[
设随机事件 $A,B$ 及其和事件 $A union B$ 的概率分别是0.4，0.3和0.6，若 $overline(B)$ 表示 $B$ 的对立事件，那么积事件 $A overline(B)$ 的概率 $P(A overline(B))=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [（3）])[
已知离散型随机变量 $X$ 服从参数为2的泊松（Poisson）分布，即 $P{X=k}=(2^k e^(-2))/(k!),k=0,1,2,dots$，则随机变量 $Z=3X-2$ 的数学期望 $E(Z)=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [十一、])[
（本题满分6分）

设二维随机变量 $(X,Y)$ 在区域：$0<x<1,abs(y)<x$ 内服从均匀分布，求关于 $X$ 的边缘概率密度函数及随机变量 $Z=2X+1$ 的方差 $D(Z)$.
]
