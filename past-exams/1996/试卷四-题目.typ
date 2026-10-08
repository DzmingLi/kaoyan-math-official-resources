#import "../template.typ": exam
#show: exam.with(year: 1996, subject: "四", title: "1996年全国工学、经济学硕士研究生入学考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])


= 一、填空题（15分，每小题3分）
#ezexam.counter-question.step()

（1）设方程 $x=y^y$ 确定 $y$ 是 $x$ 的函数，则 $dif y=$ #fillin(len: 4em)[].

（2）设 $integral x f(x)dif x=arcsin x+C$，则 $integral 1/f(x)dif x=$ #fillin(len: 4em)[].

（3）设 $(x_0,y_0)$ 是抛物线 $y=a x^2+b x+c$ 上的一点，若在该点的切线过原点，则系数应满足的关系是#fillin(len: 4em)[].

（4）设
$ A=mat(1,1,1,dots,1;a_1,a_2,a_3,dots,a_n;a_1^2,a_2^2,a_3^2,dots,a_n^2;dots.v,dots.v,dots.v,dots.down,dots.v;a_1^(n-1),a_2^(n-1),a_3^(n-1),dots,a_n^(n-1)), $
$ X=(x_1,x_2,dots,x_n)^T, quad B=(1,1,dots,1)^T, $
其中 $a_i≠a_j$（$i≠j$），则线性方程组 $A^T X=B$ 的解是#fillin(len: 4em)[].

（5）由正态总体 $X∼N(mu,0.9^2)$ 抽取容量为9的简单随机样本，得样本均值 $overline(X)=5$，则未知参数 $mu$ 的置信度为0.95的置信区间是#fillin(len: 4em)[].

= 二、选择题（15分，每小题3分）
#ezexam.counter-question.step()

（1）累次积分 $integral_0^(pi/2)dif theta integral_0^(cos theta)f(r cos theta,r sin theta)r dif r$ 可以写成（　）.
#choices[$integral_0^1 dif y integral_0^sqrt(y-y^2)f(x,y)dif x$][$integral_0^1 dif y integral_0^sqrt(1-y^2)f(x,y)dif x$][$integral_0^1 dif x integral_0^1 f(x,y)dif y$][$integral_0^1 dif x integral_0^sqrt(x-x^2)f(x,y)dif y$]

（2）下述各选项正确的是（　）.
#choices[若 $sum_(n=1)^infinity u_n^2$ 和 $sum_(n=1)^infinity v_n^2$ 都收敛，则 $sum_(n=1)^infinity (u_n+v_n)^2$ 收敛][若 $sum_(n=1)^infinity abs(u_n v_n)$ 收敛，则 $sum_(n=1)^infinity u_n^2$ 与 $sum_(n=1)^infinity v_n^2$ 都收敛][若正项级数 $sum_(n=1)^infinity u_n$ 发散，则 $u_n>=1/n$][若 $sum_(n=1)^infinity u_n$ 收敛，且 $u_n>=v_n$，则 $sum_(n=1)^infinity v_n$ 也收敛]

（3）设 $n$ 阶矩阵 $A$ 非奇异（$n>=2$），$A^*$ 为伴随矩阵，则（　）.
#choices[$(A^*)^*=(det A)^(n-1)A$][$(A^*)^*=(det A)^(n+1)A$][$(A^*)^*=(det A)^(n-2)A$][$(A^*)^*=(det A)^(n+2)A$]

（4）设有任意两个 $n$ 维向量组 $alpha_1,dots,alpha_m$ 和 $beta_1,dots,beta_m$.若存在两组不全为零的数 $lambda_1,dots,lambda_m$ 和 $k_1,dots,k_m$，使
$ sum_(i=1)^m (lambda_i+k_i)alpha_i+sum_(i=1)^m (lambda_i-k_i)beta_i=0, $
则（　）.
#choices[两原向量组都线性相关][两原向量组都线性无关][$alpha_1+beta_1,dots,alpha_m+beta_m,alpha_1-beta_1,dots,alpha_m-beta_m$ 线性无关][$alpha_1+beta_1,dots,alpha_m+beta_m,alpha_1-beta_1,dots,alpha_m-beta_m$ 线性相关]

（5）已知 $0<P(B)<1$，且 $P((A_1 union A_2)|B)=P(A_1|B)+P(A_2|B)$，则下列成立的是（　）.
#choices[$P((A_1 union A_2)|overline(B))=P(A_1|overline(B))+P(A_2|overline(B))$][$P(A_1 B union A_2 B)=P(A_1 B)+P(A_2 B)$][$P(A_1 union A_2)=P(A_1|B)+P(A_2|B)$][$P(B)=P(A_1)P(B|A_1)+P(A_2)P(B|A_2)$]

#ezexam.question(label: n => [三、])[
（6分）

设 $f(x)=cases((g(x)-e^(-x))/x & quad x≠0,0 & quad x=0)$，其中 $g(x)$ 有二阶连续导数，且 $g(0)=1$、$g'(0)=-1$.

（1）求 $f'(x)$；

（2）讨论 $f'(x)$ 在 $(-infinity,+infinity)$ 上的连续性.

]

#ezexam.question(label: n => [四、])[
（6分）

设函数 $z=f(u)$，方程 $u=phi(u)+integral_y^x p(t)dif t$ 确定 $u$ 是 $x,y$ 的函数，其中 $f,phi$ 可微，$p,phi'$ 连续，且 $phi'(u)≠1$.求 $p(y)(partial z)/(partial x)+p(x)(partial z)/(partial y)$.

]

#ezexam.question(label: n => [五、])[
（6分）

计算 $integral_0^infinity (x e^(-x))/(1+e^(-x))^2 dif x$.

]

#ezexam.question(label: n => [六、])[
（5分）

设 $f(x)$ 在 $[0,1]$ 上可微，且 $f(1)=2integral_0^(1/2)x f(x)dif x$.证明存在 $xi in (0,1)$，使 $f(xi)+xi f'(xi)=0$.

]

#ezexam.question(label: n => [七、])[
（6分）

设某商品单价为 $p$ 时，售出数量 $Q=a/(p+b)-c$，其中 $a,b,c>0$，且 $a>b c$.

（1）求 $p$ 在何范围变化时，使相应销售额增加或减少；

（2）要使销售额最大，单价 $p$ 应取何值？最大销售额是多少？

]

#ezexam.question(label: n => [八、])[
（6分）

求微分方程 $(dif y)/(dif x)=(y-sqrt(x^2+y^2))/x$ 的通解.

]

#ezexam.question(label: n => [九、])[
（8分）

设矩阵 $A=mat(0,1,0,0;1,0,0,0;0,0,y,1;0,0,1,2)$.

（1）已知 $A$ 的一个特征值为3，求 $y$；

（2）求矩阵 $P$，使 $(A P)^T(A P)$ 为对角矩阵.

]

#ezexam.question(label: n => [十、])[
（8分）

设向量 $alpha_1,alpha_2,dots,alpha_t$ 是齐次线性方程组 $A X=0$ 的一个基础解系，$beta$ 不是该方程组的解，即 $A beta≠0$.证明向量组 $beta,beta+alpha_1,dots,beta+alpha_t$ 线性无关.

]

#ezexam.question(label: n => [十一、])[
（7分）

假设一部机器在一天内发生故障的概率为0.2，发生故障时全天停止工作.若一周5个工作日里无故障，可获利润10万元；发生一次故障仍可获利润5万元；发生二次故障所获利润0元；发生三次或三次以上故障就要亏损2万元.求一周内期望利润.

]

#ezexam.question(label: n => [十二、])[
（6分）

考虑一元二次方程 $x^2+B x+C=0$，其中 $B,C$ 分别为将一枚骰子接连掷两次先后出现的点数.求方程有实根的概率 $p$ 和有重根的概率 $q$.

]

#ezexam.question(label: n => [十三、])[
（6分）

假设 $X_1,X_2,dots,X_n$ 是来自总体 $X$ 的简单随机样本，已知 $E X^k=a_k$（$k=1,2,3,4$）.证明当 $n$ 充分大时，$Z_n=1/n sum_(i=1)^n X_i^2$ 近似服从正态分布，并指出分布参数.
]

