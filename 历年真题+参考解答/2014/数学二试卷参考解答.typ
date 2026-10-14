#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2014, subject: "二", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2014 数学二试卷参考解答

= 一、选择题

#answer("1.")[
B. 【解】当 $x->0^+$ 时，$ln(1+2x) tilde.op 2x$，$1-cos x tilde.op x^2/2$. 故两者的相应幂为比 $x$ 高阶的无穷小量，分别要求 $alpha>1$ 和 $2/alpha-1>0$，即 $0<alpha<2$. 合并得 $1<alpha<2$.
]

#answer("2.")[

C. 【解】对于 $y=x+sin(1/x)$，有 $lim_(x->infinity)y/x=1$，$lim_(x->infinity)(y-x)=0$，故斜渐近线为 $y=x$. 其余选项中，$x+sin x$ 与直线 $y=x$ 的差没有极限，二次函数不可能有斜渐近线；各函数也没有水平或铅直渐近线.

]

#answer("3.")[

D. 【解】$f''(x)>=0$ 表明函数图形位于连接两端点的弦的下方，故 $f(x)<=f(0)(1-x)+f(1)x$. 仅有 $f'(x)>=0$ 不能得到 A、B：例如 $f(x)=(x-1/2)^3$，弦为 $g(x)=x/4-1/8$，而 $f(1/4)>g(1/4),f(3/4)<g(3/4)$. 取 $f(x)=x^2$ 又可排除 C.

]

#answer("4.")[
C. 【解】由参数方程，
$ y'_x=frac(2t+4,2t)=(t+2)/t, quad y''_(x x)=frac(-2/t^2,2t)=-1/t^3. $
在 $t=1$ 处，曲率 $K=abs(y'')/(1+y'^2)^(3/2)=1/(10sqrt(10))$，故曲率半径 $rho=1/K=10sqrt(10)$.
【常见问题】曲率半径是曲率的倒数，不能混淆两者.
]

#answer("5.")[
D. 【解】由拉格朗日中值定理，$arctan x=x/(1+xi^2)$，其中 $xi$ 位于 $0$ 和 $x$ 之间. 解得 $xi^2=(x-arctan x)/arctan x$，于是
$ lim_(x->0)xi^2/x^2=lim_(x->0)frac(x-arctan x,x^3)=lim_(x->0)frac(1-1/(1+x^2),3x^2)=1/3. $
]

#answer("6.")[
A. 【解】连续函数在有界闭区域上必有最大值和最小值. 若在内部某点取得，该点必为驻点. 记该点二阶偏导为 $A=u''_(x x),B=u''_(x y),C=u''_(y y)$，则 $A+C=0$，且 $B!=0$，所以 $A C-B^2=-A^2-B^2<0$. 驻点不是极值点，故最大值和最小值只能在边界取得.
]

#answer("7.")[

B. 【解】按第一列展开行列式，得
$ -a det mat(a,b,0;c,d,0;0,0,d)-c det mat(a,b,0;0,0,b;c,d,0) $
$ =-a d(a d-b c)+c b(a d-b c)=-(a d-b c)^2. $

]

#answer("8.")[

A. 【解】若 $alpha_1,alpha_2,alpha_3$ 线性无关，由
$ lambda_1(alpha_1+k alpha_3)+lambda_2(alpha_2+l alpha_3)=0 $
可得 $lambda_1=lambda_2=0$，故所给两个向量线性无关. 反之，取 $alpha_1,alpha_2$ 线性无关而 $alpha_3=0$，所给两个向量仍线性无关，但三个向量线性相关. 因而是必要但不充分条件.

]

= 二、填空题

#answer("9.")[
$3pi/8$. 【解】配方并换元，得
$ integral_(-infinity)^1 frac(1,x^2+2x+5)dif x=1/2 [arctan((x+1)/2)]_(-infinity)^1=1/2(pi/4+pi/2)=3pi/8. $
【常见问题】应注意无穷远处反正切的极限和换元系数.
]

#answer("10.")[
$1$. 【解】积分得 $f(x)=(x-1)^2+C$（$0<=x<=2$）. 由奇性 $f(0)=0$ 得 $C=-1$，故 $f(x)=x^2-2x$. 利用周期性和奇性，$f(7)=f(3)=f(-1)=-f(1)=1$.
]

#answer("11.")[
$-1/2(dif x+dif y)$. 【解法1】设 $F=e^(2y z)+x+y^2+z-7/4$，则
$ z'_x=-frac(1,2y e^(2y z)+1), quad z'_y=-frac(2z e^(2y z)+2y,2y e^(2y z)+1). $
在 $x=y=1/2$ 处，由原方程知 $z=0$，故 $z'_x=z'_y=-1/2$，所求全微分为 $-1/2(dif x+dif y)$.
【解法2】对原方程两边微分，得
$ 2e^(2y z)(y dif z+z dif y)+dif x+2y dif y+dif z=0. $
代入指定点，仍得同一结果.
【常见问题】隐函数求偏导公式前的负号不能遗漏.
]

#answer("12.")[
$2x/pi+y-pi/2=0$. 【解】用参数方程 $x=theta cos theta,y=theta sin theta$，得
$ frac(dif y,dif x)=frac(sin theta+theta cos theta,cos theta-theta sin theta). $
在 $theta=pi/2$ 处，点的直角坐标为 $(0,pi/2)$，斜率为 $-2/pi$. 因而切线为 $y-pi/2=-2x/pi$.
【常见问题】$r=theta$ 不是常数，不能对 $x=r cos theta,y=r sin theta$ 求导时把 $r$ 当作常数；$dif r/dif theta$ 也不是直角坐标中的斜率.
]

#answer("13.")[
$11/20$. 【解】按质心公式，
$ overline(x)=frac(integral_0^1 x rho(x)dif x,integral_0^1 rho(x)dif x)=frac(integral_0^1(-x^3+2x^2+x)dif x,integral_0^1(-x^2+2x+1)dif x)=frac(11/12,5/3)=11/20. $
]

#answer("14.")[

$[-2,2]$. 【解】配方得
$ f=(x_1+a x_3)^2-(x_2-2x_3)^2+(4-a^2)x_3^2. $
负惯性指数为 $1$，故 $4-a^2>=0$，即 $-2<=a<=2$.
【常见问题】等号成立时仍恰有一个负平方项，不能排除两个端点.

]

= 三、解答题

#answer("15.")[
$ &lim_(x->+infinity)(integral_1^x[t^2(e^(1/t)-1)-t]dif t)/(x^2 ln(1+1/x)) \
&=lim_(x->+infinity)(integral_1^x[t^2(e^(1/t)-1)-t]dif t)/x \
&=lim_(x->+infinity)[x^2(e^(1/x)-1)-x] \
&=lim_(x->+infinity)[x^2(1/x+1/(2x^2)+o(1/x^2))-x] \
&=lim_(x->+infinity)[1/2+x^2 dot o(1/x^2)]=1/2. $

【解法2】先以 $x$ 代换分母的等价量，再用洛必达法则. 令 $u=1/x$，得
$ I=lim_(u->0^+)frac(e^u-1-u,u^2)=lim_(u->0^+)frac(e^u-1,2u)=1/2. $
【解法3】直接用洛必达法则，再令 $t=1/x$，得
$ I=lim_(t->0^+)frac(e^t-1-t,2t ln(1+t)-t^2/(1+t)) $
$ =lim_(t->0^+)frac(e^t-1,2ln(1+t)+t^2/(1+t)^2) $
$ =lim_(t->0^+)frac(e^t,2/(1+t)+2t/(1+t)^3)=1/2. $
【常见问题】在差式 $x^2(e^(1/x)-1)-x$ 中直接以 $1/x$ 代换 $e^(1/x)-1$ 会误得 $0$；洛必达法则必须同时对分子、分母求导.
]

#answer("16.")[
由 $x^2+y^2 y'=1-y'$ 得 $y'=(1-x^2)/(1+y^2)$. 令 $y'=0$，得 $x=+-1$.

当 $x<-1$ 时，$y'<0$；当 $-1<x<1$ 时，$y'>0$；当 $x>1$ 时，$y'<0$. 因此，$x=-1$ 为极小值点，$x=1$ 为极大值点.

将原方程分离变量后得 $(1+y^2)dif y=(1-x^2)dif x$，其通解为 $x^3+y^3-3x+3y=C$. 又 $y(2)=0$，得 $C=2$. 故 $x^3+y^3-3x+3y=2$.

所以 $y(x)$ 的极小值为 $y(-1)=0$，$y(x)$ 的极大值为 $y(1)=1$.

【常见问题】可以直接由微分方程读出 $y'$，先求通解再求导虽正确，但会增加计算. 判断极值后，还须代入初值确定积分常数并计算极值.
]

#answer("17.")[
$ &integral.double_D (x sin(pi sqrt(x^2+y^2)))/(x+y)dif x dif y \
&=integral_0^(pi/2)(cos theta)/(cos theta+sin theta)dif theta dot integral_1^2 r sin(pi r)dif r. $
由于
$ &integral_0^(pi/2)(cos theta)/(cos theta+sin theta)dif theta \
&=integral_0^(pi/2)(sin theta)/(cos theta+sin theta)dif theta \
&=1/2 integral_0^(pi/2)(cos theta+sin theta)/(cos theta+sin theta)dif theta=pi/4, $
$ integral_1^2 r sin(pi r)dif r=1/pi(-r cos(pi r)+1/pi sin(pi r))|_1^2=-3/pi, $
故所求积分为 $-3/4$.

【常见问题】应利用换元 $theta=pi/2-t$ 证明两个角度积分相等；转换为极坐标时不能漏乘面积元素中的 $r$.
]

#answer("18.")[
因为
$ (partial z)/(partial x)=f'(e^x cos y)e^x cos y, $
$ (partial^2 z)/(partial x^2)=f''(e^x cos y)e^(2x)cos^2 y+f'(e^x cos y)e^x cos y, $
$ (partial z)/(partial y)=-f'(e^x cos y)e^x sin y, $
$ (partial^2 z)/(partial y^2)=f''(e^x cos y)e^(2x)sin^2 y-f'(e^x cos y)e^x cos y, $
所以所给方程化为
$ f''(e^x cos y)e^(2x)=[4f(e^x cos y)+e^x cos y]e^(2x). $
从而函数 $f(u)$ 满足方程 $f''(u)=4f(u)+u$. 对应的齐次方程通解为 $f(u)=C_1 e^(2u)+C_2 e^(-2u)$，非齐次方程的一个特解为 $-u/4$，故通解为
$ f(u)=C_1 e^(2u)+C_2 e^(-2u)-u/4. $
由 $f(0)=0,f'(0)=0$ 得 $cases(C_1+C_2=0,2C_1-2C_2-1/4=0)$，解得 $C_1=1/16,C_2=-1/16$. 故
$ f(u)=1/16(e^(2u)-e^(-2u)-4u). $

【常见问题】链式求导时不能遗漏 $cos y$ 或 $e^x$；得到的是 $f''(u)-4f(u)=u$，其中 $f(u)$ 仍是未知函数，不能把它当成常数直接积分.
]

#answer("19.")[
（Ⅰ）因为 $0<=g(x)<=1$，所以当 $x in [a,b]$ 时，有
$ integral_a^x 0 dif t<=integral_a^x g(t)dif t<=integral_a^x 1 dif t, $
即 $0<=integral_a^x g(t)dif t<=x-a$.

（Ⅱ）令
$ F(x)=integral_a^(a+integral_a^x g(u)dif u)f(t)dif t-integral_a^x f(t)g(t)dif t,quad x in [a,b]. $
因为 $f(x),g(x)$ 在区间 $[a,b]$ 上连续，所以 $F(x)$ 在区间 $[a,b]$ 上可导，且
$ F'(x)=[f(a+integral_a^x g(u)dif u)-f(x)]g(x). $
由（Ⅰ）知 $a+integral_a^x g(u)dif u<=x$，又因为 $f(x)$ 单调增加，且 $g(x)>=0$，所以 $F'(x)<=0$，从而 $F(x)$ 在区间 $[a,b]$ 上单调减少.

又 $F(a)=0$，故 $F(b)<=0$，即
$ integral_a^(a+integral_a^b g(t)dif t)f(x)dif x<=integral_a^b f(x)g(x)dif x. $

【常见问题】构造辅助函数时，将原不等式中的上端点 $b$ 改为变量 $x$，同时保留积分上限中的变上限积分，才能对辅助函数求导并利用第（Ⅰ）问.
]

#answer("20.")[
$ f_2(x)=f(f_1(x))=f_1(x)/(1+f_1(x))=(x/(1+x))/(1+x/(1+x))=x/(1+2x); $
$ f_3(x)=f(f_2(x))=f_2(x)/(1+f_2(x))=x/(1+3x). $
由数学归纳法得 $f_n(x)=x/(1+n x)(n=1,2,3,dots)$. 于是
$ S_n&=integral_0^1 x/(1+n x)dif x=1/n integral_0^1(1-1/(1+n x))dif x \
&=1/n-(ln(1+n))/n^2. $
故 $lim_(n->infinity)n S_n=lim_(n->infinity)(1-(ln(1+n))/n)=1$.

【常见问题】积分结果的第一项为 $1/n$，不是 $1/n^2$，否则会误得 $lim n S_n=0$.
]

#answer("21.")[
由 $(partial f)/(partial y)=2(y+1)$ 得 $f(x,y)=(y+1)^2+g(x)$. 又 $f(y,y)=(y+1)^2-(2-y)ln y$，得 $g(y)=-(2-y)ln y$，因此
$ f(x,y)=(y+1)^2-(2-x)ln x. $
于是，曲线 $f(x,y)=0$ 的方程为 $(y+1)^2=(2-x)ln x (1<=x<=2)$. 其所围图形绕直线 $y=-1$ 旋转所成旋转体的体积
$ V&=pi integral_1^2(y+1)^2 dif x=pi integral_1^2(2-x)ln x dif x \
&=pi[-1/2(2-x)^2 ln x+1/4 x^2-2x+2ln x]_1^2 \
&=(2ln 2-5/4)pi. $

【另解】曲线以 $y=-1$ 为对称轴. 将图形向上平移一个单位，得到 $y^2=(2-x)ln x$；它绕 $x$ 轴旋转所得体积与原体积相同. 因此
$ V=pi integral_1^2 y^2 dif x=pi integral_1^2(2-x)ln x dif x=(2ln 2-5/4)pi. $
【常见问题】旋转半径为 $abs(y+1)$，并非 $abs(y)$；无需分别解出上下两支曲线再作复杂计算.
]

#answer("22.")[
（Ⅰ）对矩阵 $A$ 施以初等行变换
$ A=mat(1,-2,3,-4;0,1,-1,1;1,2,0,-3)arrow.r mat(1,0,0,1;0,1,0,-2;0,0,1,-3), $
则方程组 $A x=0$ 的一个基础解系为 $alpha=mat(-1;2;3;1)$.

（Ⅱ）对矩阵 $(A colon E)$ 施以初等行变换
$ &mat(1,-2,3,-4,1,0,0;0,1,-1,1,0,1,0;1,2,0,-3,0,0,1,augment: #4) \
&arrow.r mat(1,0,0,1,2,6,-1;0,1,0,-2,-1,-3,1;0,0,1,-3,-1,-4,1,augment: #4). $
记 $E=(e_1,e_2,e_3)$，则
$ A x=e_1 $ 的通解为 $x=mat(2;-1;-1;0)+k_1 alpha$；

$ A x=e_2 $ 的通解为 $x=mat(6;-3;-4;0)+k_2 alpha$；

$ A x=e_3 $ 的通解为 $x=mat(-1;1;1;0)+k_3 alpha$，其中 $k_1,k_2,k_3$ 为任意常数.

于是，所求矩阵为
$ B=mat(2,6,-1;-1,-3,1;-1,-4,1;0,0,0)+(k_1 alpha,k_2 alpha,k_3 alpha), $
$k_1,k_2,k_3$ 为任意常数.

也可将全部解写成
$ B=mat(2-k_1,6-k_2,-1-k_3;-1+2k_1,-3+2k_2,1+2k_3;-1+3k_1,-4+3k_2,1+3k_3;k_1,k_2,k_3). $
【常见问题】非齐次方程的通解为一个特解加齐次通解，任意常数不能乘在特解上；矩阵方程 $A B=E$ 应逐列化为 $A beta_i=e_i$.
]

#answer("23.")[
设 $A=mat(1,1,dots,1;1,1,dots,1;dots.v,dots.v,,dots.v;1,1,dots,1),B=mat(0,dots,0,1;0,dots,0,2;dots.v,,dots.v,dots.v;0,dots,0,n)$.
因为
$ |lambda E-A|=mat(delim: "|", lambda-1,-1,dots,-1;-1,lambda-1,dots,-1;dots.v,dots.v,,dots.v;-1,-1,dots,lambda-1)=(lambda-n)lambda^(n-1), $
$ |lambda E-B|=mat(delim: "|", lambda,0,dots,-1;0,lambda,dots,-2;dots.v,dots.v,,dots.v;0,0,dots,lambda-n)=(lambda-n)lambda^(n-1), $
所以 $A$ 与 $B$ 有相同的特征值 $lambda_1=n,lambda_2=0$（$n-1$ 重）.

由于 $A$ 为实对称矩阵，所以 $A$ 相似于对角矩阵 $Lambda=mat(n,0,dots,0;0,0,dots,0;dots.v,dots.v,dots.down,dots.v;0,0,dots,0)$.

因为 $"r"(lambda_2 E-B)="r"(B)=1$，所以 $B$ 对应于特征值 $lambda_2=0$ 有 $n-1$ 个线性无关的特征向量，于是 $B$ 也相似于 $Lambda$. 故 $A$ 与 $B$ 相似.

【证法1】除利用实对称性外，也可直接由 $r(A)=r(B)=1$ 得两矩阵的零特征值的特征空间维数均为 $n-1$. 非零特征值 $n$ 是单根，其特征空间维数为 $1$. 因而两矩阵都相似于 $op("diag")(0,dots,0,n)$，于是彼此相似.
【证法3】记 $e,theta$ 分别为分量均为 $1,0$ 的 $n-1$ 维列向量，$f=(-1/n,-2/n,dots,-(n-1)/n)^T$. 令
$ P_1=mat(E_(n-1),e;theta^T,1), quad P_2=mat(E_(n-1),theta;-e^T/n,1), $
$ P_3=mat(E_(n-1),-f;theta^T,1). $
三者均可逆，且
$ P_1^(-1)=mat(E_(n-1),-e;theta^T,1), quad P_2^(-1)=mat(E_(n-1),theta;e^T/n,1), $
$ P_3^(-1)=mat(E_(n-1),f;theta^T,1). $
直接计算得
$ P_2^(-1)P_1^(-1)A P_1 P_2=op("diag")(0,dots,0,n)=P_3 B P_3^(-1). $
所以 $(P_1 P_2 P_3)^(-1)A(P_1 P_2 P_3)=B$，两矩阵相似.
【常见问题】秩相等不能推出相似. 相似与合同也不能混淆；非对称实矩阵不能直接套用实对称矩阵的正交对角化结论.
]

