#import "../template.typ": exam
#show: exam.with(year: 1995, subject: "五", title: "1995年全国工学、经济学硕士研究生入学考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])


= 一、填空题（15分，每小题3分）
#ezexam.counter-question.step()

（1）设 $lim_(x arrow infinity)((1+x)/x)^(a x)=integral_(-infinity)^a t e^t dif t$，则 $a=$ #fillin(len: 4em)[].

（2）设 $Z=x y f(y/x)$，$f(u)$ 可导，则 $x Z_x+y Z_y=$ #fillin(len: 4em)[].

（3）设 $f'(ln x)=1+x$，则 $f(x)=$ #fillin(len: 4em)[].

（4）设 $A=mat(1,0,0;2,2,0;3,4,5)$，$A^*$ 是 $A$ 的伴随矩阵，则 $(A^*)^(-1)=$ #fillin(len: 4em)[].

（5）设随机变量 $X$ 的概率密度为 $f(x)=cases(1+x & quad -1<=x<=0,1-x & quad 0<x<=1,0 & quad "其他")$，则 $D X=$ #fillin(len: 4em)[].

= 二、选择题（15分，每小题3分）
#ezexam.counter-question.step()

（1）设 $f(x)$ 为可导函数，且满足 $lim_(x arrow 0)(f(1)-f(1-x))/(2x)=-1$，则曲线 $y=f(x)$ 在点 $(1,f(1))$ 处的切线斜率为（　）.
#choices[2][$-1$][$1/2$][$-2$]

（2）下列广义积分发散的是（　）.
#choices[$integral_(-1)^1 1/sin x dif x$][$integral_(-1)^1 1/sqrt(1-x^2)dif x$][$integral_0^infinity e^(-x^2)dif x$][$integral_2^infinity 1/(x ln^2 x)dif x$]

（3）设 $n$ 维行向量 $alpha=(1/2,0,dots,0,1/2)$，$A=I-alpha^T alpha$，$B=I+2alpha^T alpha$，其中 $I$ 为 $n$ 阶单位矩阵，则 $A B=$（　）.
#choices[0][$-I$][$I$][$I+alpha^T alpha$]

（4）设矩阵 $A_(m times n)$ 的秩为 $op("rank")A=m<n$，$I_m$ 为 $m$ 阶单位矩阵，下述结论中正确的是（　）.
#choices[$A$ 的任意 $m$ 个列向量必线性无关][$A$ 的任意一个 $m$ 阶子式不等于零][$A$ 通过初等行变换，必可以化为 $(I_m,0)$ 的形式][非齐次线性方程组 $A X=b$ 必有无穷多解]

（5）设随机变量 $X$ 服从正态分布 $N(mu,sigma^2)$，则随 $sigma$ 的增大，概率 $P(abs(X-mu)<sigma)$（　）.
#choices[单调增大][单调减少][保持不变][增减不定]

#ezexam.question(label: n => [三、])[
（6分）

设 $f(x)=cases(2(1-cos x)/x^2 & quad x<0,1 & quad x=0,1/x integral_0^x cos(t^2)dif t & quad x>0)$.试讨论 $f(x)$ 在 $x=0$ 处的连续性和可导性.

]

#ezexam.question(label: n => [四、])[
（6分）

计算不定积分 $integral (arcsin x)^2 dif x$.

]

#ezexam.question(label: n => [五、])[
（7分）

设 $f(x),g(x)$ 在区间 $[-a,a]$（$a>0$）上连续，$g(x)$ 为偶函数，且 $f(x)+f(-x)=A$（$A$ 为常数）.

（1）证明 $integral_(-a)^a f(x)g(x)dif x=A integral_0^a g(x)dif x$；

（2）利用（1）的结论计算 $integral_(-pi/2)^(pi/2)abs(sin x)arctan(e^x)dif x$.

]

#ezexam.question(label: n => [六、])[
（6分）

设某产品的需求函数为 $Q=Q(P)$，收益函数为 $R=P Q$，其中 $P$ 为产品价格，$Q$ 为需求量（产品产量），$Q(P)$ 是单调减函数.如果当价格为 $P_0$、对应产量为 $Q_0$ 时，边际收益 $((dif R)/(dif Q))|_(Q=Q_0)=a>0$，收益对价格的边际效应 $((dif R)/(dif P))|_(P=P_0)=c<0$，需求对价格的弹性为 $E_P=b>1$.求 $P_0,Q_0$.

]

#ezexam.question(label: n => [七、])[
（5分）

设 $f(x)$ 在 $[a,b]$ 上连续，在 $(a,b)$ 内可导.证明至少存在一点 $xi in (a,b)$，使 $(b f(b)-a f(a))/(b-a)=f(xi)+xi f'(xi)$.

]

#ezexam.question(label: n => [八、])[
（9分）

求函数 $z=f(x,y)=x^2 y(4-x-y)$ 在区域 $D={(x,y) | x>=0, y>=0, x+y<=6}$ 内的极值以及最大值、最小值.

]

#ezexam.question(label: n => [九、])[
（8分）

讨论 $lambda$ 取何值时，线性方程组
$ cases(lambda x_1+x_2+x_3=lambda-3,x_1+lambda x_2+x_3=-2,x_1+x_2+lambda x_3=-2) $
无解、有唯一解、有无穷多解；有无穷多解时，用其导出组的基础解系表示全部解.

]

#ezexam.question(label: n => [十、])[
（8分）

已知三阶矩阵 $A$ 满足 $A alpha_i=i alpha_i$（$i=1,2,3$），其中 $alpha_1=(1,2,2)^T$，$alpha_2=(2,-2,1)^T$，$alpha_3=(-2,-1,2)^T$.求 $A$.

]

#ezexam.question(label: n => [十一、])[
（8分）

假设一厂家生产的每台仪器，以概率0.70可以直接出厂；以概率0.30需进一步调试，经调试后以概率0.80可以出厂，以概率0.20定为不合格品不能出厂.现该厂新生产了 $n$（$n>=2$）台仪器，假设各台仪器的生产过程相互独立.求：

（1）全部能出厂的概率 $alpha$；

（2）其中恰好有两件不能出厂的概率 $beta$；

（3）其中至少有两件不能出厂的概率 $theta$.

]

#ezexam.question(label: n => [十二、])[
（7分）

设随机变量 $X$ 服从参数为2的指数分布.证明随机变量 $Y=1-e^(-2X)$ 服从区间 $(0,1)$ 上的均匀分布.
]

