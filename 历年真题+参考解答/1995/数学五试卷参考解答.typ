#import "../template.typ": exam, answer
#show: exam.with(year: 1995, subject: "五", title: "1995年全国工学、经济学硕士研究生入学考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 1995 数学五试卷参考解答

= 一、填空题

#answer("1（1）")[
左端为 $e^a$，右端为 $(a-1)e^a$，因此 $a=2$.
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
密度为偶函数，故 $E X=0$，$D X=E X^2=2integral_0^1 x^2(1-x)dif x=1/6$.
]

= 二、选择题

#answer("2（1）")[
D.该极限为 $(f'(1))/2$，故斜率为 $-2$.
]

#answer("2（2）")[
A.$1/sin x∼1/x$，在0两侧的广义积分分别发散；其余三个积分均收敛.
]

#answer("2（3）")[
C.记 $M=alpha^T alpha$，则 $M^2=alpha^T(alpha alpha^T)alpha=M/2$，故 $A B=(I-M)(I+2M)=I$.
]

#answer("2（4）")[
D.系数矩阵满行秩，所以任意 $b$ 均使方程组相容；自由变量个数为 $n-m>0$，故必有无穷多解.
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
令 $u=arcsin x$，两次分部积分得
$ integral u^2 cos u dif u=u^2 sin u+2u cos u-2sin u+C. $
故所求为 $x(arcsin x)^2+2sqrt(1-x^2)arcsin x-2x+C$.

【解法1】直接分部积分，
$ integral(arcsin x)^2 dif x=x(arcsin x)^2-2integral frac(arcsin x,sqrt(1-x^2))x dif x $
$ =x(arcsin x)^2+2sqrt(1-x^2)arcsin x-2x+C. $
亦可令u=arcsinx，将积分变为∫u²cosu du后分部积分两次.
]

#answer("五、")[
（1）将负半轴积分作代换 $x=-t$，得原式 $=integral_0^a [f(x)+f(-x)]g(x)dif x=A integral_0^a g(x)dif x$.

（2）取 $f(x)=arctan(e^x)$，$g(x)=abs(sin x)$.由于 $arctan(e^x)+arctan(e^(-x))=pi/2$，所求积分为 $pi/2 integral_0^(pi/2)sin x dif x=pi/2$.
]

#answer("六、")[
由 $E_P=-(P/Q)(dif Q)/(dif P)$，得 $(dif R)/(dif Q)=P(1-1/E_P)$、$(dif R)/(dif P)=Q(1-E_P)$.因此 $a=P_0(1-1/b)$、$c=Q_0(1-b)$，故 $P_0=a b/(b-1)$、$Q_0=c/(1-b)$.

【推导】需求价格弹性定义为 $E_P=-frac(P,Q)frac(dif Q,dif P)$. 因Q随P严格减少，负号使弹性为正. 由R=PQ分别以Q和P求导，
$ frac(dif R,dif Q)=P+Q frac(dif P,dif Q)=P(1-1/E_P), $
$ frac(dif R,dif P)=Q+P frac(dif Q,dif P)=Q(1-E_P). $
代入指定点的a、b、c，再分别解出P₀、Q₀.
]

#answer("七、")[
令 $F(x)=x f(x)$，由拉格朗日中值定理，存在 $xi in (a,b)$，使 $(F(b)-F(a))/(b-a)=F'(xi)=f(xi)+xi f'(xi)$，即得结论.
]

#answer("八、")[
在区域内部，令 $f_x=x y(8-3x-2y)=0$、$f_y=x^2(4-x-2y)=0$，得驻点 $(2,1)$.该点的海森矩阵为 $mat(-6,-4;-4,-8)$，负定，故为极大值点，极大值为4.

在 $x=0$ 或 $y=0$ 上函数值为0；在 $x+y=6$ 上，$f(x,6-x)=2x^3-12x^2$（$0<=x<=6$），其最小值在 $x=4$ 处取得，为 $-64$.比较可知，最大值为 $f(2,1)=4$，最小值为 $f(4,2)=-64$.
]

#answer("九、")[
系数行列式为 $(lambda-1)^2(lambda+2)$，所以 $lambda!=1,-2$ 时有唯一解.

$lambda=-2$ 时，将三式相加得 $0=-9$，无解.$lambda=1$ 时，三式均为 $x_1+x_2+x_3=-2$，全部解为
$ X=(-2,0,0)^T+c_1(-1,1,0)^T+c_2(-1,0,1)^T, $
其中 $c_1,c_2$ 为任意常数，后两个向量构成导出组的基础解系.
]

#answer("十、")[
令 $P=(alpha_1,alpha_2,alpha_3)$，则 $A P=P op("diag")(1,2,3)$.三个向量两两正交，模长均为3，所以 $P^(-1)=P^T/9$，由此
$ A=1/9 P op("diag")(1,2,3)P^T=mat(7/3,0,-2/3;0,5/3,-2/3;-2/3,-2/3,2). $

【解法2】设A=(aᵢⱼ)，由Aαᵢ=iαᵢ，按行列出三个线性方程组. 对每一行的未知数aᵢ₁、aᵢ₂、aᵢ₃，系数向量依次为(1,2,2)、(2,−2,1)、(−2,−1,2)，右端依次来自α₁、2α₂、3α₃. 解得
$ a_(11)=7/3,quad a_(12)=a_(21)=0,quad a_(13)=a_(31)=-2/3, $
$ a_(22)=5/3,quad a_(33)=2,quad a_(23)=a_(32)=-2/3. $
与矩阵方程法所得A一致. 不同特征值对应的特征向量线性无关，保证按这些列构成的P可逆.
]

#answer("十一、")[
单台能出厂的概率为 $p=0.70+0.30 times 0.80=0.94$，不能出厂的概率为0.06.由独立性及二项分布，
$ alpha=0.94^n, quad beta=binom(n,2)0.06^2 0.94^(n-2), $
$ theta=1-0.94^n-n dot 0.06 dot 0.94^(n-1). $
]

#answer("十二、")[
$X$ 的分布函数在 $x>0$ 时为 $F_X(x)=1-e^(-2x)$.当 $0<y<1$ 时，
$ F_Y(y)=P(X<=-1/2 ln(1-y))=1-e^(ln(1-y))=y. $
而 $y<=0$ 时 $F_Y(y)=0$，$y>=1$ 时 $F_Y(y)=1$.这正是 $(0,1)$ 上均匀分布的分布函数.

【证法2】由单调变换的反函数x=−ln(1−y)/2，在0＜y＜1时，
$ f_Y(y)=f_X(-1/2 ln(1-y))frac(1,2(1-y))=2(1-y)frac(1,2(1-y))=1. $
区间外密度为0，故Y服从(0,1)上的均匀分布. 变换后的取值范围必须一并确定.
]

