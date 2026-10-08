#import "../template.typ": exam
#show: exam.with(year: 1995, subject: "四", title: "1995年全国工学、经济学硕士研究生入学考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])


= 一、填空题（15分，每小题3分）
#ezexam.counter-question.step()

（1）设 $f(x)=(1-x)/(1+x)$，则 $f^(n)(x)=$ #fillin(len: 4em)[].

（2）设 $Z=x y f(y/x)$，$f(u)$ 可导，则 $x Z_x+y Z_y=$ #fillin(len: 4em)[].

（3）设 $f'(ln x)=1+x$，则 $f(x)=$ #fillin(len: 4em)[].

（4）设 $A=mat(1,0,0;2,2,0;3,4,5)$，$A^*$ 是 $A$ 的伴随矩阵，则 $(A^*)^(-1)=$ #fillin(len: 4em)[].

（5）设 $X_1,dots,X_n$ 是来自正态总体 $N(mu,sigma^2)$ 的简单随机样本，其中参数 $mu$ 和 $sigma^2$ 未知.记 $overline(X)=1/n sum_(i=1)^n X_i$，$Q^2=sum_(i=1)^n (X_i-overline(X))^2$，则假设 $H_0:mu=0$ 的 $t$ 检验使用统计量 $t=$ #fillin(len: 4em)[].

= 二、选择题（15分，每小题3分）
#ezexam.counter-question.step()

（1）设 $f(x)$ 为可导函数，且满足 $lim_(x arrow 0)(f(1)-f(1-x))/(2x)=-1$，则曲线 $y=f(x)$ 在点 $(1,f(1))$ 处的切线斜率为（　）.
#choices[2][$-1$][$1/2$][$-2$]

（2）下列广义积分发散的是（　）.
#choices[$integral_(-1)^1 1/sin x dif x$][$integral_(-1)^1 1/sqrt(1-x^2)dif x$][$integral_0^infinity e^(-x^2)dif x$][$integral_2^infinity 1/(x ln^2 x)dif x$]

（3）设矩阵 $A_(m times n)$ 的秩为 $op("rank")A=m<n$，$I_m$ 为 $m$ 阶单位矩阵，下述结论中正确的是（　）.
#choices[$A$ 的任意 $m$ 个列向量必线性无关][$A$ 的任意一个 $m$ 阶子式不等于零][若矩阵 $B$ 满足 $B A=0$，则 $B=0$][$A$ 通过初等行变换，必可以化为 $(I_m,0)$ 的形式]

（4）设随机变量 $X,Y$ 独立同分布.记 $U=X-Y$，$V=X+Y$，则随机变量 $U,V$ 必然（　）.
#choices[不独立][独立][相关系数不为零][相关系数为零]

（5）设随机变量 $X$ 服从正态分布 $N(mu,sigma^2)$，则随 $sigma$ 的增大，概率 $P(abs(X-mu)<sigma)$（　）.
#choices[单调增大][单调减少][保持不变][增减不定]

#ezexam.question(label: n => [三、])[
（6分）

设 $f(x)=cases(2(1-cos x)/x^2 & quad x<0,1 & quad x=0,1/x integral_0^x cos(t^2)dif t & quad x>0)$.试讨论 $f(x)$ 在 $x=0$ 处的连续性和可导性.

]

#ezexam.question(label: n => [四、])[
（6分）

已知连续函数 $f(x)$ 满足 $f(x)=integral_0^(3x)f(t/3)dif t+e^(2x)$，求 $f(x)$.

]

#ezexam.question(label: n => [五、])[
（6分）

将函数 $y=ln(1-x-2x^2)$ 展成 $x$ 的幂级数，并指出其收敛区间.

]

#ezexam.question(label: n => [六、])[
（5分）

计算 $integral_(-infinity)^(+infinity)integral_(-infinity)^(+infinity)min{x,y}e^(-(x^2+y^2))dif x dif y$.

]

#ezexam.question(label: n => [七、])[
（6分）

设某产品的需求函数为 $Q=Q(P)$，收益函数为 $R=P Q$，其中 $P$ 为产品价格，$Q$ 为需求量（产品产量），$Q(P)$ 是单调减函数.如果当价格为 $P_0$、对应产量为 $Q_0$ 时，边际收益 $((dif R)/(dif Q))|_(Q=Q_0)=a>0$，收益对价格的边际效应 $((dif R)/(dif P))|_(P=P_0)=c<0$，需求对价格的弹性为 $E_P=b>1$.求 $P_0,Q_0$.

]

#ezexam.question(label: n => [八、])[
（6分）

设 $f(x),g(x)$ 在区间 $[-a,a]$（$a>0$）上连续，$g(x)$ 为偶函数，且 $f(x)+f(-x)=A$（$A$ 为常数）.

（1）证明 $integral_(-a)^a f(x)g(x)dif x=A integral_0^a g(x)dif x$；

（2）利用（1）的结论计算 $integral_(-pi/2)^(pi/2)abs(sin x)arctan(e^x)dif x$.

]

#ezexam.question(label: n => [九、])[
（9分）

已知向量组（Ⅰ）$alpha_1,alpha_2,alpha_3$；（Ⅱ）$alpha_1,alpha_2,alpha_3,alpha_4$；（Ⅲ）$alpha_1,alpha_2,alpha_3,alpha_5$，其秩分别为 $R("Ⅰ")=R("Ⅱ")=3$、$R("Ⅲ")=4$.证明向量组 $alpha_1,alpha_2,alpha_3,alpha_5-alpha_4$ 的秩为4.

]

#ezexam.question(label: n => [十、])[
（10分）

已知二次型 $f(x_1,x_2,x_3)=4x_2^2-3x_3^2+4x_1 x_2-4x_1 x_3+8x_2 x_3$.

（1）写出二次型 $f$ 的矩阵表达式；

（2）用正交变换把二次型 $f$ 化为标准型，并写出相应的正交矩阵.

]

#ezexam.question(label: n => [十一、])[
（8分）

假设一厂家生产的每台仪器，以概率0.70可以直接出厂；以概率0.30需进一步调试，经调试后以概率0.80可以出厂，以概率0.20定为不合格品不能出厂.现该厂新生产了 $n$（$n>=2$）台仪器，假设各台仪器的生产过程相互独立.求：

（1）全部能出厂的概率 $alpha$；

（2）其中恰好有两件不能出厂的概率 $beta$；

（3）其中至少有两件不能出厂的概率 $theta$.

]

#ezexam.question(label: n => [十二、])[
（8分）

已知随机变量 $X,Y$ 的联合概率密度为 $phi(x,y)=cases(4x y & quad 0<=x<=1 quad 0<=y<=1,0 & quad "其他")$，求 $X,Y$ 的联合分布函数 $F(x,y)$.
]

