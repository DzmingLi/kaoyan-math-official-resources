#import "../template.typ": exam
#show: exam.with(year: 1992, subject: "一", title: "1992年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)

= 一、填空题（本题共5小题，每小题3分，满分15分. 把答案填在题中横线上.）

#ezexam.question(label: n => [（1）])[
设函数 $y=y(x)$ 由方程 $e^(x+y)+cos(x y)=0$ 确定，则 $(dif y)/(dif x)=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [（2）])[
函数 $u=ln(x^2+y^2+z^2)$ 在点 $M(1,2,-2)$ 处的梯度 $op("grad")u|_M=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [（3）])[
设 $f(x)=cases(-1 & -pi<x<=0,1+x^2 & 0<x<=pi)$，则其以 $2pi$ 为周期的傅里叶级数在点 $x=pi$ 处收敛于 #fillin(len: 4em)[].
]

#ezexam.question(label: n => [（4）])[
微分方程 $y'+y tan x=cos x$ 的通解为 $y=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [（5）])[
设 $A=mat(a_1 b_1,a_1 b_2,dots,a_1 b_n;a_2 b_1,a_2 b_2,dots,a_2 b_n;dots.v,dots.v,,dots.v;a_n b_1,a_n b_2,dots,a_n b_n)$，其中 $a_i!=0,b_i!=0 (i=1,2,dots,n)$.则矩阵 $A$ 的秩 $r(A)=$ #fillin(len: 4em)[].
]

= 二、选择题（本题共5小题，每小题3分，满分15分. 在每小题给出的四个选项中，只有一项符合题目要求，把所选项前的字母填在题后的括号内.）

#ezexam.question(label: n => [（1）])[
当 $x->1$ 时，函数 $(x^2-1)/(x-1)e^(1/(x-1))$ 的极限（　）.
#choices([等于2.],[等于0.],[为 $infinity$.],[不存在但不为 $infinity$.])
]

#ezexam.question(label: n => [（2）])[
级数 $sum_(n=1)^infinity (-1)^n(1-cos(alpha/n))$（常数 $alpha>0$）（　）.
#choices([发散.],[条件收敛.],[绝对收敛.],[收敛性与 $alpha$ 有关.])
]

#ezexam.question(label: n => [（3）])[
在曲线 $x=t,y=-t^2,z=t^3$ 的所有切线中，与平面 $x+2y+z=4$ 平行的切线（　）.
#choices([只有1条.],[只有2条.],[至少有3条.],[不存在.])
]

#ezexam.question(label: n => [（4）])[
设 $f(x)=3x^3+x^2 abs(x)$，则使 $f^((n))(0)$ 存在的最高阶数 $n$ 为（　）.
#choices([0],[1],[2],[3])
]

#ezexam.question(label: n => [（5）])[
在使 $xi_1=mat(1;0;2),xi_2=mat(0;1;-1)$ 都是线性方程组 $A x=0$ 的解，只要系数矩阵 $A$ 为（　）.
#choices([$mat(-1,1,2)$],[$mat(2,0,-1;0,1,1)$],[$mat(-1,0,2;0,1,-1)$],[$mat(4,-2,-2;0,1,1)$])
]

= 三、（本题共3小题，每小题5分，满分15分.）

#ezexam.question(label: n => [（1）])[
求 $lim_(x->0)(e^x-sin x-1)/(1-sqrt(1-x^2))$.
]

#ezexam.question(label: n => [（2）])[
设 $z=f(e^x sin y,x^2+y^2)$，其中 $f$ 具有二阶连续偏导数，求 $(partial^2 z)/(partial x partial y)$.
]

#ezexam.question(label: n => [（3）])[
设 $f(x)=cases(1+x^2 & x<=0,e^(-x) & x>0)$，求 $integral_1^3 f(x-2)dif x$.
]

#ezexam.question(label: n => [四、])[
（本题满分6分）

求微分方程 $y''+2y'-3y=e^(-3x)$ 的通解.
]

#ezexam.question(label: n => [五、])[
（本题满分8分）

计算曲面积分 $integral.double_Sigma(x^3+a z^2)dif y dif z+(y^3+a x^2)dif z dif x+(z^3+a y^2)dif x dif y$，其中 $Sigma$ 为上半球面 $z=sqrt(a^2-x^2-y^2)$ 的上侧.
]

#ezexam.question(label: n => [六、])[
（本题满分7分）

设 $f''(x)<0,f(0)=0$，证明对任何 $x_1>0,x_2>0$，有 $f(x_1+x_2)<f(x_1)+f(x_2)$.
]

#ezexam.question(label: n => [七、])[
（本题满分8分）

在变力 $bold(F)=y z bold(i)+z x bold(j)+x y bold(k)$ 的作用下，质点由原点沿直线运动到椭球面 $x^2/a^2+y^2/b^2+z^2/c^2=1$ 第一卦限的点 $M(xi,eta,zeta)$，问当 $xi,eta,zeta$ 取何值时，力 $bold(F)$ 所作的功 $W$ 最大？并求出 $W$ 的最大值.
]

#ezexam.question(label: n => [八、])[
（本题满分7分）

设向量组 $alpha_1,alpha_2,alpha_3$ 线性相关；向量组 $alpha_2,alpha_3,alpha_4$ 线性无关，问：

（1）$alpha_1$ 能否由 $alpha_2,alpha_3$ 线性表出？证明你的结论.

（2）$alpha_4$ 能否由 $alpha_1,alpha_2,alpha_3$ 线性表出？证明你的结论.
]

#ezexam.question(label: n => [九、])[
（本题满分7分）

设3阶矩阵 $A$ 的特征值为 $lambda_1=1,lambda_2=2,lambda_3=3$，对应的特征向量依次为 $xi_1=mat(1;1;1),xi_2=mat(1;2;4),xi_3=mat(1;3;9)$，又向量 $beta=mat(1;2;3)$.

（1）将 $beta$ 用 $xi_1,xi_2,xi_3$ 线性表出.

（2）求 $A^n beta$（$n$ 为自然数）.
]

= 十、填空题（本题满分6分，每小题3分.）

#ezexam.question(label: n => [（1）])[
已知 $P(A)=P(B)=P(C)=1/4,P(A B)=0,P(A C)=P(B C)=1/16$，则事件 $A,B,C$ 全不发生的概率为 #fillin(len: 4em)[].
]

#ezexam.question(label: n => [（2）])[
设随机变量 $X$ 服从参数为1的指数分布，则数学期望 $E(X+e^(-2X))=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [十一、])[
（本题满分6分）

设随机变量 $X$ 与 $Y$ 独立，$X$ 服从正态分布 $N(mu,sigma^2)$，$Y$ 服从 $[-pi,pi]$ 上的均匀分布，试求 $Z=X+Y$ 的概率分布密度（计算结果用标准正态分布函数 $Phi(x)$ 表示，其中 $Phi(x)=1/sqrt(2pi)integral_(-infinity)^x e^(-t^2/2)dif t$）.
]
