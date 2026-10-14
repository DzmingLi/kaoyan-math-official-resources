#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2011, subject: "二", title: "2011年全国硕士研究生入学统一考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#import "@preview/cetz:0.5.2": canvas, draw
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2011 数学二试卷参考解答

= 一、选择题

#answer("1.")[
C. 【解法1】由等价无穷小的定义及洛必达法则，
$ 1=lim_(x->0)frac(3sin x-sin 3x,c x^k)=frac(24,c k(k-1)(k-2))lim_(x->0)frac(1,x^(k-3)). $
因此 $k=3,c=4$.
【解法2】由泰勒公式，$sin x=x-x^3/6+o(x^3)$，$sin 3x=3x-9x^3/2+o(x^3)$，故 $3sin x-sin 3x=4x^3+o(x^3) tilde.op 4x^3$.
【注】也可排除选项：$3sin x$ 与 $sin 3x$ 等价，差比 $x$ 高阶；又差在零点两侧的符号与 $x^3$ 相同，故排除 $c<0$.
]

#answer("2.")[
B. 【解】由 $f(0)=0$ 及导数定义，
$ lim_(x->0)frac(x^2 f(x)-2f(x^3),x^3)=lim_(x->0)frac(f(x)-f(0),x)-2lim_(x->0)frac(f(x^3)-f(0),x^3)=-f'(0). $
题设仅保证零点可导，不能未经检查就使用洛必达法则.
]

#answer("3.")[
C. 【解】
$ f'(x)=frac(1,x-1)+frac(1,x-2)+frac(1,x-3)=frac(3x^2-12x+11,(x-1)(x-2)(x-3)). $
分子方程的判别式 $144-132>0$，有两个实根，均在定义域内，故有两个驻点.
]

#answer("4.")[
C. 【解】齐次方程特征根为 $plus.minus lambda$，故右端 $e^(lambda x)$ 和 $e^(-lambda x)$ 分别对应特解形式 $a x e^(lambda x)$ 和 $b x e^(-lambda x)$，由叠加原理得 $y^*=x(a e^(lambda x)+b e^(-lambda x))$. 两个指数项的待定系数应分别设置.
]

#answer("5.")[
A. 【解】$z=f(x)g(y)$，在原点有 $z'_x=z'_y=0$，且
$ A=f''(0)g(0), quad B=0, quad C=f(0)g''(0). $
因为 $f(0)>0,g(0)<0$，在 $f''(0)<0,g''(0)>0$ 时，$A>0$ 且 $B^2-A C<0$，故为极小值点.
]

#answer("6.")[
B. 【解】在 $0<x<pi/4$ 上，$sin x<cos x$，故 $I<K$. 又
$ J=integral_0^(pi/4)ln cot x dif x=K-I>K, $
其中 $I<0$，所以 $I<K<J$. 本题虽涉及反常积分，比较大小并不需要先求出三个积分.
]

#answer("7.")[
D. 【解】将第 $2$ 列加到第 $1$ 列对应右乘初等矩阵 $P_1$，交换第 $2,3$ 行对应左乘 $P_2$，其中
$ P_1=mat(1,0,0;1,1,0;0,0,1), quad P_2=mat(1,0,0;0,0,1;0,1,0). $
由 $P_2 A P_1=E$ 得 $A=P_2^(-1)P_1^(-1)=P_2 P_1^(-1)$. 注意行变换与列变换的乘法位置不同.
]

#answer("8.")[
D. 【解】$A x=0$ 的基础解系含一个向量，故 $r(A)=3$，$r(A^*)=1$，$A^*x=0$ 的基础解系含三个向量. 由 $A^*A=|A|E=O$，$A$ 的各列都是 $A^*x=0$ 的解. 又 $alpha_1+alpha_3=0$，而 $r(A)=3$，故 $alpha_2,alpha_3,alpha_4$ 线性无关，构成所求基础解系.
]

= 二、填空题

#answer("9.")[
$sqrt(2)$. 【解法1】记 $y=((1+2^x)/2)^(1/x)$，则
$ lim_(x->0)ln y=lim_(x->0)frac(ln((1+2^x)/2),x)=lim_(x->0)frac(2^x ln 2,1+2^x)=ln sqrt(2). $
故 $lim y=sqrt(2)$.
【解法2】将底数写成 $1+(2^x-1)/2$，用重要极限得
$ lim_(x->0)(1+frac(2^x-1,2))^(1/x)=e^(lim_(x->0)frac(2^x-1,2x))=e^(ln 2/2)=sqrt(2). $
注意取对数所得极限尚须再取指数.
]

#answer("10.")[
$e^(-x)sin x$. 【解】方程 $y'+y=e^(-x)cos x$ 的通解为
$ y=e^(-x)(C+integral cos x dif x)=e^(-x)(C+sin x). $
由 $y(0)=0$ 得 $C=0$.
]

#answer("11.")[
$ln(1+sqrt(2))$. 【解】$y'=tan x$，弧长为
$ s=integral_0^(pi/4)sqrt(1+(y')^2)dif x=integral_0^(pi/4)sec x dif x=[ln(sec x+tan x)]_0^(pi/4)=ln(1+sqrt(2)). $
]

#answer("12.")[
$1/lambda$. 【解】按分段函数积分并分部积分，
$ integral_(-infinity)^infinity x f(x)dif x=integral_0^infinity lambda x e^(-lambda x)dif x $
$ =[-x e^(-lambda x)]_0^infinity+integral_0^infinity e^(-lambda x)dif x=frac(1,lambda). $
不能将非零分段的表达式延伸到整个实轴.
]

#answer("13.")[
$7/12$. 【解法1】极坐标下 $pi/4<=theta<=pi/2,0<=r<=2sin theta$，故
$ I=integral_(pi/4)^(pi/2)dif theta integral_0^(2sin theta)r^3 cos theta sin theta dif r=frac(2,3)[sin^6 theta]_(pi/4)^(pi/2)=frac(7,12). $
【解法2】直角坐标下，
$ I=integral_0^1 dif x integral_x^(1+sqrt(1-x^2))x y dif y $
$ =integral_0^1(x+x sqrt(1-x^2)-x^3)dif x=[frac(x^2,2)-frac((1-x^2)^(3/2),3)-frac(x^4,4)]_0^1=frac(7,12). $
注意极坐标面积元是 $r dif r dif theta$，直角坐标上边界取圆的上半支.
]

#answer("14.")[
$2$. 【解法1】二次型矩阵为 $A=mat(1,1,1;1,3,1;1,1,1)$，其特征多项式
$ |lambda E-A|=lambda(lambda-1)(lambda-4). $
特征值为 $0,1,4$，其中两个为正，正惯性指数为 $2$.
【解法2】配方得 $f=(x_1+x_2+x_3)^2+2x_2^2$，故正惯性指数为 $2$. 正惯性指数指标准形中正系数的个数，并非特征值本身.
]

= 三、解答题

#answer("15.")[
解　因为
$ lim_(x->+infinity)F(x)=lim_(x->+infinity)(integral_0^x ln(1+t^2)dif t)/x^alpha $
$ =lim_(x->+infinity)(ln(1+x^2))/(alpha x^(alpha-1)) $
$ =lim_(x->+infinity)((2x^2)/(1+x^2))/(alpha(alpha-1)x^(alpha-1)) $
$ =2/(alpha(alpha-1))lim_(x->+infinity)1/x^(alpha-1), $
由题意 $lim_(x->+infinity)F(x)=0$，得 $alpha>1$.
又因为
$ lim_(x->0^+)F(x)=lim_(x->0^+)(integral_0^x ln(1+t^2)dif t)/x^alpha=lim_(x->0^+)(ln(1+x^2))/(alpha x^(alpha-1)) $
$ =lim_(x->0^+)x^2/(alpha x^(alpha-1))=1/alpha lim_(x->0^+)x^(3-alpha), $
由题意 $lim_(x->0^+)F(x)=0$，得 $alpha<3$.
综上所述，$1<alpha<3$.

【典型错误】在 $x->+infinity$ 时，$ln(1+x^2)$ 不能用 $1+x^2$ 替换. 参数范围的端点须检查，不能误写为闭区间.
]

#answer("16.")[
解　令 $ (dif y)/(dif x)=(t^2-1)/(t^2+1)=0 $，得 $t=plus.minus 1$.
当 $t=1$ 时，$x=5/3$；当 $t=-1$ 时，$x=-1$.
令
$ (dif^2 y)/(dif x^2)=((4t)/(t^2+1)^2)/(t^2+1)=(4t)/(t^2+1)^3=0, $
得 $t=0$，即 $x=1/3$.
列表如下：
#table(columns:8,[$t$],[$(-infinity,-1)$],[−1],[$(-1,0)$],[0],[$(0,1)$],[1],[$(1,+infinity)$],[$x$],[$(-infinity,-1)$],[−1],[$(-1,1/3)$],[$1/3$],[$(1/3,5/3)$],[$5/3$],[$(5/3,+infinity)$],[$y'$],[+],[0],[−],[−],[−],[0],[+],[$y''$],[−],[−],[−],[0],[+],[+],[+])
由此可知，函数 $y(x)$ 的极大值为 $y(-1)=y|_(t=-1)=1$，极小值为 $y(5/3)=y|_(t=1)=-1/3$.
曲线 $y=y(x)$ 的凹区间为 $(1/3,+infinity)$，凸区间为 $(-infinity,1/3)$.
由于 $y(1/3)=y|_(t=0)=1/3$，所以曲线 $y=y(x)$ 的拐点为 $(1/3,1/3)$.

【典型错误】二阶导数要再除以 $x'(t)=t^2+1$，故分母为 $(t^2+1)^3$. 拐点应同时给出横、纵坐标.
]

#answer("17.")[
解　由题意 $g'(1)=0$.
因为
$ (partial z)/(partial x)=y f'_1+y g'(x)f'_2, $
$ (partial^2 z)/(partial x partial y)=f'_1+y[x f''_(11)+g(x)f''_(12)]+g'(x)f'_2+y g'(x)[x f''_(21)+g(x)f''_(22)], $
所以
$ ((partial^2 z)/(partial x partial y))|_((x=1,y=1))=f'_1(1,1)+f''_(11)(1,1)+f''_(12)(1,1). $

【解法2】先代入 $x=1$，由 $g(1)=1,g'(1)=0$ 得
$ z'_x|_(x=1)=y f'_1(y,y). $
再对 $y$ 求导并令 $y=1$，得
$ z''_(x y)(1,1)=f'_1(1,1)+f''_(11)(1,1)+f''_(12)(1,1). $
注意对 $f'_1,f'_2$ 求偏导时，应继续运用复合函数求导法则.
]

#answer("18.")[
解　由于 $y'=tan alpha$，即 $alpha=arctan y'$，所以
$ (dif alpha)/(dif x)=y''/(1+y'^2), $
于是有 $y''/(1+y'^2)=y'$，即
$ y''=y'(1+y'^2). quad "①" $
令 $y'=p$，则 $y''=p'$，代入①式得 $p'=p(1+p^2)$，分离变量得
$ (dif p)/(p(1+p^2))=dif x, $
两边积分得
$ ln(p^2/(1+p^2))=2x+ln C_1. quad "②" $
由题意 $y'(0)=1$，即当 $x=0$ 时 $p=1$，代入②式得 $C_1=1/2$，于是有
$ y'=p=(e^x/sqrt(2))/sqrt(1-1/2 e^(2x)), $
两边积分得
$ y=integral(e^x/sqrt(2))/sqrt(1-(e^x/sqrt(2))^2)dif x=arcsin(e^x/sqrt(2))+C_2, $
由 $y(0)=0$ 得 $C_2=-pi/4$，所以
$ y=arcsin(e^x/sqrt(2))-pi/4. $

【解法2】由 $alpha'=y'=tan alpha$，得 $alpha=y+C_1$，且
$ dif x=frac(cos alpha,sin alpha)dif alpha. $
积分得 $x+C=ln|sin alpha|$，即 $sin alpha=C_2 e^x$. 原点的切线为 $y=x$，故 $y(0)=0,alpha(0)=pi/4$，得到 $C_1=pi/4,C_2=1/sqrt(2)$，所以
$ y=arcsin frac(e^x,sqrt(2))-frac(pi,4). $
注意初始条件既包含函数值，也包含切线斜率.
]

#answer("19.")[
证　（Ⅰ）根据拉格朗日中值定理，存在 $xi in (n,n+1)$，使得
$ ln(1+1/n)=ln(n+1)-ln n=1/xi, $
所以
$ 1/(n+1)<ln(1+1/n)=1/xi<1/n. $
（Ⅱ）当 $n>=1$ 时，由（Ⅰ）知
$ a_(n+1)-a_n=1/(n+1)-ln(1+1/n)<0, $
且
$ a_n=1+1/2+dots+1/n-ln n $
$ >ln(1+1)+ln(1+1/2)+dots+ln(1+1/n)-ln n $
$ =ln(1+n)-ln n>0, $
所以数列 ${a_n}$ 单调减少且有下界，故 ${a_n}$ 收敛.

（Ⅰ）【证法2】令 $F(x)=x-ln(1+x)$，$G(x)=ln(1+x)-x/(1+x)$，则
$ F'(x)=1-frac(1,1+x)>0, quad G'(x)=frac(x,(1+x)^2)>0 quad (x>0). $
结合 $F(0)=G(0)=0$，代入 $x=1/n$ 即得所需两边不等式.
【证法3】令 $F(x)=1/x-ln(1+1/x)$，$G(x)=ln(1+1/x)-1/(1+x)$，二者在 $x>0$ 时均严格递减，且在无穷远趋于零，故 $F(n)>0,G(n)>0$.
【证法4】由
$ integral_n^(n+1)frac(1,n+1)dif x<integral_n^(n+1)frac(1,x)dif x<integral_n^(n+1)frac(1,n)dif x $
即得结论.
（Ⅱ）【证法2】改写为
$ a_n=frac(1,n)+sum_(k=1)^(n-1)[frac(1,k)-ln(1+frac(1,k))]. $
因 $1/k-ln(1+1/k) tilde.op 1/(2k^2)$，且 $sum 1/k^2$ 收敛，故 $a_n$ 收敛.
【典型错误】应利用（Ⅰ）为（Ⅱ）提供的单调性和有界性，不能直接用夹逼定理断言收敛.
]

#answer("20.")[
#align(center)[#canvas({
 import draw: *
 line((-1.4,0),(1.9,0),mark:(end:">"));line((0,-1.3),(0,2.5),mark:(end:">"))
 for (center,start,end) in (((0,0),30deg,150deg),((0,1),210deg,330deg)){arc((rel:(calc.cos(start),calc.sin(start)),to:center),start:start,stop:end,radius:1,stroke:(dash:"dashed"))}
 arc((calc.cos(150deg),.5),start:150deg,stop:390deg,radius:1)
 arc((calc.cos(330deg),.5),start:330deg,stop:570deg,radius:1)
 line((-.866,.5),(.866,.5),stroke:(dash:"dashed"))
 for (pos,label) in (((-.15,-.15),$O$),((1.1,-.15),[1]),((-1.1,-.15),[−1]),((-.16,-1),[−1]),((-.15,1),[1]),((-.15,2),[2]),((-.2,.5),$1/2$),((1.9,-.15),$x$),((-.2,2.5),$y$),((1.5,1.7),$x^2+y^2=2y$),((1.5,-.7),$x^2+y^2=1$)){content(pos,label)}
})]

解　（Ⅰ）由对称性，所求的容积为
$ V=2pi integral_(-1)^(1/2)x^2 dif y=2pi integral_(-1)^(1/2)(1-y^2)dif y=(9pi)/4, $
即该容器的容积为 $ (9pi)/4 $ m³.
（Ⅱ）所求的功为
$ W=10^3 integral_(-1)^(1/2)pi(1-y^2)(2-y)g dif y+10^3 integral_(1/2)^2 pi[1-(y-1)^2](2-y)g dif y $
$ =10^3 pi g[integral_(-1)^(1/2)(2-y-2y^2+y^3)dif y+integral_(1/2)^2(4y-4y^2+y^3)dif y] $
$ =(27 times 10^3)/8 pi g, $
即所求的功为 $ (27 times 10^3)/8 pi g $ J.

【解法2】直接分段求体积：
$ V=pi integral_(-1)^(1/2)(1-y^2)dif y+pi integral_(1/2)^2(2y-y^2)dif y=frac(9pi,4). $
抽水做功须按高度分段，薄层水的重量为 $10^3 g$ 乘截面积及厚度，提升距离为 $2-y$. 不能将绕 $y$ 轴旋转误作绕 $x$ 轴.
]

#answer("21.")[
解　因为 $f(1,y)=0,f(x,1)=0$，所以
$ f'_y(1,y)=0,quad f'_x(x,1)=0, $
从而
$ I=integral_0^1 x dif x integral_0^1 y f''_(x y)(x,y)dif y $
$ =integral_0^1 x[y f'_x(x,y)|_(y=0)^(y=1)-integral_0^1 f'_x(x,y)dif y]dif x $
$ =-integral_0^1 dif y integral_0^1 x f'_x(x,y)dif x $
$ =-integral_0^1[x f(x,y)|_(x=0)^(x=1)-integral_0^1 f(x,y)dif x]dif y $
$ =integral_0^1 dif y integral_0^1 f(x,y)dif x=a. $

【典型错误】取特殊函数 $f(x,y)=4a(x-1)(y-1)$ 虽能算出 $I=a$，但不能由一个特殊函数推断一般函数均如此. 本题须运用分部积分和积分次序交换.
]

#answer("22.")[
解　（Ⅰ）4个3维向量 $beta_1,beta_2,beta_3,alpha_i$ 线性相关 $(i=1,2,3)$，若 $beta_1,beta_2,beta_3$ 线性无关，则 $alpha_i$ 可由 $beta_1,beta_2,beta_3$ 线性表示 $(i=1,2,3)$，与题设矛盾，于是 $beta_1,beta_2,beta_3$ 线性相关. 从而
$ |beta_1,beta_2,beta_3|=det(1,1,3;1,2,4;1,3,a)=a-5=0, $
于是 $a=5$. 此时，$alpha_1$ 不能由向量组 $beta_1,beta_2,beta_3$ 线性表示.
（Ⅱ）令 $A=(alpha_1,alpha_2,alpha_3;beta_1,beta_2,beta_3)$，对 $A$ 施以初等行变换：
$ A=mat(1,0,1,1,1,3;0,1,3,1,2,4;1,1,5,1,3,5,augment:#3)->mat(1,0,0,2,1,5;0,1,0,4,2,10;0,0,1,-1,0,-2,augment:#3), $
从而
$ beta_1=2alpha_1+4alpha_2-alpha_3,quad beta_2=alpha_1+2alpha_2,quad beta_3=5alpha_1+10alpha_2-2alpha_3. $

（Ⅰ）补充验证：当 $a=5$ 时，方程 $x_1 beta_1+x_2 beta_2+x_3 beta_3=alpha_1$ 的增广矩阵化为
$ mat(1,1,3,1;1,2,4,0;1,3,5,1,augment:#3)->mat(1,1,3,1;0,1,1,-1;0,0,0,2,augment:#3). $
系数矩阵与增广矩阵秩不同，故无解.
【典型错误】第（Ⅱ）问三个方程组具有同一系数矩阵，可一起作行变换，逐个求解会增加运算量.
]

#answer("23.")[
解　（Ⅰ）由于 $A$ 的秩为2，故0是 $A$ 的一个特征值. 由题设可得
$ A vec(1,0,-1)=-vec(1,0,-1),quad A vec(1,0,1)=vec(1,0,1). $
所以 −1 是 $A$ 的一个特征值，且属于 −1 的特征向量为 $k_1 vec(1,0,-1)$，$k_1$ 为任意非零常数；1也是 $A$ 的一个特征值，且属于1的特征向量为 $k_2 vec(1,0,1)$，$k_2$ 为任意非零常数.
设 $vec(x_1,x_2,x_3)$ 是 $A$ 的属于0的特征向量，由于 $A$ 为实对称矩阵，则
$ (1,0,-1)vec(x_1,x_2,x_3)=0,quad (1,0,1)vec(x_1,x_2,x_3)=0, $
即 $cases(x_1-x_3=0,x_1+x_3=0)$，于是属于0的特征向量为 $k_3 vec(0,1,0)$，$k_3$ 为任意非零常数.
（Ⅱ）令 $P=mat(1,1,0;0,0,1;-1,1,0)$，则 $P^(-1)A P=mat(-1,0,0;0,1,0;0,0,0)$，于是
$ A=P mat(-1,0,0;0,1,0;0,0,0)P^(-1) $
$ =mat(1,1,0;0,0,1;-1,1,0)mat(-1,0,0;0,1,0;0,0,0)mat(1/2,0,-1/2;1/2,0,1/2;0,1,0) $
$ =mat(0,0,1;0,0,0;1,0,0). $

【解法2】设 $A=mat(a,b,c;b,d,e;c,e,f)$，代入题设得
$ cases(a-c=-1,a+c=1,b-e=0,b+e=0,c-f=1,c+f=1). $
故 $a=b=e=f=0,c=1$，又 $r(A)=2$，得 $d=0$，于是
$ A=mat(0,0,1;0,0,0;1,0,0). $
其特征多项式为
$ det(lambda,0,-1;0,lambda,0;-1,0,lambda)=lambda(lambda-1)(lambda+1). $
分别解 $(lambda E-A)x=0$，得到特征值 $0,1,-1$ 及对应特征向量 $k_1 vec(0,1,0),k_2 vec(1,0,1),k_3 vec(1,0,-1)$，其中常数均非零.
【注】也可将解法1中各列单位化，取正交矩阵
$ Q=mat(1/sqrt(2),1/sqrt(2),0;0,0,1;-1/sqrt(2),1/sqrt(2),0), $
则 $A=Q op("diag")(-1,1,0)Q^T$.
【典型错误】特征向量必须非零. 特征值为零时，其特征向量仍须是 $A x=0$ 的非零解，不能任取向量.
]

