#import "../template.typ": exam
#show: exam.with(year: 1989, subject: "四", title: "1989年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)

= 一、填空题（本题满分15分，每小题3分.）

#ezexam.question(label: n => [（1）])[
曲线 $y=x+sin^2 x$ 在点 $(pi/2,1+pi/2)$ 处的切线方程是 #fillin(len: 4em)[].
]

#ezexam.question(label: n => [（2）])[
某商品的需求量 $Q$ 与价格 $p$ 的函数关系为 $Q=a p^b$，其中 $a$ 和 $b$ 为常数，且 $a!=0$，则需求量对价格 $p$ 的弹性是 #fillin(len: 4em)[].
]

#ezexam.question(label: n => [（3）])[
行列式 $abs(mat(1,-1,1,x-1;1,-1,x+1,-1;1,x-1,1,-1;x+1,-1,1,-1))=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [（4）])[
设随机变量 $X_1,X_2,X_3$ 相互独立，其中 $X_1$ 在 $[0,6]$ 上服从均匀分布，$X_2$ 服从正态分布 $N(0,2^2)$，$X_3$ 服从参数为 $lambda=3$ 的泊松分布，记 $Y=X_1-2X_2+3X_3$，则 $D(Y)=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [（5）])[
设随机变量 $X$ 的分布函数为
$ F(x)=cases(0 & x<0,A sin x & 0<=x<=pi/2,1 & x>pi/2), $
则 $P{abs(X)<pi/6}=$ #fillin(len: 4em)[].
]

= 二、选择题（本题满分15分，每小题3分.）

#ezexam.question(label: n => [（1）])[
设 $f(x)=2^x+3^x-2$，则当 $x->0$ 时（　）.
#choices([$f(x)$ 与 $x$ 是等价无穷小量.],[$f(x)$ 与 $x$ 是同阶但非等价无穷小量.],[$f(x)$ 是比 $x$ 较高阶的无穷小量.],[$f(x)$ 是比 $x$ 较低阶的无穷小量.])
]

#ezexam.question(label: n => [（2）])[
在下列等式中，正确的结果是（　）.
#choices([$(dif)/(dif x)integral f(x)dif x=f(x)$],[$integral f'(x)dif x=f(x)$],[$integral dif f(x)=f(x)$],[$dif integral f(x)dif x=f(x)$])
]

#ezexam.question(label: n => [（3）])[
设 $A$ 为 $n$ 阶方阵且 $abs(A)=0$，则（　）.
#choices([$A$ 中必有两行（列）的元素对应成比例.],[$A$ 中任意一行（列）向量是其余各行（列）向量的线性组合.],[$A$ 中必有一行（列）向量是其余各行（列）向量的线性组合.],[$A$ 中至少有一行（列）的元素全为0.])
]

#ezexam.question(label: n => [（4）])[
设 $n$ 元齐次线性方程组 $A x=0$ 的系数矩阵 $A$ 的秩为 $r$，则 $A x=0$ 有非零解的充分必要条件是（　）.
#choices([$r=n$],[$r<n$],[$r>=n$],[$r>n$])
]

#ezexam.question(label: n => [（5）])[
以 $A$ 表示事件“甲种产品畅销，乙种产品滞销”，则其对立事件 $overline(A)$ 为（　）.
#choices([“甲种产品滞销，乙种产品畅销”.],[“甲、乙两种产品均畅销”.],[“甲种产品滞销”.],[“甲种产品滞销或乙种产品畅销”.])
]

= 三、计算题（本题满分20分，每小题5分.）

#ezexam.question(label: n => [（1）])[
求极限 $lim_(x->+infinity)(x+e^x)^(1/x)$.
]

#ezexam.question(label: n => [（2）])[
已知 $z=a^(sqrt(x^2-y^2))$，其中 $a>0,a!=1$，求 $dif z$.
]

#ezexam.question(label: n => [（3）])[
求不定积分 $integral (x+ln(1-x))/x^2 dif x$.
]

#ezexam.question(label: n => [（4）])[
求二重积分 $integral.double_D (1-x^2-y^2)/(1+x^2+y^2)dif x dif y$，其中 $D$ 是 $x^2+y^2=1,x=0$ 和 $y=0$ 所围成的区域在第一象限部分.
]

#ezexam.question(label: n => [四、])[
（本题满分6分）

已知某企业的总收入函数为 $R=26x-2x^2-4x^3$，总成本函数为 $C=8x+x^2$，其中 $x$ 表示产品的产量.求利润函数、边际收入函数、边际成本函数以及企业获得最大利润时的产量和最大利润.
]

#ezexam.question(label: n => [五、])[
（本题满分12分）

已知函数 $y=(2x^2)/(1-x)^2$，试求其单调区间、极值点及图形的凹凸、拐点和渐近线，并画出函数的图形.
]

#ezexam.question(label: n => [六、])[
（本题满分5分）

已知 $X=A X+B$，其中
$ A=mat(0,1,0;-1,1,1;-1,0,-1),quad B=mat(1,-1;2,0;5,-3), $
求矩阵 $X$.
]

#ezexam.question(label: n => [七、])[
（本题满分6分）

讨论向量组 $alpha_1=(1,1,0),alpha_2=(1,3,-1),alpha_3=(5,3,t)$ 的线性相关性.
]

#ezexam.question(label: n => [八、])[
（本题满分5分）

设 $A=mat(-1,2,2;2,-1,-2;2,-2,-1)$.

（1）试求矩阵 $A$ 的特征值；（2分）

（2）利用（1）小题的结果，求矩阵 $E+A^(-1)$ 的特征值，其中 $E$ 是三阶单位矩阵.（3分）
]

#ezexam.question(label: n => [九、])[
（本题满分8分）

已知随机变量 $X$ 和 $Y$ 的联合概率分布为
#table(columns: (1.6fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr), stroke: 0.4pt, [$(x,y)$], [$(0,0)$], [$(0,1)$], [$(1,0)$], [$(1,1)$], [$(2,0)$], [$(2,1)$], [$P{X=x,Y=y}$], [0.10], [0.15], [0.25], [0.20], [0.15], [0.15])

试求：（1）$X$ 的概率分布；（3分）

（2）$X+Y$ 的概率分布；（3分）

（3）$Z=sin(pi(X+Y)/2)$ 的数学期望.（2分）
]

#ezexam.question(label: n => [十、])[
（本题满分8分）

某仪器装有三只独立工作的同型号电子元件，其寿命（单位：小时）都服从同一指数分布，分布密度为
$ f(x)=cases(1/600 e^(-x/600) & x>0,0 & x<=0). $
试求：在仪器使用的最初200小时内，至少有一只电子元件损坏的概率 $alpha$.
]
