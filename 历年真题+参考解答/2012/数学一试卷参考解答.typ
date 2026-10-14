#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2012, subject: "一", title: "2012年全国硕士研究生入学统一考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2012 数学一试卷参考解答

= 一、选择题

#answer("1.")[
选 C.
解　对 $x!=-1$，$y=x/(x-1)$，因此 $x=1$ 为唯一竖直渐近线. 又
$ lim_(x->+-infinity)y=1,quad lim_(x->+-infinity)frac(y,x)=0, $
所以 $y=1$ 是水平渐近线，无斜渐近线，共两条.
*常见错误* 只因分母在 $x=-1$ 为零，就误认其也是竖直渐近线. 必须按极限定义判断.
]

#answer("2.")[
选 A.
*分析* 可用多因子乘积求导，也可由一点处导数定义直接计算.
解法1　令 $g_k(x)=e^(k x)-k$，则
$ f'(x)=sum_(k=1)^n k e^(k x) product_(j!=k)(e^(j x)-j). $
在 $x=0$，除 $k=1$ 项外都含因子 $e^0-1=0$，所以
$ f'(0)=product_(j=2)^n(1-j)=(-1)^(n-1)(n-1)!. $
解法2　由 $f(0)=0$，
$ f'(0)=lim_(x->0)frac(e^x-1,x) dot lim_(x->0)product_(j=2)^n(e^(j x)-j) \
=(-1)^(n-1)(n-1)!. $
*常见错误* 运算出错而选择 C.
]

#answer("3.")[
选 B.
*分析* 直接证明 B，其他命题用反例否定.
解　若 $lim_((x,y)->(0,0))f(x,y)/(x^2+y^2)$ 存在，由连续性得 $f(0,0)=0$，且
$ lim_((x,y)->(0,0))frac(f(x,y),sqrt(x^2+y^2)) \
=lim_((x,y)->(0,0))frac(f(x,y),x^2+y^2)sqrt(x^2+y^2)=0. $
故 $f(x,y)-f(0,0)=0x+0y+o(sqrt(x^2+y^2))$，在原点可微.
取 $f(x,y)=abs(x)+abs(y)$，A 的极限存在，但原点偏导不存在，故 A 错.
取 $f(x,y)=x+y$，原点可微，而 C、D 中的极限均不存在，故 C、D 错.
*常见错误* 将充分条件误认为必要条件，选择 D.
]

#answer("4.")[
选 D.
解　
$ I_2=I_1+integral_pi^(2pi)e^(x^2)sin x dif x<I_1, $
因为在 $(pi,2pi)$ 上被积函数为负. 又分别令 $x=2pi-t$ 和 $x=2pi+t$，得
$ I_3-I_1=integral_pi^(3pi)e^(x^2)sin x dif x \
=integral_0^pi[e^((2pi+t)^2)-e^((2pi-t)^2)]sin t dif t>0. $
所以 $I_2<I_1<I_3$.
*分析* 利用定积分的可加性、比较定理及换元，将两个区间化为相同积分区间.
*常见错误* 未完成 $I_1$ 与 $I_3$ 的比较，误选 C.
]

#answer("5.")[
选 C.
解　当 $c_1=1$ 时，$det(alpha_1,alpha_2,alpha_3)=-1$，$det(alpha_1,alpha_2,alpha_4)=1$，排除 A、B. 当 $c_2=0,c_3=c_4=1$ 时，$det(alpha_2,alpha_3,alpha_4)=-2$，排除 D.
当 $c_1=0$ 时 $alpha_1=0$，C 中向量组相关；当 $c_1!=0$ 时，
$ (c_3+c_4)alpha_1-c_1(alpha_3+alpha_4)=0, $
且系数不全为零，故对任意参数 C 中向量组都相关.
*分析* 要证明对任意参数均相关，须给出一般证明；否定某项只需举一个反例.
]

#answer("6.")[
选 B.
解法1　$alpha_1,alpha_2,alpha_3$ 分别是 $A$ 属于1、1、2的特征向量. $alpha_1+alpha_2$ 仍属于特征值1，因此
$ Q^(-1)A Q=mat(1,0,0;0,1,0;0,0,2). $
解法2　$Q$ 由 $P$ 的第二列加到第一列得到，故
$ Q=P C,quad C=mat(1,0,0;1,1,0;0,0,1), $
$ Q^(-1)A Q=C^(-1)(P^(-1)A P)C \
=mat(1,0,0;-1,1,0;0,0,1)mat(1,0,0;0,1,0;0,0,2)mat(1,0,0;1,1,0;0,0,1) \
=mat(1,0,0;0,1,0;0,0,2). $
*分析* 可利用特征向量性质，也可用初等列变换对应的初等矩阵.
]

#answer("7.")[
选 A.
解　由独立性，联合密度为
$ f(x,y)=cases(4e^(-x-4y)&x>0,y>0,0&"其他"). $
故
$ P{X<Y}=4integral_0^infinity e^(-x)dif x integral_x^infinity e^(-4y)dif y \
=integral_0^infinity e^(-5x)dif x=1/5. $
*常见错误* 积分区域或积分计算错误.
]

#answer("8.")[
选 D.
解　设两段长度为 $X,Y$，则 $Y=1-X$. 两者具有负线性关系，故 $rho_(X Y)=-1$.
*分析* 利用相关系数的概念可直接判断，无需繁琐地计算数字特征.
]

= 二、填空题

#answer("9.")[
应填 $e^x$.
解法1　齐次方程的特征方程为 $lambda^2+lambda-2=0$，故 $f=C_1 e^x+C_2 e^(-2x)$. 代入另一个方程得
$ 2C_1 e^x+5C_2 e^(-2x)=2e^x, $
所以 $C_1=1,C_2=0$，即 $f=e^x$.
解法2　消去二阶导数得 $f'-3f=-2e^x$，解得 $f=e^x+C e^(3x)$. 再代入 $f''+f=2e^x$，有 $2e^x+10C e^(3x)=2e^x$，故 $C=0$.
*常见错误* 第二种方法中未代回另一方程确定常数.
]

#answer("10.")[
应填 $pi/2$.
解法1　令 $t=x-1$，利用奇偶性及半圆面积，
$ integral_0^2 x sqrt(2x-x^2)dif x \
=integral_(-1)^1 t sqrt(1-t^2)dif t+integral_(-1)^1 sqrt(1-t^2)dif t \
=0+pi/2=pi/2. $
解法2　
$ integral_0^2 x sqrt(2x-x^2)dif x \
=-1/2 integral_0^2(2x-x^2)'sqrt(2x-x^2)dif x \
+integral_0^2 sqrt(1-(x-1)^2)dif x \
=[-1/3(2x-x^2)^(3/2)]_0^2+pi/2=pi/2. $
*常见错误* 得到负值. 被积函数非负、下限小于上限，积分不能为负.
]

#answer("11.")[
应填 $i+j+k$.
解　设 $f=x y+z/y$，则
$ f'_x=y,quad f'_y=x-z/y^2,quad f'_z=1/y. $
在 $(2,1,1)$ 三个偏导均为1，所以梯度为 $i+j+k$.
*常见错误* 将梯度混同于偏导数之和而答3，或与全微分混淆而答 $dif x+dif y+dif z$.
]

#answer("12.")[
应填 $sqrt(3)/12$.
解　投影区域 $D={ (x,y)|x+y<=1,x>=0,y>=0 }$，面积元素 $dif S=sqrt(3)dif x dif y$，故
$ integral.double_Sigma y^2 dif S=sqrt(3)integral_0^1 dif y integral_0^(1-y)y^2 dif x \
=sqrt(3)integral_0^1 y^2(1-y)dif y=sqrt(3)/12. $
]

#answer("13.")[
应填2.
解　令 $B=alpha alpha^T$，则 $B^T=B$，可相似对角化. 因 $alpha^T alpha=1$，
$ B^2=alpha(alpha^T alpha)alpha^T=B,quad (E-B)B=O. $
$B$ 非零且秩为1，并有特征值1，其余特征值为0. 因而存在可逆矩阵 $P$，使
$ P^(-1)B P=mat(1,0,0;0,0,0;0,0,0)=Lambda, $
于是 $E-B=P(E-Lambda)P^(-1)$，秩为2.
*注* 作为填空题可取 $alpha=(1,0,0)^T$ 直接得出答案，但一般证明能说明它与具体单位向量无关.
]

#answer("14.")[
应填 $3/4$.
解　$A,C$ 互不相容，所以 $P(A C)=0$，又 $A B C subset A C$，故 $P(A B C)=0$. 于是
$ P(A B|overline(C))=frac(P(A B overline(C)),P(overline(C))) \
=frac(P(A B)-P(A B C),1-P(C))=frac(1/2,1-1/3)=3/4. $
*常见错误* 混淆条件概率或计算错误，得到 $1/4$ 或1.
]

= 三、解答题

#answer("15.")[
证　记 $f(x)=x ln((1+x)/(1-x))+cos x-x^2/2-1$，则
$ f'(x)=ln((1+x)/(1-x))+(2x)/(1-x^2)-sin x-x, quad f''(x)=4/(1-x^2)^2-1-cos x. $
当 $-1<x<1$ 时，由于 $4/(1-x^2)^2>=4,1+cos x<=2$，所以 $f''(x)>=2>0$，从而 $f'(x)$ 单调增加.
又因为 $f'(0)=0$，所以，当 $-1<x<0$ 时，$f'(x)<0$；当 $0<x<1$ 时，$f'(x)>0$，于是 $f(0)=0$ 是函数 $f(x)$ 在 $(-1,1)$ 内的最小值.
从而当 $-1<x<1$ 时，$f(x)>=f(0)=0$，即
$ x ln((1+x)/(1-x))+cos x>=1+x^2/2. $

证明2　利用带拉格朗日余项的泰勒公式，有
$ x ln(1+x)=x(x-x^2/2+frac(x^3,3(1+theta_1 x)^3)), $
$ x ln(1-x)=x(-x-x^2/2-frac(x^3,3(1-theta_2 x)^3)), $
$ cos x=1-x^2/2+frac(cos(theta_3 x),4!)x^4,quad 0<theta_i<1. $
相减相加得
$ x ln((1+x)/(1-x))+cos x=1+3/2 x^2 \
+lr(frac(1,3(1+theta_1 x)^3)+frac(1,3(1-theta_2 x)^3)+frac(cos(theta_3 x),4!))x^4 \
>=1+3/2 x^2>=1+x^2/2. $
证明3　上述辅助函数为偶函数，只需考虑 $0<=x<1$. 此时
$ f'(x)=ln((1+x)/(1-x))+frac(x(1+x^2),1-x^2)-sin x \
>=ln((1+x)/(1-x))+x-sin x>=0. $
故 $f(x)>=f(0)=0$.
证明4（原书列出的展开式）　
$ x ln(1+x)=x(x-x^2/2+x^3/3-x^4/4+x^5/5)+o(x^6), $
$ x ln(1-x)=x(-x-x^2/2-x^3/3-x^4/4-x^5/5)+o(x^6), $
$ cos x=1-x^2/2!+x^4/4!-x^6/6!+o(x^6). $
相加相减得到
$ x ln((1+x)/(1-x))+cos x \
=1+3/2 x^2+(2/3+1/4!)x^4+(2/5-1/6!)x^6+o(x^6). $
*常见错误* 只给出导数在零点的值，就断言函数在整个区间单调；未说明偶性便只证明正半轴；或把未确定符号的余项当作正数.
]

#answer("16.")[
解　因为
$ f'_x=(1-x^2)e^(-(x^2+y^2)/2),quad f'_y=-x y e^(-(x^2+y^2)/2), $
令 $cases(f'_x=0,f'_y=0)$，得驻点 $(1,0)$ 和 $(-1,0)$.
记
$ A=f''_(x x)=x(x^2-3)e^(-(x^2+y^2)/2),quad B=f''_(x y)=y(x^2-1)e^(-(x^2+y^2)/2),quad C=f''_(y y)=x(y^2-1)e^(-(x^2+y^2)/2). $
在点 $(1,0)$ 处，由于 $B^2-A C=-2e^(-1)<0,A=-2e^(-1/2)<0$，所以 $f(1,0)=e^(-1/2)$ 是 $f(x,y)$ 的极大值.
在点 $(-1,0)$ 处，由于 $B^2-A C=-2e^(-1)<0,A=2e^(-1/2)>0$，所以 $f(-1,0)=-e^(-1/2)$ 是 $f(x,y)$ 的极小值.

*分析* 先由一阶偏导数求出所有驻点，再用二阶偏导数判别极值.
*常见错误* 偏导数计算错误；求出驻点而没有判别；只给极值点而未给极值.
]

#answer("17.")[
解　记 $a_n=(4n^2+4n+3)/(2n+1) (n=0,1,2,dots)$，因为 $lim_(n->infinity)a_(n+1)/a_n=1$，所以原级数的收敛半径为1.
又因为当 $x=±1$ 时，级数 $sum_(n=0)^infinity (4n^2+4n+3)/(2n+1)$ 发散，所以幂级数的收敛域是 $(-1,1)$.
记
$ S(x)=sum_(n=0)^infinity (4n^2+4n+3)/(2n+1)x^(2n)=sum_(n=0)^infinity(2n+1)x^(2n)+2sum_(n=0)^infinity x^(2n)/(2n+1). $
由于
$ sum_(n=0)^infinity(2n+1)x^(2n)&=lr(sum_(n=0)^infinity x^(2n+1))'=lr(x/(1-x^2))'=(1+x^2)/(1-x^2)^2 quad (-1<x<1), \
 sum_(n=0)^infinity x^(2n)/(2n+1)&=1/x sum_(n=0)^infinity x^(2n+1)/(2n+1)=1/x integral_0^x lr(sum_(n=0)^infinity t^(2n))dif t \
 &=1/x integral_0^x 1/(1-t^2)dif t=1/(2x)ln((1+x)/(1-x)) quad (0<|x|<1). $
又 $S(0)=3$，所以和函数
$ S(x)=cases((1+x^2)/(1-x^2)^2+1/x ln((1+x)/(1-x)) & 0<|x|<1,3 & x=0). $

解法2　由逐项求导可得
$ sum_(n=0)^infinity 3x^(2n)=3/(1-x^2), $
$ sum_(n=0)^infinity 4n x^(2n)=2x lr(sum_(n=0)^infinity x^(2n))'=4x^2/(1-x^2)^2, $
$ sum_(n=0)^infinity 4n^2 x^(2n)=x lr(x lr(sum_(n=0)^infinity x^(2n))')'=frac(4x^2(1+x^2),(1-x^2)^3). $
故当 $0<|x|<1$ 时，
$ S(x)=1/x integral_0^x sum_(n=0)^infinity(4n^2+4n+3)t^(2n)dif t \
=1/x integral_0^x frac(3+2t^2+3t^4,(1-t^2)^3)dif t \
=(1+x^2)/(1-x^2)^2+1/x ln((1+x)/(1-x)). $
在 $x=0$ 时仍有 $S(0)=3$.
*常见错误* 只求收敛半径，未检验两个端点；求和时除以 $x$ 后遗漏 $x=0$.
]

#answer("18.")[
解　曲线 $L$ 的切线斜率 $k=y'_t/x'_t=-(sin t)/f'(t)$，切线方程为
$ y-cos t=-(sin t)/f'(t)[x-f(t)]. $
令 $y=0$，得切线与 $x$ 轴交点的横坐标为 $x_0=f'(t)(cos t)/(sin t)+f(t)$.
由题意得 $[f'(t)(cos t)/(sin t)]^2+cos^2 t=1$.
因为 $f'(t)>0$，解得 $f'(t)=sin^2 t/(cos t)=1/(cos t)-cos t$.
由于 $f(0)=0$，所以 $f(t)=ln(sec t+tan t)-sin t$.
因为 $f(0)=0,lim_(t->pi/2)f(t)=+infinity$，所以以曲线 $L$ 及 $x$ 轴和 $y$ 轴为边界的区域是无界区域，其面积为
$ S=integral_0^(+infinity)y dif x=integral_0^(pi/2)cos t dot f'(t)dif t=integral_0^(pi/2)sin^2 t dif t=pi/4. $

*分析* 使用参数方程的切线斜率，由切线段长度求出微分方程，再求曲线和区域面积.
*常见错误* 将切线斜率误当成 $f'(t)$，或把曲线上的点写成 $(t,f(t))$；忽略区域无界，面积换元时漏掉 $dif x=f'(t)dif t$.
]

#answer("19.")[
解　取 $L_1$ 为有向线段 $x=0,y$ 从2到0；由 $L$ 与 $L_1$ 围成的平面区域记为 $D$. 根据格林公式，得
$ I&=integral_L 3x^2 y dif x+(x^3+x-2y)dif y \
 &=integral_(L+L_1)3x^2 y dif x+(x^3+x-2y)dif y-integral_(L_1)3x^2 y dif x+(x^3+x-2y)dif y \
 &=integral.double_D[(partial(x^3+x-2y))/(partial x)-(partial(3x^2 y))/(partial y)]dif x dif y-integral_2^0(-2y)dif y \
 &=integral.double_D dif x dif y-integral_0^2 2y dif y=pi-pi/2-4=pi/2-4. $

解法2　直接对两段圆弧分别参数化. 第一段取 $x=1+cos t,y=sin t$，$t$ 从 $pi$ 到0，积分为
$ integral_0^pi(3sin^2 t+4cos t+2sin t cos t-cos^2 t-9cos^3 t-4cos^4 t)dif t \
=integral_0^pi(3sin^2 t-cos^2 t-4cos^4 t)dif t=-pi/2. $
第二段取 $x=2cos t,y=2sin t$，$0<=t<=pi/2$，积分为
$ integral_0^(pi/2)(64cos^4 t-44cos^2 t-8sin t cos t)dif t=pi-4. $
故两段积分之和为 $pi/2-4$.
*常见错误* 使用格林公式时补线方向弄反；圆弧参数的起止值与给定方向不符.
]

#answer("20.")[
解　（Ⅰ）$|A|=lr(|mat(1,a,0,0;0,1,a,0;0,0,1,a;a,0,0,1)|)=1-a^4$.

（Ⅱ）若方程组 $A x=beta$ 有无穷多解，则 $|A|=0$. 由（Ⅰ）可得 $a=1$ 或 $a=-1$.
当 $a=1$ 时，
$ (A:beta)=mat(1,1,0,0,1;0,1,1,0,-1;0,0,1,1,0;1,0,0,1,0,augment:#4) arrow.r mat(1,1,0,0,1;0,1,1,0,-1;0,0,1,1,0;0,0,0,0,-2,augment:#4), $
于是 $r(A)!=r(A:beta)$，故方程组 $A x=beta$ 无解.
当 $a=-1$ 时，
$ (A:beta)=mat(1,-1,0,0,1;0,1,-1,0,-1;0,0,1,-1,0;-1,0,0,1,0,augment:#4) arrow.r mat(1,0,0,-1,0;0,1,0,-1,-1;0,0,1,-1,0;0,0,0,0,0,augment:#4), $
于是 $r(A)=r(A:beta)=3<4$，故方程组 $A x=beta$ 有无穷多解.
此时其通解为 $x=mat(0;-1;0;0)+k mat(1;1;1;1)$，$k$ 为任意常数.

（Ⅱ）解法2　直接对含参数的增广矩阵消元，得
$ (A:beta) arrow.r mat(1,a,0,0,1;0,1,a,0,-1;0,0,1,a,0;0,-a^2,0,1,-a,augment:#4) $
$ arrow.r mat(1,a,0,0,1;0,1,a,0,-1;0,0,1,a,0;0,0,a^3,1,-a-a^2,augment:#4) $
$ arrow.r mat(1,a,0,0,1;0,1,a,0,-1;0,0,1,a,0;0,0,0,1-a^4,-a-a^2,augment:#4). $
有无穷多解必须同时满足 $1-a^4=0$ 和 $-a-a^2=0$，所以 $a=-1$，通解同上.
*常见错误* 混淆非齐次方程特解与对应齐次方程基础解系. 通解为特解加上齐次通解，特解不能再乘任意常数.
]

#answer("21.")[
解　（Ⅰ）因为 $r(A^T A)=r(A)$，对 $A$ 施以初等行变换
$ A=mat(1,0,1;0,1,1;-1,0,a;0,a,-1) arrow.r mat(1,0,1;0,1,1;0,0,a+1;0,0,0), $
所以当 $a=-1$ 时，$r(A)=2$.

（Ⅱ）由于 $a=-1$，所以 $A^T A=mat(2,0,2;0,2,2;2,2,4)$. 矩阵 $A^T A$ 的特征多项式为
$ |lambda E-A^T A|=lr(|mat(lambda-2,0,-2;0,lambda-2,-2;-2,-2,lambda-4)|)=lambda(lambda-2)(lambda-6), $
于是 $A^T A$ 的特征值为 $lambda_1=2,lambda_2=6,lambda_3=0$.
当 $lambda_1=2$ 时，由方程组 $(2E-A^T A)x=0$，可得属于2的一个单位特征向量 $1/sqrt(2)mat(1;-1;0)$；
当 $lambda_2=6$ 时，由方程组 $(6E-A^T A)x=0$，可得属于6的一个单位特征向量 $1/sqrt(6)mat(1;1;2)$；
当 $lambda_3=0$ 时，由方程组 $A^T A x=0$，可得属于0的一个单位特征向量 $1/sqrt(3)mat(1;1;-1)$.
令 $Q=mat(1/sqrt(2),1/sqrt(6),1/sqrt(3);-1/sqrt(2),1/sqrt(6),1/sqrt(3);0,2/sqrt(6),-1/sqrt(3))$，则 $f$ 在正交变换 $x=Q y$ 下的标准形为 $f=2y_1^2+6y_2^2$.

（Ⅰ）解法2　
$ A^T A=mat(2,0,1-a;0,1+a^2,1-a;1-a,1-a,3+a^2). $
它的一个二阶子式为 $2(1+a^2)!=0$，故秩为2当且仅当
$ det(A^T A)=(a+1)^2(3+a^2)=0, $
从而 $a=-1$.
*常见错误* 将零向量当成特征向量；未将特征向量单位化就构成正交矩阵；$Q$ 的列顺序与标准形中特征值顺序不对应；将 $A^T A$ 误算成 $A A^T$.
]

#answer("22.")[
解　（Ⅰ）$P{X=2Y}=P{X=0,Y=0}+P{X=2,Y=1}=1/4$.

（Ⅱ）由 $(X,Y)$ 的概率分布可得，$X,Y,X Y$ 的概率分布分别为
#table(columns:4,[$X$],[0],[1],[2],[$P$],[$1/2$],[$1/3$],[$1/6$])
#table(columns:4,[$Y$],[0],[1],[2],[$P$],[$1/3$],[$1/3$],[$1/3$])
#table(columns:4,[$X Y$],[0],[1],[4],[$P$],[$7/12$],[$1/3$],[$1/12$])
所以
$ E X=2/3,E Y=1,E(Y^2)=5/3,D Y=2/3,quad E(X Y)=2/3,op("Cov")(X,Y)=E(X Y)-E X dot E Y=0, $
故 $op("Cov")(X-Y,Y)=op("Cov")(X,Y)-D Y=-2/3$.

（Ⅱ）解法2　直接按协方差定义展开：
$ op("Cov")(X-Y,Y)=E[(X-Y)Y]-E(X-Y) dot E Y \
=E(X Y)-E(Y^2)-E X dot E Y+(E Y)^2 \
=2/3-5/3-2/3 dot 1+1=-2/3. $
解法3　由联合分布得到 $(X-Y,Y)$ 的分布：
#table(columns:4,[$X-Y$ / $Y$],[0],[1],[2],[-2],[0],[0],[$1/4$],[0],[$1/4$],[$1/3$],[$1/12$],[2],[$1/12$],[0],[0])
于是 $(X-Y)Y$ 在 $-4,0$ 处的概率为 $1/4,3/4$；$X-Y$ 在 $-2,0,2$ 处的概率为 $1/4,2/3,1/12$.
因此
$ E[(X-Y)Y]=-1,quad E(X-Y)=-1/3,quad E Y=1, $
$ op("Cov")(X-Y,Y)=-1-(-1/3) dot 1=-2/3. $
*分析* 从联合分布求边缘分布与相关数字特征，再用协方差定义或性质求解.
]

#answer("23.")[
解　（Ⅰ）因 $X$ 与 $Y$ 相互独立，所以 $Z=X-Y$ 服从正态分布，且 $E Z=0,D Z=D X+D Y=3sigma^2$，故得 $Z$ 的概率密度为
$ f(z;sigma^2)=1/(sqrt(6pi)sigma)e^(-z^2/(6sigma^2)),quad -infinity<z<+infinity. $

（Ⅱ）设 $z_1,z_2,dots,z_n$ 为样本 $Z_1,Z_2,dots,Z_n$ 的观测值，则似然函数为
$ L(sigma^2)&=product_(i=1)^n f(z_i;sigma^2)=(6pi sigma^2)^(-n/2)e^(-1/(6sigma^2)sum_(i=1)^n z_i^2), \
 ln L(sigma^2)&=-n/2 ln(6pi sigma^2)-1/(6sigma^2)sum_(i=1)^n z_i^2. $
令 $(dif(ln L))/(dif(sigma^2))=-n/(2sigma^2)+1/(6sigma^4)sum_(i=1)^n z_i^2=0$，解得 $sigma^2=1/(3n)sum_(i=1)^n z_i^2$，故 $sigma^2$ 的最大似然估计量为 $hat(sigma)^2=1/(3n)sum_(i=1)^n Z_i^2$.

（Ⅲ）因 $E hat(sigma)^2=1/(3n)sum_(i=1)^n E Z_i^2=1/3 E Z^2=1/3 D Z=sigma^2$，所以 $hat(sigma)^2$ 是 $sigma^2$ 的无偏估计量.

（Ⅰ）解法2　利用卷积公式，
$ f(z;sigma^2)=integral_(-infinity)^infinity f_X(z+y)f_Y(y)dif y $
$ =integral_(-infinity)^infinity frac(e^(-(z+y-mu)^2/(2sigma^2)),sqrt(2pi sigma^2))frac(e^(-(y-mu)^2/(4sigma^2)),sqrt(4pi sigma^2))dif y $
$ =frac(e^(-z^2/(6sigma^2)),sqrt(6pi sigma^2)) \
 dot integral_(-infinity)^infinity frac(e^(-3(y-mu+2z/3)^2/(4sigma^2)),sqrt(4pi sigma^2/3))dif y $
$ =frac(e^(-z^2/(6sigma^2)),sqrt(6pi sigma^2)). $
*分析* 独立正态变量的线性组合仍为正态变量，可直接求均值、方差；最大似然估计由对数似然方程求得；无偏性通过估计量的数学期望验证.
*常见错误* 第一问采用繁琐积分时发生计算错误；第二问计算不仔细，导致第三问也无法验证.
]

