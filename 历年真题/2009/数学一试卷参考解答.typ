#import "../template.typ": exam
#show: exam.with(year: 2009, subject: "一", title: "2009年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(true)


= 一、选择题：1—8小题，每小题4分，共32分. 在每小题给出的四个选项中，只有一项符合题目要求，把所选项前的字母填在题后的括号内.

#ezexam.question[
当 $x->0$ 时，$f(x)=x-sin(a x)$ 与 $g(x)=x^2 ln(1-b x)$ 是等价无穷小，则
#choices([$a=1,b=-1/6$.],[$a=1,b=1/6$.],[$a=-1,b=-1/6$.],[$a=-1,b=1/6$.])
#ezexam.solution(show-number: false)[
A.
]
]

#ezexam.question[
如图，正方形 ${ (x,y) | |x|<=1,|y|<=1 }$ 被其对角线划分为四个区域 $D_k(k=1,2,3,4)$，$I_k=integral.double_(D_k)y cos x dif x dif y$，则 $max_(1<=k<=4){I_k}=$ #fillin(len: 1.98438em)[].
#import "@preview/cetz:0.3.4": canvas, draw
#canvas({
 import draw: *
 line((-1,-1),(1,-1),(1,1),(-1,1),close:true)
 line((-1,-1),(1,1));line((-1,1),(1,-1))
 line((-1.5,0),(1.6,0),mark:(end:">"));line((0,-1.5),(0,1.6),mark:(end:">"))
 for (pos,label) in (((0,.6),$D_1$),((-.6,0),$D_2$),((0,-.6),$D_3$),((.6,0),$D_4$),((1.6,-.15),$x$),((-.15,1.6),$y$),((-.14,-.14),$O$),((1.1,-.15),[1]),((-1.1,-.15),[−1]),((-.15,1.1),[1]),((-.15,-1.1),[−1])) {content(pos,label)}
})
#choices([$I_1$.],[$I_2$.],[$I_3$.],[$I_4$.])
#ezexam.solution(show-number: false)[
A.
]
]

#ezexam.question[
设函数 $y=f(x)$ 在区间 $[-1,3]$ 上的图形如下，则函数 $F(x)=integral_0^x f(t)dif t$ 的图形为
#import "@preview/cetz:0.3.4": canvas, draw
#canvas({
 import draw: *
 line((-1.3,0),(3.4,0),mark:(end:">"));line((0,-1.5),(0,2.7),mark:(end:">"))
 line((-1,1),(0,1));circle((0,1),radius:.04,fill:white)
 bezier((0,-1),(1,0),(.4,-.7),(.8,-.3));bezier((1,0),(2,2),(1.3,1.1),(1.6,1.7))
 line((2,0),(3,0));circle((2,0),radius:.04,fill:white)
 line((-1,0),(-1,1),stroke:(dash:"dashed"));line((2,0),(2,2),stroke:(dash:"dashed"))
 for i in (-1,1,2,3){content((i,-.15),[#i])}
 content((-.2,-.2),$O$);content((-.15,1),[1]);content((-.15,2),[2]);content((-.2,-1),[−1]);content((3.4,-.15),$x$);content((-.2,2.7),$f(x)$)
})
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
#choices(columns: 2, box(graph-option(0)), box(graph-option(1)), box(graph-option(2)), box(graph-option(3)))
#ezexam.solution(show-number: false)[
D.
]
]

#ezexam.question[
设有两个数列 ${a_n},{b_n}$，若 $lim_(n->infinity)a_n=0$，则
#choices([当 $sum_(n=1)^infinity b_n$ 收敛时，$sum_(n=1)^infinity a_n b_n$ 收敛.],[当 $sum_(n=1)^infinity b_n$ 发散时，$sum_(n=1)^infinity a_n b_n$ 发散.],[当 $sum_(n=1)^infinity|b_n|$ 收敛时，$sum_(n=1)^infinity a_n^2 b_n^2$ 收敛.],[当 $sum_(n=1)^infinity|b_n|$ 发散时，$sum_(n=1)^infinity a_n^2 b_n^2$ 发散.])
#ezexam.solution(show-number: false)[
C.
]
]

#ezexam.question[
设 $alpha_1,alpha_2,alpha_3$ 是3维向量空间 $bold(upright(R))^3$ 的一组基，则由基 $alpha_1,1/2 alpha_2,1/3 alpha_3$ 到基 $alpha_1+alpha_2,alpha_2+alpha_3,alpha_3+alpha_1$ 的过渡矩阵为
#choices([$mat(1,0,1;2,2,0;0,3,3)$.],[$mat(1,2,0;0,2,3;1,0,3)$.],[$mat(1/2,1/4,-1/6;-1/2,1/4,1/6;1/2,-1/4,1/6)$.],[$mat(1/2,-1/2,1/2;1/4,1/4,-1/4;-1/6,1/6,1/6)$.])
#ezexam.solution(show-number: false)[
A.
]
]

#ezexam.question[
设 $A,B$ 均为2阶矩阵，$A^*,B^*$ 分别为 $A,B$ 的伴随矩阵.若 $|A|=2,|B|=3$，则分块矩阵 $mat(O,A;B,O)$ 的伴随矩阵为
#choices([$mat(O,3B^*;2A^*,O)$.],[$mat(O,2B^*;3A^*,O)$.],[$mat(O,3A^*;2B^*,O)$.],[$mat(O,2A^*;3B^*,O)$.])
#ezexam.solution(show-number: false)[
B.
]
]

#ezexam.question[
设随机变量 $X$ 的分布函数为 $F(x)=0.3Phi(x)+0.7Phi((x-1)/2)$，其中 $Phi(x)$ 为标准正态分布的分布函数，则 $E X=$ #fillin(len: 1.98438em)[].
#choices([0.],[0.3.],[0.7.],[1.])
#ezexam.solution(show-number: false)[
C.
]
]

#ezexam.question[
设随机变量 $X$ 与 $Y$ 相互独立，且 $X$ 服从标准正态分布 $N(0,1)$，$Y$ 的概率分布为 $P{Y=0}=P{Y=1}=1/2$.记 $F_Z(z)$ 为随机变量 $Z=X Y$ 的分布函数，则函数 $F_Z(z)$ 的间断点个数为
#choices([0.],[1.],[2.],[3.])
#ezexam.solution(show-number: false)[
B.
]
]

= 二、填空题：9—14小题，每小题4分，共24分. 把答案填在题中横线上.

#ezexam.question[
设函数 $f(u,v)$ 具有二阶连续偏导数，$z=f(x,x y)$，则 $(partial^2 z)/(partial x partial y)=$ #fillin(len: 1.98438em)[].
#ezexam.solution(show-number: false)[
$x f''_(12)+f'_2+x y f''_(22)$.
]
]

#ezexam.question[
若二阶常系数线性齐次微分方程 $y''+a y'+b y=0$ 的通解为 $y=(C_1+C_2 x)e^x$，则非齐次方程 $y''+a y'+b y=x$ 满足条件 $y(0)=2,y'(0)=0$ 的解为 $y=$ #fillin(len: 1.98438em)[].
#ezexam.solution(show-number: false)[
$x(1-e^x)+2$.
]
]

#ezexam.question[
已知曲线 $L:y=x^2(0<=x<=sqrt(2))$，则 $integral_L x dif s=$ #fillin(len: 1.98438em)[].
#ezexam.solution(show-number: false)[
$13/6$.
]
]

#ezexam.question[
设 $Omega={(x,y,z)|x^2+y^2+z^2<=1}$，则 $integral.triple_Omega z^2 dif x dif y dif z=$ #fillin(len: 1.98438em)[].
#ezexam.solution(show-number: false)[
$4/15 pi$.
]
]

#ezexam.question[
若3维列向量 $alpha,beta$ 满足 $alpha^T beta=2$，其中 $alpha^T$ 为 $alpha$ 的转置，则矩阵 $beta alpha^T$ 的非零特征值为 #fillin(len: 1.98438em)[].
#ezexam.solution(show-number: false)[
2.
]
]

#ezexam.question[
设 $X_1,X_2,dots,X_m$ 为来自二项分布总体 $B(n,p)$ 的简单随机样本，$overline(X)$ 和 $S^2$ 分别为样本均值和样本方差.若 $overline(X)+k S^2$ 为 $n p^2$ 的无偏估计量，则 $k=$ #fillin(len: 1.98438em)[].
#ezexam.solution(show-number: false)[
−1.
]
]

= 三、解答题：15—23小题，共94分. 解答应写出文字说明、证明过程或演算步骤.

#ezexam.question[
（本题满分9分）求二元函数 $f(x,y)=x^2(2+y^2)+y ln y$ 的极值.
#ezexam.solution(show-number: false)[
解　$f'_x(x,y)=2x(2+y^2),f'_y(x,y)=2x^2 y+ln y+1$.
令 $cases(f'_x(x,y)=0,f'_y(x,y)=0)$，解得唯一驻点 $(0,1/e)$.
由于
$ A=f''_(x x)(0,1/e)=2(2+y^2)|_((0,1/e))=2(2+1/e^2), $
$ B=f''_(x y)(0,1/e)=4x y|_((0,1/e))=0, $
$ C=f''_(y y)(0,1/e)=(2x^2+1/y)|_((0,1/e))=e, $
所以 $B^2-A C=-2e(2+1/e^2)<0$，且 $A>0$，从而 $f(0,1/e)$ 是 $f(x,y)$ 的极小值，极小值为 $f(0,1/e)=-1/e$.
]
]

#ezexam.question[
（本题满分9分）设 $a_n$ 为曲线 $y=x^n$ 与 $y=x^(n+1)(n=1,2,dots)$ 所围成区域的面积，记 $S_1=sum_(n=1)^infinity a_n,S_2=sum_(n=1)^infinity a_(2n-1)$，求 $S_1$ 与 $S_2$ 的值.
#ezexam.solution(show-number: false)[
解　曲线 $y=x^n$ 与 $y=x^(n+1)$ 的交点为 $(0,0)$ 和 $(1,1)$，所围区域的面积
$ a_n=integral_0^1(x^n-x^(n+1))dif x=1/(n+1)-1/(n+2). $
$ S_1=sum_(n=1)^infinity a_n=sum_(n=1)^infinity(1/(n+1)-1/(n+2))=1/2, $
$ S_2=sum_(n=1)^infinity a_(2n-1)=sum_(n=1)^infinity(1/(2n)-1/(2n+1))=sum_(n=2)^infinity(-1)^n 1/n. $
考察幂级数 $sum_(n=1)^infinity((-1)^n)/n x^n$，知其收敛域为 $(-1,1]$，和函数为 $-ln(1+x)$.
因为 $S(x)=sum_(n=2)^infinity((-1)^n)/n x^n=x-ln(1+x)$，令 $x=1$，得
$ S_2=sum_(n=1)^infinity a_(2n-1)=S(1)=1-ln 2. $
]
]

#ezexam.question[
（本题满分11分）椭球面 $S_1$ 是椭圆 $x^2/4+y^2/3=1$ 绕 $x$ 轴旋转而成，圆锥面 $S_2$ 是由过点 $(4,0)$ 且与椭圆 $x^2/4+y^2/3=1$ 相切的直线绕 $x$ 轴旋转而成.

（Ⅰ）求 $S_1$ 及 $S_2$ 的方程；

（Ⅱ）求 $S_1$ 与 $S_2$ 之间的立体体积.
#ezexam.solution(show-number: false)[
解　（Ⅰ）椭球面 $S_1$ 的方程为 $x^2/4+(y^2+z^2)/3=1$.
设切点为 $(x_0,y_0)$，则 $x^2/4+y^2/3=1$ 在 $(x_0,y_0)$ 处的切线方程为 $(x_0 x)/4+(y_0 y)/3=1$.
将 $x=4,y=0$ 代入切线方程得 $x_0=1$，从而 $y_0=plus.minus sqrt(3)/2 sqrt(4-x_0^2)=plus.minus 3/2$.
所以切线方程为 $x/4 plus.minus y/2=1$，从而圆锥面 $S_2$ 的方程为 $(x/4-1)^2=(y^2+z^2)/4$，即
$ (x-4)^2-4y^2-4z^2=0. $
（Ⅱ）$S_1$ 与 $S_2$ 之间的体积等于一个底面半径为 $3/2$、高为3的锥体体积 $9/4 pi$ 与部分椭球体体积 $V$ 之差，其中
$ V=(3pi)/4 integral_1^2(4-x^2)dif x=5/4 pi, $
故所求体积为 $9/4 pi-5/4 pi=pi$.
]
]

#ezexam.question[
（本题满分11分）

（Ⅰ）证明拉格朗日中值定理：若函数 $f(x)$ 在 $[a,b]$ 上连续，在 $(a,b)$ 内可导，则存在 $xi in(a,b)$，使得 $f(b)-f(a)=f'(xi)(b-a)$.

（Ⅱ）证明：若函数 $f(x)$ 在 $x=0$ 处连续，在 $(0,delta)(delta>0)$ 内可导，且 $lim_(x->0^+)f'(x)=A$，则 $f'_+(0)$ 存在，且 $f'_+(0)=A$.
#ezexam.solution(show-number: false)[
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
]
]

#ezexam.question[
（本题满分10分）计算曲面积分 $I=integral.surf_Sigma (x dif y dif z+y dif z dif x+z dif x dif y)/(x^2+y^2+z^2)^(3/2)$，其中 $Sigma$ 是曲面 $2x^2+2y^2+z^2=4$ 的外侧.
#ezexam.solution(show-number: false)[
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
]
]

#ezexam.question[
（本题满分11分）设 $A=mat(1,-1,-1;-1,1,1;0,-4,-2),xi_1=mat(-1;1;-2)$.

（Ⅰ）求满足 $A xi_2=xi_1,A^2 xi_3=xi_1$ 的所有向量 $xi_2,xi_3$；

（Ⅱ）对（Ⅰ）中的任意向量 $xi_2,xi_3$，证明 $xi_1,xi_2,xi_3$ 线性无关.
#ezexam.solution(show-number: false)[
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

证法2　由题设可得 $A xi_1=0$.设存在数 $k_1,k_2,k_3$，使得
$ k_1 xi_1+k_2 xi_2+k_3 xi_3=0. quad "①" $
等式两端左乘 $A$，得 $k_2 A xi_2+k_3 A xi_3=0$，即
$ k_2 xi_1+k_3 A xi_3=0. quad "②" $
等式两端再左乘 $A$，得 $k_3 A^2 xi_3=0$，即 $k_3 xi_1=0$.
于是 $k_3=0$.代入②式，得 $k_2 xi_1=0$，故 $k_2=0$.将 $k_2=k_3=0$ 代入①式，可得 $k_1=0$，从而 $xi_1,xi_2,xi_3$ 线性无关.
]
]

#ezexam.question[
（本题满分11分）设二次型 $f(x_1,x_2,x_3)=a x_1^2+a x_2^2+(a-1)x_3^2+2x_1 x_3-2x_2 x_3$.

（Ⅰ）求二次型 $f$ 的矩阵的所有特征值；

（Ⅱ）若二次型 $f$ 的规范形为 $y_1^2+y_2^2$，求 $a$ 的值.
#ezexam.solution(show-number: false)[
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
]
]

#ezexam.question[
（本题满分11分）袋中有1个红球、2个黑球与3个白球.现有放回地从袋中取两次，每次取一个球，以 $X,Y,Z$ 分别表示两次取球所取得的红球、黑球与白球的个数.

（Ⅰ）求 $P{X=1|Z=0}$；

（Ⅱ）求二维随机变量 $(X,Y)$ 的概率分布.
#ezexam.solution(show-number: false)[
解　（Ⅰ）
$ P{X=1|Z=0}=(P{X=1,Z=0})/(P{Z=0}) \
=(binom(2,1) dot 1/6 dot 1/3)/((1/2)^2)=4/9. $
（Ⅱ）由题意知 $X$ 与 $Y$ 的所有可能取值均为0，1，2.
$(X,Y)$ 的概率分布为
#table(columns:4,[$X slash Y$],[0],[1],[2],[0],[$1/4$],[$1/3$],[$1/9$],[1],[$1/6$],[$1/9$],[0],[2],[$1/36$],[0],[0])
]
]

#ezexam.question[
（本题满分11分）设总体 $X$ 的概率密度为 $f(x)=cases(lambda^2 x e^(-lambda x) quad x>0,0 quad "其他")$，其中参数 $lambda(lambda>0)$ 未知，$X_1,X_2,dots,X_n$ 是来自总体 $X$ 的简单随机样本.

（Ⅰ）求参数 $lambda$ 的矩估计量；

（Ⅱ）求参数 $lambda$ 的最大似然估计量.
#ezexam.solution(show-number: false)[
解　（Ⅰ）$E X=integral_(-infinity)^(+infinity)x f(x)dif x=integral_0^(+infinity)lambda^2 x^2 e^(-lambda x)dif x=2/lambda$.
令 $overline(X)=E X$，即 $overline(X)=2/lambda$，得 $lambda$ 的矩估计量为 $hat(lambda)_1=2/overline(X)$.

（Ⅱ）设 $x_1,x_2,dots,x_n(x_i>0,i=1,2,dots,n)$ 为样本观测值，则似然函数为
$ L(x_1,x_2,dots,x_n;lambda)=lambda^(2n)e^(-lambda sum_(i=1)^n x_i)product_(i=1)^n x_i, $
$ ln L=2n ln lambda-lambda sum_(i=1)^n x_i+sum_(i=1)^n ln x_i, $
由 $(dif ln L)/(dif lambda)=(2n)/lambda-sum_(i=1)^n x_i=0$，得 $lambda$ 的最大似然估计量为 $hat(lambda)_2=2/overline(X)$.
]
]

