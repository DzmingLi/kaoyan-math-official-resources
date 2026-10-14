#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2017, subject: "一", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#import "@preview/cetz:0.5.2"
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2017 数学一试卷参考解答

= 一、选择题


#answer("1.")[
A. 【解】由右连续性及等价无穷小，
$ b=f(0)=lim_(x->0^+)frac(1-cos sqrt(x),a x)=lim_(x->0^+)frac(x/2,a x)=1/(2a), $
故ab=1/2. 也可用洛必达法则，右极限为 $lim_(x->0^+)sin sqrt(x)/(2a sqrt(x))=1/(2a)$.
]

#answer("2.")[
C. 【解】$[f^2(x)]'=2f(x)f'(x)>0$，所以 $f^2(x)$ 单调递增，故 $f^2(1)>f^2(-1)$，即 $abs(f(1))>abs(f(-1))$.
]

#answer("3.")[
D. 【解】$nabla f(1,2,0)=(4,1,0)$，方向向量的单位向量为 $(1/3,2/3,2/3)$. 方向导数为 $4/3+2/3=2$.
]

#answer("4.")[
C. 【解】初始甲领先10m. 从0到10s，甲又比乙多走10m，故此时领先20m. 从10到25s，乙比甲多走20m，故在25s时首次追上甲.
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
A. 【解法1】由条件概率定义，题设等价于 $P(A B)>P(A)P(B)$. 整理为
$ P(A B)[1-P(A)]>P(A)[P(B)-P(A B)], $
两边除以 $P(A)P(bar(A))$，得到 $P(B|A)>P(B|bar(A))$.
【解法2】由同一不等式，$P(B|A)>P(B)$，而
$ P(B|bar(A))=frac(P(B)-P(A B),1-P(A))<P(B). $
【解法3】用全概率公式，题设给出
$ P(A)=P(B)P(A|B)+P(bar(B))P(A|bar(B))<P(A|B). $
因此 $P(bar(A))>P(bar(A)|B)$，再用贝叶斯公式得 $P(B|A)>P(B)>P(B|bar(A))$.
【典型错误】关键是先导出 $P(A B)>P(A)P(B)$，应熟悉条件概率定义及全概率公式.
]

#answer("8.")[
B. 【解】A中 $X_i-mu$ 独立同分布于N(0,1)，其平方和服从 $chi^2(n)$. B中 $X_n-X_1 tilde N(0,2)$，故 $(X_n-X_1)^2/2 tilde chi^2(1)$，而 $2(X_n-X_1)^2$ 不服从所列卡方分布. C由抽样定理服从 $chi^2(n-1)$；D中 $sqrt(n)(bar(X)-mu)tilde N(0,1)$，故其平方服从 $chi^2(1)$.
【典型错误】应同时核对标准化系数、独立性和自由度.
]


= 二、填空题

#answer("9.")[
0. 【解法1】f为偶函数，其一阶、二阶、三阶导数依次为奇、偶、奇函数，故 $f^((3))(0)=0$.
【解法2】直接求导，
$ f'(x)=frac(-2x,(1+x^2)^2),quad f''(x)=frac(2(3x^2-1),(1+x^2)^3),quad f^((3))(x)=frac(24x(1-x^2),(1+x^2)^4). $
代入0同样得0. 【典型错误】注意导数的奇偶性及分式求导.
]

#answer("10.")[
$e^(-x)(C_1 cos(sqrt(2)x)+C_2 sin(sqrt(2)x))$. 【解】特征方程 $lambda^2+2lambda+3=0$ 的根为 $-1±sqrt(2)i$，故得到上述通解.
【典型错误】不能漏掉任意常数或三角函数中的x，应核对指数符号和虚部系数.
]

#answer("11.")[
$-1$. 【解】令 $P=x/(x^2+y^2-1),Q=-a y/(x^2+y^2-1)$，则
$ P_y=frac(-2x y,(x^2+y^2-1)^2),quad Q_x=frac(2a x y,(x^2+y^2-1)^2). $
路径无关要求区域内 $P_y=Q_x$，所以a=−1. 【典型错误】注意Q的负号.
]

#answer("12.")[
$1/(1+x)^2$. 【解】逐项积分，
$ integral_0^x S(t)dif t=sum_(n=1)^infinity(-1)^(n-1)x^n=frac(x,1+x). $
再求导得 $S(x)=1/(1+x)^2$，$-1<x<1$. 【典型错误】应准确使用几何级数和逐项积分、求导公式.
]

#answer("13.")[
2. 【解】令 $B=(alpha_1,alpha_2,alpha_3)$，由线性无关知B可逆. 因此所求秩为 $r(A B)=r(A)$，而
$ A=mat(1,0,1;1,1,2;0,1,1)arrow.r mat(1,0,1;0,1,1;0,0,0), $
故秩为2. 【典型错误】用特殊向量代入不能代替一般证明.
]

#answer("14.")[
2. 【解法1】记标准正态密度为 $phi.alt$，则
$ f(x)=1/2 phi.alt(x)+1/4 phi.alt((x-4)/2). $
所以 $E X=1/2 integral_(-infinity)^infinity x phi.alt(x)dif x+1/4 integral_(-infinity)^infinity x phi.alt((x-4)/2)dif x=2$.
【解法2】这是N(0,1)与N(4,4)各以1/2混合得到的分布，故期望为 $1/2 dot 0+1/2 dot 4=2$.
注：混合分布 $F=p F_1+q F_2$ 的期望为 $p mu_1+q mu_2$，多个分布混合也同样成立.
【典型错误】从分布函数求密度须使用链式法则，不能漏掉第二项的系数1/2；第二个正态分布的均值为4.
]

= 三、解答题

#answer("15.")[
解　因为 $y=f(e^x,cos x)$，所以
$ (dif y)/(dif x)&=(partial f(u,v))/(partial u)e^x-(partial f(u,v))/(partial v)sin x, \
(dif^2 y)/(dif x^2)&=(partial f(u,v))/(partial u)e^x+((partial^2 f(u,v))/(partial u^2)e^x-(partial^2 f(u,v))/(partial u partial v)sin x)e^x \
&quad -(partial f(u,v))/(partial v)cos x-((partial^2 f(u,v))/(partial u partial v)e^x-(partial^2 f(u,v))/(partial v^2)sin x)sin x. $
当 $x=0$ 时，$u=e^0=1$，$v=cos 0=1$，所以
$ (dif y)/(dif x)|_(x=0)&=(partial f(1,1))/(partial u), \
(dif^2 y)/(dif x^2)|_(x=0)&=(partial f(1,1))/(partial u)+(partial^2 f(1,1))/(partial u^2)-(partial f(1,1))/(partial v). $

【典型错误】应先求导再代入x=0，不能先把函数替换为f(1,1)再求导. 二阶求导时既要对偏导数使用链式法则，也要对外部的指数和三角因子求导.
]

#answer("16.")[
解
$ lim_(n->+infinity)sum_(k=1)^n k/n^2 ln(1+k/n)
 &=lim_(n->+infinity)sum_(k=1)^n k/n ln(1+k/n)dot 1/n \
 &=integral_0^1 x ln(1+x)dif x \
 &=1/2 x^2 ln(1+x)|_0^1-1/2 integral_0^1 x^2/(1+x)dif x \
 &=1/2 ln 2-1/2 integral_0^1(x-1+1/(1+x))dif x \
 &=1/2 ln 2-1/4(x-1)^2|_0^1-1/2 ln(1+x)|_0^1=1/4. $

【典型错误】项数随n变化，不能逐项取极限后直接相加；k/n不对全部k一致趋于0，不能把ln(1+k/n)直接替换为k/n. 分部积分中应保留1/2，牛顿—莱布尼茨公式须核对符号.
]

#answer("17.")[
解　由 $x^3+y^3-3x+3y-2=0$，得
$ 3x^2+3y^2 y'-3+3y'=0,quad "①" \
6x+6y(y')^2+3y^2 y''+3y''=0.quad "②" $
在①式中令 $y'=0$ 得 $x=-1$，$x=1$.
当 $x$ 分别取 $-1$ 和1时，由原方程得 $y(-1)=0$，$y(1)=1$.
将 $x=-1$，$y(-1)=0$ 及 $y'(-1)=0$ 代入②式得 $y''(-1)=2$.
因为 $y'(-1)=0$，$y''(-1)>0$，所以 $y(-1)=0$ 是 $y(x)$ 的极小值.
将 $x=1$，$y(1)=1$ 及 $y'(1)=0$ 代入②式得 $y''(1)=-1$.
因为 $y'(1)=0$，$y''(1)<0$，所以 $y(1)=1$ 是 $y(x)$ 的极大值.

【解法2】令 $F(x,y)=x^3+y^3-3x+3y-2$，则
$ y'=-F_x/F_y=frac(1-x^2,1+y^2), $
$ y''=frac(-2x(1+y^2)-2y y'(1-x^2),(1+y^2)^2). $
令y'=0得x=±1，代入原式得y(1)=1、y(−1)=0，再得y''(1)=−1、y''(−1)=2，分别为极大值和极小值.
【解法3】由同一导数表达式，$-1<x<1$ 时y'＞0，$x<-1$ 或x＞1时y'＜0，故同样得到上述极值.
【典型错误】本题求的是一元隐函数y(x)的极值，不能当成二元函数F(x,y)的极值或条件极值. 求导不能把y视为常数，求驻点后还须判断极值.
]

#answer("18.")[
解　（Ⅰ）由题设知 $f(x)$ 连续且 $lim_(x->0^+)f(x)/x$ 存在，所以 $f(0)=0$.
由 $lim_(x->0^+)f(x)/x<0$ 与极限的保号性可知，存在 $a in (0,1)$，使得 $f(a)/a<0$，即 $f(a)<0$.
又 $f(1)>0$，所以存在 $b in (a,1) subset (0,1)$，使得 $f(b)=0$，即方程 $f(x)=0$ 在区间 $(0,1)$ 内至少存在一个实根.
（Ⅱ）由（Ⅰ）知 $f(0)=f(b)=0$，根据罗尔定理，存在 $c in (0,b) subset (0,1)$，使得 $f'(c)=0$.
令 $F(x)=f(x)f'(x)$，由题设知 $F(x)$ 在区间 $[0,b]$ 可导，且 $F(0)=0$，$F(c)=0$，$F(b)=0$.
根据罗尔定理，存在 $xi in (0,c)$，$eta in (c,b)$，使得 $F'(xi)=F'(eta)=0$，即 $xi,eta$ 是方程 $f(x)f''(x)+(f'(x))^2=0$ 在区间 $(0,1)$ 内的两个不同实根.

（Ⅰ）【证法2】令 $g(x)=f(x)/x$，它在 $0<x<=1$ 连续，且零点两侧的符号由 $lim_(x->0^+)g(x)<0$、g(1)＞0保证，故在(0,1)内存在零点，也就是f的零点.
（Ⅱ）【证法2】由f(0)=0可得 $f'(0)=lim_(x->0^+)f(x)/x<0$. 在第一问的[a,b]上用拉格朗日中值定理，存在 $xi in(a,b)$，使 $f'(xi)=(f(b)-f(a))/(b-a)>0$. 因f'连续，在 $(0,xi)$ 内存在c使f'(c)=0，以下用第一种证法的辅助函数F再应用两次罗尔定理.
【证法3】因f(0)=f(b)=0而f(a)＜0，f在[0,b]上的最小值必在内部某点c取得，故f'(c)=0，再按第一种证法完成证明.
【典型错误】不能由商的极限为负推出f(0)＜0；单点导数为负也不能直接断言邻域内单调. 方程存在零点不等于其左端恒为0，不能将存在性问题变为微分方程求解.
]

#answer("19.")[
解　（Ⅰ）圆锥面与柱面的交线 $C$ 的方程为 $cases(z=sqrt(x^2+y^2),z^2=2x)$，消去 $z$ 得 $C$ 到 $x O y$ 平面的投影柱面为 $x^2+y^2=2x$，故所求投影曲线的方程为 $cases(x^2+y^2=2x,z=0)$.
（Ⅱ）因为 $S$ 的密度为 $mu(x,y,z)=9sqrt(x^2+y^2+z^2)$，所以 $S$ 的质量为
$ M=integral.double_S 9sqrt(x^2+y^2+z^2)dif S. $
又 $S$ 在 $x O y$ 面上的投影区域为 $D={(x,y) bar.v x^2+y^2<=2x}$，所以
$ M&=9integral.double_D sqrt(2(x^2+y^2))sqrt(1+(x/sqrt(x^2+y^2))^2+(y/sqrt(x^2+y^2))^2)dif x dif y \
 &=18integral.double_D sqrt(x^2+y^2)dif x dif y \
 &=18integral_(-pi/2)^(pi/2)dif theta integral_0^(2cos theta)r dot r dif r \
 &=48integral_(-pi/2)^(pi/2)cos^3 theta dif theta=64. $

【典型错误】投影曲线须同时写出z=0，区别于投影柱面. 薄片质量应使用曲面积分，不能用三重积分；化为二重积分时须包含曲面面积元的根式因子，极坐标的上限为2cosθ.
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

