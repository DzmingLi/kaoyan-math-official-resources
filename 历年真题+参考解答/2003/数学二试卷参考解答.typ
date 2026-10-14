#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2003, subject: "二", title: "2003年全国硕士研究生入学统一考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#import "@preview/cetz:0.5.2"
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2003 数学二试卷参考解答

= 一、填空题

#answer("1（1）")[
*分析* 利用等价无穷小及极限求出参数.
*解* 由题意有
$ lim_(x->0)frac((1-a x^2)^(1/4)-1,x sin x)=1. $
由于 $(1-a x^2)^(1/4)-1 tilde -a x^2/4$，$x sin x tilde x^2$，得 $-a/4=1$，所以 $a=-4$.
]

#answer("1（2）")[
*分析* 隐函数求导，再用点斜式写切线方程.
*解* 对 $x y+2 ln x=y^4$ 求导，得 $y+x y'+2/x=4y^3 y'$. 在 $(1,1)$ 处有 $1+y'+2=4y'$，故 $y'=1$，切线为 $y-1=x-1$，即 $x-y=0$.
]

#answer("1（3）")[
*分析* 麦克劳林展开式中 $x^n$ 的系数为 $f^((n))(0)/n!$.
*解* 对 $f(x)=2^x$，有 $f^((n))(x)=2^x(ln 2)^n$，所以系数为 $(ln 2)^n/n!$.
]

#answer("1（4）")[
*分析* 应用极坐标下的面积公式.
*解* 所求面积为
$ S=frac(1,2)integral_0^(2pi)rho^2 dif theta=frac(1,2)integral_0^(2pi)e^(2a theta)dif theta=frac(e^(4pi a)-1,4a). $
]

#answer("1（5）")[
*分析* 比较 $alpha alpha^T$ 的对角元素与向量内积.
*解* 设 $alpha=(a_1,a_2,a_3)^T$，则 $alpha alpha^T$ 的三个对角元素为 $a_1^2,a_2^2,a_3^2$，由题意都等于1. 所以 $alpha^T alpha=a_1^2+a_2^2+a_3^2=3$.
]

#answer("1（6）")[
*分析* 整理矩阵等式，通过可逆性求出 $B$ 的行列式.
*解* 原式给出 $(A^2-E)B=A+E$，即 $(A+E)(A-E)B=A+E$. 而
$ A+E=mat(2,0,1;0,3,0;-2,0,2),quad det(A+E)=18 !=0. $
消去 $A+E$ 得 $(A-E)B=E$，故 $B=(A-E)^(-1)$. 由于
$ det(A-E)=det(mat(0,0,1;0,1,0;-2,0,0))=2, $
有 $det B=1/2$.
]

= 二、选择题

#answer("2（1）")[
*分析* 两个无穷小之商未必有有限极限，应检查各选项.
*解* 当 $b_n->1,c_n->+infinity$ 时，对任意 $G>0$，充分大的 $n$ 满足 $b_n>1/2,c_n>2G$，于是 $b_n c_n>G$. 所以 $b_n c_n->+infinity$，选 D.
]

#answer("2（2）")[
*分析* 先凑微分计算 $a_n$，再用重要极限求 $lim n a_n$.
*解* 有
$ a_n&=frac(3,2n)integral_0^(n/(n+1))sqrt(1+x^n)dif(1+x^n) \\
&=frac(1,n)[(1+(n/(n+1))^n)^(3/2)-1]. $
因此
$ lim_(n->infinity)n a_n=(1+e^(-1))^(3/2)-1. $
选 B.
]

#answer("2（3）")[
*分析* 将已知解代入微分方程即可求出所需表达式. 也可按齐次方程作变量代换，但前一种方法更方便.
*解法1* 由 $y=x/ln x$ 得 $y'=(ln x-1)/(ln x)^2$. 代入 $y'=y/x+phi.alt(x/y)$，得
$ phi.alt(x/y)=frac(ln x-1,(ln x)^2)-frac(1,ln x)=-frac(1,(ln x)^2)=-frac(y^2,x^2). $
选 A.

*解法2* 令 $u=y/x$，则 $y'=u+x u'$，方程化为 $x u'=phi.alt(1/u)$. 因而 $integral dif u/phi.alt(1/u)=ln x=x/y=1/u$，两端对 $u$ 求导得 $phi.alt(1/u)=-u^2$，即 $phi.alt(x/y)=-y^2/x^2$.
]

#answer("2（4）")[
*分析* 连续函数的极值可能出现在驻点，也可能出现在导数不存在处. 导数由正变负为极大值，由负变正为极小值.
*解* 从图中自左向右看，导数在两个负半轴零点处依次由正变负、由负变正；在 $x=0$ 两侧由正变负；在正半轴零点由负变正. 因而有两个极小值点、两个极大值点，选 C. 忽略 $x=0$ 处的符号变化会误选 B.
]

#answer("2（5）")[
*分析* 用定积分比较定理及 $tan x/x$ 的单调性.
*解* 对 $0<x<=pi/4$，有 $sin x<x<tan x$，所以 $tan x/x>x/tan x$，从而 $I_1>I_2$，排除 C、D.
令 $f(x)=tan x/x$，则
$ f'(x)=frac(x sec^2 x-tan x,x^2)=frac(x-sin x cos x,x^2 cos^2 x)>0. $
所以 $tan x/x<4/pi$（$0<x<pi/4$），得
$ I_1<frac(4,pi)integral_0^(pi/4)dif x=1. $
故 $1>I_1>I_2$，选 B.
]

#answer("2（6）")[
*分析* 线性表示、向量组的相关性与秩之间的关系.
*解法1* 由I可由II线性表示，有 $r(I)<=r(II)<=s$. 若 $r>s$，则 $r(I)<r$，I必线性相关，选 D.

*解法2* 写成 $(alpha_1,dots,alpha_r)=(beta_1,dots,beta_s)A$，其中 $A$ 为 $s times r$ 矩阵. 当 $r>s$ 时，$r(A)<r$，存在非零 $k$ 使 $A k=0$，于是I有非零系数的线性关系.
还可用反例排除：从无关组II中取一部分为I，可否定 A、C；取II仅含 $(1,0)$，I含 $(1,0),(0,0)$，可否定 B.
]

= 解答题

#answer("三、")[
*分析* 先求零点处左右极限，使二者相等，再与函数值比较. 只检查某一侧极限等于函数值不能得到完整解答.


解
$ lim_(x->0^-) f(x)&=lim_(x->0^-) ln(1+a x^3)/(x-arcsin x)=lim_(x->0^-) (a x^3)/(x-arcsin x) \
&=lim_(x->0^-) (3a x^2)/(1-1/sqrt(1-x^2)) \
&=lim_(x->0^-) (3a x^2)/(sqrt(1-x^2)-1) dot lim_(x->0^-) sqrt(1-x^2) \
&=lim_(x->0^-) (6a x)/(-x/sqrt(1-x^2))=-6a. $
$ lim_(x->0^+) f(x)&=4 lim_(x->0^+) (e^(a x)+x^2-a x-1)/x^2 \
&=4 lim_(x->0^+) (a e^(a x)+2x-a)/(2x) \
&=2 lim_(x->0^+) (a^2 e^(a x)+2)=2a^2+4. $
令 $-6a=2a^2+4$，得 $a=-1$ 或 $a=-2$.

当 $a=-1$ 时，$lim_(x->0) f(x)=6=f(0)$，故 $f(x)$ 在 $x=0$ 处连续；当 $a=-2$ 时，$lim_(x->0) f(x)=12 != f(0)$，故 $x=0$ 是 $f(x)$ 的可去间断点.
]

#answer("四、")[
*分析* 参数方程求二阶导数，其中 $y$ 由变上限积分给出. 求 $dif y/dif t$ 时不能漏掉上限函数的导数 $2/t$. 最后由 $x=9$ 和 $t>1$ 确定 $t=2$.


解 因为
$ (dif y)/(dif t)=e^(1+2 ln t)/(1+2 ln t) dot 2/t=(2e t)/(1+2 ln t), quad (dif x)/(dif t)=4t, $
所以
$ (dif y)/(dif x)=((2e t)/(1+2 ln t))/(4t)=e/(2(1+2 ln t)), $
$ (dif^2 y)/(dif x^2)&=dif/(dif t)((dif y)/(dif x)) dot 1/((dif x)/(dif t)) \
&=e/2 dot (-1)/(1+2 ln t)^2 dot 2/t dot 1/(4t)=-e/(4t^2 (1+2 ln t)^2). $
当 $x=9$ 时，$t=2$，故
$ lr((dif^2 y)/(dif x^2))|_(x=9)=-e/(16(1+2 ln 2)^2). $
]

#answer("五、")[
*分析* 分母含 $1+x^2$，指数含 $arctan x$，可令 $x=tan t$ 后分部积分；也可利用 $dif e^(arctan x)=e^(arctan x)/(1+x^2)dif x$ 直接分部积分. 两种方法都会出现所求积分本身，移项解出即可.


解法1 令 $x=tan t$，则
$ integral (x e^(arctan x))/(1+x^2)^(3/2) dif x=integral (e^t tan t)/(1+tan^2 t)^(3/2) sec^2 t dif t=integral e^t sin t dif t. $
而
$ integral e^t sin t dif t&=-integral e^t dif cos t=-(e^t cos t-integral e^t cos t dif t) \
&=-e^t cos t+e^t sin t-integral e^t sin t dif t, $
故
$ integral e^t sin t dif t=1/2 e^t (sin t-cos t)+C. $
因此
$ integral (x e^(arctan x))/(1+x^2)^(3/2) dif x&=1/2 e^(arctan x)(x/sqrt(1+x^2)-1/sqrt(1+x^2))+C \
&=((x-1)e^(arctan x))/(2 sqrt(1+x^2))+C. $
解法2
$ integral (x e^(arctan x))/(1+x^2)^(3/2) dif x&=integral x/sqrt(1+x^2) dif e^(arctan x) \
&=(x e^(arctan x))/sqrt(1+x^2)-integral e^(arctan x)/(1+x^2)^(3/2) dif x \
&=(x e^(arctan x))/sqrt(1+x^2)-integral 1/sqrt(1+x^2) dif e^(arctan x) \
&=(x e^(arctan x))/sqrt(1+x^2)-e^(arctan x)/sqrt(1+x^2)-integral (x e^(arctan x))/(1+x^2)^(3/2) dif x. $
移项，得
$ integral (x e^(arctan x))/(1+x^2)^(3/2) dif x=((x-1)e^(arctan x))/(2 sqrt(1+x^2))+C. $
]

#answer("六、")[
*分析* 先求反函数的一、二阶导数，将原方程转成二阶常系数非齐次线性方程，再用初值确定解. 直接对原方程降阶比较繁琐，且容易出错.


*解* （1）由反函数导数公式知 $(dif x)/(dif y)=1/y'$，即 $y'(dif x)/(dif y)=1$.

上式两端关于 $x$ 求导，得
$ y''(dif x)/(dif y)+(dif^2 x)/(dif y^2)(y')^2=0, $
所以 $(dif^2 x)/(dif y^2)=-(((dif x)/(dif y))y'')/(y')^2=-y''/(y')^3$.

代入原微分方程得 $y''-y=sin x$.（\*）

（2）方程（\*）所对应的齐次方程 $y''-y=0$ 的通解为 $Y=C_1 e^x+C_2 e^(-x)$.

设方程（\*）的特解为 $y^*=A cos x+B sin x$，代入方程（\*）求得 $A=0,B=-1/2$，故 $y^*=-1/2 sin x$，从而 $y''-y=sin x$ 的通解是
$ y(x)=C_1 e^x+C_2 e^(-x)-1/2 sin x. $
由 $y(0)=0,y'(0)=3/2$，得 $C_1=1,C_2=-1$，故所求初值问题的解为
$ y(x)=e^x-e^(-x)-1/2 sin x. $


*注* 关键是正确求出反函数的二阶导数. 原书指出本题也是同济大学《高等数学》第五版上册第101–102页中的一道习题，应掌握教材基本内容.
]

#answer("七、")[
*分析* 将交点数转为方程实根数，构造辅助函数，求其唯一最小值. 当最小值小于零时，还须检查两端极限，才能确定两个实根.


解 问题等价于讨论方程 $ln^4 x-4 ln x+4x-k=0$ 有几个不同实根.

设 $phi(x)=ln^4 x-4 ln x+4x-k$，则
$ phi'(x)=4(ln^3 x-1+x)/x. $
不难看出，$x=1$ 是 $phi(x)$ 的驻点.

当 $0<x<1$ 时，$phi'(x)<0$，即 $phi(x)$ 单调减少；当 $x>1$ 时，$phi'(x)>0$，即 $phi(x)$ 单调增加，故 $phi(1)=4-k$ 为函数 $phi(x)$ 的最小值.

当 $k<4$，即 $4-k>0$ 时，$phi(x)=0$ 无实根，即两条曲线无交点.

当 $k=4$，即 $4-k=0$ 时，$phi(x)=0$ 有唯一实根，即两条曲线只有一个交点.

当 $k>4$，即 $4-k<0$ 时，由于
$ lim_(x->0^+) phi(x)=lim_(x->0^+) [ln x(ln^3 x-4)+4x-k]=+infinity; $
$ lim_(x->+infinity) phi(x)=lim_(x->+infinity) [ln x(ln^3 x-4)+4x-k]=+infinity, $
故 $phi(x)=0$ 有两个实根，分别位于 $(0,1)$ 与 $(1,+infinity)$ 内，即两条曲线有两个交点.


*解法2* 令 $g(x)=4x-4 ln x+ln^4 x$，问题等价于 $g(x)=k$ 的根数. 有
$ g'(x)=frac(4(x-1+ln^3 x),x),quad g''(x)=frac(4(1+3ln^2 x-ln^3 x),x^2). $
唯一驻点为 $x=1$，且 $g''(1)>0$；由 $g'$ 两侧符号可知它是全局最小值点，$g(1)=4$. 两端极限均为正无穷，所以 $k<4$ 时无交点，$k=4$ 时一个，$k>4$ 时两个，分别位于 $(0,1),(1,+infinity)$.

*注* 只求最小值而不核对定义域两端的极限，不能直接断言有两个根.
]

#answer("八、")[
*分析* 由法线与中点条件建立一阶微分方程，确定曲线. 第二问先分别写出两曲线的弧长积分，再换元比较；不必计算这两个椭圆积分的具体值.


解 （1）曲线 $y=f(x)$ 在点 $P(x,y)$ 处的法线方程为
$ Y-y=-1/y' (X-x), $
其中 $(X,Y)$ 为法线上任意一点的坐标. 令 $X=0$，则
$ Y=y+x/y', $
故 $Q$ 点坐标为 $(0,y+x/y')$. 由题设知
$ y+y+x/y'=0, #text[即] 2y dif y+x dif x=0. $
积分得
$ x^2+2y^2=C quad (C #text[为任意常数]). $
由 $lr(y)|_(x=sqrt(2)/2)=1/2$ 知 $C=1$，故曲线 $y=f(x)$ 的方程为
$ x^2+2y^2=1. $
（2）曲线 $y=sin x$ 在 $[0,pi]$ 上的弧长为
$ l=2 integral_0^(pi/2) sqrt(1+cos^2 x) dif x. $
曲线 $y=f(x)$ 的参数方程为
$ cases(x=cos theta,y=sqrt(2)/2 sin theta), $
故
$ s=integral_0^(pi/2) sqrt(sin^2 theta+1/2 cos^2 theta) dif theta=1/sqrt(2) integral_0^(pi/2) sqrt(1+sin^2 theta) dif theta. $
令 $theta=pi/2-t$，则
$ s&=1/sqrt(2) integral_(pi/2)^0 sqrt(1+cos^2 t)(-dif t)=1/sqrt(2) integral_0^(pi/2) sqrt(1+cos^2 t) dif t \
&=l/(2 sqrt(2))=sqrt(2)/4 l. $


*典型错误* 未先写出正弦曲线弧长的定积分表达式，直接从椭圆弧长积分寻找与已知弧长的关系，因而无法完成比较.
]

#answer("九、")[
*分析* 可先用面积变化求时间与半径的关系，再由体积积分求导建立微分方程；也可直接用体积微元建立时间与高度的微分关系.


解 （1）设在 $t$ 时刻，液面的高度为 $y$，则由题设知此时液面的面积为 $pi phi^2(y)=4 pi+pi t$，从而 $t=phi^2(y)-4$.

（2）液面的高度为 $y$ 时，液体的体积为 $pi integral_0^y phi^2(u) dif u=3t=3 phi^2(y)-12$.

上式两边对 $y$ 求导，得
$ pi phi^2(y)=6 phi(y)phi'(y), #text[即] pi phi(y)=6 phi'(y). $
解此微分方程，得
$ phi(y)=C e^(pi/6 y), #text[其中] C #text[为任意常数], $
由 $phi(0)=2$，知 $C=2$，故所求曲线方程为
$ x=2e^(pi/6 y). $


*解法2* （1）在 $t$ 时刻，面积为 $4pi+pi t$，故 $phi^2(y)=4+t$.

（2）由体积变化微元有 $3dif t=(4pi+pi t)dif y$，积分得 $y=3/pi ln(4+t)+C$. 初值 $t=0,y=0$ 给出 $C=-3/pi ln 4$，所以
$ y=frac(3,pi)ln frac(4+t,4)=frac(3,pi)ln frac(x^2,4). $
由 $phi(0)=2$，取正根，得 $x=2e^(pi y/6)$.
]

#answer("十、")[
*分析* 本题结合连续性、单调性、变上限积分与中值定理. 前两问为第三问作准备. 可对 $F(x)=x^2,g(x)=integral_a^x f(t)dif t$ 用柯西中值定理，也可构造组合函数用罗尔定理，再用拉格朗日中值定理证明第三问.


证 （1）因为 $lim_(x->a^+) f(2x-a)/(x-a)$ 存在，故 $lim_(x->a^+) f(2x-a)=0$. 由 $f(x)$ 在 $[a,b]$ 上连续，从而 $f(a)=0$. 又 $f'(x)>0$ 知 $f(x)$ 在 $(a,b)$ 内单调增加，故
$ f(x)>f(a)=0,x in (a,b). $
（2）设 $F(x)=x^2,g(x)=integral_a^x f(t) dif t (a<=x<=b)$，则 $g'(x)=f(x)>0$，故 $F(x),g(x)$ 满足柯西中值定理的条件，于是在 $(a,b)$ 内存在点 $xi$，使
$ (F(b)-F(a))/(g(b)-g(a))=(b^2-a^2)/(integral_a^b f(t) dif t-integral_a^a f(t) dif t)=lr(((x^2)')/((integral_a^x f(t) dif t)'))|_(x=xi), $
即
$ (b^2-a^2)/(integral_a^b f(x) dif x)=(2xi)/f(xi). $
（3）因 $f(xi)=f(xi)-0=f(xi)-f(a)$，在 $[a,xi]$ 上应用拉格朗日中值定理，知在 $(a,xi)$ 内存在一点 $eta$，使 $f(xi)=f'(eta)(xi-a)$，从而由（2）的结论得
$ (b^2-a^2)/(integral_a^b f(x) dif x)=(2xi)/(f'(eta)(xi-a)), $
即有
$ f'(eta)(b^2-a^2)=(2xi)/(xi-a) integral_a^b f(x) dif x. $


*证法2* （1）由给定有限极限与连续性得 $f(a)=0$；由 $f'(x)>0$ 得 $f(x)>0$（$a<x<b$）.

（2）记 $I=integral_a^b f(t)dif t>0$，设
$ F(x)=x^2 I-(b^2-a^2)integral_a^x f(t)dif t. $
有 $F(a)=F(b)=a^2 I$，故罗尔定理给出 $xi in(a,b)$ 使 $F'(xi)=0$，即 $2xi I=(b^2-a^2)f(xi)$，得第二问结论.

（3）由 $F'(x)=2x I-(b^2-a^2)f(x)$，$F'(xi)=0,F'(a)=2a I$，在 $[a,xi]$ 上对 $F'$ 应用拉格朗日中值定理，存在 $eta in(a,xi)$ 使
$ F''(eta)=frac(F'(xi)-F'(a),xi-a)=-frac(2a I,xi-a). $
所以 $2I-(b^2-a^2)f'(eta)=-2a I/(xi-a)$，整理得
$ f'(eta)(b^2-a^2)=frac(2xi,xi-a)I. $
由于 $eta<xi$，两点相异.
]

#answer("十一、")[
*分析* 先求特征值，再利用可对角化要求重特征值对应足够多的无关特征向量，确定参数；最后以特征向量为列构造过渡矩阵.


解 矩阵 $A$ 的特征多项式为
$ |lambda E-A|&=mat(delim:"|",lambda-2,-2,0;-8,lambda-2,-a;0,0,lambda-6) \
&=(lambda-6)[(lambda-2)^2-16]=(lambda-6)^2 (lambda+2), $
故 $A$ 的特征值 $lambda_1=lambda_2=6,lambda_3=-2$.

由于 $A$ 相似于对角矩阵 $Lambda$，故对应于 $lambda_1=lambda_2=6$ 应有两个线性无关的特征向量，因此矩阵 $6E-A$ 的秩应为1. 从而有
$ 6E-A=mat(4,-2,0;-8,4,-a;0,0,0)->mat(2,-1,0;0,0,a;0,0,0), $
知 $a=0$.

于是对应于 $lambda_1=lambda_2=6$ 的两个线性无关特征向量可取为
$ xi_1=mat(0;0;1),xi_2=mat(1;2;0). $
当 $lambda_3=-2$ 时
$ lambda E-A=mat(-4,-2,0;-8,-4,0;0,0,-8)->mat(2,1,0;0,0,1;0,0,0), $
解方程组 $cases(2x_1+x_2=0,x_3=0)$，得对应于 $lambda_3=-2$ 的特征向量 $xi_3=mat(1;-2;0)$.

令 $P=mat(0,1,1;0,2,-2;1,0,0)$，则 $P$ 可逆，并有 $P^(-1) A P=Lambda$.
]

#answer("十二、")[
*分析* 三条不同直线交于一点，等价于对应非齐次方程组有唯一解. 用系数矩阵与增广矩阵同秩且秩等于未知量个数的条件证明.


*证法1* 必要性：设三直线 $l_1,l_2,l_3$ 交于一点，则线性方程组
$ cases(a x+2b y=-3c,b x+2c y=-3a,c x+2a y=-3b) quad #text[（\*）] $
有唯一解，故系数矩阵 $A=mat(a,2b;b,2c;c,2a)$ 与增广矩阵 $overline(A)=mat(a,2b,-3c;b,2c,-3a;c,2a,-3b)$ 的秩均为2，于是 $|overline(A)|=0$.

由于
$ |overline(A)|&=mat(delim:"|",a,2b,-3c;b,2c,-3a;c,2a,-3b) \
&=6(a+b+c)[a^2+b^2+c^2-a b-a c-b c] \
&=3(a+b+c)[(a-b)^2+(b-c)^2+(c-a)^2], $
但 $(a-b)^2+(b-c)^2+(c-a)^2!=0$，故 $a+b+c=0$.

充分性：由 $a+b+c=0$，则从必要性的证明可知，$|overline(A)|=0$，故秩$(overline(A))<3$.

由于
$ mat(delim:"|",a,2b;b,2c)=2(a c-b^2)=-2[a(a+b)+b^2]=-2[(a+1/2 b)^2+3/4 b^2]!=0, $
故秩$(A)=2$. 于是，秩$(A)=$秩$(overline(A))=2$.

因此方程组（\*）有唯一解，即三直线 $l_1,l_2,l_3$ 交于一点.

*证法2* 必要性：设三直线交于一点 $(x_0,y_0)$，则 $mat(x_0;y_0;1)$ 为 $A x=0$ 的非零解，其中 $A=mat(a,2b,3c;b,2c,3a;c,2a,3b)$. 于是 $|A|=0$.

而
$ |A|&=mat(delim:"|",a,2b,3c;b,2c,3a;c,2a,3b) \
&=-6(a+b+c)[a^2+b^2+c^2-a b-b c-a c] \
&=-3(a+b+c)[(a-b)^2+(b-c)^2+(c-a)^2], $
但 $(a-b)^2+(b-c)^2+(c-a)^2!=0$，故 $a+b+c=0$.

充分性：考虑线性方程组
$ cases(a x+2b y=-3c,b x+2c y=-3a,c x+2a y=-3b). quad #text[（\*）] $
将方程组（\*）的三个方程相加，并由 $a+b+c=0$ 可知，方程组（\*）等价于方程组
$ cases(a x+2b y=-3c,b x+2c y=-3a). quad #text[（\*\*）] $
因为
$ mat(delim:"|",a,2b;b,2c)=2(a c-b^2)=-2[a(a+b)+b^2]=-[a^2+b^2+(a+b)^2]!=0. $
故方程组（\*\*）有唯一解，所以方程组（\*）有唯一解，即三直线 $l_1,l_2,l_3$ 交于一点.


*典型错误* 仅写出同秩条件和行列式为零，却没有说明系数矩阵为什么秩为2，也没有展开行列式说明其与 $a+b+c=0$ 的等价关系. 将三式相加得到 $(a+b+c)(x+2y+3)=0$，不能立即推出 $a+b+c=0$；反过来，该相加后的式子成立，也不能推出三个原方程有公共解. 求唯一解应完整检查秩条件.
]

