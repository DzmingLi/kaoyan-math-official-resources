#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2000, subject: "三", title: "2000年全国硕士研究生入学考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#import "@preview/cetz:0.5.2" as cetz
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2000 数学三试卷参考解答

= 一、填空题

#answer("1（1）")[
*分析* 本题考查含抽象函数的二元函数求偏导，依复合函数求导法则，
$ frac(partial z,partial x)=frac(partial,partial x)f(x y,x/y)+frac(partial,partial x)g(y/x)=f'_1 y+f'_2 frac(1,y)-g'frac(y,x^2). $
]

#answer("1（2）")[
*分析* 这是求无穷限广义积分的问题，令 $t=e^x$，有
$ integral_1^infinity frac(dif x,e^x+e^(2-x))
&=lim_(b->infinity)integral_1^b frac(dif(e^x),e^(2x)+e^2) \
&=lim_(b->infinity)integral_e^(e^b)frac(dif t,t^2+e^2) \
&=lim_(b->infinity)[frac(1,e)arctan frac(t,e)]_e^(e^b) \
&=frac(pi,2e)-frac(pi,4e)=frac(pi,4e). $
本题考查广义积分计算、公式 $integral frac(dif x,a^2+x^2)=frac(1,a)arctan frac(x,a)+C$ 及反正切函数的性质.
]

#answer("1（3）")[
*分析* 相似矩阵具有相同特征值. 因为 $A$ 的四个特征值互不相同，它可对角化. 设 $P A P^(-1)=Lambda=mat(1/2,0,0,0;0,1/3,0,0;0,0,1/4,0;0,0,0,1/5)$，则
$ det(B^(-1)-E)=det(A^(-1)-E)=det(P^(-1)(Lambda^(-1)-E)P)=det mat(1,0,0,0;0,2,0,0;0,0,3,0;0,0,0,4)=24. $
本题考查相似矩阵的性质及矩阵运算技巧.
]

#answer("1（4）")[
*分析* 概率 $P{X>=k}$ 表示密度曲线在 $x>=k$ 部分与 $x$ 轴围成的面积. 区间 $[3,6]$ 内的面积为 $3 dot 2/9=2/3$，而 $(1,3)$ 内密度为零，所以 $k in[1,3]$ 时概率均为 $2/3$. 当 $k<1$ 或 $k>3$ 时均不满足. 故填 $[1,3]$.
本题考查对概率密度和概率分布概念的理解.

#cetz.canvas({
 import cetz.draw: *
 let p(x,y)=(.9*x,6*y)
 line(p(-.3,0),p(7,0),mark:(end:">"))
 line(p(0,-.04),p(0,.42),mark:(end:">"))
 line(p(0,1/3),p(1,1/3))
 line(p(1,0),p(3,0),stroke:(dash:"dashed"))
 line(p(3,2/9),p(6,2/9))
 for x in (1,3,6) {circle(p(x,0),radius:.035,fill:white);content(p(x,-.05),[#x])}
 content(p(-.2,-.03),$O$)
 content(p(7,-.025),$x$)
 content(p(-.18,.42),$f(x)$)
 content(p(-.3,1/3),$1/3$)
 content(p(6.4,2/9),$2/9$)
})
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
*分析* 若 $x$ 满足 $A x=0$，则显然满足 $A^T A x=0$. 反之，若 $A^T A x=0$，则
$ (A x)^T(A x)=x^T A^T A x=0. $
左边是 $A x$ 各分量的平方和，只能在 $A x=0$ 时成立. 两方程组同解，选 A. 错选 D 的原因是不会由 $A^T A x=0$ 推出 $A x=0$.
]

#answer("2（5）")[
*分析* 电炉断电意味着四个温控器中至少有两个显示值不低于 $t_0$. 将四个显示值按递增顺序排列，等价于第三个显示值 $T_(3)>=t_0$，所以 $E={T_(3)>=t_0}$，选 C.
]

= 解答题

#answer("三、")[
*分析* 这是常系数线性微分方程的基础题. 注意根据齐次方程特征根及右端 $e^(2x)$，正确选择特解的形式.

*解*
齐次方程 $y''-2y'=0$ 的特征方程为
$ lambda^2-2lambda=0. $
由此求得特征根 $lambda_1=0,lambda_2=2$. （1分）

对应齐次方程的通解为 $overline(y)=C_1+C_2 e^(2x)$. （2分）

设非齐次方程的特解为 $y^*=A x e^(2x)$，则 （3分）
$ (y^*)'=(A+2A x)e^(2x),quad (y^*)''=4A(1+x)e^(2x). $
代入原方程，求得 $A=frac(1,2)$，从而 $y^*=frac(1,2)x e^(2x)$.

于是，原方程的通解为
$ y=overline(y)+y^*=C_1+(C_2+frac(1,2)x)e^(2x). quad "（5分）" $
将 $y(0)=1$ 和 $y'(0)=1$ 代入通解，求得 $C_1=frac(3,4),C_2=frac(1,4)$.

从而，所求解为
$ y=frac(3,4)+frac(1,4)(1+2x)e^(2x). quad "（6分）" $
]

#answer("四、")[
*分析* 被积函数含 $x^2+y^2$，适合使用极坐标. 先正确画出区域，再确定 $theta$ 和 $r$ 的变化区间.

*解*
区域 $D$ 如图，在极坐标系下 $D={(r,theta)|-frac(pi,4)<=theta<=0,0<=r<=-2a sin theta}$.
#import "@preview/cetz:0.5.2"
#cetz.canvas({
 import cetz.draw: *
 set-style(stroke:0.6pt)
 let arc=range(0,51).map(i=>{let t=i*90deg/50;(1.6*calc.sin(t),-1.6+1.6*calc.cos(t))})
 line(..arc,close:true,fill:luma(86%))
 line(..range(0,81).map(i=>{let t=i*180deg/80;(-1.6*calc.cos(t),-1.6+1.6*calc.sin(t))}))
 line((-1.6,-1.6),(1.6,-1.6),(1.6,0),stroke:(dash:"dashed"))
 line((0,0),(2.1,-2.1));line((-1.9,0),(3.1,0),mark:(end:">"));line((0,-2.1),(0,0.8),mark:(end:">"))
 content((3.1,0.16),$x$);content((0.15,0.8),$y$);content((-0.18,0.18),$O$)
 content((1.6,0.18),$a$);content((-0.23,-1.6),$-a$);content((0.95,-0.65),$D$)
 content((2.5,-0.55),$y=-a+sqrt(a^2-x^2)$);content((2.4,-2.1),$y=-x$)
})
$ I&=integral.double_D frac(sqrt(x^2+y^2),sqrt(4a^2-x^2-y^2))dif sigma \
&=integral_(-pi/4)^0 dif theta integral_0^(-2a sin theta)frac(r^2,sqrt(4a^2-r^2))dif r. quad "（2分）" $
令 $r=2a sin t$，有
$ I&=integral_(-pi/4)^0 dif theta integral_0^(-theta)2a^2(1-cos 2t)dif t quad "（4分）" \
&=2a^2 integral_(-pi/4)^0(-theta+frac(1,2)sin 2theta)dif theta quad "（5分）" \
&=a^2(frac(pi^2,16)-frac(1,2)). quad "（6分）" $

考生的主要困难是不能正确确定极坐标下的积分限，或不会计算变换后的累次积分，说明基本功还不扎实.
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
*分析* 换元法容易求出 $I_n$，但数项级数一般不易直接求和. 将其转化为函数项级数求和问题，再用逐项求导性质解决.

*解*
由
$ I_n=integral_0^(pi/4)sin^n x dif(sin x)=frac(1,n+1)(sin x)^(n+1)|_0^(pi/4)=frac(1,n+1)(frac(sqrt(2),2))^(n+1), $
有
$ sum_(n=0)^infinity I_n=sum_(n=0)^infinity frac(1,n+1)(frac(sqrt(2),2))^(n+1). quad "（2分）" $
令 $S(x)=sum_(n=0)^infinity frac(1,n+1)x^(n+1)$，则其收敛半径 $R=1$，在 $(-1,1)$ 内有
$ S'(x)=sum_(n=0)^infinity x^n=frac(1,1-x). quad "（3分）" $
于是
$ S(x)=integral_0^x frac(1,1-t)dif t=-ln|1-x|. quad "（4分）" $
令 $x=frac(sqrt(2),2)in(-1,1)$，则
$ S(frac(sqrt(2),2))=sum_(n=0)^infinity frac(1,n+1)(frac(sqrt(2),2))^(n+1)=-ln|1-frac(sqrt(2),2)|. $
从而
$ sum_(n=0)^infinity I_n=sum_(n=0)^infinity integral_0^(pi/4)sin^n x cos x dif x=ln(2+sqrt(2)). quad "（6分）" $
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
*分析* 将非负二次型的正定性问题转化为齐次线性方程组仅有零解的条件，进而转化为 $n$ 阶行列式的计算.

*解*
由题设条件知，对于任意的 $x_1,x_2,dots,x_n$，有
$ f(x_1,x_2,dots,x_n)>=0, $
其中等号成立当且仅当
$ cases(x_1+a_1 x_2=0,x_2+a_2 x_3=0,dots,x_(n-1)+a_(n-1)x_n=0,x_n+a_n x_1=0). quad "（1）" quad "（2分）" $
方程组（1）仅有零解的充分必要条件是其系数行列式
$ mat(delim:"|",1,a_1,0,dots,0,0;0,1,a_2,dots,0,0;dots.v,dots.v,dots.v,,dots.v,dots.v;0,0,0,dots,1,a_(n-1);a_n,0,0,dots,0,1)=1+(-1)^(n+1)a_1 a_2 dots a_n!=0. quad "（6分）" $
所以，当 $1+(-1)^(n+1)a_1 a_2 dots a_n!=0$ 时，对于任意的不全为零的 $x_1,x_2,dots,x_n$，有
$ f(x_1,x_2,dots,x_n)>0, quad "（8分）" $
即当 $a_1 a_2 dots a_n!=(-1)^n$ 时，二次型 $f(x_1,x_2,dots,x_n)$ 为正定二次型. （9分）
]

#answer("十一、")[
*分析* 已知 $Y$ 的分布，且 $X=e^Y$，所以 $b=E X=E e^Y$，利用随机变量函数的期望公式计算. 因 $mu$ 是 $Y$ 的均值，可用样本均值的分布求其置信区间，再依据 $b$ 与 $mu$ 的关系得到 $b$ 的置信区间.

*解*
（1）$Y$ 的概率密度为
$ f(y)=frac(1,sqrt(2pi))e^(-frac((y-mu)^2,2)),quad -infinity<y<+infinity. $
于是，（令 $t=y-mu$）
$ b=E X=E e^Y&=frac(1,sqrt(2pi))integral_(-infinity)^(+infinity)e^y e^(-frac((y-mu)^2,2))dif y quad "（2分）" \
&=frac(1,sqrt(2pi))integral_(-infinity)^(+infinity)e^(t+mu)e^(-frac(1,2)t^2)dif t \
&=e^(mu+frac(1,2))integral_(-infinity)^(+infinity)frac(1,sqrt(2pi))e^(-frac(1,2)(t-1)^2)dif t quad "（3分）" \
&=e^(mu+frac(1,2)). quad "（4分）" $
（2）当置信度 $1-alpha=0.95$ 时，$alpha=0.05$. 标准正态分布的水平为 $alpha=0.05$ 的双侧分位数等于1.96. 故由 $overline(Y) tilde N(mu,1/4)$，可得参数 $mu$ 的0.95置信区间为
$ (overline(Y)-1.96times frac(1,sqrt(4)),overline(Y)+1.96times frac(1,sqrt(4)))=(overline(Y)-0.98,overline(Y)+0.98). quad "（*）" quad "（5分）" $
其中 $overline(Y)$ 表示总体 $Y$ 的样本均值，于是，将
$ overline(Y)=frac(1,4)(ln 0.5+ln 0.8+ln 1.25+ln 2)=frac(1,4)ln 1=0 $
代入区间（\*）式的端点，得参数 $mu$ 的0.95置信区间为
$ (-0.98,0.98). quad "（6分）" $
（3）由 $e^x$ 的严格递增性，可见 $b$ 的置信度为0.95的置信区间为 $(e^(-0.48),e^(1.48))$. （8分）
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

