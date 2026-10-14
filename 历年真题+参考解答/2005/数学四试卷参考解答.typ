#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2005, subject: "四", title: "2005年全国硕士研究生入学统一考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2005 数学四试卷参考解答

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
*解法1* 利用行列式性质，依次从第三列减第二列、第二列减第一列，得
$ det B=det(alpha_1+alpha_2+alpha_3,alpha_2+3alpha_3,alpha_2+5alpha_3) \
=det(alpha_1+alpha_2+alpha_3,alpha_2+3alpha_3,2alpha_3) \
=2det(alpha_1+alpha_2+alpha_3,alpha_2,alpha_3)=2det A=2. $
*解法2* 利用矩阵运算，
$ B=(alpha_1,alpha_2,alpha_3)mat(1,1,1;1,2,3;1,4,9)=A mat(1,1,1;1,2,3;1,4,9). $
所以 $det B=det A dot mat(delim:"|",1,1,1;1,2,3;1,4,9)=2det A=2$.
*注* 两种方法均要求熟练掌握行列式计算或矩阵运算.
]

#answer("6.")[
*分析* 考查离散型随机变量的概率分布与全概率公式.
*解* $ P\{Y=2\}=sum_(i=2)^4 P\{X=i\}P\{Y=2|X=i\}=sum_(i=2)^4 frac(1,4)frac(1,i)=frac(13,48). $
*典型错误* 不理解由随机变量表达的事件，因而不会使用概率公式计算.
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
*分析* 考查反常积分敛散性，可以直接按定义计算.
*解* 由 $1/(x(x+1))=1/x-1/(x+1)$，得
$ integral_1^infinity frac(dif x,x(x+1))=lim_(b->infinity)lr([ln frac(x,x+1)])|_1^b=ln 2. $
而
$ integral_0^1 frac(dif x,x(x+1))=lim_(epsilon->0^+)lr([ln frac(x,x+1)])|_epsilon^1=+infinity. $
所以前者收敛，后者发散，选 D.
*典型错误* 将第一积分拆成两个分别发散的积分，再由此判断原积分发散. 两个发散积分的差不能这样计算.
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
*分析* 考查矩阵基本运算与逆矩阵的定义.
*解* 由 $B=E+A B$ 得 $(E-A)B=E$，故 $(E-A)^(-1)=B$. 又由 $C=A+C A$ 得 $C(E-A)=A$，所以 $C=A B$. 因而 $B-C=B-A B=E$，选 A.
]

#answer("13.")[
*分析* 利用二维离散分布计算事件概率，再使用事件独立性的定义.
*解* 由独立性，
$ P{X=0,X+Y=1}=P{X=0}P{X+Y=1}. $
其中 $P{X=0,X+Y=1}=a$，$P{X=0}=0.4+a$，$P{X+Y=1}=a+b$，所以 $a=(0.4+a)(a+b)$.
又 $0.4+a+b+0.1=1$，即 $a+b=0.5$，从而 $a=0.4,b=0.1$，选 D.
*典型错误* 从概率分布表计算相关事件概率时出错，或未利用各概率之和为1.
]

#answer("14.")[
*分析* 运用独立同分布随机变量序列的中心极限定理，并注意指数分布的均值与方差.
*解* 设独立同分布随机变量满足 $E X_i=mu,D X_i=sigma^2>0$，则对任意实数 $x$，
$ lim_(n->infinity)P{frac(sum_(i=1)^n X_i-n mu,sigma sqrt(n))<=x}=Phi(x). $
本题 $mu=1/lambda,sigma^2=1/lambda^2$，代入即
$ lim_(n->infinity)P{frac(lambda sum_(i=1)^n X_i-n,sqrt(n))<=x}=Phi(x), $
故选 C.
*典型错误* 混淆泊松分布与指数分布的数字特征，误认为均值和方差都为 $lambda$；在标准化分母中使用方差而非标准差；或在分子中只减去均值 $mu$，遗漏因子 $n$.
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
*分析* 求二元函数在有界闭区域上的最值，应同时考察内部驻点和边界上的取值.


解法1　由
$ cases(f'_x(x,y)=2x=0,f'_y(x,y)=-2y=0), $
可求得 $f(x,y)=x^2-y^2+2$ 在区域 $x^2+y^2/4<1$ 内的唯一驻点 $(0,0)$.

在椭圆 $x^2+y^2/4=1$ 上，
$ f(x,y)=x^2-(4-4x^2)+2=5x^2-2,quad -1<=x<=1, $
求得椭圆域 $D$ 上可能的最值 $f(plus.minus 1,0)=3,f(0,plus.minus 2)=-2$.

又由于 $f(0,0)=2$，因此 $f(x,y)$ 在椭圆域 $D$ 上的最大值为3，最小值为 $-2$.

解法2　由
$ cases(f'_x(x,y)=2x=0,f'_y(x,y)=-2y=0), $
可求得 $f(x,y)=x^2-y^2+2$ 在区域 $x^2+y^2/4<1$ 内的唯一驻点 $(0,0)$. 又由于
$ A=f''_(x x)(0,0)=2,B=f''_(x y)(0,0)=0, $
$ C=f''_(y y)(0,0)=-2,B^2-A C=4>0, $
因此 $(0,0)$ 不是极值点，$f(x,y)$ 在 $D$ 上的最大值与最小值在椭圆 $x^2+y^2/4=1$ 上取得.

在椭圆 $x^2+y^2/4=1$ 上，
$ f(x,y)=x^2-(4-4x^2)+2=5x^2-2,quad -1<=x<=1. $
记 $g(x)=5x^2-2 (-1<=x<=1)$，其最大值为 $g(plus.minus 1)=3$，最小值为 $g(0)=-2$.

因此 $f(x,y)$ 在椭圆域 $D$ 上的最大值为3，最小值为 $-2$.

解法3　在区域 $x^2+y^2/4<1$ 内同解法2. 在椭圆 $x^2+y^2/4=1$ 上，用拉格朗日乘数法求最大值与最小值.

设 $L=x^2-y^2+2+lambda(x^2+y^2/4-1)$，由
$ cases(L'_x=2x+2lambda x=0,L'_y=-2y+lambda/2 y=0,L'_lambda=x^2+y^2/4-1=0), $
求得4个可能的极值点 $M_1(0,2),M_2(0,-2),M_3(1,0)$ 和 $M_4(-1,0)$.

又 $f(M_1)=-2,f(M_2)=-2,f(M_3)=3,f(M_4)=3$，得 $f(x,y)$ 在 $D$ 上的最大值为3，最小值为 $-2$.


*典型错误* 只用乘数法考虑边界，遗漏内部驻点；或没有说明理由就认定最值出现在椭圆顶点.
*注* 本题还可以直接估计：在 $D$ 上 $0<=x^2<=1,0<=y^2<=4$，故 $-2<=x^2-y^2+2<=3$. 两端分别在 $(0,plus.minus 2)$ 与 $(plus.minus 1,0)$ 取得. 这种方法依赖本题函数的特殊形式，使用时仍应说明界与等号条件.
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
*分析* 由题设求 $B$，利用 $A$ 与 $B$ 相似求特征值；先将 $B$ 对角化，再通过相似变换求 $A$ 的对角化矩阵.


（Ⅰ）由题设条件，有
$ A(alpha_1,alpha_2,alpha_3)=(alpha_1,alpha_2,alpha_3)mat(1,0,0;1,2,2;1,1,3), $
可知 $B=mat(1,0,0;1,2,2;1,1,3)$.

（Ⅱ）因为 $alpha_1,alpha_2,alpha_3$ 是线性无关的三维列向量，可知矩阵 $C=(alpha_1,alpha_2,alpha_3)$ 可逆，所以 $C^(-1)A C=B$，即矩阵 $A$ 与 $B$ 相似. 由此可得矩阵 $A$ 与 $B$ 有相同的特征值.

由
$ |lambda E-B|=mat(delim:"|",lambda-1,0,0;-1,lambda-2,-2;-1,-1,lambda-3)=(lambda-1)^2(lambda-4)=0, $
得知矩阵 $B$ 的特征值，也即矩阵 $A$ 的特征值 $lambda_1=lambda_2=1,lambda_3=4$.

（Ⅲ）对应于 $lambda_1=lambda_2=1$，解齐次线性方程组 $(E-B)X=bold(0)$，得基础解系 $xi_1=(-1,1,0)^T,xi_2=(-2,0,1)^T$；对应于 $lambda_3=4$，解齐次线性方程组 $(4E-B)X=bold(0)$，得基础解系 $xi_3=(0,1,1)^T$.

令矩阵 $Q=(xi_1,xi_2,xi_3)=mat(-1,-2,0;1,0,1;0,1,1)$，则 $Q^(-1)B Q=mat(1,0,0;0,1,0;0,0,4)$.

因 $Q^(-1)B Q=Q^(-1)C^(-1)A C Q=(C Q)^(-1)A(C Q)$，记矩阵
$ P=C Q=(alpha_1,alpha_2,alpha_3)mat(-1,-2,0;1,0,1;0,1,1) \
=(-alpha_1+alpha_2,-2alpha_1+alpha_3,alpha_2+alpha_3), $
故 $P$ 即为所求的可逆矩阵.


*解法2* （Ⅰ）（Ⅱ）同上. （Ⅲ）直接由题设可得
$ A(alpha_1-alpha_2)=alpha_1-alpha_2,quad A(2alpha_1-alpha_3)=2alpha_1-alpha_3, $
$ A(alpha_2+alpha_3)=4(alpha_2+alpha_3). $
前两个向量属于特征值1且线性无关，第三个属于不同的特征值4，因此三个向量线性无关. 故 $P=(alpha_1-alpha_2,2alpha_1-alpha_3,alpha_2+alpha_3)$ 可逆，且 $P^(-1)A P=op("diag")(1,1,4)$.
*典型错误* 将 $B$ 误写为正确矩阵的转置；仅将 $B$ 对角化，没有求出对角化 $A$ 的矩阵；使用直接构造法时，没有说明构造的 $P$ 可逆.
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
*分析* 使用方差、协方差的基本性质；第三问利用独立正态变量的线性组合仍正态及零均值正态分布的对称性.


解　（Ⅰ）
$ D Y_i=D(X_i-overline(X))=D[(1-1/n)X_i-1/n sum_(k=1,k!=i)^n X_k]=(n-1)/n quad (i=1,2,dots,n). $
（Ⅱ）
$ op("Cov")(Y_1,Y_n)&=E(Y_1-E Y_1)(Y_n-E Y_n) \
&=E(X_1-overline(X))(X_n-overline(X)) \
&=E(X_1 X_n)+E(overline(X)^2)-E(X_1 overline(X))-E(X_n overline(X)) \
&=E X_1 E X_n+D overline(X)-1/n E(X_1^2)-1/n sum_(k=2)^n E(X_1 X_k) \
&quad-1/n E(X_n^2)-1/n sum_(k=1)^(n-1)E(X_k X_n)=-1/n. $
（Ⅲ）$Y_1+Y_n=X_1-overline(X)+X_n-overline(X)=(n-2)/n X_1-2/n sum_(i=2)^(n-1)X_i+(n-2)/n X_n$.

上式是相互独立的正态随机变量的线性组合，所以 $Y_1+Y_n$ 服从正态分布. 由于 $E(Y_1+Y_n)=0$，故 $P{Y_1+Y_n<=0}=1/2$.


*典型错误* 误认为 $X_i$ 与 $overline(X)$ 独立；在每一步都展开样本均值，增加计算复杂度而出错；第三问绕道求联合密度，既繁琐，又容易遗漏证明二维正态性.
]

