#import "../template.typ": exam
#show: exam.with(year: 2016, subject: "一")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(true)


= 一、选择题：1—8小题，每小题4分，共32分.在每小题给出的四个选项中，只有一项符合题目要求，把所选项前的字母填在题后的括号内.

#ezexam.question[
若反常积分 $integral_0^infinity 1/(x^a(1+x)^b)dif x$ 收敛，则
#choices([$a<1$ 且 $b>1$.], [$a>1$ 且 $b>1$.], [$a<1$ 且 $a+b>1$.], [$a>1$ 且 $a+b>1$.])
#ezexam.solution(show-number: false)[
C.
]
]

#ezexam.question[
已知函数 $f(x)=cases(2(x-1) & x<1,ln x & x>=1)$，则 $f(x)$ 的一个原函数是
#choices([$F(x)=cases((x-1)^2 & x<1,x(ln x-1) & x>=1)$.], [$F(x)=cases((x-1)^2 & x<1,x(ln x+1)-1 & x>=1)$.], [$F(x)=cases((x-1)^2 & x<1,x(ln x+1)+1 & x>=1)$.], [$F(x)=cases((x-1)^2 & x<1,x(ln x-1)+1 & x>=1)$.])
#ezexam.solution(show-number: false)[
D.
]
]

#ezexam.question[
若 $y=(1+x^2)^2-sqrt(1+x^2),y=(1+x^2)^2+sqrt(1+x^2)$ 是微分方程 $y'+p(x)y=q(x)$ 的两个解，则 $q(x)=$
#choices([$3x(1+x^2)$.], [$-3x(1+x^2)$.], [$x/(1+x^2)$.], [$-x/(1+x^2)$.])
#ezexam.solution(show-number: false)[
A.
]
]

#ezexam.question[
已知函数 $f(x)=cases(x & x<=0,1/n & 1/(n+1)<x<=1/n quad (n=1,2,dots))$，则
#choices([$x=0$ 是 $f(x)$ 的第一类间断点.], [$x=0$ 是 $f(x)$ 的第二类间断点.], [$f(x)$ 在 $x=0$ 处连续但不可导.], [$f(x)$ 在 $x=0$ 处可导.])
#ezexam.solution(show-number: false)[
D.
]
]

#ezexam.question[
设 $A,B$ 是可逆矩阵，且 $A$ 与 $B$ 相似，则下列结论错误的是
#choices([$A^T$ 与 $B^T$ 相似.], [$A^(-1)$ 与 $B^(-1)$ 相似.], [$A+A^T$ 与 $B+B^T$ 相似.], [$A+A^(-1)$ 与 $B+B^(-1)$ 相似.])
#ezexam.solution(show-number: false)[
C.
]
]

#ezexam.question[
设二次型 $f(x_1,x_2,x_3)=x_1^2+x_2^2+x_3^2+4x_1 x_2+4x_1 x_3+4x_2 x_3$，则 $f(x_1,x_2,x_3)=2$ 在空间直角坐标下表示的二次曲面为
#choices([单叶双曲面.], [双叶双曲面.], [椭球面.], [柱面.])
#ezexam.solution(show-number: false)[
B.
]
]

#ezexam.question[
设随机变量 $X tilde.op N(mu,sigma^2)$（$sigma>0$），记 $p=P{X<=mu+sigma^2}$，则
#choices([$p$ 随着 $mu$ 的增加而增加.], [$p$ 随着 $sigma$ 的增加而增加.], [$p$ 随着 $mu$ 的增加而减少.], [$p$ 随着 $sigma$ 的增加而减少.])
#ezexam.solution(show-number: false)[
B.
]
]

#ezexam.question[
随机试验 $E$ 有三种两两不相容的结果 $A_1,A_2,A_3$，且三种结果发生的概率均为 $1/3$.将试验 $E$ 独立重复做 2 次，$X$ 表示 2 次试验中结果 $A_1$ 发生的次数，$Y$ 表示 2 次试验中结果 $A_2$ 发生的次数，则 $X$ 与 $Y$ 的相关系数为
#choices([$-1/2$.], [$-1/3$.], [$1/3$.], [$1/2$.])
#ezexam.solution(show-number: false)[
A.
]
]

= 二、填空题：9—14小题，每小题4分，共24分.把答案填在题中横线上.

#ezexam.question[
$lim_(x->0)(integral_0^x t ln(1+t sin t)dif t)/(1-cos x^2)=$ #fillin(len: 3em)[].
#ezexam.solution(show-number: false)[
$1/2$.
]
]

#ezexam.question[
向量场 $bold(A)(x,y,z)=(x+y+z)bold(i)+x y bold(j)+z bold(k)$ 的旋度 $upright("rot")bold(A)=$ #fillin(len: 3em)[].
#ezexam.solution(show-number: false)[
$bold(j)+(y-1)bold(k)$.
]
]

#ezexam.question[
设函数 $f(u,v)$ 可微，$z=z(x,y)$ 由方程 $(x+1)z-y^2=x^2 f(x-z,y)$ 确定，则 $dif z|_((0,1))=$ #fillin(len: 3em)[].
#ezexam.solution(show-number: false)[
$-dif x+2dif y$.
]
]

#ezexam.question[
设函数 $f(x)=arctan x-x/(1+a x^2)$，且 $f'''(0)=1$，则 $a=$ #fillin(len: 3em)[].
#ezexam.solution(show-number: false)[
$1/2$.
]
]

#ezexam.question[
行列式 $mat(delim: "|",lambda,-1,0,0;0,lambda,-1,0;0,0,lambda,-1;4,3,2,lambda+1)=$ #fillin(len: 3em)[].
#ezexam.solution(show-number: false)[
$lambda^4+lambda^3+2lambda^2+3lambda+4$.
]
]

#ezexam.question[
设 $x_1,x_2,dots,x_n$ 为来自总体 $N(mu,sigma^2)$ 的简单随机样本，样本均值 $overline(x)=9.5$，参数 $mu$ 的置信度为 0.95 的双侧置信区间的置信上限为 10.8，则 $mu$ 的置信度为 0.95 的双侧置信区间为 #fillin(len: 3em)[].
#ezexam.solution(show-number: false)[
$(8.2,10.8)$.
]
]

= 三、解答题：15—23小题，共94分.解答应写出文字说明、证明过程或演算步骤.

#ezexam.question[
（本题满分 10 分）已知平面区域 $D={(r,theta)|2<=r<=2(1+cos theta),-pi/2<=theta<=pi/2}$，计算二重积分 $integral.double_D x dif x dif y$.
#ezexam.solution(show-number: false)[
$ integral.double_D x dif x dif y&=2integral_0^(pi/2)dif theta integral_2^(2(1+cos theta)) r^2 cos theta dif r \
&=16/3 integral_0^(pi/2)[(1+cos theta)^3-1]cos theta dif theta \
&=16/3 integral_0^(pi/2)(3cos^2 theta+3cos^3 theta+cos^4 theta)dif theta \
&=32/3+5pi. $
]
]

#ezexam.question[
（本题满分 10 分）设函数 $y(x)$ 满足方程 $y''+2y'+k y=0$，其中 $0<k<1$.

（Ⅰ）证明：反常积分 $integral_0^infinity y(x)dif x$ 收敛；

（Ⅱ）若 $y(0)=1,y'(0)=1$，求 $integral_0^infinity y(x)dif x$ 的值.
#ezexam.solution(show-number: false)[
（Ⅰ）微分方程 $y''+2y'+k y=0$ 的特征方程为 $lambda^2+2lambda+k=0$.
解得 $lambda_1=-1+sqrt(1-k),lambda_2=-1-sqrt(1-k)$.
因为 $0<k<1$，所以 $lambda_1<0,lambda_2<0$，从而 $integral_0^infinity e^(lambda_1 x)dif x$ 与 $integral_0^infinity e^(lambda_2 x)dif x$ 收敛.
由于 $lambda_1!=lambda_2$，所以 $y(x)=C_1 e^(lambda_1 x)+C_2 e^(lambda_2 x)$，其中 $C_1$ 与 $C_2$ 是任意常数.综上可知，反常积分 $integral_0^infinity y(x)dif x$ 收敛.
（Ⅱ）由（Ⅰ）知，$lambda_1<0,lambda_2<0$，所以
$ lim_(x->+infinity)y(x)=lim_(x->+infinity)(C_1 e^(lambda_1 x)+C_2 e^(lambda_2 x))=0, $
$ lim_(x->+infinity)y'(x)=lim_(x->+infinity)(C_1 lambda_1 e^(lambda_1 x)+C_2 lambda_2 e^(lambda_2 x))=0. $
又 $y(0)=1,y'(0)=1$，所以
$ integral_0^infinity y(x)dif x&=integral_0^infinity[-1/k(y''(x)+2y'(x))]dif x \
&=-1/k(y'(x)+2y(x))|_0^infinity \
&=3/k. $
]
]

#ezexam.question[
（本题满分 10 分）设函数 $f(x,y)$ 满足 $(partial f(x,y))/(partial x)=(2x+1)e^(2x-y)$，且 $f(0,y)=y+1$，$L_t$ 是从点 $(0,0)$ 到点 $(1,t)$ 的光滑曲线，计算曲线积分
$ I(t)=integral_(L_t) (partial f(x,y))/(partial x)dif x+(partial f(x,y))/(partial y)dif y, $
并求 $I(t)$ 的最小值.
#ezexam.solution(show-number: false)[
因为 $(partial f(x,y))/(partial x)=(2x+1)e^(2x-y)$，所以
$ f(x,y)&=integral (partial f(x,y))/(partial x)dif x \
&=integral (2x+1)e^(2x-y)dif x \
&=x e^(2x-y)+C(y). $
将 $f(0,y)=y+1$ 代入上式，得 $C(y)=y+1$.所以 $f(x,y)=x e^(2x-y)+y+1$.从而
$ I(t)&=integral_(L_t) (partial f(x,y))/(partial x)dif x+(partial f(x,y))/(partial y)dif y \
&=f(1,t)-f(0,0)=e^(2-t)+t. $
$I'(t)=-e^(2-t)+1$.令 $I'(t)=0$ 得 $t=2$.
由于当 $t<2$ 时，$I'(t)<0,I(t)$ 单调减少；当 $t>2$ 时，$I'(t)>0,I(t)$ 单调增加，所以 $I(2)=3$ 是 $I(t)$ 在 $(-infinity,+infinity)$ 上的最小值.
]
]

#ezexam.question[
（本题满分 10 分）设有界区域 $Omega$ 由平面 $2x+y+2z=2$ 与三个坐标平面围成，$Sigma$ 为 $Omega$ 整个表面的外侧，计算曲面积分
$ I=integral.double_Sigma (x^2+1)dif y dif z-2y dif z dif x+3z dif x dif y. $
#ezexam.solution(show-number: false)[
根据高斯公式得 $I=integral.triple_Omega (2x+1)dif x dif y dif z$.
因为 $integral.triple_Omega dif x dif y dif z=1/3 times 1/2 times 2 times 1 times 1=1/3$，
$ integral.triple_Omega x dif x dif y dif z&=integral_0^1 dif x integral_0^(2(1-x))dif y integral_0^(1-x-y/2)x dif z \
&=integral_0^1 dif x integral_0^(2(1-x))x(1-x-y/2)dif y \
&=integral_0^1 x(1-x)^2 dif x \
&=1/12, $
所以 $I=2times 1/12+1/3=1/2$.
]
]

#ezexam.question[
（本题满分 10 分）已知函数 $f(x)$ 可导，且 $f(0)=1,0<f'(x)<1/2$.设数列 $\{x_n\}$ 满足 $x_(n+1)=f(x_n)$（$n=1,2,dots$）.证明：

（Ⅰ）级数 $sum_(n=1)^infinity (x_(n+1)-x_n)$ 绝对收敛；

（Ⅱ）$lim_(n->infinity)x_n$ 存在，且 $0<lim_(n->infinity)x_n<2$.
#ezexam.solution(show-number: false)[
（Ⅰ）因为 $x_(n+1)=f(x_n)$，所以
$ abs(x_(n+1)-x_n)=abs(f(x_n)-f(x_(n-1)))=abs(f'(xi)(x_n-x_(n-1))), $
其中 $xi$ 介于 $x_n$ 与 $x_(n-1)$ 之间.
又 $0<f'(x)<1/2$，所以
$ abs(x_(n+1)-x_n)<=1/2 abs(x_n-x_(n-1))<=dots<=1/2^(n-1)abs(x_2-x_1). $
由于级数 $sum_(n=1)^infinity 1/2^(n-1)abs(x_2-x_1)$ 收敛，所以级数 $sum_(n=1)^infinity (x_(n+1)-x_n)$ 绝对收敛.
（Ⅱ）设 $sum_(n=1)^infinity (x_(n+1)-x_n)$ 的前 $n$ 项和为 $S_n$，则 $S_n=x_(n+1)-x_1$.
由（Ⅰ）知，$lim_(n->infinity)S_n$ 存在，即 $lim_(n->infinity)(x_(n+1)-x_1)$ 存在，所以 $lim_(n->infinity)x_n$ 存在.
设 $lim_(n->infinity)x_n=c$，由 $x_(n+1)=f(x_n)$ 及 $f(x)$ 连续，得 $c=f(c)$，即 $c$ 是 $g(x)=x-f(x)$ 的零点.
因为 $g(0)=-1,g(2)=2-f(2)=1-[f(2)-f(0)]=1-2f'(eta)>0$，其中 $eta in(0,2)$，且 $g'(x)=1-f'(x)>0$，所以 $g(x)$ 存在唯一零点，且零点位于区间 $(0,2)$ 内.
于是 $0<c<2$，即 $0<lim_(n->infinity)x_n<2$.
]
]

#ezexam.question[
（本题满分 11 分）设矩阵 $A=mat(1,-1,-1;2,a,1;-1,1,a),B=mat(2,2;1,a;-a-1,-2)$.
当 $a$ 为何值时，方程 $A X=B$ 无解、有唯一解、有无穷多解？在有解时，求解此方程.
#ezexam.solution(show-number: false)[
对矩阵 $(A bar.v B)$ 施以初等行变换
$ (A bar.v B)&=mat(1,-1,-1,2,2;2,a,1,1,a;-1,1,a,-a-1,-2,augment: #3) \
&arrow.r mat(1,-1,-1,2,2;0,a+2,3,-3,a-4;0,0,a-1,1-a,0,augment: #3)=C. $
当 $a!=1$ 且 $a!=-2$ 时，由于
$ C&arrow.r mat(1,-1,-1,2,2;0,a+2,3,-3,a-4;0,0,1,-1,0,augment: #3) \
&arrow.r mat(1,0,0,1,3a/(a+2);0,1,0,0,(a-4)/(a+2);0,0,1,-1,0,augment: #3), $
所以 $A X=B$ 有唯一解，且 $X=mat(1,3a/(a+2);0,(a-4)/(a+2);-1,0)$.
当 $a=1$ 时，由于
$ C=mat(1,-1,-1,2,2;0,3,3,-3,-3;0,0,0,0,0,augment: #3) arrow.r mat(1,0,0,1,1;0,1,1,-1,-1;0,0,0,0,0,augment: #3), $
所以 $A X=B$ 有无穷多解，且
$ X=mat(1,1;-1,-1;0,0)+mat(0,0;k_1,k_2;-k_1,-k_2), $
其中 $k_1,k_2$ 为任意常数.
当 $a=-2$ 时，由于
$ C=mat(1,-1,-1,2,2;0,0,3,-3,-6;0,0,-3,3,0,augment: #3) arrow.r mat(1,-1,-1,2,2;0,0,1,-1,0;0,0,0,0,1,augment: #3), $
所以 $A X=B$ 无解.
]
]

#ezexam.question[
（本题满分 11 分）已知矩阵 $A=mat(0,-1,1;2,-3,0;0,0,0)$.

（Ⅰ）求 $A^99$；

（Ⅱ）设 3 阶矩阵 $B=(alpha_1,alpha_2,alpha_3)$ 满足 $B^2=B A$.记 $B^100=(beta_1,beta_2,beta_3)$，将 $beta_1,beta_2,beta_3$ 分别表示为 $alpha_1,alpha_2,alpha_3$ 的线性组合.
#ezexam.solution(show-number: false)[
（Ⅰ）因为
$ abs(lambda E-A)=mat(delim: "|",lambda,1,-1;-2,lambda+3,0;0,0,lambda)=lambda(lambda+1)(lambda+2), $
所以 $A$ 的特征值为 $lambda_1=-1,lambda_2=-2,lambda_3=0$.
当 $lambda_1=-1$ 时，解方程组 $(-E-A)x=0$，得特征向量 $xi_1=(1,1,0)^T$；当 $lambda_2=-2$ 时，解方程组 $(-2E-A)x=0$，得特征向量 $xi_2=(1,2,0)^T$；当 $lambda_3=0$ 时，解方程组 $A x=0$，得特征向量 $xi_3=(3,2,2)^T$.
令 $P=(xi_1,xi_2,xi_3)=mat(1,1,3;1,2,2;0,0,2)$，则 $P^(-1)A P=mat(-1,0,0;0,-2,0;0,0,0)$，所以
$ A^99&=P mat((-1)^99,0,0;0,(-2)^99,0;0,0,0)P^(-1) \
&=mat(1,1,3;1,2,2;0,0,2)mat((-1)^99,0,0;0,(-2)^99,0;0,0,0)mat(2,-1,-2;-1,1,1/2;0,0,1/2) \
&=mat(2^99-2,1-2^99,2-2^98;2^100-2,1-2^100,2-2^99;0,0,0). $
（Ⅱ）因为 $B^2=B A$，所以
$ B^100=B^98 B^2=B^99 A=B^97 B^2 A=B^98 A^2=dots=B A^99, $
即
$ (beta_1,beta_2,beta_3)=(alpha_1,alpha_2,alpha_3)mat(2^99-2,1-2^99,2-2^98;2^100-2,1-2^100,2-2^99;0,0,0). $
所以
$ cases(beta_1=(2^99-2)alpha_1+(2^100-2)alpha_2,beta_2=(1-2^99)alpha_1+(1-2^100)alpha_2,beta_3=(2-2^98)alpha_1+(2-2^99)alpha_2). $
]
]

#ezexam.question[
（本题满分 11 分）设二维随机变量 $(X,Y)$ 在区域 $D={(x,y)|0<x<1,x^2<y<sqrt(x)}$ 上服从均匀分布，令 $U=cases(1 & X<=Y,0 & X>Y)$.

（Ⅰ）写出 $(X,Y)$ 的概率密度；

（Ⅱ）问 $U$ 与 $X$ 是否相互独立？并说明理由；

（Ⅲ）求 $Z=U+X$ 的分布函数 $F(z)$.
#ezexam.solution(show-number: false)[
（Ⅰ）$(X,Y)$ 的概率密度为 $f(x,y)=cases(3 & (x,y)in D,0 & "其他")$.
（Ⅱ）对于 $0<t<1$，
$ P{U<=0,X<=t}&=P{X>Y,X<=t}=integral_0^t dif x integral_(x^2)^x 3dif y=3/2 t^2-t^3, \
P{U<=0}&=P{X>Y}=1/2, \
P{X<=t}&=integral_0^t dif x integral_(x^2)^sqrt (x)3dif y=2t^(3/2)-t^3. $
由于 $P{U<=0,X<=t}!=P{U<=0}P{X<=t}$，所以 $U$ 与 $X$ 不相互独立.
（Ⅲ）当 $z<0$ 时，$F(z)=0$；当 $0<=z<1$ 时，
$ F(z)&=P{Z<=z}=P{U+X<=z}=P{U=0,X<=z} \
&=P{X>Y,X<=z}=3/2 z^2-z^3; $
当 $1<=z<2$ 时，
$ F(z)&=P{U+X<=z}=P{U=0,X<=z}+P{U=1,X<=z-1} \
&=1/2+2(z-1)^(3/2)-3/2(z-1)^2; $
当 $z>=2$ 时，$F(z)=P{U+X<=z}=1$.
所以
$ F(z)=cases(0 & z<0,3/2 z^2-z^3 & 0<=z<1,1/2+2(z-1)^(3/2)-3/2(z-1)^2 & 1<=z<2,1 & z>=2). $
]
]

#ezexam.question[
（本题满分 11 分）设总体 $X$ 的概率密度为
$ f(x;theta)=cases(3x^2/theta^3 & 0<x<theta,0 & "其他"), $
其中 $theta in(0,+infinity)$ 为未知参数，$X_1,X_2,X_3$ 为来自总体 $X$ 的简单随机样本，令 $T=max{X_1,X_2,X_3}$.

（Ⅰ）求 $T$ 的概率密度；

（Ⅱ）确定 $a$，使得 $a T$ 为 $theta$ 的无偏估计.
#ezexam.solution(show-number: false)[
（Ⅰ）总体 $X$ 的分布函数为 $F(x)=cases(0 & x<0,x^3/theta^3 & 0<=x<theta,1 & x>=theta)$.
从而 $T$ 的分布函数为
$ F_T(z)=[F(z)]^3=cases(0 & z<0,z^9/theta^9 & 0<=z<theta,1 & z>=theta), $
所以 $T$ 的概率密度为 $f_T(z)=cases(9z^8/theta^9 & 0<z<theta,0 & "其他")$.
（Ⅱ）$E(T)=integral_(-infinity)^infinity z f_T(z)dif z=integral_0^theta (9z^9)/theta^9 dif z=9/10 theta$，从而 $E(a T)=9/10 a theta$.
令 $E(a T)=theta$，得 $a=10/9$.所以当 $a=10/9$ 时，$a T$ 为 $theta$ 的无偏估计.
]
]

