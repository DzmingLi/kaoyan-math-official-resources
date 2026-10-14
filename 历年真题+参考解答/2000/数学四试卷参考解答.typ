#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2000, subject: "四", title: "2000年全国硕士研究生入学考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2000 数学四试卷参考解答

= 一、填空题

#answer("1（1）")[
*分析* 令 $t=sqrt(x)$，则 $dif x=2t dif t$，故
$ integral frac(arcsin sqrt(x),sqrt(x))dif x=2integral arcsin t dif t=2(t arcsin t+sqrt(1-t^2))+C=2sqrt(x)arcsin sqrt(x)+2sqrt(1-x)+C. $
]

#answer("1（2）")[
*分析* 取对数后应用洛必达法则，
$ lim_(x->0)ln(frac(a^x+b^x,2))^(3/x)
&=3lim_(x->0)frac(ln(a^x+b^x)-ln 2,x) \
&=3lim_(x->0)frac(a^x ln a+b^x ln b,a^x+b^x)=3/2 ln(a b). $
故原极限为 $(a b)^(3/2)$.
]

#answer("1（3）")[
*分析* 因 $A=alpha alpha^T=mat(1,0,-1;0,0,0;-1,0,1)$，$alpha^T alpha=2$，所以 $A^n=2^(n-1)A$. 因此
$ det(a E-A^n)=det(a E-2^(n-1)A)=mat(delim:"|",a-2^(n-1),0,2^(n-1);0,a,0;2^(n-1),0,a-2^(n-1))=a^2(a-2^n). $
]

#answer("1（4）")[
*分析* 因为 $A$ 与 $B$ 相似，$det(B-E)=det(A-E)$. 又 $A$ 的四个特征值互不相同，可取可逆矩阵 $P$ 使 $P A P^(-1)=Lambda=mat(2,0,0,0;0,3,0,0;0,0,4,0;0,0,0,5)$. 所以
$ det(B-E)=det(P^(-1)(Lambda-E)P)=det(Lambda-E)=1 dot 2 dot 3 dot 4=24. $
]

#answer("1（5）")[
*分析* 由均匀分布，$f(x)=1/3$（$-1<=x<=2$），区间外为零. 因此
$ E Y=1 dot P{X>0}+0 dot P{X=0}-P{X<0}=2/3-1/3=1/3. $
按方差定义，
$ D Y&=(1-E Y)^2P{X>0}+(0-E Y)^2P{X=0}+(-1-E Y)^2P{X<0} \
&=4/9 dot 2/3+1/9 dot 0+16/9 dot 1/3=8/9. $
]

= 二、选择题

#answer("2（1）")[
*分析* 取 $phi(x)=1-frac(1,sqrt(2pi))e^(-x^2/2)$，$f(x)=1$，$g(x)=1+frac(1,sqrt(2pi))e^(-x^2/2)$，则满足题设且极限为1，故排除 A、C. 再取 $phi(x)=e^x-e^(-x),f(x)=e^x,g(x)=e^x+e^(-x)$，仍满足题设，但 $f(x)$ 没有有限极限. 因此应选 D.
常见误解是把 $lim_(x->infinity)[g(x)-phi(x)]=0$ 当作两者极限均存在且相等，从而错误套用夹逼定理.
]

#answer("2（2）")[
*分析* 取 $f(x)=x^2,a=1$ 可排除 C；取 $f(x)=-x^2,a=1$ 可排除 D. 对 A、B，均有 $f(a)=0$，故
$ lim_(x->a^+)frac(|f(x)|-|f(a)|,x-a)=|f'(a)|, $
$ lim_(x->a^-)frac(|f(x)|-|f(a)|,x-a)=-|f'(a)|. $
只有 $f'(a)!=0$ 时，两侧导数不相等，即 $|f(x)|$ 不可导，故选 B.
]

#answer("2（3）")[
*分析* 因为 $r(A)=3$，四元齐次方程组 $A X=0$ 的解空间维数为1. 又 $A alpha_i=b$（$i=1,2,3$），所以
$ A(alpha_1-frac(alpha_2+alpha_3,2))=0. $
于是 $2alpha_1-alpha_2-alpha_3=(2,3,4,5)^T$ 是 $A X=0$ 的非零解. 根据非齐次方程组解的结构，通解为 $alpha_1+C(2,3,4,5)^T$，应选 C.
]

#answer("2（4）")[
*分析* 在 $A,B,C$ 两两独立的条件下，若 $A$ 与 $B C$ 独立，则
$ P(A B C)=P(A)P(B C)=P(A)P(B)P(C), $
所以三事件相互独立. 反之相互独立也保证 $A$ 与 $B C$ 独立. 其余条件均不能推出以上结果，选 A.
]

#answer("2（5）")[
*分析* 电炉断电意味着四个温控器中至少有两个显示值不低于 $t_0$. 将四个显示值按递增顺序排列，等价于第三个显示值 $T_(3)>=t_0$，所以 $E={T_(3)>=t_0}$，选 C.
]


= 解答题

#answer("三、")[
*分析* 利用复合函数求导法则计算两个偏导数，再写出全微分.

*解*
$ frac(partial Z,partial x)&=frac(partial Z,partial u)dot frac(partial u,partial x)+frac(partial Z,partial v)dot frac(partial v,partial x) \
&=(v u^(v-1))dot frac(1,2)dot frac(2x,x^2+y^2)+(u^v ln u)dot frac(1,1+(y/x)^2)dot(-frac(y,x^2)) \
&=frac(u^v,x^2+y^2)(frac(x v,u)-y ln u); quad "（2分）" $
$ frac(partial Z,partial y)&=frac(partial Z,partial u)dot frac(partial u,partial y)+frac(partial Z,partial v)dot frac(partial v,partial y) \
&=(v u^(v-1))dot frac(1,2)dot frac(2y,x^2+y^2)+(u^v ln u)dot frac(1,1+(y/x)^2)dot frac(1,x) \
&=frac(u^v,x^2+y^2)(frac(y v,u)+x ln u); quad "（4分）" $
$ dif Z=frac(u^v,x^2+y^2)[(frac(x v,u)-y ln u)dif x+(frac(y v,u)+x ln u)dif y]. quad "（6分）" $
]

#answer("四、")[
*分析* 这是无穷限的广义积分，应先化为上限有限的积分的极限.

*解*
$ I&=lim_(b->infinity)integral_1^b frac(e^(x-3),e^(2(x-1))+1)dif x quad "（2分）" \
&=e^(-2)lim_(b->infinity)integral_1^b frac(dif(e^(x-1)),1+e^(2(x-1))) quad "（4分）" \
&=e^(-2)lim_(b->infinity)[arctan e^(b-1)-arctan 1] \
&=e^(-2)(pi/2-pi/4)=frac(pi,4)e^(-2). quad "（6分）" $

*注* 不将积分转换为极限形式，直接以上限为无穷进行运算，过程不规范.
]

#answer("五、")[
*分析* 关键是写出总利润与两个市场销售量 $Q_1,Q_2$ 之间的关系，即总利润函数.

*解*
（1）根据题意，总利润函数为
$ L=R-C=p_1 Q_1+p_2 Q_2-(2Q+5)=-2Q_1^2-Q_2^2+16Q_1+10Q_2-5. quad "（1分）" $
令 $cases(L'_(Q_1)=-4Q_1+16=0,L'_(Q_2)=-2Q_2+10=0)$.

解得 $Q_1=4,Q_2=5$，则 $p_1=10$（万元/吨），$p_2=7$（万元/吨）. （2分）

因驻点 $(4,5)$ 唯一，且实际问题一定存在最大值，故最大值必在驻点处达到，最大利润为
$ L=-2times 4^2-5^2+16times 4+10times 5-5=52 "（万元）". quad "（3分）" $
（2）若实行价格无差别策略，则 $p_1=p_2$，于是有约束条件 $2Q_1-Q_2=6$.

构造拉格朗日函数
$ F(Q_1,Q_2,lambda)=-2Q_1^2-Q_2^2+16Q_1+10Q_2-5+lambda(2Q_1-Q_2-6), quad "（4分）" $
令 $cases(F'_(Q_1)=-4Q_1+16+2lambda=0,F'_(Q_2)=-2Q_2+10-lambda=0,F'_lambda=2Q_1-Q_2-6=0)$，

解得 $Q_1=5,Q_2=4,lambda=2$，则 $p_1=p_2=8$. （5分）

最大利润 $L=-2times 5^2-4^2+16times 5+10times 4-5=49$（万元）.

由上述结果可知，企业实行差别定价所得总利润要大于统一价格的总利润. （6分）

（2）也可不用拉格朗日乘数法，将 $Q_2=2Q_1-6$ 代入总利润函数，令 $dif L/dif Q_1=0$，得到 $Q_1=5$.
]

#answer("六、")[
*分析* 题目要求单调区间、极值和渐近线. 前两者由导数符号确定；求渐近线时须分别讨论 $x->+infinity$ 和 $x->-infinity$，两端斜率不同，有两条渐近线.

*解*
$ y'=frac(x^2+x,1+x^2)e^(pi/2+arctan x); $
令 $y'=0$，得驻点 $x_1=0,x_2=-1$. （1分）

列表
#table(columns:6,[$x$],[$(-infinity,-1)$],[$-1$],[$(-1,0)$],[0],[$(0,+infinity)$],[$y'$],[$+$],[0],[$-$],[0],[$+$],[$y$],[↗],[$-2e^(pi/4)$],[↘],[$-e^(pi/2)$],[↗])
由此可见，递增区间为 $(-infinity,-1),(0,+infinity)$；递减区间为 $(-1,0)$. （3分）

极小值为 $f(0)=-e^(pi/2)$；极大值为 $f(-1)=-2e^(pi/4)$. （4分）

由于
$ a_1=lim_(x->+infinity)frac(f(x),x)=e^pi,quad b_1=lim_(x->+infinity)[f(x)-a_1 x]=-2e^pi, $
$ a_2=lim_(x->-infinity)frac(f(x),x)=1,quad b_2=lim_(x->-infinity)[f(x)-a_2 x]=-2, $
可见渐近线为
$ y_1=a_1 x+b_1=e^pi (x-2), quad "（6分）" $
$ y_2=a_2 x+b_2=x-2. quad "（7分）" $
]

#answer("七、")[
*分析* 由于 $f(x,y)$ 在 $D'={1<=x<=2,0<=y<=x}$ 外为零，原积分相当于 $x^2 y$ 在 $D_1=D' inter D$ 上的积分. 要正确确定 $D_1$，最好先画图.

*解*
如图，记
$ D_1={(x,y)|1<=x<=2,sqrt(2x-x^2)<=y<=x}. quad "（2分）" $
#import "@preview/cetz:0.5.2"
#cetz.canvas({
 import cetz.draw: *
 set-style(stroke:0.6pt)
 let curve=range(0,61).map(i=>{let t=i*90deg/60;(1+calc.sin(t),calc.cos(t))})
 line((1,1),(2,2),(2,0),..curve.rev(),close:true,fill:luma(85%))
 line(..range(0,81).map(i=>{let t=i*180deg/80;(1-calc.cos(t),calc.sin(t))}))
 line((0,0),(2.35,2.35));line((2,0),(2,2.4))
 line((0,1),(1,1),stroke:(dash:"dashed"))
 line((-0.2,0),(2.9,0),mark:(end:">"));line((0,-0.2),(0,2.6),mark:(end:">"))
 content((2.9,-0.15),$x$);content((-0.15,2.6),$y$);content((-0.15,-0.15),$O$)
 content((1,-0.18),$1$);content((2.1,-0.18),$2$);content((-0.15,1),$1$)
 content((0.85,1.2),$(1,1)$);content((2.4,2),$(2,2)$);content((2.5,2.4),$y=x$)
 content((1.68,1.3),$D_1$);content((1.05,0.42),$y=sqrt(1-(x-1)^2)$)
})
所以，
$ integral.double_D f(x,y)dif x dif y&=integral.double_(D_1) x^2 y dif x dif y \
&=integral_1^2 x^2 dot frac(y^2,2)|_(sqrt(2x-x^2))^x dif x quad "（4分）" \
&=integral_1^2(x^4-x^3)dif x \
&=frac(49,20). quad "（6分）" $
]

#answer("八、")[
*分析* 令 $F(x)=integral_0^x f(t)dif t$，则 $F(0)=F(pi)=0$. 要完成证明，须通过条件 $integral_0^pi f(x)cos x dif x=0$，找到另一点 $xi in (0,pi)$，使 $F(xi)=0$，再两次运用罗尔中值定理即可.

*证法1* 令 $F(x)=integral_0^x f(t)dif t$，$0<=x<=pi$， （1分）
则有 $F(0)=0,F(pi)=0$. 又因为
$ 0&=integral_0^pi f(x)cos x dif x=integral_0^pi cos x dif F(x) \
&=F(x)cos x|_0^pi+integral_0^pi F(x)sin x dif x \
&=integral_0^pi F(x)sin x dif x, $
所以存在 $xi in (0,pi)$，使 $F(xi)sin xi=0$. 因若不然，则在 $(0,pi)$ 内或 $F(x)sin x$ 恒为正，或 $F(x)sin x$ 恒为负，均与 $integral_0^pi F(x)sin x dif x=0$ 矛盾. 但当 $xi in (0,pi)$ 时，$sin xi!=0$，故 $F(xi)=0$.

由上证得 $F(0)=F(xi)=F(pi)=0$（$0<xi<pi$）. （4分）

再对 $F(x)$ 在区间 $[0,xi],[xi,pi]$ 上分别用罗尔定理，知至少存在 $xi_1 in (0,xi),xi_2 in (xi,pi)$，使
$ F'(xi_1)=F'(xi_2)=0, $
即 $f(xi_1)=f(xi_2)=0$. （6分）

*证法2* 由 $integral_0^pi f(x)dif x=0$ 知，存在 $xi_1 in (0,pi)$，使 $f(xi_1)=0$. 因若不然，则在 $(0,pi)$ 内或 $f(x)$ 恒为正，或 $f(x)$ 恒为负，均与 $integral_0^pi f(x)dif x=0$ 矛盾. （1分）

若在 $(0,pi)$ 内 $f(x)=0$ 仅有一个实根 $x=xi_1$，则由 $integral_0^pi f(x)dif x=0$ 推知，$f(x)$ 在 $(0,xi_1)$ 内与 $(xi_1,pi)$ 内异号，不妨设在 $(0,xi_1)$ 内 $f(x)>0$，在 $(xi_1,pi)$ 内 $f(x)<0$. 于是再由 $integral_0^pi f(x)cos x dif x=0$ 与 $integral_0^pi f(x)dif x=0$ 及 $cos x$ 在 $[0,pi]$ 上的单调性知：
$ 0&=integral_0^pi f(x)(cos x-cos xi_1)dif x \
&=integral_0^(xi_1) f(x)(cos x-cos xi_1)dif x+integral_(xi_1)^pi f(x)(cos x-cos xi_1)dif x \
&>0, $
得出矛盾. （5分）

从而推知，在 $(0,pi)$ 内除 $xi_1$ 外，$f(x)=0$ 至少还有另一实根 $xi_2$，故知存在 $xi_1,xi_2 in (0,pi)$，$xi_1!=xi_2$，使 $f(xi_1)=f(xi_2)=0$. （6分）

注：证法1中的 $xi$ 和证法2中的 $xi_1$ 也可用积分中值定理得到.

本题是数学一、二、三、四都用的一道考题，也是本年数学卷中最难的一题. 论证中所发生的错误，值得提出来：
（1）有些考生会引进 $F(x)$，但只是说，设 $F(x)$ 为 $f(x)$ 的一个原函数，接下去就推知 $F(0)=0,F(pi)=0$. 这是不对的，因为只设 $F(x)$ 为 $f(x)$ 的一个原函数，$F(x)$ 还是不确定的，之后的事无从谈起. 这说明，许多考生不会用变上限积分 $integral_0^x f(t)dif t$ 来表示一个确定的原函数，而只会用不定积分来表示，这是教学中薄弱的一环，应引起教师们的注意.
（2）有不少考生想到用分部积分来处理，但做成
$ integral_0^pi f(x)cos x dif x=f(x)sin x|_0^pi-integral_0^pi sin x dot f'(x)dif x, $
题中未设 $f'(x)$ 存在，这样做显然不合道理. 事实上，到这一步只要再动一下脑筋，改一个方向就可得出正确的结果，但没有这么做.
（3）有许多辅导书上有下述两道题：“设 $f(x)$ 在 $[0,1]$ 上连续，且 $integral_0^1 f(x)dif x=0,integral_0^1 f(x)x dif x=0$，试证明至少存在两个不同的点 $xi_1,xi_2 in (0,1)$，使 $f(xi_1)=f(xi_2)=0$.” 另一题是“设 $f(x)$ 在 $[0,pi]$ 上连续，且 $integral_0^pi f(x)cos x dif x=0,integral_0^pi f(x)sin x dif x=0$，试证明至少存在两个不同的点 $xi_1,xi_2 in (0,pi)$，使 $f(xi_1)=f(xi_2)=0$.” 从答卷看，有的考生在论证过程中，似乎是在模仿上述两题的路子. 但实际上，由于未掌握上述两题的论证实质，仅是在形式上模仿，当然论证不好.
]

#answer("九、")[
*分析* 将向量能否线性表出的问题转化为线性方程组 $k_1 alpha_1+k_2 alpha_2+k_3 alpha_3=beta$ 解的存在性和唯一性问题.

*解*
*解法1* 设有一组数 $k_1,k_2,k_3$，使得
$ k_1 alpha_1+k_2 alpha_2+k_3 alpha_3=beta. quad "（1分）" $
该方程组的系数行列式
$ |A|=mat(delim:"|",a,-2,-1;2,1,1;10,5,4)=-a-4. quad "（2分）" $
（1）当 $a!=-4$ 时，$|A|!=0$，方程组有唯一解，$beta$ 可由 $alpha_1,alpha_2,alpha_3$ 线性表出，且表示唯一. （3分）

（2）当 $a=-4$ 时，对增广矩阵作行的初等变换，有
$ overline(A)=mat(-4,-2,-1,1;2,1,1,b;10,5,4,c)->mat(2,1,0,-b-1;0,0,1,2b+1;0,0,0,3b-c-1). $
若 $3b-c!=1$，则秩$(A)!=$秩$(overline(A))$，方程组无解，$beta$ 不能由 $alpha_1,alpha_2,alpha_3$ 线性表出. （5分）

（3）当 $a=-4$，且 $3b-c=1$ 时，秩$(A)=$秩$(overline(A))=2<3$，方程组有无穷多组解，$beta$ 可由 $alpha_1,alpha_2,alpha_3$ 线性表出，但表示不唯一. （6分）

解得 $k_1=t,k_2=-2t-b-1,k_3=2b+1$（$t$ 为任意常数）.

因此，有
$ beta=t alpha_1-(2t+b+1)alpha_2+(2b+1)alpha_3. quad "（8分）" $
*解法2* 设有一组数 $k_1,k_2,k_3$，使得
$ k_1 alpha_1+k_2 alpha_2+k_3 alpha_3=beta. quad "（1分）" $
对方程组的增广矩阵 $overline(A)$ 作行的初等变换，有
$ overline(A)=mat(a,-2,-1,1;2,1,1,b;10,5,4,c)->mat(2,1,1,b;0,-2-frac(a,2),-1-frac(a,2),1-frac(a b,2);0,0,-1,c-5b). quad "（2分）" $
（1）当 $-2-frac(a,2)!=0$，即 $a!=-4$ 时，秩$(A)=$秩$(overline(A))=3$，方程组有唯一解，$beta$ 可由 $alpha_1,alpha_2,alpha_3$ 线性表出，且表示唯一.

（2）当 $-2-frac(a,2)=0$，即 $a=-4$ 时，对增广矩阵作行的初等变换，有
$ overline(A)->mat(2,1,0,-b-1;0,0,1,1+2b;0,0,0,1-3b+c). $
当 $3b-c!=1$ 时，秩$(A)!=$秩$(overline(A))$，方程组无解，$beta$ 不能由 $alpha_1,alpha_2,alpha_3$ 线性表出. （5分）

（3）同解法1.
]

#answer("十、")[
*分析* 由三条线性无关特征向量和二重特征值 $lambda=2$，知对应的特征向量有两个，因此 $r(2E-A)=1$. 对矩阵作行变换，利用秩的条件确定 $x,y$，再求特征向量构成可逆矩阵 $P$.

*解*
因为 $A$ 有三个线性无关的特征向量，$lambda=2$ 是 $A$ 的二重特征值，所以 $A$ 的对应于 $lambda=2$ 的线性无关的特征向量有两个，故秩$(2E-A)=1$. （1分）

经过行的初等变换，
$ 2E-A=mat(1,1,-1;-x,-2,-y;3,3,-3)->mat(1,1,-1;0,x-2,-x-y;0,0,0). $
于是，解得 $x=2,y=-2$. （3分）

矩阵 $A=mat(1,-1,1;2,4,-2;-3,-3,5)$，其特征多项式
$ |lambda E-A|=mat(delim:"|",lambda-1,1,-1;-2,lambda-4,2;3,3,lambda-5)=(lambda-2)^2(lambda-6). $
由此得特征值 $lambda_1=lambda_2=2,lambda_3=6$. （4分）

对于特征值为 $lambda_1=lambda_2=2$，解线性方程组 $(2E-A)X=0$，有
$ lambda_1 E-A=mat(1,1,-1;-2,-2,2;3,3,-3)->mat(1,1,-1;0,0,0;0,0,0). $
对应的特征向量为
$ alpha_1=(1,-1,0)^T,quad alpha_2=(1,0,1)^T. quad "（6分）" $
对于特征值 $lambda_3=6$，解线性方程组 $(6E-A)X=0$，有
$ lambda_3 E-A=mat(5,1,-1;-2,2,2;3,3,1)->mat(1,0,-frac(1,3);0,1,frac(2,3);0,0,0), $
对应的特征向量为
$ alpha_3=(1,-2,3)^T. quad "（8分）" $
令 $P=mat(1,1,1;-1,0,-2;0,1,3)$，则
$ P^(-1)A P=mat(2,0,0;0,2,0;0,0,6). quad "（9分）" $
]

#answer("十一、")[
*分析* 应区分 $phi_1,phi_2,f$ 分别是三个不同二维随机变量的密度. 前两个服从二维正态分布，其边缘均值为零、方差为1，相关系数分别为 $1/3,-1/3$，据此可写出密度. 判断 $X,Y$ 是否独立，要比较 $f(x,y)$ 与 $f_1(x)f_2(y)$，不能仅凭相关系数是否为零，因为混合密度 $f$ 并非二维正态密度.

*解*
（1）由于二维正态密度函数的两个边缘密度都是正态密度函数，因此 $phi_1(x,y)$ 和 $phi_2(x,y)$ 的两个边缘密度为标准正态密度函数，故
$ f_1(x)&=integral_(-infinity)^(+infinity)f(x,y)dif y \
&=frac(1,2)[integral_(-infinity)^(+infinity)phi_1(x,y)dif y+integral_(-infinity)^(+infinity)phi_2(x,y)dif y] \
&=frac(1,2)[frac(1,sqrt(2pi))e^(-x^2/2)+frac(1,sqrt(2pi))e^(-x^2/2)]=frac(1,sqrt(2pi))e^(-x^2/2); quad "（2分）" $
同理，
$ f_2(y)=frac(1,sqrt(2pi))e^(-y^2/2). quad "（3分）" $
由于 $X tilde N(0,1),Y tilde N(0,1)$，可见 $E X=E Y=0,D X=D Y=1$. （4分）

随机变量 $X$ 和 $Y$ 的相关系数
$ rho&=integral_(-infinity)^(+infinity)integral_(-infinity)^(+infinity)x y f(x,y)dif x dif y \
&=frac(1,2)[integral_(-infinity)^(+infinity)integral_(-infinity)^(+infinity)x y phi_1(x,y)dif x dif y \
& quad +integral_(-infinity)^(+infinity)integral_(-infinity)^(+infinity)x y phi_2(x,y)dif x dif y] \
&=frac(1,2)[frac(1,3)-frac(1,3)]=0. quad "（6分）" $
（2）由题设
$ f(x,y)=frac(3,8pi sqrt(2))[e^(-frac(9,16)(x^2-frac(2,3)x y+y^2))+e^(-frac(9,16)(x^2+frac(2,3)x y+y^2))], $
$ f_1(x)dot f_2(y)=frac(1,2pi)e^(-x^2/2)dot e^(-y^2/2)=frac(1,2pi)e^(-frac(x^2+y^2,2)), $
$ f(x,y)!=f_1(x)dot f_2(y). $
所以 $X$ 与 $Y$ 不独立. （8分）

本题重点考查由联合密度求边缘密度、二维正态密度与均值方差及相关系数的关系，以及独立性与相关性的关系.
]

#answer("十二、")[
*分析* 目标是证明协方差为零当且仅当 $P(A B)=P(A)P(B)$. 由协方差公式，须正确写出 $X Y$ 的分布及 $E X,E Y,E X Y$.

*解*
记 $P(A)=p_1,P(B)=p_2,P(A B)=p_(12)$. 由数学期望定义，可见
$ E X=P(A)-P(overline(A))=2p_1-1,quad E Y=2p_2-1. quad "（2分）" $
现在求 $E X Y$，由于 $X Y$ 只有两个可能值1和 $-1$，可见
$ P{X Y=1}=P(A B)+P(overline(A) overline(B))=2p_(12)-p_1-p_2+1, quad "（3分）" $
$ P{X Y=-1}=1-P{X Y=1}=p_1+p_2-2p_(12), quad "（4分）" $
$ E X Y=P{X Y=1}-P{X Y=-1}=4p_(12)-2p_1-2p_2+1. quad "（5分）" $
从而
$ op("COV")(X,Y)=E X Y-E X dot E Y=4p_(12)-4p_1 p_2. quad "（7分）" $
因此，$op("COV")(X,Y)=0$ 当且仅当 $p_(12)=p_1 p_2$，即 $X$ 和 $Y$ 不相关当且仅当事件 $A$ 和 $B$ 相互独立. （8分）
]

