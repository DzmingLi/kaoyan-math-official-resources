#import "../template.typ": exam, answer
#show: exam.with(year: 1990, subject: "二", title: "1990年全国硕士研究生入学统一考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 1990 数学二试卷参考解答

= 一、填空题

#answer("（1）")[
$ x|_(t=pi/6)=(3sqrt(3))/8, quad y|_(t=pi/6)=1/8, $
$ (dif y)/(dif x)=((sin^3 t)')/((cos^3 t)')=-tan t. $
令 $t=pi/6$，得切线斜率 $k=-1/sqrt(3)$，因此法线斜率 $k_1=sqrt(3)$，故法线方程为
$ y-1/8=sqrt(3)(x-3/8 sqrt(3)), $
即 $y=sqrt(3)x-1$.
]

#answer("（2）")[
由求导公式，得
$ y'=e^(tan(1/x))sec^2(1/x)(-1/x^2)sin(1/x)+e^(tan(1/x))cos(1/x)(-1/x^2) $
$ =-1/x^2 e^(tan(1/x))(tan(1/x)sec(1/x)+cos(1/x)). $
]

#answer("（3）")[
令 $sqrt(1-x)=t$，则 $x=1-t^2,dif x=-2t dif t$.
$ "原式"=integral_1^0(1-t^2)dot t dot(-2t dif t)
=2integral_0^1(t^2-t^4)dif t=2(1/3-1/5)=4/15. $
]

#answer("（4）")[
由于 $e^(-x^3),e^(x^3)$ 在 $[-2,-1]$ 连续且 $e^(-x^3)>e^(x^3)$，
$ integral_(-2)^(-1)e^(-x^3)dif x>integral_(-2)^(-1)e^(x^3)dif x. $

注　此题考察定积分比较定理：若 $f(x),g(x)$ 在 $[a,b]$ 连续，且 $f(x)>=g(x)$，则
$ integral_a^b f(x)dif x>=integral_a^b g(x)dif x. $
]

#answer("（5）")[
分析　若从 $x$ 的取值分析，显然略显复杂. 注意到 $abs(f(x))<=1$，则易得答案.

解　由题设知：$abs(f(x))<=1,x in (-infinity,+infinity)$，所以 $f(f(x))=1$.
]

= 二、选择题

#answer("（1）")[
由
$ lim_(x->infinity)(x^2/(x+1)-a x-b)=lim_(x->infinity)((1-a)x^2-(a+b)x-b)/(x+1)=0, $
应有 $cases(1-a=0,a+b=0)$，即 $a=1,b=-1$. 应选 C.

注　应注意多项式之比当 $x->infinity$ 时的极限.
]

#answer("（2）")[
$ dif[integral f(x)dif x]=[integral f(x)dif x]'dif x=f(x)dif x. $
应选 B.
]

#answer("（3）")[
分析　逐步求导得 $n$ 阶导数的一般表达式.

解
$ f''(x)=(f'(x))'=2f(x)dot f'(x)=2[f(x)]^3=2![f(x)]^3, $
$ f^((3))(x)=2dot 3[f(x)]^2 dot f'(x)=2dot 3[f(x)]^4=3![f(x)]^4, $
一般地 $f^((n))(x)=n![f(x)]^(n+1)$.
]

#answer("（4）")[
$ F'(x)=f(e^(-x))(e^(-x))'-f(x)=-e^(-x)f(e^(-x))-f(x). $
应选 A.
]

#answer("（5）")[
$ lim_(x->0)F(x)=lim_(x->0)f(x)/x=lim_(x->0)(f(x)-f(0))/x $
$ =f'(0)!=0=f(0)=F(0). $
极限存在但不等于函数值，第一类（可去性）间断点. 应选 B.
]

= 三、

#answer("（1）")[
由
$ lim_(x->infinity)((x+a)/(x-a))^x=lim_(x->infinity)((1+a/x)^x)/((1-a/x)^x)=e^a/e^(-a)=e^(2a)=9, $
得 $2a=ln 9,a=ln 3$.
]

#answer("（2）")[
等式两边同时对 $x$ 求导得
$ 2y'-1=(1-y')ln(x-y)+(x-y)(1-y')/(x-y), $
解得 $y'=(2+ln(x-y))/(3+ln(x-y))$，故
$ dif y=y'dif x=(2+ln(x-y))/(3+ln(x-y))dif x. $
]

#answer("（3）")[
$ y'=-(2x)/(1+x^2)^2, quad y''=(2(3x^2-1))/(1+x^2)^3. $
令 $y''=0$，得 $x=1/sqrt(3)$（$x>0$），没有二阶不可导点. 当 $x=1/sqrt(3)$ 时，$y=3/4$，点 $(1/sqrt(3),3/4)$ 是唯一的可能拐点.

由于 $0<x<1/sqrt(3)$ 时 $y''<0$，$x>1/sqrt(3)$ 时 $y''>0$，故所求拐点为 $(1/sqrt(3),3/4)$.
]

#answer("（4）")[
$ "原式"=integral ln x dif 1/(1-x)=(ln x)/(1-x)-integral 1/(1-x)(dif x)/x $
$ =(ln x)/(1-x)-integral(1/x+1/(1-x))dif x $
$ =(ln x)/(1-x)-ln x+ln abs(1-x)+C=(x ln x)/(1-x)+ln abs(1-x)+C. $
]

#answer("（5）")[
所给方程为一阶线性非齐次方程，其标准形式为
$ y'+1/(x ln x)y=1/x. $
通解为
$ y=e^(-integral 1/(x ln x)dif x)(integral 1/x e^(integral 1/(x ln x)dif x)dif x+C) $
$ =1/2 ln x+C/(ln x). $
代入初始条件 $y|_(x=e)=1$ 可得 $C=1/2$，所求特解为
$ y=(ln x)/2+1/(2ln x). $
]

= 解答题

#answer("四、")[
设 $P_0(x_0,y_0)$ 为所求之点，则 $P_0$ 处的切线方程为
$ (x x_0)/a^2+(y y_0)/b^2=1, $
截距 $a^2/x_0,b^2/y_0$，故所围图形的面积
$ S=1/2 (a^2 b^2)/(x_0 y_0)-pi/4 a b. $
为使计算简化，先求上式分母中 $S_1=x_0 y_0=x_0 b/a sqrt(a^2-x_0^2)$ 的极大值点，因为
$ S'_1=b/a[sqrt(a^2-x_0^2)-x_0^2/sqrt(a^2-x_0^2)] $
$ =b/a (a^2-2x_0^2)/sqrt(a^2-x_0^2). $
令 $S'_1=0$，得 $S_1$ 在 $(0,a)$ 内的唯一驻点 $x_0=a/sqrt(2)$，代入椭圆方程，得 $y_0=b/sqrt(2)$.

由问题的实际意义判断，或讨论 $S'_1$ 在 $x_0=a/sqrt(2)$ 两侧的符号为正变负，知此 $x_0$ 是 $S_1$ 的极大值点，也是在 $S_1$ 在 $(0,a)$ 内的最大值点. 此处是 $S$ 最小值点，故所求点为 $P_0(a/sqrt(2),b/sqrt(2))$.
]

#answer("五、")[
设 $f(x)=arctan x+1/x-pi/2$，有 $f(+infinity)=lim_(x->+infinity)f(x)=0$，
$ f'(x)=1/(1+x^2)-1/x^2<0=>f(x)"单减", $
所以当 $0<x<+infinity$ 时，$f(x)>f(+infinity)=0$.

即 $arctan x+1/x>pi/2,x>0$.
]

#answer("六、")[
解法一　令 $t=1/u$，则
$ f(1/x)=integral_1^(1/x)(ln t)/(1+t)dif t=integral_1^x (ln u)/(u(u+1))dif u $
$ =integral_1^x (ln t)/(t(1+t))dif t=integral_1^x((ln t)/t-(ln t)/(t+1))dif t, $
故
$ f(x)+f(1/x)=integral_1^x (ln t)/(1+t)dif t+integral_1^x((ln t)/t-(ln t)/(t+1))dif t $
$ =integral_1^x (ln t)/t dif t=1/2 ln^2 x. $

解法二　令 $F(x)=f(x)+f(1/x)$，则
$ F'(x)=(ln x)/(1+x)+(ln(1/x))/(1+1/x)dot(-1/x^2)=(ln x)/x. $
由牛顿—莱布尼兹公式，
$ F(x)-F(1)=integral_1^x (ln x)/x dif x=1/2 ln^2 x. $
而 $F(1)=0$，故 $F(x)=1/2 ln^2 x$.
]

#answer("七、")[
先求切线方程.
$ y'=1/(2sqrt(x-2)), $
点 $(x_0,sqrt(x_0-2))$ 处的切线方程为
$ y-sqrt(x_0-2)=1/(2sqrt(x_0-2))(x-x_0). $
由切线过 $(1,0)$，有
$ 0-sqrt(x_0-2)=1/(2sqrt(x_0-2))(1-x_0), $
解得 $x_0=3$. 由此，与抛物线相切于 $(3,1)$ 的切线方程为 $x-2y=1$.

求旋转体体积 $V$.

方法一　$dif V=2pi y[(y^2+2)-(2y+1)]dif y$，
$ V=2pi integral_0^1(y^3-2y^2+y)dif y=pi/6. $

方法二
$ V=pi integral_1^3 1/4(x-1)^2 dif x-pi integral_2^3(sqrt(x-2))^2 dif x=pi/6. $
#align(center)[#image("1990-数学二-切线旋转体.svg", width: 45%)]
]

#answer("八、")[
特征方程 $r^2+4r+4=0$ 的根为 $r_1=r_2=-2$.

当 $lambda=a!=-2$ 时，设非齐次解 $Y=A e^(a x)$，代入方程可得 $A=1/(a+2)^2$.

当 $lambda=a=-2$ 时，设非齐次解 $Y=x^2 dot A e^(a x)$，代入方程可得 $A=1/2$.

所求通解为
$ y=(c_1+c_2 x)e^(-2x)+e^(a x)/(a+2)^2 quad (a!=-2), $
$ y=(c_1+c_2 x)e^(-2x)+x^2/2 e^(-2x) quad (a=-2). $
]

