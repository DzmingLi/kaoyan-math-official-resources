#import "../template.typ": exam
#show: exam.with(year: 1992, subject: "四", title: "1992年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)

= 一、填空题（本题共5小题，每小题3分，满分15分. 把答案填在题中横线上.）

#ezexam.question(label: n => [（1）])[
设 $f(t)=lim_(x->infinity)t((x+t)/(x-t))^x$，则 $f'(t)=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [（2）])[
设商品的需求函数为 $Q=100-5P$，其中 $Q,P$ 分别表示需求量和价格，如果商品需求弹性的绝对值大于1，则商品价格的取值范围是 #fillin(len: 4em)[].
]

#ezexam.question(label: n => [（3）])[
已知 $f(x)=sin x,f(phi(x))=1-x^2$，则 $phi(x)=$ #fillin(len: 4em)[] 的定义域为 #fillin(len: 4em)[].
]

#ezexam.question(label: n => [（4）])[
矩阵 $A=mat(1,1,1,1;1,1,1,1;1,1,1,1;1,1,1,1)$ 的非零特征值是 #fillin(len: 4em)[].
]

#ezexam.question(label: n => [（5）])[
设对于事件 $A,B,C$，有 $P(A)=P(B)=P(C)=1/4,P(A B)=P(B C)=0,P(A C)=1/8$，则 $A,B,C$ 三个事件中至少出现一个的概率为 #fillin(len: 4em)[].
]

= 二、选择题（本题共5小题，每小题3分，满分15分. 在每小题给出的四个选项中，只有一项符合题目要求，把所选项前的字母填在题后的括号内.）

#ezexam.question(label: n => [（1）])[
设 $F(x)=x^2/(x-a)integral_a^x f(t)dif t$，其中 $f(x)$ 为连续函数，则 $lim_(x->a)F(x)$ 等于（　）.
#choices([$a^2$],[$a^2 f(a)$],[$0$],[不存在.])
]

#ezexam.question(label: n => [（2）])[
当 $x->0$ 时，下列四个无穷小量中，哪一个是比其他三个更高阶的无穷小量？（　）.
#choices([$x^2$],[$1-cos x$],[$sqrt(1-x^2)-1$],[$x-sin x$])
]

#ezexam.question(label: n => [（3）])[
设 $A,B,A+B,A^(-1)+B^(-1)$ 均为 $n$ 阶可逆矩阵，则 $(A^(-1)+B^(-1))^(-1)$ 等于（　）.
#choices([$A^(-1)+B^(-1)$],[$A+B$],[$A(A+B)^(-1)B$],[$(A+B)^(-1)$])
]

#ezexam.question(label: n => [（4）])[
设 $alpha_1,alpha_2,dots,alpha_m$ 均为 $n$ 维向量，那么，下列结论正确的是（　）.
#choices([若 $k_1 alpha_1+k_2 alpha_2+dots+k_m alpha_m=0$，则 $alpha_1,alpha_2,dots,alpha_m$ 线性相关.],[若对任意一组不全为零的数 $k_1,k_2,dots,k_m$ 都有 $k_1 alpha_1+k_2 alpha_2+dots+k_m alpha_m!=0$，则 $alpha_1,alpha_2,dots,alpha_m$ 线性无关.],[若 $alpha_1,alpha_2,dots,alpha_m$ 线性相关，则对任意一组不全为零的数 $k_1,k_2,dots,k_m$ 都有 $k_1 alpha_1+k_2 alpha_2+dots+k_m alpha_m=0$.],[若 $0alpha_1+0alpha_2+dots+0alpha_m=0$，则 $alpha_1,alpha_2,dots,alpha_m$ 线性无关.])
]

#ezexam.question(label: n => [（5）])[
设当事件 $A$ 与 $B$ 同时发生时，事件 $C$ 也发生，则（　）.
#choices([$P(C)=P(A B)$],[$P(C)=P(A union B)$],[$P(C)<=P(A)+P(B)-1$],[$P(C)>=P(A)+P(B)-1$])
]

#ezexam.question(label: n => [三、])[
（本题满分5分）

求极限 $lim_(x->1)(ln cos(x-1))/(1-sin(pi/2 x))$.
]

#ezexam.question(label: n => [四、])[
（本题满分5分）

计算 $I=integral (arctan(e^x))/e^x dif x$.
]

#ezexam.question(label: n => [五、])[
（本题满分5分）

求连续函数 $f(x)$ 使它满足 $integral_0^1 f(t x)dif t=f(x)+x sin x$.
]

#ezexam.question(label: n => [六、])[
（本题满分5分）

设 $z=sin(x y)+phi(x,x/y)$，求 $(partial^2 z)/(partial x partial y)$，其中 $phi(u,v)$ 有二阶偏导数.
]

#ezexam.question(label: n => [七、])[
（本题满分6分）

设生产某产品的固定成本为10，而当产量为 $x$ 时的边际成本函数为
$ M C=40-20x+3x^2 $
边际收入函数为
$ M R=32-10x. $
试求：（1）总利润函数；

（2）使总利润最大的产量.
]

#ezexam.question(label: n => [八、])[
（本题满分6分）

求证：方程 $x+p+q cos x=0$ 恰有一个实根，其中 $p,q$ 为常数，且 $0<q<1$.
]

#ezexam.question(label: n => [九、])[
（本题满分8分）

给定曲线 $y=1/x^2$.

（1）求曲线在横坐标为 $x_0$ 的点处的切线方程；

（2）求曲线的切线被两坐标轴所截线段的最短长度.
]

#ezexam.question(label: n => [十、])[
（本题满分5分）

设矩阵 $A=mat(1,0,1;0,2,0;1,0,1)$，矩阵 $X$ 满足 $A X+E=A^2+X$，其中 $E$ 为三阶单位矩阵，试求出矩阵 $X$.
]

#ezexam.question(label: n => [十一、])[
（本题满分5分）

设线性方程组
$ cases(x_1+2x_2-2x_3=0,2x_1-x_2+lambda x_3=0,3x_1+x_2-x_3=0) $
的系数矩阵为 $A$，三阶矩阵 $B!=O$，且 $A B=O$.试求 $lambda$ 的值.
]

#ezexam.question(label: n => [十二、])[
（本题满分6分）

已知实矩阵 $A=(a_(i j))_(3 times 3)$ 满足条件：

（1）$a_(i j)=A_(i j) (i,j=1,2,3)$，其中 $A_(i j)$ 是 $a_(i j)$ 的代数余子式；

（2）$a_(1 1)!=0$.

计算行列式 $abs(A)$.
]

#ezexam.question(label: n => [十三、])[
（本题满分7分）

假设测量的随机误差 $X tilde N(0,10^2)$，试求100次独立重复测量中，至少有三次测量误差的绝对值大于19.6的概率 $alpha$，并利用泊松分布求出 $alpha$ 的近似值（要求小数点后取两位有效数字）.

［附表］
#table(columns: 9, stroke: 0.4pt, [$lambda$], [1], [2], [3], [4], [5], [6], [7], [$dots$], [$e^(-lambda)$], [0.368], [0.135], [0.050], [0.018], [0.007], [0.002], [0.001], [$dots$])
]

#ezexam.question(label: n => [十四、])[
（本题满分7分）

一台设备由三大部分构成，在设备运转中各部件需要调整的概率相应为0.10，0.20和0.30.假设各部件的状态相互独立，以 $X$ 表示同时需要调整的部件数，试求 $X$ 的概率分布、数学期望 $E(X)$ 和方差 $D(X)$.
]
