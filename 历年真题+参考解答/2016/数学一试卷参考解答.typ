#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2016, subject: "一", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2016 数学一试卷参考解答

= 一、选择题


#answer("1.")[
C. 【解】将积分分为(0,1)与(1,+∞)两部分. x→0⁺时被积函数与x⁻ᵃ等价，瑕积分当且仅当a＜1收敛；x→+∞时与 $1/x^(a+b)$ 等价，无穷积分当且仅当a+b＞1收敛. 两个条件须同时成立.
]

#answer("2.")[
D. 【解】两段原函数分别为 $(x-1)^2+C_1$ 和 $x ln x-x+C_2$. 原函数在1处连续，故C₁=C₂−1. 取C₁=0、C₂=1，即得D.
]

#answer("3.")[
A. 【解】两解之差的常数倍 $sqrt(1+x^2)$ 是齐次方程的解，故 $p(x)=-x/(1+x^2)$. 代入任一非齐次解得
$ q(x)=4x(1+x^2)-frac(x,sqrt(1+x^2))-frac(x,1+x^2)[(1+x^2)^2-sqrt(1+x^2)]=3x(1+x^2). $
]

#answer("4.")[
D. 【解】左极限为0=f(0). 给定ε＞0，取n₀使1/n₀＜ε，令δ=1/n₀，则0≤x＜δ时|f(x)|≤1/n₀＜ε，故右连续. 当 $1/(n+1)<x<=1/n$ 时，$1<=f(x)/x<(n+1)/n$，由夹逼定理得右导数1；左导数也为1，故在0处可导.
]

#answer("5.")[
C. 【解】设 $P^(-1)A P=B$，转置及求逆可得 $P^T A^T(P^T)^(-1)=B^T$、$P^(-1)A^(-1)P=B^(-1)$，且 $P^(-1)(A+A^(-1))P=B+B^(-1)$，所以A、B、D成立. 对C取 $A=mat(1,3;2,2),B=mat(4,0;0,-1)$，二者相似，但A+Aᵀ与B+Bᵀ不相似.
【典型错误】合同与相似的性质不可混用.
]

#answer("6.")[
B. 【解】配方得
$ f=(x_1+2x_2+2x_3)^2-3(x_2+2/3 x_3)^2-5/3 x_3^2. $
作可逆线性变换 $y_1=x_1+2x_2+2x_3,y_2=x_2+2/3 x_3,y_3=x_3$，曲面化为 $y_1^2-3y_2^2-5/3 y_3^2=2$，为双叶双曲面.
【典型错误】含交叉项时，不能按原式系数全正就断言椭球面；应先化标准形.
]

#answer("7.")[
B. 【解】标准化得 $p=P{X<=mu+sigma^2}=Phi(sigma)$，Φ严格递增，故p随σ增大而增大，与μ无关.
【典型错误】标准化应除以标准差σ，不能除以方差σ².
]

#answer("8.")[
A. 【解法1】联合分布为
$ mat(1/9,2/9,1/9;2/9,2/9,0;1/9,0,0) $
其中行、列依次对应X、Y取0、1、2. 得EX=EY=2/3，DX=DY=4/9，E(XY)=2/9，故Cov(X,Y)=−2/9，ρ=−1/2.
【解法2】X、Y分别服从B(2,1/3)，X+Y服从B(2,2/3)，方差均为4/9. 用 $D(X+Y)=D X+D Y+2op("Cov")(X,Y)$ 得同一结果.
【解法3】以Xᵢ、Yᵢ表示第i次是否发生A₁、A₂的指示变量. 不同次独立，协方差为0；同次互斥，Cov(Xᵢ,Yᵢ)=−1/9. 因此Cov(X,Y)=−2/9，DX=DY=4/9，仍得ρ=−1/2.
【解法4】记Z为A₃次数，则X+Y+Z=2，故X与Y+Z的相关系数为−1. 对称性给出各方差相等，Cov(X,Y)=Cov(X,Z)，所以−1=ρ(X,Y)+ρ(X,Z)=2ρ(X,Y).
【典型错误】独立重复试验并不意味着同一次试验的不同结果次数独立. 上述后三种方法也说明相关系数与重复次数无关.
]


= 二、填空题

#answer("9.")[
$1/2$. 【解】用等价无穷小量与洛必达法则，
$ lim_(x->0)frac(integral_0^x t ln(1+t sin t)dif t,1-cos x^2)=lim_(x->0)frac(x ln(1+x sin x),2x^3)=lim_(x->0)frac(x sin x,2x^2)=1/2. $
]

#answer("10.")[
$bold(j)+(y-1)bold(k)$. 【解】
$ op("rot") A=det(mat(bold(i),bold(j),bold(k);partial/partial x,partial/partial y,partial/partial z;x+y+z,x y,z)) $
$ =(0-0)bold(i)-(0-1)bold(j)+(y-1)bold(k). $
【典型错误】旋度是向量，不能写成散度、曲面积分式或旋度的模.
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
$1/2$. 【解法1】由泰勒展开，$arctan x=x-x^3/3+o(x^3)$、$x/(1+a x^2)=x-a x^3+o(x^3)$，故 $f(x)=(a-1/3)x^3+o(x^3)$. 泰勒公式唯一性给出 $f^((3))(0)/3!=a-1/3$，得a=1/2.
【解法2】直接求导，
$ f'=frac(1,1+x^2)-frac(1-a x^2,(1+a x^2)^2), $
$ f''=frac(-2x,(1+x^2)^2)+frac(6a x-2a^2 x^3,(1+a x^2)^3), $
$ f^((3))=frac(6x^2-2,(1+x^2)^3)+6a frac(1+a^2 x^4-6a x^2,(1+a x^2)^4). $
由−2+6a=1得a=1/2. 【典型错误】泰勒展开比连续求三次导数简便，须注意x³系数是第三阶导数除以3! .
]

#answer("13.")[
$lambda^4+lambda^3+2lambda^2+3lambda+4$. 【解】按第一列展开，再展开三阶式，
$ D=lambda det(mat(lambda,-1,0;0,lambda,-1;3,2,lambda+1))+4 $
$ =lambda(lambda det(mat(lambda,-1;2,lambda+1))+3)+4 $
$ =lambda^2[lambda(lambda+1)+2]+3lambda+4. $
【典型错误】按行列展开用的是代数余子式，须保留其符号.
]

#answer("14.")[
$(8.2,10.8)$. 【解】双侧置信区间为
$ (overline(x)-frac(s,sqrt(n))t_(alpha/2)(n-1),overline(x)+frac(s,sqrt(n))t_(alpha/2)(n-1)). $
中心是样本均值9.5，上限10.8，所以距离为1.3，下限为8.2. 开、闭或半开半闭区间均可.
【典型错误】应识别区间中心为样本均值，不必再求未知的s和n.
]

= 三、解答题

#answer("15.")[
$ integral.double_D x dif x dif y&=2integral_0^(pi/2)dif theta integral_2^(2(1+cos theta)) r^2 cos theta dif r \
&=16/3 integral_0^(pi/2)[(1+cos theta)^3-1]cos theta dif theta \
&=16/3 integral_0^(pi/2)(3cos^2 theta+3cos^3 theta+cos^4 theta)dif theta \
&=32/3+5pi. $

三个三角积分分别为 $integral_0^(pi/2)3cos^2 theta dif theta=3pi/4$、$integral_0^(pi/2)3cos^3 theta dif theta=2$、$integral_0^(pi/2)cos^4 theta dif theta=3pi/16$，可由华里士公式，或降幂与u=sinθ换元求得.
【典型错误】极坐标面积元是r dr dθ，且x=r cosθ；不要混为r sinθ，亦须核对三角积分系数.
]

#answer("16.")[
（Ⅰ）微分方程 $y''+2y'+k y=0$ 的特征方程为 $lambda^2+2lambda+k=0$.
解得 $lambda_1=-1+sqrt(1-k),lambda_2=-1-sqrt(1-k)$.
因为 $0<k<1$，所以 $lambda_1<0,lambda_2<0$，从而 $integral_0^infinity e^(lambda_1 x)dif x$ 与 $integral_0^infinity e^(lambda_2 x)dif x$ 收敛.
由于 $lambda_1!=lambda_2$，所以 $y(x)=C_1 e^(lambda_1 x)+C_2 e^(lambda_2 x)$，其中 $C_1$ 与 $C_2$ 是任意常数.综上可知，反常积分 $integral_0^infinity y(x)dif x$ 收敛.
（Ⅱ）由（Ⅰ）知，$lambda_1<0,lambda_2<0$，所以
$ lim_(x->+infinity)y(x)=lim_(x->+infinity)(C_1 e^(lambda_1 x)+C_2 e^(lambda_2 x))=0, $
$ lim_(x->+infinity)y'(x)=lim_(x->+infinity)(C_1 lambda_1 e^(lambda_1 x)+C_2 lambda_2 e^(lambda_2 x))=0. $
又 $y(0)=1,y'(0)=1$，所以
$ integral_0^infinity y(x)dif x&=integral_0^infinity[-1/k(y''(x)+2y'(x))]dif x \
&=-1/k(y'(x)+2y(x))|_0^infinity \
&=3/k. $

【解法2】第一问同上. 第二问由初值得 $C_1+C_2=1,C_1 lambda_1+C_2 lambda_2=1$，故
$ C_1=frac(lambda_2-1,lambda_2-lambda_1),quad C_2=frac(1-lambda_1,lambda_2-lambda_1). $
分别积分指数项并化简得
$ integral_0^infinity y(x)dif x=frac(1-(lambda_1+lambda_2),lambda_1 lambda_2)=3/k. $
【典型错误】第一问只需证明两指数项均可积；第二问直接积分微分方程可减少求常数的计算.
]

#answer("17.")[
因为 $(partial f(x,y))/(partial x)=(2x+1)e^(2x-y)$，所以
$ f(x,y)&=integral (partial f(x,y))/(partial x)dif x \
&=integral (2x+1)e^(2x-y)dif x \
&=x e^(2x-y)+C(y). $
将 $f(0,y)=y+1$ 代入上式，得 $C(y)=y+1$.所以 $f(x,y)=x e^(2x-y)+y+1$.从而
$ I(t)&=integral_(L_t) (partial f(x,y))/(partial x)dif x+(partial f(x,y))/(partial y)dif y \
&=f(1,t)-f(0,0)=e^(2-t)+t. $
$I'(t)=-e^(2-t)+1$.令 $I'(t)=0$ 得 $t=2$.
由于当 $t<2$ 时，$I'(t)<0,I(t)$ 单调减少；当 $t>2$ 时，$I'(t)>0,I(t)$ 单调增加，所以 $I(2)=3$ 是 $I(t)$ 在 $(-infinity,+infinity)$ 上的最小值.

【解法2】由积分是全微分积分，$I(t)=f(1,t)-f(0,0)$. 又
$ f(1,t)-f(0,t)=integral_0^1(2x+1)e^(2x-t)dif x=e^(2-t), $
而f(0,t)=t+1、f(0,0)=1，故I(t)=t+e²⁻ᵗ，余同第一种解法.
【典型错误】全微分积分应利用端点差；若换特殊路径须说明路径无关. I是t的一元函数，不能用二元极值判别式.
]

#answer("18.")[
根据高斯公式得 $I=integral.triple_Omega (2x+1)dif x dif y dif z$.
因为 $integral.triple_Omega dif x dif y dif z=1/3 times 1/2 times 2 times 1 times 1=1/3$，
$ integral.triple_Omega x dif x dif y dif z&=integral_0^1 dif x integral_0^(2(1-x))dif y integral_0^(1-x-y/2)x dif z \
&=integral_0^1 dif x integral_0^(2(1-x))x(1-x-y/2)dif y \
&=integral_0^1 x(1-x)^2 dif x \
&=1/12, $
所以 $I=2times 1/12+1/3=1/2$.

【解法2】直接拆为三个坐标面与斜面S. xOy、xOz面的贡献为0，yOz面外侧贡献为−1. 对斜面z=1−x−y/2，投影后得
$ I_S=integral_0^1 dif x integral_0^(2-2x)(x^2-3x-5/2 y+4)dif y $
$ =integral_0^1(-2x^3+3x^2-4x+3)dif x=3/2. $
故I=−1+3/2=1/2.
【典型错误】Σ已是完整闭曲面，无须再补面；高斯公式应使用外侧方向. 直接投影时须包含坐标面贡献并正确确定法向量.
]

#answer("19.")[
（Ⅰ）因为 $x_(n+1)=f(x_n)$，所以
$ abs(x_(n+1)-x_n)=abs(f(x_n)-f(x_(n-1)))=abs(f'(xi)(x_n-x_(n-1))), $
其中 $xi$ 介于 $x_n$ 与 $x_(n-1)$ 之间.
又 $0<f'(x)<1/2$，所以
$ abs(x_(n+1)-x_n)<=1/2 abs(x_n-x_(n-1))<=dots<=1/2^(n-1)abs(x_2-x_1). $
由于级数 $sum_(n=1)^infinity 1/2^(n-1)abs(x_2-x_1)$ 收敛，所以级数 $sum_(n=1)^infinity (x_(n+1)-x_n)$ 绝对收敛.
（Ⅱ）设 $sum_(n=1)^infinity (x_(n+1)-x_n)$ 的前 $n$ 项和为 $S_n$，则 $S_n=x_(n+1)-x_1$.
由（Ⅰ）知，$lim_(n->infinity)S_n$ 存在，即 $lim_(n->infinity)(x_(n+1)-x_1)$ 存在，所以 $lim_(n->infinity)x_n$ 存在.
设 $lim_(n->infinity)x_n=c$，由 $x_(n+1)=f(x_n)$ 及 $f(x)$ 连续，得 $c=f(c)$，即 $c$ 是 $g(x)=x-f(x)$ 的零点.
因为 $g(0)=-1,g(2)=2-f(2)=1-[f(2)-f(0)]=1-2f'(eta)>0$，其中 $eta in(0,2)$，且 $g'(x)=1-f'(x)>0$，所以 $g(x)$ 存在唯一零点，且零点位于区间 $(0,2)$ 内.
于是 $0<c<2$，即 $0<lim_(n->infinity)x_n<2$.

【证法2】若某个相邻差为0，由f严格递增知前后各项均相等，级数自然绝对收敛. 否则由中值定理，
$ frac(abs(x_(n+1)-x_n),abs(x_n-x_(n-1)))=f'(xi)<1/2, $
故用比值判别法得绝对收敛. 由 $x_n=x_1+sum_(k=1)^(n-1)(x_(k+1)-x_k)$ 得极限c存在，且c=f(c). 中值定理给出 $abs(c-1)=abs(f(c)-f(0))<1/2 abs(c)<=1/2 abs(c-1)+1/2$，故|c−1|＜1，即0＜c＜2.
【典型错误】收敛与绝对收敛须区别；写出望远镜和并不足以证明收敛，仍须估计相邻差.
]

#answer("20.")[
对矩阵 $(A bar.v B)$ 施以初等行变换
$ (A bar.v B)&=mat(1,-1,-1,2,2;2,a,1,1,a;-1,1,a,-a-1,-2,augment: #3) \
&arrow.r mat(1,-1,-1,2,2;0,a+2,3,-3,a-4;0,0,a-1,1-a,0,augment: #3)=C. $
当 $a!=1$ 且 $a!=-2$ 时，由于
$ C&arrow.r mat(1,-1,-1,2,2;0,a+2,3,-3,a-4;0,0,1,-1,0,augment: #3) \
&arrow.r mat(1,0,0,1,3a/(a+2);0,1,0,0,(a-4)/(a+2);0,0,1,-1,0,augment: #3), $
所以 $A X=B$ 有唯一解，且 $X=mat(1,3a/(a+2);0,(a-4)/(a+2);-1,0)$.
当 $a=1$ 时，由于
$ C=mat(1,-1,-1,2,2;0,3,3,-3,-3;0,0,0,0,0,augment: #3) arrow.r mat(1,0,0,1,1;0,1,1,-1,-1;0,0,0,0,0,augment: #3), $
所以 $A X=B$ 有无穷多解，且
$ X=mat(1,1;-1,-1;0,0)+mat(0,0;k_1,k_2;-k_1,-k_2), $
其中 $k_1,k_2$ 为任意常数.
当 $a=-2$ 时，由于
$ C=mat(1,-1,-1,2,2;0,0,3,-3,-6;0,0,-3,3,0,augment: #3) arrow.r mat(1,-1,-1,2,2;0,0,1,-1,0;0,0,0,0,1,augment: #3), $
所以 $A X=B$ 无解.

【典型错误】AX=B等价于对B的两列分别求两个方程组；无穷多解时两列的自由参数独立. 参数应分a=−2、a=1及其余三类，并正确对应无解、无穷多解和唯一解.
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

【典型错误】矩阵乘法通常不交换，不能任意用二项式展开或由B²=BA错误推出B¹⁰⁰=B⁵⁰A⁵⁰. 应逐次使用B²=BA，得到B¹⁰⁰=BA⁹⁹.
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

