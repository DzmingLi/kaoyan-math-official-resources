#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2010, subject: "一", title: "2010年全国硕士研究生入学统一考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2010 数学一试卷参考解答

= 一、选择题

#answer("1.")[
C. 【解法1】将底数写成 $1+frac((a-b)x+a b,(x-a)(x+b))$. 当 $a!=b$ 时，由重要极限及
$ lim_(x->+infinity)frac([(a-b)x+a b]x,(x-a)(x+b))=a-b, $
得原极限为 $e^(a-b)$. 当 $a=b$ 时，指数中相应的乘积趋于零，原极限为 $1$，结论仍成立.
【解法2】取对数，用洛必达法则：
$ lim_(x->+infinity)frac(2ln x-ln(x-a)-ln(x+b),1/x) $
$ =lim_(x->+infinity)frac((a-b)x^3+2a b x^2,x(x-a)(x+b))=a-b. $
所以原极限为 $e^(a-b)$.
]

#answer("2.")[
B. 【解】分别对 $x,y$ 求偏导，得
$ -frac(y,x^2)F'_1+(frac(z'_x,x)-frac(z,x^2))F'_2=0, $
$ frac(1,x)F'_1+frac(z'_y,x)F'_2=0. $
第一式乘 $x^2$，第二式乘 $x y$，相加得 $(x z'_x+y z'_y)F'_2=z F'_2$. 由 $F'_2!=0$，得 $x z'_x+y z'_y=z$.
]

#answer("3.")[
D. 【解】须分别检查两个端点. 当 $x->0^+$ 时，$ln(1-x) tilde.op -x$，所以
$ frac([ln^2(1-x)]^(1/m),x^(1/n)) tilde.op x^(2/m-1/n). $
对正整数 $m,n$，有 $2/m-1/n>-1$，故在零点附近可积. 当 $x->1^-$ 时，任意对数幂的增长均慢于 $(1-x)^(-1/2)$，即
$ lim_(x->1^-)sqrt(1-x)frac([ln^2(1-x)]^(1/m),x^(1/n))=0. $
又 $integral_0^1(1-x)^(-1/2)dif x$ 收敛，故原反常积分收敛.
]

#answer("4.")[
D. 【解】取单位正方形 $D$，函数 $f(x,y)=frac(1,(1+x)(1+y^2))$，将两边各等分为 $n$ 份，取样点 $(i/n,j/n)$. 因小矩形面积为 $1/n^2$，所给和式就是黎曼和，故其极限为
$ integral_0^1 dif x integral_0^1 frac(1,(1+x)(1+y^2))dif y. $
]

#answer("5.")[
A. 【解】由矩阵的阶数得 $r(A)<=m,r(B)<=m$，而
$ m=r(E_m)=r(A B)<=min(r(A),r(B)). $
因此 $r(A)=r(B)=m$.
]

#answer("6.")[
D. 【解】由 $A^2+A=O$，任一特征值满足 $lambda^2+lambda=0$，故只能为 $0$ 或 $-1$. 实对称矩阵可正交对角化，又 $r(A)=3$，所以它的特征值为 $-1,-1,-1,0$，与 $op("diag")(-1,-1,-1,0)$ 相似.
]

#answer("7.")[
C. 【解】分布函数在 $x=1$ 处的跳跃量等于该点的概率：
$ P(X=1)=F(1)-F(1-)=1-e^(-1)-frac(1,2)=frac(1,2)-e^(-1). $
注意分布函数并非处处连续，不能将本题当作纯连续型分布处理.
]

#answer("8.")[
A. 【解】正态密度在零点两侧的积分各为 $1/2$；区间 $[-1,3]$ 上的均匀密度在正半轴的积分为 $3/4$. 由密度的归一性，
$ frac(a,2)+frac(3b,4)=1, $
即 $2a+3b=4$.
]

= 二、填空题

#answer("9.")[
$0$. 【解法1】由参数方程求导，得
$ frac(dif y,dif x)=-e^t ln(1+t^2), $
$ frac(dif^2 y,dif x^2)=e^(2t)[frac(2t,1+t^2)+ln(1+t^2)]. $
代入 $t=0$ 得 $0$.
【解法2】由 $t=-ln x$，有 $y=integral_0^(-ln x)ln(1+u^2)dif u$，所以
$ y'=-frac(1,x)ln(1+ln^2 x), $
$ y''=frac(1,x^2)[ln(1+ln^2 x)-frac(2ln x,1+ln^2 x)]. $
代入 $x=1$，得 $y''=0$.
]

#answer("10.")[
$-4pi$. 【解】令 $t=sqrt(x)$，两次分部积分得
$ I=2integral_0^pi t^2 cos t dif t=[2t^2 sin t]_0^pi-4integral_0^pi t sin t dif t $
$ =[4t cos t]_0^pi-4integral_0^pi cos t dif t=-4pi. $
]

#answer("11.")[
$0$. 【解法1】按折线的两段分别参数化，得
$ I=integral_(-1)^0[x(1+x)+x^2]dif x+integral_0^1[x(1-x)-x^2]dif x=0. $
【解法2】补上从 $(1,0)$ 沿横轴到 $(-1,0)$ 的线段，其积分为零. 闭合曲线方向为顺时针，格林公式给出
$ I=-integral.double_D(2x-x)dif x dif y=0, $
其中 $D$ 关于纵轴对称.
]

#answer("12.")[
$2/3$. 【解】设投影圆盘为 $D$，体积和对 $x O y$ 面的一次矩分别为
$ V=integral.double_D(1-x^2-y^2)dif x dif y=integral_0^(2pi)dif theta integral_0^1(1-r^2)r dif r=frac(pi,2), $
$ M=frac(1,2)integral.double_D[1-(x^2+y^2)^2]dif x dif y=frac(pi,3). $
所以形心的纵坐标 $overline(z)=M/V=2/3$.
]

#answer("13.")[
$6$. 【解法1】三个向量组成的矩阵经初等行变换化为
$ mat(1,1,2;2,1,1;-1,0,1;0,2,a)->mat(1,1,2;0,1,3;0,0,a-6;0,0,0). $
其秩为 $2$，故 $a=6$.
【解法2】前两个向量线性无关，令 $alpha_3=k_1 alpha_1+k_2 alpha_2$，则
$ cases(k_1+k_2=2,2k_1+k_2=1,-k_1=1,2k_2=a). $
解得 $k_1=-1,k_2=3,a=6$.
]

#answer("14.")[
$2$. 【解】由 $sum_(k=0)^infinity C/k!=1$ 得 $C=e^(-1)$，于是 $X$ 服从参数为 $1$ 的泊松分布. 所以
$ E(X^2)=D X+(E X)^2=1+1=2. $
]

= 三、解答题

#answer("15.")[
解　对应齐次方程 $y''-3y'+2y=0$ 的两个特征根为 $r_1=1,r_2=2$，其通解为 $Y=C_1 e^x+C_2 e^(2x)$.
设原方程的特解形式为 $y^*=x(a x+b)e^x$，则
$ (y^*)'=[a x^2+(2a+b)x+b]e^x, $
$ (y^*)''=[a x^2+(4a+b)x+2a+2b]e^x, $
代入原方程得 $a=-1,b=-2$，故所求通解为 $y=C_1 e^x+C_2 e^(2x)-x(x+2)e^x$.
【解法2】令 $D$ 表示微分算子，利用指数移位，有
$ y^*=frac(1,D^2-3D+2)(2x e^x)=e^x frac(1,D^2-D)(2x). $
因作用于一次多项式时高阶导数为零，故
$ y^*=e^x frac(1,D)(-1-D)(2x)=e^x integral(-2x-2)dif x=-(x^2+2x)e^x. $
【典型错误】特征方程的根为 $1,2$，不是 $-1,-2$. 由于右端含 $e^x$，待定特解必须额外乘一个 $x$.
]

#answer("16.")[
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

#answer("17.")[
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

#answer("18.")[
解　记 $u_n(x)=((-1)^(n-1))/(2n-1)x^(2n)$，由于
$ lim_(n->infinity)|u_(n+1)(x)/u_n(x)|=lim_(n->infinity)(2n-1)/(2n+1)x^2=x^2, $
所以当 $x^2<1$，即 $|x|<1$ 时，$sum_(n=1)^infinity u_n(x)$ 绝对收敛；当 $|x|>1$ 时，$sum_(n=1)^infinity u_n(x)$ 发散. 因此幂级数的收敛半径 $R=1$.
当 $x=plus.minus 1$ 时，原级数为 $sum_(n=1)^infinity((-1)^(n-1))/(2n-1)$，由莱布尼茨判别法知此级数收敛，因此幂级数的收敛域为 $[-1,1]$.
设 $S(x)=sum_(n=1)^infinity((-1)^(n-1))/(2n-1)x^(2n-1)(-1<=x<=1)$，则
$ S'(x)=sum_(n=1)^infinity(-1)^(n-1)x^(2n-2)=1/(1+x^2), $
又 $S(0)=0$，故 $S(x)=integral_0^x 1/(1+t^2)dif t=arctan x$，于是
$ sum_(n=1)^infinity((-1)^(n-1))/(2n-1)x^(2n)=x S(x)=x arctan x,quad x in[-1,1]. $
【注】也可直接记原级数的和为 $S(x)$. 对 $0<|x|<1$，
$ frac(S(x),x)=sum_(n=1)^infinity frac((-1)^(n-1),2n-1)x^(2n-1), $
$ [frac(S(x),x)]'=frac(1,1+x^2). $
又 $lim_(x->0)S(x)/x=0$，故 $S(x)/x=arctan x$，从而 $S(x)=x arctan x$. 端点处由幂级数和函数的连续性得到相同表达式.
【典型错误】逐项求导应先在收敛区间内部进行；收敛域须另行检验端点. 交错几何级数的和是 $1/(1+x^2)$，其原函数是 $arctan x$.
]

#answer("19.")[
解　椭球面 $S$ 上点 $P(x,y,z)$ 处的法向量是 $bold(n)={2x,2y-z,2z-y}$，点 $P$ 处的切平面与 $x O y$ 面垂直的充要条件是 $bold(n) dot bold(k)=0(bold(k)={0,0,1})$，即 $2z-y=0$，所以点 $P$ 的轨迹 $C$ 的方程为
$ cases(2z-y=0,x^2+y^2+z^2-y z=1),quad "即" cases(2z-y=0,x^2+3/4 y^2=1). $
取 $D={(x,y)|x^2+3/4 y^2<=1}$，记 $Sigma$ 的方程为 $z=z(x,y),(x,y) in D$，由于
$ sqrt(1+((partial z)/(partial x))^2+((partial z)/(partial y))^2) \
=sqrt(1+((2x)/(y-2z))^2+((2y-z)/(y-2z))^2) \
=(sqrt(4+y^2+z^2-4y z))/(|y-2z|), $
所以
$ I=integral.double_D ((x+sqrt(3))|y-2z|)/(sqrt(4+y^2+z^2-4y z)) sqrt(1+((partial z)/(partial x))^2+((partial z)/(partial y))^2)dif x dif y \
=integral.double_D(x+sqrt(3))dif x dif y \
=sqrt(3)integral.double_D dif x dif y=2pi. $
【典型错误】先由两个平面的法向量垂直确定轨迹，再将第一型曲面积分化成投影上的二重积分. 应保留面积元素中的绝对值，并利用椭圆关于纵轴的对称性说明 $integral.double_D x dif x dif y=0$.
]

#answer("20.")[
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

#answer("21.")[
解　（Ⅰ）由题设，$A$ 的特征值为1，1，0，且 $(1,0,1)^T$ 为 $A$ 的属于特征值0的一个特征向量.
设 $(x_1,x_2,x_3)^T$ 为 $A$ 的属于特征值1的特征向量，因为 $A$ 的属于不同特征值的特征向量正交，所以 $(x_1,x_2,x_3)mat(1;0;1)=0$，即 $x_1+x_3=0$. 取 $(sqrt(2)/2,0,-sqrt(2)/2)^T,(0,1,0)^T$ 为 $A$ 的属于特征值1的两个正交的单位特征向量.
令 $Q=mat(sqrt(2)/2,0,sqrt(2)/2;0,1,0;-sqrt(2)/2,0,sqrt(2)/2)$，则有 $Q^T A Q=mat(1,0,0;0,1,0;0,0,0)$，故
$ A=Q mat(1,0,0;0,1,0;0,0,0)Q^T=1/2 mat(1,0,-1;0,2,0;-1,0,1). $
（Ⅱ）由（Ⅰ）知 $A$ 的特征值为1，1，0，于是 $A+E$ 的特征值为2，2，1，又 $A+E$ 为实对称矩阵，故 $A+E$ 为正定矩阵.
（Ⅱ）【证法2】直接计算 $A+E$ 的顺序主子式：
$ Delta_1=frac(3,2)>0, quad Delta_2=3>0, quad Delta_3=4>0. $
由正定矩阵的判别准则，$A+E$ 正定.
【典型错误】正交变换后的标准形系数就是实对称矩阵的特征值，且 $Q$ 的第 $3$ 列对应特征值 $0$.
]

#answer("22.")[
解　因
$ f_X(x)=integral_(-infinity)^(+infinity)f(x,y)dif y \
=A integral_(-infinity)^(+infinity)e^(-2x^2+2x y-y^2)dif y \
=A integral_(-infinity)^(+infinity)e^(-(y-x)^2-x^2)dif y \
=A e^(-x^2)integral_(-infinity)^(+infinity)e^(-(y-x)^2)dif y \
=A sqrt(pi)e^(-x^2),quad -infinity<x<+infinity, $
所以 $1=integral_(-infinity)^(+infinity)f_X(x)dif x=A sqrt(pi)integral_(-infinity)^(+infinity)e^(-x^2)dif x=A pi$，从而 $A=1/pi$.
当 $x in(-infinity,+infinity)$ 时，
$ f_(Y|X)(y|x)=(f(x,y))/(f_X(x)) \
=(1/pi e^(-2x^2+2x y-y^2))/(1/sqrt(pi)e^(-x^2)) \
=1/sqrt(pi)e^(-x^2+2x y-y^2)=1/sqrt(pi)e^(-(x-y)^2),quad -infinity<y<+infinity. $
【解法2】先利用联合密度的归一性，并令 $u=y-x$：
$ 1=A integral_(-infinity)^infinity e^(-x^2)dif x integral_(-infinity)^infinity e^(-(y-x)^2)dif y $
$ =A integral_(-infinity)^infinity e^(-x^2)dif x integral_(-infinity)^infinity e^(-u^2)dif u=A pi. $
故 $A=1/pi$. 再积分得 $f_X(x)=e^(-x^2)/sqrt(pi)$，代入 $f_(Y|X)(y|x)=f(x,y)/f_X(x)$，得到解法1的条件密度.
【典型错误】配方后，积分中的平移不改变高斯积分的值. 条件密度应除以条件变量的边缘密度.
]

#answer("23.")[
解　记 $p_1=1-theta,p_2=theta-theta^2,p_3=theta^2$. 由于 $N_i~B(n,p_i),i=1,2,3$，故 $E N_i=n p_i$，于是
$ E T=a_1 E N_1+a_2 E N_2+a_3 E N_3 \
=n[a_1(1-theta)+a_2(theta-theta^2)+a_3 theta^2]. $
为使 $T$ 是 $theta$ 的无偏估计量，必有 $n[a_1(1-theta)+a_2(theta-theta^2)+a_3 theta^2]=theta$，因此
$ cases(a_1=0,a_2-a_1=1/n,a_3-a_2=0), $
由此得 $a_1=0,a_2=a_3=1/n$.
由于 $N_1+N_2+N_3=n$，故 $T=1/n(N_2+N_3)=1/n(n-N_1)=1-N_1/n$.
注意到 $N_1~B(n,1-theta)$，故 $D T=1/n^2 D N_1=(n(1-theta)theta)/n^2=(theta(1-theta))/n$.
【典型错误】每个 $N_i$ 都服从二项分布，但 $N_1,N_2,N_3$ 并不相互独立. 计算方差时应先利用 $N_1+N_2+N_3=n$ 化成 $T=1-N_1/n$，不能直接把三个方差相加.
]

