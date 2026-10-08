#import "../template.typ": exam
#show: exam.with(year: 2000, subject: "四", title: "2000年全国硕士研究生入学考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(true)


= 一、填空题（本题共5小题，每小题3分，满分15分）
#ezexam.counter-question.step()

（1）$integral frac(arcsin sqrt(x),sqrt(x))dif x=$ #fillin(len: 3em)[].
#ezexam.solution(show-number: false)[
$2sqrt(x)arcsin sqrt(x)+2sqrt(1-x)+C$.
]

（2）若 $a>0,b>0$ 均为常数，则 $lim_(x->0)(frac(a^x+b^x,2))^(3/x)=$ #fillin(len: 3em)[].
#ezexam.solution(show-number: false)[
$(a b)^(3/2)$.
]

（3）设 $alpha=(1,0,-1)^T$，矩阵 $A=alpha alpha^T$，$n$ 为正整数，则 $|a E-A^n|=$ #fillin(len: 3em)[].
#ezexam.solution(show-number: false)[
$a^2(a-2^n)$.
]

（4）已知四阶矩阵 $A$ 相似于 $B$，$A$ 的特征值为2，3，4，5.$E$ 为四阶单位矩阵，则 $|B-E|=$ #fillin(len: 3em)[].
#ezexam.solution(show-number: false)[
24.
]

（5）假设随机变量 $X$ 在区间 $[-1,2]$ 上服从均匀分布，随机变量
$ Y=cases(1 quad "若" X>0,0 quad "若" X=0,-1 quad "若" X<0), $
则方差 $D Y=$ #fillin(len: 3em)[].
#ezexam.solution(show-number: false)[
$frac(8,9)$.
]

= 二、选择题（本题共5小题，每小题3分，满分15分）
#ezexam.counter-question.step()

（1）设对任意的 $x$，总有 $phi(x)<=f(x)<=g(x)$，且 $lim_(x->infinity)[g(x)-phi(x)]=0$，则 $lim_(x->infinity)f(x)$（　）.
#choices[存在且一定等于零.][存在但不一定为零.][一定不存在.][不一定存在.]
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

（4）设 $A,B,C$ 三个事件两两独立，则 $A,B,C$ 相互独立的充分必要条件是（　）.
#choices[$A$ 与 $B C$ 独立.][$A B$ 与 $A union C$ 独立.][$A B$ 与 $A C$ 独立.][$A union B$ 与 $A union C$ 独立.]
#ezexam.solution(show-number: false)[
A.
]

（5）在电炉上安装了4个温控器，其显示温度的误差是随机的.在使用过程中，只要有两个温控器显示的温度不低于临界温度 $t_0$，电炉就断电.以 $E$ 表示事件“电炉断电”，设 $T_((1))<=T_((2))<=T_((3))<=T_((4))$ 为4个温控器显示的按递增顺序排列的温度值，则事件 $E$ 等于事件（　）.
#choices[${T_((1))>=t_0}$.][${T_((2))>=t_0}$.][${T_((3))>=t_0}$.][${T_((4))>=t_0}$.]
#ezexam.solution(show-number: false)[
C.
]

#ezexam.question(label: n => [三、])[
（本题满分6分）已知 $Z=u^v$，$u=ln sqrt(x^2+y^2)$，$v=arctan frac(y,x)$，求 $dif Z$.
#ezexam.solution(show-number: false)[
$ frac(partial Z,partial x)&=frac(partial Z,partial u)dot frac(partial u,partial x)+frac(partial Z,partial v)dot frac(partial v,partial x) \
&=(v u^(v-1))dot frac(1,2)dot frac(2x,x^2+y^2)+(u^v ln u)dot frac(1,1+(y/x)^2)dot(-frac(y,x^2)) \
&=frac(u^v,x^2+y^2)(frac(x v,u)-y ln u); quad "（2分）" $
$ frac(partial Z,partial y)&=frac(partial Z,partial u)dot frac(partial u,partial y)+frac(partial Z,partial v)dot frac(partial v,partial y) \
&=(v u^(v-1))dot frac(1,2)dot frac(2y,x^2+y^2)+(u^v ln u)dot frac(1,1+(y/x)^2)dot frac(1,x) \
&=frac(u^v,x^2+y^2)(frac(y v,u)+x ln u); quad "（4分）" $
$ dif Z=frac(u^v,x^2+y^2)[(frac(x v,u)-y ln u)dif x+(frac(y v,u)+x ln u)dif y]. quad "（6分）" $
]


]

#ezexam.question(label: n => [四、])[
（本题满分6分）计算 $I=integral_1^(+infinity)frac(dif x,e^(1+x)+e^(3-x))$.
#ezexam.solution(show-number: false)[
$ I&=integral_1^(+infinity)frac(e^(x-3),e^(2(x-1))+1)dif x quad "（2分）" \
&=e^(-2)integral_1^(+infinity)frac(dif e^(x-1),1+e^(2(x-1))) quad "（4分）" \
&=e^(-2)dot arctan e^(x-1)|_1^(+infinity) \
&=e^(-2)(frac(pi,2)-frac(pi,4)) \
&=frac(pi,4)e^(-2). quad "（6分）" $
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

因驻点 $(4,5)$ 唯一，且实际问题一定存在最大值，故最大值必在驻点处达到，所以最大利润为
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
（本题满分6分）设
$ f(x,y)=cases(x^2 y quad "若" 1<=x<=2 comma 0<=y<=x,0 quad "其他"). $
求 $integral.double_D f(x,y)dif x dif y$，其中 $D={(x,y)|x^2+y^2>=2x}$.
#ezexam.solution(show-number: false)[
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
（本题满分9分）设矩阵 $A=mat(1,-1,1;x,4,y;-3,-3,5)$，已知 $A$ 有三个线性无关的特征向量，$lambda=2$ 是 $A$ 的二重特征值.试求可逆矩阵 $P$，使得 $P^(-1)A P$ 为对角形矩阵.
#ezexam.solution(show-number: false)[
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


]

#ezexam.question(label: n => [十一、])[
（本题满分8分）设二维随机变量 $(X,Y)$ 的密度函数为
$ f(x,y)=frac(1,2)[phi_1(x,y)+phi_2(x,y)], $
其中 $phi_1(x,y)$ 和 $phi_2(x,y)$ 都是二维正态密度函数，且它们对应的二维随机变量的相关系数分别为 $frac(1,3)$ 和 $-frac(1,3)$，它们的边缘密度函数所对应的随机变量的数学期望都是零，方差都是1.

（1）求随机变量 $X$ 和 $Y$ 的密度函数 $f_1(x)$ 和 $f_2(y)$，及 $X$ 和 $Y$ 的相关系数 $rho$（可以直接利用二维正态密度的性质）.

（2）问 $X$ 和 $Y$ 是否独立？为什么？
#ezexam.solution(show-number: false)[
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
]


]

#ezexam.question(label: n => [十二、])[
（本题满分8分）设 $A,B$ 是二随机事件；随机变量
$ X=cases(1 quad "若" A "出现",-1 quad "若" A "不出现"),quad Y=cases(1 quad "若" B "出现",-1 quad "若" B "不出现"), $
试证明随机变量 $X$ 和 $Y$ 不相关的充分必要条件是 $A$ 与 $B$ 相互独立.
#ezexam.solution(show-number: false)[
记 $P(A)=p_1,P(B)=p_2,P(A B)=p_(12)$.由数学期望的定义，可见
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
