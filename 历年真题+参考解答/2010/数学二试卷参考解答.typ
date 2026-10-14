#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2010, subject: "二", title: "2010年全国硕士研究生入学统一考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#import "@preview/cetz:0.5.2": canvas, draw
#let oil-diagram(axes:false) = canvas({
 import draw: *
 circle((0,0),radius:(2,1))
 for y in range(-9,5).map(i=>i/10){let x=2*calc.sqrt(1-calc.pow(y,2));line((-x,y),(x,y),stroke:(thickness:.3pt,dash:"dashed"))}
 line((-1.732,.5),(1.732,.5))
 if axes {line((-2.6,0),(2.7,0),mark:(end:">"));line((0,-1.4),(0,1.6),mark:(end:">"));content((2.7,-.1),$x$);content((-.1,1.6),$y$);content((-.1,-.1),$O$);content((2.1,-.15),$a$);content((-2.1,-.15),$-a$);content((-.1,1.1),$b$);content((-.1,-1.1),$-b$);content((-1,-.5),$S_1$);content((-1,.25),$S_2$)} else {line((2.3,.5),(2.3,1),mark:(start:">",end:">"));content((2.55,.75),$b/2$);line((2.3,-1),(2.3,.5),mark:(start:">",end:">"));content((2.55,-.25),$3/2 b$);line((-2,-1.25),(2,-1.25),mark:(start:">",end:">"));content((0,-1.45),$2a$)}
})
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2010 数学二试卷参考解答

= 一、选择题

#answer("1.")[
B. 【解】函数在 $x=0,1,-1$ 处无定义. 当 $x->0^-$ 时极限为 $-1$，当 $x->0^+$ 时极限为 $1$，故 $x=0$ 为跳跃间断点. 在 $x=1$ 处极限为 $sqrt(2)/2$，故为可去间断点. 在 $x=-1$ 处，函数无界，故为无穷间断点. 因此无穷间断点只有一个.
]

#answer("2.")[
A. 【解】将 $lambda y_1+mu y_2$ 代入非齐次方程，得 $(lambda+mu)q(x)=q(x)$，所以 $lambda+mu=1$. 将 $lambda y_1-mu y_2$ 代入对应齐次方程，得 $(lambda-mu)q(x)=0$，所以 $lambda-mu=0$. 解得 $lambda=mu=1/2$.
]

#answer("3.")[
C. 【解】设切点为 $(x_0,y_0)$，两曲线在该点的函数值和导数值相等，故
$ cases(y_0=x_0^2,y_0=a ln x_0,2x_0=a/x_0). $
解得 $x_0=sqrt(e),y_0=e,a=2e$.
]

#answer("4.")[
D. 【解】须分别检查两个端点. 当 $x->0^+$ 时，$ln(1-x) tilde.op -x$，所以
$ frac([ln^2(1-x)]^(1/m),x^(1/n)) tilde.op x^(2/m-1/n). $
对正整数 $m,n$，有 $2/m-1/n>-1$，故在零点附近可积. 当 $x->1^-$ 时，任意对数幂的增长均慢于 $(1-x)^(-1/2)$，即
$ lim_(x->1^-)sqrt(1-x)frac([ln^2(1-x)]^(1/m),x^(1/n))=0. $
又 $integral_0^1(1-x)^(-1/2)dif x$ 收敛，故原反常积分收敛.
]

#answer("5.")[
B. 【解】分别对 $x,y$ 求偏导，得
$ -frac(y,x^2)F'_1+(frac(z'_x,x)-frac(z,x^2))F'_2=0, $
$ frac(1,x)F'_1+frac(z'_y,x)F'_2=0. $
第一式乘 $x^2$，第二式乘 $x y$，相加得 $(x z'_x+y z'_y)F'_2=z F'_2$. 由 $F'_2!=0$，得 $x z'_x+y z'_y=z$.
]

#answer("6.")[
D. 【解】取单位正方形 $D$，函数 $f(x,y)=frac(1,(1+x)(1+y^2))$，将两边各等分为 $n$ 份，取样点 $(i/n,j/n)$. 因小矩形面积为 $1/n^2$，所给和式就是黎曼和，故其极限为
$ integral_0^1 dif x integral_0^1 frac(1,(1+x)(1+y^2))dif y. $
]

#answer("7.")[
A. 【解】向量组Ⅰ可由Ⅱ线性表示，故 $r("Ⅰ")<=r("Ⅱ")$. 当Ⅰ线性无关时，
$ r=r("Ⅰ")<=r("Ⅱ")<=s, $
因此 $r<=s$.
其余选项可用反例排除：Ⅰ只含零向量，Ⅱ由 $(1,0)^T,(0,0)^T$ 组成，否定 B、D；Ⅰ由 $(1,0)^T,(0,0)^T$ 组成，Ⅱ只含 $(1,0)^T$，否定 C.
]

#answer("8.")[
D. 【解】由 $A^2+A=O$，任一特征值满足 $lambda^2+lambda=0$，故只能为 $0$ 或 $-1$. 实对称矩阵可正交对角化，又 $r(A)=3$，所以它的特征值为 $-1,-1,-1,0$，与 $op("diag")(-1,-1,-1,0)$ 相似.
]

= 二、填空题

#answer("9.")[
$C_1 e^(2x)+C_2 cos x+C_3 sin x$. 【解】特征方程为
$ r^3-2r^2+r-2=(r-2)(r^2+1)=0, $
其根为 $2,plus.minus i$，故通解如上，其中 $C_1,C_2,C_3$ 为任意常数.
]

#answer("10.")[
$y=2x$. 【解】曲线在整个实轴上连续，没有竖直渐近线，且在无穷远没有有限极限，没有水平渐近线. 斜渐近线的斜率和截距为
$ k=lim_(x->infinity)frac(y,x)=2, quad b=lim_(x->infinity)(y-2x)=lim_(x->infinity)frac(-2x,x^2+1)=0. $
因此渐近线为 $y=2x$. 两个无穷方向的结论相同.
]

#answer("11.")[
$-2^n(n-1)!$. 【解法1】逐次求导得
$ y'=-2(1-2x)^(-1), quad y''=-2^2(1-2x)^(-2), $
$ y^((3))=-2^3 dot 2!(1-2x)^(-3). $
由此归纳得到 $y^((n))(x)=-2^n(n-1)!(1-2x)^(-n)$，代入 $x=0$ 即得结论.
【解法2】在 $|x|<1/2$ 内，$y'=-sum_(k=0)^infinity 2^(k+1)x^k$，结合 $y(0)=0$，逐项积分得
$ y=-sum_(k=1)^infinity frac(2^k,k)x^k. $
比较泰勒系数，得 $y^((n))(0)/n!=-2^n/n$，所以 $y^((n))(0)=-2^n(n-1)!$.
]

#answer("12.")[
$sqrt(2)(e^pi-1)$. 【解】极坐标下的弧长公式给出
$ s=integral_0^pi sqrt(r^2+(r')^2)dif theta=sqrt(2)integral_0^pi e^theta dif theta=sqrt(2)(e^pi-1). $
]

#answer("13.")[
$3$ cm/s. 【解】设对角线长为 $y$，则 $y=sqrt(l^2+w^2)$，所以
$ y'=frac(l l'+w w',sqrt(l^2+w^2))=frac(12 times 2+5 times 3,sqrt(12^2+5^2))=3. $
注意两边均对时间求导，并保留速率的单位.
]

#answer("14.")[
$3$. 【解】利用行列式乘法公式，
$ |A| |A^(-1)+B|=|E+A B|=|B^(-1)+A| |B|. $
所以 $3 times 2=2|A+B^(-1)|$，得 $|A+B^(-1)|=3$.
【典型错误】行列式不具有对矩阵加法的线性性，不能写成 $|A|+|B^(-1)|$.
]

= 三、解答题

#answer("15.")[
解　$f(x)$ 的定义域为 $(-infinity,+infinity)$，由于
$ f(x)=x^2 integral_1^(x^2)e^(-t^2)dif t-integral_1^(x^2)t e^(-t^2)dif t, $
$ f'(x)=2x integral_1^(x^2)e^(-t^2)dif t+2x^3 e^(-x^4)-2x^3 e^(-x^4) \
=2x integral_1^(x^2)e^(-t^2)dif t, $
所以 $f(x)$ 的驻点为 $x=0,plus.minus 1$.
列表讨论如下：
#table(columns:8,[$x$],[$(-infinity,-1)$],[−1],[$(-1,0)$],[0],[$(0,1)$],[1],[$(1,+infinity)$],[$f'(x)$],[−],[0],[+],[0],[−],[0],[+],[$f(x)$],[↘],[极小],[↗],[极大],[↘],[极小],[↗])
因此，$f(x)$ 的单调增加区间为 $(-1,0)$ 及 $(1,+infinity)$，单调减少区间为 $(-infinity,-1)$ 及 $(0,1)$；极小值为 $f(plus.minus 1)=0$，极大值为 $f(0)=integral_0^1 t e^(-t^2)dif t=1/2(1-e^(-1))$.
【注】也可直接利用含参数积分的求导公式，得
$ f'(x)=2x(x^2-x^2)e^(-x^4)+integral_1^(x^2)2x e^(-t^2)dif t. $
又 $f'(0)=0$，$f''(0)=2integral_1^0 e^(-t^2)dif t<0$，故 $f(0)$ 为极大值.
【典型错误】驻点有三个，不能漏掉 $x=plus.minus 1$. 单调区间应分别列出，不能把两个不相连的区间合写成一个单调区间.
]

#answer("16.")[
解　（Ⅰ）当 $0<=t<=1$ 时，因为 $ln(1+t)<=t$，所以 $|ln t[ln(1+t)]^n|<=t^n|ln t|$，因此
$ integral_0^1|ln t[ln(1+t)]^n|dif t<=integral_0^1 t^n|ln t|dif t. $
（Ⅱ）由（Ⅰ）知 $0<=u_n=integral_0^1|ln t[ln(1+t)]^n|dif t<=integral_0^1 t^n|ln t|dif t$.
因为
$ integral_0^1 t^n|ln t|dif t=-integral_0^1 t^n ln t dif t \
=1/(n+1)integral_0^1 t^n dif t=1/(n+1)^2, $
所以 $lim_(n->infinity)integral_0^1 t^n|ln t|dif t=0$，从而 $lim_(n->infinity)u_n=0$.
（Ⅱ）【解法2】由 $0<=ln(1+t)<=ln 2<1$，得
$ 0<=u_n<=(ln 2)^n integral_0^1|ln t|dif t=(ln 2)^n->0. $
其中反常积分 $integral_0^1|ln t|dif t=1$，所以夹逼得 $lim u_n=0$.
【解法3】因 $lim_(t->0^+)t ln t=0$，存在 $M>0$，使 $t|ln t|<=M$，于是
$ 0<=u_n<=integral_0^1 t^n|ln t|dif t<=M integral_0^1 t^(n-1)dif t=frac(M,n)->0. $
【典型错误】利用反常积分作比较时，应先说明比较积分收敛.
]

#answer("17.")[
解　因为 $(dif y)/(dif x)=psi'(t)/(2+2t)$，所以
$ (dif^2 y)/(dif x^2)=(((2+2t)psi''(t)-2psi'(t))/(2+2t)^2)/(2+2t) \
=((1+t)psi''(t)-psi'(t))/(4(1+t)^3). $
由题设 $(dif^2 y)/(dif x^2)=3/(4(1+t))$，故 $((1+t)psi''(t)-psi'(t))/(4(1+t)^3)=3/(4(1+t))$，从而 $(1+t)psi''(t)-psi'(t)=3(1+t)^2$，即 $psi''(t)-1/(1+t)psi'(t)=3(1+t)$.
设 $u=psi'(t)$，则有 $u'-1/(1+t)u=3(1+t)$，
$ u=e^(integral 1/(1+t)dif t)[integral 3(1+t)e^(-integral 1/(1+t)dif t)dif t+C_1] \
=(1+t)[integral 3(1+t) dot (1+t)^(-1)dif t+C_1] \
=(1+t)(3t+C_1). $
由 $u|_(t=1)=psi'(1)=6$，知 $C_1=0$，于是 $psi'(t)=3t(1+t)$.
$ psi(t)=3integral(t+t^2)dif t=3(1/2 t^2+1/3 t^3)+C_2=3/2 t^2+t^3+C_2. $
由 $psi(1)=5/2$，知 $C_2=0$，于是 $psi(t)=3/2 t^2+t^3(t>-1)$.
【典型错误】对 $dif y/dif x$ 再求导时，先对参数 $t$ 求导，还须乘 $1/(2+2t)$，不能直接将参数二阶导数当作 $dif^2 y/dif x^2$.
]

#answer("18.")[
解　如下图建立坐标系，则油罐底面椭圆方程为 $x^2/a^2+y^2/b^2=1$.图中阴影部分为油面与椭圆所围成的图形.
#oil-diagram(axes:true)
记 $S_1$ 为下半椭圆面积，则 $S_1=1/2 pi a b$.
记 $S_2$ 是位于 $x$ 轴上方阴影部分的面积，则 $S_2=2integral_0^(b/2)a sqrt(1-y^2/b^2)dif y$.
设 $y=b sin t$，则 $dif y=b cos t dif t$，
$ S_2=2a b integral_0^(pi/6)sqrt(1-sin^2 t)cos t dif t \
=2a b integral_0^(pi/6)cos^2 t dif t \
=a b integral_0^(pi/6)(1+cos 2t)dif t=a b(pi/6+sqrt(3)/4), $
于是油的质量为
$ (S_1+S_2)l rho=(1/2 pi a b+pi/6 a b+sqrt(3)/4 a b)l rho \
=(2/3 pi+sqrt(3)/4)a b l rho. $
【注】也可先求无油部分的面积 $S_3$. 油面与椭圆的右交点为 $A=(sqrt(3)a/2,b/2)$，因此
$ S_3=2integral_0^(sqrt(3)a/2)b sqrt(1-x^2/a^2)dif x-frac(sqrt(3),2)a b $
$ =frac(pi,3)a b-frac(sqrt(3),4)a b. $
故油的截面积为 $pi a b-S_3=(2pi/3+sqrt(3)/4)a b$，再乘柱体高度及密度即得质量.
【典型错误】以椭圆中心为原点可简化积分上下限与被积函数.
]

#answer("19.")[
解
$ (partial u)/(partial x)=(partial u)/(partial xi)+(partial u)/(partial eta), $
$ (partial^2 u)/(partial x^2)=(partial^2 u)/(partial xi^2)+2(partial^2 u)/(partial xi partial eta)+(partial^2 u)/(partial eta^2), $
$ (partial u)/(partial y)=a(partial u)/(partial xi)+b(partial u)/(partial eta), $
$ (partial^2 u)/(partial y^2)=a^2(partial^2 u)/(partial xi^2)+2a b(partial^2 u)/(partial xi partial eta)+b^2(partial^2 u)/(partial eta^2), $
$ (partial^2 u)/(partial x partial y)=a(partial^2 u)/(partial xi^2)+(a+b)(partial^2 u)/(partial xi partial eta)+b(partial^2 u)/(partial eta^2). $
将以上各式代入原等式，得
$ (5a^2+12a+4)(partial^2 u)/(partial xi^2)+[10a b+12(a+b)+8](partial^2 u)/(partial xi partial eta) \
+(5b^2+12b+4)(partial^2 u)/(partial eta^2)=0. $
由题意，令 $cases(5a^2+12a+4=0,5b^2+12b+4=0)$，解得
$ cases(a=-2,b=-2/5),quad cases(a=-2/5,b=-2),quad cases(a=-2,b=-2),quad cases(a=-2/5,b=-2/5). $
由 $10a b+12(a+b)+8!=0$，舍去 $cases(a=-2,b=-2),cases(a=-2/5,b=-2/5)$，故 $a=-2,b=-2/5$ 或 $a=-2/5,b=-2$.
【解法2】先反解变量变换：
$ x=frac(a eta-b xi,a-b), quad y=frac(xi-eta,a-b), quad a!=b. $
于是
$ frac(partial u,partial xi)=frac(-b,a-b)frac(partial u,partial x)+frac(1,a-b)frac(partial u,partial y), $
$ frac(partial^2 u,partial xi partial eta)=frac(-a b,(a-b)^2)frac(partial^2 u,partial x^2) $
$ +frac(a+b,(a-b)^2)frac(partial^2 u,partial x partial y)-frac(1,(a-b)^2)frac(partial^2 u,partial y^2). $
要使混合偏导为零，与原等式比较系数，得
$ frac(-a b,4)=frac(a+b,12)=-frac(1,5). $
故 $a=-2,b=-2/5$ 或 $a=-2/5,b=-2$.
【典型错误】不仅要消去两项纯二阶偏导，还须保证剩下混合偏导的系数不为零，变量变换也应可逆.
]

#answer("20.")[
解　由题设知，积分区域 $D$ 如图所示，将积分化为直角坐标系下的二重积分为
#import "@preview/cetz:0.5.2": canvas, draw
#canvas({import draw: *;line((0,0),(1,0),(1,1),close:true);line((-.2,0),(1.5,0),mark:(end:">"));line((0,-.2),(0,1.5),mark:(end:">"));for t in range(1,10).map(i=>i/10){line((t,0),(1,1 - t),stroke:.3pt)};content((1.5,-.1),$x$);content((-.1,1.5),$y$);content((-.1,-.1),$O$);content((.7,.3),$D$);content((1.1,1.1),[(1,1)]);content((.35,.6),$y=x$);content((1,-.15),[1])})
$ I=integral.double_D r^2 sin theta sqrt(1-r^2 cos^2 theta+r^2 sin^2 theta)dif r dif theta \
=integral.double_D y sqrt(1-x^2+y^2)dif x dif y \
=1/2 integral_0^1 dif x integral_0^x sqrt(1-x^2+y^2)dif(1-x^2+y^2) \
=1/3 integral_0^1(1-x^2+y^2)^(3/2)|_0^x dif x \
=1/3 integral_0^1[1-(1-x^2)^(3/2)]dif x. $
设 $x=sin t$，则
$ I=1/3-1/3 integral_0^(pi/2)cos^4 t dif t \
=1/3-1/3 dot 3/4 dot 1/2 dot pi/2=1/3-pi/16. $
【典型错误】极坐标边界 $r=sec theta$ 等价于直角坐标中的 $x=1$. 本题转回直角坐标后可直接对 $y$ 积分；变换面积元素时须留意雅可比因子.
]

#answer("21.")[
证　设函数 $F(x)=f(x)-1/3 x^3$，由题意知 $F(0)=0,F(1)=0$.
在 $[0,1/2]$ 和 $[1/2,1]$ 上分别应用拉格朗日中值定理，有
$ F(1/2)-F(0)=F'(xi)(1/2-0)=1/2[f'(xi)-xi^2],quad xi in(0,1/2), $
$ F(1)-F(1/2)=F'(eta)(1-1/2)=1/2[f'(eta)-eta^2],quad eta in(1/2,1). $
二式相加，得 $F(1)-F(0)=1/2[f'(xi)-xi^2]+1/2[f'(eta)-eta^2]=0$，即 $f'(xi)+f'(eta)=xi^2+eta^2$.
【分析】先将目标等式写成 $[f'(xi)-xi^2]+[f'(eta)-eta^2]=0$，由此构造 $F(x)=f(x)-x^3/3$. 在两个长度相等的半区间分别使用中值定理，再相加即可.
]

#answer("22.")[
解　（Ⅰ）设 $eta_1,eta_2$ 为 $A bold(x)=bold(b)$ 的2个不同的解，则 $eta_1-eta_2$ 是 $A bold(x)=0$ 的一个非零解，故 $|A|=(lambda-1)^2(lambda+1)=0$，于是 $lambda=1$ 或 $lambda=-1$.
当 $lambda=1$ 时，因为 $r(A)!=r(A,bold(b))$，所以 $A bold(x)=bold(b)$ 无解，舍去.
当 $lambda=-1$ 时，对 $A bold(x)=bold(b)$ 的增广矩阵施以初等行变换：
$ (A,bold(b))=mat(-1,1,1,a;0,-2,0,1;1,1,-1,1,augment:#3) \
->mat(1,0,-1,3/2;0,1,0,-1/2;0,0,0,a+2,augment:#3)=B, $
因为 $A bold(x)=bold(b)$ 有解，所以 $a=-2$.
（Ⅱ）当 $lambda=-1,a=-2$ 时，$B=mat(1,0,-1,3/2;0,1,0,-1/2;0,0,0,0,augment:#3)$，所以 $A bold(x)=bold(b)$ 的通解为 $bold(x)=1/2 mat(3;-1;0)+k mat(1;0;1)$，其中 $k$ 为任意常数.
补充 $lambda=1$ 时的增广矩阵变换：
$ mat(1,1,1,a;0,0,0,1;1,1,1,1,augment:#3)->mat(1,1,1,1;0,0,0,1;0,0,0,a-1,augment:#3). $
系数矩阵秩为 $1$，增广矩阵秩为 $2$，故无解.
【典型错误】非齐次方程组的通解是特解与齐次方程组通解之和. 本题齐次方程组的基础解系只含一个向量.
]

#answer("23.")[
解　由题设，$(1,2,1)^T$ 为 $A$ 的一个特征向量，于是
$ A mat(1;2;1)=mat(0,-1,4;-1,3,a;4,a,0)mat(1;2;1)=lambda_1 mat(1;2;1), $
解得 $a=-1,lambda_1=2$.
由于 $A$ 的特征多项式 $|lambda E-A|=(lambda-2)(lambda-5)(lambda+4)$，所以 $A$ 的特征值为2，5，−4.
属于特征值5的一个单位特征向量为 $1/sqrt(3)(1,-1,1)^T$；属于特征值−4的一个单位特征向量为 $1/sqrt(2)(-1,0,1)^T$.
令 $Q=mat(1/sqrt(6),1/sqrt(3),-1/sqrt(2);2/sqrt(6),-1/sqrt(3),0;1/sqrt(6),1/sqrt(3),1/sqrt(2))$.
并有 $Q^T A Q=op("diag")(2,5,-4)$，所以 $Q$ 为所求正交矩阵.
【注】也可将后两列交换，取
$ Q=mat(1/sqrt(6),-1/sqrt(2),1/sqrt(3);2/sqrt(6),0,-1/sqrt(3);1/sqrt(6),1/sqrt(2),1/sqrt(3)), $
此时对应对角矩阵为 $op("diag")(2,-4,5)$.
【典型错误】仅使后两列与第一列正交还不够，它们还必须是 $A$ 的特征向量. 应分别求出特征值 $5,-4$ 对应的特征向量，再单位化.
]

