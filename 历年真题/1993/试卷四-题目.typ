#import "../template.typ": exam
#show: exam.with(year: 1993, subject: "四", title: "1993年全国工学、经济学硕士研究生入学考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])


= 一、填空题（15分，每小题3分）
#ezexam.counter-question.step()

（1）$lim_(x arrow infinity)(3x^2+5)/(5x+3) sin(2/x)=$ #fillin(len: 4em)[].

（2）已知 $y=f((3x-2)/(3x+2))$，$f'(x)=arctan(x^2)$，则 $y'|_(x=0)=$ #fillin(len: 4em)[].

（3）级数 $sum_(n=0)^infinity (ln 3)^n/2^n$ 的和为 #fillin(len: 4em)[].

（4）设4阶方阵 $A$ 的秩为2，则其伴随矩阵 $A^*$ 的秩为 #fillin(len: 4em)[].

（5）设总体 $X$ 的方差为1，根据来自 $X$ 的容量为100的简单随机样本，测得样本均值为5，则 $X$ 的数学期望的置信度近似等于0.95的置信区间为 #fillin(len: 4em)[].

= 二、选择题（15分，每小题3分）
#ezexam.counter-question.step()

（1）设函数 $f(x)=cases(sqrt(abs(x))sin(1/x^2) & x≠0, 0 & x=0)$，则 $f(x)$ 在点 $x=0$ 处（　）.
#choices[极限不存在][极限存在但不连续][连续但不可导][可导]

（2）设 $f(x)$ 为连续函数，且 $F(x)=integral_(1/x)^(ln x)f(t)dif t$，则 $F'(x)$ 等于（　）.
#choices[$1/x f(ln x)+1/x^2 f(1/x)$][$f(ln x)+f(1/x)$][$1/x f(ln x)-1/x^2 f(1/x)$][$f(ln x)-f(1/x)$]

（3）$n$ 阶方阵 $A$ 具有 $n$ 个不同的特征值是 $A$ 与对角阵相似的（　）.
#choices[充分必要条件][充分而非必要条件][必要而非充分条件][既非充分也非必要条件]

（4）假设事件 $A$ 和 $B$ 满足 $P(B|A)=1$，则（　）.
#choices[$A$ 是必然事件][$P(B|overline(A))=0$][$A⊃B$][$A⊂B$]

（5）设随机变量 $X$ 的密度函数为 $phi(x)$，且 $phi(-x)=phi(x)$，$F(x)$ 是 $X$ 的分布函数，则对任意实数 $a$，有（　）.
#choices[$F(-a)=1-integral_0^a phi(x)dif x$][$F(-a)=1/2-integral_0^a phi(x)dif x$][$F(-a)=F(a)$][$F(-a)=2F(a)-1$]

#ezexam.question(label: n => [三、])[
（5分）

设 $z=f(x,y)$ 是由方程 $z-y-x+x e^(z-y-x)=0$ 所确定的二元函数，求 $dif z$.

]

#ezexam.question(label: n => [四、])[
（7分）

已知 $lim_(x arrow infinity)((x-a)/(x+a))^x=integral_a^(+infinity)4x^2 e^(-2x)dif x$，求常数 $a$ 的值.

]

#ezexam.question(label: n => [五、])[
（9分）

设某产品的成本函数为 $C=a q^2+b q+c$，需求函数为 $q=(d-p)/e$.其中 $C$ 为成本，$q$ 为需求量（即产量），$p$ 为单价；$a,b,c,d,e$ 都是正的常数，且 $d>b$.求：

（1）利润最大时的产量及最大利润；

（2）需求对价格的弹性；

（3）需求对价格弹性的绝对值为1时的产量.

]

#ezexam.question(label: n => [六、])[
（8分）

假设：（1）函数 $y=f(x)$（$0<=x<infinity$）满足条件 $f(0)=0$ 和 $0<=f(x)<=e^x-1$；（2）平行于 $y$ 轴的动直线 $M N$ 与曲线 $y=f(x)$ 和 $y=e^x-1$ 分别相交于点 $P_1$ 和 $P_2$；（3）曲线 $y=f(x)$、直线 $M N$ 与 $x$ 轴所围封闭图形的面积 $S$ 恒等于线段 $P_1 P_2$ 的长度.求函数 $y=f(x)$ 的表达式.

]

#ezexam.question(label: n => [七、])[
（6分）

假设函数 $f(x)$ 在 $[0,1]$ 上连续，在 $(0,1)$ 内二阶可导.过点 $A(0,f(0))$ 与 $B(1,f(1))$ 的直线与曲线 $y=f(x)$ 相交于点 $C(c,f(c))$，其中 $0<c<1$.

证明：在 $(0,1)$ 内至少存在一点 $xi$ 使 $f''(xi)=0$.

]

#ezexam.question(label: n => [八、])[
（10分）

$k$ 为何值时，线性方程组
$ cases(x_1+x_2+k x_3=4,-x_1+k x_2+x_3=k^2,x_1-x_2+2x_3=-4) $
有唯一解、无解、有无穷多组解？在有解情况下，求出其全部解.

]

#ezexam.question(label: n => [九、])[
（9分）

设二次型 $f=x_1^2+x_2^2+x_3^2+2alpha x_1 x_2+2beta x_2 x_3+2x_1 x_3$ 经正交变换 $X=P Y$ 化成 $f=y_2^2+2y_3^2$，其中 $X=(x_1,x_2,x_3)^T$ 和 $Y=(y_1,y_2,y_3)^T$ 是三维列向量，$P$ 是3阶正交矩阵.试求常数 $alpha,beta$.

]

#ezexam.question(label: n => [十、])[
（8分）

设随机变量 $X$ 和 $Y$ 同分布，$X$ 的概率密度为
$ f(x)=cases(3/8 x^2 & 0<x<2, 0 & "其他"). $
（1）已知事件 $A=\{X>a\}$ 和 $B=\{Y>a\}$ 独立，且 $P(A∪B)=3/4$，求常数 $a$；

（2）求 $1/X^2$ 的数学期望.

]

#ezexam.question(label: n => [十一、])[
（8分）

假设一大型设备在任何长为 $t$ 的时间内发生故障的次数 $N(t)$ 服从参数为 $lambda t$ 的泊松分布.

（1）求相继两次故障之间时间间隔 $T$ 的概率分布；

（2）求在设备已经无故障工作8小时的情形下，再无故障运行8小时的概率 $Q$.
]

