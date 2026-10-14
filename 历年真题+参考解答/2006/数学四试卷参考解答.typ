#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2006, subject: "四", title: "2006年全国硕士研究生入学统一考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2006 数学四试卷参考解答

= 一、填空题

#answer("1.")[
*分析* 根据数列极限定义，可分别求奇、偶子列的极限.
*解* 记 $a_n=((n+1)/n)^((-1)^n)$，则 $lim_(k->infinity)a_(2k)=lim_(k->infinity)(2k+1)/(2k)=1$，而 $lim_(k->infinity)a_(2k+1)=lim_(k->infinity)((2k+2)/(2k+1))^(-1)=1$，故原数列极限为 1.
*典型错误* 因 $(-1)^n$ 没有极限，就误认为整个表达式没有极限.
]

#answer("2.")[
*分析* 考查复合函数求导.
*解* $f''(x)=e^(f(x))f'(x)=e^(2f(x))$，所以 $f^(3)(x)=2e^(2f(x))f'(x)=2e^(3f(x))$，代入 $f(2)=1$ 得 $f^(3)(2)=2e^3$.
*典型错误* 对乘积求导时漏掉一个 $f'(x)$ 因子，错误得到 $e^2+e^3$；将指数复合函数的导数误写为指数的导数作为新指数，得到 $e^(e^e)$.
]

#answer("3.")[
*分析* 全微分计算与复合函数求导.
*解* $z_x=8x f'(4x^2-y^2)$，在 $(1,2)$ 处为 4；$z_y=-2y f'(4x^2-y^2)$，在 $(1,2)$ 处为 −2. 故 $dif z|_((1,2))=4dif x-2dif y$.
]

#answer("4.")[
$-2$.
*分析* 利用行列式的性质或矩阵乘法计算.
*解法1*
$ |A|=|2alpha_1+alpha_2,alpha_1-alpha_2| \
=|3alpha_2,alpha_1-alpha_2|=3|alpha_2,alpha_1|=-3|B|. $
由 $|A|=6$ 得 $|B|=-2$.
*解法2* $A=B mat(2,1;1,-1)$，因此
$ |A|=|B| mat(delim:"|",2,1;1,-1)=-3|B|, $
仍得 $|B|=-2$.
*常见错误* 交换两列时漏掉负号，得到2.
]

#answer("5.")[
$mat(1,-1;1,1)$.
*解* 由 $B A=B+2E$ 得 $B(A-E)=2E$. 因
$ A-E=mat(1,1;-1,1),quad (A-E)^(-1)=1/2 mat(1,-1;1,1), $
故 $B=2(A-E)^(-1)=mat(1,-1;1,1)$.
*常见错误* 漏掉逆矩阵，误写 $B=2(A-E)$.
]

#answer("6.")[
*分析* 考查均匀分布与随机变量相互独立.
*解* $P\{max\{X,Y\}<=1\}=P\{X<=1,Y<=1\}=P\{X<=1\}P\{Y<=1\}=1/3 dot 1/3=1/9$.
]

= 二、选择题

#answer("7.")[

选 A.
*分析* 考查增量与微分的大小和符号，可以排除错误选项，也可以图示或论证.
*解法1* 取 $f(x)=x^2,x>0$. 则 $dif y=2x_0 Delta x>0$，$Delta y=2x_0 Delta x+(Delta x)^2>dif y$，故 B、C、D 都不成立.
*解法2* 曲线上点 $A(x_0,f(x_0))$ 的切线在曲线下方. 在 $x_0+Delta x$ 处，曲线的纵坐标增量 $Delta y$ 大于切线的纵坐标增量 $dif y=f'(x_0)Delta x>0$，故选 A.
*解法3* 两次使用拉格朗日中值定理，
$ Delta y-dif y=(f'(xi)-f'(x_0))Delta x=f''(eta)(xi-x_0)Delta x>0, $
其中 $x_0<eta<xi<x_0+Delta x$. 又 $dif y=f'(x_0)Delta x>0$，故选 A.
*解法4* 用带拉格朗日余项的一阶泰勒公式，$Delta y-dif y=f''(xi)(Delta x)^2/2>0$，又 $dif y>0$，故选 A.

#import "@preview/cetz:0.5.2" as cetz
#align(center,cetz.canvas({
 import cetz.draw: *
 line((-.3,0),(3.6,0),mark:(end:">"));line((0,-.3),(0,4.5),mark:(end:">"))
 line(..range(0,101).map(i=>{let x=i/100*2.8;(x,.5*x*x+.3)}))
 line((.6,.4),(2.7,2.5))
 line((1,0),(1,.8),stroke:(dash:"dashed"));line((2.5,0),(2.5,3.425),stroke:(dash:"dashed"))
 line((1,.8),(2.5,.8),stroke:(dash:"dashed"))
 content((1,.8),$A$,anchor:"south-east");content((2.5,.8),$B$,anchor:"north-west")
 content((2.5,2.3),$C$,anchor:"north-west");content((2.5,3.425),$D$,anchor:"south-west")
 content((1,0),$x_0$,anchor:"north");content((2.5,0),$x_0+Delta x$,anchor:"north")
 content((3.7,0),$x$);content((0,4.65),$y$);content((-.15,-.15),$O$)
 content((2.9,1.55),$dif y$);content((3.25,2.6),$Delta y$)
}))
]

#answer("8.")[

选 C.
*分析* 考查不定式极限、连续性与左右导数定义.
*解* 由 $lim_(h->0)f(h^2)/h^2=1$ 得 $lim_(h->0)f(h^2)=0$，由连续性知 $f(0)=0$. 从而
$ 1=lim_(h->0)frac(f(h^2)-f(0),h^2)=f'_+(0). $
右导数存在且为 1，但不能保证左导数存在，故 C 正确，A 错误. $f(0)=1$ 与题设极限矛盾，故 B、D 错误.
*典型错误* 忽略 0/0 型极限的必要条件，错误选择 D.
]

#answer("9.")[
选 D.
*解* 由 $c<1$ 及 $f(t)<=g(t)$，定积分的保序性给出
$ integral_c^1 f(t)dif t<=integral_c^1 g(t)dif t. $
而以 $1/2$ 为下限的积分，当 $c<1/2$ 时不等号方向反转，当 $c>1/2$ 时保持原方向，所以 A、B 均不对所有 $c in (0,1)$ 成立.
*常见错误* 忽略积分上、下限的大小关系，误选 B.
]

#answer("10.")[

选 B.
*分析* 考查一阶线性微分方程解的结构.
*解* 由解的性质，$C(y_1-y_2)$ 是相应齐次方程的通解，$y_1$ 是原方程的特解，故通解为 $y_1+C(y_1-y_2)$，选 B. A、C、D 中的函数一般不是原方程的解.
*典型错误* 将 $C(y_1+y_2)$ 误认为齐次方程的解.
]

#answer("11.")[

选 D.
*分析* 可用拉格朗日乘数法，也可把条件极值化为一元函数的极值.
*解法1* 设 $F(x,y,lambda)=f(x,y)+lambda phi.alt(x,y)$，由条件极值的必要条件与 $phi.alt_y(x_0,y_0)!=0$，得
$ f_x(x_0,y_0)-f_y(x_0,y_0)frac(phi.alt_x(x_0,y_0),phi.alt_y(x_0,y_0))=0. $
若 $f_x=0$，$f_y$ 可以为 0，也可以不为 0，故 A、B 不必成立；若 $f_x!=0$，则 $f_y!=0$，所以 C 错误，D 正确.
*解法2* 约束方程可解出可微函数 $y=y(x)$，$y_0=y(x_0)$. 则 $x=x_0$ 是 $f(x,y(x))$ 的极值点，故
$ f_x(x_0,y_0)+f_y(x_0,y_0)y'(x_0)=0. $
而 $y'=-phi.alt_x/phi.alt_y$，得到解法1中的关系，其余讨论相同.
*典型错误* 将条件极值误认为无约束极值，直接写出 $f_x=f_y=0$. 例如 $f(x,y)=x^2+y$，约束 $y-2x^2=0$，则 $f(x,y(x))=3x^2$ 在 0 处取得极小值，而 $(0,0)$ 处 $f_x=0,f_y=1$. 二元函数 $x^2+y$ 本身没有极值点.
另可用 $f=x^2+y^2$ 举反例：约束 $y=1$ 时在 $(0,1)$ 取得条件极小值，但 $f_x=0,f_y!=0$，排除 A；约束 $y=0$ 时在 $(0,0)$ 取得条件极小值，$f_x=f_y=0$，排除 B；约束 $x+y=2$ 时在 $(1,1)$ 取得条件极小值，$f_x,f_y$ 都不为零，排除 C.
]

#answer("12.")[

选 B.
*分析* 一次初等行或列变换，分别相当于从左或右乘以相应初等矩阵.
*解* 由题设 $B=P A,C=B Q$，其中
$ Q=mat(1,-1,0;0,1,0;0,0,1). $
易验证 $P Q=E$，即 $Q=P^(-1)$，故 $C=P A P^(-1)$，选 B.
*典型错误* 将题目误读为合同变换，或混淆行、列变换对应的左、右乘法.
]

#answer("13.")[
选 C.
*解* 由 $P(A|B)=P(A B)/P(B)=1$ 得 $P(A B)=P(B)$，所以
$ P(A union B)=P(A)+P(B)-P(A B)=P(A). $
]

#answer("14.")[

选 A.
*分析* 考查正态分布的性质.
*解* 标准化得
$ P\{|X-mu_1|<1\}=P\{|(X-mu_1)/sigma_1|<1/sigma_1\}, $
$ P\{|Y-mu_2|<1\}=P\{|(Y-mu_2)/sigma_2|<1/sigma_2\}. $
两个标准化变量均服从 $N(0,1)$，由题设概率不等式知 $1/sigma_1>1/sigma_2$，即 $sigma_1<sigma_2$，故选 A.
]

= 三、解答题

#answer("15.")[
（Ⅰ）$g(x)=lim_(y->+infinity)f(x,y)=1/x-(1-pi x)/(arctan x)$.

（Ⅱ）
$ lim_(x->0^+)g(x)=lim_(x->0^+)(1/x-(1-pi x)/(arctan x)) \
=lim_(x->0^+)(arctan x-x+pi x^2)/x^2 \
=lim_(x->0^+)(1/(1+x^2)-1+2pi x)/(2x) \
=lim_(x->0^+)(2pi-x+2pi x^2)/(2(1+x^2))=pi. $

*解法2* 将极限拆为两项，有
$ lim_(x->0^+)(1/x-1/(arctan x))=lim_(x->0^+)(arctan x-x)/x^2 \
=lim_(x->0^+)(1/(1+x^2)-1)/(2x)=0, $
$ lim_(x->0^+) (pi x)/(arctan x)=pi, $
所以所求极限为 $pi$.
*常见错误* 把 $y sin(pi x/y)$ 的极限误当成零；或在相减的分子中直接以 $x$ 代替 $arctan x$，忽略二者差的阶.
]

#answer("16.")[
区域 $D$ 如下图所示.
#import "@preview/cetz:0.5.2": canvas, draw
#align(center,canvas({
 import draw: *
 line((0,0),(0,3),(3,3),close:true,fill:rgb("dddddd"))
 line((-.4,0),(4,0),mark:(end:">"));line((0,-.4),(0,4),mark:(end:">"))
 line((3,0),(3,3),stroke:(dash:"dashed"))
 content((-.2,-.2),$O$);content((4.1,0),$x$);content((0,4.2),$y$)
 content((-.2,3),[1]);content((3,-.2),[1]);content((.8,1.8),$D$);content((2.2,1.6),$y=x$)
}))
$ #text[原式]=integral_0^1 dif y integral_0^y sqrt(y^2-x y)dif x \
=-integral_0^1 lr(2/3 sqrt(y)(y-x)^(3/2))|_0^y dif y \
=2/3 integral_0^1 y^2 dif y=2/9. $

*解法2* 用极坐标计算，有
$ I=integral_(pi/4)^(pi/2) dif theta integral_0^(1/(sin theta)) r^2 sqrt(sin^2 theta-sin theta cos theta) dif r \
=1/3 integral_(pi/4)^(pi/2) sqrt(1-cot theta)/(sin^2 theta) dif theta \
=-1/3 integral_(pi/4)^(pi/2) sqrt(1-cot theta) dif(cot theta) \
=lr(2/9 (1-cot theta)^(3/2))|_(pi/4)^(pi/2)=2/9. $
*常见错误* 积分次序选择不当，使计算复杂；换元时漏掉微分中的负号.
]

#answer("17.")[
证法1　设 $f(x)=x sin x+2cos x+pi x,x in [0,pi]$，则
$ f'(x)=sin x+x cos x-2sin x+pi=x cos x-sin x+pi, $
$ f''(x)=cos x-x sin x-cos x=-x sin x<0,quad x in (0,pi), $
故 $f'(x)$ 在 $[0,pi]$ 上单调减少，从而 $f'(x)>f'(pi)=0,x in (0,pi)$，因此 $f(x)$ 在 $[0,pi]$ 上单调增加.当 $0<a<b<pi$ 时，$f(b)>f(a)$，即 $b sin b+2cos b+pi b>a sin a+2cos a+pi a$.

证法2　设 $phi(x)=x sin x+2cos x,x in [0,pi]$.在 $[a,b]$ 上应用拉格朗日中值定理，有 $phi(b)-phi(a)=phi'(xi)(b-a),xi in (a,b) subset (0,pi)$，即
$ b sin b+2cos b-a sin a-2cos a=(xi cos xi-sin xi)(b-a). $
设 $g(x)=x cos x-sin x,x in [0,pi]$，则
$ g'(x)=cos x-x sin x-cos x=-x sin x<0,quad x in (0,pi), $
因此 $g(x)$ 在 $[0,pi]$ 上单调减少，故 $xi cos xi-sin xi>g(pi)=-pi$，于是
$ b sin b+2cos b-a sin a-2cos a>-pi(b-a), $
移项得 $b sin b+2cos b+pi b>a sin a+2cos a+pi a$.

*分析* 将不等式转化为函数的单调性，或应用拉格朗日中值定理估计函数增量.
*常见错误* 仅由 $f''(x)<0$ 就断定 $f'(x)>0$，没有结合 $f'(pi)=0$；或只证明凹函数的中点不等式，没有得到题设结论.
]

#answer("18.")[
（Ⅰ）依题意得 $y'-1/x y=a x$，求得其通解为
$ y=e^(integral 1/x dif x)(integral a x e^(-integral 1/x dif x)dif x+C)=a x^2+C x. $
将 $x=1,y=0$ 代入上式得 $C=-a$，从而 $L$ 的方程为 $y=a x^2-a x$.

（Ⅱ）$L$ 与直线 $y=a x$ 的交点坐标为 $(0,0)$ 和 $(2,2a)$，那么 $L$ 与直线 $y=a x$ 围成平面图形的面积
$ S(a)=integral_0^2(a x-a x^2+a x)dif x=integral_0^2(2a x-a x^2)dif x=4/3 a, $
于是由题设知 $4/3 a=8/3$，从而 $a=2$.

*分析* 由切线截距条件建立一阶线性微分方程，再用初始条件求曲线，最后由面积确定参数.
*常见错误* 建立切线方程时符号错误；没有辨清直线与曲线的位置，把面积积分写成相反的差，得到负的面积.
]

#answer("19.")[
解法1　因为 $e^x=1+x+1/2 x^2+1/6 x^3+o(x^3)$，将其代入题设等式，整理得
$ 1+(1+B)x+(1/2+B+C)x^2+(1/6+B/2+C)x^3=1+A x+o(x^3), $
故有
$ cases(1+B=A,1/2+B+C=0,1/6+B/2+C=0), $
解得 $A=1/3,B=-2/3,C=1/6$.

解法2　根据题设和洛必达法则，由于
$ 0=lim_(x->0)(e^x(1+B x+C x^2)-1-A x)/x^3 \
=lim_(x->0)(e^x(1+B+B x+2C x+C x^2)-A)/(3x^2) \
=lim_(x->0)(e^x[2C+1+2B+(B+4C)x+C x^2])/(6x) \
=lim_(x->0)(B+4C+2C x)/6, $
得
$ cases(1+B-A=0,2B+2C+1=0,B+4C=0), $
解得 $A=1/3,B=-2/3,C=1/6$.

*分析* 将题设改写为零比零型极限，逐次应用洛必达法则，或用泰勒公式比较各次幂的系数.
*常见错误* 对 $o(x^3)$ 直接求导并声称其导数为 $o(x^2)$，这一结论一般不成立. 例如 $f(x)=x^4 sin(1/x)=o(x^3)$，但
$ f'(x)/x^2=4x sin(1/x)-cos(1/x) $
没有极限. 另有把等式改写成分式后，对趋于1的分子、分母应用洛必达法则的错误；该极限为一比一型，不满足法则的条件.
]

#answer("20.")[
解法1　记 $A=(alpha_1,alpha_2,alpha_3,alpha_4)$，则
$ |A|=mat(delim:"|",1+a,2,3,4;1,2+a,3,4;1,2,3+a,4;1,2,3,4+a)=(a+10)a^3, $
于是当 $a=0$ 或 $a=-10$ 时，$alpha_1,alpha_2,alpha_3,alpha_4$ 线性相关.

当 $a=0$ 时，$alpha_1$ 为 $alpha_1,alpha_2,alpha_3,alpha_4$ 的一个极大线性无关组，且 $alpha_2=2alpha_1,alpha_3=3alpha_1,alpha_4=4alpha_1$.

当 $a=-10$ 时，对 $A$ 施以初等行变换，有
$ A=mat(-9,2,3,4;1,-8,3,4;1,2,-7,4;1,2,3,-6) \
->mat(-9,2,3,4;10,-10,0,0;10,0,-10,0;10,0,0,-10) \
->mat(-9,2,3,4;1,-1,0,0;1,0,-1,0;1,0,0,-1) \
->mat(0,0,0,0;1,-1,0,0;1,0,-1,0;1,0,0,-1)=(beta_1,beta_2,beta_3,beta_4). $
由于 $beta_2,beta_3,beta_4$ 为 $beta_1,beta_2,beta_3,beta_4$ 的一个极大线性无关组，且 $beta_1=-beta_2-beta_3-beta_4$，故 $alpha_2,alpha_3,alpha_4$ 为 $alpha_1,alpha_2,alpha_3,alpha_4$ 的一个极大线性无关组，且 $alpha_1=-alpha_2-alpha_3-alpha_4$.

解法2　记 $A=(alpha_1,alpha_2,alpha_3,alpha_4)$，对 $A$ 施以初等行变换，有
$ A=mat(1+a,2,3,4;1,2+a,3,4;1,2,3+a,4;1,2,3,4+a) \
->mat(1+a,2,3,4;-a,a,0,0;-a,0,a,0;-a,0,0,a)=B. $
当 $a=0$ 时，$A$ 的秩为1，因而 $alpha_1,alpha_2,alpha_3,alpha_4$ 线性相关.此时 $alpha_1$ 为 $alpha_1,alpha_2,alpha_3,alpha_4$ 的一个极大线性无关组，且 $alpha_2=2alpha_1,alpha_3=3alpha_1,alpha_4=4alpha_1$.

当 $a!=0$ 时，再对 $B$ 施以初等行变换，有
$ B->mat(1+a,2,3,4;-1,1,0,0;-1,0,1,0;-1,0,0,1) \
->mat(a+10,0,0,0;-1,1,0,0;-1,0,1,0;-1,0,0,1)=C=(gamma_1,gamma_2,gamma_3,gamma_4). $
如果 $a!=-10$，$C$ 的秩为4，从而 $A$ 的秩为4，故 $alpha_1,alpha_2,alpha_3,alpha_4$ 线性无关.

如果 $a=-10$，$C$ 的秩为3，从而 $A$ 的秩为3，故 $alpha_1,alpha_2,alpha_3,alpha_4$ 线性相关.

由于 $gamma_2,gamma_3,gamma_4$ 为 $gamma_1,gamma_2,gamma_3,gamma_4$ 的一个极大线性无关组，且 $gamma_1=-gamma_2-gamma_3-gamma_4$，于是 $alpha_2,alpha_3,alpha_4$ 为 $alpha_1,alpha_2,alpha_3,alpha_4$ 的一个极大线性无关组，且 $alpha_1=-alpha_2-alpha_3-alpha_4$.

*分析* 向量组线性相关等价于列矩阵的行列式为零. 求极大线性无关组及表示关系时，可利用初等行变换保持列向量间线性关系的性质.
*常见错误* 只考虑 $a=0$，遗漏 $a=-10$；初等变换或表示关系的系数计算错误.
]

#answer("21.")[
（Ⅰ）由于矩阵 $A$ 的各行元素之和均为3，所以 $A mat(1;1;1)=mat(3;3;3)=3mat(1;1;1)$.

因为 $A alpha_1=bold(0),A alpha_2=bold(0)$，即 $A alpha_1=0alpha_1,A alpha_2=0alpha_2$，故 $lambda_1=lambda_2=0$ 是 $A$ 的二重特征值，$alpha_1,alpha_2$ 为 $A$ 的属于特征值0的两个线性无关的特征向量；$lambda_3=3$ 是 $A$ 的一个特征值，$alpha_3=(1,1,1)^T$ 为 $A$ 的属于特征值3的特征向量.

总之，$A$ 的特征值为0，0，3.属于特征值0的全体特征向量为 $k_1 alpha_1+k_2 alpha_2$（$k_1,k_2$ 不全为零），属于特征值3的全体特征向量为 $k_3 alpha_3 (k_3!=0)$.

（Ⅱ）对 $alpha_1,alpha_2$ 正交化.令 $xi_1=alpha_1=(-1,2,-1)^T$，
$ xi_2=alpha_2-(alpha_2,xi_1)/(xi_1,xi_1)xi_1=1/2(-1,0,1)^T. $
再分别将 $xi_1,xi_2,alpha_3$ 单位化，得
$ beta_1=xi_1/norm(xi_1)=1/sqrt(6)(-1,2,-1)^T, $
$ beta_2=xi_2/norm(xi_2)=1/sqrt(2)(-1,0,1)^T, $
$ beta_3=alpha_3/norm(alpha_3)=1/sqrt(3)(1,1,1)^T. $
令
$ Q=(beta_1,beta_2,beta_3)=mat(-1/sqrt(6),-1/sqrt(2),1/sqrt(3);2/sqrt(6),0,1/sqrt(3);-1/sqrt(6),1/sqrt(2),1/sqrt(3)), $
$ Lambda=mat(0,0,0;0,0,0;0,0,3), $
那么 $Q$ 为正交矩阵，且 $Q^T A Q=Lambda$.
（Ⅲ）因 $Q^T A Q=Lambda$，且 $Q$ 为正交矩阵，故 $A=Q Lambda Q^T$，
$ A=mat(-1/sqrt(6),-1/sqrt(2),1/sqrt(3);2/sqrt(6),0,1/sqrt(3);-1/sqrt(6),1/sqrt(2),1/sqrt(3))
 mat(0,0,0;0,0,0;0,0,3) \
 dot mat(-1/sqrt(6),2/sqrt(6),-1/sqrt(6);-1/sqrt(2),0,1/sqrt(2);1/sqrt(3),1/sqrt(3),1/sqrt(3)) \
=mat(1,1,1;1,1,1;1,1,1). $
由 $A=Q Lambda Q^T$，得 $A-3/2 E=Q(Lambda-3/2 E)Q^T$，所以 $(A-3/2 E)^6=Q(Lambda-3/2 E)^6 Q^T=(3/2)^6 E$.

*另一解法* 设对称矩阵
$ A=mat(a,b,c;b,d,e;c,e,f). $
由 $A alpha_1=bold(0)$ 和 $A alpha_2=bold(0)$，以及各行元素之和为3，可得六个元素均为1，故
$ A=mat(1,1,1;1,1,1;1,1,1). $
随后求特征向量、正交化并单位化，即可得到上面的正交矩阵及幂的计算结果.
*分析* 对实对称矩阵采用正交相似对角化，将矩阵的幂转化为对角矩阵的幂.
*常见错误* 特征向量没有单位化；正交矩阵中向量的排列与对角矩阵中的特征值次序不一致；把相似变换误用为一般矩阵乘法.
]

#answer("22.")[
（Ⅰ）由概率分布的性质知，
$ a+b+c+0.6=1, $
即 $a+b+c=0.4$.由 $E X=-0.2$，可得
$ -a+c=-0.1. $
再由
$ P{Y<=0|X<=0}=(P{X<=0,Y<=0})/(P{X<=0}) \
=(a+b+0.1)/(a+b+0.5)=0.5, $
得 $a+b=0.3$.解以上关于 $a,b,c$ 的三个方程，得
$ a=0.2,b=0.1,c=0.1. $
（Ⅱ）$Z$ 的可能取值为 $-2,-1,0,1,2$，
$ P{Z=-2}=P{X=-1,Y=-1}=0.2, $
$ P{Z=-1}=P{X=-1,Y=0}+P{X=0,Y=-1}=0.1, $
$ P{Z=0}=P{X=-1,Y=1}+P{X=0,Y=0} \
+P{X=1,Y=-1}=0.3, $
$ P{Z=1}=P{X=1,Y=0}+P{X=0,Y=1}=0.3, $
$ P{Z=2}=P{X=1,Y=1}=0.1. $
即 $Z$ 的概率分布为
#table(columns: 6, [$Z$], [$-2$], [$-1$], [0], [1], [2], [$P$], [0.2], [0.1], [0.3], [0.3], [0.1])
（Ⅲ）
$ P{X=Z}=P{Y=0} \
=0+b+0.1=0.1+0.1=0.2. $

*分析* 利用总概率为1、期望及条件概率列方程，再将联合分布中对应相同 $X+Y$ 值的概率相加.
*常见错误* 条件概率分母漏项，或把相同和所对应的联合概率加错.
]

#answer("23.")[
（Ⅰ）$Y$ 的分布函数为 $F_Y(y)=P{Y<=y}=P{X^2<=y}$.

当 $y<=0$ 时，$F_Y(y)=0,f_Y(y)=0$；当 $0<y<1$ 时，
$ F_Y(y)=P{-sqrt(y)<=X<=sqrt(y)} \
=P{-sqrt(y)<=X<0}+P{0<=X<=sqrt(y)} \
=1/2 sqrt(y)+1/4 sqrt(y)=3/4 sqrt(y), $
$f_Y(y)=3/(8sqrt(y))$；当 $1<=y<4$ 时，
$ F_Y(y)=P{-1<=X<0}+P{0<=X<=sqrt(y)}=1/2+1/4 sqrt(y), $
$f_Y(y)=1/(8sqrt(y))$；当 $y>=4$ 时，$F_Y(y)=1,f_Y(y)=0$.

故 $Y$ 的概率密度为
$ f_Y(y)=cases(3/(8sqrt(y)) & 0<y<1,1/(8sqrt(y)) & 1<=y<4,0 & #text[其他]). $
（Ⅱ）
$ E X=integral_(-infinity)^(+infinity)x f_X(x)dif x=integral_(-1)^0 1/2 x dif x+integral_0^2 1/4 x dif x=1/4, $
$ E Y=E X^2=integral_(-infinity)^(+infinity)x^2 f_X(x)dif x=integral_(-1)^0 1/2 x^2 dif x+integral_0^2 1/4 x^2 dif x=5/6, $
$ E(X Y)=E X^3=integral_(-infinity)^(+infinity)x^3 f_X(x)dif x=integral_(-1)^0 1/2 x^3 dif x+integral_0^2 1/4 x^3 dif x=7/8, $
故 $op("Cov")(X,Y)=E(X Y)-E X dot E Y=2/3$.

（Ⅲ）
$ F(-1/2,4)=P{X<=-1/2,Y<=4}=P{X<=-1/2,X^2<=4} \
=P{X<=-1/2,-2<=X<=2}=P{-2<=X<=-1/2} \
=P{-1<X<=-1/2}=1/4. $

*分析* 先求 $Y=X^2$ 的分布函数并分段求导，再以 $E(X Y)=E X^3$ 计算协方差. 联合分布函数应将两个事件同时写成关于 $X$ 的条件.
*常见错误* 忽略负半轴对 $X^2$ 的贡献，或把分段区间的积分限写错；把协方差误当作 $E(X Y)$.
]

