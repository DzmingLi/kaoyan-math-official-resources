#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2011, subject: "三", title: "2011年全国硕士研究生入学统一考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2011 数学三试卷参考解答

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
A. 【解】收敛级数加括号后仍收敛，故 A 正确. B 的反例为 $u_n=(-1)^(n-1)$，括号后的项均为零，但原级数发散. C 的反例为 $u_n=(-1)^(n-1)/n$，原级数收敛，而
$ sum_(n=1)^infinity(u_(2n-1)-u_(2n))=sum_(n=1)^infinity(frac(1,2n-1)+frac(1,2n)) $
发散. D 的反例为 $u_n=1/n$，原级数发散，而差的级数 $sum 1/[2n(2n-1)]$ 收敛.
]

#answer("4.")[
B. 【解】在 $0<x<pi/4$ 上，$sin x<cos x$，故 $I<K$. 又
$ J=integral_0^(pi/4)ln cot x dif x=K-I>K, $
其中 $I<0$，所以 $I<K<J$. 本题虽涉及反常积分，比较大小并不需要先求出三个积分.
]

#answer("5.")[
D. 【解】将第 $2$ 列加到第 $1$ 列对应右乘初等矩阵 $P_1$，交换第 $2,3$ 行对应左乘 $P_2$，其中
$ P_1=mat(1,0,0;1,1,0;0,0,1), quad P_2=mat(1,0,0;0,0,1;0,1,0). $
由 $P_2 A P_1=E$ 得 $A=P_2^(-1)P_1^(-1)=P_2 P_1^(-1)$. 注意行变换与列变换的乘法位置不同.
]

#answer("6.")[
C. 【解】$eta_2-eta_1,eta_3-eta_1$ 是 $A x=0$ 的两个线性无关解. 由于三个非齐次解线性无关，$r(A)=1$，齐次方程的基础解系含两个向量，故这两个差向量即构成基础解系. 又
$ A frac(eta_2+eta_3,2)=frac(A eta_2+A eta_3,2)=beta. $
因此通解为
$ frac(eta_2+eta_3,2)+k_1(eta_2-eta_1)+k_2(eta_3-eta_1). $
应同时考虑特解与齐次通解.
]

#answer("7.")[
D. 【解】$f_1(x)F_2(x)+f_2(x)F_1(x)>=0$，且
$ integral_(-infinity)^infinity[f_1(x)F_2(x)+f_2(x)F_1(x)]dif x=[F_1(x)F_2(x)]_(-infinity)^infinity=1. $
因此它满足概率密度的两个条件.
]

#answer("8.")[
D. 【解】由泊松分布 $E X_i=D X_i=lambda$ 及样本独立性，
$ E T_1=lambda, quad E T_2=lambda+frac(lambda,n)>E T_1, $
$ D T_1=frac(lambda,n), quad D T_2=frac(lambda,n-1)+frac(lambda,n^2)>D T_1. $
]

= 二、填空题

#answer("9.")[
$(1+3x)e^(3x)$. 【解】由重要极限，$f(x)=x lim_(t->0)[(1+3t)^(1/(3t))]^(3x)=x e^(3x)$，故 $f'(x)=(1+3x)e^(3x)$.
]

#answer("10.")[
$(1+2ln 2)(dif x-dif y)$. 【解】取对数得 $ln z=(x/y)ln(1+x/y)$，因此
$ frac(z'_x,z)=frac(1,y)[ln(1+x/y)+frac(x,x+y)], $
$ frac(z'_y,z)=-frac(x,y^2)[ln(1+x/y)+frac(x,x+y)]. $
代入 $(1,1)$ 得 $z'_x=1+2ln 2,z'_y=-(1+2ln 2)$，所以全微分为所填结果. 单独填写一个偏导数不能代替全微分.
]

#answer("11.")[
$y=-2x$. 【解】将方程改写为 $x+y+pi/4=arctan e^y$，对 $x$ 求导得
$ 1+y'=frac(e^y,1+e^(2y))y'. $
代入 $(0,0)$ 得 $y'=-2$，切线为 $y=-2x$. 注意正切函数与反正切函数的导数公式不同.
]

#answer("12.")[
$4pi/3$. 【解】所求旋转体体积
$ V=pi integral_1^2 y^2 dif x=pi integral_1^2(x^2-1)dif x=frac(4pi,3). $
]

#answer("13.")[
$3y_1^2$. 【解】$A$ 各行元素之和为 $3$，故 $A vec(1,1,1)=3vec(1,1,1)$，$3$ 为特征值. 实对称矩阵的秩为 $1$，其余两个特征值为零，所以正交变换后的标准形为 $3y_1^2$. 交换坐标顺序也可写成 $3y_2^2$ 或 $3y_3^2$.
]

#answer("14.")[
$mu sigma^2+mu^3$. 【解】二维正态分布中相关系数为零等价于独立，因此
$ E(X Y^2)=E X E Y^2=mu(sigma^2+mu^2)=mu sigma^2+mu^3. $
注意 $E Y^2=D Y+(E Y)^2$.
]

= 三、解答题

#answer("15.")[
解
$ lim_(x->0)(sqrt(1+2sin x)-x-1)/(x ln(1+x))=lim_(x->0)(sqrt(1+2sin x)-x-1)/x^2 $
$ =lim_(x->0)((cos x)/sqrt(1+2sin x)-1)/(2x) $
$ =lim_(x->0)(cos x-sqrt(1+2sin x))/(2x) dot 1/sqrt(1+2sin x) $
$ =lim_(x->0)(-sin x-(cos x)/sqrt(1+2sin x))/2=-1/2. $

【解法2】先有理化分子，并以 $x^2$ 替换等价的分母，得
$ lim_(x->0)frac(2sin x-2x-x^2,x^2(sqrt(1+2sin x)+x+1)). $
由于 $lim_(x->0)(sin x-x)/x^2=0$，所以极限为 $-1/2$.
【解法3】由泰勒公式
$ sqrt(1+2sin x)=1+sin x-frac(1,2)sin^2 x+o(x^2), $
故原极限为
$ lim_(x->0)frac(sin x-x,x^2)-frac(1,2)lim_(x->0)frac(sin^2 x,x^2)=-frac(1,2). $
适时用等价无穷小简化分母，可减少运算.
]

#answer("16.")[
解
$ (partial z)/(partial x)=f'_1(x+y,f(x,y))+f'_2(x+y,f(x,y)) dot f'_1(x,y), $
$ (partial^2 z)/(partial x partial y)=f''_(11)(x+y,f(x,y)) $
$ +f''_(12)(x+y,f(x,y)) dot f'_2(x,y) $
$ +f''_(12)(x,y) dot f'_2(x+y,f(x,y)) $
$ +f'_1(x,y)f''_(21)(x+y,f(x,y)) $
$ +f'_1(x,y)f''_(22)(x+y,f(x,y)) dot f'_2(x,y). $
由题意知 $f'_1(1,1)=0,f'_2(1,1)=0$，从而
$ ((partial^2 z)/(partial x partial y))|_((1,1))=f''_(11)(2,2)+f'_2(2,2)f''_(12)(1,1). $

【注】也可令 $u=x+y,v=f(x,y)$，按中间变量写为
$ z'_x=f_u(u,v)+f_v(u,v)f_x(x,y), $
$ z''_(x y)=f_(u u)+f_(u v)f_y+[f_(v u)+f_(v v)f_y]f_x+f_v f_(x y). $
在 $(x,y)=(1,1)$ 时，$u=v=2,f_x=f_y=0$，即得上述结果. 须区分中间变量处 $(2,2)$ 的偏导与自变量处 $(1,1)$ 的偏导.
]

#answer("17.")[
解　利用分部积分法可得
$ integral(arcsin sqrt(x)+ln x)/sqrt(x)dif x=2integral(arcsin sqrt(x)+ln x)dif sqrt(x) $
$ =2sqrt(x)(arcsin sqrt(x)+ln x)-integral(dif x)/sqrt(1-x)-2integral(dif x)/sqrt(x) $
$ =2sqrt(x)(arcsin sqrt(x)+ln x)+integral(dif(1-x))/sqrt(1-x)-4sqrt(x) $
$ =2sqrt(x)(arcsin sqrt(x)+ln x)+2sqrt(1-x)-4sqrt(x)+C. $

【解法2】令 $t=sqrt(x)$，则原式为 $2integral arcsin t dif t+4integral ln t dif t$. 分部积分得
$ integral arcsin t dif t=t arcsin t+sqrt(1-t^2)+C_1, $
$ integral ln t dif t=t ln t-t+C_2. $
代回即得
$ 2sqrt(x)arcsin sqrt(x)+2sqrt(1-x)+2sqrt(x)ln x-4sqrt(x)+C. $
注意分部积分公式中的减号及积分常数.
]

#answer("18.")[
证　设 $f(x)=4arctan x-x+(4pi)/3-sqrt(3)$，则
$ f'(x)=4/(1+x^2)-1=((sqrt(3)-x)(sqrt(3)+x))/(1+x^2). $
令 $f'(x)=0$，解得驻点 $x_1=-sqrt(3),x_2=sqrt(3)$.
由单调性判别法知：$f(x)$ 在 $(-infinity,-sqrt(3)]$ 上单调减少，在 $[-sqrt(3),sqrt(3)]$ 上单调增加，在 $[sqrt(3),+infinity)$ 上单调减少.
因为 $f(-sqrt(3))=0$，且由上述单调性可知 $f(-sqrt(3))$ 是 $f(x)$ 在 $(-infinity,sqrt(3)]$ 上的最小值，所以 $x=-sqrt(3)$ 是函数 $f(x)$ 在 $(-infinity,sqrt(3)]$ 上唯一的零点.
又因为 $f(sqrt(3))=2((4pi)/3-sqrt(3))>0$，且 $lim_(x->+infinity)f(x)=-infinity$，所以由连续函数的介值定理知 $f(x)$ 在 $(sqrt(3),+infinity)$ 内存在零点，且由 $f(x)$ 的单调性知零点唯一.
综上可知，$f(x)$ 在 $(-infinity,+infinity)$ 内恰有两个零点，即原方程恰有两个实根.

【典型错误】证明正半轴上存在另一个根，不能仅写极大值大于零，还须指出 $lim_(x->+infinity)f(x)=-infinity$，再用介值定理.
]

#answer("19.")[
解
$ integral.double_(D_t)f'(x+y)dif x dif y=integral_0^t dif x integral_0^(t-x)f'(x+y)dif y $
$ =integral_0^t[f(t)-f(x)]dif x=t f(t)-integral_0^t f(x)dif x, $
又 $integral.double_(D_t)f(t)dif x dif y=t^2/2 f(t)$，由题设有
$ t f(t)-integral_0^t f(x)dif x=t^2/2 f(t). $
两边求导整理得 $(2-t)f'(t)=2f(t)$，解得 $f(t)=C/(2-t)^2$.
代入 $f(0)=1$，得 $C=4$，故
$ f(x)=4/(2-x)^2 quad (0<=x<=1). $

【典型错误】化为累次积分后仍须算出内层积分及常量项的面积积分，再对积分等式求导，转成微分方程并利用初始条件求解.
]

#answer("20.")[
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

#answer("21.")[
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

#answer("22.")[
解　（Ⅰ）由 $P{X^2=Y^2}=1$ 得 $P{X^2!=Y^2}=0$，所以
$ P{X=0,Y=-1}=P{X=0,Y=1}=P{X=1,Y=0}=0, $
故 $(X,Y)$ 的概率分布为
#table(columns:4,[$X$ / $Y$],[−1],[0],[1],[0],[0],[$1/3$],[0],[1],[$1/3$],[0],[$1/3$])
（Ⅱ）$Z=X Y$ 的可能取值为 −1，0，1. 由 $(X,Y)$ 的概率分布可得 $Z$ 的概率分布为
#table(columns:4,[$Z$],[−1],[0],[1],[$P$],[$1/3$],[$1/3$],[$1/3$])
（Ⅲ）由 $X,Y$ 及 $Z$ 的概率分布得
$ E X=2/3,quad D X=2/9, $
$ E Y=0,quad D Y=2/3, $
$ E Z=E(X Y)=0, $
所以 $op("Cov")(X,Y)=0,rho_(X Y)=0$.
]

#answer("23.")[
解　（Ⅰ）$(X,Y)$ 的概率密度为
$ f(x,y)=cases(1 & (x,y)in G,0 & "其他"). $
$X$ 的概率密度为 $f_X(x)=integral_(-infinity)^(+infinity)f(x,y)dif y$.
当 $x<0$ 或 $x>2$ 时，$f_X(x)=0$；
当 $0<=x<=1$ 时，$f_X(x)=integral_0^x dif y=x$；
当 $1<x<=2$ 时，$f_X(x)=integral_0^(2-x)dif y=2-x$.
综上所述，有
$ f_X(x)=cases(x & 0<=x<=1,2-x & 1<x<=2,0 & "其他"). $
（Ⅱ）$Y$ 的概率密度为
$ f_Y(y)=integral_(-infinity)^(+infinity)f(x,y)dif x=cases(integral_y^(2-y)dif x & 0<=y<=1,0 & "其他") $
$ =cases(2(1-y) & 0<=y<=1,0 & "其他"). $
在 $Y=y(0<=y<1)$ 时，$X$ 的条件概率密度为
$ f_(X|Y)(x|y)=f(x,y)/f_Y(y)=cases(1/(2(1-y)) & y<x<2-y,0 & "其他"). $

（Ⅰ）【解法2】利用均匀分布的面积比，
$ F_X(u)=cases(0 & u<0,u^2/2 & 0<=u<1,1-(2-u)^2/2 & 1<=u<2,1 & u>=2). $
求导即得同一边缘密度.
【典型错误】条件密度须注明 $0<=y<1$ 与 $y<x<2-y$ 的范围，不能把 $x$ 的范围简单写成 $(0,2)$.
]

