#import "../template.typ": exam
#show: exam.with(year: 2003, subject: "四", title: "2003年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#ezexam.answer-state.update(false)


= 一、填空题（本题共6小题，每小题4分，满分24分）
#ezexam.counter-question.step()

（1）极限 $lim_(x->0) [1+ln(1+x)]^(2/x)=$#h(3em).

（2）$integral_(-1)^1 (|x|+x)e^(-|x|) dif x=$#h(3em).

（3）设 $a>0,f(x)=g(x)=cases(a & 0<=x<=1,0 & #text[其他])$，而 $D$ 表示全平面，则 $I=integral.double_D f(x)g(y-x) dif x dif y=$#h(3em).

（4）设 $A,B$ 均为三阶矩阵，$E$ 是三阶单位矩阵.已知 $A B=2A+B,B=mat(2,0,2;0,4,0;2,0,2)$，则 $(A-E)^(-1)=$#h(3em).

（5）设 $n$ 维向量 $alpha=(a,0,dots,0,a)^T,a<0$；$E$ 为 $n$ 阶单位矩阵，矩阵
$ A=E-alpha alpha^T,B=E+1/a alpha alpha^T, $
其中 $A$ 的逆矩阵为 $B$，则 $a=$#h(3em).

（6）设随机变量 $X$ 和 $Y$ 的相关系数为0.5，$E X=E Y=0,E X^2=E Y^2=2$，则 $E(X+Y)^2=$#h(3em).

= 二、选择题（本题共6小题，每小题4分，满分24分）
#ezexam.counter-question.step()

（1）曲线 $y=x e^(1/x^2)$（　）.
#choices[仅有水平渐近线.][仅有铅直渐近线.][既有铅直又有水平渐近线.][既有铅直又有斜渐近线.]

（2）设函数 $f(x)=|x^3-1| phi(x)$，其中 $phi(x)$ 在 $x=1$ 处连续，则 $phi(1)=0$ 是 $f(x)$ 在 $x=1$ 处可导的（　）.
#choices[充分必要条件.][必要但非充分条件.][充分但非必要条件.][既非充分也非必要条件.]

（3）设可微函数 $f(x,y)$ 在点 $(x_0,y_0)$ 取得极小值，则下列结论正确的是（　）.
#choices[$f(x_0,y)$ 在 $y=y_0$ 处的导数大于零.][$f(x_0,y)$ 在 $y=y_0$ 处的导数等于零.][$f(x_0,y)$ 在 $y=y_0$ 处的导数小于零.][$f(x_0,y)$ 在 $y=y_0$ 处的导数不存在.]

（4）设矩阵 $B=mat(0,0,1;0,1,0;1,0,0)$，已知矩阵 $A$ 相似于 $B$，则 $op("秩")(A-2E)$ 与 $op("秩")(A-E)$ 之和等于（　）.
#choices[2.][3.][4.][5.]

（5）对于任意二事件 $A$ 和 $B$，（　）.
#choices[若 $A B != emptyset$，则 $A,B$ 一定独立.][若 $A B != emptyset$，则 $A,B$ 有可能独立.][若 $A B != emptyset$，则 $B,B$ 一定独立.][若 $A B != emptyset$，则 $A,B$ 一定不独立.]

（6）设随机变量 $X$ 和 $Y$ 都服从正态分布，且它们不相关，则（　）.
#choices[$X$ 与 $Y$ 一定独立.][$(X,Y)$ 服从二维正态分布.][$X$ 与 $Y$ 未必独立.][$X+Y$ 服从一维正态分布.]

#ezexam.question(label: n => [三、])[
（本题满分8分）设 $f(x)=1/(sin pi x)-1/(pi x)-1/(pi(1-x)),x in (0,1/2]$，试补充定义 $f(0)$，使得 $f(x)$ 在 $[0,1/2]$ 上连续.


]

#ezexam.question(label: n => [四、])[
（本题满分8分）设 $f(u,v)$ 具有二阶连续偏导数，且满足 $(partial^2 f)/(partial u^2)+(partial^2 f)/(partial v^2)=1$，又 $g(x,y)=f[x y,1/2(x^2-y^2)]$，求 $(partial^2 g)/(partial x^2)+(partial^2 g)/(partial y^2)$.


]

#ezexam.question(label: n => [五、])[
（本题满分8分）计算二重积分
$ I=integral.double_D e^(-(x^2+y^2-pi)) sin(x^2+y^2) dif x dif y, $
其中积分区域 $D={(x,y) | x^2+y^2<=pi}$.


]

#ezexam.question(label: n => [六、])[
（本题满分9分）设 $a>1,f(t)=a^t-a t$ 在 $(-infinity,+infinity)$ 内的驻点为 $t(a)$.问 $a$ 为何值时，$t(a)$ 最小？并求出最小值.


]

#ezexam.question(label: n => [七、])[
（本题满分9分）设 $y=f(x)$ 是第一象限内连接点 $A(0,1),B(1,0)$ 的一段连续曲线，$M(x,y)$ 为该曲线上任意一点，点 $C$ 为 $M$ 在 $x$ 轴上的投影，$O$ 为坐标原点.若梯形 $O C M A$ 的面积与曲边三角形 $C B M$ 的面积之和为 $x^3/6+1/3$，求 $f(x)$ 的表达式.


]

#ezexam.question(label: n => [八、])[
（本题满分8分）设某商品从时刻0到时刻 $t$ 的销售量为 $x(t)=k t,t in [0,T],(k>0)$.欲在 $T$ 时将数量为 $A$ 的该商品销售完，试求

（1）$t$ 时的商品剩余量，并确定 $k$ 的值；

（2）在时间段 $[0,T]$ 上的平均剩余量.


]

#ezexam.question(label: n => [九、])[
（本题满分13分）设有向量组（Ⅰ）：$alpha_1=(1,0,2)^T,alpha_2=(1,1,3)^T,alpha_3=(1,-1,a+2)^T$ 和向量组（Ⅱ）：$beta_1=(1,2,a+3)^T,beta_2=(2,1,a+6)^T,beta_3=(2,1,a+4)^T$.试问：当 $a$ 为何值时，向量组（Ⅰ）与（Ⅱ）等价？当 $a$ 为何值时，向量组（Ⅰ）与（Ⅱ）不等价？


]

#ezexam.question(label: n => [十、])[
（本题满分13分）设矩阵 $A=mat(2,1,1;1,2,1;1,1,a)$ 可逆，向量 $alpha=mat(1;b;1)$ 是矩阵 $A^*$ 的一个特征向量，$lambda$ 是 $alpha$ 对应的特征值，其中 $A^*$ 是矩阵 $A$ 的伴随矩阵.试求 $a,b$ 和 $lambda$ 的值.


]

#ezexam.question(label: n => [十一、])[
（本题满分13分）设随机变量 $X$ 的概率密度为
$ f(x)=cases(1/(3 root(3,x^2)) & x in [1,8],0 & #text[其他]); $
$F(x)$ 是 $X$ 的分布函数.求随机变量 $Y=F(X)$ 的分布函数.


]

#ezexam.question(label: n => [十二、])[
（本题满分13分）对于任意二事件 $A$ 和 $B$，$0<P(A)<1,0<P(B)<1$，
$ rho=(P(A B)-P(A)P(B))/sqrt(P(A)P(B)P(overline(A))P(overline(B))) $
称做事件 $A$ 和 $B$ 的相关系数.

（1）证明事件 $A$ 和 $B$ 独立的充分必要条件是其相关系数等于零；

（2）利用随机变量相关系数的基本性质，证明 $|rho|<=1$.

]
