#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2016, subject: "二", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#import "@preview/cetz:0.5.2"
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2016 数学二试卷参考解答

= 一、选择题


#answer("1.")[
B. 【解】x→0时，α₁∼−x²/2，α₂∼x⁵/6，α₃∼x/3. 因而α₂是α₃的高阶无穷小，α₃是α₁的低阶无穷小.
]

#answer("2.")[

D. 【解】两段原函数分别为 $(x-1)^2+C_1$ 和 $x ln x-x+C_2$. 原函数在1处连续，故C₁=C₂−1. 取C₁=0、C₂=1，即得D.

]

#answer("3.")[
B. 【解】原函数为 $-e^(1/x)$. 因此
$ integral_(-infinity)^0 frac(e^(1/x),x^2)dif x=lim_(b->0^-)(-e^(1/b))+lim_(a->-infinity)e^(1/a)=1. $
而在(0,+∞)上，x→0⁺时e¹ᐟˣ→+∞，积分发散.
]

#answer("4.")[
B. 【解】由导函数图形，f′在a处由正变负、c处由负变正，故f有两个极值点. 在b、e、d处，f′的单调性发生改变，分别对应f的三个拐点. 判断极值须看导数是否变号，判断拐点须看曲线凹凸性是否改变.
]

#answer("5.")[
A. 【解】f₁、f₂在x₀附近均为凹函数，图形在共同切线g的下方. 又x₀处曲率K₁＞K₂，且二者斜率相同，故f₁弯曲得更快. 因此在x₀的充分小邻域内，f₁(x)≤f₂(x)≤g(x).
]

#answer("6.")[
D. 【解】对 $f=e^x/(x-y)$ 求偏导，
$ f_x=frac(e^x(x-y-1),(x-y)^2),quad f_y=frac(e^x,(x-y)^2), $
故fₓ+fᵧ=f.
]

#answer("7.")[

C. 【解】设 $P^(-1)A P=B$，转置及求逆可得 $P^T A^T(P^T)^(-1)=B^T$、$P^(-1)A^(-1)P=B^(-1)$，且 $P^(-1)(A+A^(-1))P=B+B^(-1)$，所以A、B、D成立. 对C取 $A=mat(1,3;2,2),B=mat(4,0;0,-1)$，二者相似，但A+Aᵀ与B+Bᵀ不相似.
【典型错误】合同与相似的性质不可混用.

]

#answer("8.")[
C. 【解】特征值为a+2、a−1、a−1. 题设要求一个正特征值、两个负特征值. 由detA=(a+2)(a−1)²＞0得a＞−2且a≠1；a＞1时三者全正，须排除. 故−2＜a＜1.
]


= 二、填空题

#answer("9.")[
$y=x+pi/2$. 【解】渐近线斜率为 $lim_(x->infinity)f(x)/x=1$，截距为
$ lim_(x->infinity)(frac(x^3,1+x^2)+arctan(1+x^2)-x)=pi/2. $
x→−∞时同样得到该渐近线.
]

#answer("10.")[
$sin 1-cos 1$. 【解】由定积分定义和分部积分，
$ lim_(n->infinity)sum_(k=1)^n frac(k,n^2)sin(k/n)=integral_0^1 x sin x dif x=[-x cos x+sin x]_0^1=sin 1-cos 1. $
]

#answer("11.")[
$y'-y=2x-x^2$. 【解法1】两解之差eˣ满足齐次方程，故p(x)=−1. 将特解x²代入得q(x)=2x−x².
【解法2】将两个特解分别代入y′+p(x)y=q(x)，相减求p，再代回求q.
]

#answer("12.")[
$5 dot 2^(n-1)$. 【解】对积分方程求导，得f′=2(x+1)+2f，f″=2+2f′，n≥2时 $f^((n))=2^(n-2)f''$. 又f(0)=1、f′(0)=4、f″(0)=10，所以 $f^((n))(0)=5 dot 2^(n-1)$.
【典型错误】变上限积分的导数是其被积函数，计算初值时不可遗漏常数项.
]

#answer("13.")[
$2sqrt(2)v_0$. 【解】质点到原点的距离为 $l=sqrt(x^2+x^6)$，故
$ frac(dif l,dif t)=frac(2x+6x^5,2sqrt(x^2+x^6))frac(dif x,dif t). $
在x=1且dx/dt=v₀时，得2√2v₀.
]

#answer("14.")[
2. 【解】B的秩为2，故A的秩也为2. 而detA=(a−2)(a+1)²=0，得a=2或−1；a=−1时秩为1，应排除. 所以a=2.
【典型错误】矩阵等价只要求秩相同，不能混同于相似或合同.
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
]

#answer("16.")[

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

#answer("17.")[

解　在 $(x^2+y^2)z+ln z+2(x+y+1)=0$ 两边分别对 $x$ 和 $y$ 求偏导数，得
$ cases(2x z+(x^2+y^2)(partial z)/(partial x)+1/z (partial z)/(partial x)+2=0,
2y z+(x^2+y^2)(partial z)/(partial y)+1/z (partial z)/(partial y)+2=0). quad "①" $
令 $(partial z)/(partial x)=0$，$(partial z)/(partial y)=0$，得 $x=-1/z$，$y=-1/z$.
将其代入原方程，得 $ln z-2/z+2=0$，可知 $z=1$，从而 $x=y=-1$.
对①中两式两边分别再对 $x,y$ 求偏导数，得
$ cases(2z+4x z_x'+(x^2+y^2)z_(x x)''-1/z^2(z_x')^2+1/z z_(x x)''=0,
2x z_y'+2y z_x'+(x^2+y^2)z_(x y)''-1/z^2 z_x' z_y'+1/z z_(x y)''=0,
2z+4y z_y'+(x^2+y^2)z_(y y)''-1/z^2(z_y')^2+1/z z_(y y)''=0). $
从而 $A=z_(x x)''(-1,-1)=-2/3$，$B=z_(x y)''(-1,-1)=0$，$C=z_(y y)''(-1,-1)=-2/3$.
由于 $A C-B^2>0$，$A<0$，所以 $z(-1,-1)=1$ 是 $z(x,y)$ 的极大值.

【典型错误】应对隐函数求导得到的恒等式再次求导，再在驻点处代值，不能遗漏复合函数的导数. 二阶判别式为正而A为负，对应极大值.
]

#answer("18.")[

解　因为区域 $D$ 关于 $y$ 轴对称，所以 $integral.double_D (x y)/(x^2+y^2) dif x dif y=0$.
$ integral.double_D (x^2-x y-y^2)/(x^2+y^2) dif x dif y
 &=integral.double_D (x^2-y^2)/(x^2+y^2) dif x dif y \
 &=integral_(pi/4)^(3pi/4) dif theta integral_0^(1/sin theta)(r^2(cos^2 theta-sin^2 theta))/r^2 r dif r \
 &=1/2 integral_(pi/4)^(3pi/4) (csc^2 theta-2)dif theta \
 &=1/2[-cot theta-2theta]_(pi/4)^(3pi/4)=1-pi/2. $

【典型错误】先用对称性消去xy项可以减少计算. 直线y=1的极坐标方程为r=1/sinθ，径向上限不能误写成1；积分还需用cot²θ=csc²θ−1.
]

#answer("19.")[

解　将 $y_2(x)=u(x)e^x$ 代入原方程整理得
$ (2x-1)u''+(2x-3)u'=0. $
令 $u'(x)=z$，则 $(2x-1)z'+(2x-3)z=0$，解得 $z=tilde(C)_1(2x-1)e^(-x)$，从而
$ u(x)=integral tilde(C)_1(2x-1)e^(-x)dif x=-tilde(C)_1[(2x-1)e^(-x)+2e^(-x)]+tilde(C)_2. $
由 $u(-1)=e$，$u(0)=-1$，得 $tilde(C)_1=1$，$tilde(C)_2=0$，所以 $u(x)=-(2x+1)e^(-x)$.
所以原微分方程的通解为 $y=C_1 e^x-C_2(2x+1)$.

【典型错误】代入y₂=ueˣ后应令u′=z降阶，分离变量并再积分. 两个线性无关的解所张成的线性组合才是二阶齐次方程的通解.
]

#answer("20.")[

解　设 $D$ 绕 $x$ 轴旋转一周所得旋转体的体积为 $V$，表面积为 $S$，则
$ V&=2/3 pi-integral_0^1 pi y^2 dif x \
 &=2/3 pi-integral_(pi/2)^0 pi sin^6 t (cos^3 t)'dif t \
 &=2/3 pi+3pi integral_0^(pi/2)(1-cos^2 t)^3 cos^2 t dif(cos t) \
 &=2/3 pi-16/105 pi=18/35 pi, \
 S&=2pi+integral_0^(pi/2)2pi y(t)sqrt((x'(t))^2+(y'(t))^2)dif t \
 &=2pi+2pi integral_0^(pi/2)sin^3 t sqrt(9cos^4 t sin^2 t+9sin^4 t cos^2 t)dif t \
 &=2pi+6pi integral_0^(pi/2)sin^4 t cos t dif t=16/5 pi. $

体积也可用三角积分递推式计算：
$ V=2/3 pi-3pi integral_0^(pi/2)(sin^7 t-sin^9 t)dif t $
$ =2/3 pi-3pi(frac(2 dot 4 dot 6,3 dot 5 dot 7)-frac(2 dot 4 dot 6 dot 8,3 dot 5 dot 7 dot 9))=18/35 pi. $
【典型错误】半球体积和半球面面积可直接用2π/3、2π. 星形线宜保留参数方程；t从π/2降到0时x从0升到1，应核对积分上下限. 表面积为外半球面与内旋转曲面面积之和.
]

#answer("21.")[

解　（Ⅰ）$f(x)$ 在区间 $[0,3pi/2]$ 上的平均值
$ overline(f)&=2/(3pi)integral_0^(3pi/2)f(x)dif x \
 &=2/(3pi)integral_0^(3pi/2)(integral_0^x cos t/(2t-3pi)dif t)dif x \
 &=2/(3pi)integral_0^(3pi/2)dif t integral_t^(3pi/2)cos t/(2t-3pi)dif x \
 &=-1/(3pi)integral_0^(3pi/2)cos t dif t=1/(3pi). $
（Ⅱ）由题意，得 $f'(x)=cos x/(2x-3pi)$，$x in (0,3pi/2)$.
当 $0<x<pi/2$ 时，因为 $f'(x)<0$，所以 $f(x)<f(0)=0$，故 $f(x)$ 在 $(0,pi/2)$ 内无零点，且 $f(pi/2)<0$.
由积分中值定理，存在 $x_0 in [0,3pi/2]$，使得 $f(x_0)=overline(f)=1/(3pi)>0$.由于当 $x in (0,pi/2]$ 时 $f(x)<0$，所以 $x_0 in (pi/2,3pi/2]$.
根据连续函数介值定理，存在 $xi in (pi/2,x_0) subset (pi/2,3pi/2]$，使得 $f(xi)=0$.又因为当 $pi/2<x<3pi/2$ 时，$f'(x)>0$，所以 $f(x)$ 在 $(pi/2,3pi/2)$ 内至多有一个零点.
综上所述，$f(x)$ 在 $(0,3pi/2)$ 内存在唯一的零点.

零点存在性也可直接由右端函数值证明. 令x=3π/2−t，得
$ f(3pi/2)=1/2 integral_0^(3pi/2)frac(sin t,t)dif t $
$ =1/2 integral_0^(pi/2)(1/t-1/(pi+t))sin t dif t+1/2 integral_(pi/2)^pi frac(sin t,t)dif t>0. $
结合f(π/2)＜0与其后严格递增，即得唯一零点.
【典型错误】原函数应表示为积分，不能误认作被积函数的导数，也不必强求初等表达式. 换序前须明确三角形积分区域；平均值与积分中值定理可用于证明存在性.
]

#answer("22.")[

解　（Ⅰ）对矩阵 $(A bar.v beta)$ 施以初等行变换
$ (A bar.v beta)=mat(1,1,1-a,0;1,0,a,1;a+1,1,a+1,2a-2,augment: #3)->mat(1,1,1-a,0;0,-1,2a-1,1;0,0,-a^2+2a,a-2,augment: #3), $
由方程组 $A x=beta$ 无解，知 $"秩"(A bar.v beta)>"秩" A$，即 $-a^2+2a=0$，且 $a-2 !=0$，解得 $a=0$.
（Ⅱ）对矩阵 $(A^T A bar.v A^T beta)$ 施以初等行变换
$ (A^T A bar.v A^T beta)=mat(3,2,2,-1;2,2,2,-2;2,2,2,-2,augment: #3)->mat(1,0,0,1;0,1,1,-2;0,0,0,0,augment: #3), $
所以，方程组 $A^T A x=A^T beta$ 的通解 $x=mat(1;-2;0)+k mat(0;-1;1)$（$k$ 为任意常数）.

【典型错误】无解须同时满足系数矩阵秩小于增广矩阵秩，不能只令−a²+2a=0而遗漏a−2≠0，否则会多出a=2. 初等行变换需核对各项.
]

#answer("23.")[

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

