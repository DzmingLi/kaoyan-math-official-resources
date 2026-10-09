#import "../template.typ": exam
#show: exam.with(year: 1989, subject: "三", title: "1989年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)

= 一、填空题（本题满分15分，每小题3分. 把答案填在题中横线上.）

#ezexam.question(label: n => [（1）])[
曲线 $y=x+sin^2 x$ 在点 $(pi/2,1+pi/2)$ 处的切线方程是 #fillin(len: 4em)[].
]

#ezexam.question(label: n => [（2）])[
幂级数 $sum_(n=0)^infinity x^n/sqrt(n+1)$ 的收敛域是 #fillin(len: 4em)[].
]

#ezexam.question(label: n => [（3）])[
齐次线性方程组
$ cases(lambda x_1+x_2+x_3=0,x_1+lambda x_2+x_3=0,x_1+x_2+x_3=0) $
只有零解，则 $lambda$ 应满足的条件是 #fillin(len: 4em)[].
]

#ezexam.question(label: n => [（4）])[
设随机变量 $X$ 的分布函数为
$ F(x)=cases(0 & x<0,A sin x & 0<=x<=pi/2,1 & x>pi/2), $
则 $P{abs(X)<pi/6}=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [（5）])[
设随机变量 $X$ 的数学期望 $E(X)=mu$，方差 $D(X)=sigma^2$，则由切比雪夫（Chebyshev）不等式，有 $P{abs(X-mu)>=3sigma}<=$ #fillin(len: 4em)[].
]

= 二、选择题（本题满分15分，每小题3分. 每小题给出的四个选项中，只有一项符合题目要求，把所选项前的字母填在题后的括号内.）

#ezexam.question(label: n => [（1）])[
设 $f(x)=2^x+3^x-2$，则当 $x->0$ 时（　）.
#choices([$f(x)$ 与 $x$ 是等价无穷小量.],[$f(x)$ 与 $x$ 是同阶但非等价无穷小量.],[$f(x)$ 是比 $x$ 较高阶的无穷小量.],[$f(x)$ 是比 $x$ 较低阶的无穷小量.])
]

#ezexam.question(label: n => [（2）])[
在下列等式中，正确的结果是（　）.
#choices([$integral f'(x)dif x=f(x)$],[$integral dif f(x)=f(x)$],[$(dif)/(dif x)integral f(x)dif x=f(x)$],[$dif integral f(x)dif x=f(x)$])
]

#ezexam.question(label: n => [（3）])[
设 $A$ 为 $n$ 阶方阵且 $abs(A)=0$，则（　）.
#choices([$A$ 中必有两行（列）的元素对应成比例.],[$A$ 中任意一行（列）向量是其余各行（列）向量的线性组合.],[$A$ 中必有一行（列）向量是其余各行（列）向量的线性组合.],[$A$ 中至少有一行（列）的元素全为0.])
]

#ezexam.question(label: n => [（4）])[
设 $A$ 和 $B$ 均为 $n times n$ 矩阵，则必有（　）.
#choices([$abs(A+B)=abs(A)+abs(B)$],[$A B=B A$],[$abs(A B)=abs(B A)$],[$(A+B)^(-1)=A^(-1)+B^(-1)$])
]

#ezexam.question(label: n => [（5）])[
以 $A$ 表示事件“甲种产品畅销，乙种产品滞销”，则其对立事件 $overline(A)$ 为（　）.
#choices([“甲种产品滞销，乙种产品畅销”.],[“甲、乙两种产品均畅销”.],[“甲种产品滞销”.],[“甲种产品滞销或乙种产品畅销”.])
]

= 三、计算题（本题满分15分，每小题5分.）

#ezexam.question(label: n => [（1）])[
求极限 $lim_(x->infinity)(sin(1/x)+cos(1/x))^x$.
]

#ezexam.question(label: n => [（2）])[
已知 $z=f(u,v),u=x+y,v=x y$，且 $f(u,v)$ 的二阶偏导数都连续.求 $(partial^2 z)/(partial x partial y)$.
]

#ezexam.question(label: n => [（3）])[
求微分方程 $y''+5y'+6y=2e^(-x)$ 的通解.
]

#ezexam.question(label: n => [四、])[
（本题满分9分）

设某厂家打算生产一批商品投放市场.已知该商品的需求函数为 $P=P(x)=10e^(-x/2)$，且最大需求量为6，其中 $x$ 表示需求量，$P$ 表示价格.

（1）求该商品的收益函数和边际收益函数.（2分）

（2）求使收益最大时的产量、最大收益和相应的价格.（4分）

（3）画出收益函数的图形.（3分）
]

#ezexam.question(label: n => [五、])[
（本题满分9分）

已知函数
$ f(x)=cases(x & 0<=x<=1,2-x & 1<x<=2), $
试计算下列各题.

（1）$S_0=integral_0^2 f(x)e^(-x)dif x$；（4分）

（2）$S_1=integral_2^4 f(x-2)e^(-x)dif x$；（2分）

（3）$S_n=integral_(2n)^(2n+2)f(x-2n)e^(-x)dif x (n=2,3,dots)$；（1分）

（4）$S=sum_(n=0)^infinity S_n$.（2分）
]

#ezexam.question(label: n => [六、])[
（本题满分6分）

假设函数 $f(x)$ 在 $[a,b]$ 上连续，在 $(a,b)$ 内可导，且 $f'(x)<=0$.记
$ F(x)=1/(x-a)integral_a^x f(t)dif t $
证明在 $(a,b)$ 内，$F'(x)<=0$.
]

#ezexam.question(label: n => [七、])[
（本题满分5分）

已知 $X=A X+B$，其中
$ A=mat(0,1,0;-1,1,1;-1,0,-1),quad B=mat(1,-1;2,0;5,-3), $
求矩阵 $X$.
]

#ezexam.question(label: n => [八、])[
（本题满分6分）

设 $alpha_1=(1,1,1),alpha_2=(1,2,3),alpha_3=(1,3,t)$.

（1）问当 $t$ 为何值时，向量组 $alpha_1,alpha_2,alpha_3$ 线性无关？（3分）

（2）问当 $t$ 为何值时，向量组 $alpha_1,alpha_2,alpha_3$ 线性相关？（1分）

（3）当向量组 $alpha_1,alpha_2,alpha_3$ 线性相关时，将 $alpha_3$ 表示为 $alpha_1$ 和 $alpha_2$ 的线性组合.（2分）
]

#ezexam.question(label: n => [九、])[
（本题满分5分）

设 $A=mat(-1,2,2;2,-1,-2;2,-2,-1)$.

（1）试求矩阵 $A$ 的特征值；（2分）

（2）利用（1）小题的结果，求矩阵 $E+A^(-1)$ 的特征值，其中 $E$ 是三阶单位矩阵.（3分）
]

#ezexam.question(label: n => [十、])[
（本题满分7分）

已知随机变量 $X$ 和 $Y$ 的联合密度为
$ f(x,y)=cases(e^(-(x+y)) & (0<x<+infinity,0<y<+infinity),0 & "其他"), $
试求：（1）$P{X<Y}$；（5分）

（2）$E(X Y)$.（2分）
]

#ezexam.question(label: n => [十一、])[
（本题满分8分）

设随机变量 $X$ 在 $[2,5]$ 上服从均匀分布，现在对 $X$ 进行三次独立观测，试求至少有两次观测值大于3的概率.
]
