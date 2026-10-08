#import "../template.typ": exam
#show: exam.with(year: 1991, subject: "四", title: "1991年全国工学、经济学硕士研究生入学考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])


本试卷共14个大题，满分100分.

= 一、填空题（15分，每小题3分，只要求直接填写结果）
#ezexam.counter-question.step()

（1）设 $z=e^(sin(x y))$，则 $dif z=$ #fillin(len: 4em)[].

（2）设曲线 $f(x)=x^3+a x$ 与 $g(x)=b x^2+c$ 都通过点 $(-1,0)$，且在点 $(-1,0)$ 有公共切线，则 $a=$ #fillin(len: 4em)[]，$b=$ #fillin(len: 4em)[]，$c=$ #fillin(len: 4em)[].

（3）设 $f(x)=x e^x$，则 $f^((n))(x)$ 在点 $x=$ #fillin(len: 4em)[] 处取极小值 #fillin(len: 4em)[].

（4）设 $A$ 和 $B$ 为可逆矩阵，$X=mat(0,A;B,0)$ 为分块矩阵，则 $X^(-1)=$ #fillin(len: 4em)[].

（5）设随机变量 $X$ 的分布函数为
$ F(x)=P(X<=x)=cases(0&x<-1,0.4&-1<=x<1,0.8&1<=x<3,1&x>=3). $
则 $X$ 的概率分布为 #fillin(len: 4em)[].

= 二、选择题（15分，每小题3分；每题只有一个正确选项，不选或选错得0分）
#ezexam.counter-question.step()

（1）下列各式中正确的是
#choices([$lim_(x arrow 0^+)(1+1/x)^x=1$.],[$lim_(x arrow 0^+)(1+1/x)^x=e$.],[$lim_(x arrow infinity)(1-1/x)^x=-e$.],[$lim_(x arrow infinity)(1+1/x)^(-x)=e$.])

（2）设 $0<=a_n<1/n$（$n=1,2,dots$），则下列级数中肯定收敛的是
#choices([$sum_(n=1)^infinity a_n$.],[$sum_(n=1)^infinity (-1)^n a_n$.],[$sum_(n=1)^infinity sqrt(a_n)$.],[$sum_(n=1)^infinity (-1)^n a_n^2$.])

（3）设 $A$ 为 $n$ 阶可逆矩阵，$lambda$ 是 $A$ 的一个特征根，则 $A$ 的伴随矩阵 $A^*$ 的特征根之一是
#choices([$lambda^(-1) abs(A)^n$.],[$lambda^(-1) abs(A)$.],[$lambda abs(A)$.],[$lambda abs(A)^n$.])

（4）设 $A$ 和 $B$ 是任意两个概率不为零的不相容事件，则下列结论中肯定正确的是
#choices([$overline(A)$ 与 $overline(B)$ 不相容.],[$overline(A)$ 与 $overline(B)$ 相容.],[$P(A B)=P(A)P(B)$.],[$P(A-B)=P(A)$.])

（5）对于任意两个随机变量 $X$ 和 $Y$，若 $E(X Y)=E X dot E Y$，则
#choices([$D(X Y)=D X dot D Y$.],[$D(X+Y)=D X+D Y$.],[$X$ 和 $Y$ 独立.],[$X$ 和 $Y$ 不独立.])

#ezexam.question(label: n => [三、])[
（5分）

求极限 $lim_(x arrow 0)((e^x+e^(2x)+dots+e^(n x))/n)^(1/x)$，其中 $n$ 是给定的自然数.

]

#ezexam.question(label: n => [四、])[
（5分）

计算二重积分 $I=integral.double_D y dif x dif y$，其中 $D$ 是由 $x$ 轴、$y$ 轴与曲线 $sqrt(x/a)+sqrt(y/b)=1$ 所围成的区域，$a>0,b>0$.

]

#ezexam.question(label: n => [五、])[
（5分）

求微分方程 $x y (dif y)/(dif x)=x^2+y^2$ 满足条件 $y|_(x=e)=2e$ 的特解.

]

#ezexam.question(label: n => [六、])[
（6分）

假设曲线 $L_1:y=1-x^2$（$0<=x<=1$）、$x$ 轴和 $y$ 轴所围区域被曲线 $L_2:y=a x^2$ 分为面积相等的两部分，其中 $a$ 是大于零的常数.试确定 $a$ 的值.

]

#ezexam.question(label: n => [七、])[
（8分）

某厂家生产的一种产品同时在两个市场销售，售价分别为 $p_1$ 和 $p_2$，销售量分别为 $q_1$ 和 $q_2$；需求函数分别为
$ q_1=24-0.2p_1, quad q_2=10-0.05p_2, $
总成本函数为 $C=35+40(q_1+q_2)$.试问：厂家如何确定两个市场的售价，能使其获得的总利润最大？最大总利润为多少？

]

#ezexam.question(label: n => [八、])[
（6分）

试证明函数 $f(x)=(1+1/x)^x$ 在区间 $(0,+infinity)$ 内单调增加.

]

#ezexam.question(label: n => [九、])[
（7分）

设有三维列向量
$ alpha_1=vec(1+lambda,1,1), quad alpha_2=vec(1,1+lambda,1), quad alpha_3=vec(1,1,1+lambda), quad beta=vec(0,lambda,lambda^2). $
问 $lambda$ 取何值时，

（1）$beta$ 可由 $alpha_1,alpha_2,alpha_3$ 线性表示，且表达式唯一？

（2）$beta$ 可由 $alpha_1,alpha_2,alpha_3$ 线性表示，但表达式不唯一？

（3）$beta$ 不能由 $alpha_1,alpha_2,alpha_3$ 线性表示？

]

#ezexam.question(label: n => [十、])[
（6分）

考虑二次型 $f=x_1^2+4x_2^2+4x_3^2+2lambda x_1 x_2-2x_1 x_3+4x_2 x_3$.问 $lambda$ 取何值时，$f$ 为正定二次型？

]

#ezexam.question(label: n => [十一、])[
（6分）

试证明 $n$ 维列向量组 $alpha_1,alpha_2,dots,alpha_n$ 线性无关的充分必要条件是
$ D=mat(delim: "|",alpha_1^T alpha_1,alpha_1^T alpha_2,dots,alpha_1^T alpha_n;
alpha_2^T alpha_1,alpha_2^T alpha_2,dots,alpha_2^T alpha_n;
dots.v,dots.v,dots,dots.v;
alpha_n^T alpha_1,alpha_n^T alpha_2,dots,alpha_n^T alpha_n)!=0, $
其中 $alpha_i^T$ 表示列向量 $alpha_i$ 的转置，$i=1,2,dots,n$.

]

#ezexam.question(label: n => [十二、])[
（5分）

一汽车沿一街道行驶，需要通过三个均设有红绿信号灯的路口，每个信号灯为红或绿与其他信号灯为红或绿相互独立，且红绿两种信号显示的时间相等，以 $X$ 表示该汽车首次遇到红灯前已通过的路口的个数. 求 $X$ 的概率分布.

]

#ezexam.question(label: n => [十三、])[
（6分）

假设随机变量 $X$ 和 $Y$ 在圆域 $x^2+y^2<=r^2$ 上服从联合均匀分布.

（1）求 $X$ 和 $Y$ 的相关系数 $rho$；

（2）问 $X$ 和 $Y$ 是否独立？

]

#ezexam.question(label: n => [十四、])[
（5分）

设总体 $X$ 的概率密度为
$ p(x;lambda)=cases(lambda alpha x^(alpha-1)e^(-lambda x^alpha)&x>0,0&x<=0), $
其中 $lambda>0$ 是未知参数，$alpha>0$ 是已知常数.试根据来自总体 $X$ 的简单随机样本 $X_1,X_2,dots,X_n$，求 $lambda$ 的最大似然估计量 $hat(lambda)$.
]

