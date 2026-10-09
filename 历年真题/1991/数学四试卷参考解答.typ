#import "../template.typ": exam
#show: exam.with(year: 1991, subject: "四", title: "1991年全国工学、经济学硕士研究生入学考试")
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

（4）设 $A$ 和 $B$ 为可逆矩阵，$X=mat(0,A;B,0)$ 为分块矩阵，则 $X^(-1)=$ #fillin(len: 4em)[].

#ezexam.solution(show-number: false)[
按分块矩阵乘法验证可得 $X^(-1)=mat(0,B^(-1);A^(-1),0)$.
]

（5）设随机变量 $X$ 的分布函数为
$ F(x)=P(X<=x)=cases(0&x<-1,0.4&-1<=x<1,0.8&1<=x<3,1&x>=3). $
则 $X$ 的概率分布为 #fillin(len: 4em)[].

#ezexam.solution(show-number: false)[
各跳跃点的概率等于分布函数的跳跃量，故
#table(columns: 4, [$x$],[-1],[1],[3],[$P(X=x)$],[0.4],[0.4],[0.2])
]

= 二、选择题（15分，每小题3分；每题只有一个正确选项，不选或选错得0分）
#ezexam.counter-question.step()

（1）下列各式中正确的是
#choices([$lim_(x arrow 0^+)(1+1/x)^x=1$.],[$lim_(x arrow 0^+)(1+1/x)^x=e$.],[$lim_(x arrow infinity)(1-1/x)^x=-e$.],[$lim_(x arrow infinity)(1+1/x)^(-x)=e$.])

#ezexam.solution(show-number: false)[
*A.* $x ln(1+1/x) arrow 0$（$x arrow 0^+$），故A项极限为1.C、D两项左侧极限均为 $e^(-1)$.
]

（2）设 $0<=a_n<1/n$（$n=1,2,dots$），则下列级数中肯定收敛的是
#choices([$sum_(n=1)^infinity a_n$.],[$sum_(n=1)^infinity (-1)^n a_n$.],[$sum_(n=1)^infinity sqrt(a_n)$.],[$sum_(n=1)^infinity (-1)^n a_n^2$.])

#ezexam.solution(show-number: false)[
*D.* 因 $0<=a_n^2<1/n^2$，由比较判别法知D项绝对收敛.题设未保证 $a_n$ 单调，故不能直接对B项使用莱布尼茨判别法.
]

（3）设 $A$ 为 $n$ 阶可逆矩阵，$lambda$ 是 $A$ 的一个特征根，则 $A$ 的伴随矩阵 $A^*$ 的特征根之一是
#choices([$lambda^(-1) abs(A)^n$.],[$lambda^(-1) abs(A)$.],[$lambda abs(A)$.],[$lambda abs(A)^n$.])

#ezexam.solution(show-number: false)[
*B.* 由 $A^*=det(A)A^(-1)$，若 $A v=lambda v$，则 $A^*v=(det(A)/lambda)v$.这里 $abs(A)$ 表示行列式.
]

（4）设 $A$ 和 $B$ 是任意两个概率不为零的不相容事件，则下列结论中肯定正确的是
#choices([$overline(A)$ 与 $overline(B)$ 不相容.],[$overline(A)$ 与 $overline(B)$ 相容.],[$P(A B)=P(A)P(B)$.],[$P(A-B)=P(A)$.])

#ezexam.solution(show-number: false)[
*D.* 不相容意味着 $A ∩ B=∅$，所以 $A-B=A$.补事件是否相容还取决于 $A ∪ B$ 是否为整个样本空间；又 $P(A B)=0$ 而 $P(A)P(B)>0$.
]

（5）对于任意两个随机变量 $X$ 和 $Y$，若 $E(X Y)=E X dot E Y$，则
#choices([$D(X Y)=D X dot D Y$.],[$D(X+Y)=D X+D Y$.],[$X$ 和 $Y$ 独立.],[$X$ 和 $Y$ 不独立.])

#ezexam.solution(show-number: false)[
*B.* 由条件知 $op("cov")(X,Y)=0$.利用方差公式 $D(X+Y)=D X+D Y+2op("cov")(X,Y)$，得B项.不相关本身不能判定是否独立（按题目通常约定，所涉及的矩存在）.
]

#ezexam.question(label: n => [三、])[
（5分）

求极限 $lim_(x arrow 0)((e^x+e^(2x)+dots+e^(n x))/n)^(1/x)$，其中 $n$ 是给定的自然数.

#ezexam.solution(show-number: false)[
取对数后用洛必达法则，得
$ lim_(x arrow 0)(ln(e^x+e^(2x)+dots+e^(n x))-ln n)/x
=lim_(x arrow 0)(e^x+2e^(2x)+dots+n e^(n x))/(e^x+e^(2x)+dots+e^(n x))
=(1+2+dots+n)/n=(n+1)/2. $
所以原极限为 $e^((n+1)/2)$.
]

]

#ezexam.question(label: n => [四、])[
（5分）

计算二重积分 $I=integral.double_D y dif x dif y$，其中 $D$ 是由 $x$ 轴、$y$ 轴与曲线 $sqrt(x/a)+sqrt(y/b)=1$ 所围成的区域，$a>0,b>0$.

#ezexam.solution(show-number: false)[
#cetz.canvas({
  import cetz.draw: *
  let curve = range(121).map(i => { let t = i / 120; (5 * t * t, 3 * (1 - t) * (1 - t)) })
  line((0, 0), ..curve, close: true, fill: luma(235))
  line((-0.2, 0), (5.5, 0), mark: (end: ">"))
  line((0, -0.2), (0, 3.6), mark: (end: ">"))
  content((-0.2, -0.25), $O$)
  content((5.6, -0.1), $x$)
  content((-0.15, 3.7), $y$)
  content((5, -0.25), $a$)
  content((-0.25, 3), $b$)
  content((1, 0.8), $D$)
})


由曲线方程得 $y=b(1-sqrt(x/a))^2$，所以
$ I=integral_0^a dif x integral_0^(b(1-sqrt(x/a))^2)y dif y
=b^2/2 integral_0^a(1-sqrt(x/a))^4 dif x. $
令 $t=1-sqrt(x/a)$，则 $x=a(1-t)^2$，$dif x=-2a(1-t)dif t$，于是
$ I=a b^2 integral_0^1(t^4-t^5)dif t=(a b^2)/30. $
]

]

#ezexam.question(label: n => [五、])[
（5分）

求微分方程 $x y (dif y)/(dif x)=x^2+y^2$ 满足条件 $y|_(x=e)=2e$ 的特解.

#ezexam.solution(show-number: false)[
方程化为 $y'=(1+(y/x)^2)/(y/x)$.令 $y=u x$，得 $u+x u'=(1+u^2)/u$，即 $u dif u=(dif x)/x$.积分得 $u^2/2=ln abs(x)+C$，故
$ y^2=2x^2(ln abs(x)+C). $
代入初始条件得 $C=1$，所求特解为 $y^2=2x^2(ln abs(x)+1)$；取满足初始条件的正支，可写为 $y=x sqrt(2ln x+2)$（$x>e^(-1)$）.
]

]

#ezexam.question(label: n => [六、])[
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

#ezexam.question(label: n => [七、])[
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

#ezexam.question(label: n => [八、])[
（6分）

试证明函数 $f(x)=(1+1/x)^x$ 在区间 $(0,+infinity)$ 内单调增加.

#ezexam.solution(show-number: false)[
求导得
$ f'(x)=(1+1/x)^x [ln(1+1/x)-1/(1+x)]. $
*证一* 对 $ln t$ 在 $[x,x+1]$ 上用拉格朗日中值定理，存在 $xi in (x,x+1)$，使
$ ln(1+1/x)=ln(x+1)-ln x=1/xi>1/(x+1). $
故 $f'(x)>0$，函数单调增加.

*证二* 令 $g(x)=ln(1+1/x)-1/(1+x)$，则 $g'(x)=-1/(x(1+x)^2)<0$，且 $lim_(x arrow +infinity)g(x)=0$，所以 $g(x)>0$，从而 $f'(x)>0$.
]

]

#ezexam.question(label: n => [九、])[
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

#ezexam.question(label: n => [十、])[
（6分）

考虑二次型 $f=x_1^2+4x_2^2+4x_3^2+2lambda x_1 x_2-2x_1 x_3+4x_2 x_3$.问 $lambda$ 取何值时，$f$ 为正定二次型？

#ezexam.solution(show-number: false)[
对应矩阵为 $A=mat(1,lambda,-1;lambda,4,2;-1,2,4)$.正定的充要条件为顺序主子式均为正：
$ D_1=1, quad D_2=4-lambda^2, quad D_3=-4lambda^2-4lambda+8=-4(lambda-1)(lambda+2). $
由 $D_2>0,D_3>0$ 得 $-2<lambda<1$，这就是所求范围.
]

]

#ezexam.question(label: n => [十一、])[
（6分）

试证明 $n$ 维列向量组 $alpha_1,alpha_2,dots,alpha_n$ 线性无关的充分必要条件是
$ D=mat(delim: "|",alpha_1^T alpha_1,alpha_1^T alpha_2,dots,alpha_1^T alpha_n;
alpha_2^T alpha_1,alpha_2^T alpha_2,dots,alpha_2^T alpha_n;
dots.v,dots.v,dots,dots.v;
alpha_n^T alpha_1,alpha_n^T alpha_2,dots,alpha_n^T alpha_n)!=0, $
其中 $alpha_i^T$ 表示列向量 $alpha_i$ 的转置，$i=1,2,dots,n$.

#ezexam.solution(show-number: false)[
记 $A=(alpha_1,alpha_2,dots,alpha_n)$，则该向量组线性无关当且仅当 $det A!=0$.另一方面，题给矩阵正是 $A^T A$，所以
$ D=det(A^T A)=det(A^T)det A=(det A)^2. $
因此 $D!=0$ 与 $det A!=0$ 等价，命题得证.
]

]

#ezexam.question(label: n => [十二、])[
（5分）

一汽车沿一街道行驶，需要通过三个均设有红绿信号灯的路口，每个信号灯为红或绿与其他信号灯为红或绿相互独立，且红绿两种信号显示的时间相等，以 $X$ 表示该汽车首次遇到红灯前已通过的路口的个数. 求 $X$ 的概率分布.

#ezexam.solution(show-number: false)[
由题意 $X$ 可能取0、1、2、3.把各路口遇到红灯的事件记为 $A_i$（$i=1,2,3$），这些事件相互独立，且概率均为 $1/2$.于是
$ P(X=0)=1/2, quad P(X=1)=1/4, quad P(X=2)=1/8, quad P(X=3)=1/8. $
最后一项表示三个路口全为绿灯.
]

]

#ezexam.question(label: n => [十三、])[
（6分）

假设随机变量 $X$ 和 $Y$ 在圆域 $x^2+y^2<=r^2$ 上服从联合均匀分布.

（1）求 $X$ 和 $Y$ 的相关系数 $rho$；

（2）问 $X$ 和 $Y$ 是否独立？

#ezexam.solution(show-number: false)[
联合密度为 $p(x,y)=1/(pi r^2)$（圆域内），圆域外为0.边缘密度分别为
$ p_1(x)=2/(pi r^2)sqrt(r^2-x^2) quad (abs(x)<=r), $
$ p_2(y)=2/(pi r^2)sqrt(r^2-y^2) quad (abs(y)<=r), $
在相应区间外为0.由对称性 $E X=E Y=0$，且
$ op("cov")(X,Y)=E(X Y)=1/(pi r^2)integral.double_(x^2+y^2<=r^2)x y dif x dif y=0. $
所以 $rho=0$.但是联合密度不等于边缘密度之积，例如在正方形内而圆外的区域，前者为0而后者为正，故 $X,Y$ 不独立.
]

]

#ezexam.question(label: n => [十四、])[
（5分）

设总体 $X$ 的概率密度为
$ p(x;lambda)=cases(lambda alpha x^(alpha-1)e^(-lambda x^alpha)&x>0,0&x<=0), $
其中 $lambda>0$ 是未知参数，$alpha>0$ 是已知常数.试根据来自总体 $X$ 的简单随机样本 $X_1,X_2,dots,X_n$，求 $lambda$ 的最大似然估计量 $hat(lambda)$.

#ezexam.solution(show-number: false)[
似然函数为
$ L(lambda)=(lambda alpha)^n e^(-lambda sum_(i=1)^n X_i^alpha) product_(i=1)^n X_i^(alpha-1). $
对数似然方程为 $dif/(dif lambda)ln L=n/lambda-sum_(i=1)^n X_i^alpha=0$，故
$ hat(lambda)=n/(sum_(i=1)^n X_i^alpha). $
又 $dif^2/(dif lambda^2)ln L=-n/lambda^2<0$，故该驻点确为最大值点.
]
]

