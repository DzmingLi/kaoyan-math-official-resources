#import "../template.typ": exam
#show: exam.with(year: 1990, subject: "四", title: "1990年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)

= 一、填空题（本题满分15分，每小题3分.）

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
已知随机变量 $X tilde N(-3,1),Y tilde N(2,1)$，且 $X,Y$ 相互独立，设随机变量 $Z=X-2Y+7$，则 $Z tilde$ #fillin(len: 4em)[].
]

= 二、选择题（本题满分15分，每小题3分. 每一小题都给出代号为 A，B，C，D 的四个结论，其中只有一个是正确的，把你认为正确的结论的代号写在题后的圆括号内. 每一小题选对得3分，不选或选错一律得0分.）

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
设 $A$ 是 $n$ 阶可逆矩阵，$A^*$ 是 $A$ 的伴随矩阵，则（　）.
#choices([$abs(A^*)=abs(A)^(n-1)$],[$abs(A^*)=abs(A)$],[$abs(A^*)=abs(A)^n$],[$abs(A^*)=abs(A^(-1))$])
]

#ezexam.question(label: n => [（5）])[
已知随机变量 $X$ 服从二项分布，且 $E(X)=2.4,D(X)=1.44$，则二项分布的参数 $n,p$ 的值为（　）.
#choices([$n=4,p=0.6$],[$n=6,p=0.4$],[$n=8,p=0.3$],[$n=24,p=0.1$])
]

= 三、（本题满分20分，每小题5分.）

#ezexam.question(label: n => [（1）])[
求极限 $lim_(x->infinity)1/x integral_0^x(1+t^2)e^(t^2-x^2)dif t$.
]

#ezexam.question(label: n => [（2）])[
求不定积分 $integral (x cos^4(x/2))/(sin^3 x)dif x$.
]

#ezexam.question(label: n => [（3）])[
设 $x^2+z^2=y phi(z/y)$，其中 $phi$ 为可微函数，求 $(partial z)/(partial y)$.
]

#ezexam.question(label: n => [（4）])[
计算二重积分 $integral.double_D x e^(-y^2)dif x dif y$，其中 $D$ 是由曲线 $y=4x^2$ 和 $y=9x^2$ 在第一象限所围成的区域.
]

#ezexam.question(label: n => [四、])[
（本题满分9分）

某公司可通过电台及报纸两种方式做销售某种商品的广告，根据统计资料，销售收入 $R$（万元）与电台广告费用 $x_1$（万元）及报纸广告费用 $x_2$（万元）之间的关系有如下经验公式：$R=15+14x_1+32x_2-8x_1 x_2-2x_1^2-10x_2^2$.

（1）在广告费用不限的情况下，求最优广告策略；

（2）若提供的广告费用为1.5万元，求相应的最优广告策略.
]

#ezexam.question(label: n => [五、])[
（本题满分6分）

证明不等式 $1+x ln(x+sqrt(1+x^2))>=sqrt(1+x^2) (-infinity<x<+infinity)$.
]

#ezexam.question(label: n => [六、])[
（本题满分4分）

设 $A$ 为 $10 times 10$ 矩阵
$ A=mat(0,1,0,dots,0,0;0,0,1,dots,0,0;dots.v,dots.v,dots.v,,dots.v,dots.v;0,0,0,dots,0,1;10^10,0,0,dots,0,0). $
计算行列式 $abs(A-lambda E)$，其中 $E$ 为10阶单位矩阵，$lambda$ 为常数.
]

#ezexam.question(label: n => [七、])[
（本题满分5分）

设方阵 $A$ 满足条件 $A^T A=E$，其中 $A^T$ 是 $A$ 的转置矩阵，$E$ 为单位阵.试证明 $A$ 的实特征向量所对应的特征值的绝对值等于1.
]

#ezexam.question(label: n => [八、])[
（本题满分8分）

已知线性方程组
$ cases(x_1+x_2+x_3+x_4+x_5=a,3x_1+2x_2+x_3+x_4-3x_5=0,x_2+2x_3+2x_4+6x_5=b,5x_1+4x_2+3x_3+3x_4-x_5=2) $
（1）$a,b$ 为何值时，方程组有解？

（2）方程组有解时，求出方程组的导出组的一个基础解系；

（3）方程组有解时，求出方程组的全部解.
]

#ezexam.question(label: n => [九、])[
（本题满分5分）

从0，1，2，…，9等十个数字中任意选出三个不同的数字，试求下列事件的概率：

$A_1=$ {三个数字中不含0和5}；

$A_2=$ {三个数字中含0但不含5}.
]

#ezexam.question(label: n => [十、])[
（本题满分6分）

甲、乙两人独立地各进行两次射击，假设甲的命中率为0.2，乙的命中率为0.5.以 $X$ 和 $Y$ 分别表示甲和乙的命中次数，试求 $X$ 和 $Y$ 的联合概率分布.
]

#ezexam.question(label: n => [十一、])[
（本题满分7分）

某地抽样调查结果表明，考生的外语成绩（百分制）近似服从正态分布，平均成绩为72分，96分以上的占考生总数的2.3%，试求考生的外语成绩在60分至84分之间的概率.

［附表］
#table(columns: 8, stroke: 0.4pt, [$x$], [0], [0.5], [1.0], [1.5], [2.0], [2.5], [3.0], [$Phi(x)$], [0.500], [0.692], [0.841], [0.933], [0.977], [0.994], [0.999])
表中 $Phi(x)$ 是标准正态分布函数.
]
