#import "../template.typ": exam
#show: exam.with(year: 1996, subject: "四", title: "1996年全国工学、经济学硕士研究生入学考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(true)


= 一、填空题（15分，每小题3分）
#ezexam.counter-question.step()

（1）设方程 $x=y^y$ 确定 $y$ 是 $x$ 的函数，则 $dif y=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
取对数得 $ln x=y ln y$，微分得 $dif y=(dif x)/(x(1+ln y))$.
]

（2）设 $integral x f(x)dif x=arcsin x+C$，则 $integral 1/f(x)dif x=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
求导得 $x f(x)=1/sqrt(1-x^2)$，所以所求为 $integral x sqrt(1-x^2)dif x=-(1-x^2)^(3/2)/3+C$.
]

（3）设 $(x_0,y_0)$ 是抛物线 $y=a x^2+b x+c$ 上的一点，若在该点的切线过原点，则系数应满足的关系是#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
切线在 $y$ 轴上的截距为 $c-a x_0^2$，故 $a x_0^2=c$，即 $c/a>=0$，$b$ 任意.
]

（4）设
$ A=mat(1,1,1,dots,1;a_1,a_2,a_3,dots,a_n;a_1^2,a_2^2,a_3^2,dots,a_n^2;dots.v,dots.v,dots.v,dots.down,dots.v;a_1^(n-1),a_2^(n-1),a_3^(n-1),dots,a_n^(n-1)), $
$ X=(x_1,x_2,dots,x_n)^T, quad B=(1,1,dots,1)^T, $
其中 $a_i≠a_j$（$i≠j$），则线性方程组 $A^T X=B$ 的解是#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
范德蒙德行列式 $det A=product_(i<j)(a_j-a_i)≠0$，故解唯一.直接代入可得 $X=(1,0,dots,0)^T$.
]

（5）由正态总体 $X∼N(mu,0.9^2)$ 抽取容量为9的简单随机样本，得样本均值 $overline(X)=5$，则未知参数 $mu$ 的置信度为0.95的置信区间是#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
已知标准差，区间为 $overline(X)±1.96 times 0.9/sqrt(9)$，即 $(4.412,5.588)$.
]

= 二、选择题（15分，每小题3分）
#ezexam.counter-question.step()

（1）累次积分 $integral_0^(pi/2)dif theta integral_0^(cos theta)f(r cos theta,r sin theta)r dif r$ 可以写成（　）.
#choices[$integral_0^1 dif y integral_0^sqrt(y-y^2)f(x,y)dif x$][$integral_0^1 dif y integral_0^sqrt(1-y^2)f(x,y)dif x$][$integral_0^1 dif x integral_0^1 f(x,y)dif y$][$integral_0^1 dif x integral_0^sqrt(x-x^2)f(x,y)dif y$]
#ezexam.solution(show-number: false)[
D.区域为 $x^2+y^2<=x$、$y>=0$，即 $0<=x<=1$、$0<=y<=sqrt(x-x^2)$.
]

（2）下述各选项正确的是（　）.
#choices[若 $sum_(n=1)^infinity u_n^2$ 和 $sum_(n=1)^infinity v_n^2$ 都收敛，则 $sum_(n=1)^infinity (u_n+v_n)^2$ 收敛][若 $sum_(n=1)^infinity abs(u_n v_n)$ 收敛，则 $sum_(n=1)^infinity u_n^2$ 与 $sum_(n=1)^infinity v_n^2$ 都收敛][若正项级数 $sum_(n=1)^infinity u_n$ 发散，则 $u_n>=1/n$][若 $sum_(n=1)^infinity u_n$ 收敛，且 $u_n>=v_n$，则 $sum_(n=1)^infinity v_n$ 也收敛]
#ezexam.solution(show-number: false)[
A.由 $(u_n+v_n)^2<=2u_n^2+2v_n^2$，应用比较判别法即得.
]

（3）设 $n$ 阶矩阵 $A$ 非奇异（$n>=2$），$A^*$ 为伴随矩阵，则（　）.
#choices[$(A^*)^*=(det A)^(n-1)A$][$(A^*)^*=(det A)^(n+1)A$][$(A^*)^*=(det A)^(n-2)A$][$(A^*)^*=(det A)^(n+2)A$]
#ezexam.solution(show-number: false)[
C.利用 $A^*=(det A)A^(-1)$，有 $det(A^*)=(det A)^(n-1)$、$(A^*)^(-1)=A/(det A)$，两式相乘即得.
]

（4）设有任意两个 $n$ 维向量组 $alpha_1,dots,alpha_m$ 和 $beta_1,dots,beta_m$.若存在两组不全为零的数 $lambda_1,dots,lambda_m$ 和 $k_1,dots,k_m$，使
$ sum_(i=1)^m (lambda_i+k_i)alpha_i+sum_(i=1)^m (lambda_i-k_i)beta_i=0, $
则（　）.
#choices[两原向量组都线性相关][两原向量组都线性无关][$alpha_1+beta_1,dots,alpha_m+beta_m,alpha_1-beta_1,dots,alpha_m-beta_m$ 线性无关][$alpha_1+beta_1,dots,alpha_m+beta_m,alpha_1-beta_1,dots,alpha_m-beta_m$ 线性相关]
#ezexam.solution(show-number: false)[
D.原式可写为 $sum lambda_i(alpha_i+beta_i)+sum k_i(alpha_i-beta_i)=0$，系数不全为零，故所列向量组线性相关.
]

（5）已知 $0<P(B)<1$，且 $P((A_1 union A_2)|B)=P(A_1|B)+P(A_2|B)$，则下列成立的是（　）.
#choices[$P((A_1 union A_2)|overline(B))=P(A_1|overline(B))+P(A_2|overline(B))$][$P(A_1 B union A_2 B)=P(A_1 B)+P(A_2 B)$][$P(A_1 union A_2)=P(A_1|B)+P(A_2|B)$][$P(B)=P(A_1)P(B|A_1)+P(A_2)P(B|A_2)$]
#ezexam.solution(show-number: false)[
B.将已知等式乘以 $P(B)$，由条件概率定义即得到B.
]

#ezexam.question(label: n => [三、])[
（6分）

设 $f(x)=cases((g(x)-e^(-x))/x & quad x≠0,0 & quad x=0)$，其中 $g(x)$ 有二阶连续导数，且 $g(0)=1$、$g'(0)=-1$.

（1）求 $f'(x)$；

（2）讨论 $f'(x)$ 在 $(-infinity,+infinity)$ 上的连续性.
#ezexam.solution(show-number: false)[
（1）$x≠0$ 时按商法则求导；0处按定义并用洛必达法则，得
$ f'(x)=cases((x g'(x)-g(x)+(x+1)e^(-x))/x^2 & quad x≠0,(g''(0)-1)/2 & quad x=0). $
（2）$x≠0$ 处显然连续；在0处，洛必达法则给出 $lim_(x arrow 0)f'(x)=lim_(x arrow 0)(g''(x)-e^(-x))/2=(g''(0)-1)/2=f'(0)$.所以 $f'$ 处处连续.
]

]

#ezexam.question(label: n => [四、])[
（6分）

设函数 $z=f(u)$，方程 $u=phi(u)+integral_y^x p(t)dif t$ 确定 $u$ 是 $x,y$ 的函数，其中 $f,phi$ 可微，$p,phi'$ 连续，且 $phi'(u)≠1$.求 $p(y)(partial z)/(partial x)+p(x)(partial z)/(partial y)$.
#ezexam.solution(show-number: false)[
隐式求导得 $u_x=p(x)/(1-phi'(u))$、$u_y=-p(y)/(1-phi'(u))$.再由 $z_x=f'(u)u_x$、$z_y=f'(u)u_y$，两项相消，所求为0.
]

]

#ezexam.question(label: n => [五、])[
（6分）

计算 $integral_0^infinity (x e^(-x))/(1+e^(-x))^2 dif x$.
#ezexam.solution(show-number: false)[
分部积分得
$ I=[-x/(1+e^x)]_0^infinity+integral_0^infinity 1/(1+e^x)dif x. $
边界项为0.令 $t=e^x$，得 $I=integral_1^infinity 1/(t(1+t))dif t=ln 2$.
]

]

#ezexam.question(label: n => [六、])[
（5分）

设 $f(x)$ 在 $[0,1]$ 上可微，且 $f(1)=2integral_0^(1/2)x f(x)dif x$.证明存在 $xi in (0,1)$，使 $f(xi)+xi f'(xi)=0$.
#ezexam.solution(show-number: false)[
令 $F(x)=x f(x)$.积分中值定理给出 $eta in (0,1/2)$，使 $2integral_0^(1/2)F(x)dif x=F(eta)$.于是 $F(1)=F(eta)$，由罗尔定理，存在 $xi in (eta,1)$ 使 $F'(xi)=f(xi)+xi f'(xi)=0$.
]

]

#ezexam.question(label: n => [七、])[
（6分）

设某商品单价为 $p$ 时，售出数量 $Q=a/(p+b)-c$，其中 $a,b,c>0$，且 $a>b c$.

（1）求 $p$ 在何范围变化时，使相应销售额增加或减少；

（2）要使销售额最大，单价 $p$ 应取何值？最大销售额是多少？
#ezexam.solution(show-number: false)[
销售额为 $R=p Q$，$R'=a b/(p+b)^2-c$，驻点为 $p_0=sqrt(a b/c)-b>0$.

（1）在实际价格范围 $0<p<a/c-b$ 内，$p<p_0$ 时销售额随价格增加而增加；$p>p_0$ 时随价格增加而减少.

（2）$p=p_0$ 时最大销售额为 $R_(max)=(sqrt(a)-sqrt(b c))^2$.
]

]

#ezexam.question(label: n => [八、])[
（6分）

求微分方程 $(dif y)/(dif x)=(y-sqrt(x^2+y^2))/x$ 的通解.
#ezexam.solution(show-number: false)[
令 $r=sqrt(x^2+y^2)$，沿解曲线有
$ (dif)/(dif x)(y+r)=y'+(x+y y')/r=0. $
故 $y+sqrt(x^2+y^2)=C$，其中 $C>0$.等价地，$y=(C^2-x^2)/(2C)$，适用于不跨过0的区间.
]

]

#ezexam.question(label: n => [九、])[
（8分）

设矩阵 $A=mat(0,1,0,0;1,0,0,0;0,0,y,1;0,0,1,2)$.

（1）已知 $A$ 的一个特征值为3，求 $y$；

（2）求矩阵 $P$，使 $(A P)^T(A P)$ 为对角矩阵.
#ezexam.solution(show-number: false)[
（1）$det(lambda I-A)=(lambda^2-1)[(lambda-y)(lambda-2)-1]$，代入3得 $y=2$.

（2）此时 $A^T A=A^2=mat(1,0,0,0;0,1,0,0;0,0,5,4;0,0,4,5)$.配方得 $X^T A^2 X=x_1^2+x_2^2+5(x_3+4x_4/5)^2+9x_4^2/5$.因此可取
$ P=mat(1,0,0,0;0,1,0,0;0,0,1,-4/5;0,0,0,1), $
则 $(A P)^T(A P)=op("diag")(1,1,5,9/5)$.
]

]

#ezexam.question(label: n => [十、])[
（8分）

设向量 $alpha_1,alpha_2,dots,alpha_t$ 是齐次线性方程组 $A X=0$ 的一个基础解系，$beta$ 不是该方程组的解，即 $A beta≠0$.证明向量组 $beta,beta+alpha_1,dots,beta+alpha_t$ 线性无关.
#ezexam.solution(show-number: false)[
设 $k beta+sum_(i=1)^t k_i(beta+alpha_i)=0$.左乘 $A$，得 $(k+sum k_i)A beta=0$，所以 $k+sum k_i=0$.代回得 $sum k_i alpha_i=0$，由基础解系线性无关知所有 $k_i=0$，继而 $k=0$.因此所给向量组线性无关.
]

]

#ezexam.question(label: n => [十一、])[
（7分）

假设一部机器在一天内发生故障的概率为0.2，发生故障时全天停止工作.若一周5个工作日里无故障，可获利润10万元；发生一次故障仍可获利润5万元；发生二次故障所获利润0元；发生三次或三次以上故障就要亏损2万元.求一周内期望利润.
#ezexam.solution(show-number: false)[
按各日故障独立的二项分布模型，故障天数 $X∼B(5,0.2)$.有 $P(X=0)=0.32768$、$P(X=1)=0.4096$、$P(X=2)=0.2048$、$P(X>=3)=0.05792$.故以万元计，期望利润为
$ E Y=10 times 0.32768+5 times 0.4096-2 times 0.05792=5.20896. $
]

]

#ezexam.question(label: n => [十二、])[
（6分）

考虑一元二次方程 $x^2+B x+C=0$，其中 $B,C$ 分别为将一枚骰子接连掷两次先后出现的点数.求方程有实根的概率 $p$ 和有重根的概率 $q$.
#ezexam.solution(show-number: false)[
共有36个等可能结果.实根条件为 $B^2>=4C$，当 $B=1,2,3,4,5,6$ 时，允许的 $C$ 分别有0、1、2、4、6、6个，故 $p=19/36$.重根条件为 $B^2=4C$，对应 $(B,C)=(2,1),(4,4)$，故 $q=1/18$.
]

]

#ezexam.question(label: n => [十三、])[
（6分）

假设 $X_1,X_2,dots,X_n$ 是来自总体 $X$ 的简单随机样本，已知 $E X^k=a_k$（$k=1,2,3,4$）.证明当 $n$ 充分大时，$Z_n=1/n sum_(i=1)^n X_i^2$ 近似服从正态分布，并指出分布参数.
#ezexam.solution(show-number: false)[
令 $Y_i=X_i^2$，则独立同分布，$E Y_i=a_2$、$D Y_i=a_4-a_2^2$.由中心极限定理，$Z_n$ 近似服从 $N(a_2,(a_4-a_2^2)/n)$.若 $a_4=a_2^2$，则 $Z_n=a_2$ 几乎处处成立，分布退化为常数.
]

]

