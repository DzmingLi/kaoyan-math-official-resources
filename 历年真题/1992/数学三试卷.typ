#import "../template.typ": exam
#show: exam.with(year: 1992, subject: "三", title: "1992年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)

= 一、填空题（本题共5小题，每小题3分，满分15分. 把答案填在题中横线上.）

#ezexam.question(label: n => [（1）])[
设商品的需求函数为 $Q=100-5P$，其中 $Q,P$ 分别表示需求量和价格，如果商品需求弹性的绝对值大于1，则商品价格的取值范围是 #fillin(len: 4em)[].
]

#ezexam.question(label: n => [（2）])[
级数 $sum_(n=1)^infinity (x-2)^(2n)/(n 4^n)$ 的收敛域为 #fillin(len: 4em)[].
]

#ezexam.question(label: n => [（3）])[
交换积分次序 $integral_0^1 dif y integral_(sqrt(y))^(sqrt(2-y^2)) f(x,y)dif x=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [（4）])[
设 $A$ 为 $m$ 阶方阵，$B$ 为 $n$ 阶方阵，且 $abs(A)=a,abs(B)=b,C=mat(O,A;B,O)$，则 $abs(C)=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [（5）])[
将 C、C、E、E、I、N、S 等七个字母随机地排成一行，那么，恰好排成英语单词 SCIENCE 的概率为 #fillin(len: 4em)[].
]

= 二、选择题（本题共5小题，每小题3分，满分15分. 每小题给出的四个选项中，只有一项符合题目要求，把所选项前的字母填在题后的括号内.）

#ezexam.question(label: n => [（1）])[
设 $F(x)=x^2/(x-a)integral_a^x f(t)dif t$，其中 $f(x)$ 为连续函数，则 $lim_(x->a)F(x)$ 等于（　）.
#choices([$a^2$],[$a^2 f(a)$],[$0$],[不存在.])
]

#ezexam.question(label: n => [（2）])[
当 $x->0$ 时，下列四个无穷小量中，哪一个是比其他三个更高阶的无穷小量？（　）.
#choices([$x^2$],[$1-cos x$],[$sqrt(1-x^2)-1$],[$x-tan x$])
]

#ezexam.question(label: n => [（3）])[
设 $A$ 为 $m times n$ 矩阵，齐次线性方程组 $A x=0$ 仅有零解的充分条件是（　）.
#choices([$A$ 的列向量线性无关.],[$A$ 的列向量线性相关.],[$A$ 的行向量线性无关.],[$A$ 的行向量线性相关.])
]

#ezexam.question(label: n => [（4）])[
设当事件 $A$ 与 $B$ 同时发生时，事件 $C$ 必发生，则（　）.
#choices([$P(C)<=P(A)+P(B)-1$],[$P(C)>=P(A)+P(B)-1$],[$P(C)=P(A B)$],[$P(C)=P(A union B)$])
]

#ezexam.question(label: n => [（5）])[
设 $n$ 个随机变量 $X_1,X_2,dots,X_n$ 独立同分布，$D(X_1)=sigma^2,overline(X)=1/n sum_(i=1)^n X_i,S^2=1/(n-1)sum_(i=1)^n (X_i-overline(X))^2$，则（　）.
#choices([$S$ 是 $sigma$ 的无偏估计量.],[$S$ 是 $sigma$ 的最大似然估计量.],[$S$ 是 $sigma$ 的相合估计量（即一致估计量）.],[$S$ 与 $overline(X)$ 相互独立.])
]

#ezexam.question(label: n => [三、])[
（本题满分5分）

设函数 $f(x)=cases((ln cos(x-1))/(1-sin(pi/2 x)) & x!=1,1 & x=1)$，问函数 $f(x)$ 在 $x=1$ 处是否连续？若不连续，修改函数在 $x=1$ 处的定义使之连续.
]

#ezexam.question(label: n => [四、])[
（本题满分5分）

计算 $I=integral (op("arccot")(e^x))/e^x dif x$.
]

#ezexam.question(label: n => [五、])[
（本题满分5分）

设 $z=sin(x y)+phi(x,x/y)$，求 $(partial^2 z)/(partial x partial y)$，其中 $phi(u,v)$ 有二阶偏导数.
]

#ezexam.question(label: n => [六、])[
（本题满分5分）

求连续函数 $f(x)$，使它满足 $f(x)+2integral_0^x f(t)dif t=x^2$.
]

#ezexam.question(label: n => [七、])[
（本题满分6分）

求证：当 $x>=1$ 时，$arctan x-1/2 arccos((2x)/(1+x^2))=pi/4$.
]

#ezexam.question(label: n => [八、])[
（本题满分9分）

设曲线方程为 $y=e^(-x) (x>=0)$.

（1）把曲线 $y=e^(-x)$，$x$ 轴，$y$ 轴和直线 $x=xi (xi>0)$ 所围成平面图形绕 $x$ 轴旋转一周，得一旋转体，求此旋转体体积 $V(xi)$；求满足 $V(a)=1/2 lim_(xi->+infinity)V(xi)$ 的 $a$.

（2）在此曲线上找一点，使过该点的切线与两个坐标轴所夹平面图形的面积最大，并求出该面积.
]

#ezexam.question(label: n => [九、])[
（本题满分7分）

设矩阵 $A$ 与 $B$ 相似，其中
$ A=mat(-2,0,0;2,x,2;3,1,1),quad B=mat(-1,0,0;0,2,0;0,0,y). $
（1）求 $x$ 和 $y$ 的值；

（2）求可逆矩阵 $P$，使得 $P^(-1)A P=B$.
]

#ezexam.question(label: n => [十、])[
（本题满分6分）

已知三阶矩阵 $B!=O$，且 $B$ 的每一个向量都是以下方程组的解：
$ cases(x_1+2x_2-2x_3=0,2x_1-x_2+lambda x_3=0,3x_1+x_2-x_3=0) $
（1）求 $lambda$ 的值；

（2）证明 $abs(B)=0$.
]

#ezexam.question(label: n => [十一、])[
（本题满分6分）

设 $A,B$ 分别为 $m,n$ 阶正定矩阵，试判定分块矩阵 $C=mat(A,O;O,B)$ 是否正定矩阵.
]

#ezexam.question(label: n => [十二、])[
（本题满分7分）

假设测量的随机误差 $X tilde N(0,10^2)$，试求100次独立重复测量中，至少有三次测量误差的绝对值大于19.6的概率 $alpha$，并利用泊松分布求出 $alpha$ 的近似值（要求小数点后取两位有效数字）.

［附表］
#table(columns: 9, stroke: 0.4pt, [$lambda$], [1], [2], [3], [4], [5], [6], [7], [$dots$], [$e^(-lambda)$], [0.368], [0.135], [0.050], [0.018], [0.007], [0.002], [0.001], [$dots$])
]

#ezexam.question(label: n => [十三、])[
（本题满分5分）

一台设备由三大部分构成，在设备运转中各部件需要调整的概率相应为0.10，0.20和0.30.假设各部件的状态相互独立，以 $X$ 表示同时需要调整的部件数，试求 $X$ 的数学期望 $E(X)$ 和方差 $D(X)$.
]

#ezexam.question(label: n => [十四、])[
（本题满分4分）

设二维随机变量 $(X,Y)$ 的概率密度为
$ f(x,y)=cases(e^(-y) & 0<x<y,0 & "其他"). $
（1）求随机变量 $X$ 的密度 $f_X(x)$；

（2）求概率 $P{X+Y<=1}$.
]
