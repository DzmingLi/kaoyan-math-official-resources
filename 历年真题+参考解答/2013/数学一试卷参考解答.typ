#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2013, subject: "一", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2013 数学一试卷参考解答

= 一、选择题


#answer("1.")[
D. 【解法1】由洛必达法则，
$ lim_(x->0)frac(x-arctan x,x^k)=lim_(x->0)frac(x^2,k x^(k-1)(1+x^2))=lim_(x->0)frac(1,k x^(k-3)(1+x^2)). $
极限为非零有限常数，故 $k=3,c=1/3$.
【解法2】由 $arctan x=x-x^3/3+o(x^3)$，得
$ frac(x-arctan x,x^k)=x^(3-k)/3+frac(o(x^3),x^k). $
当 $k<3$ 时极限为0；当 $k>3$ 时不能得到有限非零极限；故 $k=3,c=1/3$.
]
#answer("2.")[
A. 【解】记 $F(x,y,z)=x^2+cos(x y)+y z+x$，则
$ F_x=2x-y sin(x y)+1,quad F_y=-x sin(x y)+z,quad F_z=y. $
在点 $(0,1,-1)$，三个偏导数分别为 $1,-1,1$，故切平面为 $x-(y-1)+(z+1)=0$，即 $x-y+z=-2$.
]
#answer("3.")[
C. 【解】设 $F$ 为周期2的奇函数，在一个周期内有
$ F(x)=cases(f(x) & 0<x<1,-f(-x) & -1<x<0). $
其傅里叶系数为 $a_n=0$，且
$ b_n=integral_(-1)^1 F(x)sin(n pi x)dif x=2integral_0^1 f(x)sin(n pi x)dif x. $
所以 $S$ 是 $F$ 的傅里叶级数的和函数. 由狄利克雷收敛定理，
$ S(-9/4)=S(-1/4)=F(-1/4)=-f(1/4)=-1/4. $
]
#answer("4.")[
D. 【解法1】令 $D_i$ 为 $L_i$ 所围区域，$D=D_3 inter D_4$，由格林公式，
$ I_i=integral.double_(D_i)[1-x^2-y^2/2]dif x dif y. $
在 $D_4$ 内被积函数非负，在外部为负. 因而
$ I_1<integral.double_D[1-x^2-y^2/2]dif x dif y<I_4, $
$ I_3=integral.double_D[1-x^2-y^2/2]dif x dif y+integral.double_(D_3 without D)[1-x^2-y^2/2]dif x dif y<I_4, $
$ I_2=I_4+integral.double_(D_2 without D_4)[1-x^2-y^2/2]dif x dif y<I_4. $
【解法2】直接以圆、椭圆的参数方程计算. 对 $x=a cos t,y=b sin t$，
$ I=integral_0^(2pi)[-a b sin^2 t-a b^3 sin^4 t/6+2a b cos^2 t-a^3 b cos^4 t/3]dif t. $
利用对称性及 $integral_0^(pi/2)sin^2 t dif t=pi/4$，$integral_0^(pi/2)sin^4 t dif t=3pi/16$，分别得
$ I_1=4integral_0^(pi/2)(sin^2 t-sin^4 t/2)dif t=5pi/8, $
$ I_2=4integral_0^(pi/2)(2sin^2 t-2sin^4 t)dif t=pi/2, $
$ I_3=4sqrt(2)integral_0^(pi/2)(sin^2 t-5sin^4 t/6)dif t=3sqrt(2)pi/8, $
$ I_4=4sqrt(2)integral_0^(pi/2)(sin^2 t-2sin^4 t/3)dif t=sqrt(2)pi/2. $
所以最大者为 $I_4$. 【典型错误】须正确理解曲线积分并掌握转化公式，不能只凭曲线围成区域的面积判断大小.
]
#answer("5.")[
B. 【解】写 $A=(alpha_1,dots,alpha_n),C=(gamma_1,dots,gamma_n)$，则 $A B=C,A=C B^(-1)$，说明两组列向量可相互线性表示，故等价.
$B$ 可逆，其行、列向量组均线性无关，但任意的 $A$ 可以不满秩；$r(C)=r(A)$，故不能保证 $C$ 与 $B$ 的向量组等价. 对选项A，反例为
$ mat(1,1;0,0)mat(1,1;1,0)=mat(2,1;0,0). $
$A$ 与 $C$ 的行向量组不能相互线性表示. 【典型错误】不能把右乘矩阵所表示的列向量关系误认为行向量关系.
]
#answer("6.")[
B. 【解】两个实对称矩阵相似，当且仅当特征值相同. $B$ 的特征值为 $2,b,0$，而
$ det(lambda E-A)=lambda[(lambda-2)(lambda-b)-2a^2]. $
故充要条件为 $a=0$，$b$ 任意. 当 $a=2,b=0$ 时，$A$ 的特征值为 $4,-2,0$，并不相似；$a=0,b=2$ 只是充分条件. 【典型错误】须区分充分、必要和充要条件.
]
#answer("7.")[
A. 【解】设 $Phi$ 为标准正态分布函数，则
$ p_1=Phi(2)-Phi(-2)=2Phi(2)-1, $
$ p_2=Phi(1)-Phi(-1)=2Phi(1)-1, $
$ p_3=Phi(-1)-Phi(-7/3). $
易知 $p_1>p_2$，而 $p_2>1/2,p_3<1/2$，故 $p_1>p_2>p_3$. 也可根据正态密度曲线和区间概率的几何意义判断.
]
#answer("8.")[
C. 【解】由 $X tilde t(n)$，有 $X^2 tilde F(1,n)$，故
$ P{Y>c^2}=P{X^2>c^2}=P{X>c}+P{X<-c}=2alpha. $
【典型错误】应掌握 $t(n)$ 与 $F(1,n)$ 的关系，并利用 $t$ 分布关于0对称的性质.
]


= 二、填空题

#answer("9.")[
1. 【解】将 $y$ 看作 $x$ 的函数，由 $y-x=e^(x(1-y))$ 得
$ y'-1=e^(x(1-y))(1-y-x y'). $
代入 $x=0$，有 $f(0)=1,f'(0)=1$，因而
$ lim_(n->infinity)n[f(1/n)-1]=lim_(n->infinity)frac(f(1/n)-f(0),1/n)=f'(0)=1. $
]

#answer("10.")[
$y=C_1 e^x+C_2 e^(3x)-x e^(2x)$. 【解】$y_1-y_3=e^(3x),y_2-y_3=e^x$ 是相应齐次方程的两个线性无关解，$y_3=-x e^(2x)$ 是非齐次方程的特解，故上述式子为通解，$C_1,C_2$ 任意.
【典型错误】两个齐次解的系数都应是任意常数，且不能漏掉特解或误改特解的指数.
]

#answer("11.")[
$sqrt(2)$. 【解】由 $dif x/dif t=cos t,dif y/dif t=t cos t$，得
$ dif y/dif x=t,quad frac(dif^2 y,dif x^2)=frac(dif,dif t)(dif y/dif x)frac(dif t,dif x)=1/cos t. $
在 $t=pi/4$ 时值为 $sqrt(2)$. 【典型错误】不能将对参数的导数当作对 $x$ 的导数，误得二阶导数为1.
]

#answer("12.")[
$ln 2$. 【解】分部积分得
$ integral_1^A frac(ln x,(1+x)^2)dif x=-frac(ln A,1+A)+integral_1^A(1/x-1/(1+x))dif x $
$ =-frac(ln A,1+A)+ln frac(A,A+1)+ln 2. $
令 $A->+infinity$，得反常积分为 $ln 2$. 【典型错误】被积函数非负，结果不应为 $-ln 2$；应掌握反常积分的极限定义和分部积分公式.
]

#answer("13.")[
$-1$. 【解】由题设有 $A^*=-A^T$，故
$ det(A^*)=(-1)^3 det(A^T)=-det A. $
又 $det(A^*)=(det A)^2$，所以 $(det A)^2+det A=0$. 按行展开，
$ det A=sum_(j=1)^3 a_(i j)A_(i j)=-sum_(j=1)^3 a_(i j)^2. $
三行相加得 $3det A=-sum_(i,j=1)^3 a_(i j)^2$；$A$ 为非零矩阵，故 $det A!=0$，所以 $det A=-1$.
【典型错误】不能忽略非零矩阵条件，误填0或同时保留0和 $-1$.
]

#answer("14.")[
$1-1/e$. 【解法1】由条件概率，
$ P{Y<=a+1 bar Y>a}=frac(P{a<Y<=a+1},P{Y>a})=frac(integral_a^(a+1)e^(-x)dif x,integral_a^infinity e^(-x)dif x)=1-1/e. $
【解法2】由指数分布的无记忆性，$P{Y<=a+1 bar Y>a}=P{Y<=1}=1-1/e$.
]

= 三、解答题

#answer("15.")[
由题设可知 $f'(x)=(ln(x+1))/x,f(1)=0$. 由分部积分法得
$ integral_0^1 f(x)/sqrt(x)dif x&=2sqrt(x)f(x)|_0^1-2integral_0^1 sqrt(x)f'(x)dif x \
&=-2integral_0^1 (ln(x+1))/sqrt(x)dif x \
&=-4sqrt(x)ln(x+1)|_0^1+4integral_0^1 sqrt(x)/(x+1)dif x \
&=-4ln 2+4integral_0^1 sqrt(x)/(x+1)dif x. $
令 $u=sqrt(x)$，则
$ integral_0^1 sqrt(x)/(x+1)dif x&=2integral_0^1 u^2/(u^2+1)dif u \
&=2(u-arctan u)|_0^1=2-pi/2. $
因此
$ integral_0^1 f(x)/sqrt(x)dif x=8-2pi-4ln 2. $

【解法2】先分部积分到 $I=-2integral_0^1 ln(1+x)/sqrt(x)dif x$，令 $u=sqrt(x)$，有
$ integral_0^1 frac(ln(1+x),sqrt(x))dif x=2integral_0^1 ln(1+u^2)dif u $
$ =2u ln(1+u^2)|_0^1-4integral_0^1 u^2/(1+u^2)dif u=2ln 2-4+pi. $
故 $I=8-2pi-4ln 2$.
【解法3】交换积分次序，
$ I=integral_0^1 dif x integral_1^x frac(ln(1+t),t sqrt(x))dif t $
$ =-integral_0^1 dif t integral_0^t frac(ln(1+t),t sqrt(x))dif x=-2integral_0^1 frac(ln(1+t),sqrt(t))dif t. $
以下同解法2.
【典型错误】应使用 $dif x/sqrt(x)=2dif sqrt(x)$，注意分部积分第二项的负号；不能遗漏 $-4ln 2$，也不应无故多出常数因子.
]

#answer("16.")[
（Ⅰ）由 $a_0=3,a_1=1$ 及 $a_(n-2)=n(n-1)a_n$ 得
$ a_(2n)=3/((2n)!),quad a_(2n+1)=1/((2n+1)!). $
幂级数 $sum_(n=0)^infinity a_n x^n$ 的收敛半径为 $R=infinity$，故
$ S'(x)=sum_(n=1)^infinity n a_n x^(n-1),quad S''(x)=sum_(n=2)^infinity n(n-1)a_n x^(n-2). $
于是
$ S''(x)=sum_(n=2)^infinity a_(n-2)x^(n-2)=sum_(n=0)^infinity a_n x^n=S(x), $
即 $S''(x)-S(x)=0$.

（Ⅱ）微分方程的特征方程为 $r^2-1=0$，特征根为 $r_1=1,r_2=-1$，通解为
$ S(x)=C_1 e^x+C_2 e^(-x). $
由 $S(0)=a_0=3,S'(0)=a_1=1$ 得 $C_1+C_2=3,C_1-C_2=1$，所以 $C_1=2,C_2=1$. 因此
$ S(x)=2e^x+e^(-x). $

【解法2】由偶、奇项系数及指数函数展开，
$ e^x+e^(-x)=2sum_(n=0)^infinity frac(x^(2n),(2n)!),quad e^x-e^(-x)=2sum_(n=0)^infinity frac(x^(2n+1),(2n+1)!). $
故
$ S(x)=3sum_(n=0)^infinity frac(x^(2n),(2n)!)+sum_(n=0)^infinity frac(x^(2n+1),(2n+1)!) $
$ =3/2(e^x+e^(-x))+1/2(e^x-e^(-x))=2e^x+e^(-x). $
于是 $S'(x)=2e^x-e^(-x),S''(x)=S(x)$.
【典型错误】逐项求导后的 $n$、$n(n-1)$ 必须留在求和号内；特征方程为 $lambda^2-1=0$；无穷级数不能写成有限项多项式.
]

#answer("17.")[
$ f_x'(x,y)=(x^2+y+x^3/3)e^(x+y),quad f_y'(x,y)=(1+y+x^3/3)e^(x+y). $
由 $f_x'=0,f_y'=0$ 得驻点 $(-1,-2/3)$ 与 $(1,-4/3)$.

在点 $(-1,-2/3)$ 处，$A=f_(x x)''=-e^(-5/3),B=f_(x y)''=e^(-5/3),C=f_(y y)''=e^(-5/3)$. 由于 $A C-B^2<0$，故该点不是极值点.

在点 $(1,-4/3)$ 处，$A=3e^(-1/3),B=e^(-1/3),C=e^(-1/3)$，$A C-B^2=2e^(-2/3)>0$，且 $A>0$，所以 $f(x,y)$ 在该点取得极小值
$ f(1,-4/3)=-e^(-1/3). $

由函数表达式还可计算二阶偏导数为
$ f_(x x)''=e^(x+y)(y+x^3/3+2x^2+2x), $
$ f_(x y)''=e^(x+y)(y+x^3/3+x^2+1),quad f_(y y)''=e^(x+y)(y+x^3/3+2). $
【典型错误】求驻点时应核对方程组的解，且驻点不一定是极值点，须再作判别.
]

#answer("18.")[
（Ⅰ）因为 $f(x)$ 是奇函数，所以 $f(0)=0$. 由拉格朗日中值定理，存在 $xi in (0,1)$，使得
$ f'(xi)=(f(1)-f(0))/(1-0)=1. $

（Ⅱ）由于 $f(x)$ 是奇函数，故 $f'(x)$ 是偶函数，即 $f'(-xi)=f'(xi)=1$.

令 $F(x)=[f'(x)-1]e^x$，则 $F(-xi)=F(xi)=0$. 由罗尔定理，存在 $eta in (-xi,xi) subset (-1,1)$，使得
$ F'(eta)=e^eta[f''(eta)+f'(eta)-1]=0. $
因 $e^eta!=0$，故 $f''(eta)+f'(eta)=1$.

【证法2】令 $F(x)=f'(x)+f(x)-x$. 奇偶性及 $f(1)=1$ 给出
$ F(1)=f'(1),quad F(-1)=f'(-1)+f(-1)+1=f'(1). $
由罗尔定理，存在 $eta in (-1,1)$，使 $F'(eta)=f''(eta)+f'(eta)-1=0$.
【证法3】$f'$ 为偶函数，$f''$ 为奇函数. 取（Ⅰ）中的 $xi$，令 $F(x)=f''(x)+f'(x)-1$，则
$ F(xi)=f''(xi),quad F(-xi)=-f''(xi). $
若 $f''(xi)=0$，直接得结论；否则 $F(xi)F(-xi)<0$. 因 $F=[f'+f-x]'$，由导数介值性质，存在 $eta in (-xi,xi)$ 使 $F(eta)=0$.

原书说明：证法3使用的导数介值性质不在当年考试大纲要求之内，但证明正确也可得分.
【典型错误】题目要求证明某点处的等式，不是求解微分方程；辅助函数的符号不能改错. 中值定理给出的 $xi,eta$ 也不能任意趋于0，再以极限值代替它们原有的等式.
]

#answer("19.")[
（Ⅰ）直线 $L$ 的方程为 $(x-1)/1=y/(-1)=z/(-1)$，参数方程为
$ x=1+t,quad y=-t,quad z=-t. $
曲面 $Sigma$ 上点的坐标满足 $x^2+y^2=(1+t)^2+t^2,z=-t$，消去 $t$ 得
$ x^2+y^2-2z^2+2z=1. $

（Ⅱ）由于 $Omega$ 关于 $z$ 轴对称，故形心坐标中的 $overline(x)=overline(y)=0$.

记 $D_z={(x,y) bar x^2+y^2<=2z^2-2z+1}$，则
$ integral.triple_Omega dif x dif y dif z&=integral_0^2 dif z integral.double_(D_z)dif x dif y \
&=pi integral_0^2(2z^2-2z+1)dif z=(10pi)/3, $
$ integral.triple_Omega z dif x dif y dif z&=integral_0^2 z dif z integral.double_(D_z)dif x dif y \
&=pi integral_0^2 z(2z^2-2z+1)dif z=(14pi)/3. $
于是 $overline(z)=7/5$，故形心坐标为 $(0,0,7/5)$.

【解法2】在各截面上使用极坐标，
$ V=integral_0^2 dif z integral_0^sqrt((1-z)^2+z^2)r dif r integral_0^(2pi)dif theta=10pi/3, $
$ M_z=integral_0^2 dif z integral_0^sqrt((1-z)^2+z^2)r dif r integral_0^(2pi)z dif theta=14pi/3. $
故 $overline(z)=M_z/V=7/5$，形心仍为 $(0,0,7/5)$.
【典型错误】先准确求出旋转面方程，再使用形心公式；不能把旋转面误写成 $x^2+y^2=(z-1)^2$ 或 $x^2+y^2=z^2+(z+1)^2$.
]

#answer("20.")[
令 $C=mat(x_1,x_2;x_3,x_4)$，则 $A C-C A=B$ 等价于方程组
$ cases(-x_2+a x_3=0,-a x_1+x_2+a x_4=1,x_1-x_3-x_4=1,x_2-a x_3=b). $
其增广矩阵经初等行变换化为
$ &mat(0,-1,a,0,0;-a,1,0,a,1;1,0,-1,-1,1;0,1,-a,0,b,augment: #4) \
&arrow.r mat(1,0,-1,-1,1;0,1,-a,0,0;0,0,0,0,a+1;0,0,0,0,b,augment: #4). $
当 $a!=-1$ 或 $b!=0$ 时，方程组无解. 当 $a=-1,b=0$ 时，方程组的通解为
$ mat(x_1;x_2;x_3;x_4)=mat(1;0;0;0)+k_1 mat(1;-1;1;0)+k_2 mat(1;0;0;1). $
故当且仅当 $a=-1,b=0$ 时，存在矩阵 $C$，且所有矩阵为
$ C=mat(1+k_1+k_2,-k_1;k_1,k_2), $
其中 $k_1,k_2$ 为任意常数.

【典型错误】矩阵乘法计算错误会直接导致错误的方程组；还应核对增广矩阵的行变换和基础解系.
]

#answer("21.")[
（Ⅰ）记 $x=(x_1,x_2,x_3)^T$，则
$ f&=2(x^T alpha)(alpha^T x)+(x^T beta)(beta^T x) \
&=2x^T alpha alpha^T x+x^T beta beta^T x \
&=x^T(2alpha alpha^T+beta beta^T)x. $
由于 $2alpha alpha^T+beta beta^T$ 为对称矩阵，故二次型 $f$ 的矩阵为 $A=2alpha alpha^T+beta beta^T$.

（Ⅱ）由 $alpha^T alpha=beta^T beta=1,alpha^T beta=0$ 得
$ A alpha=2alpha,quad A beta=beta. $
所以 $A$ 的两个特征值为2和1. 又
$ "r"(A)<="r"(2alpha alpha^T)+"r"(beta beta^T)<=2, $
故 $A$ 的另一个特征值为0. 因此二次型 $f$ 的标准形为
$ 2y_1^2+y_2^2. $

（Ⅰ）【证法2】展开二次型，得
$ f=2x^T mat(a_1^2,a_1 a_2,a_1 a_3;a_1 a_2,a_2^2,a_2 a_3;a_1 a_3,a_2 a_3,a_3^2)x $
$ +x^T mat(b_1^2,b_1 b_2,b_1 b_3;b_1 b_2,b_2^2,b_2 b_3;b_1 b_3,b_2 b_3,b_3^2)x. $
这两个矩阵分别为 $alpha alpha^T,beta beta^T$，所以 $f=x^T(2alpha alpha^T+beta beta^T)x$，得到所需矩阵.
（Ⅱ）【证法2】取单位向量 $gamma$ 与 $alpha,beta$ 均正交，令 $Q=(alpha,beta,gamma)$，则 $Q$ 为正交矩阵. 在变换 $x=Q y$ 下，
$ f=y^T Q^T A Q y=y^T Q^T(2alpha,beta,0)y $
$ =y^T mat(2,0,0;0,1,0;0,0,0)y=2y_1^2+y_2^2. $
【典型错误】证明须明确写出最终矩阵；已找到特征值2、1后，还须证明第三个特征值为0，不能直接写出标准形.
]

#answer("22.")[
（Ⅰ）当 $y<1$ 时，$F_Y(y)=0$；当 $1<=y<2$ 时，
$ F_Y(y)&=P{Y<=y}=P{Y=1}+P{1<Y<=y} \
&=P{X>=2}+P{1<X<=y} \
&=integral_2^3 x^2/9 dif x+integral_1^y x^2/9 dif x=(y^3+18)/27; $
当 $y>=2$ 时，$F_Y(y)=1$. 因此
$ F_Y(y)=cases(0 & y<1,(y^3+18)/27 & 1<=y<2,1 & y>=2). $

（Ⅱ）$P{X<=Y}=P{X<2}=integral_0^2 x^2/9 dif x=8/27$.

【典型错误】不能直接把事件 $Y<=y$ 写成 $X<=y$，也不能漏掉 $X>=2$ 对应的概率质量. 分段点须满足分布函数的右连续性；第（Ⅱ）问应正确转成事件 $X<2$.
]

#answer("23.")[
（Ⅰ）
$ E X &= integral_0^(+infinity)x dot theta^2/x^3 e^(-theta/x)dif x \
&= integral_0^(+infinity)theta^2/x^2 e^(-theta/x)dif x \
&= theta, $
所以 $theta$ 的矩估计量为 $hat(theta)=overline(X)$，其中 $overline(X)=1/n sum_(i=1)^n X_i$.

（Ⅱ）设 $x_1,x_2,dots,x_n$ 为样本观测值，似然函数为
$ L(theta)&=product_(i=1)^n f(x_i;theta) \
=cases(theta^(2n)/(x_1 x_2 dots x_n)^3 e^(-theta sum_(i=1)^n 1/x_i) & x_1,x_2,dots,x_n>0,0 & "其他"). $
当 $x_1,x_2,dots,x_n>0$ 时，
$ ln L(theta)=2n ln theta-theta sum_(i=1)^n 1/x_i-3sum_(i=1)^n ln x_i. $
令
$ (dif[ln L(theta)])/(dif theta)=(2n)/theta-sum_(i=1)^n 1/x_i=0, $
得 $theta$ 的最大似然估计值为 $hat(theta)=(2n)/(sum_(i=1)^n 1/x_i)$，所以 $theta$ 的最大似然估计量为
$ hat(theta)=(2n)/(sum_(i=1)^n 1/X_i). $

【典型错误】应准确计算总体期望；似然函数是各样本密度的乘积，不能将全部样本值合并为一个变量的幂. 再核对对数和关于参数的导数.
]

