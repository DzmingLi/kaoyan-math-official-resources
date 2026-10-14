#import "../template.typ": exam, answer
#show: exam.with(year: 1988, subject: "一", title: "1988年全国硕士研究生入学统一考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 1988 数学一试卷参考解答

= 一、填空题

#answer("（1）")[
由重要极限得 $f(t)=t e^(2t)$，所以
$ f'(t)=e^(2t)+2t e^(2t)=(1+2t)e^(2t). $
]

#answer("（2）")[
对等式两边求导得
$ f(x^3-1) dot 3x^2=1,quad f(x^3-1)=frac(1,3x^2). $
令 $x^3-1=7$，得 $x=2$，所以 $f(7)=frac(1,12)$.
]

#answer("（3）")[
$x=1$ 是 $f(x)$ 的间断点，$f(1-0)=1,f(1+0)=2$. 根据狄利克雷定理，级数在 $x=1$ 处收敛于
$ frac(1,2)[f(1-0)+f(1+0)]=frac(3,2). $
注：由收敛定理，在连续点 $x_0$ 处，$S(x_0)=f(x_0)$；在间断点 $x_1$ 处，$S(x_1)=frac(f(x_1-0)+f(x_1+0),2)$. 本题中 $f(1+0)$ 由 $f(x)$ 的周期性得到.
]

#answer("（4）")[
因为 $A+B=(alpha+beta,2gamma_2,2gamma_3,2gamma_4)$，所以
$ |A+B|&=8|alpha+beta,gamma_2,gamma_3,gamma_4| \
&=8(|alpha,gamma_2,gamma_3,gamma_4|+|beta,gamma_2,gamma_3,gamma_4|) \
&=8(|A|+|B|)=40. $
注：考生在解此类型题时，要注意以下两个误区：
（1）行列式的线性性质 1 即行列式的一行（或列）有公因数时，可把公因数提取到行列式记号之外，这一性质不要与 $|k A|=k^n|A|$ 相混淆.
（2）行列式的线性性质 2 即行列式的一行（或列）是两个数之和时，可把行列式按该行（或列）拆开成两个行列式之和，其他各行（或列）保持不变. $|A+B|$ 型行列式没有现成的计算公式，$|A+B|=|A|+|B|$ 是不正确的，因为如果拆开 $n$ 阶行列式 $|A+B|$，则应该是 $2^n$ 个 $n$ 阶行列式的和.
]

= 二、选择题

#answer("（1）")[
$ dif y=f'(x_0)Delta x=frac(1,2)Delta x,quad lim_(Delta x->0)frac(dif y,Delta x)=frac(1,2). $
因此 $dif y$ 与 $Delta x$ 为同阶无穷小，应选 B.
注：函数的微分定义是：若 $Delta x$ 是自变量的改变量，且函数在点 $x$ 处的改变量 $Delta y=A Delta x+o(Delta x)$，其中 $A$ 与 $Delta x$ 无关，$o(Delta x)$ 是 $Delta x$ 的高阶无穷小，则称函数在该点可微. $A Delta x$ 称为函数的微分，记为 $dif y=dif f(x)=A Delta x=A dif x=f'(x)dif x=f'(x)Delta x$.
]

#answer("（2）")[
由 $f''(x)-2f'(x)+4f(x)=0$，得
$ f''(x_0)=2f'(x_0)-4f(x_0)=-4f(x_0)<0. $
故 $f(x)$ 在 $x_0$ 处取得极大值，应选 A.
]

#answer("（3）")[
$Omega_1$ 关于 $x O z$ 面、$y O z$ 面对称，凡被积函数关于 $y$ 或 $x$ 为奇函数的积分均为 0，因此选项 A、B、D 的左端积分均为 0，而右端均大于 0，故 A、B、D 被排除，应选 C.
或从下面的结论也能得到答案：若 $Omega$ 关于 $y z$ 平面与 $z x$ 平面对称，被积函数 $f(x,y,z)$ 对 $x,y$ 均是偶函数，则 $Omega$ 上的积分可化成 $Omega_1$ 上积分的 4 倍，即
$ integral.triple_Omega f(x,y,z)dif V=4integral.triple_(Omega_1) f(x,y,z)dif V, $
其中 $Omega_1=Omega inter {x>=0,y>=0}$. 这里 $f(x,y,z)=z$ 满足这个条件.
注：设 $Omega$ 关于 $x O y$ 平面对称，则
$ integral.triple_Omega f(x,y,z)dif V=cases(0 & f(x,y,-z)=-f(x,y,z),2integral.triple_(Omega_1) f(x,y,z)dif V & f(x,y,-z)=f(x,y,z)), $
其中 $Omega_1$ 为 $Omega$ 位于 $z>=0$ 的部分.
]

#answer("（4）")[
由于 $sum_(n=1)^infinity a_n(x-1)^n$ 在 $x=-1$ 处收敛，则当 $|x-1|<|-1-1|=2$ 时，原级数绝对收敛. 而 $|2-1|=1<2$，则原级数在 $x=2$ 处绝对收敛，应选 B.
注：阿贝尔定理：若幂级数 $sum_(n=1)^infinity a_n x^n$ 在 $x_0!=0$ 处收敛，则其在满足 $|x|<|x_0|$ 的所有 $x$ 处绝对收敛. 它是揭示幂级数收敛性的一个重要命题，是确定幂级数收敛半径的依据.
]

#answer("（5）")[
向量组线性无关是要求任一组 $k_1,k_2,...,k_s$ 不全为 0，必有 $k_1 alpha_1+k_2 alpha_2+...+k_s alpha_s!=0$. 而 A 的题设是存在一组，因此 A 不正确.
任意 $s-1$ 个向量线性无关并不能说明 $s$ 个向量仍线性无关. 例如 $alpha_1=(1,0,0)^T,alpha_2=(0,0,1)^T,alpha_3=(1,0,1)^T$，易知任两个向量均线性无关，但 $alpha_3$ 可由 $alpha_1,alpha_2$ 线性表出，可见 B 不正确.
当某一个向量不能用其余向量线性表出时，并不能说明这个向量组线性无关，因为还可能有另一个向量可以由其余向量线性表出，而使向量组线性相关. 例如 $alpha_1=(1,0,0)^T,alpha_2=(0,0,1)^T,alpha_3=(0,0,2)^T$，虽然 $alpha_1$ 不能由 $alpha_2,alpha_3$ 线性表出，但是 $alpha_2$ 可以由 $alpha_1,alpha_3$ 线性表出，仍有 $alpha_1,alpha_2,alpha_3$ 线性相关，可见 C 也不正确.
故应选 D.
注：本题 A、B、C 选项均是 $alpha_1,alpha_2,...,alpha_s$ 线性无关的必要条件，而非充分条件.
]

= 解答题

#answer("三、")[
由已知，解出函数 $phi(x)$，便可得出定义域.
由 $f[phi(x)]=e^([phi(x)]^2)=1-x$，得 $phi(x)=sqrt(ln(1-x))$. 要求 $ln(1-x)>=0$，即 $1-x>=1$，得 $x<=0$. 所以 $phi(x)$ 的定义域为 $(-infinity,0]$.
注：应熟记常见简单函数的定义域，如 $y=log_a x$ 的定义域为 $x>0$，$y=arcsin x$、$y=arccos x$ 的定义域为 $|x|<=1$ 等.
已知 $f(x)$ 的定义域，求 $f(phi(x))$ 的定义域，可令 $u=phi(x)$，由 $u$ 的取值范围求出 $x$ 的取值范围.
已知 $f(phi(x))$ 的定义域，求 $f(x)$ 的定义域，可令 $u=phi(x)$，由 $x$ 的取值范围求出 $u$ 的取值范围.
]

#answer("四、")[
先证存在性. 对任意 $t in (a,b)$，有
$ S_1(t)=integral_a^t[f(t)-f(x)]dif x,quad S_2(t)=integral_t^b[f(x)-f(t)]dif x. $
作辅助函数 $F(t)=S_1(t)-3S_2(t)$. 因为 $f'(x)>0$，故 $f(x)$ 严格增加，$f(a)<f(x)<f(b)$，所以
$ F(a)&=-3integral_a^b[f(x)-f(a)]dif x<0, \
F(b)&=integral_a^b[f(b)-f(x)]dif x>0. $
由连续函数零点定理，存在 $xi in (a,b)$，使 $F(xi)=0$，即 $S_1(xi)=3S_2(xi)$.
再证唯一性. 因为
$ F'(t)&=frac(dif,dif t)[f(t)(t-a)-integral_a^t f(x)dif x \
&quad-3integral_t^b f(x)dif x+3f(t)(b-t)] \
&=f'(t)[(t-a)+3(b-t)]>0, $
故 $F(t)$ 在 $(a,b)$ 内严格增加，$F(t)=0$ 的根唯一，即满足条件的 $xi$ 唯一.
]

#answer("五、")[
由复合函数求导法则得
$ frac(partial u,partial x)=f'(x/y)+g(y/x)-frac(y,x)g'(y/x). $
再求二阶偏导数得
$ frac(partial^2 u,partial x^2)&=frac(1,y)f''-frac(y,x^2)g'+frac(y,x^2)g'+frac(y^2,x^3)g'' \
&=frac(1,y)f''+frac(y^2,x^3)g'', \
frac(partial^2 u,partial x partial y)&=-frac(x,y^2)f''+frac(1,x)g'-frac(1,x)g'-frac(y,x^2)g'' \
&=-frac(x,y^2)f''-frac(y,x^2)g''. $
故 $x frac(partial^2 u,partial x^2)+y frac(partial^2 u,partial x partial y)=0$.
注：这里 $f(x/y),g(y/x)$ 都是一元函数与二元函数的复合函数，求二阶偏导时要注意 $f'$ 和 $g'$ 也是复合函数.
]

#answer("六、")[
设 $Sigma$ 所围区域记为 $Omega$. 用高斯公式，有
$ I&=3integral.triple_Omega (x^2+y^2+z^2)dif V \
&=3integral_0^(2pi)dif theta integral_0^pi sin phi dif phi integral_0^1 r^2 dot r^2 dif r=frac(12,5)pi. $
]

#answer("七、")[
由题意，引力 $F$ 的大小 $|F|=k/r^2$，而方向为 $arrow(M A)=(0-x,1-y)$，因此
$ F^0=(-x/r,(1-y)/r),quad r=|arrow(M A)|=sqrt(x^2+(1-y)^2). $
引力 $F=|F|F^0=frac(k,r^3)(-x,1-y)$. 于是引力所作的功
$ W=k integral_(B O)frac(-x dif x+(1-y)dif y,[x^2+(1-y)^2]^(3/2)). $
记 $P=frac(-k x,[x^2+(1-y)^2]^(3/2)),Q=frac(k(1-y),[x^2+(1-y)^2]^(3/2))$.
由 $frac(partial Q,partial x)=frac(-3k x(1-y),[x^2+(1-y)^2]^(5/2))=frac(partial P,partial y)$，积分与路径无关，故
$ W&=k integral_(B O)frac(-x dif x+(1-y)dif y,[x^2+(1-y)^2]^(3/2)) \
&=k integral_2^0 frac(-x dif x,(x^2+1)^(3/2))=k(1-frac(1,sqrt(5))). $
注：注意到 $dif r=frac(1,r)[x dif x-(1-y)dif y]$，则有
$ W=-k integral_(B O)frac(dif r,r^2)=k frac(1,r)|_(sqrt(5))^1=k(1-frac(1,sqrt(5))). $
]

#answer("八、")[
由于
$ lim_(n->infinity)|frac(a_(n+1),a_n)|=lim_(n->infinity)frac(n 3^n,(n+1)3^(n+1))=frac(1,3), $
则 $R=3$，原幂级数在 $|x-3|<3$，即 $0<x<6$ 收敛.
当 $x=0$ 时，$sum_(n=1)^infinity frac((-3)^n,n 3^n)=sum_(n=1)^infinity frac((-1)^n,n)$ 收敛；当 $x=6$ 时，$sum_(n=1)^infinity frac(3^n,n 3^n)$ 发散. 故原幂级数收敛域为 $[0,6)$.
注：设 $R$ 为收敛半径，则 $(-R,R)$ 称为收敛区间，而收敛点的集合称为收敛域. 因此求幂级数的收敛域需讨论区间端点的级数敛散性.
]

#answer("九、")[
由 $|P|=-1!=0$，可知 $P$ 可逆，求出
$ P^(-1)=mat(1,0,0;2,-1,0;-4,1,1). $
又由 $A P=P B$，可得
$ A&=P B P^(-1) \
&=mat(1,0,0;2,-1,0;2,1,1)mat(1,0,0;0,0,0;0,0,-1)mat(1,0,0;2,-1,0;-4,1,1) \
&=mat(1,0,0;2,0,0;6,-1,-1). $
又因为
$ A^5&=(P B P^(-1))^5 \
&=(P B P^(-1))(P B P^(-1))(P B P^(-1))(P B P^(-1))(P B P^(-1)) \
&=P B(P^(-1)P)B(P^(-1)P)B(P^(-1)P)B(P^(-1)P)B P^(-1) \
&=P B^5 P^(-1). $
而 $B$ 是对角矩阵，易知 $B^5=B$. 故
$ A^5=P B P^(-1)=A=mat(1,0,0;2,0,0;6,-1,-1). $
注：本题实质上是相似矩阵问题，利用相似矩阵求高次幂是一种重要的方法.
]

#answer("十、")[
（1）因为 $A tilde B$，故 $|lambda E-A|=|lambda E-B|$ 对所有 $lambda$ 成立，即
$ mat(delim:"|",lambda-2,0,0;0,lambda,-1;0,-1,lambda-x)=mat(delim:"|",lambda-2,0,0;0,lambda-y,0;0,0,lambda+1), $
$ (lambda-2)[lambda(lambda-x)-1]=(lambda-2)(lambda-y)(lambda+1). $
可得 $x=0,y=1$.
（2）因为 $B$ 是对角矩阵，故知 $A$ 的特征值是 $lambda_1=2,lambda_2=1,lambda_3=-1$. 解方程组 $(lambda_i E-A)x=0$，得其相应的特征向量为 $alpha_1=(1,0,0)^T,alpha_2=(0,1,1)^T,alpha_3=(0,1,-1)^T$. 那么令
$ P=(alpha_1,alpha_2,alpha_3)=mat(1,0,0;0,1,1;0,1,-1), $
有 $P^(-1)A P=B$.
注：相似矩阵有相同的特征多项式.
]

= 十一、填空题

#answer("（1）")[
设在一次伯努利试验中，事件 $A$ 出现的概率为 $p$，则由伯努利概型的概率计算公式知：在三次独立试验中，
$ P(A"至少发生1次")&=1-P(A"发生0次") \
&=1-binom(3,0)p^0(1-p)^(3-0)=1-(1-p)^3=frac(19,27). $
从而可知 $p=frac(1,3)$.
]

#block(breakable: false)[

#answer("（2）")[
设用 $X$ 和 $Y$ 分别表示在 $(0,1)$ 中随机抽取的两个数，则 $(X,Y)$ 取值的区域是以 1 为边长的正方形，其面积为 1. 而事件 $A={X+Y<frac(6,5)}$ 所对应的区域是图中阴影部分，其面积为 $1-frac(1,2)(frac(4,5))^2=frac(17,25)$. 因此由几何概型的定义可知所求概率为 $P(A)=frac(17,25)$.
#align(center)[#image("1988-数学一-概率区域.svg", width: 36mm)]
]
]

#answer("（3）")[
由题设，$X tilde N(10,0.02^2)$，从而 $frac(X-10,0.02) tilde N(0,1)$. 因此所求概率为
$ P{9.95<X<10.05}&=P{frac(9.95-10,0.02)<frac(X-10,0.02)<frac(10.05-10,0.02)} \
&=P{-2.5<frac(X-10,0.02)<2.5} \
&=Phi(2.5)-Phi(-2.5) \
&=Phi(2.5)-[1-Phi(2.5)]=2Phi(2.5)-1=0.9876. $
]

#answer("十二、")[
*解法一（分布函数法）* 对任意 $y in (-infinity,+infinity)$，随机变量 $Y$ 的分布函数为
$ F_Y(y)&=P(Y<=y)=P(1-root(3,X)<=y)=P(X>=(1-y)^3) \
&=integral_((1-y)^3)^(+infinity)frac(1,pi(1+x^2))dif x. $
从而
$ f_Y(y)=F'_Y(y)=frac(3(1-y)^2,pi(1+(1-y)^6)). $
*解法二（公式法）* 设 $y=g(x)=1-root(3,x)$，其反函数为 $x=h(y)=(1-y)^3,h'(y)=-3(1-y)^2$.
从而对任意 $y in (-infinity,+infinity)$，
$ f_Y(y)=f_X(h(y))|h'(y)|=frac(3(1-y)^2,pi(1+(1-y)^6)). $
]
