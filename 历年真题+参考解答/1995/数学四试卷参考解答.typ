#import "../template.typ": exam, answer
#show: exam.with(year: 1995, subject: "四", title: "1995年全国工学、经济学硕士研究生入学考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 1995 数学四试卷参考解答

= 一、填空题

#answer("1（1）")[
由 $f(x)=-1+2/(1+x)$，得 $f^(n)(x)=2(-1)^n n!/(1+x)^(n+1)$（$n>=1$）.
]

#answer("1（2）")[
$Z_x=y f(y/x)-y^2 (f'(y/x))/x$，$Z_y=x f(y/x)+y f'(y/x)$，相加得 $x Z_x+y Z_y=2Z$.
]

#answer("1（3）")[
令 $t=ln x$，则 $f'(t)=1+e^t$，故 $f(x)=x+e^x+C$.
]

#answer("1（4）")[
由 $det A=10$、$A A^*=10I$，得 $(A^*)^(-1)=A/10=mat(1/10,0,0;1/5,1/5,0;3/10,2/5,1/2)$.
]

#answer("1（5）")[
样本标准差为 $S=Q/sqrt(n-1)$，故 $t=sqrt(n)overline(X)/S=overline(X)sqrt(n(n-1))/Q$.
]

= 二、选择题

#answer("2（1）")[
D.该极限为 $(f'(1))/2$，故斜率为 $-2$.
]

#answer("2（2）")[
A.$1/sin x∼1/x$，在0两侧的广义积分分别发散；其余三个积分均收敛.
]

#answer("2（3）")[
C.$A$ 的行向量线性无关，$B A=0$ 表示这些行向量的线性组合为零，故每个组合系数均为零，即 $B=0$.

【其余选项】满行秩只保证至少有m个列向量线性无关、至少一个m阶子式非零，不保证任意选择的m列或任意m阶子式都满足. 仅作行变换也不能把任意指定的后n−m列都变成零列，故A、B、D均不成立.
]

#answer("2（4）")[
D.由独立同分布，$op("Cov")(X-Y,X+Y)=D X-D Y=0$，所以相关系数为零.
]

#answer("2（5）")[
C.标准化得该概率为 $P(abs((X-mu)/sigma)<1)=2Phi(1)-1$，与 $sigma$ 无关.
]

= 解答题

#answer("三、")[
左极限由等价无穷小得1，右极限由洛必达法则得1，因此连续.左侧 $f(x)=1-x^2/12+o(x^2)$，右侧 $f(x)=1-x^4/10+o(x^4)$，两侧差商均趋于0，故可导，且 $f'(0)=0$.

【原书解法】先由左右极限等于1证明连续，再按定义求导，
$ f'_-(0)=lim_(x->0^-)frac(2(1-cos x)-x^2,x^3)=lim_(x->0^-)frac(-sin x,3)=0, $
$ f'_+(0)=lim_(x->0^+)frac(integral_0^x cos t^2 dif t-x,x^2)=lim_(x->0^+)frac(cos x^2-1,2x)=0. $
故f′(0)=0. 不能先套用两侧表达式的求导结果代替分段点的导数定义.
]

#answer("四、")[
求导得 $f'-3f=2e^(2x)$，由原式得 $f(0)=1$.方程通解为 $C e^(3x)-2e^(2x)$，故 $C=3$，$f(x)=3e^(3x)-2e^(2x)$.
]

#answer("五、")[
分解为 $ln(1+x)+ln(1-2x)$，分别展开相加，得
$ ln(1-x-2x^2)=sum_(n=1)^infinity ((-1)^(n+1)-2^n)/n x^n. $
两级数的共同收敛区间为 $[-1/2,1/2)$.
]

#answer("六、")[
按 $x<=y$ 和 $y<=x$ 分区并利用对称性，
$ I=2integral_(-infinity)^infinity e^(-y^2)dif y integral_(-infinity)^y x e^(-x^2)dif x=-integral_(-infinity)^infinity e^(-2y^2)dif y=-sqrt(pi/2). $

【分析】在半平面x≤y上min{x,y}=x，在另一半平面上等于y，先分区再利用对称性. 得到−∫e⁻²ʸ²dy后，令t=√2y，并使用标准正态密度在实轴上的积分为1，结果为−√(π/2).
]

#answer("七、")[
由 $E_P=-(P/Q)(dif Q)/(dif P)$，得 $(dif R)/(dif Q)=P(1-1/E_P)$、$(dif R)/(dif P)=Q(1-E_P)$.因此 $a=P_0(1-1/b)$、$c=Q_0(1-b)$，故 $P_0=a b/(b-1)$、$Q_0=c/(1-b)$.

【推导】需求价格弹性定义为 $E_P=-frac(P,Q)frac(dif Q,dif P)$. 因Q随P严格减少，负号使弹性为正. 由R=PQ分别以Q和P求导，
$ frac(dif R,dif Q)=P+Q frac(dif P,dif Q)=P(1-1/E_P), $
$ frac(dif R,dif P)=Q+P frac(dif Q,dif P)=Q(1-E_P). $
代入指定点的a、b、c，再分别解出P₀、Q₀.
]

#answer("八、")[
（1）将负半轴积分作代换 $x=-t$，得原式 $=integral_0^a [f(x)+f(-x)]g(x)dif x=A integral_0^a g(x)dif x$.

（2）取 $f(x)=arctan(e^x)$，$g(x)=abs(sin x)$.由于 $arctan(e^x)+arctan(e^(-x))=pi/2$，所求积分为 $pi/2 integral_0^(pi/2)sin x dif x=pi/2$.
]

#answer("九、")[
由前两组的秩知 $alpha_4$ 可由 $alpha_1,alpha_2,alpha_3$ 线性表示，而 $alpha_5$ 不能.若 $alpha_5-alpha_4$ 可由前三个向量表示，则 $alpha_5$ 也可表示，矛盾.故新向量组线性无关，秩为4.

【证法1】设α₄=λ₁α₁+λ₂α₂+λ₃α₃. 若
$ k_1 alpha_1+k_2 alpha_2+k_3 alpha_3+k_4(alpha_5-alpha_4)=0, $
代入α₄后，用α₁、α₂、α₃、α₅线性无关，得k₄=0，并进一步得k₁=k₂=k₃=0，故新向量组的秩为4.
【证法3】将这四个向量排成矩阵，用初等变换给第四个向量加回α₄的线性组合，便化为α₁、α₂、α₃、α₅组成的矩阵. 初等变换不改变秩，其秩为4.
]

#answer("十、")[
（1）$f=X^T A X$，其中 $X=(x_1,x_2,x_3)^T$，$A=mat(0,2,-2;2,4,4;-2,4,-3)$.

（2）特征多项式为 $(lambda-1)(lambda^2-36)$，对应特征向量可取 $(2,0,-1)^T$、$(1,5,2)^T$、$(1,-1,2)^T$.单位化得到正交矩阵
$ P=mat(2/sqrt(5),1/sqrt(30),1/sqrt(6);0,5/sqrt(30),-1/sqrt(6);-1/sqrt(5),2/sqrt(30),2/sqrt(6)). $
作 $X=P Y$，则 $f=y_1^2+6y_2^2-6y_3^2$.


]

#answer("十一、")[
单台能出厂的概率为 $p=0.70+0.30 times 0.80=0.94$，不能出厂的概率为0.06.由独立性及二项分布，
$ alpha=0.94^n, quad beta=binom(n,2)0.06^2 0.94^(n-2), $
$ theta=1-0.94^n-n dot 0.06 dot 0.94^(n-1). $
]

#answer("十二、")[
在单位正方形内，$F(x,y)=integral_0^x dif u integral_0^y 4u v dif v=x^2 y^2$.其余情况按积分上界截断，得
$ F(x,y)=cases(0 & quad x<0 "或" y<0,x^2 y^2 & quad 0<=x<=1 quad 0<=y<=1,x^2 & quad 0<=x<=1 quad y>1,y^2 & quad x>1 quad 0<=y<=1,1 & quad x>1 quad y>1). $

【分析】联合分布函数是对左下无界矩形积分. 密度仅在单位正方形内非零，因此按x、y落在0以下、[0,1]内或1以上分区；超过1的积分上限截为1，低于0则积分为0. 不能把x²y²用于整个平面.
]

