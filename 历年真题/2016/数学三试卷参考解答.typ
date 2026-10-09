#import "../template.typ": exam
#show: exam.with(year: 2016, subject: "三")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(true)


= 一、选择题：1—8小题，每小题4分，共32分. 在每小题给出的四个选项中，只有一项符合题目要求，把所选项前的字母填在题后的括号内.

#ezexam.question[
设函数 $y=f(x)$ 在 $(-infinity,+infinity)$ 内连续，其导函数的图形如图所示，则（　）.
#import "@preview/cetz:0.3.4"
#cetz.canvas({
 import cetz.draw: *
 line((-0.7,0),(4.3,0),mark:(end: ">")); line((0,-2),(0,2.1),mark:(end: ">"))
 content((4.3,-0.2),$x$); content((-0.2,2.1),$y$); content((-0.2,-0.2),$O$)
 line((0.8,-1.8),(0.8,1.8),stroke:(dash:"dashed"))
 bezier((-0.5,1.5),(0.68,-1.7),(0.4,1.5),(0.5,0.8))
 bezier((0.95,-1.7),(2.1,1),(1.25,0),(1.55,1))
 bezier((2.1,1),(3.2,0),(2.6,1),(2.7,0))
 bezier((3.2,0),(4,1.1),(3.6,0),(3.8,0.5))
})
#choices([函数 $f(x)$ 有2个极值点，曲线 $y=f(x)$ 有2个拐点.],[函数 $f(x)$ 有2个极值点，曲线 $y=f(x)$ 有3个拐点.],[函数 $f(x)$ 有3个极值点，曲线 $y=f(x)$ 有1个拐点.],[函数 $f(x)$ 有3个极值点，曲线 $y=f(x)$ 有2个拐点.])
#ezexam.solution(show-number: false)[
B.
]
]

#ezexam.question[
已知函数 $f(x,y)=e^x/(x-y)$，则（　）.
#choices([$f_x'-f_y'=0$],[$f_x'+f_y'=0$],[$f_x'-f_y'=f$],[$f_x'+f_y'=f$])
#ezexam.solution(show-number: false)[
D.
]
]

#ezexam.question[
设 $J_i=integral.double_ (D_i) root(3,x-y) dif x dif y$（$i=1,2,3$），其中
$ D_1={(x,y) bar.v 0<=x<=1,0<=y<=1}, \
D_2={(x,y) bar.v 0<=x<=1,0<=y<=sqrt(x)}, \
D_3={(x,y) bar.v 0<=x<=1,x^2<=y<=1}, $
则（　）.
#choices([$J_1<J_2<J_3$],[$J_3<J_1<J_2$],[$J_2<J_3<J_1$],[$J_2<J_1<J_3$])
#ezexam.solution(show-number: false)[
B.
]
]

#ezexam.question[
级数 $sum_(n=1)^infinity (1/sqrt(n)-1/sqrt(n+1))sin(n+k)$（$k$ 为常数）（　）.
#choices([绝对收敛.],[条件收敛.],[发散.],[收敛性与 $k$ 有关.])
#ezexam.solution(show-number: false)[
A.
]
]

#ezexam.question[
设 $A,B$ 是可逆矩阵，且 $A$ 与 $B$ 相似，则下列结论错误的是（　）.
#choices([$A^T$ 与 $B^T$ 相似.],[$A^(-1)$ 与 $B^(-1)$ 相似.],[$A+A^T$ 与 $B+B^T$ 相似.],[$A+A^(-1)$ 与 $B+B^(-1)$ 相似.])
#ezexam.solution(show-number: false)[
C.
]
]

#ezexam.question[
设二次型 $f(x_1,x_2,x_3)=a(x_1^2+x_2^2+x_3^2)+2x_1 x_2+2x_2 x_3+2x_1 x_3$ 的正、负惯性指数分别为1、2，则（　）.
#choices([$a>1$],[$a<-2$],[$-2<a<1$],[$a=1$ 或 $a=-2$])
#ezexam.solution(show-number: false)[
C.
]
]

#ezexam.question[
设 $A,B$ 为两个随机事件，且 $0<P(A)<1$，$0<P(B)<1$，如果 $P(A bar.v B)=1$，则（　）.
#choices([$P(overline(B) bar.v overline(A))=1$],[$P(A bar.v overline(B))=0$],[$P(A union B)=1$],[$P(B bar.v A)=1$])
#ezexam.solution(show-number: false)[
A.
]
]

#ezexam.question[
设随机变量 $X$ 与 $Y$ 相互独立，且 $X tilde.op N(1,2)$，$Y tilde.op N(1,4)$，则 $D(X Y)=$（　）.
#choices([6.],[8.],[14.],[15.])
#ezexam.solution(show-number: false)[
C.
]
]

= 二、填空题：9—14小题，每小题4分，共24分. 把答案填在题中横线上.

#ezexam.question[
已知函数 $f(x)$ 满足 $lim_(x->0)(sqrt(1+f(x)sin 2x)-1)/(e^(3x)-1)=2$，则 $lim_(x->0)f(x)=$#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
6.
]
]

#ezexam.question[
极限 $lim_(n->infinity) 1/n^2 (sin 1/n+2sin 2/n+dots+n sin n/n)=$#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$sin 1-cos 1$.
]
]

#ezexam.question[
设函数 $f(u,v)$ 可微，$z=z(x,y)$ 由方程 $(x+1)z-y^2=x^2 f(x-z,y)$ 确定，则 $dif z|_((0,1))=$ #fillin(len: 3em)[].
#ezexam.solution(show-number: false)[
$-dif x+2dif y$.
]
]

#ezexam.question[
设 $D={(x,y) bar.v abs(x)<=y<=1,-1<=x<=1}$，则 $integral.double_D x^2 e^(-y^2) dif x dif y=$#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$1/3-2/(3e)$.
]
]

#ezexam.question[
行列式 $mat(delim: "|",lambda,-1,0,0;0,lambda,-1,0;0,0,lambda,-1;4,3,2,lambda+1)=$ #fillin(len: 3em)[].
#ezexam.solution(show-number: false)[
$lambda^4+lambda^3+2lambda^2+3lambda+4$.
]
]

#ezexam.question[
设袋中有红、白、黑球各1个，从中有放回地取球，每次取1个，直到三种颜色的球都取到时停止，则取球次数恰好为4的概率为#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$2/9$.
]
]

= 三、解答题：15—23小题，共94分. 解答应写出文字说明、证明过程或演算步骤.

#ezexam.question[
（本题满分10分）
求极限 $lim_(x->0)(cos 2x+2x sin x)^(1/x^4)$.
#ezexam.solution(show-number: false)[
解　因为
$ lim_(x->0)(cos 2x+2x sin x)^(1/x^4)=e^(lim_(x->0)(ln(cos 2x+2x sin x))/x^4), $
且
$ lim_(x->0)(ln(cos 2x+2x sin x))/x^4
 &=lim_(x->0)1/(cos 2x+2x sin x) dot (-2sin 2x+2sin x+2x cos x)/(4x^3) \
 &=lim_(x->0)(-2cos 2x+2cos x-x sin x)/(6x^2) \
 &=lim_(x->0)(4sin 2x-3sin x-x cos x)/(12x)=1/3, $
所以 $lim_(x->0)(cos 2x+2x sin x)^(1/x^4)=e^(1/3)$.
]
]

#ezexam.question[
（本题满分10分）
设某商品的最大需求量为1200件，该商品的需求函数 $Q=Q(p)$，需求弹性 $eta=p/(120-p)$（$eta>0$），$p$ 为单价（万元）.

（Ⅰ）求需求函数的表达式；

（Ⅱ）求 $p=100$ 万元时的边际收益，并说明其经济意义.
#ezexam.solution(show-number: false)[
解　（Ⅰ）由题设 $-p/Q dot (dif Q)/(dif p)=p/(120-p)$.
所以 $integral (dif Q)/Q=-integral 1/(120-p)dif p$，可得 $ln Q=ln(120-p)+ln C$，即 $Q=C(120-p)$.
又最大需求量为1200，故 $C=10$，所以需求函数 $Q=1200-10p$.
（Ⅱ）由（Ⅰ）知，收益函数 $R=120Q-1/10 Q^2$，边际收益 $R'(Q)=120-1/5 Q$.
当 $p=100$ 时，$Q=200$，故当 $p=100$ 万元时的边际收益 $R'(200)=80$，其经济意义为：销售第201件商品所得的收益为80万元.
]
]

#ezexam.question[
（本题满分10分）
设函数 $f(x)=integral_0^1 abs(t^2-x^2) dif t$（$x>0$），求 $f'(x)$，并求 $f(x)$ 的最小值.
#ezexam.solution(show-number: false)[
解　当 $0<x<=1$ 时，
$ f(x)&=integral_0^x abs(t^2-x^2) dif t+integral_x^1 abs(t^2-x^2) dif t \
 &=integral_0^x(x^2-t^2)dif t+integral_x^1 (t^2-x^2)dif t=4/3 x^3-x^2+1/3; $
当 $x>1$ 时，$f(x)=integral_0^1(x^2-t^2)dif t=x^2-1/3$，所以
$ f(x)=cases(4/3 x^3-x^2+1/3&0<x<=1,x^2-1/3&x>1), $
而
$ f_-'(1)=lim_(x->1^-)(4/3 x^3-x^2+1/3-2/3)/(x-1)=2,
quad f_+'(1)=lim_(x->1^+)(x^2-1/3-2/3)/(x-1)=2, $
故 $f'(x)=cases(4x^2-2x&0<x<=1,2x&x>1)$.
由 $f'(x)=0$ 求得唯一驻点 $x=1/2$，又 $f''(1/2)>0$，从而 $x=1/2$ 为 $f(x)$ 的最小值点，最小值为 $f(1/2)=1/4$.
]
]

#ezexam.question[
（本题满分10分）
设函数 $f(x)$ 连续，且满足
$ integral_0^x f(x-t)dif t=integral_0^x(x-t)f(t)dif t+e^(-x)-1, $
求 $f(x)$.
#ezexam.solution(show-number: false)[
解　令 $u=x-t$，则 $integral_0^x f(x-t)dif t=integral_0^x f(u)dif u$.
由题设 $integral_0^x f(u)dif u=x integral_0^x f(t)dif t-integral_0^x t f(t)dif t+e^(-x)-1$，
求导得 $f(x)=integral_0^x f(t)dif t-e^(-x)$，且 $f(0)=-1$.
因此 $f'(x)-f(x)=e^(-x)$，从而
$ f(x)=e^(integral dif x)(C+integral e^(-x)e^(-integral dif x)dif x)=C e^x-e^(-x)/2. $
由 $f(0)=-1$，得 $C=-1/2$，所以 $f(x)=-1/2(e^x+e^(-x))$.
]
]

#ezexam.question[
（本题满分10分）
求幂级数 $sum_(n=0)^infinity x^(2n+2)/((n+1)(2n+1))$ 的收敛域及和函数.
#ezexam.solution(show-number: false)[
解　因为
$ lim_(n->infinity)abs((x^(2n+4)/((n+2)(2n+3)))/(x^(2n+2)/((n+1)(2n+1))))=x^2, $
所以当 $abs(x)<1$ 时，幂级数绝对收敛；当 $abs(x)>1$ 时，幂级数发散.
又当 $x=plus.minus 1$ 时，级数 $sum_(n=0)^infinity 1/((n+1)(2n+1))$ 收敛，所以幂级数的收敛域为 $[-1,1]$.
记 $f(x)=sum_(n=0)^infinity x^(2n+2)/((n+1)(2n+1))$，$x in [-1,1]$，则
$ f'(x)=2sum_(n=0)^infinity x^(2n+1)/(2n+1),quad f''(x)=2sum_(n=0)^infinity x^(2n)=2/(1-x^2),quad x in (-1,1). $
因为 $f'(0)=0$，$f(0)=0$，所以当 $x in (-1,1)$ 时，
$ f'(x)&=integral_0^x f''(t)dif t=integral_0^x 2/(1-t^2)dif t=ln(1+x)-ln(1-x), \
f(x)&=integral_0^x f'(t)dif t=integral_0^x ln(1+t)dif t-integral_0^x ln(1-t)dif t \
&=(1+x)ln(1+x)+(1-x)ln(1-x). $
又 $f(1)=lim_(x->1^-)f(x)=2ln 2$，$f(-1)=lim_(x->-1^+)f(x)=2ln 2$，
所以 $f(x)=cases((1+x)ln(1+x)+(1-x)ln(1-x)&x in (-1,1),2ln 2&x=plus.minus 1)$.
]
]

#ezexam.question[
（本题满分11分）
设矩阵 $A=mat(1,1,1-a;1,0,a;a+1,1,a+1)$，$beta=mat(0;1;2a-2)$，且方程组 $A x=beta$ 无解.

（Ⅰ）求 $a$ 的值；

（Ⅱ）求方程组 $A^T A x=A^T beta$ 的通解.
#ezexam.solution(show-number: false)[
解　（Ⅰ）对矩阵 $(A bar.v beta)$ 施以初等行变换
$ (A bar.v beta)=mat(1,1,1-a,0;1,0,a,1;a+1,1,a+1,2a-2,augment: #3)->mat(1,1,1-a,0;0,-1,2a-1,1;0,0,-a^2+2a,a-2,augment: #3), $
由方程组 $A x=beta$ 无解，知 $"秩"(A bar.v beta)>"秩" A$，即 $-a^2+2a=0$，且 $a-2 !=0$，解得 $a=0$.
（Ⅱ）对矩阵 $(A^T A bar.v A^T beta)$ 施以初等行变换
$ (A^T A bar.v A^T beta)=mat(3,2,2,-1;2,2,2,-2;2,2,2,-2,augment: #3)->mat(1,0,0,1;0,1,1,-2;0,0,0,0,augment: #3), $
所以，方程组 $A^T A x=A^T beta$ 的通解 $x=mat(1;-2;0)+k mat(0;-1;1)$（$k$ 为任意常数）.
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

（Ⅱ）确定 $a$，使得 $E(a T)=theta$.
#ezexam.solution(show-number: false)[
（Ⅰ）总体 $X$ 的分布函数为 $F(x)=cases(0 & x<0,x^3/theta^3 & 0<=x<theta,1 & x>=theta)$.
从而 $T$ 的分布函数为
$ F_T(z)=[F(z)]^3=cases(0 & z<0,z^9/theta^9 & 0<=z<theta,1 & z>=theta), $
所以 $T$ 的概率密度为 $f_T(z)=cases(9z^8/theta^9 & 0<z<theta,0 & "其他")$.
（Ⅱ）$E(T)=integral_(-infinity)^infinity z f_T(z)dif z=integral_0^theta (9z^9)/theta^9 dif z=9/10 theta$，从而 $E(a T)=9/10 a theta$.
令 $E(a T)=theta$，得 $a=10/9$.所以当 $a=10/9$ 时，$E(a T)=theta$.
]
]

