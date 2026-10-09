#import "../template.typ": exam
#show: exam.with(year: 1991, subject: "五", title: "1991年全国工学、经济学硕士研究生入学考试")
#import "@preview/ezexam:0.3.1" as ezexam
#import "@preview/cetz:0.5.2" as cetz
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(true)


本试卷共14个大题，满分100分.

= 一、填空题（15分，每小题3分，只要求直接填写结果）
#ezexam.counter-question.step()

（1）设 $z=e^(sin(x y))$，则 $dif z=$ #fillin(len: 4em)[].

#ezexam.solution(show-number: false)[
由全微分与复合函数求导法则，$dif z=e^(sin(x y))cos(x y)(y dif x+x dif y)$.
]

（2）设曲线 $f(x)=x^3+a x$ 与 $g(x)=b x^2+c$ 都通过点 $(-1,0)$，且在点 $(-1,0)$ 有公共切线，则 $a=$ #fillin(len: 4em)[]，$b=$ #fillin(len: 4em)[]，$c=$ #fillin(len: 4em)[].

#ezexam.solution(show-number: false)[
由过点条件得 $-1-a=0$、$b+c=0$；由切线斜率相同得 $3+a=-2b$.所以 $a=-1,b=-1,c=1$.
]

（3）设 $f(x)=x e^x$，则 $f^((n))(x)$ 在点 $x=$ #fillin(len: 4em)[] 处取极小值 #fillin(len: 4em)[].

#ezexam.solution(show-number: false)[
由莱布尼茨公式 $f^((n))(x)=(x+n)e^x$，其导数为 $(x+n+1)e^x$，在 $x=-(n+1)$ 两侧由负变正，故在该点取极小值 $-e^(-(n+1))=-1/e^(n+1)$.
]

（4）$n$ 阶行列式
$ mat(delim: "|", a,b,0,dots,0,0;0,a,b,dots,0,0;0,0,a,dots,0,0;dots.v,dots.v,dots.v,dots,dots.v,dots.v;0,0,0,dots,a,b;b,0,0,dots,0,a) =$ #fillin(len: 4em)[].

#ezexam.solution(show-number: false)[
行列式展开中只有主对角线项和循环项不为零.循环置换的符号为 $(-1)^(n-1)$，故行列式为 $a^n+(-1)^(n+1)b^n$.
]

（5）设 $A,B$ 为随机事件，$P(A)=0.7$，$P(A-B)=0.3$，则 $P(overline(A B))=$ #fillin(len: 4em)[].

#ezexam.solution(show-number: false)[
$P(A B)=P(A)-P(A-B)=0.4$，故 $P(overline(A B))=1-0.4=0.6$.
]

= 二、选择题（15分，每小题3分；每题只有一个正确选项，不选或选错得0分）
#ezexam.counter-question.step()

（1）下列各式中正确的是
#choices([$lim_(x arrow 0^+)(1+1/x)^x=1$.],[$lim_(x arrow 0^+)(1+1/x)^x=e$.],[$lim_(x arrow infinity)(1-1/x)^x=-e$.],[$lim_(x arrow infinity)(1+1/x)^(-x)=e$.])

#ezexam.solution(show-number: false)[
*A.* $x ln(1+1/x) arrow 0$（$x arrow 0^+$），故A项极限为1.C、D两项左侧极限均为 $e^(-1)$.
]

（2）设数列的通项为
$ x_n=cases((n^2+sqrt(n))/n&"若" n "为奇数",1/n&"若" n "为偶数"), $
则当 $n arrow infinity$ 时，$x_n$ 是
#choices([无穷大量.],[无穷小量.],[有界变量.],[无界变量.])

#ezexam.solution(show-number: false)[
*D.* 奇数项子列趋于 $+infinity$，偶数项子列趋于0.整个数列无界，但不趋于无穷，也不趋于0.
]

（3）设 $A,B$ 为 $n$ 阶方阵，满足等式 $A B=0$，则必有
#choices([$A=0$ 或 $B=0$.],[$A+B=0$.],[$abs(A)=0$ 或 $abs(B)=0$.],[$abs(A)+abs(B)=0$.])

#ezexam.solution(show-number: false)[
*C.* 由 $det(A B)=det A dot det B=0$，知两行列式中至少有一个为0.矩阵本身不一定为零矩阵.
]

（4）设 $A$ 是 $m times n$ 矩阵，$A x=0$ 是非齐次线性方程组 $A x=b$ 所对应的齐次线性方程组，则下列结论正确的是
#choices([若 $A x=0$ 仅有零解，则 $A x=b$ 有唯一解.],[若 $A x=0$ 有非零解，则 $A x=b$ 有无穷多个解.],[若 $A x=b$ 有无穷多个解，则 $A x=0$ 仅有零解.],[若 $A x=b$ 有无穷多个解，则 $A x=0$ 有非零解.])

#ezexam.solution(show-number: false)[
*D.* 取非齐次方程的两个不同解 $x_1,x_2$，则 $A(x_1-x_2)=0$，且 $x_1-x_2!=0$，故对应齐次方程有非零解.A、B项均缺少非齐次方程相容的条件.
]

（5）设 $A$ 和 $B$ 是任意两个概率不为零的不相容事件，则下列结论中肯定正确的是
#choices([$overline(A)$ 与 $overline(B)$ 不相容.],[$overline(A)$ 与 $overline(B)$ 相容.],[$P(A B)=P(A)P(B)$.],[$P(A-B)=P(A)$.])

#ezexam.solution(show-number: false)[
*D.* 不相容意味着 $A ∩ B=∅$，所以 $A-B=A$.补事件是否相容还取决于 $A ∪ B$ 是否为整个样本空间；又 $P(A B)=0$ 而 $P(A)P(B)>0$.
]

#ezexam.question(label: n => [三、])[
（5分）

求极限 $lim_(x arrow +infinity)(x+sqrt(1+x^2))^(1/x)$.

#ezexam.solution(show-number: false)[
取对数并用洛必达法则，
$ lim_(x arrow +infinity)(ln(x+sqrt(1+x^2)))/x
=lim_(x arrow +infinity)1/sqrt(1+x^2)=0. $
所以原极限为 $e^0=1$.
]

]

#ezexam.question(label: n => [四、])[
（5分）

求定积分 $I=integral_(-1)^1 (2x+abs(x)+1)^2 dif x$.

#ezexam.solution(show-number: false)[
按 $x=0$ 分段，
$ I=integral_(-1)^0(x+1)^2 dif x+integral_0^1(3x+1)^2 dif x=1/3+7=22/3. $
]

]

#ezexam.question(label: n => [五、])[
（5分）

求不定积分 $I=integral x^2/(1+x^2) arctan x dif x$.

#ezexam.solution(show-number: false)[
*解一* 拆分并分部积分，
$ I=integral arctan x dif x-integral arctan x dif(arctan x)
=x arctan x-1/2 ln(1+x^2)-1/2(arctan x)^2+C. $
*解二* 令 $u=arctan x$，则 $x=tan u$，$dif x=sec^2 u dif u$，得到
$ I=integral u tan^2 u dif u=integral u(sec^2 u-1)dif u
=u tan u+ln abs(cos u)-u^2/2+C. $
代回 $u=arctan x$ 即得同一结果.
]

]

#ezexam.question(label: n => [六、])[
（5分）

已知 $x y=x f(z)+y g(z)$，$x f'(z)+y g'(z)!=0$，其中 $z=z(x,y)$ 是 $x$ 和 $y$ 的函数，求证
$ [x-g(z)](partial z)/(partial x)=[y-f(z)](partial z)/(partial y). $

#ezexam.solution(show-number: false)[
*证一* 分别对 $x,y$ 求偏导数，得
$ y-f(z)=[x f'(z)+y g'(z)]z_x, quad x-g(z)=[x f'(z)+y g'(z)]z_y. $
因公共系数非零，可分别解出
$ z_x=(y-f(z))/(x f'(z)+y g'(z)), quad z_y=(x-g(z))/(x f'(z)+y g'(z)). $
交叉相乘即得待证等式.

*证二* 直接将求导所得两式分别乘以 $z_y,z_x$，右侧相等，所以 $[y-f(z)]z_y=[x-g(z)]z_x$.
]

]

#ezexam.question(label: n => [七、])[
（6分）

假设曲线 $L_1:y=1-x^2$（$0<=x<=1$）、$x$ 轴和 $y$ 轴所围区域被曲线 $L_2:y=a x^2$ 分为面积相等的两部分，其中 $a$ 是大于零的常数.试确定 $a$ 的值.

#ezexam.solution(show-number: false)[
两曲线交点为 $P(1/sqrt(1+a),a/(1+a))$.两曲线之间的面积为
$ S_1=integral_0^(1/sqrt(1+a))[1-(1+a)x^2]dif x=2/(3sqrt(1+a)). $
总面积为 $integral_0^1(1-x^2)dif x=2/3$，故 $S_1=1/3$，于是 $a=3$.
#cetz.canvas({
  import cetz.draw: *
  let p(x, y) = (5 * x, 3.5 * y)
  let top = range(121).map(i => { let x = i / 120; p(x, 1 - x*x) })
  let left-top = range(61).map(i => { let x = i / 120; p(x, 1 - x*x) })
  let left-bottom = range(60, -1, step: -1).map(i => { let x = i / 120; p(x, 3*x*x) })
  line(p(0, 0), ..top, close: true, fill: luma(248))
  line(..left-top, ..left-bottom, close: true, fill: luma(225))
  line(..range(76).map(i => { let x = i / 120; p(x, 3*x*x) }))
  line((-0.2, 0), (5.6, 0), mark: (end: ">"))
  line((0, -0.2), (0, 4.3), mark: (end: ">"))
  content((-0.2, -0.25), $O$)
  content((5.7, -0.1), $x$)
  content((-0.15, 4.4), $y$)
  content((5, -0.25), $1$)
  content((-0.25, 3.5), $1$)
  content(p(0.55, 0.79), $P$)
  content(p(1.03, 0.3), $L_1$)
  content(p(0.65, 1.18), $L_2$)
  content(p(0.2, 0.6), $S_1$)
  content(p(0.76, 0.18), $S_2$)
})
]

]

#ezexam.question(label: n => [八、])[
（8分）

某厂家生产的一种产品同时在两个市场销售，售价分别为 $p_1$ 和 $p_2$，销售量分别为 $q_1$ 和 $q_2$；需求函数分别为
$ q_1=24-0.2p_1, quad q_2=10-0.05p_2, $
总成本函数为 $C=35+40(q_1+q_2)$.试问：厂家如何确定两个市场的售价，能使其获得的总利润最大？最大总利润为多少？

#ezexam.solution(show-number: false)[
*解一* 总利润为
$ L=p_1 q_1+p_2 q_2-C=32p_1-0.2p_1^2+12p_2-0.05p_2^2-1395. $
由 $L_(p_1)=32-0.4p_1=0$，$L_(p_2)=12-0.1p_2=0$，得 $p_1=80,p_2=120$.二阶导数组成的矩阵为 $op("diag")(-0.4,-0.1)$，负定，故这是唯一最大值点；此时 $q_1=8,q_2=4$，最大总利润为605.

*解二* 以销量为变量，价格为 $p_1=120-5q_1$、$p_2=200-20q_2$，所以
$ L=80q_1-5q_1^2+160q_2-20q_2^2-35. $
由 $L_(q_1)=80-10q_1=0$、$L_(q_2)=160-40q_2=0$，得 $q_1=8,q_2=4$，同样得 $p_1=80,p_2=120$，最大总利润为605.
]

]

#ezexam.question(label: n => [九、])[
（6分）

证明不等式 $ln(1+1/x)>1/(1+x)$（$0<x<+infinity$）.

#ezexam.solution(show-number: false)[
*证一* 对 $ln t$ 在 $[x,x+1]$ 上应用拉格朗日中值定理，有 $ln(x+1)-ln x=1/xi$，其中 $x<xi<x+1$.因此 $ln(1+1/x)=1/xi>1/(1+x)$.

*证二* 令 $F(x)=ln(1+1/x)-1/(1+x)$，则 $F'(x)=-1/(x(1+x)^2)<0$，且 $lim_(x arrow +infinity)F(x)=0$.故在 $(0,+infinity)$ 内恒有 $F(x)>0$.
]

]

#ezexam.question(label: n => [十、])[
（5分）

设 $n$ 阶矩阵 $A$ 和 $B$ 满足条件 $A+B=A B$.

（1）证明 $A-E$ 为可逆矩阵，其中 $E$ 是 $n$ 阶单位矩阵；

（2）已知 $B=mat(1,-3,0;2,1,0;0,0,2)$，求矩阵 $A$.

#ezexam.solution(show-number: false)[
（1）由 $A+B=A B$，得 $(A-E)(B-E)=A B-A-B+E=E$，故 $A-E$ 可逆，其逆矩阵为 $B-E$.

（2）由上式 $A=E+(B-E)^(-1)$.计算得
$ B-E=mat(0,-3,0;2,0,0;0,0,1), quad (B-E)^(-1)=mat(0,1/2,0;-1/3,0,0;0,0,1), $
所以 $A=mat(1,1/2,0;-1/3,1,0;0,0,2)$.
]

]

#ezexam.question(label: n => [十一、])[
（7分）

设有三维列向量
$ alpha_1=vec(1+lambda,1,1), quad alpha_2=vec(1,1+lambda,1), quad alpha_3=vec(1,1,1+lambda), quad beta=vec(0,lambda,lambda^2). $
问 $lambda$ 取何值时，

（1）$beta$ 可由 $alpha_1,alpha_2,alpha_3$ 线性表示，且表达式唯一？

（2）$beta$ 可由 $alpha_1,alpha_2,alpha_3$ 线性表示，但表达式不唯一？

（3）$beta$ 不能由 $alpha_1,alpha_2,alpha_3$ 线性表示？

#ezexam.solution(show-number: false)[
设 $x_1 alpha_1+x_2 alpha_2+x_3 alpha_3=beta$.系数矩阵为
$ A=mat(1+lambda,1,1;1,1+lambda,1;1,1,1+lambda), quad det A=lambda^2(lambda+3). $
（1）$lambda!=0$ 且 $lambda!=-3$ 时，系数阵可逆，表示唯一.

（2）$lambda=0$ 时，$beta=0$，方程组化为 $x_1+x_2+x_3=0$，有无穷多解，表示不唯一.

（3）$lambda=-3$ 时，三个方程左侧相加为0，右侧相加为 $0-3+9=6$，矛盾，故不能线性表示.
]

]

#ezexam.question(label: n => [十二、])[
（4分）

已知向量 $alpha=(1,k,1)^T$ 是矩阵 $A=mat(2,1,1;1,2,1;1,1,2)$ 的逆矩阵 $A^(-1)$ 的特征向量，试求常数 $k$ 的值.

#ezexam.solution(show-number: false)[
设对应特征值为 $lambda$，则 $A^(-1)alpha=lambda alpha$，即 $alpha=lambda A alpha$.比较分量得
$ lambda(3+k)=1, quad lambda(2+2k)=k. $
消去 $lambda$ 得 $k^2+k-2=0$，故 $k=-2$ 或 $k=1$；对应的 $lambda$ 分别为1和 $1/4$.
]

]

#ezexam.question(label: n => [十三、])[
（7分）

一汽车沿一街道行驶，需要通过三个均设有红绿信号灯的路口，每个信号灯为红或绿与其他信号灯为红或绿相互独立，且红绿两种信号显示的时间相等，以 $X$ 表示该汽车首次遇到红灯前已通过的路口的个数.

（1）求 $X$ 的概率分布.

（2）求 $E(1/(1+X))$.

#ezexam.solution(show-number: false)[
（1）由题意 $X$ 可能取0、1、2、3.把各路口遇到红灯的事件记为 $A_i$（$i=1,2,3$），这些事件相互独立，且概率均为 $1/2$.于是
$ P(X=0)=1/2, quad P(X=1)=1/4, quad P(X=2)=1/8, quad P(X=3)=1/8. $
最后一项表示三个路口全为绿灯.

（2）由离散随机变量函数的期望公式，
$ E(1/(1+X))=1/2+1/2 dot 1/4+1/3 dot 1/8+1/4 dot 1/8=67/96. $
]

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

#ezexam.solution(show-number: false)[
令 $A_1,A_2,A_3$ 分别表示电压处于三个区间的事件，$B$ 表示元件损坏.标准化并查表，得
$ P(A_1)=Phi(-0.8)=0.212, quad P(A_2)=Phi(0.8)-Phi(-0.8)=0.576, $
$ P(A_3)=1-P(A_1)-P(A_2)=0.212. $
（1）由全概率公式，
$ alpha=P(B)=0.212 times 0.1+0.576 times 0.001+0.212 times 0.2
=0.064176 approx 0.0642. $
（2）由贝叶斯公式，
$ beta=P(A_2|B)=(P(A_2)P(B|A_2))/(P(B))=(0.576 times 0.001)/0.064176 approx 0.009. $
]
]

