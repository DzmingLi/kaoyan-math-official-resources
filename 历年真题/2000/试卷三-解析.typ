#import "../template.typ": exam
#show: exam.with(year: 2000, subject: "三", title: "2000年全国硕士研究生入学考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(true)


= 一、填空题（本题共5小题，每小题3分，满分15分）
#ezexam.counter-question.step()

（1）设 $z=f(x y,frac(x,y))+g(frac(y,x))$，其中 $f,g$ 均可微，则 $frac(partial z,partial x)=$ #fillin(len: 3em)[].
#ezexam.solution(show-number: false)[
$y f'_1+frac(1,y)f'_2-frac(y,x^2)g'$.
]

（2）$integral_1^(+infinity)frac(dif x,e^x+e^(2-x))=$ #fillin(len: 3em)[].
#ezexam.solution(show-number: false)[
$frac(pi,4e)$.
]

（3）若四阶矩阵 $A$ 与 $B$ 相似，矩阵 $A$ 的特征值为 $frac(1,2),frac(1,3),frac(1,4),frac(1,5)$，则行列式 $|B^(-1)-E|=$ #fillin(len: 3em)[].
#ezexam.solution(show-number: false)[
24.
]

（4）设随机变量 $X$ 的概率密度为
$ f(x)=cases(frac(1,3) quad "若" x in [0,1],frac(2,9) quad "若" x in [3,6],0 quad "其他"). $
若 $k$ 使得 $P{X>=k}=frac(2,3)$，则 $k$ 的取值范围是 #fillin(len: 3em)[].
#ezexam.solution(show-number: false)[
$[1,3]$.
]

（5）设随机变量 $X$ 在区间 $[-1,2]$ 上服从均匀分布；随机变量
$ Y=cases(1 quad "若" X>0,0 quad "若" X=0,-1 quad "若" X<0), $
则方差 $D Y=$ #fillin(len: 3em)[].
#ezexam.solution(show-number: false)[
$frac(8,9)$.
]

= 二、选择题（本题共5小题，每小题3分，满分15分）
#ezexam.counter-question.step()

（1）设对任意的 $x$，总有 $phi(x)<=f(x)<=g(x)$，且 $lim_(x->infinity)[g(x)-phi(x)]=0$，则 $lim_(x->infinity)f(x)$（　）.
#choices[存在且等于零.][存在但不一定为零.][一定不存在.][不一定存在.]
#ezexam.solution(show-number: false)[
D.
]

（2）设函数 $f(x)$ 在点 $x=a$ 处可导，则函数 $|f(x)|$ 在点 $x=a$ 处不可导的充分条件是（　）.
#choices[$f(a)=0$ 且 $f'(a)=0$.][$f(a)=0$ 且 $f'(a)!=0$.][$f(a)>0$ 且 $f'(a)>0$.][$f(a)<0$ 且 $f'(a)<0$.]
#ezexam.solution(show-number: false)[
B.
]

（3）设 $alpha_1,alpha_2,alpha_3$ 是四元非齐次线性方程组 $A X=b$ 的三个解向量，且秩$(A)=3$，$alpha_1=(1,2,3,4)^T$，$alpha_2+alpha_3=(0,1,2,3)^T$，$c$ 表示任意常数，则线性方程组 $A X=b$ 的通解 $X=$（　）.
#choices[$mat(1;2;3;4)+c mat(1;1;1;1)$.][$mat(1;2;3;4)+c mat(0;1;2;3)$.][$mat(1;2;3;4)+c mat(2;3;4;5)$.][$mat(1;2;3;4)+c mat(3;4;5;6)$.]
#ezexam.solution(show-number: false)[
C.
]

（4）设 $A$ 为 $n$ 阶实矩阵，$A^T$ 是 $A$ 的转置矩阵，则对于线性方程组（Ⅰ）：$A X=O$ 和（Ⅱ）：$A^T A X=O$，必有（　）.
#choices[（Ⅱ）的解是（Ⅰ）的解，（Ⅰ）的解也是（Ⅱ）的解.][（Ⅱ）的解是（Ⅰ）的解，但（Ⅰ）的解不是（Ⅱ）的解.][（Ⅰ）的解不是（Ⅱ）的解，（Ⅱ）的解也不是（Ⅰ）的解.][（Ⅰ）的解是（Ⅱ）的解，但（Ⅱ）的解不是（Ⅰ）的解.]
#ezexam.solution(show-number: false)[
A.
]

（5）在电炉上安装了4个温控器，其显示温度的误差是随机的.在使用过程中，只要有两个温控器显示的温度不低于临界温度 $t_0$，电炉就断电.以 $E$ 表示事件“电炉断电”，而 $T_((1))<=T_((2))<=T_((3))<=T_((4))$ 为4个温控器显示的按递增顺序排列的温度值，则事件 $E$ 等于（　）.
#choices[${T_((1))>=t_0}$.][${T_((2))>=t_0}$.][${T_((3))>=t_0}$.][${T_((4))>=t_0}$.]
#ezexam.solution(show-number: false)[
C.
]

#ezexam.question(label: n => [三、])[
（本题满分6分）求微分方程 $y''-2y'-e^(2x)=0$ 满足条件 $y(0)=1,y'(0)=1$ 的解.
#ezexam.solution(show-number: false)[
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


]

#ezexam.question(label: n => [四、])[
（本题满分6分）计算二重积分 $integral.double_D frac(sqrt(x^2+y^2),sqrt(4a^2-x^2-y^2))dif sigma$，其中 $D$ 是由曲线 $y=-a+sqrt(a^2-x^2)$（$a>0$）和直线 $y=-x$ 围成的区域.
#ezexam.solution(show-number: false)[
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
]


]

#ezexam.question(label: n => [五、])[
（本题满分6分）假设某企业在两个相互分割的市场上出售同一种产品，两个市场的需求函数分别是
$ p_1=18-2Q_1,quad p_2=12-Q_2, $
其中 $p_1$ 和 $p_2$ 分别表示该产品在两个市场的价格（单位：万元/吨），$Q_1$ 和 $Q_2$ 分别表示该产品在两个市场的销售量（即需求量，单位：吨），并且该企业生产这种产品的总成本函数是
$ C=2Q+5, $
其中 $Q$ 表示该产品在两个市场的销售总量，即 $Q=Q_1+Q_2$.

（1）如果该企业实行价格差别策略，试确定两个市场上该产品的销售量和价格，使该企业获得最大利润；

（2）如果该企业实行价格无差别策略，试确定两个市场上该产品的销售量及其统一的价格，使该企业的总利润最大化；并比较两种价格策略下的总利润大小.
#ezexam.solution(show-number: false)[
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
]


]

#ezexam.question(label: n => [六、])[
（本题满分7分）求函数 $y=(x-1)e^(pi/2+arctan x)$ 的单调区间和极值，并求该函数图形的渐近线.
#ezexam.solution(show-number: false)[
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


]

#ezexam.question(label: n => [七、])[
（本题满分6分）设 $I_n=integral_0^(pi/4)sin^n x cos x dif x$，$n=0,1,2,dots$，求 $sum_(n=0)^infinity I_n$.
#ezexam.solution(show-number: false)[
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


]

#ezexam.question(label: n => [八、])[
（本题满分6分）设函数 $f(x)$ 在 $[0,pi]$ 上连续，且 $integral_0^pi f(x)dif x=0$，$integral_0^pi f(x)cos x dif x=0$.试证明：在 $(0,pi)$ 内至少存在两个不同的点 $xi_1,xi_2$，使 $f(xi_1)=f(xi_2)=0$.
#ezexam.solution(show-number: false)[
*证法1* 令 $F(x)=integral_0^x f(t)dif t$，$0<=x<=pi$， （1分）
则有 $F(0)=0,F(pi)=0$.又因为
$ 0&=integral_0^pi f(x)cos x dif x=integral_0^pi cos x dif F(x) \
&=F(x)cos x|_0^pi+integral_0^pi F(x)sin x dif x \
&=integral_0^pi F(x)sin x dif x, $
所以存在 $xi in (0,pi)$，使 $F(xi)sin xi=0$.因若不然，则在 $(0,pi)$ 内或 $F(x)sin x$ 恒为正，或 $F(x)sin x$ 恒为负，均与 $integral_0^pi F(x)sin x dif x=0$ 矛盾.但当 $xi in (0,pi)$ 时，$sin xi!=0$，故 $F(xi)=0$.

由上证得 $F(0)=F(xi)=F(pi)=0$（$0<xi<pi$）. （4分）

再对 $F(x)$ 在区间 $[0,xi],[xi,pi]$ 上分别用罗尔定理，知至少存在 $xi_1 in (0,xi),xi_2 in (xi,pi)$，使
$ F'(xi_1)=F'(xi_2)=0, $
即 $f(xi_1)=f(xi_2)=0$. （6分）

*证法2* 由 $integral_0^pi f(x)dif x=0$ 知，存在 $xi_1 in (0,pi)$，使 $f(xi_1)=0$.因若不然，则在 $(0,pi)$ 内或 $f(x)$ 恒为正，或 $f(x)$ 恒为负，均与 $integral_0^pi f(x)dif x=0$ 矛盾. （1分）

若在 $(0,pi)$ 内 $f(x)=0$ 仅有一个实根 $x=xi_1$，则由 $integral_0^pi f(x)dif x=0$ 推知，$f(x)$ 在 $(0,xi_1)$ 内与 $(xi_1,pi)$ 内反号，不妨设在 $(0,xi_1)$ 内 $f(x)>0$，在 $(xi_1,pi)$ 内 $f(x)<0$.于是再由 $integral_0^pi f(x)cos x dif x=0$ 与 $integral_0^pi f(x)dif x=0$ 及 $cos x$ 在 $[0,pi]$ 上的单调性知：
$ 0&=integral_0^pi f(x)(cos x-cos xi_1)dif x \
&=integral_0^(xi_1) f(x)(cos x-cos xi_1)dif x+integral_(xi_1)^pi f(x)(cos x-cos xi_1)dif x \
&>0, $
得出矛盾. （5分）

从而推知，在 $(0,pi)$ 内除 $xi_1$ 外，$f(x)=0$ 至少还有另一实根 $xi_2$，故知存在 $xi_1,xi_2 in (0,pi)$，$xi_1!=xi_2$，使 $f(xi_1)=f(xi_2)=0$. （6分）

注：证法1中的 $xi$ 和证法2中的 $xi_1$ 也可用积分中值定理得到.
]


]

#ezexam.question(label: n => [九、])[
（本题满分8分）设向量组 $alpha_1=(a,2,10)^T,alpha_2=(-2,1,5)^T,alpha_3=(-1,1,4)^T,beta=(1,b,c)^T$.试问：当 $a,b,c$ 满足什么条件时，

（1）$beta$ 可由 $alpha_1,alpha_2,alpha_3$ 线性表出，且表示唯一？

（2）$beta$ 不能由 $alpha_1,alpha_2,alpha_3$ 线性表出？

（3）$beta$ 可由 $alpha_1,alpha_2,alpha_3$ 线性表出，但表示不唯一？并求出一般表达式.
#ezexam.solution(show-number: false)[
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


]

#ezexam.question(label: n => [十、])[
（本题满分9分）设有 $n$ 元实二次型
$ f(x_1,x_2,dots,x_n)=(x_1+a_1 x_2)^2+(x_2+a_2 x_3)^2+dots+(x_(n-1)+a_(n-1)x_n)^2+(x_n+a_n x_1)^2, $
其中 $a_i$（$i=1,2,dots,n$）为实数.试问：当 $a_1,a_2,dots,a_n$ 满足何种条件时，二次型 $f(x_1,x_2,dots,x_n)$ 为正定二次型.
#ezexam.solution(show-number: false)[
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


]

#ezexam.question(label: n => [十一、])[
（本题满分8分）假设0.50，1.25，0.80，2.00是来自总体 $X$ 的简单随机样本值.已知 $Y=ln X$ 服从正态分布 $N(mu,1)$.

（1）求 $X$ 的数学期望 $E X$（记 $E X$ 为 $b$）；

（2）求 $mu$ 的置信度为0.95的置信区间；

（3）利用上述结果求 $b$ 的置信度为0.95的置信区间.
#ezexam.solution(show-number: false)[
（1）$Y$ 的概率密度为
$ f(y)=frac(1,sqrt(2pi))e^(-frac((y-mu)^2,2)),quad -infinity<y<+infinity. $
于是，（令 $t=y-mu$）
$ b=E X=E e^Y&=frac(1,sqrt(2pi))integral_(-infinity)^(+infinity)e^y e^(-frac((y-mu)^2,2))dif y quad "（2分）" \
&=frac(1,sqrt(2pi))integral_(-infinity)^(+infinity)e^(t+mu)e^(-frac(1,2)t^2)dif t \
&=e^(mu+frac(1,2))integral_(-infinity)^(+infinity)frac(1,sqrt(2pi))e^(-frac(1,2)(t-1)^2)dif t quad "（3分）" \
&=e^(mu+frac(1,2)). quad "（4分）" $
（2）当置信度 $1-alpha=0.95$ 时，$alpha=0.05$.标准正态分布的水平为 $alpha=0.05$ 的双侧分位数等于1.96.故由 $overline(Y) tilde N(mu,1/4)$，可得参数 $mu$ 的0.95置信区间为
$ (overline(Y)-1.96times frac(1,sqrt(4)),overline(Y)+1.96times frac(1,sqrt(4)))=(overline(Y)-0.98,overline(Y)+0.98). quad "（*）" quad "（5分）" $
其中 $overline(Y)$ 表示总体 $Y$ 的样本均值，于是，将
$ overline(Y)=frac(1,4)(ln 0.5+ln 0.8+ln 1.25+ln 2)=frac(1,4)ln 1=0 $
代入区间（\*）式的端点，得参数 $mu$ 的0.95置信区间为
$ (-0.98,0.98). quad "（6分）" $
（3）由 $e^x$ 的严格递增性，可见 $b$ 的置信度为0.95的置信区间为 $(e^(-0.48),e^(1.48))$. （8分）
]


]

#ezexam.question(label: n => [十二、])[
（本题满分8分）设 $A,B$ 是二随机事件；随机变量
$ X=cases(1 quad "若" A "出现",-1 quad "若" A "不出现"),quad Y=cases(1 quad "若" B "出现",-1 quad "若" B "不出现"), $
试证明随机变量 $X$ 和 $Y$ 不相关的充分必要条件是 $A$ 与 $B$ 相互独立.
#ezexam.solution(show-number: false)[
记 $P(A)=p_1,P(B)=p_2,P(A B)=p_(12)$.由数学期望定义，可见
$ E X=P(A)-P(overline(A))=2p_1-1,quad E Y=2p_2-1. quad "（2分）" $
现在求 $E X Y$，由于 $X Y$ 只有两个可能值1和 $-1$，可见
$ P{X Y=1}=P(A B)+P(overline(A) overline(B))=2p_(12)-p_1-p_2+1, quad "（3分）" $
$ P{X Y=-1}=1-P{X Y=1}=p_1+p_2-2p_(12), quad "（4分）" $
$ E X Y=P{X Y=1}-P{X Y=-1}=4p_(12)-2p_1-2p_2+1. quad "（5分）" $
从而
$ op("COV")(X,Y)=E X Y-E X dot E Y=4p_(12)-4p_1 p_2. quad "（7分）" $
因此，$op("COV")(X,Y)=0$ 当且仅当 $p_(12)=p_1 p_2$，即 $X$ 和 $Y$ 不相关当且仅当事件 $A$ 和 $B$ 相互独立. （8分）
]

]
