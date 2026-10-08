#import "../template.typ": exam
#show: exam.with(year: 1995, subject: "MBA", title: "1995年全国工学、经济学硕士和 MBA 研究生入学考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])


= 一、填空题（21分，每小题3分）
#ezexam.counter-question.step()

（1）设 $f(x)=cases(2ln(1+x)/x & quad x!=0,A & quad x=0)$ 在 $x=0$ 处连续，则 $A=$ #fillin(len: 4em)[].

（2）设 $x+y=sin y$，则 $dif y=$ #fillin(len: 4em)[].

（3）设 $z=x e^(x y)$，则 $x (partial z)/(partial x)-y (partial z)/(partial y)=$ #fillin(len: 4em)[].

（4）行列式 $det mat(3,2,1,0;0,0,1,1;0,1,0,1;1,0,0,1)=$ #fillin(len: 4em)[].

（5）设向量组 $alpha_1=(1,1,2,-2)$，$alpha_2=(1,3,-x,-2x)$，$alpha_3=(1,-1,6,0)$ 的秩为2，则 $x=$ #fillin(len: 4em)[].

（6）设事件 $A,B,C$ 相互独立，$P(A)=0.3$，$P(B)=0.4$，$P(C)=0.5$，则 $A,B,C$ 至少有一个发生的概率为#fillin(len: 4em)[].

（7）某射手独立地射击10次，每次命中的概率为0.60.设命中次数为 $X$，则 $E X^2=$ #fillin(len: 4em)[].

#ezexam.question(label: n => [二、])[
（7分）

求极限 $lim_(x arrow 0)(cos x-sqrt(cos x))/sin^2 x$.

]

#ezexam.question(label: n => [三、])[
（7分）

设 $y=ln(e^x+sqrt(1+e^(2x)))$，求 $y'$.

]

#ezexam.question(label: n => [四、])[
（7分）

计算不定积分 $integral 1/(x(1+x^2))dif x$.

]

#ezexam.question(label: n => [五、])[
（9分）

试求：

（1）曲线 $y=sqrt(x)$ 在点 $(1,1)$ 处的切线方程；

（2）曲线 $y=sqrt(x)$ 在点 $(1,1)$ 处的切线与曲线 $y=1/2 x^2-1/2$ 所围区域的面积 $S$.

]

#ezexam.question(label: n => [六、])[
（9分）

已知某企业生产某种产品的需求函数为 $P=26-2Q-4Q^2$，总成本 $C=8Q+Q^2$，其中 $Q$ 表示该产品的产量（需求量），$P$ 表示产品价格.求利润函数、边际收入函数、边际成本函数，以及企业获得最大利润时的产量和最大利润.

]

#ezexam.question(label: n => [七、])[
（7分）

设 $f(x),g(x)$ 在 $[a,b]$ 上连续，且满足 $f(a)>g(a)$，$f(b)<g(b)$.证明至少存在一点 $xi in (a,b)$，使 $f(xi)=g(xi)$.

]

#ezexam.question(label: n => [八、])[
（9分）

设三维列向量 $alpha=(1,0,-1)^T$，三阶方阵 $A=3I-alpha alpha^T$，其中 $I$ 为三阶单位矩阵.

（1）求矩阵 $A$；

（2）$A$ 是否可逆？若可逆，求 $A^(-1)$.

]

#ezexam.question(label: n => [九、])[
（10分）

$lambda$ 取何值时，线性方程组
$ cases(2x_1-4x_2+5x_3+3x_4=1,3x_1-6x_2+4x_3+2x_4=2,4x_1-8x_2+3x_3+x_4=lambda) $
有解？当方程组有解时，求其全部解，并用其导出组的基础解系表示.

]

#ezexam.question(label: n => [十、])[
（7分）

假设一商店出售的某种电器元件来自甲、乙、丙三个厂家.三厂家生产的这种元件各占该商店存货的50%、30%、20%，每只元件在规定时间内正常工作的概率相应为0.9、0.8和0.7.一顾客从该店购买一只电器元件，求该元件能在规定时间内正常工作的概率 $alpha$.

]

#ezexam.question(label: n => [十一、])[
（7分）

假设随机变量 $X$ 服从正态分布 $N(-2,1)$，求 $Y=1/2 X+1$ 的概率密度 $f(y)$.
]

