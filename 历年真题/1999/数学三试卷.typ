#import "../template.typ": exam
#show: exam.with(year: 1999, subject: "三", title: "1999年全国硕士研究生入学考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)


= 一、填空题（本题共5小题，每小题3分，满分15分）
#ezexam.counter-question.step()

（1）设 $f(x)$ 有一个原函数 $frac(sin x,x)$，则 $integral_(frac(pi,2))^pi x f'(x)dif x=$ #fillin(len: 3em)[].

（2）$sum_(n=1)^infinity n(frac(1,2))^(n-1)=$ #fillin(len: 3em)[].

（3）设 $A=mat(1,0,1;0,2,0;1,0,1)$，而 $n>=2$ 为正整数，则 $A^n-2A^(n-1)=$ #fillin(len: 3em)[].

（4）在天平上重复称量一重为 $a$ 的物品，假设各次称量结果相互独立且同服从正态分布 $N(a,0.2^2)$.若以 $overline(X)_n$ 表示 $n$ 次称量结果的算术平均值，则为使 $P{|overline(X)_n-a|<0.1}>=0.95$，$n$ 的最小值应不小于自然数 #fillin(len: 3em)[].

（5）设随机变量 $X_(i j)$（$i,j=1,2,dots,n;n>=2$）独立同分布，$E X_(i j)=2$，则行列式
$ Y=mat(delim:"|",X_(11),X_(12),dots,X_(1n);X_(21),X_(22),dots,X_(2n);dots.v,dots.v,,dots.v;X_(n 1),X_(n 2),dots,X_(n n)) $
的数学期望 $E Y=$ #fillin(len: 3em)[].

= 二、选择题（本题共5小题，每小题3分，满分15分）
#ezexam.counter-question.step()

（1）设 $f(x)$ 是连续函数，$F(x)$ 是 $f(x)$ 的原函数，则（　）.
#choices[当 $f(x)$ 是奇函数时，$F(x)$ 必是偶函数.][当 $f(x)$ 是偶函数时，$F(x)$ 必是奇函数.][当 $f(x)$ 是周期函数时，$F(x)$ 必是周期函数.][当 $f(x)$ 是单调增函数时，$F(x)$ 必是单调增函数.]

（2）设 $f(x,y)$ 连续，且 $f(x,y)=x y+integral.double_D f(u,v)dif u dif v$，其中 $D$ 是由 $y=0,y=x^2,x=1$ 所围区域，则 $f(x,y)$ 等于（　）.
#choices[$x y$.][$2x y$.][$x y+frac(1,8)$.][$x y+1$.]

（3）设向量 $bold(beta)$ 可由向量组 $bold(alpha)_1,bold(alpha)_2,dots,bold(alpha)_m$ 线性表示，但不能由向量组（Ⅰ）：$bold(alpha)_1,bold(alpha)_2,dots,bold(alpha)_(m-1)$ 线性表示，记向量组（Ⅱ）：$bold(alpha)_1,bold(alpha)_2,dots,bold(alpha)_(m-1),bold(beta)$，则（　）.
#choices[$bold(alpha)_m$ 不能由（Ⅰ）线性表示，也不能由（Ⅱ）线性表示.][$bold(alpha)_m$ 不能由（Ⅰ）线性表示，但可由（Ⅱ）线性表示.][$bold(alpha)_m$ 可由（Ⅰ）线性表示，也可由（Ⅱ）线性表示.][$bold(alpha)_m$ 可由（Ⅰ）线性表示，但不可由（Ⅱ）线性表示.]

（4）设 $A,B$ 为 $n$ 阶矩阵，且 $A$ 与 $B$ 相似，$E$ 为 $n$ 阶单位矩阵，则（　）.
#choices[$lambda E-A=lambda E-B$.][$A$ 与 $B$ 有相同的特征值和特征向量.][$A$ 与 $B$ 都相似于一个对角矩阵.][对任意常数 $t$，$t E-A$ 与 $t E-B$ 相似.]

（5）设随机变量 $X_i tilde mat(delim:"(",-1,0,1;frac(1,4),frac(1,2),frac(1,4))$（$i=1,2$），且满足 $P{X_1 X_2=0}=1$，则 $P{X_1=X_2}$ 等于（　）.
#choices[0.][$frac(1,4)$.][$frac(1,2)$.][1.]

#ezexam.question(label: n => [三、])[
（本题满分6分）

曲线 $y=frac(1,sqrt(x))$ 的切线与 $x$ 轴和 $y$ 轴围成一个图形，记切点的横坐标为 $a$.试求切线方程和这个图形的面积.当切点沿曲线趋于无穷远时，该面积的变化趋势如何？


]

#ezexam.question(label: n => [四、])[
（本题满分7分）

计算二重积分 $integral.double_D y dif x dif y$，其中 $D$ 是由直线 $x=-2,y=0,y=2$ 以及曲线 $x=-sqrt(2y-y^2)$ 所围成的平面区域.


]

#ezexam.question(label: n => [五、])[
（本题满分6分）设生产某种产品必须投入两种要素，$x_1$ 和 $x_2$ 分别为两要素的投入量，$Q$ 为产出量，若生产函数为 $Q=2x_1^alpha x_2^beta$，其中 $alpha,beta$ 为正常数，且 $alpha+beta=1$.假设两种要素的价格分别为 $p_1$ 和 $p_2$，试问：当产出量为12时，两要素各投入多少可以使得投入总费用最小？


]

#ezexam.question(label: n => [六、])[
（本题满分6分）设有微分方程 $y'-2y=phi(x)$，其中
$ phi(x)=cases(2 quad "若" x<1,0 quad "若" x>1). $
试求在 $(-infinity,+infinity)$ 内的连续函数 $y=y(x)$，使之在 $(-infinity,1)$ 和 $(1,+infinity)$ 内都满足所给方程，且满足条件 $y(0)=0$.


]

#ezexam.question(label: n => [七、])[
（本题满分6分）设函数 $f(x)$ 连续，且 $integral_0^x t f(2x-t)dif t=frac(1,2)arctan x^2$.已知 $f(1)=1$，求 $integral_1^2 f(x)dif x$ 的值.


]

#ezexam.question(label: n => [八、])[
（本题满分7分）设函数 $f(x)$ 在区间 $[0,1]$ 上连续，在 $(0,1)$ 内可导，且 $f(0)=f(1)=0$，$f(frac(1,2))=1$.

试证：（1）存在 $eta in (frac(1,2),1)$ 使 $f(eta)=eta$；

（2）对任意实数 $lambda$，必存在 $xi in (0,eta)$ 使得 $f'(xi)-lambda[f(xi)-xi]=1$.


]

#ezexam.question(label: n => [九、])[
（本题满分9分）设矩阵 $A=mat(a,-1,c;5,b,3;1-c,0,-a)$，且 $|A|=-1$.又设 $A$ 的伴随矩阵 $A^*$ 有特征值 $lambda_0$，属于 $lambda_0$ 的特征向量为 $alpha=(-1,-1,1)^T$，求 $a,b,c$ 及 $lambda_0$ 的值.


]

#ezexam.question(label: n => [十、])[
（本题满分7分）设 $A$ 为 $m times n$ 实矩阵，$E$ 为 $n$ 阶单位矩阵.已知矩阵 $B=lambda E+A^T A$，试证：当 $lambda>0$ 时，矩阵 $B$ 为正定矩阵.


]

#ezexam.question(label: n => [十一、])[
（本题满分9分）假设二维随机变量 $(X,Y)$ 在矩形 $G={(x,y)|0<=x<=2,0<=y<=1}$ 上服从均匀分布.记
$ U=cases(0 quad "若" X<=Y,1 quad "若" X>Y),quad V=cases(0 quad "若" X<=2Y,1 quad "若" X>2Y). $
（1）求 $U$ 和 $V$ 的联合分布；

（2）求 $U$ 和 $V$ 的相关系数 $r$.


]

#ezexam.question(label: n => [十二、])[
（本题满分7分）设 $X_1,X_2,dots,X_9$ 是来自正态总体 $X$ 的简单随机样本，
$ Y_1=frac(1,6)(X_1+dots+X_6),quad Y_2=frac(1,3)(X_7+X_8+X_9), $
$ S^2=frac(1,2)sum_(i=7)^9(X_i-Y_2)^2,quad Z=frac(sqrt(2)(Y_1-Y_2),S), $
证明统计量 $Z$ 服从自由度为2的 $t$ 分布.

]
