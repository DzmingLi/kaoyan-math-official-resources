#import "../template.typ": exam
#show: exam.with(year: 2000, subject: "三", title: "2000年全国硕士研究生入学考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)


= 一、填空题（本题共5小题，每小题3分，满分15分）
#ezexam.counter-question.step()

（1）设 $z=f(x y,frac(x,y))+g(frac(y,x))$，其中 $f,g$ 均可微，则 $frac(partial z,partial x)=$ #fillin(len: 3em)[].

（2）$integral_1^(+infinity)frac(dif x,e^x+e^(2-x))=$ #fillin(len: 3em)[].

（3）若四阶矩阵 $A$ 与 $B$ 相似，矩阵 $A$ 的特征值为 $frac(1,2),frac(1,3),frac(1,4),frac(1,5)$，则行列式 $|B^(-1)-E|=$ #fillin(len: 3em)[].

（4）设随机变量 $X$ 的概率密度为
$ f(x)=cases(frac(1,3) quad "若" x in [0,1],frac(2,9) quad "若" x in [3,6],0 quad "其他"). $
若 $k$ 使得 $P{X>=k}=frac(2,3)$，则 $k$ 的取值范围是 #fillin(len: 3em)[].

（5）设随机变量 $X$ 在区间 $[-1,2]$ 上服从均匀分布；随机变量
$ Y=cases(1 quad "若" X>0,0 quad "若" X=0,-1 quad "若" X<0), $
则方差 $D Y=$ #fillin(len: 3em)[].

= 二、选择题（本题共5小题，每小题3分，满分15分）
#ezexam.counter-question.step()

（1）设对任意的 $x$，总有 $phi(x)<=f(x)<=g(x)$，且 $lim_(x->infinity)[g(x)-phi(x)]=0$，则 $lim_(x->infinity)f(x)$（　）.
#choices[存在且等于零.][存在但不一定为零.][一定不存在.][不一定存在.]

（2）设函数 $f(x)$ 在点 $x=a$ 处可导，则函数 $|f(x)|$ 在点 $x=a$ 处不可导的充分条件是（　）.
#choices[$f(a)=0$ 且 $f'(a)=0$.][$f(a)=0$ 且 $f'(a)!=0$.][$f(a)>0$ 且 $f'(a)>0$.][$f(a)<0$ 且 $f'(a)<0$.]

（3）设 $alpha_1,alpha_2,alpha_3$ 是四元非齐次线性方程组 $A X=b$ 的三个解向量，且秩$(A)=3$，$alpha_1=(1,2,3,4)^T$，$alpha_2+alpha_3=(0,1,2,3)^T$，$c$ 表示任意常数，则线性方程组 $A X=b$ 的通解 $X=$（　）.
#choices[$mat(1;2;3;4)+c mat(1;1;1;1)$.][$mat(1;2;3;4)+c mat(0;1;2;3)$.][$mat(1;2;3;4)+c mat(2;3;4;5)$.][$mat(1;2;3;4)+c mat(3;4;5;6)$.]

（4）设 $A$ 为 $n$ 阶实矩阵，$A^T$ 是 $A$ 的转置矩阵，则对于线性方程组（Ⅰ）：$A X=O$ 和（Ⅱ）：$A^T A X=O$，必有（　）.
#choices[（Ⅱ）的解是（Ⅰ）的解，（Ⅰ）的解也是（Ⅱ）的解.][（Ⅱ）的解是（Ⅰ）的解，但（Ⅰ）的解不是（Ⅱ）的解.][（Ⅰ）的解不是（Ⅱ）的解，（Ⅱ）的解也不是（Ⅰ）的解.][（Ⅰ）的解是（Ⅱ）的解，但（Ⅱ）的解不是（Ⅰ）的解.]

（5）在电炉上安装了4个温控器，其显示温度的误差是随机的.在使用过程中，只要有两个温控器显示的温度不低于临界温度 $t_0$，电炉就断电.以 $E$ 表示事件“电炉断电”，而 $T_((1))<=T_((2))<=T_((3))<=T_((4))$ 为4个温控器显示的按递增顺序排列的温度值，则事件 $E$ 等于（　）.
#choices[${T_((1))>=t_0}$.][${T_((2))>=t_0}$.][${T_((3))>=t_0}$.][${T_((4))>=t_0}$.]

#ezexam.question(label: n => [三、])[
（本题满分6分）求微分方程 $y''-2y'-e^(2x)=0$ 满足条件 $y(0)=1,y'(0)=1$ 的解.


]

#ezexam.question(label: n => [四、])[
（本题满分6分）计算二重积分 $integral.double_D frac(sqrt(x^2+y^2),sqrt(4a^2-x^2-y^2))dif sigma$，其中 $D$ 是由曲线 $y=-a+sqrt(a^2-x^2)$（$a>0$）和直线 $y=-x$ 围成的区域.


]

#ezexam.question(label: n => [五、])[
（本题满分6分）假设某企业在两个相互分割的市场上出售同一种产品，两个市场的需求函数分别是
$ p_1=18-2Q_1,quad p_2=12-Q_2, $
其中 $p_1$ 和 $p_2$ 分别表示该产品在两个市场的价格（单位：万元/吨），$Q_1$ 和 $Q_2$ 分别表示该产品在两个市场的销售量（即需求量，单位：吨），并且该企业生产这种产品的总成本函数是
$ C=2Q+5, $
其中 $Q$ 表示该产品在两个市场的销售总量，即 $Q=Q_1+Q_2$.

（1）如果该企业实行价格差别策略，试确定两个市场上该产品的销售量和价格，使该企业获得最大利润；

（2）如果该企业实行价格无差别策略，试确定两个市场上该产品的销售量及其统一的价格，使该企业的总利润最大化；并比较两种价格策略下的总利润大小.


]

#ezexam.question(label: n => [六、])[
（本题满分7分）求函数 $y=(x-1)e^(pi/2+arctan x)$ 的单调区间和极值，并求该函数图形的渐近线.


]

#ezexam.question(label: n => [七、])[
（本题满分6分）设 $I_n=integral_0^(pi/4)sin^n x cos x dif x$，$n=0,1,2,dots$，求 $sum_(n=0)^infinity I_n$.


]

#ezexam.question(label: n => [八、])[
（本题满分6分）设函数 $f(x)$ 在 $[0,pi]$ 上连续，且 $integral_0^pi f(x)dif x=0$，$integral_0^pi f(x)cos x dif x=0$.试证明：在 $(0,pi)$ 内至少存在两个不同的点 $xi_1,xi_2$，使 $f(xi_1)=f(xi_2)=0$.


]

#ezexam.question(label: n => [九、])[
（本题满分8分）设向量组 $alpha_1=(a,2,10)^T,alpha_2=(-2,1,5)^T,alpha_3=(-1,1,4)^T,beta=(1,b,c)^T$.试问：当 $a,b,c$ 满足什么条件时，

（1）$beta$ 可由 $alpha_1,alpha_2,alpha_3$ 线性表出，且表示唯一？

（2）$beta$ 不能由 $alpha_1,alpha_2,alpha_3$ 线性表出？

（3）$beta$ 可由 $alpha_1,alpha_2,alpha_3$ 线性表出，但表示不唯一？并求出一般表达式.


]

#ezexam.question(label: n => [十、])[
（本题满分9分）设有 $n$ 元实二次型
$ f(x_1,x_2,dots,x_n)=(x_1+a_1 x_2)^2+(x_2+a_2 x_3)^2+dots+(x_(n-1)+a_(n-1)x_n)^2+(x_n+a_n x_1)^2, $
其中 $a_i$（$i=1,2,dots,n$）为实数.试问：当 $a_1,a_2,dots,a_n$ 满足何种条件时，二次型 $f(x_1,x_2,dots,x_n)$ 为正定二次型.


]

#ezexam.question(label: n => [十一、])[
（本题满分8分）假设0.50，1.25，0.80，2.00是来自总体 $X$ 的简单随机样本值.已知 $Y=ln X$ 服从正态分布 $N(mu,1)$.

（1）求 $X$ 的数学期望 $E X$（记 $E X$ 为 $b$）；

（2）求 $mu$ 的置信度为0.95的置信区间；

（3）利用上述结果求 $b$ 的置信度为0.95的置信区间.


]

#ezexam.question(label: n => [十二、])[
（本题满分8分）设 $A,B$ 是二随机事件；随机变量
$ X=cases(1 quad "若" A "出现",-1 quad "若" A "不出现"),quad Y=cases(1 quad "若" B "出现",-1 quad "若" B "不出现"), $
试证明随机变量 $X$ 和 $Y$ 不相关的充分必要条件是 $A$ 与 $B$ 相互独立.

]
