#import "../template.typ": exam
#show: exam.with(year: 1995, subject: "MBA", title: "1995年全国工学、经济学硕士和 MBA 研究生入学考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(true)


= 一、填空题（21分，每小题3分）
#ezexam.counter-question.step()

（1）设 $f(x)=cases(2ln(1+x)/x & quad x!=0,A & quad x=0)$ 在 $x=0$ 处连续，则 $A=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
由连续性，$A=lim_(x arrow 0)2ln(1+x)/x=2$.
]

（2）设 $x+y=sin y$，则 $dif y=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
两边微分得 $dif x+dif y=cos y dif y$，故 $dif y=(dif x)/(cos y-1)$.
]

（3）设 $z=x e^(x y)$，则 $x (partial z)/(partial x)-y (partial z)/(partial y)=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
由 $z_x=e^(x y)(1+x y)$、$z_y=x^2 e^(x y)$，得所求为 $x e^(x y)=z$.
]

（4）行列式 $det mat(3,2,1,0;0,0,1,1;0,1,0,1;1,0,0,1)=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
沿第一列展开，得 $3(-1)-3=-6$.
]

（5）设向量组 $alpha_1=(1,1,2,-2)$，$alpha_2=(1,3,-x,-2x)$，$alpha_3=(1,-1,6,0)$ 的秩为2，则 $x=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$alpha_1,alpha_3$ 线性无关.由前两分量可知 $alpha_2=2alpha_1-alpha_3$，比较后两分量得 $x=2$.
]

（6）设事件 $A,B,C$ 相互独立，$P(A)=0.3$，$P(B)=0.4$，$P(C)=0.5$，则 $A,B,C$ 至少有一个发生的概率为#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
利用对立事件及独立性，得 $1-(1-0.3)(1-0.4)(1-0.5)=0.79$.
]

（7）某射手独立地射击10次，每次命中的概率为0.60.设命中次数为 $X$，则 $E X^2=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$X∼op("B")(10,0.6)$，故 $E X=6$、$D X=2.4$，从而 $E X^2=D X+(E X)^2=38.4$.
]

#ezexam.question(label: n => [二、])[
（7分）

求极限 $lim_(x arrow 0)(cos x-sqrt(cos x))/sin^2 x$.
#ezexam.solution(show-number: false)[
有理化得
$ (cos x-sqrt(cos x))/sin^2 x=-cos x/((cos x+sqrt(cos x))(1+cos x)), $
故极限为 $-1/4$.
]

]

#ezexam.question(label: n => [三、])[
（7分）

设 $y=ln(e^x+sqrt(1+e^(2x)))$，求 $y'$.
#ezexam.solution(show-number: false)[
由复合函数求导，
$ y'=(e^x+e^(2x)/sqrt(1+e^(2x)))/(e^x+sqrt(1+e^(2x)))=e^x/sqrt(1+e^(2x)). $
]

]

#ezexam.question(label: n => [四、])[
（7分）

计算不定积分 $integral 1/(x(1+x^2))dif x$.
#ezexam.solution(show-number: false)[
将被积函数拆分为 $1/x-x/(1+x^2)$，得
$ integral 1/(x(1+x^2))dif x=ln abs(x)-1/2 ln(1+x^2)+C. $
]

]

#ezexam.question(label: n => [五、])[
（9分）

试求：

（1）曲线 $y=sqrt(x)$ 在点 $(1,1)$ 处的切线方程；

（2）曲线 $y=sqrt(x)$ 在点 $(1,1)$ 处的切线与曲线 $y=1/2 x^2-1/2$ 所围区域的面积 $S$.
#ezexam.solution(show-number: false)[
（1）切线斜率为 $y'(1)=1/2$，故切线方程为 $y=x/2+1/2$.

（2）联立直线与抛物线方程，得交点横坐标为 $-1,2$，因此
$ S=integral_(-1)^2 (x/2+1/2-(x^2/2-1/2))dif x=9/4. $
]

]

#ezexam.question(label: n => [六、])[
（9分）

已知某企业生产某种产品的需求函数为 $P=26-2Q-4Q^2$，总成本 $C=8Q+Q^2$，其中 $Q$ 表示该产品的产量（需求量），$P$ 表示产品价格.求利润函数、边际收入函数、边际成本函数，以及企业获得最大利润时的产量和最大利润.
#ezexam.solution(show-number: false)[
总收入为 $R=P Q=26Q-2Q^2-4Q^3$，利润为 $L=R-C=18Q-3Q^2-4Q^3$.

边际收入为 $R'=26-4Q-12Q^2$，边际成本为 $C'=8+2Q$.令 $L'=18-6Q-12Q^2=0$，取非负根 $Q=1$.在 $Q>=0$ 上，利润先增后减，因此产量为1时利润最大，最大利润为 $L(1)=11$.
]

]

#ezexam.question(label: n => [七、])[
（7分）

设 $f(x),g(x)$ 在 $[a,b]$ 上连续，且满足 $f(a)>g(a)$，$f(b)<g(b)$.证明至少存在一点 $xi in (a,b)$，使 $f(xi)=g(xi)$.
#ezexam.solution(show-number: false)[
令 $phi(x)=f(x)-g(x)$，则 $phi$ 在 $[a,b]$ 上连续，且 $phi(a)>0$、$phi(b)<0$.由零点定理，存在 $xi in (a,b)$ 使 $phi(xi)=0$，即 $f(xi)=g(xi)$.
]

]

#ezexam.question(label: n => [八、])[
（9分）

设三维列向量 $alpha=(1,0,-1)^T$，三阶方阵 $A=3I-alpha alpha^T$，其中 $I$ 为三阶单位矩阵.

（1）求矩阵 $A$；

（2）$A$ 是否可逆？若可逆，求 $A^(-1)$.
#ezexam.solution(show-number: false)[
（1）直接计算得 $A=mat(2,0,1;0,3,0;1,0,2)$.

（2）$det A=9!=0$，所以可逆.由初等行变换或伴随矩阵法，得 $A^(-1)=mat(2/3,0,-1/3;0,1/3,0;-1/3,0,2/3)$.
]

]

#ezexam.question(label: n => [九、])[
（10分）

$lambda$ 取何值时，线性方程组
$ cases(2x_1-4x_2+5x_3+3x_4=1,3x_1-6x_2+4x_3+2x_4=2,4x_1-8x_2+3x_3+x_4=lambda) $
有解？当方程组有解时，求其全部解，并用其导出组的基础解系表示.
#ezexam.solution(show-number: false)[
增广矩阵行化简为
$ mat(1,-2,-1,-1,1;0,0,7,5,2-lambda;0,0,0,0,lambda-3). $
所以当且仅当 $lambda=3$ 时有解.继续化简，得 $x_1=6/7+2x_2+2x_4/7$、$x_3=-1/7-5x_4/7$.导出组的基础解系可取 $(2,1,0,0)^T$、$(2,0,-5,7)^T$，全部解为
$ X=(6/7,0,-1/7,0)^T+c_1(2,1,0,0)^T+c_2(2,0,-5,7)^T, $
其中 $c_1,c_2$ 为任意常数.
]

]

#ezexam.question(label: n => [十、])[
（7分）

假设一商店出售的某种电器元件来自甲、乙、丙三个厂家.三厂家生产的这种元件各占该商店存货的50%、30%、20%，每只元件在规定时间内正常工作的概率相应为0.9、0.8和0.7.一顾客从该店购买一只电器元件，求该元件能在规定时间内正常工作的概率 $alpha$.
#ezexam.solution(show-number: false)[
由全概率公式，
$ alpha=0.5 times 0.9+0.3 times 0.8+0.2 times 0.7=0.83. $
]

]

#ezexam.question(label: n => [十一、])[
（7分）

假设随机变量 $X$ 服从正态分布 $N(-2,1)$，求 $Y=1/2 X+1$ 的概率密度 $f(y)$.
#ezexam.solution(show-number: false)[
正态变量的线性变换仍服从正态分布，且 $E Y=0$、$D Y=1/4$，所以 $Y∼N(0,1/4)$，其密度为
$ f(y)=sqrt(2/pi)e^(-2y^2), quad -infinity<y<infinity. $
]

]

