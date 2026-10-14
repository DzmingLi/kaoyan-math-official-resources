#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2005, subject: "三", title: "2005年全国硕士研究生入学统一考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2005 数学三试卷参考解答

= 一、填空题

#answer("1.")[
*分析* 利用等价无穷小替换或重要极限求值.
*解* 当 $x->infinity$ 时，$sin(2x/(x^2+1))~2x/(x^2+1)$，所以
$ lim_(x->infinity)x sin frac(2x,x^2+1)=lim_(x->infinity)frac(2x^2,x^2+1)=2. $
]

#answer("2.")[
*分析* 考查一阶微分方程的初值问题.
*解* 方程写为 $x dif y+y dif x=0$，即 $dif(x y)=0$，通解为 $x y=C$. 代入 $y(1)=2$ 得 $C=2$，所以特解为 $x y=2$.
*典型错误* 分离变量积分后写出 $y=plus.minus C/abs(x)$，代入初值时未分别确定正负分支，而误保留两个符号. 在包含初值点的区间 $x>0$ 上，应取 $y=2/x$.
]

#answer("3.")[
*分析* 考查偏导数、全微分的概念与计算.
*解* $ frac(partial z,partial x)=e^(x+y)+x e^(x+y)+ln(1+y),quad frac(partial z,partial y)=x e^(x+y)+frac(x+1,1+y). $
因此 $(partial z/partial x)|_((1,0))=2e$，$(partial z/partial y)|_((1,0))=e+2$，所以 $dif z|_((1,0))=2e dif x+(e+2)dif y$.
*典型错误* 把全微分误记成两偏导数相加，答案写成 $3e+2$.
]

#answer("4.")[
*分析* 行向量组线性相关当且仅当所成矩阵秩小于4，可用初等行变换求秩.
*解* 设
$ A=mat(2,1,1,1;2,1,a,a;3,2,1,a;4,3,2,1)->mat(1,1/2,1/2,1/2;0,1,0,-1;0,0,1,2-2a;0,0,0,(a-1)(2a-1)). $
由 $r(A)<4$ 得 $(a-1)(2a-1)=0$，又 $a!=1$，所以 $a=1/2$.
*典型错误* 忽略 $a!=1$，误填1或1/2.
]

#answer("5.")[
*分析* 考查离散型随机变量的概率分布与全概率公式.
*解* $ P\{Y=2\}=sum_(i=2)^4 P\{X=i\}P\{Y=2|X=i\}=sum_(i=2)^4 frac(1,4)frac(1,i)=frac(13,48). $
*典型错误* 不理解由随机变量表达的事件，因而不会使用概率公式计算.
]

#answer("6.")[
*分析* 考查二维离散型随机变量的概率分布、事件概率及事件独立的概念.
*解* 由事件独立，
$ P\{X=0,X+Y=1\}=P\{X=0\}P\{X+Y=1\}. $
其中左侧为 $a$，右侧两个因子分别为 $0.4+a$ 和 $a+b$，所以 $a=(0.4+a)(a+b)$. 又由分布律的归一性，$0.4+a+b+0.1=1$，即 $a+b=0.5$. 解得 $a=0.4,b=0.1$.
*典型错误* 不会利用分布律的基本性质，或计算有关事件概率时出现误算.
]

= 二、选择题

#answer("7.")[
*分析* 用导数研究变化形态与零点存在性.
*解* $f'(x)=6x^2-18x+12=6(x-2)(x-1)$. 当 $x<1$ 与 $x>2$ 时函数递增，在 $(1,2)$ 递减；$f(1)=5-a,f(2)=4-a$.
取 $a=4$，有 $f(1)=1>0$，而 $lim_(x->-infinity)f(x)=-infinity$，故 $(-infinity,1)$ 内有且仅有一个零点. 此时 $f(2)=0$，其余 $x>1$ 处函数为正，因此恰有两个不同零点.
当 $a=2$ 时，两个极值均正，只在 $(-infinity,1)$ 内有一个零点. 当 $a=6$ 或8时，两极值均负，只在 $(2,+infinity)$ 有一个零点. 所以选 B.
]

#answer("8.")[
*分析* 三个积分区域相同，由被积函数大小比较积分.
*解* 在 $D$ 上，$1>=sqrt(x^2+y^2)>=x^2+y^2>=(x^2+y^2)^2>=0$. 又 $cos u$ 在 $[0,1]$ 上递减，故
$ cos sqrt(x^2+y^2)<=cos(x^2+y^2)<=cos((x^2+y^2)^2). $
在区域内部除少数点外不等号严格，故 $I_1<I_2<I_3$，选 A.
*典型错误* 没注意0至1之间的数取不同幂时的大小关系，或忘记余弦函数在此区间递减.
]

#answer("9.")[
*分析* 考查数项级数收敛概念及性质.
*解* 收敛级数任意加括号后仍收敛，所以
$ (a_1-a_2)+(a_3-a_4)+dots+(a_(2n-1)-a_(2n))+dots $
收敛，选 D.
又原交错级数收敛，故 $a_n->0$. 说明 C不成立：设配对正项级数的前 $n$ 项和为 $S_n$，原正项级数的前 $n$ 项和为 $sigma_n$，则 $sigma_(2n)=S_n,sigma_(2n-1)=S_n-a_(2n)$. 若 $S_n$ 有极限，则奇偶部分和趋于同一极限，原正项级数就收敛，与题设矛盾.
最后，奇数项与偶数项级数均发散. 若偶数项级数收敛，则
$ sum a_(2n-1)=sum[(a_(2n-1)-a_(2n))+a_(2n)] $
也收敛，从而配对正项级数收敛，矛盾. 若奇数项收敛同理. 所以 A、B也不成立.
]

#answer("10.")[
*分析* 用极值的必要条件与二阶导数判别法判断.
*解* $f'(x)=x cos x$，故 $f'(0)=f'(pi/2)=0$. 又 $f''(x)=cos x-x sin x$，所以 $f''(0)=1>0,f''(pi/2)=-pi/2<0$. 因而零点处是极小值，$pi/2$ 处是极大值，选 B.
*典型错误* 把二阶导数判别法中的极大、极小条件记反.
]

#answer("11.")[
*分析* 考查连续函数性质及拉格朗日中值定理的应用.
*解* 取 $f(x)=ln x$，导数 $1/x$ 在 $(0,1)$ 连续而函数无界，排除 A、B；取 $f(x)=sqrt(x)$，函数有界而导数 $1/(2sqrt(x))$ 无界，排除 D.
证明 C：固定 $x_0 in (0,1)$，任取 $x in (0,1)$，在二者之间应用中值定理，
$ f(x)-f(x_0)=f'(xi)(x-x_0). $
若 $abs(f')<=M$，则 $abs(f(x))<=abs(f(x_0))+M abs(x-x_0)<=abs(f(x_0))+M$，所以有界，选 C.
*典型错误* 把闭区间连续函数必有界的性质错误地用于开区间.
]

#answer("12.")[
*分析* 考查矩阵与伴随矩阵的关系及矩阵乘法.
*解* 由 $A A^*=A^* A=det A dot E$ 及 $A^*=A^"T"$，得 $A A^"T"=A^"T" A=det A dot E$. 两边取行列式，$(det A)^2=(det A)^3$，故 $det A=0$ 或1.
又乘积的第一行第一列元素为 $a_(11)^2+a_(12)^2+a_(13)^2=3a_(11)^2!=0$，故 $det A!=0$，只能为1. 因而 $3a_(11)^2=1$，由正数条件得 $a_(11)=sqrt(3)/3$，选 A.
]

#answer("13.")[
*分析* 由 $A(alpha_1+alpha_2)=lambda_1 alpha_1+lambda_2 alpha_2$，若 $lambda_2=0$，两向量必相关；$lambda_1=0$ 时两向量无关，但这只是充分条件，不能选 A.
*解法1* 设 $k_1 alpha_1+k_2 A(alpha_1+alpha_2)=0$，则
$ (k_1+lambda_1 k_2)alpha_1+lambda_2 k_2 alpha_2=0. $
对应不同特征值的特征向量线性无关，故
$ cases(k_1+lambda_1 k_2=0,lambda_2 k_2=0). $
两向量无关当且仅当此齐次方程组只有零解，即 $mat(delim:"|",1,lambda_1;0,lambda_2)=lambda_2!=0$，选 D.

*解法2* 因为
$ (alpha_1,A(alpha_1+alpha_2))=(alpha_1,alpha_2)mat(1,lambda_1;0,lambda_2), $
且 $alpha_1,alpha_2$ 线性无关，故两向量无关当且仅当右侧二阶矩阵行列式非零，仍得 $lambda_2!=0$.
*典型错误* 将充分条件 $lambda_1=0$ 当作充分必要条件.
]

#answer("14.")[
*分析* 考查方差未知的正态总体均值的置信区间.
*解* $t_alpha$ 表示上侧分位数，置信度 $1-alpha$ 的区间为
$ (overline(x)-frac(s,sqrt(n))t_(alpha/2)(n-1),overline(x)+frac(s,sqrt(n))t_(alpha/2)(n-1)). $
代入 $n=16,overline(x)=20,s=1,alpha=0.10$，选 C.
*注* 若将 $t_alpha$ 理解成双侧分位数会选 D，原书说明此次阅卷中 D亦未判错；但此后同类题的 $t_alpha$ 均指单侧分位数，应注意统一约定.
*典型错误* 混淆均值与方差的置信区间，或混淆方差已知、未知两种情况下均值区间的公式.
]

= 三、解答题

#answer("15.")[
*分析* 将 $infinity-infinity$ 型化为 $0/0$ 或 $infinity/infinity$ 型，再用洛必达法则；也可结合等价无穷小替换.


$ lim_(x->0)((1+x)/(1-e^(-x))-1/x) \
=lim_(x->0)(x+x^2-1+e^(-x))/(x(1-e^(-x))) \
=lim_(x->0)(x+x^2-1+e^(-x))/x^2 \
=lim_(x->0)(1+2x-e^(-x))/(2x) \
=lim_(x->0)(2+e^(-x))/2=3/2. $


*解法2* 将原式直接通分，连续两次应用洛必达法则：
$ lim_(x->0)frac(x+x^2-1+e^(-x),x(1-e^(-x)))=lim_(x->0)frac(1+2x-e^(-x),1+(x-1)e^(-x))=lim_(x->0)frac(2+e^(-x),(2-x)e^(-x))=3/2. $
*典型错误* 在差式中直接作等价无穷小替换，把 $1/(1-e^(-x))$ 换成 $1/x$ 而得到1；或者在已经得到非未定式 $3/2$ 后仍继续使用洛必达法则，误得1/3.
]

#answer("16.")[
*分析* 对复合函数求偏导数，注意两个复合项的中间变量分别为 $y/x$ 与 $x/y$.


由已知条件可得
$ (partial g)/(partial x)=-y/x^2 f'(y/x)+f'(x/y), $
$ (partial^2 g)/(partial x^2)=(2y)/x^3 f'(y/x)+y^2/x^4 f''(y/x)+1/y f''(x/y), $
$ (partial g)/(partial y)=1/x f'(y/x)+f(x/y)-x/y f'(x/y), $
$ (partial^2 g)/(partial y^2)=1/x^2 f''(y/x)-x/y^2 f'(x/y)+x/y^2 f'(x/y)+x^2/y^3 f''(x/y) \
=1/x^2 f''(y/x)+x^2/y^3 f''(x/y), $
所以
$ x^2(partial^2 g)/(partial x^2)-y^2(partial^2 g)/(partial y^2) \
=(2y)/x f'(y/x)+y^2/x^2 f''(y/x)+x^2/y f''(x/y)-y^2/x^2 f''(y/x)-x^2/y f''(x/y) \
=(2y)/x f'(y/x). $


*典型错误* 将单变量函数 $f$ 误当成多变量函数，混用 $f_{u u}$、$f_{12}$ 或 $f_x$ 等记号；或求复合函数的二阶偏导时遗漏因子.
]

#answer("17.")[
*分析* 先根据 $x^2+y^2-1$ 的符号拆分积分区域，再分别计算两部分积分，可用极坐标或直角坐标.


解法1　将区域 $D$ 分成两个子区域：
$ D_1={(x,y)|x^2+y^2<=1,x>=0,y>=0}, $
$ D_2={(x,y)|x^2+y^2>=1,0<=x<=1,0<=y<=1}, $
则
$ integral.double_D |x^2+y^2-1|dif sigma=integral.double_(D_1)(1-x^2-y^2)dif sigma+integral.double_(D_2)(x^2+y^2-1)dif sigma. $
由于
$ integral.double_(D_1)(1-x^2-y^2)dif sigma=integral_0^(pi/2)dif theta integral_0^1(1-r^2)r dif r=pi/8, $
$ integral.double_(D_2)(x^2+y^2-1)dif sigma=integral.double_D(x^2+y^2-1)dif sigma-integral.double_(D_1)(x^2+y^2-1)dif sigma \
=integral_0^1 dif x integral_0^1(x^2+y^2-1)dif y-(-pi/8) \
=integral_0^1(x^2+1/3-1)dif x+pi/8 \
=lr([x^3/3-2/3 x])|_0^1+pi/8=-1/3+pi/8, $
故 $integral.double_D |x^2+y^2-1|dif sigma=pi/8-1/3+pi/8=pi/4-1/3$.

解法2　如下图所示，将 $D$ 分成 $D_1$ 与 $D_2$ 两部分.
#import "@preview/cetz:0.5.2": canvas, draw
#align(center,canvas({
 import draw: *
 line((0,0),(3.5,0),mark:(end:">"));line((0,0),(0,3.5),mark:(end:">"))
 line((0,3),(3,3),(3,0));arc((3,0),start:0deg,stop:90deg,radius:3)
 content((-.15,-.15),$O$);content((3,-.2),[1]);content((-.2,3),[1]);content((3.6,0),$x$);content((0,3.7),$y$)
 content((1.1,1.2),$D_1$);content((2.6,2.6),$D_2$);content((3.9,1.7),$x^2+y^2=1$);line((2.65,1.4),(3.2,1.7))
}))
$ integral.double_D|x^2+y^2-1|dif sigma=integral.double_(D_1)(1-x^2-y^2)dif sigma+integral.double_(D_2)(x^2+y^2-1)dif sigma. $
由于 $integral.double_(D_1)(1-x^2-y^2)dif sigma=integral_0^(pi/2)dif theta integral_0^1(1-r^2)r dif r=pi/8$，
$ integral.double_(D_2)(x^2+y^2-1)dif sigma=integral_0^1 dif x integral_(sqrt(1-x^2))^1(x^2+y^2-1)dif y \
=integral_0^1 lr([x^2 y+y^3/3-y])|_(sqrt(1-x^2))^1 dif x \
=integral_0^1[x^2-2/3+2/3(1-x^2)^(3/2)]dif x \
=integral_0^1(x^2-2/3)dif x+2/3 integral_0^1(1-x^2)^(3/2)dif x \
=-1/3+2/3 I, $
其中
$ I=integral_0^1(1-x^2)^(3/2)dif x=integral_0^(pi/2)cos^4 t dif t=3/4 dot 1/2 dot pi/2=(3pi)/16 $
（令 $x=sin t$）. 因此
$ integral.double_(D_2)(x^2+y^2-1)dif sigma=-1/3+2/3 dot (3pi)/16=pi/8-1/3, $
$ integral.double_D|x^2+y^2-1|dif sigma=pi/8+pi/8-1/3=pi/4-1/3. $


*典型错误* 没有根据被积函数符号分区；或者将两个子区域的积分结果分别列为答案，而没有把它们相加.
]

#answer("18.")[
*分析* 先拆成两个幂级数，其中一个是等比级数；对另一个乘以 $x$ 后逐项求导，再逐项积分求和函数. 最后单独检查 $x=0$.


设 $S(x)=sum_(n=1)^infinity(1/(2n+1)-1)x^(2n),S_1(x)=sum_(n=1)^infinity x^(2n)/(2n+1),S_2(x)=sum_(n=1)^infinity x^(2n)$，则 $S(x)=S_1(x)-S_2(x),x in (-1,1)$.

由于
$ S_2(x)=sum_(n=1)^infinity x^(2n)=x^2/(1-x^2), $
$ [x S_1(x)]'=sum_(n=1)^infinity x^(2n)=x^2/(1-x^2),quad x in (-1,1), $
因此 $x S_1(x)=integral_0^x t^2/(1-t^2)dif t=-x+1/2 ln((1+x)/(1-x))$.

又由于 $S_1(0)=0$，故
$ S_1(x)=cases(-1+1/(2x)ln((1+x)/(1-x)) & |x| in (0,1),0 & x=0), $
所以
$ S(x)=S_1(x)-S_2(x)=cases(1/(2x)ln((1+x)/(1-x))-1/(1-x^2) & |x| in (0,1),0 & x=0). $


*典型错误* 只写 $0<abs(x)<1$ 时的表达式，遗漏 $x=0$，使和函数答案不完整.
]

#answer("19.")[
*分析* 将积分上限改为变量，构造辅助函数并研究单调性；也可对第一项分部积分，再利用函数单调性与积分性质证明.


证法1　设
$ F(x)=integral_0^x g(t)f'(t)dif t+integral_0^1 f(t)g'(t)dif t-f(x)g(1),quad x in [0,1], $
则 $F(x)$ 在 $[0,1]$ 上的导数连续，并且
$ F'(x)=g(x)f'(x)-f'(x)g(1)=f'(x)[g(x)-g(1)]. $
由于 $x in [0,1]$ 时，$f'(x)>=0,g'(x)>=0$，因此 $F'(x)<=0$，即 $F(x)$ 在 $[0,1]$ 上单调递减.

注意到
$ F(1)=integral_0^1 g(t)f'(t)dif t+integral_0^1 f(t)g'(t)dif t-f(1)g(1), $
而
$ integral_0^1 g(t)f'(t)dif t=integral_0^1 g(t)dif f(t) \
=lr(g(t)f(t))|_0^1-integral_0^1 f(t)g'(t)dif t \
=f(1)g(1)-integral_0^1 f(t)g'(t)dif t, $
故 $F(1)=0$. 因此 $x in [0,1]$ 时，$F(x)>=0$，由此可得对任意 $a in [0,1]$，有
$ integral_0^a g(x)f'(x)dif x+integral_0^1 f(x)g'(x)dif x>=f(a)g(1). $

证法2　因为
$ integral_0^a g(x)f'(x)dif x=lr(g(x)f(x))|_0^a-integral_0^a f(x)g'(x)dif x \
=f(a)g(a)-integral_0^a f(x)g'(x)dif x, $
则
$ integral_0^a g(x)f'(x)dif x+integral_0^1 f(x)g'(x)dif x \
=f(a)g(a)-integral_0^a f(x)g'(x)dif x+integral_0^1 f(x)g'(x)dif x \
=f(a)g(a)+integral_a^1 f(x)g'(x)dif x. $
由于 $x in [0,1]$ 时，$f'(x)>=0$，因此 $f(x)$ 在 $[0,1]$ 上单调递增，$f(x)>=f(a),x in [a,1]$.

又由于 $x in [0,1]$ 时，$g'(x)>=0$，因此
$ f(x)g'(x)>=f(a)g'(x),quad x in [a,1], $
$ integral_a^1 f(x)g'(x)dif x>=integral_a^1 f(a)g'(x)dif x=f(a)[g(1)-g(a)], $
从而
$ integral_0^a g(x)f'(x)dif x+integral_0^1 f(x)g'(x)dif x
>=f(a)g(a)+f(a)[g(1)-g(a)]=f(a)g(1). $


*注* 证法2也可以使用积分中值定理. 因 $g'(x)>=0$，存在 $xi in [a,1]$ 使
$ integral_a^1 f(x)g'(x)dif x=f(xi)integral_a^1 g'(x)dif x=f(xi)[g(1)-g(a)]>=f(a)[g(1)-g(a)]. $
*典型错误* 未能构造辅助函数；计算 $F(1)$ 时未用分部积分得到零；或者对两项同时反复分部积分，不能推进证明.
]

#answer("20.")[
*分析* 方程组（ii）必有非零解，故同解条件要求（i）的秩小于3，先求 $a$，再将其基础解系代入（ii）确定 $b,c$，并验证两组解完全相同.


方程组（ii）的未知量个数大于方程的个数，故方程组（ii）有无穷多个解. 因为方程组（i）与（ii）同解，所以方程组（i）的系数矩阵的秩小于3.

对方程组（i）的系数矩阵施以初等行变换
$ mat(1,2,3;2,3,5;1,1,a)->mat(1,0,1;0,1,1;0,0,a-2), $
从而 $a=2$. 此时，方程组（i）的系数矩阵可化为
$ mat(1,2,3;2,3,5;1,1,2)->mat(1,0,1;0,1,1;0,0,0), $
故 $(-1,-1,1)^T$ 是方程组（i）的一个基础解系.

将 $x_1=-1,x_2=-1,x_3=1$ 代入方程组（ii）可得 $b=1,c=2$ 或 $b=0,c=1$.

当 $b=1,c=2$ 时，对方程组（ii）的系数矩阵施以初等行变换，有
$ mat(1,1,2;2,1,3)->mat(1,0,1;0,1,1), $
故方程组（i）与（ii）同解.

当 $b=0,c=1$ 时，方程组（ii）的系数矩阵可化为
$ mat(1,0,1;2,0,2)->mat(1,0,1;0,0,0), $
故方程组（i）与（ii）的解不相同. 综上所述，当 $a=2,b=1,c=2$ 时，方程组（i）与（ii）同解.


*典型错误* 把同解误认为有公共解；未排除 $b=0,c=1$；或者初等行变换及基础解系计算有误.
]

#answer("21.")[
*分析* 先求转置矩阵并作分块乘法，再利用合同保持正定性证明右下角分块正定.


（Ⅰ）因 $P^T=mat(E_m,O;-C^T A^(-1),E_n)$，有
$ P^T D P=mat(E_m,O;-C^T A^(-1),E_n)mat(A,C;C^T,B)mat(E_m,-A^(-1)C;O,E_n) \
=mat(A,C;O,B-C^T A^(-1)C)mat(E_m,-A^(-1)C;O,E_n) \
=mat(A,O;O,B-C^T A^(-1)C). $
（Ⅱ）矩阵 $B-C^T A^(-1)C$ 是正定矩阵.

由（Ⅰ）的结果可知，矩阵 $D$ 合同于矩阵 $M=mat(A,O;O,B-C^T A^(-1)C)$. 又 $D$ 为正定矩阵，可知矩阵 $M$ 为正定矩阵.

因矩阵 $M$ 为对称矩阵，故 $B-C^T A^(-1)C$ 为对称矩阵. 对 $X=underbrace((0,0,dots,0),m)^T$ 及任意的 $Y=(y_1,y_2,dots,y_n)^T!=bold(0)$，有
$ (X^T,Y^T)mat(A,O;O,B-C^T A^(-1)C)mat(X;Y)>0, $
即 $Y^T(B-C^T A^(-1)C)Y>0$. 故 $B-C^T A^(-1)C$ 为正定矩阵.


*解法2* （Ⅰ）同上. （Ⅱ）由计算结果，$D$ 合同于 $M=mat(A,O;O,B-C^T A^(-1)C)$，故 $M$ 正定，其各阶顺序主子式均大于零. 因 $A$ 正定，有 $det A>0$，而 $M$ 的第 $m+k$ 阶顺序主子式等于 $det A$ 与 $B-C^T A^(-1)C$ 的第 $k$ 阶顺序主子式之积，因此后一矩阵的各阶顺序主子式均为正. 又该矩阵对称，故正定.
*典型错误* 转置分块矩阵时没有交换非对角分块的位置；没有说明 $B-C^T A^(-1)C$ 对称；或者仅由其行列式大于零就判定正定.
]

#answer("22.")[
*分析* 分别考查边缘密度、随机变量函数的分布、二维事件概率及条件概率，各问可分别求解.


解　（Ⅰ）当 $0<x<1$ 时，$f_X(x)=integral_(-infinity)^(+infinity)f(x,y)dif y=integral_0^(2x)dif y=2x$；当 $x<=0$ 或 $x>=1$ 时，$f_X(x)=0$，即 $f_X(x)=cases(2x & 0<x<1,0 & #text[其他])$.
当 $0<y<2$ 时，$f_Y(y)=integral_(-infinity)^(+infinity)f(x,y)dif x=integral_(y/2)^1 dif x=1-y/2$；当 $y<=0$ 或 $y>=2$ 时，$f_Y(y)=0$，即 $f_Y(y)=cases(1-y/2 & 0<y<2,0 & #text[其他])$.

（Ⅱ）解法1　当 $z<=0$ 时，$F_Z(z)=0$；当 $0<z<2$ 时，
$ F_Z(z)=P{2X-Y<=z}=integral.double_(2x-y<=z)f(x,y)dif x dif y=z-z^2/4; $
当 $z>=2$ 时，$F_Z(z)=1$，所以 $f_Z(z)=cases(1-z/2 & 0<z<2,0 & #text[其他])$.
解法2　$f_Z(z)=integral_(-infinity)^(+infinity)f(x,2x-z)dif x$，其中 $f(x,2x-z)=cases(1 & 0<x<1,0<z<2x,0 & #text[其他])$.
当 $z<=0$ 或 $z>=2$ 时，$f_Z(z)=0$；当 $0<z<2$ 时，$f_Z(z)=integral_(z/2)^1 dif x=1-z/2$，即 $f_Z(z)=cases(1-z/2 & 0<z<2,0 & #text[其他])$.
（Ⅲ）$P{Y<=1/2 | X<=1/2}=(P{X<=1/2,Y<=1/2})/(P{X<=1/2})=(3/16)/(1/4)=3/4$.


*典型错误* 边缘密度没有写成分段函数；求 $Z$ 的密度时未正确确定积分范围；不理解条件事件而没有使用条件概率定义.
]

#answer("23.")[
*分析* 运用简单随机样本、样本均值和无偏估计的概念，以及方差、协方差的基本性质.


（Ⅰ）
$ D Y_i=D(X_i-overline(X))=D[(1-1/n)X_i-1/n sum_(k!=i)X_k]=(n-1)/n sigma^2,quad i=1,2,dots,n. $
（Ⅱ）
$ op("Cov")(Y_1,Y_n)&=E(Y_1-E Y_1)(Y_n-E Y_n) \
&=E(X_1-overline(X))(X_n-overline(X)) \
&=E(X_1 X_n)+E(overline(X)^2)-E(X_1 overline(X))-E(X_n overline(X)) \
&=E X_1 E X_n+D overline(X)-1/n E(X_1^2)-1/n sum_(i=2)^n E(X_1 X_i) \
&quad -1/n E(X_n^2)-1/n sum_(i=1)^(n-1)E(X_i X_n)=-1/n sigma^2. $
（Ⅲ）
$ E[c(Y_1+Y_n)^2]&=c D(Y_1+Y_n) \
&=c[D Y_1+D Y_n+2op("Cov")(Y_1,Y_n)] \
&=c((n-1)/n+(n-1)/n-2/n)sigma^2 \
&=(2(n-2))/n c sigma^2=sigma^2, $
故 $c=n/(2(n-2))$.


*典型错误* 误认为 $X_i$ 与 $overline(X)$ 独立，从而误写 $D(X_i-overline(X))=D X_i+D overline(X)$ 或 $E(X_i overline(X))=E X_i E overline(X)$；误用 $D(Y_1+Y_n)=D Y_1+D Y_n$；或者在每一步都展开样本均值，增加运算复杂度而出错.
]

