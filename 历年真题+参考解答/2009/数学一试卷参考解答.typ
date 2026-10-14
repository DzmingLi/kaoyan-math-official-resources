#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2009, subject: "一", title: "2009年全国硕士研究生入学统一考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#import "@preview/cetz:0.5.2": canvas, draw
#let graph-option(k) = canvas({
 import draw: *
 scale(.7)
 line((-1.3,0),(3.4,0),mark:(end:">"));line((0,-1.3),(0,1.8),mark:(end:">"))
 let h=if k==2 {1} else {0}
 line((-1,if k==0 {1} else if k==2 {0} else {-1}),(0,h))
 bezier((0,h),(1,h - 0.75),(.45,h - 0.45),(.75,h - 0.85))
 bezier((1,h - 0.75),(2,if k==1 {.5} else if k==2 {1.5} else {.5}),(1.35,h - 0.7),(1.7,h + 0.05))
 if k==1 {line((2,0),(3,0));line((2,0),(2,.5),stroke:(dash:"dashed"))} else {line((2,if k==2 {1.5} else {.5}),(3,if k==2 {1.5} else {.5}))}
 for i in (-1,1,2,3){content((i,-.12),[#i])}
 content((-.15,-.15),$O$);content((3.4,-.1),$x$);content((-.2,1.8),$F(x)$)
})
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2009 数学一试卷参考解答

= 一、选择题

#answer("1.")[

选 A.
*解法1* 由泰勒公式，
$ f(x)=(1-a)x+a^3/6 x^3+o(x^3),quad g(x)=-b x^3+o(x^3). $
两者等价，故 $1-a=0,a^3/6=-b$，得 $a=1,b=-1/6$.
*解法2* 由 $x^2 ln(1-b x) tilde -b x^3$，应用洛必达法则，
$ lim_(x->0)f(x)/g(x)=lim_(x->0)(1-a cos a x)/(-3b x^2)=1. $
因此分子极限 $1-a$ 必为零，得 $a=1$. 再用 $1-cos x tilde x^2/2$，得到 $-1/(6b)=1$，故 $b=-1/6$.
*常见错误* 忽略对数展开中的负号，得到 $b=1/6$.

]

#answer("2.")[

选 A.
*解* 区域 $D_2,D_4$ 关于 $x$ 轴对称，被积函数 $y cos x$ 关于 $y$ 为奇函数，故 $I_2=I_4=0$. 在 $D_1$ 中被积函数非负且不恒为零，故 $I_1>0$；在 $D_3$ 中非正且不恒为零，故 $I_3<0$. 所以最大者为 $I_1$.
*注* 也可以直接计算，
$ I_1=integral_0^1 dif y integral_(-y)^y y cos x dif x=2(sin 1-cos 1), $
$ I_2=integral_(-1)^0 dif x integral_x^(-x)y cos x dif y=0, $
$ I_3=integral_(-1)^0 dif y integral_y^(-y)y cos x dif x=2(cos 1-sin 1), $
$ I_4=integral_0^1 dif x integral_(-x)^x y cos x dif y=0. $
不过这种做法计算量大且容易出错，利用对称性及符号更简便.


#align(center,canvas({
 import draw: *
 scale(.9)
 line((-1.5,0),(1.6,0),mark:(end:">"));line((0,-1.5),(0,1.6),mark:(end:">"))
 line((-1,-1),(1,-1),(1,1),(-1,1),close:true)
 line((-1,-1),(1,1));line((-1,1),(1,-1))
 content((0,.6),$D_1$);content((-.65,0),$D_2$);content((0,-.6),$D_3$);content((.65,0),$D_4$)
 content((-.13,-.13),$O$);content((1.55,-.15),$x$);content((-.15,1.55),$y$)
 content((-1,-.15),$-1$);content((1,-.15),$1$);content((-.15,1),$1$);content((-.2,-1),$-1$)
}))

]

#answer("3.")[

选 D.
*解* 除 $x=0,2$ 外，$F'(x)=f(x)$. 由图中 $f$ 的符号，$F$ 在 $(-1,0)$ 内递增，在 $(0,1)$ 内递减，在 $(1,2)$ 内递增，在 $(2,3)$ 内为常数. 又 $F$ 连续且 $F(0)=0$，故只有 D 符合.
*常见错误* 只考虑连续性和单调性，忽略 $F(0)=0$ 而误选 C.
#align(center,graph-option(3))

]

#answer("4.")[

选 C.
*解* $sum abs(b_n)$ 收敛，故 $b_n->0$；又 $a_n->0$，因此存在 $N$，使 $n>N$ 时 $abs(a_n)<1,abs(b_n)<1$. 此时
$ 0<=a_n^2 b_n^2<=abs(b_n). $
由比较判别法，$sum a_n^2 b_n^2$ 收敛.
*排除法* 取 $a_n=b_n=(-1)^n/sqrt(n)$，则 $sum b_n$ 收敛而 $sum a_n b_n=sum 1/n$ 发散，排除 A；同时 $sum abs(b_n)$ 发散而 $sum a_n^2 b_n^2=sum 1/n^2$ 收敛，排除 D. 取 $a_n=(-1)^n/sqrt(n),b_n=1$，则 $sum b_n$ 发散而 $sum a_n b_n$ 收敛，排除 B.

]

#answer("5.")[

选 A.
*分析* 过渡矩阵满足 $ (alpha_1+alpha_2,alpha_2+alpha_3,alpha_3+alpha_1)=(alpha_1,alpha_2/2,alpha_3/3)P $.
*解* 由
$ (alpha_1+alpha_2,alpha_2+alpha_3,alpha_3+alpha_1)=(alpha_1,alpha_2,alpha_3)mat(1,0,1;1,1,0;0,1,1), $
$ (alpha_1,alpha_2/2,alpha_3/3)=(alpha_1,alpha_2,alpha_3)op("diag")(1,1/2,1/3), $
及过渡矩阵的唯一性，得
$ P=op("diag")(1,2,3)mat(1,0,1;1,1,0;0,1,1)=mat(1,0,1;2,2,0;0,3,3). $
*常见错误* 把过渡方向写反，得到逆矩阵 C；将基向量竖排并把矩阵放在左侧，得到转置矩阵 B 或 D.

]

#answer("6.")[

选 B.
*解法1* 记 $C=mat(O,A;B,O)$，则 $det C=det A dot det B=6$，其伴随矩阵应满足 $C C^*=6E_4$. 各选项左乘 $C$ 分别得到
$ mat(4E_2,O;O,9E_2),quad mat(6E_2,O;O,6E_2), $
$ mat(2A B^*,O;O,3B A^*),quad mat(3A B^*,O;O,2B A^*). $
只有 B 符合.
*解法2* 设 $C^*=mat(X_1,X_2;X_3,X_4)$. 由 $C C^*=6E_4$ 得
$ B X_1=O,A X_4=O,A X_3=6E_2,B X_2=6E_2. $
$A,B$ 均可逆，所以 $X_1=X_4=O$，且
$ X_3=6A^(-1)=3A^*,quad X_2=6B^(-1)=2B^*. $
故 $C^*=mat(O,2B^*;3A^*,O)$.

]

#answer("7.")[

选 C.
*解* 对分布函数求导，得到密度
$ F'(x)=0.3Phi'(x)+0.35Phi'((x-1)/2). $
因此
$ E X=0.3integral_(-infinity)^infinity x Phi'(x)dif x
+0.35integral_(-infinity)^infinity x Phi'((x-1)/2)dif x. $
第一项积分为零. 第二项令 $u=(x-1)/2$，得
$ integral_(-infinity)^infinity x Phi'((x-1)/2)dif x
=2integral_(-infinity)^infinity(2u+1)Phi'(u)dif u=2. $
所以 $E X=0.35 times 2=0.7$.

]

#answer("8.")[

选 B.
*分析* 用全概率公式和独立性，先求 $Z=X Y$ 的分布函数.
*解* 在 $Y=0$ 时 $Z=0$，在 $Y=1$ 时 $Z=X$，故
$ F_Z(z)=P{X Y<=z}=1/2 P{0<=z}+1/2 P{X<=z} \
=cases(Phi(z)/2 & z<0,(1+Phi(z))/2 & z>=0). $
所以 $z=0$ 是唯一的间断点.

]

= 二、填空题

#answer("9.")[
$x f''_(12)+f'_2+x y f''_(22)$.
*解* 先对 $x$ 求偏导，再对 $y$ 求偏导，
$ (partial z)/(partial x)=f'_1(x,x y)+y f'_2(x,x y), $
$ (partial^2 z)/(partial x partial y)=x f''_(12)+f'_2+y x f''_(22). $

]

#answer("10.")[
$x(1-e^x)+2$.
*解* 齐次解表明特征方程有二重根 $lambda=1$，所以 $lambda^2-2lambda+1=0$，得 $a=-2,b=1$. 对 $y''-2y'+y=x$，设特解为 $A x+B$，代入得 $A=1,B=2$. 通解为
$ y=(C_1+C_2 x)e^x+x+2. $
由 $y(0)=2,y'(0)=0$，得 $C_1=0,C_2=-1$，所以 $y=x(1-e^x)+2$.

]

#answer("11.")[
$13/6$.
*解* 用第一类曲线积分公式，
$ integral_L x dif s=integral_0^(sqrt(2))x sqrt(1+4x^2)dif x \
=1/8 integral_0^(sqrt(2))sqrt(1+4x^2)dif(1+4x^2)
=[1/12(1+4x^2)^(3/2)]_0^(sqrt(2))=13/6. $
*常见错误* 不熟悉弧长微分 $dif s=sqrt(1+(y')^2)dif x$.

]

#answer("12.")[
$4pi/15$.
*解法1* 由对称性，
$ integral.triple_Omega z^2 dif x dif y dif z=1/3 integral.triple_Omega(x^2+y^2+z^2)dif x dif y dif z \
=1/3 integral_0^pi dif phi integral_0^(2pi)dif theta integral_0^1 r^4 sin phi dif r=4pi/15. $
*解法2* 直接用球面坐标，
$ integral.triple_Omega z^2 dif x dif y dif z
=integral_0^pi dif phi integral_0^(2pi)dif theta integral_0^1 r^4 cos^2 phi sin phi dif r \
=-2pi/15[cos^3 phi]_0^pi=4pi/15. $

]

#answer("13.")[
2.
*解* $beta alpha^T$ 的秩为 1，因此三个特征值中恰有两个为零. 记 $alpha=(x_1,x_2,x_3)^T,beta=(y_1,y_2,y_3)^T$，则
$ beta alpha^T=mat(x_1 y_1,x_2 y_1,x_3 y_1;x_1 y_2,x_2 y_2,x_3 y_2;x_1 y_3,x_2 y_3,x_3 y_3). $
其迹为 $sum_(i=1)^3 x_i y_i=alpha^T beta=2$，所以非零特征值为 2.
*常见错误* 只注意到零特征值而忽略题目要求的是非零特征值.

]

#answer("14.")[
$-1$.
*解* $E overline(X)=E X=n p,E S^2=D X=n p(1-p)$. 无偏性要求
$ E(overline(X)+k S^2)=n p+k n p(1-p)=n p^2. $
由此得 $k=-1$.

]

= 三、解答题

#answer("15.")[
解　$f'_x(x,y)=2x(2+y^2),f'_y(x,y)=2x^2 y+ln y+1$.
令 $cases(f'_x(x,y)=0,f'_y(x,y)=0)$，解得唯一驻点 $(0,1/e)$.
由于
$ A=f''_(x x)(0,1/e)=2(2+y^2)|_((0,1/e))=2(2+1/e^2), $
$ B=f''_(x y)(0,1/e)=4x y|_((0,1/e))=0, $
$ C=f''_(y y)(0,1/e)=(2x^2+1/y)|_((0,1/e))=e, $
所以 $B^2-A C=-2e(2+1/e^2)<0$，且 $A>0$，从而 $f(0,1/e)$ 是 $f(x,y)$ 的极小值，极小值为 $f(0,1/e)=-1/e$.

*解法2* 对任何固定的 $y>0$，有 $f(x,y)>=f(0,y)$，且 $x!=0$ 时不等号严格成立. 因此只需考察 $g(y)=f(0,y)=y ln y$. 由 $g'(y)=ln y+1$，知 $g$ 在 $(0,1/e)$ 递减，在 $(1/e,+infinity)$ 递增，所以在 $y=1/e$ 处取得极小值 $-1/e$. 从而 $f$ 在 $(0,1/e)$ 处取得极小值 $-1/e$，不存在极大值.
*常见错误* 驻点未必是极值点，求出驻点后必须判别. 仅分别考察 $f(x,1/e)$ 和 $f(0,y)$ 的单调性，也不能据此断定二元函数在该点取得极值.

]

#answer("16.")[
解　曲线 $y=x^n$ 与 $y=x^(n+1)$ 的交点为 $(0,0)$ 和 $(1,1)$，所围区域的面积
$ a_n=integral_0^1(x^n-x^(n+1))dif x=1/(n+1)-1/(n+2). $
$ S_1=sum_(n=1)^infinity a_n=sum_(n=1)^infinity(1/(n+1)-1/(n+2))=1/2, $
$ S_2=sum_(n=1)^infinity a_(2n-1)=sum_(n=1)^infinity(1/(2n)-1/(2n+1))=sum_(n=2)^infinity(-1)^n 1/n. $
考察幂级数 $sum_(n=1)^infinity((-1)^n)/n x^n$，知其收敛域为 $(-1,1]$，和函数为 $-ln(1+x)$.
因为 $S(x)=sum_(n=2)^infinity((-1)^n)/n x^n=x-ln(1+x)$，令 $x=1$，得
$ S_2=sum_(n=1)^infinity a_(2n-1)=S(1)=1-ln 2. $

*另一种求和方法* 令
$ S_1(x)=sum_(n=1)^infinity(x^(n+1)/(n+1)-x^(n+2)/(n+2)). $
在 $abs(x)<1$ 内逐项求导，得 $S'_1(x)=sum_(n=1)^infinity(x^n-x^(n+1))=x$. 因 $S_1(0)=0$，得 $S_1(x)=x^2/2$，并由端点连续性得 $S_1(1)=1/2$.
令
$ S_2(x)=sum_(n=1)^infinity(x^(2n)/(2n)-x^(2n+1)/(2n+1)). $
逐项求导得 $S'_2(x)=x/(1+x)$，由 $S_2(0)=0$ 得 $S_2(x)=x-ln(1+x)$，所以 $S_2(1)=1-ln 2$.
*再一种求 $S_2$ 的方法* 令
$ T(x)=sum_(n=1)^infinity x^(2n+1)/(2n(2n+1)). $
则 $T'(x)=sum_(n=1)^infinity x^(2n)/(2n)$，$T''(x)=x/(1-x^2)$. 由 $T(0)=T'(0)=0$，两次积分得
$ T'(x)=-1/2 ln(1-x^2), $
$ T(x)=-x/2 ln(1-x^2)+x-1/2 ln((1+x)/(1-x)) \
=1/2(1-x)ln(1-x)-x/2 ln(1+x)+x-1/2 ln(1+x). $
令 $x->1^-$，得 $S_2=1-ln 2$.
*用部分和求和* 记前 $n$ 项和为 $S_(1,n),S_(2,n)$，则
$ S_(1,n)=integral_0^1 sum_(k=1)^n(x^k-x^(k+1))dif x
=integral_0^1(x-x^(n+1))dif x=1/2-1/(n+2). $
令 $n->infinity$，得 $S_1=1/2$.
$ S_(2,n)=integral_0^1 sum_(k=1)^n(x^(2k-1)-x^(2k))dif x \
=integral_0^1 x(1-x^(2n))/(1+x)dif x
=1-ln 2-integral_0^1 x^(2n+1)/(1+x)dif x. $
由于
$ 0<integral_0^1 x^(2n+1)/(1+x)dif x<integral_0^1 x^(2n+1)dif x=1/(2n+2), $
所以 $S_2=lim_(n->infinity)S_(2,n)=1-ln 2$.
*常见错误* 曲线所围区域的积分上下限应为 0 和 1；不能把无穷级数的和与其前 $n$ 项和混淆.

]

#answer("17.")[
解　（Ⅰ）椭球面 $S_1$ 的方程为 $x^2/4+(y^2+z^2)/3=1$.
设切点为 $(x_0,y_0)$，则 $x^2/4+y^2/3=1$ 在 $(x_0,y_0)$ 处的切线方程为 $(x_0 x)/4+(y_0 y)/3=1$.
将 $x=4,y=0$ 代入切线方程得 $x_0=1$，从而 $y_0=plus.minus sqrt(3)/2 sqrt(4-x_0^2)=plus.minus 3/2$.
所以切线方程为 $x/4 plus.minus y/2=1$，从而圆锥面 $S_2$ 的方程为 $(x/4-1)^2=(y^2+z^2)/4$，即
$ (x-4)^2-4y^2-4z^2=0. $
（Ⅱ）$S_1$ 与 $S_2$ 之间的体积等于一个底面半径为 $3/2$、高为3的锥体体积 $9/4 pi$ 与部分椭球体体积 $V$ 之差，其中
$ V=(3pi)/4 integral_1^2(4-x^2)dif x=5/4 pi, $
故所求体积为 $9/4 pi-5/4 pi=pi$.

*解法2* 将所求立体看作绕 $x$ 轴的旋转体，
$ V=pi integral_2^4(-x/2+2)^2 dif x \
+pi integral_1^2[(-x/2+2)^2-(3-3x^2/4)]dif x
=2pi/3+pi/3=pi. $
*解法3* 用三重积分，
$ V=integral.double_(y^2+z^2<=9/4)dif y dif z
integral_(2sqrt(1-(y^2+z^2)/3))^(4-2sqrt(y^2+z^2))dif x \
=integral_0^(2pi)dif theta integral_0^(3/2)dif r
integral_(2sqrt(1-r^2/3))^(4-2r)r dif x=pi. $
*常见错误* 旋转后应把 $y^2$ 换成 $y^2+z^2$，不能写成 $(y+z)^2$. 应正确分割体积的积分区间，不能直接从 0 到 4 积分两截面积之差. 三重积分的圆锥面上界为 $x=4-2sqrt(y^2+z^2)$，不是加号.

]

#answer("18.")[
证　（Ⅰ）取 $F(x)=f(x)-(f(b)-f(a))/(b-a)(x-a)$，由题意知 $F(x)$ 在 $[a,b]$ 上连续，在 $(a,b)$ 内可导，且
$ F(a)=f(a)-(f(b)-f(a))/(b-a)(a-a)=f(a), $
$ F(b)=f(b)-(f(b)-f(a))/(b-a)(b-a)=f(a). $
根据罗尔定理，存在 $xi in(a,b)$，使得
$ F'(xi)=f'(xi)-(f(b)-f(a))/(b-a)=0, $
即 $f(b)-f(a)=f'(xi)(b-a)$.

（Ⅱ）对于任意的 $t in(0,delta)$，函数 $f(x)$ 在 $[0,t]$ 上连续，在 $(0,t)$ 内可导，由右导数定义及拉格朗日中值定理可得
$ f'_+(0)=lim_(t->0^+)(f(t)-f(0))/(t-0) \
=lim_(t->0^+)(f'(xi)t)/t=lim_(t->0^+)f'(xi), $
其中 $xi in(0,t)$.
由于 $lim_(t->0^+)f'(t)=A$，且当 $t->0^+$ 时，$xi->0^+$，所以 $lim_(t->0^+)f'(xi)=A$，故 $f'_+(0)$ 存在，且 $f'_+(0)=A$.

*（Ⅱ）证法2* 由洛必达法则，
$ lim_(x->0^+)(f(x)-f(0))/x
=lim_(x->0^+)f'(x)=A. $
所以 $f'_+(0)$ 存在，且等于 $A$.
*常见错误* （Ⅰ）不能直接引用柯西中值定理或泰勒公式来证明本题要求证明的拉格朗日中值定理. 也不能写 $f(b)-f(a)=integral_a^b f'(x)dif x=f'(xi)(b-a)$，题设没有给出 $f'$ 连续，甚至该积分是否存在尚未说明. 用反证法再积分导数不等式，同样需要说明积分存在及严格不等式的依据. （Ⅱ）不能先写 $f'_+(0)=lim_(x->0^+)f'(x)$ 再声称右导数存在；点处的导数与导函数的极限不能混淆.

]

#answer("19.")[
解　取 $Sigma_1:x^2+y^2+z^2=1$ 的外侧，$Omega$ 为 $Sigma$ 与 $Sigma_1$ 之间的部分.
$ I=integral.surf_Sigma (x dif y dif z+y dif z dif x+z dif x dif y)/(x^2+y^2+z^2)^(3/2) \
=integral.surf_(Sigma-Sigma_1)(x dif y dif z+y dif z dif x+z dif x dif y)/(x^2+y^2+z^2)^(3/2) \
+integral.surf_(Sigma_1)(x dif y dif z+y dif z dif x+z dif x dif y)/(x^2+y^2+z^2)^(3/2). $
根据高斯公式，可得
$ integral.surf_(Sigma-Sigma_1)(x dif y dif z+y dif z dif x+z dif x dif y)/(x^2+y^2+z^2)^(3/2) \
=integral.triple_Omega 0 dif x dif y dif z=0, $
$ integral.surf_(Sigma_1)(x dif y dif z+y dif z dif x+z dif x dif y)/(x^2+y^2+z^2)^(3/2) \
=integral.surf_(Sigma_1)x dif y dif z+y dif z dif x+z dif x dif y \
=integral.triple_(x^2+y^2+z^2<=1)3 dif x dif y dif z=4pi, $
所以 $I=4pi$.

*解法2* 将曲面分成上、下两部分，记 $D={ (x,y)|x^2+y^2<=2 }$，分别为
$ z=plus.minus sqrt(4-2x^2-2y^2). $
向上的法向量分别为
$ bold(n)_1=(2x/sqrt(4-2x^2-2y^2),2y/sqrt(4-2x^2-2y^2),1), $
$ bold(n)_2=(-2x/sqrt(4-2x^2-2y^2),-2y/sqrt(4-2x^2-2y^2),1). $
下半曲面的外侧向下，因此
记 $Q=(4-x^2-y^2)^(3/2)sqrt(4-2x^2-2y^2)$，则
$ I=integral.double_D (2x^2+2y^2+4-2x^2-2y^2)/Q dif x dif y \
-integral.double_D(-2x^2-2y^2-4+2x^2+2y^2)/Q dif x dif y \
=4sqrt(2)integral.double_D dif x dif y/((4-x^2-y^2)^(3/2)sqrt(2-x^2-y^2)) \
=4sqrt(2)integral_0^(2pi)dif theta integral_0^(sqrt(2))r dif r/((4-r^2)^(3/2)sqrt(2-r^2)). $
令 $2-r^2=t^2$，再令 $t=sqrt(2)tan u$，得
$ I=8sqrt(2)pi integral_0^(sqrt(2))dif t/(2+t^2)^(3/2)
=4sqrt(2)pi integral_0^(pi/4)cos u dif u=4pi. $
*常见错误* 被积函数在原点不满足高斯公式的条件，直接在整个椭球内使用高斯公式得到零是错误的；必须引入辅助曲面排除原点.

]

#answer("20.")[
（Ⅰ）解　对矩阵 $(A:xi_1)$ 施以初等行变换，得
$ (A:xi_1)=mat(1,-1,-1,-1;-1,1,1,1;0,-4,-2,-2,augment: #3) \
->mat(1,0,-1/2,-1/2;0,1,1/2,1/2;0,0,0,0,augment: #3), $
可求得 $xi_2=mat(-1/2+k/2;1/2-k/2;k)$，其中 $k$ 为任意常数.
又 $A^2=mat(2,2,0;-2,-2,0;4,4,0)$，对矩阵 $(A^2:xi_1)$ 施以初等行变换，得
$ (A^2:xi_1)=mat(2,2,0,-1;-2,-2,0,1;4,4,0,-2,augment: #3) \
->mat(1,1,0,-1/2;0,0,0,0;0,0,0,0,augment: #3), $
可求得 $xi_3=mat(-1/2-a;a;b)$，其中 $a,b$ 为任意常数.

（Ⅱ）证法1　由（Ⅰ）知
$ |xi_1,xi_2,xi_3|=det(-1,-1/2+k/2,-1/2-a;1,1/2-k/2,a;-2,k,b)=-1/2!=0, $
所以 $xi_1,xi_2,xi_3$ 线性无关.

证法2　由题设可得 $A xi_1=0$. 设存在数 $k_1,k_2,k_3$，使得
$ k_1 xi_1+k_2 xi_2+k_3 xi_3=0. quad "①" $
等式两端左乘 $A$，得 $k_2 A xi_2+k_3 A xi_3=0$，即
$ k_2 xi_1+k_3 A xi_3=0. quad "②" $
等式两端再左乘 $A$，得 $k_3 A^2 xi_3=0$，即 $k_3 xi_1=0$.
于是 $k_3=0$. 代入②式，得 $k_2 xi_1=0$，故 $k_2=0$. 将 $k_2=k_3=0$ 代入①式，可得 $k_1=0$，从而 $xi_1,xi_2,xi_3$ 线性无关.

*常见错误* 非齐次方程组的通解不能当作对应齐次方程组的基础解系. 通解的参数形式不唯一，可以代回方程检验. 行列式证明中不能略去任意常数；第二种证明必须利用关键条件 $A xi_1=0$.

]

#answer("21.")[
（Ⅰ）解　二次型 $f$ 的矩阵 $A=mat(a,0,1;0,a,-1;1,-1,a-1)$.
由于
$ |lambda E-A|=det(lambda-a,0,-1;0,lambda-a,1;-1,1,lambda-a+1) \
=(lambda-a)(lambda-(a+1))(lambda-(a-2)), $
所以 $A$ 的特征值为 $lambda_1=a,lambda_2=a+1,lambda_3=a-2$.

（Ⅱ）解法1　由于 $f$ 的规范形为 $y_1^2+y_2^2$，所以 $A$ 合同于 $mat(1,0,0;0,1,0;0,0,0)$，其秩为2，故 $|A|=lambda_1 lambda_2 lambda_3=0$，于是 $a=0$ 或 $a=-1$ 或 $a=2$.
当 $a=0$ 时，$lambda_1=0,lambda_2=1,lambda_3=-2$，此时 $f$ 的规范形为 $y_1^2-y_2^2$，不合题意.
当 $a=-1$ 时，$lambda_1=-1,lambda_2=0,lambda_3=-3$，此时 $f$ 的规范形为 $-y_1^2-y_2^2$，不合题意.
当 $a=2$ 时，$lambda_1=2,lambda_2=3,lambda_3=0$，此时 $f$ 的规范形为 $y_1^2+y_2^2$.
综上可知，$a=2$.

解法2　由于 $f$ 的规范形为 $y_1^2+y_2^2$，所以 $A$ 的特征值有2个为正数，1个为零.
又 $a-2<a<a+1$，所以 $a=2$.

*常见错误* 二次型的矩阵及其特征值应仔细计算. 不能把规范形与标准形混淆而断言特征值为 1；也不能把合同与相似混淆，断言 $A$ 相似于 $op("diag")(1,1,0)$.

]

#answer("22.")[
解　（Ⅰ）
$ P{X=1|Z=0}=(P{X=1,Z=0})/(P{Z=0}) \
=(binom(2,1) dot 1/6 dot 1/3)/((1/2)^2)=4/9. $
（Ⅱ）由题意知 $X$ 与 $Y$ 的所有可能取值均为0，1，2.
$(X,Y)$ 的概率分布为
#table(columns:4,[$X slash Y$],[0],[1],[2],[0],[$1/4$],[$1/3$],[$1/9$],[1],[$1/6$],[$1/9$],[0],[2],[$1/36$],[0],[0])
]

#answer("23.")[
解　（Ⅰ）$E X=integral_(-infinity)^(+infinity)x f(x)dif x=integral_0^(+infinity)lambda^2 x^2 e^(-lambda x)dif x=2/lambda$.
令 $overline(X)=E X$，即 $overline(X)=2/lambda$，得 $lambda$ 的矩估计量为 $hat(lambda)_1=2/overline(X)$.

（Ⅱ）设 $x_1,x_2,dots,x_n(x_i>0,i=1,2,dots,n)$ 为样本观测值，则似然函数为
$ L(x_1,x_2,dots,x_n;lambda)=lambda^(2n)e^(-lambda sum_(i=1)^n x_i)product_(i=1)^n x_i, $
$ ln L=2n ln lambda-lambda sum_(i=1)^n x_i+sum_(i=1)^n ln x_i, $
由 $(dif ln L)/(dif lambda)=(2n)/lambda-sum_(i=1)^n x_i=0$，得 $lambda$ 的最大似然估计量为 $hat(lambda)_2=2/overline(X)$.
]

