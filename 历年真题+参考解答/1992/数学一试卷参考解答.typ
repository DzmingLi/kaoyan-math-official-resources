#import "../template.typ": exam, answer
#show: exam.with(year:1992,subject:"一",title:"1992年全国硕士研究生入学统一考试",solutions:true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 1992 数学一试卷参考解答

= 一、填空题

#answer("（1）")[
由隐函数求导法，方程两边对 $x$ 求导，得
$ e^(x+y)(1+y')-sin(x y)(y+x y')=0. $
所以 $y'=frac(y sin(x y)-e^(x+y),e^(x+y)-x sin(x y))$.
]

#block(breakable:false)[
#answer("（2）")[
$ "grad" u|_M&=frac(partial u,partial x)|_M bold(i)+frac(partial u,partial y)|_M bold(j)+frac(partial u,partial z)|_M bold(k) \
&=frac(2x,x^2+y^2+z^2)|_M bold(i)+frac(2y,x^2+y^2+z^2)|_M bold(j)+frac(2z,x^2+y^2+z^2)|_M bold(k) \
&=frac(2,9)bold(i)+frac(4,9)bold(j)-frac(4,9)bold(k)=frac(2,9)(1,2,-2). $
]
]
#answer("（3）")[
$x=pi$ 是 $f(x)$ 的间断点，$f(pi-0)=1+pi^2,f(pi+0)=f(-pi+0)=-1$. 由收敛定理，傅里叶级数在 $x=pi$ 处收敛于
$ frac(1,2)[f(pi-0)+f(pi+0)]=frac(pi^2,2). $
注：直接利用收敛定理，并利用周期性.
]

#answer("（4）")[
这是求一阶非齐次线性方程的通解，可直接用通解公式，也可用常数变易法. 由通解公式，
$ y&=e^(-integral tan x dif x)(integral cos x e^(integral tan x dif x)dif x+C) \
&=cos x(integral cos x dot frac(1,cos x)dif x+C)=(x+C)cos x. $
]

#answer("（5）")[
注意到矩阵 $A$ 中任意两行都成比例，第 $i$ 行与第 $j$ 行之比为 $a_i/a_j$，因此 $A$ 中二阶子式全为零. 又因 $a_i!=0,b_i!=0$，$a_i b_i!=0$，故有一阶子式非零，所以 $r(A)=1$.
注：$A=mat(a_1;a_2;dots.v;a_n)(b_1,b_2,dots,b_n)$.
]

= 二、选择题

#answer("（1）")[
因为 $lim_(x->1)frac(x^2-1,x-1)=2$，而 $lim_(x->1^+)e^(1/(x-1))=+infinity$，$lim_(x->1^-)e^(1/(x-1))=0$，故原函数的右极限为 $+infinity$，左极限为 $0$. 所以选 D.
左右极限存在且相等，是函数极限存在的充要条件. 本题是两个因式的乘积，关键是因式 $e^(1/(x-1))$.
]

#answer("（2）")[
$1-cos(a/n)>0$，故 $sum_(n=1)^infinity (1-cos(a/n))$ 为正项级数，且
$ lim_(n->infinity)frac(1-cos(a/n),a^2/(2n^2))=1. $
级数 $sum_(n=1)^infinity frac(a^2,2n^2)$ 收敛（$p$ 级数，$p=2$），由比较判别法的极限形式，正项级数收敛，所以所给交错级数绝对收敛，选 C.
注：判断正项级数是否收敛，通常注意 $a_n$ 关于 $1/n$ 的阶数，与 $p$ 级数比较.
]

#answer("（3）")[
所给曲线的切向量为 $T=(1,-2t,3t^2)$，平面法向量为 $n=(1,2,1)$. 由 $n dot T=0$ 得
$ 1-4t+3t^2=0, quad t_1=1, quad t_2=frac(1,3). $
对应曲线上的点均不在给定平面上，所以有两条切线与平面平行，选 B.
]

#answer("（4）")[
分部讨论. 记 $f_1(x)=3x^3$，则 $f_1^((n))(0)$ 都存在. 记 $f_2(x)=x^2|x|$，则
$ f_2(x)=cases(x^3 & x>=0,-x^3 & x<0), quad f_2'(x)=cases(3x^2 & x>0,-3x^2 & x<0,0 & x=0). $
$ f_2''(x)=cases(6x & x>0,-6x & x<0,0 & x=0)=6|x|. $
$f_2'(0)=f_2''(0)=0$，但 $|x|$ 在 $x=0$ 处不可导，所以 $f_2^((3))(0)$ 不存在，即 $n=2$，选 C.
]

#answer("（5）")[
解法一：$xi_1,xi_2$ 为线性无关的两个解，所以 $A x=0$ 至少有两个线性无关的解，故 $3-r(A)>=2$，即 $r(A)<=1$. 显然只有 A 项正确.
解法二：把四个答案直接代入 $A x=0$，验证 $xi_1,xi_2$ 均为其解，只有 A 项.
注：掌握齐次方程组基础解系中的向量个数 $n-r(A)$. 本题矩阵秩为 1 的三行矩阵也可选择验证代入法.
]

= 解答题

#answer("（1）")[
利用等价无穷小 $1-sqrt(1-x^2)~frac(1,2)x^2$，再用洛必达法则，
$ "原式"&=lim_(x->0)frac(e^x-1-sin x,x^2/2)=lim_(x->0)frac(e^x-cos x,x) \
&=lim_(x->0)frac(e^x+sin x,1)=1. $
]

#answer("（2）")[
令 $u=e^x sin y,v=x^2+y^2$，则
$ frac(partial z,partial x)=e^x sin y f_u'(u,v)+2x f_v'(u,v). $
再对 $y$ 求导，得
$ frac(partial^2 z,partial x partial y)&=e^x sin y(f_(u u)''e^x cos y+f_(u v)''2y)+e^x cos y f_u' \
&quad+2x(f_(v u)''e^x cos y+f_(v v)''2y) \
&=frac(1,2)e^(2x)sin(2y)f_(u u)''+2e^x(y sin y+x cos y)f_(u v)''+4x y f_(v v)''+e^x cos y f_u'. $
注：主要抓住 $u=e^x sin y,v=x^2+y^2$ 的关系. $f_u',f_v'$ 仍是复合函数，求二阶偏导数时仍要使用复合函数求导法.
]

#answer("（3）")[
令 $x-2=t$，则
$ "原式"=integral_(-1)^1 f(t)dif t=integral_(-1)^0 (1+t^2)dif t+integral_0^1 e^(-t)dif t=frac(7,3)-frac(1,e). $
]

#answer("四、")[
特征方程 $r^2+2r-3=(r-1)(r+3)=0$ 的两个根为 $r_1=1,r_2=-3$. 非齐次项为 $e^(-3x)$，且 $-3$ 为单特征根，故非齐次方程有特解 $Y=x a e^(-3x)$. 代入方程，得 $a=-1/4$. 所以通解为
$ y=c_1 e^x+c_2 e^(-3x)-frac(x,4)e^(-3x). $
]

#answer("五、")[
补充平面 $Sigma_0:z=0,x^2+y^2<=a^2$，方向向下. 由 $Sigma$ 与 $Sigma_0$ 所围区域记为 $Omega$，根据高斯公式，
$ I&=integral.triple_Omega 3(x^2+y^2+z^2)dif V+integral.double_(x^2+y^2<=a^2)a y^2 dif x dif y \
&=3integral_0^(2pi)dif theta integral_0^(pi/2)sin phi dif phi integral_0^a r^4 dif r+integral_0^(2pi)a sin^2 theta dif theta integral_0^a r^3 dif r \
&=frac(6,5)pi a^5+frac(1,4)pi a^5=frac(29,20)pi a^5. $
]

#answer("六、")[
分析：可用拉格朗日中值定理，或用导数单调性证明.
证法一：由拉格朗日中值定理，
$ f(x_1)-f(0)=x_1 f'(xi_1), quad 0<xi_1<x_1, $
$ f(x_2+x_1)-f(x_2)=x_1 f'(xi_2), quad x_2<xi_2<x_1+x_2. $
不妨设 $x_1<=x_2$，则 $xi_1<xi_2$. 因 $f''(x)<0$，$f'(x)$ 单调减，所以 $f'(xi_2)<f'(xi_1)$. 乘以正数 $x_1$ 并代入，又由 $f(0)=0$，得 $f(x_1+x_2)<f(x_1)+f(x_2)$.
证法二：令 $F(x)=f(x+x_2)-f(x)$，则 $F(0)=f(x_2)$，且
$ F'(x)=f'(x+x_2)-f'(x)=x_2 f''(xi)<0, quad x<xi<x+x_2. $
因此 $F$ 单调减，$F(x_1)<F(0)$，即得结论.
]

#answer("七、")[
先求 $W(xi,eta,zeta)$，再用拉格朗日乘数法求最大值. 直线段 $O M$ 的参数方程为 $x=xi t,y=eta t,z=zeta t,0<=t<=1$. 故
$ W=integral_(O M)y z dif x+z x dif y+x y dif z=integral_0^1 3xi eta zeta t^2 dif t=xi eta zeta. $
在约束 $xi^2/a^2+eta^2/b^2+zeta^2/c^2=1$（$xi,eta,zeta>0$）下，令
$ L=xi eta zeta+lambda(xi^2/a^2+eta^2/b^2+zeta^2/c^2-1). $
由 $L_xi=L_eta=L_zeta=L_lambda=0$ 得
$ cases(eta zeta=-2lambda xi/a^2,xi zeta=-2lambda eta/b^2,xi eta=-2lambda zeta/c^2,xi^2/a^2+eta^2/b^2+zeta^2/c^2=1). $
前三式分别乘以 $xi,eta,zeta$，得 $xi^2/a^2=eta^2/b^2=zeta^2/c^2=1/3$，从而唯一驻点为
$ xi=a/sqrt(3),quad eta=b/sqrt(3),quad zeta=c/sqrt(3). $
由实际意义判断，此时所做功最大，$W_max=frac(sqrt(3),9)a b c$.
注：也可用“正数之和为常数时，乘积在各数相等时最大”. 当 $xi/a=eta/b=zeta/c=1/sqrt(3)$ 时，乘积最大，结论同上.
]

#answer("八、")[
（1）$alpha_1$ 能由 $alpha_2,alpha_3$ 线性表出.
方法一：由于 $alpha_1,alpha_2,alpha_3$ 线性相关，存在不全为零的 $k_1,k_2,k_3$，使 $k_1 alpha_1+k_2 alpha_2+k_3 alpha_3=0$. 若 $k_1=0$，则 $k_2,k_3$ 不全为零，故 $alpha_2,alpha_3$ 线性相关，与已知矛盾. 所以 $k_1!=0$，于是
$ alpha_1=-frac(k_2,k_1)alpha_2-frac(k_3,k_1)alpha_3=l_2 alpha_2+l_3 alpha_3. $
方法二：已知 $alpha_2,alpha_3,alpha_4$ 线性无关，所以部分组 $alpha_2,alpha_3$ 线性无关，结合 $alpha_1,alpha_2,alpha_3$ 线性相关，得 $alpha_1$ 可由其余向量线性表出.
（2）$alpha_4$ 不能由 $alpha_1,alpha_2,alpha_3$ 线性表出.
反证：若 $alpha_4=lambda_1 alpha_1+lambda_2 alpha_2+lambda_3 alpha_3$，代入（1），得
$ alpha_4=(lambda_2+lambda_1 l_2)alpha_2+(lambda_3+lambda_1 l_3)alpha_3, $
这使 $alpha_2,alpha_3,alpha_4$ 线性相关，与已知矛盾.
注：应掌握并会运用：若 $alpha_1,dots,alpha_m$ 线性无关，则每个向量不能由其余向量线性表出.
]

#answer("九、")[
（1）设 $beta=x_1 xi_1+x_2 xi_2+x_3 xi_3$，对增广矩阵进行行变换：
$ mat(augment:#(vline:3),1,1,1,1;1,2,3,1;1,4,9,3) -> mat(augment:#(vline:3),1,1,1,1;0,1,2,0;0,3,8,2) -> mat(augment:#(vline:3),1,1,1,1;0,1,2,0;0,0,1,1). $
解得 $x_1=2,x_2=-2,x_3=1$，所以 $beta=2xi_1-2xi_2+xi_3$.
（2）方法一：由 $A xi_i=lambda_i xi_i$ 得 $A^n xi_i=lambda_i^n xi_i$，因此
$ A^n beta&=2A^n xi_1-2A^n xi_2+A^n xi_3 \
&=2 mat(1;1;1)-2 dot 2^n mat(1;2;4)+3^n mat(1;3;9) \
&=mat(2-2^(n+1)+3^n;2-2^(n+2)+3^(n+1);2-2^(n+3)+3^(n+2)). $
方法二：用相似对角化，令 $P=(xi_1,xi_2,xi_3)$，则 $P^(-1)A P=mat(1,0,0;0,2,0;0,0,3)$，所以
$ A^n=P mat(1,0,0;0,2^n,0;0,0,3^n)P^(-1). $
$ A^n beta&=mat(1,1,1;1,2,3;1,4,9)mat(1,0,0;0,2^n,0;0,0,3^n)frac(1,2)mat(6,-5,1;-6,8,-2;2,-3,1)mat(1;1;3) \
&=mat(2-2^(n+1)+3^n;2-2^(n+2)+3^(n+1);2-2^(n+3)+3^(n+2)). $
注：相似对角化可用于求 $A^n$，但本题解法一利用特征值与特征向量更为简单.
]

= 十、填空题

#answer("（1）")[
因 $A B C subset A B$ 且 $0<=P(A B C)<=P(A B)=0$，得 $P(A B C)=0$. 所以
$ P(overline(A)overline(B)overline(C))&=1-P(A union B union C) \
&=1-[P(A)+P(B)+P(C)-P(A B)-P(A C)-P(B C)+P(A B C)] \
&=1-(frac(1,4)+frac(1,4)+frac(1,4)-0-frac(1,16)-frac(1,16)+0)=frac(3,8). $
]

#answer("（2）")[
由题意，$f(x)=cases(e^(-x) & x>0,0 & x<=0)$. 因此
$ E(X+e^(-2X))=E X+E(e^(-2X))=1+integral_0^(+infinity)e^(-2x)e^(-x)dif x=frac(4,3). $
]

#answer("十一、")[
由题设，$X$ 与 $Y$ 的概率密度分别为
$ f_X(x)=frac(1,sqrt(2pi)sigma)e^(-(x-mu)^2/(2sigma^2)), quad -infinity<x<+infinity, $
$ f_Y(y)=cases(frac(1,2pi) & -pi<=y<=pi,0 & "其他"). $
因为相互独立，可用卷积公式. 又 $f_Y(y)$ 仅在 $[-pi,pi]$ 上非零，所以
$ f_Z(z)&=integral_(-infinity)^(+infinity)f_X(z-y)f_Y(y)dif y \
&=frac(1,2pi)integral_(-pi)^pi frac(1,sqrt(2pi)sigma)e^(-(z-y-mu)^2/(2sigma^2))dif y. $
令 $t=(z-y-mu)/sigma$，得
$ f_Z(z)&=frac(1,2pi)integral_((z-pi-mu)/sigma)^((z+pi-mu)/sigma)frac(1,sqrt(2pi))e^(-t^2/2)dif t \
&=frac(1,2pi)[Phi((z+pi-mu)/sigma)-Phi((z-pi-mu)/sigma)], quad -infinity<z<+infinity. $
]
