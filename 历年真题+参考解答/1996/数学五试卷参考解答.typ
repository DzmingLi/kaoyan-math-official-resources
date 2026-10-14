#import "../template.typ": exam, answer
#show: exam.with(year: 1996, subject: "五", title: "1996年全国工学、经济学硕士研究生入学考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 1996 数学五试卷参考解答

= 一、填空题

#answer("1（1）")[
取对数得 $ln x=y ln y$，微分得 $dif y=(dif x)/(x(1+ln y))$.

]

#answer("1（2）")[
求导得 $x f(x)=1/sqrt(1-x^2)$，所以所求为 $integral x sqrt(1-x^2)dif x=-(1-x^2)^(3/2)/3+C$.
]

#answer("1（3）")[
逐次求导得 $y'=(1+x^2)^(-1/2)$、$y''=-x(1+x^2)^(-3/2)$、$y'''=(2x^2-1)/(1+x^2)^(5/2)$.代入 $x=sqrt(3)$，得 $5/32$.

【求导过程】
$ y'=(1+x^2)^(-1/2),quad y''=-x(1+x^2)^(-3/2), $
$ y^((3))=3x^2(1+x^2)^(-5/2)-(1+x^2)^(-3/2). $
代入x=√3，即得5/32.
]

#answer("1（4）")[
记相应的 $n$ 阶行列式为 $D_n$，展开得 $D_n=(1-a)D_(n-1)+a D_(n-2)$，其中 $D_0=1$、$D_1=1-a$.递推得 $D_5=1-a+a^2-a^3+a^4-a^5$.
]

#answer("1（5）")[
恰有一个不合格，按其位置分类：$P(X=2)=1/2 times 2/3 times 3/4+1/2 times 1/3 times 3/4+1/2 times 2/3 times 1/4=11/24$.
]

= 二、选择题

#answer("2（1）")[
D.由 $f'''(x_0)>0$ 及 $f''(x_0)=0$，$f''(x)$ 在 $x_0$ 两侧由负变正，故曲线凹凸性改变，$(x_0,f(x_0))$ 为拐点.
]

#answer("2（2）")[
A.充分大的 $x$ 上有 $f'(x)>1$，由中值定理 $f(x)>f(M)+x-M$，故趋于正无穷.其余选项分别可用 $f(x)=x$、$f(x)=x^2$、$f(x)=x$ 否定.

【其余选项的反例】B取uₙ=1、vₙ=1/n²，乘积绝对值级数收敛，但∑uₙ²发散；C取uₙ=1/(nlnn)（n≥2），级数发散却有uₙ＜1/n；D取uₙ=(−1)ⁿ/n、vₙ=−1，满足大小关系，却不能推出∑vₙ收敛. 正项级数的比较判别法不能直接用于任意实数项级数.
]

#answer("2（3）")[
C.利用 $A^*=(det A)A^(-1)$，有 $det(A^*)=(det A)^(n-1)$、$(A^*)^(-1)=A/(det A)$，两式相乘即得.
]

#answer("2（4）")[
D.原式可写为 $sum lambda_i(alpha_i+beta_i)+sum k_i(alpha_i-beta_i)=0$，系数不全为零，故所列向量组线性相关.
]

#answer("2（5）")[
B.$P(A|B)=P(A)/P(B)>=P(A)$.
]

= 解答题

#answer("三、")[
（1）$x≠0$ 时按商法则求导；0处按定义并用洛必达法则，得
$ f'(x)=cases((x g'(x)-g(x)+(x+1)e^(-x))/x^2 & quad x≠0,(g''(0)-1)/2 & quad x=0). $
（2）$x≠0$ 处显然连续；在0处，洛必达法则给出 $lim_(x arrow 0)f'(x)=lim_(x arrow 0)(g''(x)-e^(-x))/2=(g''(0)-1)/2=f'(0)$.所以 $f'$ 处处连续.

【原书推导】在0处按定义，
$ f'(0)=lim_(x->0)frac(g(x)-e^(-x),x^2)=lim_(x->0)frac(g'(x)+e^(-x),2x)=frac(g''(0)-1,2). $
其余点用商的求导法则. 再考查f′在0处的极限，即可判定连续性.
【说明】二阶导数处处连续是较强条件；原书指出，只要求g具有一阶连续导数并在0处二阶可导也足够，可在相应极限中用导数定义代替洛必达法则.
]

#answer("四、")[
由微积分基本定理和链式法则，
$ f_(x x)=-2x y^3 e^(-x^2 y^2), quad f_(y y)=-2x^3 y e^(-x^2 y^2), $
$ f_(x y)=(1-2x^2 y^2)e^(-x^2 y^2). $
代入后四次项相消，结果为 $-2e^(-x^2 y^2)$.
]

#answer("五、")[
分部积分得
$ I=[-x/(1+e^x)]_0^infinity+integral_0^infinity 1/(1+e^x)dif x. $
边界项为0.令 $t=e^x$，得 $I=integral_1^infinity 1/(t(1+t))dif t=ln 2$.

【解法2】先求原函数，
$ integral frac(x e^(-x),(1+e^(-x))^2)dif x=frac(x e^x,1+e^x)-ln(1+e^x)+C. $
上限趋于∞时，可将后两项改写为 $-frac(x,1+e^x)+ln frac(e^x,1+e^x)$，其极限为0. 下限为−ln2，故反常积分等于ln2.
]

#answer("六、")[
销售额为 $R=p Q$，$R'=a b/(p+b)^2-c$，驻点为 $p_0=sqrt(a b/c)-b>0$.

（1）在实际价格范围 $0<p<a/c-b$ 内，$p<p_0$ 时销售额随价格增加而增加；$p>p_0$ 时随价格增加而减少.

（2）$p=p_0$ 时最大销售额为 $R_(max)=(sqrt(a)-sqrt(b c))^2$.
]

#answer("七、")[
（1）设抛物线为 $y=a(x-1)(x-3)$，其中 $a≠0$.两面积分别为
$ S_1=abs(a)integral_0^1 (x^2-4x+3)dif x=4abs(a)/3, $
$ S_2=abs(a)integral_1^3 (4x-x^2-3)dif x=4abs(a)/3. $
故 $S_1=S_2$.

（2）旋转体体积分别为
$ V_1=pi a^2 integral_0^1 (x-1)^2(x-3)^2 dif x=38pi a^2/15, $
$ V_2=pi a^2 integral_1^3 (x-1)^2(x-3)^2 dif x=16pi a^2/15. $
所以 $V_1/V_2=19/8$.
]

#answer("八、")[
由积分中值定理，存在 $c in (a,b)$，使 $f(c)=1/(b-a)integral_a^b f(x)dif x=f(b)$.对 $[c,b]$ 应用罗尔定理，存在 $xi in (c,b) subset (a,b)$，使 $f'(xi)=0$.
]

#answer("九、")[
增广矩阵行变换后为
$ mat(1,0,-4,1,-1;0,1,2,2,1;0,0,p+8,0,0;0,0,0,0,t+2). $
故 $t≠-2$ 时无解；$t=-2$ 时有解.

当 $t=-2$、$p=-8$ 时，通解为
$ X=vec(-1,1,0,0)+c_1 vec(4,-2,1,0)+c_2 vec(-1,-2,0,1). $
当 $t=-2$、$p≠-8$ 时，通解为
$ X=vec(-1,1,0,0)+c vec(-1,-2,0,1). $
其中 $c_1,c_2,c$ 为任意常数；常数系数后的向量分别构成导出组的基础解系.
]

#answer("十、")[
第一式表明 $A$ 有特征值 $lambda=-sqrt(2)$.第二式给出 $(det A)^2=16$，结合 $det A<0$ 得 $det A=-4$.故 $A^*=(det A)A^(-1)$ 有特征值 $(det A)/lambda=2sqrt(2)$.
]

#answer("十一、")[
按各日故障独立的二项分布模型，故障天数 $X∼B(5,0.2)$.有 $P(X=0)=0.32768$、$P(X=1)=0.4096$、$P(X=2)=0.2048$、$P(X>=3)=0.05792$.故以万元计，期望利润为
$ E Y=10 times 0.32768+5 times 0.4096-2 times 0.05792=5.20896. $
]

#answer("十二、")[
设三个元件的寿命为 $X_1,X_2,X_3$，则 $T=min(X_1,X_2,X_3)$.当 $t>0$ 时，由独立性，
$ P(T>t)=product_(i=1)^3 P(X_i>t)=e^(-3lambda t). $
故分布函数为 $F_T(t)=cases(0 & quad t<=0,1-e^(-3lambda t) & quad t>0)$，即 $T$ 服从参数为 $3lambda$ 的指数分布.
]

