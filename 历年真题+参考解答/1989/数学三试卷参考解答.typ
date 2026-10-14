#import "../template.typ": exam, answer
#show: exam.with(year:1989,subject:"三",title:"1989年全国硕士研究生入学统一考试",solutions:true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 1989 数学三试卷参考解答

= 一、填空题

#answer("（1）")[
曲线在 $(x_0,f(x_0))$ 处的切线斜率为 $k=f'(x_0)$，切线方程为 $y-y_0=f'(x_0)(x-x_0)$.
$ y'=1+2sin x cos x,quad y'(pi/2)=1. $
因此切线方程为 $y-(1+pi/2)=x-pi/2$，即 $y=x+1$.
]

#answer("（2）")[
$ a_n=1/sqrt(n+1),quad R=lim_(n->infinity)frac(a_n,a_(n+1))=lim_(n->infinity)frac(sqrt(n+2),sqrt(n+1))=1. $
当 $-1<x<1$ 时，级数绝对收敛. 当 $x=1$ 时，级数 $sum_(n=0)^infinity 1/sqrt(n+1)$ 发散；当 $x=-1$ 时，交错级数 $sum_(n=0)^infinity (-1)^n/sqrt(n+1)$ 满足莱布尼茨判别法的条件，收敛. 所以收敛域为 $[-1,1)$.
]

#answer("（3）")[
齐次线性方程组只有零解的充要条件是系数行列式不为零，即
$ mat(delim:"|",lambda,1,1;1,lambda,1;1,1,1)=(1-lambda)^2!=0. $
因此 $lambda!=1$.
]

#answer("（4）")[
由分布函数的右连续性，$F(pi/2+0)=F(pi/2)$，得 $A sin(pi/2)=1$，即 $A=1$.
$F(x)$ 在实数轴上连续，所以 $P{X=pi/6}=0$. 因而
$ P{|X|<pi/6}&=P{-pi/6<X<pi/6} \
&=P{-pi/6<X<=pi/6}-P{X=pi/6} \
&=F(pi/6)-F(-pi/6)=sin(pi/6)-0=1/2. $
]

#answer("（5）")[
由切比雪夫不等式 $P{|X-mu|>=epsilon}<=sigma^2/epsilon^2$，取 $epsilon=3sigma$，得
$ P{|X-mu|>=3sigma}<=frac(sigma^2,9sigma^2)=1/9. $
]

= 二、选择题

#answer("（1）")[
比较无穷小量的阶，计算
$ lim_(x->0)frac(2^x+3^x-2,x)=lim_(x->0)frac(2^x ln 2+3^x ln 3,1)=ln 2+ln 3=ln 6!=1. $
因此是同阶但非等价的无穷小量，选 B.
]

#answer("（2）")[
本题考查不定积分的性质.
$ frac(dif,dif x)integral f(x)dif x=(integral f(x)dif x)'=f(x). $
故选 C. A、B 缺少积分常数；D 中的微分应为 $dif integral f(x)dif x=f(x)dif x$.
]

#answer("（3）")[
$n$ 阶行列式为零，则其列向量（或行向量）线性相关，至少有一个向量可由其余向量线性表示，故选 C. A、B、D 都是充分条件，而不是必要条件.
注：$|A|=0$ 与行向量（列向量）线性相关等价；$|A|!=0$ 与行向量（列向量）线性无关等价. 例如矩阵
$ mat(1,1,2;1,1,3;1,1,4) $
的第三列不能由其余两列线性表示，可排除 B. A、D 显然不对，反例很多.
]

#answer("（4）")[
由行列式的乘法公式，
$ |A B|=|A| |B|=|B| |A|=|B A|. $
所以选 C. A、B、D 都容易举出反例说明不成立.
注：本题考查行列式、矩阵运算与代数运算的差异.
]

#answer("（5）")[
设 $A_1$ 表示甲畅销，$A_2$ 表示乙畅销，则 $A=A_1 overline(A_2)$. 由德摩根公式，
$ overline(A)=overline(A_1 overline(A_2))=overline(A_1) union A_2. $
故选 D.
]

= 三、计算题

#answer("（1）")[
这是 $1^infinity$ 型的极限，可用重要极限或洛必达法则求解.
解法一：令 $delta=sin(1/x)+cos(1/x)-1$，则
$ lim_(x->+infinity)(1+delta)^x=lim_(x->+infinity)((1+delta)^(1/delta))^(x delta). $
而
$ lim_(x->+infinity)x delta&=lim_(x->+infinity)frac(sin(1/x)+cos(1/x)-1,1/x) \
&=lim_(x->+infinity)frac(sin(1/x),1/x)+lim_(x->+infinity)frac(-1/(2x^2),1/x)=1. $
所以原极限为 $e$.
解法二：令 $t=1/x$，则
$ "原式"&=lim_(t->0)(sin t+cos t)^(1/t) \
&=e^(lim_(t->0)frac(ln(sin t+cos t),t)) \
&=e^(lim_(t->0)frac(cos t-sin t,sin t+cos t))=e. $
注：用到了重要极限 $lim_(x->0)sin x/x=1$ 及等价无穷小量 $1-cos x~x^2/2$.
]

#answer("（2）")[
由复合函数求导法则，
$ frac(partial z,partial x)=frac(partial f,partial u)frac(partial u,partial x)+frac(partial f,partial v)frac(partial v,partial x)=f_u+y f_v. $
再对 $y$ 求偏导数，得
$ frac(partial^2 z,partial x partial y)&=frac(partial,partial y)(f_u+y f_v) \
&=f_(u u)u_y+f_(u v)v_y+f_v+y(f_(v u)u_y+f_(v v)v_y) \
&=f_(u u)+x f_(u v)+f_v+y f_(v u)+x y f_(v v) \
&=f_(u u)+(x+y)f_(u v)+x y f_(v v)+f_v. $
最后一步利用了二阶偏导数连续时混合偏导数相等.
注：也可利用一阶微分形式的不变性求解，大家可试求之.
]

#answer("（3）")[
对应齐次方程 $y''+5y'+6y=0$ 的特征方程为 $lambda^2+5lambda+6=0$，根为 $-2,-3$，所以齐次方程的通解为
$ Y=C_1 e^(-2x)+C_2 e^(-3x). $
右端为 $2e^(-x)$，$-1$ 不是特征方程的根，设特解为 $y^*=A e^(-x)$. 代入原方程得 $A=1$，所以 $y^*=e^(-x)$.
原方程的通解为
$ y=Y+y^*=C_1 e^(-2x)+C_2 e^(-3x)+e^(-x). $
]

= 解答题

#answer("四、")[
（1）总收益为 $R=x P=10x e^(-x/2)$，$0<=x<=6$；边际收益为
$ M R=frac(dif R,dif x)=5(2-x)e^(-x/2). $
（2）令 $R'=0$，得 $x_0=2$，且
$ R''|_(x=2)=(5/2)(x-4)e^(-x/2)|_(x=2)=-5e^(-1)<0. $
故当产量为 $2$、价格为 $10e^(-1)$ 时，总收益最大，最大值为 $R(2)=20e^(-1)$.

#block(breakable:false)[
（3）列表讨论如下.
#align(center)[#table(columns:6,align:center,inset:4pt,
[$x$],[$[0,2)$],[$2$],[$(2,4)$],[$4$],[$(4,6]$],
[$R'$],[$+$],[$0$],[$-$],[],[$-$],
[$R''$],[$-$],[],[$-$],[$0$],[$+$],
[$R$],[$arrow.tr$],[极大值 $20/e$],[$arrow.br$],[拐点 $(4,40/e^2)$],[$arrow.br$])]
#align(center)[#image("1989-数学三-收益曲线.svg",width:83mm)]
]
]

#answer("五、")[
分段函数积分须按定义分段计算；后两问可用换元法.
$ S_0=integral_0^1 x e^(-x)dif x+integral_1^2(2-x)e^(-x)dif x. $
其中
$ integral_0^1 x e^(-x)dif x=-x e^(-x)|_0^1+integral_0^1 e^(-x)dif x=1-2e^(-1), $
$ integral_1^2(2-x)e^(-x)dif x=-(2-x)e^(-x)|_1^2-integral_1^2 e^(-x)dif x=e^(-2). $
所以 $S_0=1-2e^(-1)+e^(-2)=(1-e^(-1))^2$.
令 $t=x-2$，得
$ S_1=integral_2^4 f(x-2)e^(-x)dif x=integral_0^2 f(t)e^(-t-2)dif t=S_0 e^(-2)=(e-1)^2 e^(-4). $
同理，令 $t=x-2n$，得
$ S_n=integral_0^2 f(t)e^(-t-2n)dif t=S_0 e^(-2n)=(e-1)^2 e^(-2n-2). $
因此
$ S=sum_(n=0)^infinity S_n=S_0 sum_(n=0)^infinity(e^(-2))^n=frac(S_0,1-e^(-2))=frac(e-1,e+1). $
]

#block(breakable:false)[
#answer("六、")[
解法一：$F(x)$ 连续且可导，
$ F'(x)&=frac(f(x),x-a)-frac(integral_a^x f(t)dif t,(x-a)^2) \
&=frac((x-a)f(x)-integral_a^x f(t)dif t,(x-a)^2) \
&=frac(integral_a^x (f(x)-f(t))dif t,(x-a)^2). $
由 $f'(x)<=0$，$f(x)$ 单调不增，故上式的积分不大于零，从而 $F'(x)<=0$，$F(x)$ 单调不增.
解法二：
$ F'(x)=frac(1,x-a)(f(x)-frac(1,x-a)integral_a^x f(t)dif t). $
由积分中值定理，存在 $xi$，$a<xi<x$，使得
$ f(xi)=frac(1,x-a)integral_a^x f(t)dif t. $
因此 $F'(x)=frac(1,x-a)(f(x)-f(xi))<=0$，因为 $x>xi$ 且 $f$ 单调不增.
注：解法一的关键是将 $(x-a)f(x)$ 写成 $integral_a^x f(x)dif t$.
]

]

#answer("七、")[
解法一：由 $X=A X+B$ 得 $(E-A)X=B$，而
$ E-A=mat(1,-1,0;1,0,-1;1,0,2) $
的行列式不为零，所以
$ X&=(E-A)^(-1)B \
&=mat(0,2/3,1/3;-1,2/3,1/3;0,-1/3,1/3)mat(1,-1;2,0;5,-3) \
&=mat(3,-1;2,0;1,-1). $
解法二：对增广矩阵 $((E-A),B)$ 作初等行变换，将左侧化为单位矩阵，右侧即为 $X$：
$ mat(augment:#(vline:3),1,-1,0,1,-1;1,0,-1,2,0;1,0,2,5,-3) arrow.r mat(augment:#(vline:3),1,0,0,3,-1;0,1,0,2,0;0,0,1,1,-1). $
故 $X=mat(3,-1;2,0;1,-1)$.
注：第二种解法省去一次矩阵乘法，计算简便且可减少出错. 对 $A X=B$，将 $(A,B)$ 作初等行变换为 $(E,A^(-1)B)$；对 $X A=B$，将 $mat(A;B)$ 作初等列变换为 $mat(E;B A^(-1))$.
]

#answer("八、")[
由 $lambda_1 alpha_1+lambda_2 alpha_2+lambda_3 alpha_3=0$，得
$ cases(lambda_1+lambda_2+lambda_3=0,lambda_1+2lambda_2+3lambda_3=0,lambda_1+3lambda_2+t lambda_3=0). $
系数行列式为 $D=mat(delim:"|",1,1,1;1,2,3;1,3,t)=t-5$.
（1）当 $t!=5$ 时，$D!=0$，方程组只有零解，三个向量线性无关.
（2）当 $t=5$ 时，$D=0$，方程组有非零解，三个向量线性相关.
（3）当 $t=5$ 时，对系数矩阵作初等行变换：
$ mat(1,1,1;1,2,3;1,3,5) arrow.r mat(1,1,1;0,1,2;0,2,4) arrow.r mat(1,0,-1;0,1,2;0,0,0). $
得 $lambda_1=lambda_3,lambda_2=-2lambda_3$. 取 $lambda_3=1$，则 $alpha_1-2alpha_2+alpha_3=0$，所以 $alpha_3=-alpha_1+2alpha_2$.
]

#block(breakable:false)[
#answer("九、")[
（1）特征方程为
$ |lambda E-A|&=mat(delim:"|",lambda+1,-2,-2;-2,lambda+1,2;-2,2,lambda+1) \
&=mat(delim:"|",lambda+1,-2,-2;lambda-1,lambda-1,0;-2,2,lambda+1) \
&=(lambda-1)^2(lambda+5)=0. $
故 $A$ 的特征值为 $1,1,-5$.
（2）设 $lambda$ 为 $A$ 的特征值，$x$ 为相应的非零特征向量，则 $A x=lambda x$，从而 $A^(-1)x=frac(1,lambda)x$，故
$ (E+A^(-1))x=(1+frac(1,lambda))x. $
因此 $E+A^(-1)$ 的特征值为 $2,2,4/5$.
注：已知 $A$ 的特征值，求 $A^*$、$A^(-1)$ 及有关矩阵的特征值，可从 $A x=lambda x$ 出发讨论.
]

]

#answer("十、")[
（1）
$ P{X<Y}&=integral integral_(x<y)f(x,y)dif x dif y \
&=integral_0^infinity dif y integral_0^y e^(-x-y)dif x \
&=integral_0^infinity e^(-y)(1-e^(-y))dif y=1/2. $
（2）
$ E(X Y)&=integral_(-infinity)^infinity integral_(-infinity)^infinity x y f(x,y)dif x dif y \
&=integral_0^infinity integral_0^infinity x y e^(-x-y)dif x dif y \
&=integral_0^infinity x e^(-x)dif x integral_0^infinity y e^(-y)dif y=1. $
]

#answer("十一、")[
$X$ 的概率密度为 $f_X(x)=cases(1/3 & 2<=x<=5,0 & "其他")$.
设事件 $A={X>3}$，则 $p=P(A)=integral_3^5 frac(1,3)dif x=2/3$.
以 $Y$ 表示三次独立观测中事件 $A$ 发生的次数，则 $Y~B(3,2/3)$，所以
$ P{Y>=2}=binom(3,2)(2/3)^2(1/3)+binom(3,3)(2/3)^3=20/27. $
]
