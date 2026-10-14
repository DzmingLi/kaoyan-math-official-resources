#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2017, subject: "三", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2017 数学三试卷参考解答

= 一、选择题


#answer("1.")[

A. 【解】由右连续性及等价无穷小，
$ b=f(0)=lim_(x->0^+)frac(1-cos sqrt(x),a x)=lim_(x->0^+)frac(x/2,a x)=1/(2a), $
故ab=1/2. 也可用洛必达法则，右极限为 $lim_(x->0^+)sin sqrt(x)/(2a sqrt(x))=1/(2a)$.

]

#answer("2.")[
D. 【解】由 $z_x=3y-2x y-y^2,z_y=3x-2x y-x^2$ 得驻点(0,0)、(0,3)、(3,0)、(1,1). 记 $A=z_(x x)=-2y,B=z_(x y)=3-2x-2y,C=z_(y y)=-2x$. 前三个点B²−AC=9＞0，均非极值点；(1,1)处B²−AC=−3＜0，为极值点.
【典型错误】驻点不一定是极值点，须检查二阶判别式并避免偏导符号错误.
]

#answer("3.")[

C. 【解】$[f^2(x)]'=2f(x)f'(x)>0$，所以 $f^2(x)$ 单调递增，故 $f^2(1)>f^2(-1)$，即 $abs(f(1))>abs(f(-1))$.

]

#answer("4.")[
C. 【解法1】令 $h(x)=sin x-k ln(1-x)$. 若k=−1，两次洛必达法则得 $lim_(x->0^+)h(x)/x^2=-1/2$，故通项绝对值与1/n²同阶，级数绝对收敛. 若k≠−1，则 $lim_(x->0^+)h(x)/x=1+k!=0$，通项最终同号，与1/n同阶，级数发散.
【解法2】由泰勒展开，
$ sin(1/n)-k ln(1-1/n)=frac(1+k,n)+frac(k,2n^2)+frac(k/3-1/6,n^3)+o(1/n^3). $
k=−1时与1/n²同阶，收敛；其余情况与1/n同阶，发散.
【典型错误】ln(1−1/n)的首项为−1/n，求导及展开均须注意负号.
]

#answer("5.")[

A. 【解】因 $alpha^T alpha=1$，存在正交矩阵P使
$ P^(-1)alpha alpha^T P=op("diag")(1,0,dots,0). $
故 $E-alpha alpha^T,E+alpha alpha^T,E+2alpha alpha^T,E-2alpha alpha^T$ 分别相似于对角元为 $(0,1,dots,1),(2,1,dots,1),(3,1,dots,1),(-1,1,dots,1)$ 的对角阵，只有第一矩阵不可逆.
也可取 $alpha=(1,0,dots,0)^T$ 排除B、C、D，但特殊向量不能代替对A的一般证明.

]

#answer("6.")[

B. 【解】三个矩阵的特征多项式均为 $(lambda-2)^2(lambda-1)$. A有三个线性无关特征向量，故与对角阵C相似；B只有两个线性无关特征向量，不能与C相似.
【典型错误】特征多项式相同不一定相似.

]

#answer("7.")[
C. 【解】A∪B与C独立，当且仅当 $P((A union B)C)=P(A union B)P(C)$. 由AC与BC的概率以及已知独立性，
$ P((A union B)C)=P(A)P(C)+P(B)P(C)-P(A B C), $
$ P(A union B)P(C)=P(A)P(C)+P(B)P(C)-P(A B)P(C). $
故等式成立当且仅当P(ABC)=P(AB)P(C)，即AB与C独立.
【典型错误】须用集合分配律(A∪B)C=AC∪BC，并正确使用概率加法公式.
]

#answer("8.")[

B. 【解】A中 $X_i-mu$ 独立同分布于N(0,1)，其平方和服从 $chi^2(n)$. B中 $X_n-X_1 tilde N(0,2)$，故 $(X_n-X_1)^2/2 tilde chi^2(1)$，而 $2(X_n-X_1)^2$ 不服从所列卡方分布. C由抽样定理服从 $chi^2(n-1)$；D中 $sqrt(n)(bar(X)-mu)tilde N(0,1)$，故其平方服从 $chi^2(1)$.
【典型错误】应同时核对标准化系数、独立性和自由度.

]


= 二、填空题

#answer("9.")[
$pi^3/2$. 【解】sin³x为奇函数，在[−π,π]上的积分为0；$integral_(-pi)^pi sqrt(pi^2-x^2)dif x$ 为半径π的上半圆面积，等于π³/2.
【典型错误】应区分半圆和整圆，并保留半径平方的因子.
]

#answer("10.")[
$C 2^t+t 2^(t-1)$. 【解】齐次方程特征根为2，通解为C2ᵗ. 设非齐次特解 $y_t^*=A t 2^t$，代入得 $A(t+1)2^(t+1)-2A t 2^t=2^t$，所以A=1/2. 因此原方程通解为 $y_t=C 2^t+t 2^(t-1)$.
【典型错误】差分方程的通解结构同样是齐次通解加一个特解，不能遗漏该知识点.
]

#answer("11.")[
$1+(1-Q)e^(-Q)$. 【解】总成本 $C(Q)=Q overline(C)(Q)=Q+Q e^(-Q)$，故边际成本 $C'(Q)=1+(1-Q)e^(-Q)$.
【典型错误】边际成本是总成本的导数，不能对平均成本直接求导.
]

#answer("12.")[

$x y e^y$. 【解】由全微分得 $f_x=y e^y,f_y=x(1+y)e^y$. 对x积分得 $f=x y e^y+c(y)$，再对y求导比较得c'(y)=0，故c为常数. 由f(0,0)=0，c=0.
【典型错误】不能将从两项偏导分别积分所得的相同函数再相加，最终应核对全微分.

]

#answer("13.")[

2. 【解】令 $B=(alpha_1,alpha_2,alpha_3)$，由线性无关知B可逆. 因此所求秩为 $r(A B)=r(A)$，而
$ A=mat(1,0,1;1,1,2;0,1,1)arrow.r mat(1,0,1;0,1,1;0,0,0), $
故秩为2. 【典型错误】用特殊向量代入不能代替一般证明.

]

#answer("14.")[
$9/2$. 【解】由概率总和与EX=0得 $1/2+a+b=1,-1+a+3b=0$，解得a=b=1/4. 因此
$ D X=E X^2-(E X)^2=(-2)^2 dot 1/2+1 dot 1/4+3^2 dot 1/4=9/2. $
【典型错误】须同时利用概率归一化和期望条件，计算方差时核对平方项.
]

= 三、解答题

#answer("15.")[


解　令 $x-t=u$，则 $t=x-u$，$dif t=-dif u$.
$ lim_(x->0^+)(integral_0^x sqrt(x-t)e^t dif t)/sqrt(x^3)
 &=lim_(x->0^+)(e^x integral_0^x sqrt(u)e^(-u)dif u)/sqrt(x^3) \
 &=lim_(x->0^+)(integral_0^x sqrt(u)e^(-u)dif u)/sqrt(x^3) \
 &=lim_(x->0^+)(sqrt(x)e^(-x))/(3/2 sqrt(x))=2/3. $

【解法2】令 $u=sqrt(x-t)$，则分子为 $2e^x integral_0^(sqrt(x))u^2 e^(-u^2)dif u$. 去掉趋于1的因子e^x，再用洛必达法则得
$ lim_(x->0^+)frac(2 integral_0^(sqrt(x))u^2 e^(-u^2)dif u,x^(3/2))=lim_(x->0^+)frac(sqrt(x)e^(-x),3/2 sqrt(x))=2/3. $
【解法3】由积分中值定理，存在 $0<=xi<=x$，使分子为 $e^xi integral_0^x sqrt(x-t)dif t=2/3 e^xi x^(3/2)$，故极限为2/3.
【典型错误】原被积函数含有参数x，不能直接按单纯变上限积分求导；换元后应正确处理因子和积分限.


]

#answer("16.")[

解
$ integral.double_D y^3/(1+x^2+y^4)^2 dif x dif y
 &=integral_0^(+infinity)dif x integral_0^(sqrt(x))y^3/(1+x^2+y^4)^2 dif y \
 &=1/4 integral_0^(+infinity)[-1/(1+x^2+y^4)]_0^(sqrt(x))dif x \
 &=1/4 integral_0^(+infinity)(1/(1+x^2)-1/(1+2x^2))dif x \
 &=1/4(arctan x|_0^(+infinity)-sqrt(2)/2 arctan(sqrt(2)x)|_0^(+infinity)) \
 &=(2-sqrt(2))/16 pi. $

【解法2】先令u=y²，再在(x,u)平面用极坐标，
$ I=1/2 integral_0^infinity dif x integral_0^x frac(u,(1+x^2+u^2)^2)dif u $
$ =1/2 integral_0^(pi/4)sin theta dif theta integral_0^infinity frac(r^2,(1+r^2)^2)dif r. $
分部积分得径向积分为 $pi/4$，所以 $I=pi/8(1-sqrt(2)/2)$.
【典型错误】区域无界，外层x应从0到+∞；凑微分须保留常数，换元后的区域和积分限须一并变化.

]

#answer("17.")[

解
$ lim_(n->+infinity)sum_(k=1)^n k/n^2 ln(1+k/n)
 &=lim_(n->+infinity)sum_(k=1)^n k/n ln(1+k/n)dot 1/n \
 &=integral_0^1 x ln(1+x)dif x \
 &=1/2 x^2 ln(1+x)|_0^1-1/2 integral_0^1 x^2/(1+x)dif x \
 &=1/2 ln 2-1/2 integral_0^1(x-1+1/(1+x))dif x \
 &=1/2 ln 2-1/4(x-1)^2|_0^1-1/2 ln(1+x)|_0^1=1/4. $

【典型错误】项数随n变化，不能逐项取极限后直接相加；k/n不对全部k一致趋于0，不能把ln(1+k/n)直接替换为k/n. 分部积分中应保留1/2，牛顿—莱布尼茨公式须核对符号.

【解法2】将积分拆为 $integral_0^1(x+1)ln(1+x)dif x-integral_0^1 ln(1+x)dif x$. 分别分部积分得 $2ln 2-3/4$ 和 $2ln 2-1$，相减仍为1/4.

]

#answer("18.")[

解　记 $f(x)=1/ln(1+x)-1/x-k$，$x in (0,1]$，则
$ f'(x)=((1+x)ln^2(1+x)-x^2)/(x^2(1+x)ln^2(1+x)). $
记 $g(x)=(1+x)ln^2(1+x)-x^2$，则
$ g'(x)=ln^2(1+x)+2ln(1+x)-2x,quad g''(x)=(2[ln(1+x)-x])/(1+x). $
当 $x in (0,1]$ 时，$g''(x)<0$，所以 $g'(x)<g'(0)$.
又 $g'(0)=0$，所以当 $x in (0,1]$ 时，$g'(x)<0$，从而 $g(x)<g(0)=0$.
综上可知 $f'(x)<0$，即 $f(x)$ 单调递减.
由于 $lim_(x->0^+)f(x)=lim_(x->0^+)(1/ln(1+x)-1/x-k)=1/2-k$，$f(1)=1/ln 2-1-k$，
所以方程 $f(x)=0$ 在区间 $(0,1)$ 内有实根当且仅当 $cases(1/2-k>0,1/ln 2-1-k<0)$.
故常数 $k$ 的取值范围为 $(1/ln 2-1,1/2)$.

【解法2】直接令 $h(x)=1/ln(1+x)-1/x$，用相同的g证明h严格递减. 由 $h(1)=1/ln 2-1,lim_(x->0^+)h(x)=1/2$，结合连续性知h在(0,1)上的值域为 $(1/ln 2-1,1/2)$，故k必须且只须属于此区间.
【典型错误】只由端点和连续性说明区间内的k有解，尚未证明区间外无解；必须再证明单调性或值域. 辅助函数应便于逐次求导判断符号.

]

#answer("19.")[

解　（Ⅰ）因为 $a_0=1$，$a_1=0$，$a_(n+1)=1/(n+1)(n a_n+a_(n-1))$，所以 $0<=a_(n+1)<=1$.
记 $R$ 为幂级数 $sum_(n=0)^infinity a_n x^n$ 的收敛半径.当 $abs(x)<1$ 时，因为 $abs(a_n x^n)<=abs(x)^n$ 且级数 $sum_(n=0)^infinity x^n$ 收敛，所以幂级数 $sum_(n=0)^infinity a_n x^n$ 绝对收敛，于是 $(-1,1) subset.eq (-R,R)$，故 $R>=1$.
（Ⅱ）因为 $S(x)=sum_(n=0)^infinity a_n x^n$，所以
$ S'(x)=sum_(n=1)^infinity n a_n x^(n-1)=sum_(n=0)^infinity (n+1)a_(n+1)x^n. $
于是
$ (1-x)S'(x)-x S(x)
 &=sum_(n=0)^infinity (n+1)a_(n+1)x^n-sum_(n=0)^infinity (n+1)a_(n+1)x^(n+1)-sum_(n=0)^infinity a_n x^(n+1) \
 &=a_1+sum_(n=1)^infinity (n+1)a_(n+1)x^n-sum_(n=1)^infinity n a_n x^n-sum_(n=1)^infinity a_(n-1)x^n \
 &=a_1+sum_(n=1)^infinity[(n+1)a_(n+1)-n a_n-a_(n-1)]x^n=0. $
解方程 $(1-x)S'(x)-x S(x)=0$ 得 $S(x)=(C e^(-x))/(1-x)$.
由 $S(0)=a_0=1$ 得 $C=1$，故 $S(x)=e^(-x)/(1-x)$.

【典型错误】不能未经证明就假设相邻系数之比的极限存在，再用递推关系把其极限拆开. 本题第一问只需比较判别法证明收敛半径不小于1.

]

#answer("20.")[

解　（Ⅰ）由 $alpha_3=alpha_1+2alpha_2$，知 $alpha_1,alpha_2,alpha_3$ 线性相关，故 $r(A)<=2$.
又因为 $A$ 有3个不同的特征值，所以 $A$ 至少有2个不为零的特征值，从而 $r(A)>=2$.
故 $r(A)=2$.
（Ⅱ）由 $alpha_1+2alpha_2-alpha_3=0$，知 $A mat(1;2;-1)=0$，故 $mat(1;2;-1)$ 为方程组 $A x=0$ 的一个解.
又 $r(A)=2$，所以 $mat(1;2;-1)$ 为 $A x=0$ 的一个基础解系.
因为 $beta=alpha_1+alpha_2+alpha_3=A mat(1;1;1)$，所以 $mat(1;1;1)$ 为方程组 $A x=beta$ 的一个特解.
故 $A x=beta$ 的通解为 $x=mat(1;1;1)+k mat(1;2;-1)$，其中 $k$ 为任意常数.

【典型错误】α₁、α₂、α₃是矩阵的列向量，不能擅自视为三个特征向量. 非齐次方程的通解应为一个特解加导出齐次方程的通解，特解前不能再乘任意常数.

]

#answer("21.")[

解　二次型 $f$ 的矩阵为 $A=mat(2,1,-4;1,-1,1;-4,1,a)$.
由题设知 $abs(A)=0$. 又 $abs(A)=6-3a$，于是 $a=2$.
矩阵 $A$ 的特征多项式为 $abs(lambda E-A)=lambda(lambda+3)(lambda-6)$，所以特征值为 $-3,6,0$.
不妨设 $lambda_1=-3$，$lambda_2=6$，$lambda_3=0$.
矩阵 $A$ 属于特征值 $lambda_1=-3$ 的单位特征向量为 $beta_1=1/sqrt(3)(1,-1,1)^T$；
属于特征值 $lambda_2=6$ 的单位特征向量为 $beta_2=1/sqrt(2)(-1,0,1)^T$；
属于特征值 $lambda_3=0$ 的单位特征向量为 $beta_3=1/sqrt(6)(1,2,1)^T$.
故所求的一个正交矩阵为
$ Q=(beta_1,beta_2,beta_3)=mat(1/sqrt(3),-1/sqrt(2),1/sqrt(6);-1/sqrt(3),0,2/sqrt(6);1/sqrt(3),1/sqrt(2),1/sqrt(6)). $

【典型错误】所求Q的列须为单位正交向量，不能只取正交但未单位化的特征向量. 实对称矩阵不同特征值对应的特征向量已经正交，不必再作多余的正交化.

]

#answer("22.")[

解　（Ⅰ）$E Y=integral_(-infinity)^(+infinity)y f(y)dif y=integral_0^1 2y^2 dif y=2/3$，
$ P{Y<=E Y}=P{Y<=2/3}=integral_0^(2/3)2y dif y=4/9. $
（Ⅱ）$Z$ 的分布函数记为 $F_Z(z)$，那么
$ F_Z(z)&=P{Z<=z}=P{X+Y<=z} \
 &=P{X=0}P{X+Y<=z bar.v X=0}+P{X=2}P{X+Y<=z bar.v X=2} \
 &=1/2 P{Y<=z}+1/2 P{Y<=z-2}. $
当 $z<0$ 时，$F_Z(z)=0$；当 $0<=z<1$ 时，$F_Z(z)=1/2 P{Y<=z}=z^2/2$；
当 $1<=z<2$ 时，$F_Z(z)=1/2$；当 $2<=z<3$ 时，$F_Z(z)=1/2+1/2 P{Y<=z-2}=1/2+1/2(z-2)^2$；
当 $z>=3$ 时，$F_Z(z)=1$.
所以 $Z$ 的概率密度为 $f_Z(z)=cases(z&0<z<1,z-2&2<z<3,0&"其他")$.

【典型错误】X为离散变量，Y为连续变量，不能直接套用两个连续变量密度的卷积公式. 应先按X取值用全概率公式求分布函数，再分段求导.

]

#answer("23.")[

解　（Ⅰ）$Z_1$ 的分布函数为
$ F(z)=P{Z_1<=z}=P{abs(X_1-mu)<=z}=cases(2Phi(z/sigma)-1&z>=0,0&z<0). $
所以 $Z_1$ 的概率密度为
$ f(z)=cases(2/(sqrt(2pi)sigma)e^(-z^2/(2sigma^2))&z>=0,0&z<0). $
（Ⅱ）$E Z_1=integral_(-infinity)^(+infinity)z f(z)dif z=2/(sqrt(2pi)sigma)integral_0^(+infinity)z e^(-z^2/(2sigma^2))dif z=2/sqrt(2pi)sigma$.
$sigma=sqrt(2pi)/2 E Z_1$，令 $overline(Z)=1/n sum_(i=1)^n Z_i$，得 $sigma$ 的矩估计量为 $hat(sigma)=sqrt(2pi)/2 overline(Z)$.
（Ⅲ）记 $z_1,z_2,dots,z_n$ 为样本 $Z_1,Z_2,dots,Z_n$ 的观测值，则似然函数为
$ L(sigma)=product_(i=1)^n f(z_i)=(2/sqrt(2pi))^n sigma^(-n)e^(-1/(2sigma^2)sum_(i=1)^n z_i^2), $
对数似然函数为 $ln L(sigma)=n ln(2/sqrt(2pi))-n ln sigma-1/(2sigma^2)sum_(i=1)^n z_i^2$.
令 $(dif ln L(sigma))/(dif sigma)=-n/sigma+1/sigma^3 sum_(i=1)^n z_i^2=0$，得 $sigma$ 的最大似然估计值为 $hat(sigma)=sqrt(1/n sum_(i=1)^n z_i^2)$，所以 $sigma$ 的最大似然估计量为 $hat(sigma)=sqrt(1/n sum_(i=1)^n Z_i^2)$.

【典型错误】本题用于估计的样本是Z₁、…、Zₙ，须使用其共同的半正态分布；不能直接用X₁、…、Xₙ的矩或似然函数. 第一问应先求分布函数再求密度，后续计算注意期望、对数似然与求导中的系数.

]

