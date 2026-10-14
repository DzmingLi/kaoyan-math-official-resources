#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2016, subject: "三", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#import "@preview/cetz:0.5.2"
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2016 数学三试卷参考解答

= 一、选择题


#answer("1.")[
B. 【解】三个驻点中有两个使f′变号，故有两个极值点；导数不存在的点两侧f′同号，不是极值点. f′在导数不存在的点两側以及峰顶、谷底处改变单调性，故原曲线有三个拐点.
【典型错误】拐点处导数可以不存在，不能漏掉该点；驻点也不一定是极值点.
]

#answer("2.")[

D. 【解】对 $f=e^x/(x-y)$ 求偏导，
$ f_x=frac(e^x(x-y-1),(x-y)^2),quad f_y=frac(e^x,(x-y)^2), $
故fₓ+fᵧ=f.

]

#answer("3.")[
B. 【解】D₁关于y=x对称，而被积函数交换x、y后变号，故J₁=0. D₂∩D₃也关于该直线对称，其积分为0；D₂剩余部分满足x＞y，其积分为正，故J₂＞0. 同理D₃剩余部分满足x＜y，故J₃＜0. 因此J₃＜J₁＜J₂.
【典型错误】积分区域更大并不一定积分更大，还须考虑被积函数的正负与对称性.
]

#answer("4.")[
A. 【解法1】正项级数的部分和
$ sum_(k=1)^n(1/sqrt(k)-1/sqrt(k+1))=1-1/sqrt(n+1)->1. $
又原通项绝对值不超过该正项，故由比较判别法知原级数绝对收敛.
【解法2】
$ 1/sqrt(n)-1/sqrt(n+1)=frac(1,sqrt(n)sqrt(n+1)(sqrt(n)+sqrt(n+1)))~frac(1,2n^(3/2)). $
故此正项级数收敛，再用比较判别法.
【典型错误】sin(n+k)始终有界，其取值随k变化不影响上述绝对收敛结论.
]

#answer("5.")[

C. 【解】设 $P^(-1)A P=B$，转置及求逆可得 $P^T A^T(P^T)^(-1)=B^T$、$P^(-1)A^(-1)P=B^(-1)$，且 $P^(-1)(A+A^(-1))P=B+B^(-1)$，所以A、B、D成立. 对C取 $A=mat(1,3;2,2),B=mat(4,0;0,-1)$，二者相似，但A+Aᵀ与B+Bᵀ不相似.
【典型错误】合同与相似的性质不可混用.

]

#answer("6.")[

C. 【解】特征值为a+2、a−1、a−1. 题设要求一个正特征值、两个负特征值. 由detA=(a+2)(a−1)²＞0得a＞−2且a≠1；a＞1时三者全正，须排除. 故−2＜a＜1.

]

#answer("7.")[
A. 【解法1】由P(A|B)=1得P(Ā|B)=0，故P(BĀ)=0. 所以P(B|Ā)=0、P(B̄|Ā)=1.
【解法2】P(B)=P(AB)，于是P(B̄)=P(Ā∪B̄)=P(Ā)+P(B̄)−P(ĀB̄)，得P(Ā)=P(ĀB̄)，结论同上.
【解法3】由全概率公式，P(B)=P(A)P(B|A)+P(Ā)P(B|Ā)，而P(B)=P(AB)=P(A)P(B|A)，故P(B|Ā)=0.
【解法4】取B⊂A、P(B)=1/4、P(A)=1/2，则P(A|B̄)=1/3、P(A∪B)=1/2、P(B|A)=1/2，排除其余三项.
【典型错误】P(A|B)=1可推出P(Ā|B)=0，不能推出P(A|B̄)=0.
]

#answer("8.")[
C. 【解】EX=EY=1、DX=2、DY=4，故EX²=3、EY²=5. 由独立性，
$ D(X Y)=E(X^2)E(Y^2)-(E X dot E Y)^2=3 dot 5-1=14. $
【典型错误】独立时也不能直接写D(XY)=DX·DY.
]


= 二、填空题

#answer("9.")[
6. 【解】由题设极限得根式趋于1，再用等价无穷小量，
$ lim_(x->0)frac(sqrt(1+f(x)sin 2x)-1,e^(3x)-1)=lim_(x->0)frac(1/2 f(x)sin 2x,3x)=lim_(x->0)frac(f(x),3)=2. $
所以f(x)→6.
]

#answer("10.")[

$sin 1-cos 1$. 【解】由定积分定义和分部积分，
$ lim_(n->infinity)sum_(k=1)^n frac(k,n^2)sin(k/n)=integral_0^1 x sin x dif x=[-x cos x+sin x]_0^1=sin 1-cos 1. $

]

#answer("11.")[

$-dif x+2dif y$. 【解法1】对方程取全微分得
$ (x+1)dif z+z dif x-2y dif y=x^2 dif f(x-z,y)+2x f(x-z,y)dif x. $
x=0、y=1时原式给出z=1，故dz+dx−2dy=0.
【解法2】分别求偏导，
$ z+(x+1)z_x=2x f+x^2(1-z_x)f_u,quad (x+1)z_y-2y=x^2(-z_y f_u+f_v). $
代入(0,1,1)得zₓ=−1、zᵧ=2，故dz=−dx+2dy.
【典型错误】全微分不是向量；代入x、y后还须从原方程确定z，不能留下未代入的z.

]

#answer("12.")[
$1/3-2/(3e)$. 【解】用关于y轴的对称性并先对x积分，
$ integral.double_D x^2 e^(-y^2)dif x dif y=2integral_0^1 dif y integral_0^y x^2 e^(-y^2)dif x $
$ =2/3 integral_0^1 y^3 e^(-y^2)dif y=1/3 integral_0^1 t e^(-t)dif t=1/3-2/(3e). $
【典型错误】换序及换元后须核对积分上下限与符号.
]

#answer("13.")[

$lambda^4+lambda^3+2lambda^2+3lambda+4$. 【解】按第一列展开，再展开三阶式，
$ D=lambda det(mat(lambda,-1,0;0,lambda,-1;3,2,lambda+1))+4 $
$ =lambda(lambda det(mat(lambda,-1;2,lambda+1))+3)+4 $
$ =lambda^2[lambda(lambda+1)+2]+3lambda+4. $
【典型错误】按行列展开用的是代数余子式，须保留其符号.

]

#answer("14.")[

$2/9$. 【解法1】四次抽取共3⁴种等可能结果，前三次须有且仅有两种颜色，第四次是剩余颜色. 满足条件的结果数为3×3×2，故概率为18/81=2/9.
【解法2】按第四次颜色分为三个事件A₁、A₂、A₃，各概率1/3. 给定第四次红色，前三次必须为两白一黑或两黑一白，故条件概率为2×3/3³=2/9；其余颜色同理. 全概率公式得2/9.

【解法3】设X为取齐三色所需次数. 前四次包含三色的结果为3×12种，故P(X≤4)=4/9；前三次包含三色的结果为3×2×1种，故P(X≤3)=2/9. 相减得P(X=4)=2/9.
【典型错误】“第四次才取齐”不同于“前四次已经取齐”，后者还包括第三次就取齐的情形.
]

= 三、解答题

#answer("15.")[



解　因为
$ lim_(x->0)(cos 2x+2x sin x)^(1/x^4)=e^(lim_(x->0)(ln(cos 2x+2x sin x))/x^4), $
且
$ lim_(x->0)(ln(cos 2x+2x sin x))/x^4
 &=lim_(x->0)1/(cos 2x+2x sin x) dot (-2sin 2x+2sin x+2x cos x)/(4x^3) \
 &=lim_(x->0)(-2cos 2x+2cos x-x sin x)/(6x^2) \
 &=lim_(x->0)(4sin 2x-3sin x-x cos x)/(12x)=1/3, $
所以 $lim_(x->0)(cos 2x+2x sin x)^(1/x^4)=e^(1/3)$.

【解法2】令y=(cos2x+2xsinx)¹ᐟˣ⁴，先取对数，用上述洛必达计算得lny→1/3，再取指数得y→e¹ᐟ³.
【解法3】令h=cos2x+2xsinx，利用 $h^(1/(h-1))->e$ 及 $(h-1)/x^4->1/3$，得原极限e¹ᐟ³.
【典型错误】连续使用洛必达前，应先将趋于1的因子提出极限；所得1/3是指数的极限，还须取指数.


原书数三还给出泰勒展开法：
$ cos 2x=1-2x^2+2/3 x^4+o(x^4),quad 2x sin x=2x^2-1/3 x^4+o(x^4). $
因此cos2x+2xsinx−1=x⁴/3+o(x⁴)，由重要极限得e¹ᐟ³.
【典型错误】需展开至四阶并写余项，不能只展开到二阶或三阶. 不存在的单项极限不能任意拆开求和.
]

#answer("16.")[

解　（Ⅰ）由题设 $-p/Q dot (dif Q)/(dif p)=p/(120-p)$.
所以 $integral (dif Q)/Q=-integral 1/(120-p)dif p$，可得 $ln Q=ln(120-p)+ln C$，即 $Q=C(120-p)$.
又最大需求量为1200，故 $C=10$，所以需求函数 $Q=1200-10p$.
（Ⅱ）由（Ⅰ）知，收益函数 $R=120Q-1/10 Q^2$，边际收益 $R'(Q)=120-1/5 Q$.
当 $p=100$ 时，$Q=200$，故当 $p=100$ 万元时的边际收益 $R'(200)=80$，其经济意义为：销售第201件商品所得的收益为80万元.

【典型错误】本题需求弹性定义带负号，否则与η＞0和需求量递减矛盾. 解可分离变量方程时须核对积分符号；边际收益是收益对销售量Q的导数，不能用对价格p的导数代替.
]

#answer("17.")[


解　当 $0<x<=1$ 时，
$ f(x)&=integral_0^x abs(t^2-x^2) dif t+integral_x^1 abs(t^2-x^2) dif t \
 &=integral_0^x(x^2-t^2)dif t+integral_x^1 (t^2-x^2)dif t=4/3 x^3-x^2+1/3; $
当 $x>1$ 时，$f(x)=integral_0^1(x^2-t^2)dif t=x^2-1/3$，所以
$ f(x)=cases(4/3 x^3-x^2+1/3&0<x<=1,x^2-1/3&x>1), $
而
$ f_-'(1)=lim_(x->1^-)(4/3 x^3-x^2+1/3-2/3)/(x-1)=2,
quad f_+'(1)=lim_(x->1^+)(x^2-1/3-2/3)/(x-1)=2, $
故 $f'(x)=cases(4x^2-2x&0<x<=1,2x&x>1)$.
由 $f'(x)=0$ 求得唯一驻点 $x=1/2$，又 $f''(1/2)>0$，从而 $x=1/2$ 为 $f(x)$ 的最小值点，最小值为 $f(1/2)=1/4$.

【典型错误】x=1处须分别求左右导数，不能仅凭分段表达式断言可导. 题设x＞0，不需要讨论负半轴. 在(0,1/2)上f′＜0，在(1/2,+∞)上f′＞0，故所得确为全局最小值.

]

#answer("18.")[

解　令 $u=x-t$，则 $integral_0^x f(x-t)dif t=integral_0^x f(u)dif u$.
由题设 $integral_0^x f(u)dif u=x integral_0^x f(t)dif t-integral_0^x t f(t)dif t+e^(-x)-1$，
求导得 $f(x)=integral_0^x f(t)dif t-e^(-x)$，且 $f(0)=-1$.
因此 $f'(x)-f(x)=e^(-x)$，从而
$ f(x)=e^(integral dif x)(C+integral e^(-x)e^(-integral dif x)dif x)=C e^x-e^(-x)/2. $
由 $f(0)=-1$，得 $C=-1/2$，所以 $f(x)=-1/2(e^x+e^(-x))$.

【解法2】令 $F(x)=integral_0^x f(t)dif t$，F′=f、F(0)=0. 分部积分得
$ integral_0^x(x-t)f(t)dif t=integral_0^x F(t)dif t,quad integral_0^x f(x-t)dif t=F(x). $
故 $F(x)=integral_0^x F(t)dif t+e^(-x)-1$，求导得F′−F=−e⁻ˣ. 通解F=Ceˣ+e⁻ˣ/2，由F(0)=0得C=−1/2. 因此 $f(x)=F'(x)=-(e^x+e^(-x))/2$.
【典型错误】令u=x−t时上下限也须改变，不能多出负号. 含参数的积分求导须先换元或拆项，不能只把上限代入而忽略被积函数中的x.
]

#answer("19.")[

解　因为
$ lim_(n->infinity)abs((x^(2n+4)/((n+2)(2n+3)))/(x^(2n+2)/((n+1)(2n+1))))=x^2, $
所以当 $abs(x)<1$ 时，幂级数绝对收敛；当 $abs(x)>1$ 时，幂级数发散.
又当 $x=plus.minus 1$ 时，级数 $sum_(n=0)^infinity 1/((n+1)(2n+1))$ 收敛，所以幂级数的收敛域为 $[-1,1]$.
记 $f(x)=sum_(n=0)^infinity x^(2n+2)/((n+1)(2n+1))$，$x in [-1,1]$，则
$ f'(x)=2sum_(n=0)^infinity x^(2n+1)/(2n+1),quad f''(x)=2sum_(n=0)^infinity x^(2n)=2/(1-x^2),quad x in (-1,1). $
因为 $f'(0)=0$，$f(0)=0$，所以当 $x in (-1,1)$ 时，
$ f'(x)&=integral_0^x f''(t)dif t=integral_0^x 2/(1-t^2)dif t=ln(1+x)-ln(1-x), \
f(x)&=integral_0^x f'(t)dif t=integral_0^x ln(1+t)dif t-integral_0^x ln(1-t)dif t \
&=(1+x)ln(1+x)+(1-x)ln(1-x). $
又 $f(1)=lim_(x->1^-)f(x)=2ln 2$，$f(-1)=lim_(x->-1^+)f(x)=2ln 2$，
所以 $f(x)=cases((1+x)ln(1+x)+(1-x)ln(1-x)&x in (-1,1),2ln 2&x=plus.minus 1)$.

【解法2】在|x|＜1内拆项，
$ f(x)=-sum_(n=0)^infinity frac(x^(2n+2),n+1)+2sum_(n=0)^infinity frac(x^(2n+2),2n+1)=-g(x)+2h(x). $
由g′=2x/(1−x²)、g(0)=0得g=−ln(1−x²). 而(h/x)′=1/(1−x²)，故 $h=x/2 ln frac(1+x,1-x)$. 因此
$ f(x)=ln(1-x^2)+x ln frac(1+x,1-x)=(1+x)ln(1+x)+(1-x)ln(1-x). $
端点由单侧连续性求得f(±1)=2ln2.
【典型错误】求收敛域须单独讨论端点；逐项求导要核对首项. 内部表达式在端点未定义，端点和须由极限求出.
]

#answer("20.")[


解　（Ⅰ）对矩阵 $(A bar.v beta)$ 施以初等行变换
$ (A bar.v beta)=mat(1,1,1-a,0;1,0,a,1;a+1,1,a+1,2a-2,augment: #3)->mat(1,1,1-a,0;0,-1,2a-1,1;0,0,-a^2+2a,a-2,augment: #3), $
由方程组 $A x=beta$ 无解，知 $"秩"(A bar.v beta)>"秩" A$，即 $-a^2+2a=0$，且 $a-2 !=0$，解得 $a=0$.
（Ⅱ）对矩阵 $(A^T A bar.v A^T beta)$ 施以初等行变换
$ (A^T A bar.v A^T beta)=mat(3,2,2,-1;2,2,2,-2;2,2,2,-2,augment: #3)->mat(1,0,0,1;0,1,1,-2;0,0,0,0,augment: #3), $
所以，方程组 $A^T A x=A^T beta$ 的通解 $x=mat(1;-2;0)+k mat(0;-1;1)$（$k$ 为任意常数）.

【典型错误】无解须同时满足系数矩阵秩小于增广矩阵秩，不能只令−a²+2a=0而遗漏a−2≠0，否则会多出a=2. 初等行变换需核对各项.

]

#answer("21.")[


（Ⅰ）因为
$ abs(lambda E-A)=mat(delim: "|",lambda,1,-1;-2,lambda+3,0;0,0,lambda)=lambda(lambda+1)(lambda+2), $
所以 $A$ 的特征值为 $lambda_1=-1,lambda_2=-2,lambda_3=0$.
当 $lambda_1=-1$ 时，解方程组 $(-E-A)x=0$，得特征向量 $xi_1=(1,1,0)^T$；当 $lambda_2=-2$ 时，解方程组 $(-2E-A)x=0$，得特征向量 $xi_2=(1,2,0)^T$；当 $lambda_3=0$ 时，解方程组 $A x=0$，得特征向量 $xi_3=(3,2,2)^T$.
令 $P=(xi_1,xi_2,xi_3)=mat(1,1,3;1,2,2;0,0,2)$，则 $P^(-1)A P=mat(-1,0,0;0,-2,0;0,0,0)$，所以
$ A^99&=P mat((-1)^99,0,0;0,(-2)^99,0;0,0,0)P^(-1) \
&=mat(1,1,3;1,2,2;0,0,2)mat((-1)^99,0,0;0,(-2)^99,0;0,0,0)mat(2,-1,-2;-1,1,1/2;0,0,1/2) \
&=mat(2^99-2,1-2^99,2-2^98;2^100-2,1-2^100,2-2^99;0,0,0). $
（Ⅱ）因为 $B^2=B A$，所以
$ B^100=B^98 B^2=B^99 A=B^97 B^2 A=B^98 A^2=dots=B A^99, $
即
$ (beta_1,beta_2,beta_3)=(alpha_1,alpha_2,alpha_3)mat(2^99-2,1-2^99,2-2^98;2^100-2,1-2^100,2-2^99;0,0,0). $
所以
$ cases(beta_1=(2^99-2)alpha_1+(2^100-2)alpha_2,beta_2=(1-2^99)alpha_1+(1-2^100)alpha_2,beta_3=(2-2^98)alpha_1+(2-2^99)alpha_2). $

【典型错误】矩阵乘法通常不交换，不能直接对不交换的矩阵套用二项式展开. 应利用B²=BA递推得B¹⁰⁰=BA⁹⁹，而不是B⁵⁰A或B⁹⁹A.

]

#answer("22.")[

（Ⅰ）$(X,Y)$ 的概率密度为 $f(x,y)=cases(3 & (x,y)in D,0 & "其他")$.
（Ⅱ）对于 $0<t<1$，
$ P{U<=0,X<=t}&=P{X>Y,X<=t}=integral_0^t dif x integral_(x^2)^x 3dif y=3/2 t^2-t^3, \
P{U<=0}&=P{X>Y}=1/2, \
P{X<=t}&=integral_0^t dif x integral_(x^2)^sqrt (x)3dif y=2t^(3/2)-t^3. $
由于 $P{U<=0,X<=t}!=P{U<=0}P{X<=t}$，所以 $U$ 与 $X$ 不相互独立.
（Ⅲ）当 $z<0$ 时，$F(z)=0$；当 $0<=z<1$ 时，
$ F(z)&=P{Z<=z}=P{U+X<=z}=P{U=0,X<=z} \
&=P{X>Y,X<=z}=3/2 z^2-z^3; $
当 $1<=z<2$ 时，
$ F(z)&=P{U+X<=z}=P{U=0,X<=z}+P{U=1,X<=z-1} \
&=1/2+2(z-1)^(3/2)-3/2(z-1)^2; $
当 $z>=2$ 时，$F(z)=P{U+X<=z}=1$.
所以
$ F(z)=cases(0 & z<0,3/2 z^2-z^3 & 0<=z<1,1/2+2(z-1)^(3/2)-3/2(z-1)^2 & 1<=z<2,1 & z>=2). $

（Ⅱ）【解法2】取t=1/2，
$ P{U=0,X<=1/2}=1/4,quad P{U=0}=1/2,quad P{X<=1/2}=sqrt(2)/2-1/8. $
联合概率不等于两个边缘概率之积，故不独立.
【解法3】计算矩得 $E U=1/2,E X=9/20$，且
$ E(U X)=3integral_0^1 x dif x integral_x^(sqrt(x))dif y=1/5, $
故 $op("Cov")(U,X)=1/5-1/2 dot 9/20=-1/40!=0$，所以不独立.
【典型错误】二维均匀分布的联合密度为区域面积的倒数，不能误当成X均匀且条件下Y均匀. U离散、X连续，判断独立性可用事件概率或非零协方差；计算Z的分布应按U=0、1分解并划分z区间.

]

#answer("23.")[

（Ⅰ）总体 $X$ 的分布函数为 $F(x)=cases(0 & x<0,x^3/theta^3 & 0<=x<theta,1 & x>=theta)$.
从而 $T$ 的分布函数为
$ F_T(z)=[F(z)]^3=cases(0 & z<0,z^9/theta^9 & 0<=z<theta,1 & z>=theta), $
所以 $T$ 的概率密度为 $f_T(z)=cases(9z^8/theta^9 & 0<z<theta,0 & "其他")$.
（Ⅱ）$E(T)=integral_(-infinity)^infinity z f_T(z)dif z=integral_0^theta (9z^9)/theta^9 dif z=9/10 theta$，从而 $E(a T)=9/10 a theta$.
令 $E(a T)=theta$，得 $a=10/9$.所以当 $a=10/9$ 时，$a T$ 为 $theta$ 的无偏估计.

（Ⅰ）【解法2】由最大次序统计量密度公式，$f_T(z)=3[F(z)]^2 f(z;theta)=9z^8/theta^9$，0＜z＜θ，其余为0.
【典型错误】将分布函数立方时应正确处理幂，求导还须保留系数9. 无偏性由E(aT)=θ确定，不能将比例取倒.

]

