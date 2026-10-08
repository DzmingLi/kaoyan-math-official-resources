#import "../template.typ": exam
#show: exam.with(year: 1993, subject: "五", title: "1993年全国工学、经济学硕士研究生入学考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])


= 一、填空题（15分，每小题3分）
#ezexam.counter-question.step()

（1）$lim_(n arrow infinity)[sqrt(1+2+dots+n)-sqrt(1+2+dots+(n-1))]=$ #fillin(len: 4em)[].

（2）已知 $y=f((3x-2)/(3x+2))$，$f'(x)=arcsin(x^2)$，则 $y'|_(x=0)=$ #fillin(len: 4em)[].

（3）$integral dif x/((2-x)sqrt(1-x))=$ #fillin(len: 4em)[].

（4）设4阶方阵 $A$ 的秩为2，则其伴随矩阵 $A^*$ 的秩为 #fillin(len: 4em)[].

（5）设10件产品中有4件不合格品，从中任取两件，已知所取两件产品中有一件是不合格品，则另一件也是不合格品的概率为 #fillin(len: 4em)[].

= 二、选择题（15分，每小题3分）
#ezexam.counter-question.step()

（1）设函数 $f(x)=cases(sqrt(abs(x))sin(1/x^2) & x≠0, 0 & x=0)$，则 $f(x)$ 在点 $x=0$ 处（　）.
#choices[极限不存在][极限存在但不连续][连续但不可导][可导]

（2）设 $f(x)$ 为连续函数，且 $F(x)=integral_(1/x)^(ln x)f(t)dif t$，则 $F'(x)$ 等于（　）.
#choices[$1/x f(ln x)+1/x^2 f(1/x)$][$1/x f(ln x)+f(1/x)$][$1/x f(ln x)-1/x^2 f(1/x)$][$f(ln x)-f(1/x)$]

（3）若 $alpha_1,alpha_2,alpha_3,beta_1,beta_2$ 都是四维列向量，且四阶行列式 $det(alpha_1,alpha_2,alpha_3,beta_1)=m$，$det(alpha_1,alpha_2,beta_2,alpha_3)=n$，则四阶行列式 $det(alpha_3,alpha_2,alpha_1,beta_1+beta_2)$ 等于（　）.
#choices[$m+n$][$-(m+n)$][$n-m$][$m-n$]

（4）设 $lambda=2$ 是非奇异矩阵 $A$ 的一个特征值，则矩阵 $(1/3 A^2)^(-1)$ 有一特征值等于（　）.
#choices[$4/3$][$3/4$][$1/2$][$1/4$]

（5）设随机变量 $X$ 与 $Y$ 均服从正态分布，$X∼N(mu,4^2)$，$Y∼N(mu,5^2)$；记 $p_1=P(X<=mu-4)$，$p_2=P(Y>=mu+5)$，则（　）.
#choices[对任何实数 $mu$，都有 $p_1=p_2$][对任何实数 $mu$，都有 $p_1<p_2$][只对 $mu$ 的个别值，才有 $p_1=p_2$][对任何实数 $mu$，都有 $p_1>p_2$]

#ezexam.question(label: n => [三、])[
（5分）

设 $z=f(x,y)$ 是由方程 $z-y-x+x e^(z-y-x)=0$ 所确定的二元函数，求 $dif z$.

]

#ezexam.question(label: n => [四、])[
（7分）

已知 $lim_(x arrow infinity)((x-a)/(x+a))^x=integral_a^(+infinity)4x^2 e^(-2x)dif x$，求常数 $a$ 的值.

]

#ezexam.question(label: n => [五、])[
（7分）

已知某厂生产 $x$ 件产品的成本为 $C=25000+200x+1/40 x^2$（元）.问：

（1）要使平均成本最小，应生产多少件产品？

（2）若产品以每件500元售出，要使利润最大，应生产多少件产品？

]

#ezexam.question(label: n => [六、])[
（6分）

设 $p,q$ 是大于1的常数，且 $1/p+1/q=1$.证明：对于任意 $x>0$，有 $1/p x^p+1/q>=x$.

]

#ezexam.question(label: n => [七、])[
（13分）

运用导数的知识作函数 $y=(x+6)e^(1/x)$ 的图形.

]

#ezexam.question(label: n => [八、])[
（8分）

已知三阶矩阵 $A$ 的逆矩阵为
$ A^(-1)=mat(1,1,1;1,2,1;1,1,3), $
试求伴随矩阵 $A^*$ 的逆矩阵.

]

#ezexam.question(label: n => [九、])[
（8分）

设 $A$ 是 $m times n$ 矩阵，$B$ 是 $n times m$ 矩阵，$E$ 是 $n$ 阶单位矩阵（$m>n$）.已知 $B A=E$，试判断 $A$ 的列向量组是否线性相关？为什么？

]

#ezexam.question(label: n => [十、])[
（8分）

设随机变量 $X$ 和 $Y$ 独立，都在区间 $[1,3]$ 上服从均匀分布；引进事件 $A=\{X<=a\}$、$B=\{Y>a\}$.

（1）已知 $P(A∪B)=7/9$，求常数 $a$.

（2）求 $1/X$ 的数学期望.

]

#ezexam.question(label: n => [十一、])[
（8分）

假设一大型设备在任何长为 $t$ 的时间内发生故障的次数 $N(t)$ 服从参数为 $lambda t$ 的泊松分布.

（1）求相继两次故障之间时间间隔 $T$ 的概率分布；

（2）求在设备已经无故障工作8小时的情形下，再无故障运行8小时的概率 $Q$.
]

