#import "../template.typ": exam
#show: exam.with(year: 1995, subject: "五", title: "1995年全国工学、经济学硕士研究生入学考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(true)


= 一、填空题（15分，每小题3分）
#ezexam.counter-question.step()

（1）设 $lim_(x arrow infinity)((1+x)/x)^(a x)=integral_(-infinity)^a t e^t dif t$，则 $a=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
左端为 $e^a$，右端为 $(a-1)e^a$，因此 $a=2$.
]

（2）设 $Z=x y f(y/x)$，$f(u)$ 可导，则 $x Z_x+y Z_y=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$Z_x=y f(y/x)-y^2 (f'(y/x))/x$，$Z_y=x f(y/x)+y f'(y/x)$，相加得 $x Z_x+y Z_y=2Z$.
]

（3）设 $f'(ln x)=1+x$，则 $f(x)=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
令 $t=ln x$，则 $f'(t)=1+e^t$，故 $f(x)=x+e^x+C$.
]

（4）设 $A=mat(1,0,0;2,2,0;3,4,5)$，$A^*$ 是 $A$ 的伴随矩阵，则 $(A^*)^(-1)=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
由 $det A=10$、$A A^*=10I$，得 $(A^*)^(-1)=A/10=mat(1/10,0,0;1/5,1/5,0;3/10,2/5,1/2)$.
]

（5）设随机变量 $X$ 的概率密度为 $f(x)=cases(1+x & quad -1<=x<=0,1-x & quad 0<x<=1,0 & quad "其他")$，则 $D X=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
密度为偶函数，故 $E X=0$，$D X=E X^2=2integral_0^1 x^2(1-x)dif x=1/6$.
]

= 二、选择题（15分，每小题3分）
#ezexam.counter-question.step()

（1）设 $f(x)$ 为可导函数，且满足 $lim_(x arrow 0)(f(1)-f(1-x))/(2x)=-1$，则曲线 $y=f(x)$ 在点 $(1,f(1))$ 处的切线斜率为（　）.
#choices[2][$-1$][$1/2$][$-2$]
#ezexam.solution(show-number: false)[
D.该极限为 $(f'(1))/2$，故斜率为 $-2$.
]

（2）下列广义积分发散的是（　）.
#choices[$integral_(-1)^1 1/sin x dif x$][$integral_(-1)^1 1/sqrt(1-x^2)dif x$][$integral_0^infinity e^(-x^2)dif x$][$integral_2^infinity 1/(x ln^2 x)dif x$]
#ezexam.solution(show-number: false)[
A.$1/sin x∼1/x$，在0两侧的广义积分分别发散；其余三个积分均收敛.
]

（3）设 $n$ 维行向量 $alpha=(1/2,0,dots,0,1/2)$，$A=I-alpha^T alpha$，$B=I+2alpha^T alpha$，其中 $I$ 为 $n$ 阶单位矩阵，则 $A B=$（　）.
#choices[0][$-I$][$I$][$I+alpha^T alpha$]
#ezexam.solution(show-number: false)[
C.记 $M=alpha^T alpha$，则 $M^2=alpha^T(alpha alpha^T)alpha=M/2$，故 $A B=(I-M)(I+2M)=I$.
]

（4）设矩阵 $A_(m times n)$ 的秩为 $op("rank")A=m<n$，$I_m$ 为 $m$ 阶单位矩阵，下述结论中正确的是（　）.
#choices[$A$ 的任意 $m$ 个列向量必线性无关][$A$ 的任意一个 $m$ 阶子式不等于零][$A$ 通过初等行变换，必可以化为 $(I_m,0)$ 的形式][非齐次线性方程组 $A X=b$ 必有无穷多解]
#ezexam.solution(show-number: false)[
D.系数矩阵满行秩，所以任意 $b$ 均使方程组相容；自由变量个数为 $n-m>0$，故必有无穷多解.
]

（5）设随机变量 $X$ 服从正态分布 $N(mu,sigma^2)$，则随 $sigma$ 的增大，概率 $P(abs(X-mu)<sigma)$（　）.
#choices[单调增大][单调减少][保持不变][增减不定]
#ezexam.solution(show-number: false)[
C.标准化得该概率为 $P(abs((X-mu)/sigma)<1)=2Phi(1)-1$，与 $sigma$ 无关.
]

#ezexam.question(label: n => [三、])[
（6分）

设 $f(x)=cases(2(1-cos x)/x^2 & quad x<0,1 & quad x=0,1/x integral_0^x cos(t^2)dif t & quad x>0)$.试讨论 $f(x)$ 在 $x=0$ 处的连续性和可导性.
#ezexam.solution(show-number: false)[
左极限由等价无穷小得1，右极限由洛必达法则得1，因此连续.左侧 $f(x)=1-x^2/12+o(x^2)$，右侧 $f(x)=1-x^4/10+o(x^4)$，两侧差商均趋于0，故可导，且 $f'(0)=0$.
]

]

#ezexam.question(label: n => [四、])[
（6分）

计算不定积分 $integral (arcsin x)^2 dif x$.
#ezexam.solution(show-number: false)[
令 $u=arcsin x$，两次分部积分得
$ integral u^2 cos u dif u=u^2 sin u+2u cos u-2sin u+C. $
故所求为 $x(arcsin x)^2+2sqrt(1-x^2)arcsin x-2x+C$.
]

]

#ezexam.question(label: n => [五、])[
（7分）

设 $f(x),g(x)$ 在区间 $[-a,a]$（$a>0$）上连续，$g(x)$ 为偶函数，且 $f(x)+f(-x)=A$（$A$ 为常数）.

（1）证明 $integral_(-a)^a f(x)g(x)dif x=A integral_0^a g(x)dif x$；

（2）利用（1）的结论计算 $integral_(-pi/2)^(pi/2)abs(sin x)arctan(e^x)dif x$.
#ezexam.solution(show-number: false)[
（1）将负半轴积分作代换 $x=-t$，得原式 $=integral_0^a [f(x)+f(-x)]g(x)dif x=A integral_0^a g(x)dif x$.

（2）取 $f(x)=arctan(e^x)$，$g(x)=abs(sin x)$.由于 $arctan(e^x)+arctan(e^(-x))=pi/2$，所求积分为 $pi/2 integral_0^(pi/2)sin x dif x=pi/2$.
]

]

#ezexam.question(label: n => [六、])[
（6分）

设某产品的需求函数为 $Q=Q(P)$，收益函数为 $R=P Q$，其中 $P$ 为产品价格，$Q$ 为需求量（产品产量），$Q(P)$ 是单调减函数.如果当价格为 $P_0$、对应产量为 $Q_0$ 时，边际收益 $((dif R)/(dif Q))|_(Q=Q_0)=a>0$，收益对价格的边际效应 $((dif R)/(dif P))|_(P=P_0)=c<0$，需求对价格的弹性为 $E_P=b>1$.求 $P_0,Q_0$.
#ezexam.solution(show-number: false)[
由 $E_P=-(P/Q)(dif Q)/(dif P)$，得 $(dif R)/(dif Q)=P(1-1/E_P)$、$(dif R)/(dif P)=Q(1-E_P)$.因此 $a=P_0(1-1/b)$、$c=Q_0(1-b)$，故 $P_0=a b/(b-1)$、$Q_0=c/(1-b)$.
]

]

#ezexam.question(label: n => [七、])[
（5分）

设 $f(x)$ 在 $[a,b]$ 上连续，在 $(a,b)$ 内可导.证明至少存在一点 $xi in (a,b)$，使 $(b f(b)-a f(a))/(b-a)=f(xi)+xi f'(xi)$.
#ezexam.solution(show-number: false)[
令 $F(x)=x f(x)$，由拉格朗日中值定理，存在 $xi in (a,b)$，使 $(F(b)-F(a))/(b-a)=F'(xi)=f(xi)+xi f'(xi)$，即得结论.
]

]

#ezexam.question(label: n => [八、])[
（9分）

求函数 $z=f(x,y)=x^2 y(4-x-y)$ 在区域 $D={(x,y) | x>=0, y>=0, x+y<=6}$ 内的极值以及最大值、最小值.
#ezexam.solution(show-number: false)[
在区域内部，令 $f_x=x y(8-3x-2y)=0$、$f_y=x^2(4-x-2y)=0$，得驻点 $(2,1)$.该点的海森矩阵为 $mat(-6,-4;-4,-8)$，负定，故为极大值点，极大值为4.

在 $x=0$ 或 $y=0$ 上函数值为0；在 $x+y=6$ 上，$f(x,6-x)=2x^3-12x^2$（$0<=x<=6$），其最小值在 $x=4$ 处取得，为 $-64$.比较可知，最大值为 $f(2,1)=4$，最小值为 $f(4,2)=-64$.
]

]

#ezexam.question(label: n => [九、])[
（8分）

讨论 $lambda$ 取何值时，线性方程组
$ cases(lambda x_1+x_2+x_3=lambda-3,x_1+lambda x_2+x_3=-2,x_1+x_2+lambda x_3=-2) $
无解、有唯一解、有无穷多解；有无穷多解时，用其导出组的基础解系表示全部解.
#ezexam.solution(show-number: false)[
系数行列式为 $(lambda-1)^2(lambda+2)$，所以 $lambda!=1,-2$ 时有唯一解.

$lambda=-2$ 时，将三式相加得 $0=-9$，无解.$lambda=1$ 时，三式均为 $x_1+x_2+x_3=-2$，全部解为
$ X=(-2,0,0)^T+c_1(-1,1,0)^T+c_2(-1,0,1)^T, $
其中 $c_1,c_2$ 为任意常数，后两个向量构成导出组的基础解系.
]

]

#ezexam.question(label: n => [十、])[
（8分）

已知三阶矩阵 $A$ 满足 $A alpha_i=i alpha_i$（$i=1,2,3$），其中 $alpha_1=(1,2,2)^T$，$alpha_2=(2,-2,1)^T$，$alpha_3=(-2,-1,2)^T$.求 $A$.
#ezexam.solution(show-number: false)[
令 $P=(alpha_1,alpha_2,alpha_3)$，则 $A P=P op("diag")(1,2,3)$.三个向量两两正交，模长均为3，所以 $P^(-1)=P^T/9$，由此
$ A=1/9 P op("diag")(1,2,3)P^T=mat(7/3,0,-2/3;0,5/3,-2/3;-2/3,-2/3,2). $
]

]

#ezexam.question(label: n => [十一、])[
（8分）

假设一厂家生产的每台仪器，以概率0.70可以直接出厂；以概率0.30需进一步调试，经调试后以概率0.80可以出厂，以概率0.20定为不合格品不能出厂.现该厂新生产了 $n$（$n>=2$）台仪器，假设各台仪器的生产过程相互独立.求：

（1）全部能出厂的概率 $alpha$；

（2）其中恰好有两件不能出厂的概率 $beta$；

（3）其中至少有两件不能出厂的概率 $theta$.
#ezexam.solution(show-number: false)[
单台能出厂的概率为 $p=0.70+0.30 times 0.80=0.94$，不能出厂的概率为0.06.由独立性及二项分布，
$ alpha=0.94^n, quad beta=binom(n,2)0.06^2 0.94^(n-2), $
$ theta=1-0.94^n-n dot 0.06 dot 0.94^(n-1). $
]

]

#ezexam.question(label: n => [十二、])[
（7分）

设随机变量 $X$ 服从参数为2的指数分布.证明随机变量 $Y=1-e^(-2X)$ 服从区间 $(0,1)$ 上的均匀分布.
#ezexam.solution(show-number: false)[
$X$ 的分布函数在 $x>0$ 时为 $F_X(x)=1-e^(-2x)$.当 $0<y<1$ 时，
$ F_Y(y)=P(X<=-1/2 ln(1-y))=1-e^(ln(1-y))=y. $
而 $y<=0$ 时 $F_Y(y)=0$，$y>=1$ 时 $F_Y(y)=1$.这正是 $(0,1)$ 上均匀分布的分布函数.
]

]

