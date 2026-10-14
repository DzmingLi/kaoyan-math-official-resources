#import "../template.typ": exam, answer
#show: exam.with(year: 1987, subject: "一", title: "1987年全国硕士研究生入学统一考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 1987 数学一试卷参考解答

= 一、填空题

#answer("（1）")[
由 $y'=2^x+x dot 2^x ln 2=2^x(1+x ln 2)=0$，得 $x=-frac(1,ln 2)$.
当 $x<-frac(1,ln 2)$ 时，$y'<0$；当 $x>-frac(1,ln 2)$ 时，$y'>0$.
故当 $x=-frac(1,ln 2)$ 时，函数 $y=x dot 2^x$ 取得极小值.
]

#answer("（2）")[
如图，所求面积
$ A&=integral_1^e ln x dif x+integral_e^(e+1)(e+1-x)dif x \
&=(x ln x)|_1^e-integral_1^e 1 dif x+((e+1)x-frac(x^2,2))|_e^(e+1)=frac(3,2). $
#align(center)[#image("1987-数学一-面积.svg", width: 48mm)]
]

#answer("（3）")[
题设中两条直线的方向向量分别为 $s_1=(0,1,1)$ 和 $s_2=(1,2,1)$，则所求平面的法向量
$ n=s_1 times s_2=(-1,1,-1). $
故所求过原点的平面方程为
$ (-1)(x-0)+1(y-0)+(-1)(z-0)=0, $
即 $x-y+z=0$.
]

#answer("（4）")[
*解法一* 直接利用圆 $L$ 的参数式方程计算：
$ "原式"&=integral_0^(2pi)[(2 dot 3cos t dot 3sin t-6sin t)(-3sin t)+(9cos^2 t-12cos t)3cos t]dif t \
&=integral_0^(2pi)(-54sin^2 t cos t+18sin^2 t+27cos^3 t-36cos^2 t)dif t \
&=0+9integral_0^(2pi)(1-cos 2t)dif t+27integral_0^(2pi)(1-sin^2 t)dif(sin t) \
&quad-18integral_0^(2pi)(1+cos 2t)dif t \
&=(18pi-0)+27(0-0)-18(2pi+0)=-18pi. $
*解法二* $L$ 所围成区域为 $D:x^2+y^2<=3^2$. 根据格林公式，
$ "原式"&=integral.double_D[frac(partial,partial x)(x^2-4x)-frac(partial,partial y)(2x y-2y)]dif x dif y \
&=integral.double_D[(2x-4)-(2x-2)]dif x dif y=-2integral.double_D dif x dif y=-18pi. $
]

#answer("（5）")[
本题考查向量在给定基底下的坐标的概念.
令 $x_1 alpha_1+x_2 alpha_2+x_3 alpha_3=beta$. 按向量的分量写出即有
$ cases(x_1+x_2=2,x_1+x_3=0,x_2+x_3=0). $
解出 $x_1=1,x_2=1,x_3=-1$，向量 $beta$ 的坐标是 $(1,1,-1)$.
注：由于基底是线性无关的，因而表示法唯一，即向量的坐标是唯一的.
]

= 二、选择题

#answer("（1）")[
*解一* 由极限的保号性，在 $a$ 的某个去心邻域内 $frac(f(x)-f(a),(x-a)^2)<0$，从而 $f(x)<f(a)$，故应选 B.
*解二* 取 $f(x)=-(x-a)^2$，$f'(a)=0$，故 A、D 不选；又 $f(x)$ 在 $a$ 取得极大值，C 不选.
]

#answer("（2）")[
积分与积分变量 $x$ 无关，故排除 B、C. 对于 A、D，由于 $f(t x)$ 中含有 $t$，应先做变量代换.
设 $t x=u$，$t dif x=dif u$；当 $x=0$ 时，$u=0$；当 $x=frac(s,t)$ 时，$u=s$.
于是 $I=integral_0^s f(u)dif u$，故选 D.
]

#answer("（3）")[
$frac(k+n,n^2) tilde frac(1,n)$，所以原级数不绝对收敛.
又因为 $sum_(n=1)^infinity(-1)^n frac(k,n^2)$ 和 $sum_(n=1)^infinity(-1)^n frac(1,n)$ 都收敛，所以原级数为条件收敛，故选 C.
或从 $sum_(n=1)^infinity frac((-1)^n k,n^2)$ 绝对收敛而 $sum_(n=1)^infinity(-1)^n frac(n,n^2)$ 条件收敛，得出原级数条件收敛.
注：条件收敛级数与绝对收敛级数之和为条件收敛级数.
]

#answer("（4）")[
题设中若是与 $A^*$ 有关的行列式计算问题，一般要从伴随矩阵的基本关系式 $A A^*=A^* A=|A|E$ 来着手分析.
对 $A A^*=A^* A=|A|E$ 两端取行列式，并利用 $|A B|=|A||B|$ 以及 $|k A|=k^n|A|$，可得
$ |A||A^*|=|A|^n. $
所以 $|A^*|=|A|^(n-1)=a^(n-1)$（$|A|=a!=0$），故应选 C.
注：不论 $A$ 是否可逆，均有 $|A^*|=|A|^(n-1)$ 成立. $|A|!=0$ 时如上解；若 $|A|=0$，根据秩的关系式 $r(A^*)<n$，即有 $|A^*|=0$，也可以用 $|A|^(n-1)$ 表示. 这是一个比较重要的关系式，在考研数学中也出现多次，应尽量熟悉和重视，以便于拓解题思路，节省解题时间.
]

= 解答题

#answer("三、")[
由欲证结论，易联想构造辅助函数 $F(x)=f(x)-x$，用零点定理去证 $F(x)$ 存在零点；而唯一性常用反证法证之.
由题设显见 $F(x)=f(x)-x in C[0,1]$，又
$ 0<f(x)<1 arrow.r F(0)=f(0)>0,quad F(1)=f(1)-1<0. $
根据闭区间上连续函数的零点定理，知至少存在一个 $xi in (0,1)$，使得
$ F(xi)=f(xi)-xi=0, $
即 $f(xi)=xi$.
下面用反证法证明唯一性. 假设存在 $x_1,x_2 in (0,1)$，且不妨设 $x_1<x_2$，使得 $f(x_1)=x_1,f(x_2)=x_2$，即有 $F(x_1)=F(x_2)=0$.
显见 $F(x)$ 在 $[x_1,x_2]$ 上满足罗尔定理的三个条件，于是存在 $eta in (x_1,x_2) subset (0,1)$，使得
$ F'(eta)=0, $
即 $f'(eta)=1$，这与题设 $f'(x)!=1$ 相矛盾，故唯一性也成立.
注：（1）判断零点存在性直接的方法是应用连续函数零点定理. 条件是：闭区间 $[a,b]$、其上的连续函数 $f(x)$、区间端点值异号 $f(a)f(b)<0$. 结论是存在 $xi in (a,b)$，使得 $f(xi)=0$.
（2）使用罗尔定理可证明导数存在零点. 条件是 $f(x)$ 在 $[a,b]$ 上连续、在 $(a,b)$ 内可导、端点值相同 $f(a)=f(b)$；结论是存在 $xi in (a,b)$，使 $f'(xi)=0$（在 $x=xi$ 处有水平切线）.
]

#answer("四、")[
由复合函数求导法则得
$ frac(partial u,partial x)&=f'_1 frac(partial,partial x)(x)+f'_2 frac(partial,partial x)(x y)=f'_1+y f'_2, \
frac(partial v,partial x)&=g'frac(partial,partial x)(x+x y)=g'(1+y). $
所以
$ frac(partial u,partial x)dot frac(partial v,partial x)=(f'_1+y f'_2)g'(1+y). $
注：$v=g(x+x y)$ 中的 $g$ 是一元函数 $v=g(t)$ 与二元函数 $t=x+x y$ 的复合函数，因此它对 $t$ 的导数应记为 $g'$ 而不是 $g'_x$.
]

#answer("五、")[
所给方程为三阶线性常系数非齐次方程，特征方程
$ r^3+6r^2+(9+a^2)r=0 $
的三个根为 $r_1=0,r_(2,3)=-3 plus.minus a i$. 齐次方程的通解为
$ Y=C_1+e^(-3x)(C_2 cos a x+C_3 sin a x). $
由于 $r=0$ 为单根，可设非齐次方程的特解为 $y^*=A x$，则 $(y^*)'=A,(y^*)''=0,(y^*)'''=0$.
代入原方程得 $A=frac(1,9+a^2)$，即特解为 $y^*=frac(x,9+a^2)$，故原方程的通解为
$ y=frac(x,9+a^2)+C_1+e^(-3x)(C_2 cos a x+C_3 sin a x). $
]

#answer("六、")[
$Sigma$ 的方程为 $y=x^2+z^2+1$. 补充平面 $Sigma_1:y=3$，方向向右；$Sigma_1$ 向 $x O z$ 面的投影域为 $D_(x z):x^2+z^2<=2$.
设 $Sigma$ 和 $Sigma_1$ 所围成区域为 $Omega$. 由高斯公式，得
$ I&=integral.triple_Omega(8y+1-4y-4y)dif V \
&quad-integral.double_(Sigma_1) x(8y+1)dif y dif z+2(1-y^2)dif z dif x-4y z dif x dif y \
&=integral.triple_Omega dif V-integral.double_(Sigma_1) x(8y+1)dif y dif z+2(1-y^2)dif z dif x-4y z dif x dif y. $
用截面法，
$ integral.triple_Omega dif V=integral_1^3 dif y integral.double_(x^2+z^2<=y-1)dif x dif z=pi integral_1^3(y-1)dif y=2pi. $
而补充平面的曲面积分为
$ integral.double_(D_(x z))2(1-3^2)dif z dif x=-32pi. $
故 $I=2pi-(-32pi)=34pi$.
]

#answer("七、")[
这是一个矩阵方程，对于矩阵方程应当先作恒等变形，然后再代入已知求解.
*解法一* 由已知 $A B=A+2B$，得 $(A-2E)B=A$.
$ A-2E&=mat(3,0,1;1,1,0;0,1,4)-2mat(1,0,0;0,1,0;0,0,1) \
&=mat(1,0,1;1,-1,0;0,1,2). $
且 $|A-2E|=mat(delim: "|",1,0,1;1,-1,0;0,1,2)=-1!=0$，故 $A-2E$ 可逆，所以
$ B&=(A-2E)^(-1)A=mat(2,-1,-1;2,-2,-1;-1,1,1)mat(3,0,1;1,1,0;0,1,4) \
&=mat(5,-2,-2;4,-3,-2;-2,2,3). $
*解法二* 可用初等行变换，由 $B=(A-2E)^(-1)A$ 直接求出 $B$，方法如下：
$ (A-2E dots.v A)&=mat(augment: #(vline: 3),1,0,1,3,0,1;1,-1,0,1,1,0;0,1,2,0,1,4) \
&arrow.r mat(augment: #(vline: 3),1,0,1,3,0,1;0,-1,-1,-2,1,-1;0,1,2,0,1,4) \
&arrow.r mat(augment: #(vline: 3),1,0,1,3,0,1;0,1,1,2,-1,1;0,0,1,-2,2,3) \
&arrow.r mat(augment: #(vline: 3),1,0,0,5,-2,-2;0,1,0,4,-3,-2;0,0,1,-2,2,3)=(E dots.v B). $
]

#answer("八、")[
线性方程组有解的充要条件是系数矩阵的秩等于增广矩阵的秩. 利用此理论，通过初等行变换化增广矩阵为阶梯形矩阵，根据阶梯形矩阵中最后一个阶梯所表示的方程是为“$0=0$”或“$0=d!=0$”判定参数为何值时线性方程组是否有解.
对增广矩阵作初等行变换，有
$ mat(augment: #(vline: 4),1,1,1,1,0;0,1,2,2,1;0,-1,a-3,-2,b;3,2,1,a,-1) \
arrow.r mat(augment: #(vline: 4),1,1,1,1,0;0,1,2,2,1;0,-1,a-3,-2,b;0,-1,-2,a-3,-1) \
arrow.r mat(augment: #(vline: 4),1,1,1,1,0;0,1,2,2,1;0,0,a-1,0,b+1;0,0,0,a-1,0). $
因此，当 $a!=1$ 时，$r(A)=r(overline(A))=4$，方程组有唯一解.
当 $a=1,b!=-1$ 时，$r(A)=2,r(overline(A))=3$，方程组无解.
当 $a=1,b=-1$ 时，$r(A)=r(overline(A))=2$，方程组有无穷多组解.
方程组的通解为
$ (-1,1,0,0)^T+k_1(1,-2,1,0)^T+k_2(1,-2,0,1)^T, $
$k_1,k_2$ 为任意常数.
]

= 九、填空题

#answer("（1）")[
由伯努利概型的概率计算公式知：
$ P(A"至少发生1次")&=1-P(A"发生0次") \
&=1-binom(n,0)p^0(1-p)^(n-0)=1-(1-p)^n, \
P(A"至多发生1次")&=P(A"发生0次")+P(A"发生1次") \
&=binom(n,0)p^0(1-p)^(n-0)+binom(n,1)p^1(1-p)^(n-1) \
&=(1-p)^n+n p(1-p)^(n-1). $
]

#answer("（2）")[
设 $A_i={"从第"i"个箱子中抽取的球为白球"}$（$i=1,2$），根据题意，则
$ P(A_1)=frac(3,5),quad P(overline(A_1))=frac(2,5),quad P(A_2|A_1)=frac(5,9),quad P(A_2|overline(A_1))=frac(4,9). $
由全概率公式知
$ P(A_2)=P(A_1)P(A_2|A_1)+P(overline(A_1))P(A_2|overline(A_1))=frac(23,45). $
根据贝叶斯公式知，在 $A_2$ 发生的条件下 $A_1$ 发生的概率为
$ P(A_1|A_2)=frac(P(A_1)P(A_2|A_1),P(A_2))=frac(15,23). $
]

#answer("（3）")[
由
$ f(x)=frac(1,sqrt(pi))e^(-x^2+2x-1)=frac(1,sqrt(2pi)dot sqrt(frac(1,2)))e^(-frac((x-1)^2,2(sqrt(frac(1,2)))^2)), $
知 $X$ 服从正态分布 $N(1,frac(1,2))$，所以 $E(X)=1,D(X)=frac(1,2)$.
]

#answer("十、")[
*解法一* 由于 $X$ 与 $Y$ 相互独立，所以 $(X,Y)$ 的概率密度函数为
$ f(x,y)=f_X(x)f_Y(y)=cases(e^(-y) & 0<=x<=1 comma y>0,0 & "其他"). $
使 $f(x,y)>0$ 的区域 $G$ 见图中带阴影的部分. $Z$ 的分布函数为
$ F_Z(z)=P{2X+Y<=z}=integral.double_(2x+y<=z) f(x,y)dif x dif y. $
使 $F_Z(z)>0$ 的积分区域是区域 $G$ 与下半平面 $2x+y<=z$ 的交（记为 $G_z$）. 有三种情况：
（1）当 $z<=0$ 时，$G_z$ 是空集，所以 $F_Z(z)=0$.
（2）当 $0<frac(z,2)<=1$ 时，$G_z$ 是三角形区域，所以
$ F_Z(z)=integral_0^(z/2)dif x integral_0^(z-2x)e^(-y)dif y=frac(z,2)-frac(1,2)(1-e^(-z)). $
（3）当 $frac(z,2)>1$ 时，$G_z$ 是梯形区域，因此
$ F_Z(z)=integral_0^1 dif x integral_0^(z-2x)e^(-y)dif y=1-frac(1,2)(e^2-1)e^(-z). $
故所求密度函数
$ f_Z(z)=F'_Z(z)=cases(0 & z<=0,frac(1,2)(1-e^(-z)) & 0<z<=2,frac(1,2)(e^2-1)e^(-z) & z>2). $
#align(center)[#image("1987-数学一-概率区域.svg", width: 45mm)]
*解法二* 利用卷积公式. 由 $X,Y$ 相互独立，从而 $Z$ 的密度函数为
$ f_Z(z)&=integral_(-infinity)^infinity f_X(x)f_Y(z-2x)dif x=integral_0^1 f_Y(z-2x)dif x \
&=#box($ cases(0 & z<=0,integral_0^(z/2)e^(-(z-2x))dif x & 0<z<=2,integral_0^1 e^(-(z-2x))dif x & z>2) $) \
&=#box($ cases(0 & z<=0,frac(1,2)(1-e^(-z)) & 0<z<=2,frac(1,2)(e^2-1)e^(-z) & z>2) $). $
]
