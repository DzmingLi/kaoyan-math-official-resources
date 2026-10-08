#import "../template.typ": exam
#show: exam.with(year: 1991, subject: "五", title: "1991年全国工学、经济学硕士研究生入学考试")
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

（4）$n$ 阶行列式
$ mat(delim: "|", a,b,0,dots,0,0;0,a,b,dots,0,0;0,0,a,dots,0,0;dots.v,dots.v,dots.v,dots,dots.v,dots.v;0,0,0,dots,a,b;b,0,0,dots,0,a) =$ #fillin(len: 4em)[].

（5）设 $A,B$ 为随机事件，$P(A)=0.7$，$P(A-B)=0.3$，则 $P(overline(A B))=$ #fillin(len: 4em)[].

= 二、选择题（15分，每小题3分；每题只有一个正确选项，不选或选错得0分）
#ezexam.counter-question.step()

（1）下列各式中正确的是
#choices([$lim_(x arrow 0^+)(1+1/x)^x=1$.],[$lim_(x arrow 0^+)(1+1/x)^x=e$.],[$lim_(x arrow infinity)(1-1/x)^x=-e$.],[$lim_(x arrow infinity)(1+1/x)^(-x)=e$.])

（2）设数列的通项为
$ x_n=cases((n^2+sqrt(n))/n&"若" n "为奇数",1/n&"若" n "为偶数"), $
则当 $n arrow infinity$ 时，$x_n$ 是
#choices([无穷大量.],[无穷小量.],[有界变量.],[无界变量.])

（3）设 $A,B$ 为 $n$ 阶方阵，满足等式 $A B=0$，则必有
#choices([$A=0$ 或 $B=0$.],[$A+B=0$.],[$abs(A)=0$ 或 $abs(B)=0$.],[$abs(A)+abs(B)=0$.])

（4）设 $A$ 是 $m times n$ 矩阵，$A x=0$ 是非齐次线性方程组 $A x=b$ 所对应的齐次线性方程组，则下列结论正确的是
#choices([若 $A x=0$ 仅有零解，则 $A x=b$ 有唯一解.],[若 $A x=0$ 有非零解，则 $A x=b$ 有无穷多个解.],[若 $A x=b$ 有无穷多个解，则 $A x=0$ 仅有零解.],[若 $A x=b$ 有无穷多个解，则 $A x=0$ 有非零解.])

（5）设 $A$ 和 $B$ 是任意两个概率不为零的不相容事件，则下列结论中肯定正确的是
#choices([$overline(A)$ 与 $overline(B)$ 不相容.],[$overline(A)$ 与 $overline(B)$ 相容.],[$P(A B)=P(A)P(B)$.],[$P(A-B)=P(A)$.])

#ezexam.question(label: n => [三、])[
（5分）

求极限 $lim_(x arrow +infinity)(x+sqrt(1+x^2))^(1/x)$.

]

#ezexam.question(label: n => [四、])[
（5分）

求定积分 $I=integral_(-1)^1 (2x+abs(x)+1)^2 dif x$.

]

#ezexam.question(label: n => [五、])[
（5分）

求不定积分 $I=integral x^2/(1+x^2) arctan x dif x$.

]

#ezexam.question(label: n => [六、])[
（5分）

已知 $x y=x f(z)+y g(z)$，$x f'(z)+y g'(z)!=0$，其中 $z=z(x,y)$ 是 $x$ 和 $y$ 的函数，求证
$ [x-g(z)](partial z)/(partial x)=[y-f(z)](partial z)/(partial y). $

]

#ezexam.question(label: n => [七、])[
（6分）

假设曲线 $L_1:y=1-x^2$（$0<=x<=1$）、$x$ 轴和 $y$ 轴所围区域被曲线 $L_2:y=a x^2$ 分为面积相等的两部分，其中 $a$ 是大于零的常数.试确定 $a$ 的值.

]

#ezexam.question(label: n => [八、])[
（8分）

某厂家生产的一种产品同时在两个市场销售，售价分别为 $p_1$ 和 $p_2$，销售量分别为 $q_1$ 和 $q_2$；需求函数分别为
$ q_1=24-0.2p_1, quad q_2=10-0.05p_2, $
总成本函数为 $C=35+40(q_1+q_2)$.试问：厂家如何确定两个市场的售价，能使其获得的总利润最大？最大总利润为多少？

]

#ezexam.question(label: n => [九、])[
（6分）

证明不等式 $ln(1+1/x)>1/(1+x)$（$0<x<+infinity$）.

]

#ezexam.question(label: n => [十、])[
（5分）

设 $n$ 阶矩阵 $A$ 和 $B$ 满足条件 $A+B=A B$.

（1）证明 $A-E$ 为可逆矩阵，其中 $E$ 是 $n$ 阶单位矩阵；

（2）已知 $B=mat(1,-3,0;2,1,0;0,0,2)$，求矩阵 $A$.

]

#ezexam.question(label: n => [十一、])[
（7分）

设有三维列向量
$ alpha_1=vec(1+lambda,1,1), quad alpha_2=vec(1,1+lambda,1), quad alpha_3=vec(1,1,1+lambda), quad beta=vec(0,lambda,lambda^2). $
问 $lambda$ 取何值时，

（1）$beta$ 可由 $alpha_1,alpha_2,alpha_3$ 线性表示，且表达式唯一？

（2）$beta$ 可由 $alpha_1,alpha_2,alpha_3$ 线性表示，但表达式不唯一？

（3）$beta$ 不能由 $alpha_1,alpha_2,alpha_3$ 线性表示？

]

#ezexam.question(label: n => [十二、])[
（4分）

已知向量 $alpha=(1,k,1)^T$ 是矩阵 $A=mat(2,1,1;1,2,1;1,1,2)$ 的逆矩阵 $A^(-1)$ 的特征向量，试求常数 $k$ 的值.

]

#ezexam.question(label: n => [十三、])[
（7分）

一汽车沿一街道行驶，需要通过三个均设有红绿信号灯的路口，每个信号灯为红或绿与其他信号灯为红或绿相互独立，且红绿两种信号显示的时间相等，以 $X$ 表示该汽车首次遇到红灯前已通过的路口的个数.

（1）求 $X$ 的概率分布.

（2）求 $E(1/(1+X))$.

]

#ezexam.question(label: n => [十四、])[
（7分）

在电源电压不超过200伏、在200～240伏和超过240伏三种情形下，某种电子元件损坏的概率分别为0.1、0.001和0.2.假设电源电压 $X$ 服从正态分布 $N(220,25^2)$，试求：

（1）该电子元件损坏的概率 $alpha$；

（2）该电子元件损坏时，电源电压在200～240伏的概率 $beta$.

附表：
#table(columns: 9,
[$x$],[0.10],[0.20],[0.40],[0.60],[0.80],[1.00],[1.20],[1.40],
[$Phi(x)$],[0.540],[0.579],[0.655],[0.726],[0.788],[0.841],[0.885],[0.919])
表中 $Phi(x)$ 是标准正态分布函数.
]

