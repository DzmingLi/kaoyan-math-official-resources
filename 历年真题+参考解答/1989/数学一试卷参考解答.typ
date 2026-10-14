#import "../template.typ": exam, answer
#show: exam.with(year:1989,subject:"一",title:"1989年全国硕士研究生入学统一考试",solutions:true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 1989 数学一试卷参考解答

= 一、填空题

#answer("（1）")[
$ "原式"=-frac(1,2)lim_(h->0)frac(f(3-h)-f(3),-h)=-frac(1,2)f'(3)=-1. $
]

#answer("（2）")[
因为 $f(x)$ 连续，所以可积. 记 $integral_0^1 f(t)dif t=a$，则 $f(x)=x+2a$.
将等式两边从 $0$ 到 $1$ 积分，得
$ integral_0^1(x+2a)dif x=integral_0^1 f(t)dif t=a, $
即 $frac(1,2)+2a=a$，所以 $a=-frac(1,2)$，故 $f(x)=x-1$.
注：当定积分的上下限为常数时，积分值为常数.
]

#answer("（3）")[
解法一：$L$ 的方程为 $y=-sqrt(1-x^2),-1<=x<=1$，且
$ dif s=sqrt(1+y'^2)dif x=frac(dif x,sqrt(1-x^2)). $
所以
$ integral_L (x^2+y^2)dif s=integral_(-1)^1 frac(x^2+1-x^2,sqrt(1-x^2))dif x=arcsin x|_(-1)^1=pi. $
解法二：由 $L$ 的方程 $x^2+y^2=1,y<=0$，得
$ integral_L (x^2+y^2)dif s=integral_L 1dif s=pi. $
注：解法一是把对弧长的曲线积分化为参数的定积分. 当曲线用直角坐标方程 $y=f(x)$ 表示时，$dif s=sqrt(1+f'(x)^2)dif x$；用极坐标方程 $rho=rho(theta)$ 表示时，$dif s=sqrt(rho^2+rho'^2)dif theta$.
一般地，若曲线的参数方程为 $x=phi(t),y=psi(t),a<=t<=b$，则
$ integral_L f(x,y)dif s=integral_a^b f(phi(t),psi(t))sqrt(phi'(t)^2+psi'(t)^2)dif t. $
解法二利用曲线方程简化被积函数. 若在曲线上 $f(x,y)=k$，则曲线积分等于 $k$ 乘以曲线的弧长.
]

#answer("（4）")[
$ op("div")bold(u)|_P&=[frac(partial(x y^2),partial x)+frac(partial(y e^z),partial y)+frac(partial(x ln(1+z^2)),partial z)]|_P \
&=[y^2+e^z+frac(2x z,1+z^2)]|_((1,1,0))=2. $
]

#answer("（5）")[
$ A-2E=mat(1,0,0;1,2,0;0,0,1). $
解法一：对增广矩阵作初等行变换：
$ mat(augment:#(vline:3),1,0,0,1,0,0;1,2,0,0,1,0;0,0,1,0,0,1) \
arrow.r mat(augment:#(vline:3),1,0,0,1,0,0;0,2,0,-1,1,0;0,0,1,0,0,1) \
arrow.r mat(augment:#(vline:3),1,0,0,1,0,0;0,1,0,-1/2,1/2,0;0,0,1,0,0,1). $
所以
$ (A-2E)^(-1)=mat(1,0,0;-1/2,1/2,0;0,0,1). $
解法二：将 $A-2E$ 看成分块对角矩阵，其中 $B=mat(1,0;1,2)$，则
$ B^(-1)=frac(1,2)mat(2,0;-1,1). $
于是仍得上述逆矩阵.
注：二阶可逆矩阵的逆可由 $B^(-1)=B^* /|B|$ 求得，其中
$ mat(a,b;c,d)^*=mat(d,-b;-c,a). $
]

= 二、选择题

#answer("（1）")[
$ lim_(x->0^+)x sin(1/x)=0, quad lim_(x->+infinity)x sin(1/x)=1. $
所以曲线有且仅有水平渐近线，选 A.
]

#answer("（2）")[
曲面在 $P(x,y,z)$ 处的法向量为 $bold(n)_1=(2x,2y,1)$，已知平面的法向量为 $bold(n)_2=(2,2,1)$.
由两法向量平行，得
$ frac(2x,2)=frac(2y,2)=frac(1,1), $
所以 $x=y=1,z=2$，选 C.
注：两个平面平行，其法向量平行，不一定相等.
]

#answer("（3）")[
非齐次方程的通解等于相应齐次方程的通解加上非齐次方程的一个特解.
A 中 $C_1y_1+C_2y_2$ 不是齐次方程的通解.
B 可写成 $C_1(y_1-y_3)+C_2(y_2-y_3)$，它是齐次方程的解，不能作为非齐次方程的通解.
C 可写成 $C_1(y_1+y_3)+C_2(y_2+y_3)-y_3$，其中 $y_1+y_3,y_2+y_3$ 不是齐次方程的解.
D 可写成 $C_1(y_1-y_3)+C_2(y_2-y_3)+y_3$，故选 D.
注：$y_1-y_3,y_2-y_3$ 是相应齐次方程的两个线性无关的解. 若
$ lambda_1(y_1-y_3)+lambda_2(y_2-y_3)=0, $
则 $lambda_1y_1+lambda_2y_2-(lambda_1+lambda_2)y_3=0$. 由 $y_1,y_2,y_3$ 线性无关，得 $lambda_1=lambda_2=0$.
]

#answer("（4）")[
将 $f(x)$ 作奇延拓，再作周期为 $2$ 的延拓，所得函数的傅立叶级数为 $S(x)$.
$S(x)$ 是奇函数，且在 $x=frac(1,2)$ 处原函数连续，所以
$ S(-frac(1,2))=-S(frac(1,2))=-f(frac(1,2))=-frac(1,4). $
故选 B.
注：由奇函数性质可把负半轴上的函数值转化为正半轴上的函数值，再利用收敛定理求值.
]

#answer("（5）")[
解法一：由 $|A|=0$，知 $A$ 的列向量线性相关，故必有一列向量可由其余列向量线性表示，选 C.
解法二：A、B、D 都只是充分条件，不是必要条件. 例如
$ A=mat(1,2,3;2,3,5;3,4,7), $
其行列式为零，但没有零列，也没有两列对应成比例，排除 A、B.
又如
$ A=mat(1,2,3;2,4,5;3,6,7), $
其行列式为零，但第三列不能由其余两列线性表示，排除 D. 因此选 C.
注：这类概念选择题，对错误选项举反例，对正确选项作简短证明，有助于加深对概念的理解；考试时用排除法较为简便.
]

= 三、计算题

#answer("（1）")[
先对 $x$ 求偏导，得
$ frac(partial z,partial x)=f'(x-y)+frac(partial g,partial u)+y frac(partial g,partial v). $
再对 $y$ 求偏导，得
$ frac(partial^2 z,partial x partial y)=-f''(x-y)+x frac(partial^2 g,partial u partial v)+x y frac(partial^2 g,partial v^2)+frac(partial g,partial v). $
其中 $g$ 的各偏导均在 $(u,v)=(x,x y)$ 处取值.
注：混合偏导连续时，求导次序可以交换，可根据计算的繁简选择次序.
]

#answer("（2）")[
记 $P=x y^2,Q=y phi(x)$，由积分与路径无关，得
$ frac(partial P,partial y)=frac(partial Q,partial x), quad 2x y=y phi'(x). $
所以 $phi(x)=x^2+C$. 由 $phi(0)=0$，得 $C=0$，即 $phi(x)=x^2$.
取路径 $(0,0)->(1,0)->(1,1)$，则
$ integral_((0,0))^((1,1))x y^2 dif x+x^2 y dif y=integral_0^1 0dif x+integral_0^1 y dif y=frac(1,2). $
]

#answer("（3）")[
积分区域关于 $y O z$ 平面对称，$x$ 是关于 $x$ 的奇函数，因此 $integral.triple_Omega x dif V=0$，原式等于 $integral.triple_Omega z dif V$.
使用球坐标，积分限为 $0<=theta<=2pi,0<=phi<=pi/4,0<=rho<=1$，于是
$ "原式"&=integral_0^(2pi)dif theta integral_0^(pi/4)dif phi integral_0^1 rho cos phi dot rho^2 sin phi dif rho \
&=integral_0^(2pi)dif theta integral_0^(pi/4)cos phi sin phi dif phi integral_0^1 rho^3 dif rho=frac(pi,8). $
注：积分区域与球面、圆锥面有关，或被积函数含有 $sqrt(x^2+y^2+z^2)$ 时，常用球坐标. 先确定 $rho,theta,phi$ 的几何意义，再写体积微元和积分限.
]

= 解答题

#answer("四、")[
直接展开较困难，但其导数容易展开，可用间接展开法.
$ f'(x)=frac(1,1+((1+x)/(1-x))^2)dot frac(1-x+1+x,(1-x)^2)=frac(1,1+x^2). $
由
$ frac(1,1+x)=sum_(n=0)^infinity (-1)^n x^n, quad |x|<1, $
得 $f'(x)=sum_(n=0)^infinity (-1)^n x^(2n)$. 逐项积分，得
$ f(x)&=f(0)+integral_0^x f'(t)dif t \
&=frac(pi,4)+sum_(n=0)^infinity frac((-1)^n x^(2n+1),2n+1). $
在 $x=-1$ 处所得级数收敛；在 $x=1$ 处原函数没有定义. 故展开式的成立范围为 $[-1,1)$.
注：逐项积分有时能扩大展开式的成立范围. 不可遗漏 $f(0)$，且应说明展开式成立的范围.
]

#answer("五、")[
对等式求导，得
$ f'(x)&=cos x-[x integral_0^x f(t)dif t-integral_0^x t f(t)dif t]' \
&=cos x-integral_0^x f(t)dif t-x f(x)+x f(x) \
&=cos x-integral_0^x f(t)dif t. $
再求导，得 $f''(x)+f(x)=-sin x$，初始条件为 $f(0)=0,f'(0)=1$.
齐次方程的特征根为 $plus.minus i$，通解为 $C_1cos x+C_2sin x$.
由于共振，设特解为 $y^*=x(a cos x+b sin x)$，代入方程得 $a=frac(1,2),b=0$. 所以
$ f(x)=C_1cos x+C_2sin x+frac(1,2)x cos x. $
由初始条件，得 $C_1=0,C_2=frac(1,2)$，故
$ f(x)=frac(1,2)(sin x+x cos x). $
]

#answer("六、")[
$ integral_0^pi sqrt(1-cos 2x)dif x=integral_0^pi sqrt(2)|sin x|dif x=2sqrt(2). $
令 $F(x)=ln x-frac(x,e)+2sqrt(2)$，则 $F'(x)=frac(1,x)-frac(1,e)$，其唯一零点为 $x=e$.
因为
$ F(e^(-3))<0, quad F(e)=2sqrt(2)>0, quad F(e^4)<0, $
由零点存在定理知，在 $(e^(-3),e)$ 与 $(e,e^4)$ 中各至少有一个零点.
又 $F'(x)>0$ 在 $(0,e)$ 上成立，$F'(x)<0$ 在 $(e,+infinity)$ 上成立，所以这两个区间中各至多有一个零点. 因此原方程有且仅有两个不同实根.
注：本题只须知道定积分为正数，其具体值不是必需的.
]

#answer("七、")[
对增广矩阵作初等行变换：
$ mat(augment:#(vline:3),1,0,1,lambda;4,1,2,lambda+2;6,1,4,2lambda+3) \
arrow.r mat(augment:#(vline:3),1,0,1,lambda;0,1,-2,-3lambda+2;0,1,-2,-4lambda+3) \
arrow.r mat(augment:#(vline:3),1,0,1,lambda;0,1,-2,-3lambda+2;0,0,0,-lambda+1). $
方程组有解当且仅当 $lambda=1$. 此时等价于
$ cases(x_1+x_3=1,x_2-2x_3=-1). $
令 $x_3=k$，得一般解
$ mat(x_1;x_2;x_3)=k mat(-1;2;1)+mat(1;-1;0). $
]

#answer("八、")[
（1）设 $A bold(x)=lambda bold(x),bold(x)!=bold(0)$. 因 $A$ 可逆，$lambda!=0$.
左乘 $A^(-1)$，得 $bold(x)=lambda A^(-1)bold(x)$，即
$ A^(-1)bold(x)=frac(1,lambda)bold(x). $
所以 $frac(1,lambda)$ 为 $A^(-1)$ 的特征值.
（2）由 $A^(-1)=A^* /|A|$，得
$ A^*bold(x)=frac(|A|,lambda)bold(x). $
所以 $frac(|A|,lambda)$ 为 $A^*$ 的特征值.
注：讨论抽象矩阵的特征值，常从定义出发，利用矩阵之间的关系求其特征值和特征向量之间的关系.
]

#answer("九、")[
分析：这是二重积分与极值的结合题. 先利用二重积分求球面在定球内部那部分的面积，再把它看作 $R$ 的函数求最大值. 为计算方便，不妨把球心放在 $z$ 轴上.
设球面 $Sigma$ 的方程为 $x^2+y^2+(z-a)^2=R^2$，两球面交线满足
$ cases(x^2+y^2+z^2=a^2,x^2+y^2+(z-a)^2=R^2), $
从而 $x^2+y^2=frac(R^2,4a^2)(4a^2-R^2)$.
交线在 $x O y$ 平面上的投影围成区域 $D_(x y)$，所求部分的方程为 $z=a-sqrt(R^2-x^2-y^2)$. 面积为
$ S(R)&=integral.double_(D_(x y))sqrt(1+z_x^2+z_y^2)dif x dif y \
&=integral.double_(D_(x y))frac(R,sqrt(R^2-x^2-y^2))dif x dif y \
&=integral_0^(2pi)dif theta integral_0^(R/(2a)sqrt(4a^2-R^2))frac(r R,sqrt(R^2-r^2))dif r \
&=2pi R^2-frac(pi R^3,a), quad 0<R<2a. $
于是
$ S'(R)=4pi R-frac(3pi R^2,a), quad S''(R)=4pi-frac(6pi R,a). $
令 $S'(R)=0$，得唯一驻点 $R=frac(4,3)a$. 因为 $S''(frac(4,3)a)=-4pi<0$，所以当 $R=frac(4,3)a$ 时面积最大.
注：① 求曲面面积的步骤是写出曲面方程 $z=f(x,y)$，求出其在坐标平面上的投影区域，计算面积微元 $sqrt(1+z_x^2+z_y^2)dif sigma$，再积分.
② 曲面在坐标平面上的投影区域，一般由曲面边界线的投影围成.
]

= 十、填空题

#answer("（1）")[
$ P(A B)=P(A)P(B|A)=0.5times 0.8=0.4. $
所以 $P(A union B)=P(A)+P(B)-P(A B)=0.5+0.6-0.4=0.7$.
]

#answer("（2）")[
设 $A,B,C$ 分别表示“甲命中”“乙命中”“目标被击中”，则 $C=A union B,A C=A$. 因 $A,B$ 独立，
$ P(C)=0.6+0.5-0.6times 0.5=0.8. $
所以 $P(A|C)=frac(P(A C),P(C))=frac(P(A),P(C))=frac(0.6,0.8)=0.75$.
]

#answer("（3）")[
$xi$ 的密度在 $(1,6)$ 内为 $frac(1,5)$，在其余处为 $0$.
方程有实根当且仅当 $xi^2-4>=0$，即 $|xi|>=2$. 故所求概率为
$ P{2<=xi<6}=integral_2^6 frac(1,5)dif u=0.8. $
]

= 十一、解答题

#answer("十一、")[
独立正态随机变量的线性组合仍为正态随机变量. 由题设，
$ E Z=2E X-E Y+3=5, quad D Z=2^2 D X+D Y=9. $
故 $Z~N(5,9)$，其概率密度为
$ f_Z(z)=frac(1,3sqrt(2pi))e^(-(z-5)^2/18), quad -infinity<z<+infinity. $
]
