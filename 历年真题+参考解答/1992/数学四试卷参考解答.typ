#import "../template.typ": exam, answer
#show: exam.with(year:1992,subject:"四",title:"1992年全国硕士研究生入学统一考试",solutions:true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 1992 数学四试卷参考解答

= 一、填空题

#answer("（1）")[
$ f(t)=t lim_(x->infinity)(1+frac(2t,x-t))^x=t e^(2t). $
故 $f'(t)=e^(2t)(2t+1)$.
]

#answer("（2）")[
由 $Q=100-5P$ 得 $Q'(P)=-5$，需求弹性为
$ epsilon=P frac(Q'(P),Q(P))=-frac(5P,100-5P). $
令 $|epsilon|=|frac(5P,100-5P)|>1$，解得 $P>20$ 或 $10<P<20$. 又由 $Q(P)=0$ 得最高价格 $P=20$，故原书给出的价格范围为 $(10,20]$.
]

#answer("（3）")[
取 $f(x)=sin x$ 的反函数 $y=arcsin x$，定义域为 $[-1,1]$，则
$ phi(x)=f^(-1)(1-x^2)=arcsin(1-x^2). $
应满足 $-1<=1-x^2<=1$，即 $-sqrt(2)<=x<=sqrt(2)$，故定义域为 $[-sqrt(2),sqrt(2)]$.
也可直接由 $sin(phi(x))=1-x^2$ 得 $phi(x)=arcsin(1-x^2)$.
注：本题考查函数的定义域、复合函数与反函数的概念.
]

#answer("（4）")[
由
$ |lambda E-A|&=abs(mat(lambda-1,-1,-1,-1;-1,lambda-1,-1,-1;-1,-1,lambda-1,-1;-1,-1,-1,lambda-1)) \
&=abs(mat(lambda-4,-1,-1,-1;lambda-4,lambda-1,-1,-1;lambda-4,-1,lambda-1,-1;lambda-4,-1,-1,lambda-1))=(lambda-4)lambda^3=0, $
得 $lambda=4$ 或 $0$，所以非零特征值为 $4$.
注：若 $r(A)=1$，则矩阵的特征值为 $lambda_1=sum_(i=1)^n a_(i i),lambda_2=dots=lambda_n=0$.
]

#answer("（5）")[
由于 $A B C subset A B$ 且 $P(A B)=0$，得 $P(A B C)=0$. 根据加法公式，
$ P(A union B union C)&=P(A)+P(B)+P(C)-P(A B)-P(A C)-P(B C)+P(A B C) \
&=frac(1,4)+frac(1,4)+frac(1,4)-0-frac(1,8)+0=frac(5,8). $
]

= 二、选择题

#answer("（1）")[
解法一：
$ lim_(x->a)F(x)=a^2 lim_(x->a)frac(integral_a^x f(t)dif t,x-a)=a^2 lim_(x->a)f(x)=a^2 f(a). $
解法二：举特例，令 $f(x)=3$，则
$ F(x)=frac(x^2,x-a)integral_a^x 3dif t=3x^2, quad lim_(x->a)F(x)=3a^2. $
A、C、D 均不正确，选 B.
解法三：利用积分中值定理，
$ lim_(x->a)F(x)=a^2 lim_(x->a)frac((x-a)f(xi),x-a)=a^2 lim_(x->a)f(xi)=a^2 f(a), $
其中 $xi$ 介于 $a$ 与 $x$ 之间.
]

#answer("（2）")[
当 $x->0$ 时，$1-cos x~x^2/2,sqrt(1-x^2)-1~-x^2/2$，所以 A、B、C 都是同阶无穷小，应选 D.
事实上，
$ lim_(x->0)frac(x-sin x,x^2)=lim_(x->0)frac(1-cos x,2x)=lim_(x->0)frac(sin x,2)=0. $
所以 $x-sin x$ 是比 $x^2$ 高阶的无穷小.
]

#answer("（3）")[
采用排除法. $A,B$ 为两项明显干扰项，一般 $(A^(-1)+B^(-1))^(-1)$ 不等于 $A^(-1)+B^(-1)$ 或 $A+B$；不能把乘积的逆矩阵公式误用于和.
直接计算 C 项的逆矩阵，
$ [A(A+B)^(-1)B]^(-1)=B^(-1)(A+B)A^(-1)=A^(-1)+B^(-1). $
D 项也不成立，所以选 C.
注：一般 $(A^(-1)+B^(-1))^(-1)!=A+B$；不要将乘积与和的性质相混淆. $(A B)^(-1)=B^(-1)A^(-1)$.
]

#answer("（4）")[
所给向量组线性相关，当且仅当存在一组不全为零的 $k_1,dots,k_m$，使 $k_1 alpha_1+dots+k_m alpha_m=0$，所以 B 正确.
A 项未说明 $k_i$ 不全为零. C 项要求对任意一组不全为零的数等式成立，并非线性相关的定义；例如即使 $alpha_1=alpha_2$，取 $k_1=k_2=1$，也未必有 $k_1 alpha_1+k_2 alpha_2=0$. D 项等式对任意向量组都成立，不能推出线性无关.
]

#answer("（5）")[
解法一：由 $C supset A B$ 得
$ P(C)>=P(A B)=P(A)+P(B)-P(A union B)>=P(A)+P(B)-1. $
故选 D.
解法二：取 $A=B=emptyset,C=Omega$，则 $A B subset C$. 四项分别成为 $1=0$、$1=0$、$1<=-1$、$1>=-1$，仅 D 正确.
]

= 解答题

#answer("三、")[
分析：这是 $0/0$ 型极限，可用洛必达法则.
解法一：
$ "原式"&=lim_(x->1)frac(-sin(x-1)/cos(x-1),-(pi/2)cos(pi x/2)) \
&=frac(2,pi)lim_(x->1)frac(tan(x-1),cos(pi x/2)) \
&=frac(2,pi)lim_(x->1)frac(sec^2(x-1),-(pi/2)sin(pi x/2))=-frac(4,pi^2). $
解法二：令 $x-1=t$，则
$ "原式"&=lim_(t->0)frac(ln cos t,1-cos(pi t/2))=lim_(t->0)frac(ln[1+(cos t-1)],1-cos(pi t/2)) \
&=lim_(t->0)frac(cos t-1,1-cos(pi t/2))=lim_(t->0)frac(-t^2/2,pi^2 t^2/8)=-frac(4,pi^2). $
注：解法二用了等价无穷小代换，记住常见等价无穷小可使计算十分方便.
]

#block(breakable:false)[
#answer("四、")[
解法一：分部积分，
$ I&=-integral arctan(e^x)dif e^(-x)=-e^(-x)arctan(e^x)+integral frac(dif x,1+e^(2x)) \
&=-e^(-x)arctan(e^x)+integral (1-frac(e^(2x),1+e^(2x)))dif x \
&=-e^(-x)arctan(e^x)+x-frac(1,2)ln(1+e^(2x))+C. $
解法二：令 $e^x=t$，则
$ I&=integral frac(arctan t,t^2)dif t=-integral arctan t dif(1/t) \
&=-frac(arctan t,t)+integral frac(dif t,t(1+t^2)) \
&=-frac(arctan t,t)+ln|t|-frac(1,2)ln(1+t^2)+C \
&=-e^(-x)arctan(e^x)+x-frac(1,2)ln(1+e^(2x))+C. $
]
]
#answer("五、")[
分析：积分变量中含 $x$，须先换元，将其化为变上限积分，再对 $x$ 求导.
令 $u=t x$，则 $integral_0^1 f(t x)dif t=frac(1,x)integral_0^x f(u)dif u$，从而
$ integral_0^x f(u)dif u=x f(x)+x^2 sin x. $
两边求导，得 $f(x)=f(x)+x f'(x)+2x sin x+x^2 cos x$，因此
$ f'(x)=-(2sin x+x cos x), $
$ f(x)=-integral (2sin x+x cos x)dif x+C=cos x-x sin x+C. $
注：不能因积分上下限为常数，就误认 $integral_0^1 f(t x)dif t$ 与 $x$ 无关. 应先换元，让自由变量与积分变量一致，再作判断.
]

#block(breakable:false)[
#answer("六、")[
利用复合函数求偏导公式. 记 $u=x,v=x/y$，则
$ frac(partial z,partial x)=y cos(x y)+phi_u+frac(1,y)phi_v. $
因此
$ frac(partial^2 z,partial x partial y)&=cos(x y)-x y sin(x y)-frac(x,y^2)phi_(u v)-frac(1,y^2)phi_v+frac(1,y)(-frac(x,y^2))phi_(v v) \
&=cos(x y)-x y sin(x y)-frac(x,y^2)phi_(u v)-frac(1,y^2)phi_v-frac(x,y^3)phi_(v v). $
]
]
#answer("七、")[
（1）由 $dif C/dif x=40-20x+3x^2,dif R/dif x=32-10x$，积分得
$ C(x)=40x-10x^2+x^3+C_1, quad R(x)=32x-5x^2+C_2. $
固定成本为 $10$，所以 $C(0)=10,C_1=10$；$R(0)=0$，故 $C_2=0$. 所以
$ C(x)=10+40x-10x^2+x^3, quad R(x)=32x-5x^2, $
总利润函数为 $L(x)=R(x)-C(x)=-10-8x+5x^2-x^3$.
（2）$L'(x)=-8+10x-3x^2,L''(x)=10-6x$. 由 $L'(x)=0$ 得驻点 $x_1=4/3,x_2=2$. $L''(4/3)=2>0$，所以 $x_1$ 是极小值点，舍去；$L''(2)=-2<0$，所以 $x_2$ 是极大值点. 故当产量为 $2$ 时总利润最大.
]

#answer("八、")[
（1）存在性：令 $f(x)=x+p+q cos x$. 当 $x->+infinity$ 时，$f(x)->+infinity$，所以存在 $b$ 使 $f(b)>0$；当 $x->-infinity$ 时，$f(x)->-infinity$，所以存在 $a$ 使 $f(a)<0$. 由介值定理，$(a,b)$ 内存在 $c$ 使 $f(c)=0$.
（2）唯一性.
方法一：反证. 若有两个不同实根 $x_1,x_2$，由罗尔定理，两者之间存在 $x_0$ 使 $f'(x_0)=0$，即 $1-q sin x_0=0$，于是 $sin x_0=1/q>1$，矛盾. 故实根唯一.
方法二：因为 $f'(x)=1-q sin x>0$，$f$ 在实数轴严格增加，所以实根唯一.
注：存在性常用连续函数介值定理，唯一性常用罗尔定理，也可用函数单调性判定.
]

#answer("九、")[
（1）曲线在 $(x_0,1/x_0^2)$ 处的切线斜率为 $-2/x_0^3$，故切线方程为
$ y-frac(1,x_0^2)=-frac(2,x_0^3)(x-x_0). $
（2）令 $x=0$ 得 $y$ 轴截距 $B=3/x_0^2$；令 $y=0$ 得 $x$ 轴截距 $A=3x_0/2$. 设所截线段长为 $L$，则
$ L^2=A^2+B^2=9(x_0^2/4+1/x_0^4). $
令 $z=L^2$，则 $z'=9(x_0/2-4/x_0^5)$. 由 $z'=0$ 得 $x_0=plus.minus sqrt(2)$；又 $z''=9(1/2+20/x_0^6)>0$，故此处取极小值，也是最小值. 因此
$ L^2=9(frac(2,4)+frac(1,4))=frac(27,4), quad L_min=frac(3sqrt(3),2). $
]

#answer("十、")[
由 $A X+E=A^2+X$ 得
$ (A-E)X=A^2-E=(A-E)(A+E). $
因为 $A-E=mat(0,0,1;0,1,0;1,0,0)$ 可逆，所以
$ X=(A-E)^(-1)(A-E)(A+E)=A+E=mat(2,0,1;0,3,0;1,0,2). $
注：利用 $A^2-E=(A-E)(A+E)$，再说明 $A-E$ 可逆；也可直接计算 $X=(A-E)^(-1)(A^2-E)$.
]

#answer("十一、")[
令 $B=(b_1,b_2,b_3)$，则 $A B=(A b_1,A b_2,A b_3)=O$，故 $A b_j=0$（$j=1,2,3$）. 又 $B!=O$，所以至少一列非零，说明 $A x=0$ 有非零解，故 $r(A)<3$，即
$ |A|=abs(mat(1,2,-2;2,-1,lambda;3,1,-1))=0. $
解得 $lambda=1$.
注：$A B=O$ 把关系式常带出现，它意味着 $B$ 的列均为 $A x=0$ 的解，可从矩阵运算、线性方程组角度分析.
]

#answer("十二、")[
分析：与代数余子式有关，可联系伴随矩阵及公式 $A A^*=|A|E$.
由 $a_(i j)=A_(i j)$，得 $A^*=A^T$，所以 $A A^T=|A|E$. 两边取行列式，得 $|A|^2=|A|^3$，因此 $|A|=1$ 或 $0$.
又由 $a_(1 1)!=0$，
$ |A|=a_(1 1)A_(1 1)+a_(1 2)A_(1 2)+a_(1 3)A_(1 3)=a_(1 1)^2+a_(1 2)^2+a_(1 3)^2!=0. $
所以 $|A|=1$.
注：把行列式、代数余子式和行列式中的元素联系起来的公式有按行或列展开定理，以及
$ sum_(j=1)^n a_(i j)A_(i j)=|A|, quad sum_(j=1)^n a_(i j)A_(k j)=0 quad (i!=k). $
]

#answer("十三、")[
因为 $X~N(0,10^2)$，每次测量误差绝对值大于 $19.6$ 的概率为
$ p=P{|X|>19.6}=P{|X/10|>1.96}=2-2Phi(1.96)=0.05. $
设 $Y$ 为该事件出现次数，则 $Y~B(100,0.05)$，所以
$ alpha&=P{Y>=3}=1-P{Y=0}-P{Y=1}-P{Y=2} \
&=1-0.95^100-100times 0.05times 0.95^99-frac(100times 99,2)0.05^2 times 0.95^98. $
由泊松定理，$Y$ 近似服从参数 $lambda=n p=100times 0.05=5$ 的泊松分布，故
$ alpha&approx 1-e^(-lambda)-lambda e^(-lambda)-frac(lambda^2,2)e^(-lambda) \
&=1-e^(-lambda)(1+lambda+lambda^2/2)=1-0.007(1+5+12.5)approx 0.87. $
]

#block(breakable:false)[
#answer("十四、")[
解法一：设 $A_i$ 表示第 $i$ 部件需要调整，则概率依次为 $0.1,0.2,0.3$. $X$ 可取 $0,1,2,3$，由独立性，
$ P{X=0}&=0.9times 0.8times 0.7=0.504, \
P{X=1}&=0.1times 0.8times 0.7+0.9times 0.2times 0.7+0.9times 0.8times 0.3=0.398, \
P{X=2}&=0.1times 0.2times 0.7+0.1times 0.8times 0.3+0.9times 0.2times 0.3=0.092, \
P{X=3}&=0.1times 0.2times 0.3=0.006. $
于是
$ E X=0.398+2times 0.092+3times 0.006=0.6, $
$ D X=0.398+4times 0.092+9times 0.006-0.6^2=0.46. $
解法二：令 $X_i=cases(1 & "第" i "部件需要调整",0 & "否则")$，则 $X=X_1+X_2+X_3$，且三者相互独立、各服从 0—1 分布，故
$ E X_i=p_i, quad D X_i=p_i(1-p_i). $
所以 $E X=0.1+0.2+0.3=0.6$，$D X=0.09+0.16+0.21=0.46$.
注：先求分布再求期望、方差容易想到；分解随机变量并利用数字特征的性质计算比较简单.
]
]