#import "../template.typ": exam, answer
#show: exam.with(year:1989,subject:"四",title:"1989年全国硕士研究生入学统一考试",solutions:true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 1989 数学四试卷参考解答

= 一、填空题

#answer("（1）")[
曲线在 $(x_0,f(x_0))$ 处的切线斜率为 $k=f'(x_0)$，切线方程为 $y-y_0=f'(x_0)(x-x_0)$.
$ y'=1+2sin x cos x,quad y'(pi/2)=1. $
因此切线方程为 $y-(1+pi/2)=x-pi/2$，即 $y=x+1$.
]

#answer("（2）")[
由弹性公式 $epsilon=p frac(Q'(p),Q(p))$，得
$ epsilon=p frac(a b p^(b-1),a p^b)=b. $
注：关键在于熟悉弹性的定义.
]

#answer("（3）")[
将第二、三、四列均加到第一列，得
$ "原式"&=mat(delim:"|",x,-1,1,x-1;x,-1,x+1,-1;x,x-1,1,-1;x,-1,1,-1) \
&=x mat(delim:"|",1,-1,1,x-1;1,-1,x+1,-1;1,x-1,1,-1;1,-1,1,-1) \
&=x mat(delim:"|",1,0,0,x;1,0,x,0;1,x,0,0;1,0,0,0) \
&=x (-1)^(4+1) mat(delim:"|",0,0,x;0,x,0;x,0,0)=x^4. $
]

#answer("（4）")[
由题设可知，$D(X_1)=6^2/12=3,D(X_2)=4,D(X_3)=3$.
又因为 $X_1,X_2,X_3$ 相互独立，所以
$ D(Y)=D(X_1-2X_2+3X_3)=3+4times 4+9times 3=46. $
]

#answer("（5）")[
由分布函数的右连续性，$F(pi/2+0)=F(pi/2)$，得 $A sin(pi/2)=1$，即 $A=1$.
$F(x)$ 在实数轴上连续，所以 $P{X=pi/6}=0$. 因而
$ P{|X|<pi/6}&=P{-pi/6<X<pi/6} \
&=P{-pi/6<X<=pi/6}-P{X=pi/6} \
&=F(pi/6)-F(-pi/6)=sin(pi/6)-0=1/2. $
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
故选 A. B、C 缺少积分常数；D 中的微分应为 $dif integral f(x)dif x=f(x)dif x$.
]

#answer("（3）")[
$n$ 阶行列式为零，则其列向量（或行向量）线性相关，至少有一个向量可由其余向量线性表示，故选 C. A、B、D 都是充分条件，而不是必要条件.
注：$|A|=0$ 与行向量（列向量）线性相关等价；$|A|!=0$ 与行向量（列向量）线性无关等价. 例如矩阵
$ mat(1,1,2;1,1,3;1,1,4) $
的第三列不能由其余两列线性表示，可排除 B. A、D 显然不对，反例很多.
]

#answer("（4）")[
由线性方程组解的判别定理，当 $r<n$ 时，$|A|=0$，故方程组 $A x=0$ 有非零解；另一方面，若 $A x=0$ 有非零解，则必有 $|A|=0$，所以 $r<n$. 故选 B.
]

#answer("（5）")[
设 $A_1$ 表示甲畅销，$A_2$ 表示乙畅销，则 $A=A_1 overline(A_2)$. 由德摩根公式，
$ overline(A)=overline(A_1 overline(A_2))=overline(A_1) union A_2. $
故选 D.
]

= 三、计算题

#answer("（1）")[
取对数，将极限化为 $infinity/infinity$ 型，利用洛必达法则：
$ lim_(x->+infinity)frac(ln(x+e^x),x)=lim_(x->+infinity)frac(1+e^x,x+e^x)=lim_(x->+infinity)frac(1+e^(-x),1+x e^(-x))=1. $
因此 $lim_(x->+infinity)(x+e^x)^(1/x)=e$.
]

#answer("（2）")[
解法一：
$ frac(partial z,partial x)=a^(sqrt(x^2-y^2))ln a frac(x,sqrt(x^2-y^2))=frac(x z ln a,sqrt(x^2-y^2)), $
$ frac(partial z,partial y)=a^(sqrt(x^2-y^2))ln a frac(-y,sqrt(x^2-y^2))=frac(-y z ln a,sqrt(x^2-y^2)). $
故
$ dif z=frac(partial z,partial x)dif x+frac(partial z,partial y)dif y=frac(z ln a,sqrt(x^2-y^2))(x dif x-y dif y). $
解法二：
$ dif z&=dif a^(sqrt(x^2-y^2))=a^(sqrt(x^2-y^2))ln a dif sqrt(x^2-y^2) \
&=a^(sqrt(x^2-y^2))ln a frac(1,2sqrt(x^2-y^2))dif(x^2-y^2) \
&=frac(z ln a,sqrt(x^2-y^2))(x dif x-y dif y). $
]

#block(breakable:false)[
#answer("（3）")[
$ "原式"&=integral frac(1,x)dif x-integral ln(1-x)dif(1/x) \
&=ln|x|-frac(1,x)ln(1-x)-integral frac(1,x(1-x))dif x \
&=ln|x|-frac(1,x)ln(1-x)-integral (frac(1,x)+frac(1,1-x))dif x \
&=ln|x|-frac(1,x)ln(1-x)-ln|x|+ln(1-x)+C \
&=(1-frac(1,x))ln(1-x)+C. $
]

]

#answer("（4）")[
被积函数含有 $x^2+y^2$，而积分区域是圆域的一部分，显然用极坐标计算较简便.
令 $x=r cos theta,y=r sin theta$，则 $D={(r,theta)|0<=theta<=pi/2,0<=r<=1}$，所以
$ "原式"&=integral_0^(pi/2)dif theta integral_0^1 frac(1-r^2,1+r^2)r dif r \
&=frac(pi,2)integral_0^1(frac(2,1+r^2)-1)r dif r \
&=frac(pi,2)[ln(1+r^2)-frac(1,2)r^2]_0^1=frac(pi,2)(ln 2-frac(1,2)). $
]

= 解答题

#answer("四、")[
① 利润函数为
$ L=R-C=26x-2x^2-4x^3-8x-x^2=18x-3x^2-4x^3. $
② 边际收入函数为 $M R=frac(dif R,dif x)=26-4x-12x^2$.
③ 边际成本函数为 $M C=frac(dif C,dif x)=8+2x$.
④ 对 $x$ 求导，并令 $L'=18-6x-12x^2=0$，得 $x=1$ 或 $x=-1.5$（产量不能为负，舍去）.
又因为 $L''(1)=(-6-24x)|_(x=1)=-30<0$，所以 $x=1$ 时 $L$ 达到极大值：
$ L(1)=(18x-3x^2-4x^3)|_(x=1)=11. $
因为 $x>0$ 时只有一个极大值，故该极大值就是最大值. 因此当产量为 $1$ 时利润最大，最大利润为 $11$.
]

#answer("五、")[
定义域为 $x!=1$. 由
$ y'=frac(4x,(1-x)^3),quad y''=frac(8x+4,(1-x)^4), $
令 $y'=0$，得 $x=0$；令 $y''=0$，得 $x=-1/2$. 列表讨论如下.
#align(center)[#text(size:9pt)[#table(columns:8,align:center,inset:3pt,
[$x$],[$(-infinity,-1/2)$],[$-1/2$],[$(-1/2,0)$],[$0$],[$(0,1)$],[$1$],[$(1,+infinity)$],
[$y'$],[$-$],[],[$-$],[$0$],[$+$],[／],[$-$],
[$y''$],[$-$],[$0$],[$+$],[$+$],[$+$],[／],[$+$],
[$y$],[$arrow.br$],[拐点 $(-1/2,2/9)$],[$arrow.br$],[极小值 $0$],[$arrow.tr$],[无定义],[$arrow.br$])]]
① 由表可见，$x=0$ 为极小值点，极小值为 $0$；$(-1/2,2/9)$ 为拐点.
区间 $(-infinity,0)$ 和 $(1,+infinity)$ 为单调减区间，$(0,1)$ 为单调增区间.
在 $(-infinity,-1/2)$ 上图形凸，在 $(-1/2,1)$ 和 $(1,+infinity)$ 上图形凹.
② 渐近线：由 $lim_(x->infinity)y=2$，知 $y=2$ 为水平渐近线；由 $lim_(x->1)y=+infinity$，知 $x=1$ 为垂直渐近线.
③ 函数图形如下.
#align(center)[#image("1989-数学四-函数图形.svg",width:87mm)]
]

#block(breakable:false)[
#answer("六、")[
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

]

#answer("七、")[
设有实数 $k_1,k_2,k_3$，使 $k_1 alpha_1+k_2 alpha_2+k_3 alpha_3=0$，得到方程组
$ cases(k_1+k_2+5k_3=0,k_1+3k_2+3k_3=0,-k_2+t k_3=0). $
系数行列式为 $D=mat(delim:"|",1,1,5;1,3,3;0,-1,t)=2t-2$.
（1）当 $t!=1$ 时，$D!=0$，方程组只有零解 $k_1=k_2=k_3=0$，所以向量组线性无关.
（2）当 $t=1$ 时，$D=0$，方程组有非零解，即存在不全为零的常数使 $k_1 alpha_1+k_2 alpha_2+k_3 alpha_3=0$，所以向量组线性相关.
注：$|A|=0$ 与 $A$ 的行（列）向量组线性相关等价，$|A|!=0$ 与线性无关等价. 因此，向量组的线性相关性可转化为行列式是否为零的判别.
]

#answer("八、")[
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

#answer("九、")[
（1）$X$ 的可能值为 $0,1,2$，
$ P{X=0}=P{X=0,Y=0}+P{X=0,Y=1}=0.10+0.15=0.25, $
$ P{X=1}=P{X=1,Y=0}+P{X=1,Y=1}=0.25+0.20=0.45, $
$ P{X=2}=P{X=2,Y=0}+P{X=2,Y=1}=0.15+0.15=0.30. $
即 $X~mat(0,1,2;0.25,0.45,0.30)$.
（2）$X+Y$ 的可能值为 $0,1,2,3$，
$ P{X+Y=0}=P{X=0,Y=0}=0.10, $
$ P{X+Y=1}=P{X=0,Y=1}+P{X=1,Y=0}=0.15+0.25=0.40, $
$ P{X+Y=2}=P{X=1,Y=1}+P{X=2,Y=0}=0.20+0.15=0.35, $
$ P{X+Y=3}=P{X=2,Y=1}=0.15. $
即 $X+Y~mat(0,1,2,3;0.10,0.40,0.35,0.15)$.
（3）
$ E Z&=E[sin(frac(pi,2)(X+Y))] \
&=0.10sin 0+0.40sin(pi/2)+0.35sin pi+0.15sin(3pi/2) \
&=0.40-0.15=0.25. $
]

#answer("十、")[
解法一：设电子元件的寿命为 $X$，又设最初 $200$ 小时内有 $Y$ 只电子元件损坏，则 $Y~B(3,p)$，其中
$ p=P{X<=200}=integral_0^200 frac(1,600)e^(-x/600)dif x=-e^(-x/600)|_0^200=1-e^(-1/3). $
所求概率为
$ alpha=P{Y>=1}=1-P{Y=0}=1-binom(3,0)p^0(1-p)^3=1-(e^(-1/3))^3=1-e^(-1). $
解法二：设 $A_i$ 表示“最初 $200$ 小时内第 $i$ 只电子元件损坏”，$i=1,2,3$. 三个事件相互独立. 设 $X_i$ 为第 $i$ 只元件的寿命，则
$ P(overline(A_i))=P{X_i>200}=integral_200^infinity frac(1,600)e^(-x/600)dif x=e^(-1/3). $
#block(breakable:false)[
故至少有一只电子元件损坏的概率为
$ alpha=P(A_1 union A_2 union A_3)=1-P(overline(A_1)overline(A_2)overline(A_3))=1-P(overline(A_1))P(overline(A_2))P(overline(A_3))=1-e^(-1). $
]

]
