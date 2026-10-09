#import "../template.typ": exam
#show: exam.with(year: 1990, subject: "三", title: "1990年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)

= 一、填空题（本题满分15分，每小题3分. 把答案填在题中横线上.）

#ezexam.question(label: n => [（1）])[
极限 $lim_(n->infinity)(sqrt(n+3sqrt(n))-sqrt(n-sqrt(n)))=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [（2）])[
设函数 $f(x)$ 有连续的导函数，$f(0)=0$ 且 $f'(0)=b$，若函数
$ F(x)=cases((f(x)+a sin x)/x & x!=0,A & x=0) $
在 $x=0$ 处连续，则常数 $A=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [（3）])[
曲线 $y=x^2$ 与直线 $y=x+2$ 所围成的平面图形的面积为 #fillin(len: 4em)[].
]

#ezexam.question(label: n => [（4）])[
若线性方程组
$ cases(x_1+x_2=-a_1,x_2+x_3=a_2,x_3+x_4=-a_3,x_4+x_1=a_4) $
有解，则常数 $a_1,a_2,a_3,a_4$ 应满足条件 #fillin(len: 4em)[].
]

#ezexam.question(label: n => [（5）])[
一射手对同一目标独立地进行四次射击，若至少命中一次的概率为 $80/81$，则该射手的命中率为 #fillin(len: 4em)[].
]

= 二、选择题（本题满分15分，每小题3分. 每小题给出的四个选项中，只有一项符合题目要求，把所选项前的字母填在题后的括号内.）

#ezexam.question(label: n => [（1）])[
设函数 $f(x)=x dot tan x dot e^(sin x)$，则 $f(x)$ 是（　）.
#choices([偶函数.],[无界函数.],[周期函数.],[单调函数.])
]

#ezexam.question(label: n => [（2）])[
设函数 $f(x)$ 对任意 $x$ 均满足等式 $f(1+x)=a f(x)$，且有 $f'(0)=b$，其中 $a,b$ 为非零常数，则（　）.
#choices([$f(x)$ 在 $x=1$ 处不可导.],[$f(x)$ 在 $x=1$ 处可导，且 $f'(1)=a$.],[$f(x)$ 在 $x=1$ 处可导，且 $f'(1)=b$.],[$f(x)$ 在 $x=1$ 处可导，且 $f'(1)=a b$.])
]

#ezexam.question(label: n => [（3）])[
向量组 $alpha_1,alpha_2,dots,alpha_s$ 线性无关的充分条件是（　）.
#choices([$alpha_1,alpha_2,dots,alpha_s$ 均不为零向量.],[$alpha_1,alpha_2,dots,alpha_s$ 中任意两个向量的分量不成比例.],[$alpha_1,alpha_2,dots,alpha_s$ 中任意一个向量均不能由其余 $s-1$ 个向量线性表示.],[$alpha_1,alpha_2,dots,alpha_s$ 中有一部分向量线性无关.])
]

#ezexam.question(label: n => [（4）])[
设 $A,B$ 为两随机事件，且 $B subset A$，则下列式子正确的是（　）.
#choices([$P(A+B)=P(A)$],[$P(A B)=P(A)$],[$P(B|A)=P(B)$],[$P(B-A)=P(B)-P(A)$])
]

#ezexam.question(label: n => [（5）])[
设随机变量 $X$ 和 $Y$ 相互独立，其概率分布为
#table(columns: 3, stroke: 0.4pt, [$m$], [$-1$], [$1$], [$P{X=m}$], [$1/2$], [$1/2$], [$P{Y=m}$], [$1/2$], [$1/2$])
则下列式子正确的是（　）.
#choices([$X=Y$],[$P{X=Y}=0$],[$P{X=Y}=1/2$],[$P{X=Y}=1$])
]

= 三、计算题（本题满分20分，每小题5分.）

#ezexam.question(label: n => [（1）])[
求函数 $I(x)=integral_e^x (ln t)/(t^2-2t+1)dif t$ 在区间 $[e,e^2]$ 上的最大值.
]

#ezexam.question(label: n => [（2）])[
计算二重积分 $integral.double_D x e^(-y^2)dif x dif y$，其中 $D$ 是由曲线 $y=4x^2$ 和 $y=9x^2$ 在第一象限所围成的区域.
]

#ezexam.question(label: n => [（3）])[
求级数 $sum_(n=1)^infinity (x-3)^n/n^2$ 的收敛域.
]

#ezexam.question(label: n => [（4）])[
求微分方程 $y'+y cos x=(ln x)e^(-sin x)$ 的通解.
]

#ezexam.question(label: n => [四、])[
（本题满分9分）

某公司可通过电台及报纸两种方式做销售某种商品的广告，根据统计资料，销售收入 $R$（万元）与电台广告费用 $x_1$（万元）及报纸广告费用 $x_2$（万元）之间的关系有如下经验公式：$R=15+14x_1+32x_2-8x_1 x_2-2x_1^2-10x_2^2$.

（1）在广告费用不限的情况下，求最优广告策略；

（2）若提供的广告费用为1.5万元，求相应的最优广告策略.
]

#ezexam.question(label: n => [五、])[
（本题满分6分）

设 $f(x)$ 在闭区间 $[0,c]$ 上连续，其导数 $f'(x)$ 在开区间 $(0,c)$ 内存在且单调减少；$f(0)=0$.试应用拉格朗日中值定理证明不等式：$f(a+b)<=f(a)+f(b)$，其中常数 $a,b$ 满足条件 $0<=a<=b<=a+b<=c$.
]

#ezexam.question(label: n => [六、])[
（本题满分8分）

已知线性方程组
$ cases(x_1+x_2+x_3+x_4+x_5=a,3x_1+2x_2+x_3+x_4-3x_5=0,x_2+2x_3+2x_4+6x_5=b,5x_1+4x_2+3x_3+3x_4-x_5=2) $
（1）$a,b$ 为何值时，方程组有解？

（2）方程组有解时，求出方程组的导出组的一个基础解系；

（3）方程组有解时，求出方程组的全部解.
]

#ezexam.question(label: n => [七、])[
（本题满分5分）

已知对于 $n$ 阶方阵 $A$，存在自然数 $k$，使得 $A^k=O$，试证明矩阵 $E-A$ 可逆并写出其逆矩阵的表达式（$E$ 为 $n$ 阶单位阵）.
]

#ezexam.question(label: n => [八、])[
（本题满分6分）

设 $A$ 为 $n$ 阶矩阵，$lambda_1$ 和 $lambda_2$ 是 $A$ 的两个不同的特征值，$x_1,x_2$ 是分别属于 $lambda_1$ 和 $lambda_2$ 的特征向量.试证明 $x_1+x_2$ 不是 $A$ 的特征向量.
]

#ezexam.question(label: n => [九、])[
（本题满分4分）

从0，1，2，…，9十个数字中任意选出三个不同的数字，试求下列事件的概率：

$A_1=$ {三个数字中不含0和5}；

$A_2=$ {三个数字中不含0或5}.
]

#ezexam.question(label: n => [十、])[
（本题满分5分）

一电子仪器由两个部件构成，以 $X$ 和 $Y$ 分别表示两个部件的寿命（单位：千小时），已知 $X$ 和 $Y$ 的联合分布函数为：
$ F(x,y)=cases(1-e^(-0.5x)-e^(-0.5y)+e^(-0.5(x+y)) & (x>=0,y>=0),0 & "其他"). $
（1）问 $X$ 和 $Y$ 是否独立？

（2）求两个部件的寿命都超过100小时的概率 $alpha$.
]

#ezexam.question(label: n => [十一、])[
（本题满分7分）

某地抽样调查结果表明，考生的外语成绩（百分制）近似服从正态分布，平均成绩为72分，96分以上的占考生总数的2.3%，试求考生的外语成绩在60分至84分之间的概率.

［附表］
#table(columns: 8, stroke: 0.4pt, [$x$], [0], [0.5], [1.0], [1.5], [2.0], [2.5], [3.0], [$Phi(x)$], [0.500], [0.692], [0.841], [0.933], [0.977], [0.994], [0.999])
表中 $Phi(x)$ 是标准正态分布函数.
]
