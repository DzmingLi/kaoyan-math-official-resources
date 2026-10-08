#import "../template.typ": exam
#show: exam.with(year: 1996, subject: "五", title: "1996年全国工学、经济学硕士研究生入学考试")
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

（3）设 $y=ln(x+sqrt(1+x^2))$，则 $y'''|_(x=sqrt(3))=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
逐次求导得 $y'=(1+x^2)^(-1/2)$、$y''=-x(1+x^2)^(-3/2)$、$y'''=(2x^2-1)/(1+x^2)^(5/2)$.代入 $x=sqrt(3)$，得 $5/32$.
]

（4）行列式 $det mat(1-a,a,0,0,0;-1,1-a,a,0,0;0,-1,1-a,a,0;0,0,-1,1-a,a;0,0,0,-1,1-a)=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
记相应的 $n$ 阶行列式为 $D_n$，展开得 $D_n=(1-a)D_(n-1)+a D_(n-2)$，其中 $D_0=1$、$D_1=1-a$.递推得 $D_5=1-a+a^2-a^3+a^4-a^5$.
]

（5）一实习生用同一台机器接连独立地制造了三个同种零件，第 $i$ 个零件是不合格品的概率为 $1/(i+1)$（$i=1,2,3$）.以 $X$ 表示三个零件中合格品的个数，则 $P(X=2)=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
恰有一个不合格，按其位置分类：$P(X=2)=1/2 times 2/3 times 3/4+1/2 times 1/3 times 3/4+1/2 times 2/3 times 1/4=11/24$.
]

= 二、选择题（15分，每小题3分）
#ezexam.counter-question.step()

（1）若 $f'(x_0)=f''(x_0)=0$，$f'''(x_0)>0$，则（　）.
#choices[$f'(x_0)$ 是 $f'(x)$ 的极大值][$f(x_0)$ 是 $f(x)$ 的极大值][$f(x_0)$ 是 $f(x)$ 的极小值][$(x_0,f(x_0))$ 是曲线 $y=f(x)$ 的拐点]
#ezexam.solution(show-number: false)[
D.由 $f'''(x_0)>0$ 及 $f''(x_0)=0$，$f''(x)$ 在 $x_0$ 两侧由负变正，故曲线凹凸性改变，$(x_0,f(x_0))$ 为拐点.
]

（2）下述各选项正确的是（　）.
#choices[若 $lim_(x arrow +infinity)f'(x)=+infinity$，则 $lim_(x arrow +infinity)f(x)=+infinity$][若 $lim_(x arrow +infinity)f(x)=+infinity$，则 $lim_(x arrow +infinity)f'(x)=+infinity$][若 $lim_(x arrow -infinity)f'(x)=-infinity$，则 $lim_(x arrow -infinity)f(x)=-infinity$][若 $lim_(x arrow -infinity)f(x)=-infinity$，则 $lim_(x arrow -infinity)f'(x)=-infinity$]
#ezexam.solution(show-number: false)[
A.充分大的 $x$ 上有 $f'(x)>1$，由中值定理 $f(x)>f(M)+x-M$，故趋于正无穷.其余选项分别可用 $f(x)=x$、$f(x)=x^2$、$f(x)=x$ 否定.
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

（5）设事件 $A subset B$，且 $P(B)>0$，则（　）.
#choices[$P(A)<P(A|B)$][$P(A)<=P(A|B)$][$P(A)>P(A|B)$][$P(A)>=P(A|B)$]
#ezexam.solution(show-number: false)[
B.$P(A|B)=P(A)/P(B)>=P(A)$.
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
（7分）

设 $f(x,y)=integral_0^(x y)e^(-t^2)dif t$，求 $x/y (partial^2 f)/(partial x^2)-2(partial^2 f)/(partial x partial y)+y/x (partial^2 f)/(partial y^2)$.
#ezexam.solution(show-number: false)[
由微积分基本定理和链式法则，
$ f_(x x)=-2x y^3 e^(-x^2 y^2), quad f_(y y)=-2x^3 y e^(-x^2 y^2), $
$ f_(x y)=(1-2x^2 y^2)e^(-x^2 y^2). $
代入后四次项相消，结果为 $-2e^(-x^2 y^2)$.
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
（7分）

设某商品单价为 $p$ 时，售出数量 $Q=a/(p+b)-c$，其中 $a,b,c>0$，且 $a>b c$.

（1）求 $p$ 在何范围变化时，使相应销售额增加或减少；

（2）要使销售额最大，单价 $p$ 应取何值？最大销售额是多少？
#ezexam.solution(show-number: false)[
销售额为 $R=p Q$，$R'=a b/(p+b)^2-c$，驻点为 $p_0=sqrt(a b/c)-b>0$.

（1）在实际价格范围 $0<p<a/c-b$ 内，$p<p_0$ 时销售额随价格增加而增加；$p>p_0$ 时随价格增加而减少.

（2）$p=p_0$ 时最大销售额为 $R_(max)=(sqrt(a)-sqrt(b c))^2$.
]

]

#ezexam.question(label: n => [七、])[
（9分）

已知一抛物线通过 $x$ 轴上的两点 $A(1,0)$、$B(3,0)$.

（1）求证：两坐标轴与该抛物线所围图形的面积等于 $x$ 轴与该抛物线所围图形的面积；

（2）计算上述两个平面图形绕 $x$ 轴旋转一周所产生的两个旋转体体积之比.
#ezexam.solution(show-number: false)[
（1）设抛物线为 $y=a(x-1)(x-3)$，其中 $a≠0$.两面积分别为
$ S_1=abs(a)integral_0^1 (x^2-4x+3)dif x=4abs(a)/3, $
$ S_2=abs(a)integral_1^3 (4x-x^2-3)dif x=4abs(a)/3. $
故 $S_1=S_2$.

（2）旋转体体积分别为
$ V_1=pi a^2 integral_0^1 (x-1)^2(x-3)^2 dif x=38pi a^2/15, $
$ V_2=pi a^2 integral_1^3 (x-1)^2(x-3)^2 dif x=16pi a^2/15. $
所以 $V_1/V_2=19/8$.
]

]

#ezexam.question(label: n => [八、])[
（5分）

设 $f(x)$ 在 $[a,b]$ 上连续，在 $(a,b)$ 内可导，且 $1/(b-a)integral_a^b f(x)dif x=f(b)$.求证：在 $(a,b)$ 内至少存在一点 $xi$，使 $f'(xi)=0$.
#ezexam.solution(show-number: false)[
由积分中值定理，存在 $c in (a,b)$，使 $f(c)=1/(b-a)integral_a^b f(x)dif x=f(b)$.对 $[c,b]$ 应用罗尔定理，存在 $xi in (c,b) subset (a,b)$，使 $f'(xi)=0$.
]

]

#ezexam.question(label: n => [九、])[
（9分）

已知线性方程组
$ cases(x_1+x_2-2x_3+3x_4=0,2x_1+x_2-6x_3+4x_4=-1,3x_1+2x_2+p x_3+7x_4=-1,x_1-x_2-6x_3-x_4=t). $
讨论参数 $p,t$ 取何值时方程组有解、无解；当有解时，试用其导出组的基础解系表示通解.
#ezexam.solution(show-number: false)[
增广矩阵行变换后为
$ mat(1,0,-4,1,-1;0,1,2,2,1;0,0,p+8,0,0;0,0,0,0,t+2). $
故 $t≠-2$ 时无解；$t=-2$ 时有解.

当 $t=-2$、$p=-8$ 时，通解为
$ X=vec(-1,1,0,0)+c_1 vec(4,-2,1,0)+c_2 vec(-1,-2,0,1). $
当 $t=-2$、$p≠-8$ 时，通解为
$ X=vec(-1,1,0,0)+c vec(-1,-2,0,1). $
其中 $c_1,c_2,c$ 为任意常数；常数系数后的向量分别构成导出组的基础解系.
]

]

#ezexam.question(label: n => [十、])[
（7分）

设有4阶矩阵 $A$ 满足条件 $det(sqrt(2)I+A)=0$、$A A^T=2I$、$det A<0$，其中 $I$ 是4阶单位阵.求方阵 $A$ 的伴随矩阵 $A^*$ 的一个特征值.
#ezexam.solution(show-number: false)[
第一式表明 $A$ 有特征值 $lambda=-sqrt(2)$.第二式给出 $(det A)^2=16$，结合 $det A<0$ 得 $det A=-4$.故 $A^*=(det A)A^(-1)$ 有特征值 $(det A)/lambda=2sqrt(2)$.
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
（7分）

假设一电路装有三个同种电气元件，其工作状态相互独立，且无故障工作时间都服从参数为 $lambda>0$ 的指数分布.当三个元件都无故障时，电路正常工作，否则整个电路不能正常工作.试求电路正常工作的时间 $T$ 的概率分布.
#ezexam.solution(show-number: false)[
设三个元件的寿命为 $X_1,X_2,X_3$，则 $T=min(X_1,X_2,X_3)$.当 $t>0$ 时，由独立性，
$ P(T>t)=product_(i=1)^3 P(X_i>t)=e^(-3lambda t). $
故分布函数为 $F_T(t)=cases(0 & quad t<=0,1-e^(-3lambda t) & quad t>0)$，即 $T$ 服从参数为 $3lambda$ 的指数分布.
]

]

