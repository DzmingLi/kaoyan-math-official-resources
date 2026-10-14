#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2014, subject: "三", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2014 数学三试卷参考解答

= 一、选择题

#answer("1.")[
A. 【解】因 $abs(a_n)->abs(a)>0$，在极限定义中取 $epsilon=abs(a)/2$，当 $n$ 充分大时，$abs(abs(a_n)-abs(a))<abs(a)/2$，故 $abs(a_n)>abs(a)/2$. 取 $a_n=1+1/sqrt(n)$ 和 $a_n=1-1/sqrt(n)$，均趋于 $1$，却分别不满足 D、C 的不等式. 极限定义中的误差不能随意指定为 $1/n$.
]

#answer("2.")[

C. 【解】对于 $y=x+sin(1/x)$，有 $lim_(x->infinity)y/x=1$，$lim_(x->infinity)(y-x)=0$，故斜渐近线为 $y=x$. 其余选项中，$x+sin x$ 与直线 $y=x$ 的差没有极限，二次函数不可能有斜渐近线；各函数也没有水平或铅直渐近线.

]

#answer("3.")[
D. 【解】由题意，
$ lim_(x->0)frac(a+b x+c x^2+d x^3-tan x,x^3)=0. $
先由分子趋于零得 $a=0$，再将分子除以 $x$ 考察极限得 $b=1$. 对余下的不定式两次使用洛必达法则，得
$ lim_(x->0)frac(2c+6d x-2sec^2 x tan x,6x)=0. $
从而 $c=0$，再由 $sec^2 x tan x tilde.op x$ 得 $d=1/3$. 故选项 D 中的 $d=1/6$ 错误.
【常见问题】题目要求选出错误的系数，应注意审题.
]

#answer("4.")[

D. 【解】$f''(x)>=0$ 表明函数图形位于连接两端点的弦的下方，故 $f(x)<=f(0)(1-x)+f(1)x$. 仅有 $f'(x)>=0$ 不能得到 A、B：例如 $f(x)=(x-1/2)^3$，弦为 $g(x)=x/4-1/8$，而 $f(1/4)>g(1/4),f(3/4)<g(3/4)$. 取 $f(x)=x^2$ 又可排除 C.

]

#answer("5.")[

B. 【解】按第一列展开行列式，得
$ -a det mat(a,b,0;c,d,0;0,0,d)-c det mat(a,b,0;0,0,b;c,d,0) $
$ =-a d(a d-b c)+c b(a d-b c)=-(a d-b c)^2. $

]

#answer("6.")[

A. 【解】若 $alpha_1,alpha_2,alpha_3$ 线性无关，由
$ lambda_1(alpha_1+k alpha_3)+lambda_2(alpha_2+l alpha_3)=0 $
可得 $lambda_1=lambda_2=0$，故所给两个向量线性无关. 反之，取 $alpha_1,alpha_2$ 线性无关而 $alpha_3=0$，所给两个向量仍线性无关，但三个向量线性相关. 因而是必要但不充分条件.

]

#answer("7.")[

B. 【解法1】由独立性，$P(A-B)=P(A)-P(A)P(B)=0.3$，且 $P(B)=0.5$，所以 $P(A)=0.6$. 因而 $P(B-A)=0.5-0.6 times 0.5=0.2$.
【解法2】$A$ 与 $overline(B)$ 独立，故 $P(A)P(overline(B))=0.3$，得到同一结果.
【常见问题】事件独立与互不相容是不同的概念.

]

#answer("8.")[
C. 【解】由正态分布的性质，$(X_1-X_2)/(sqrt(2)sigma) tilde N(0,1)$，且 $X_3^2/sigma^2 tilde chi^2(1)$，两者独立. 因而
$ S=frac((X_1-X_2)/(sqrt(2)sigma),sqrt(X_3^2/sigma^2)) tilde t(1). $
]

= 二、填空题

#answer("9.")[
$20-Q$. 【解】由 $P=(40-Q)/2$ 得收益 $R=P Q=(40-Q)Q/2$，故边际收益 $dif R/dif Q=20-Q$.
【常见问题】边际收益是收益对需求量的导数，不能误求对价格的导数 $dif R/dif P$.
]

#answer("10.")[
$3/2-ln 2$. 【解】区域的面积为
$ integral_1^2(y-1/y)dif y=[y^2/2-ln y]_1^2=3/2-ln 2. $
【常见问题】应取题目指定的有界区域，不能另外添加 $y$ 轴形成另一块区域.
]

#answer("11.")[
$1/2$. 【解】分部积分得
$ integral_0^a x e^(2x)dif x=a e^(2a)/2-e^(2a)/4+1/4. $
由题意 $e^(2a)(a/2-1/4)=0$，故 $a=1/2$.
【常见问题】$a$ 是实常数，不能把反常积分的极限写成 $a=-infinity$.
]

#answer("12.")[
$(e-1)/2$. 【解】将积分拆为两项，第一项交换积分次序，得
$ integral_0^1 dif y integral_y^1 frac(e^(x^2),x)dif x=integral_0^1 dif x integral_0^x frac(e^(x^2),x)dif y=integral_0^1 e^(x^2)dif x. $
第二项为
$ integral_0^1 dif y integral_y^1 e^(y^2)dif x=integral_0^1 e^(y^2)dif y-integral_0^1 y e^(y^2)dif y. $
前两项相消，故原式为 $integral_0^1 y e^(y^2)dif y=(e-1)/2$.
]

#answer("13.")[

$[-2,2]$. 【解】配方得
$ f=(x_1+a x_3)^2-(x_2-2x_3)^2+(4-a^2)x_3^2. $
负惯性指数为 $1$，故 $4-a^2>=0$，即 $-2<=a<=2$.
【常见问题】等号成立时仍恰有一个负平方项，不能排除两个端点.

]

#answer("14.")[

$2/(5n)$. 【解】
$ E X^2=integral_theta^(2theta)x^2 frac(2x,3theta^2)dif x=5theta^2/2. $
因此 $E(c sum_(i=1)^n X_i^2)=5n c theta^2/2$. 由无偏性知 $5n c/2=1$，故 $c=2/(5n)$.
【常见问题】应正确计算二阶矩，并区分样本和总体的期望.

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
$ &integral.double_D (x sin(pi sqrt(x^2+y^2)))/(x+y)dif x dif y \
&=integral_0^(pi/2)(cos theta)/(cos theta+sin theta)dif theta dot integral_1^2 r sin(pi r)dif r. $
由于
$ &integral_0^(pi/2)(cos theta)/(cos theta+sin theta)dif theta \
&=integral_0^(pi/2)(sin theta)/(cos theta+sin theta)dif theta \
&=1/2 integral_0^(pi/2)(cos theta+sin theta)/(cos theta+sin theta)dif theta=pi/4, $
$ integral_1^2 r sin(pi r)dif r=1/pi(-r cos(pi r)+1/pi sin(pi r))|_1^2=-3/pi, $
故所求积分为 $-3/4$.

【常见问题】应利用换元 $theta=pi/2-t$ 证明两个角度积分相等；转换为极坐标时不能漏乘面积元素中的 $r$.

【解法2】区域关于 $y=x$ 对称，交换 $x,y$ 后积分不变，将两式相加，得
$ I=1/2 integral.double_D sin(pi sqrt(x^2+y^2))dif x dif y $
$ =1/2 integral_0^(pi/2)dif theta integral_1^2 r sin(pi r)dif r=-3/4. $
【解法3】角度积分也可用三角恒等式计算：
$ J=integral_0^(pi/2)frac(cos theta,cos theta+sin theta)dif theta $
$ =1/2 integral_0^(pi/2)(sec 2theta-tan 2theta+1)dif theta=pi/4. $
其中合并后的原函数为 $theta/2+ln(1+sin 2theta)/4$，在 $theta=pi/4$ 连续延拓，不能分别把奇异项当作收敛的反常积分.
【解法4】将分子拆为两部分，得
$ J=1/2 integral_0^(pi/2)(1+frac(cos theta-sin theta,cos theta+sin theta))dif theta $
$ =1/2[theta+ln abs(cos theta+sin theta)]_0^(pi/2)=pi/4. $
]

#answer("17.")[
因为 $(partial z)/(partial x)=f'(e^x cos y)e^x cos y,(partial z)/(partial y)=-f'(e^x cos y)e^x sin y$，所以所给方程化为
$ f'(e^x cos y)e^x=[4f(e^x cos y)+e^x cos y]e^x, $
即函数 $f(u)$ 满足方程 $f'(u)-4f(u)=u$. 该方程的通解为 $f(u)=C e^(4u)-u/4-1/16$.

又 $f(0)=0$，得 $C=1/16$. 故 $f(u)=1/16(e^(4u)-4u-1)$.

【常见问题】外层函数 $f$ 是一元函数，应对中间变量 $u=e^x cos y$ 求导；不能把 $f'$ 写成外层函数对 $x,y$ 的两个不同偏导数.
]

#answer("18.")[
幂级数的系数 $a_n=(n+1)(n+3)$. 因为
$ lim_(n->infinity)|a_(n+1)/a_n|=lim_(n->infinity)((n+2)(n+4))/((n+1)(n+3))=1, $
所以收敛半径 $R=1$. 当 $x=+-1$ 时，级数 $sum_(n=0)^infinity(n+1)(n+3)$ 及 $sum_(n=0)^infinity(n+1)(n+3)(-1)^n$ 发散，故收敛域为 $(-1,1)$.

设 $S(x)=sum_(n=0)^infinity(n+1)(n+3)x^n,x in (-1,1)$，则
$ integral_0^x S(t)dif t&=sum_(n=0)^infinity(n+3)x^(n+1) \
&=sum_(n=0)^infinity(n+2)x^(n+1)+sum_(n=0)^infinity x^(n+1). $
其中 $sum_(n=0)^infinity x^(n+1)=x/(1-x)$，
$ sum_(n&=0)^infinity(n+2)x^(n+1)=(sum_(n=0)^infinity integral_0^x(n+2)t^(n+1)dif t)' \
&=(x^2/(1-x))'=(2x-x^2)/(1-x)^2. $
所以
$ S(x)=((2x-x^2)/(1-x)^2)'+(x/(1-x))'=(3-x)/(1-x)^3,quad x in (-1,1). $

【解法2】在收敛域内拆项，得
$ S(x)=sum_(n=0)^infinity(n+1)(n+2)x^n+sum_(n=0)^infinity(n+1)x^n $
$ =(x^2/(1-x))''+(x/(1-x))'=2/(1-x)^3+1/(1-x)^2=(3-x)/(1-x)^3. $
【解法3】当 $x!=0$ 时，
$ integral_0^x S(t)dif t=sum_(n=0)^infinity(n+3)x^(n+1)=1/x (x^3/(1-x))'=(3x-2x^2)/(1-x)^2. $
再求导得 $S(x)=(3-x)/(1-x)^3$. 在 $x=0$ 处，$S(0)=3$，故该公式在整个 $(-1,1)$ 上成立.
【常见问题】求等比级数和须辨认首项；逐项求导、积分不能混淆，并应单独判断收敛域的端点.
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

【常见问题】积分中值定理给出的中间点随积分上限变化，不能把它当作常数对含变上限的表达式求导.
]

#answer("20.")[
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

#answer("21.")[
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

#answer("22.")[
（Ⅰ）
$ F_Y(y)&=P{Y<=y}=P{X=1}P{Y<=y bar X=1}+P{X=2}P{Y<=y bar X=2} \
&=1/2 P{Y<=y bar X=1}+1/2 P{Y<=y bar X=2}. $
当 $y<0$ 时，$F_Y(y)=0$；当 $0<=y<1$ 时，$F_Y(y)=3y/4$；当 $1<=y<2$ 时，$F_Y(y)=1/2+y/4$；当 $y>=2$ 时，$F_Y(y)=1$. 所以
$ F_Y(y)=cases(0 & y<0,3y/4 & 0<=y<1,1/2+y/4 & 1<=y<2,1 & y>=2). $

（Ⅱ）随机变量 $Y$ 的概率密度为
$ f_Y(y)=cases(3/4 & 0<y<1,1/4 & 1<=y<2,0 & "其他"). $
$ E Y=integral_(-infinity)^(+infinity)y f_Y(y)dif y=integral_0^1 3/4 y dif y+integral_1^2 1/4 y dif y=3/4. $

（Ⅰ）【解法2】条件密度分别为 $f(y bar X=1)=cases(1 & 0<y<1,0 & "其他")$，$f(y bar X=2)=cases(1/2 & 0<y<2,0 & "其他")$. 按全概率公式将两密度加权相加，得上述 $f_Y(y)$，再由 $F_Y(y)=integral_(-infinity)^y f_Y(t)dif t$ 得分布函数.
（Ⅱ）【解法2】因 $E(Y bar X=1)=1/2,E(Y bar X=2)=1$，故
$ E Y=P(X=1)E(Y bar X=1)+P(X=2)E(Y bar X=2)=3/4. $
【常见问题】当 $1<=y<2$ 时，$P(Y<=y bar X=1)=1$，不能遗漏该部分；求期望应对密度积分，不能把分布函数当作密度.
]

#answer("23.")[
（Ⅰ）设 $(X,Y)$ 的概率分布为
#table(columns:3,[$X$ / $Y$],[0],[1],[0],[$a$],[$b$],[1],[$c$],[$d$])
由题设条件知
$ E X=E Y=2/3,quad D X=D Y=2/3(1-2/3)=2/9, $
$ "Cov"(X,Y)=E(X Y)-E X dot E Y=P{X=1,Y=1}-4/9. $
由
$ rho_(X Y)=("Cov"(X,Y))/sqrt(D X dot D Y)=(P{X=1,Y=1}-4/9)/(2/9)=1/2, $
解得 $d=P{X=1,Y=1}=1/9+4/9=5/9$. 由此可得 $c=b=2/3-d=1/9,a=1/3-b=2/9$. 所以 $(X,Y)$ 的概率分布为
#table(columns:3,[$X$ / $Y$],[0],[1],[0],[$2/9$],[$1/9$],[1],[$1/9$],[$5/9$])
（Ⅱ）$P{X+Y<=1}=1-P{X+Y>1}=1-P{X=1,Y=1}=4/9$.

【常见问题】边缘分布相同并不意味着随机变量独立；本题相关系数为 $1/2$，也可直接排除独立性.
]

