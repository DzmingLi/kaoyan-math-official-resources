#import "../template.typ": exam
#show: exam.with(year: 2006, subject: "四", title: "2006年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#ezexam.answer-state.update(true)


= 一、填空题（本题共6小题，每小题4分，满分24分）

#ezexam.question[
$lim_(n->infinity)((n+1)/n)^((-1)^n)=$#h(3em).
#ezexam.solution(show-number: false)[
1.
]
]

#ezexam.question[
设函数 $f(x)$ 在 $x=2$ 的某邻域内可导，且 $f'(x)=e^(f(x)),f(2)=1$，则 $f'''(2)=$#h(3em).
#ezexam.solution(show-number: false)[
$2e^3$.
]
]

#ezexam.question[
设函数 $f(u)$ 可微，且 $f'(0)=1/2$，则 $z=f(4x^2-y^2)$ 在点 $(1,2)$ 处的全微分 $dif z|_((1,2))=$#h(3em).
#ezexam.solution(show-number: false)[
$4dif x-2dif y$.
]
]

#ezexam.question[
设 $alpha_1,alpha_2$ 为二维列向量，$A=(2alpha_1+alpha_2,alpha_1-alpha_2)$，$B=(alpha_1,alpha_2)$.若 $|A|=6$，则 $|B|=$#h(3em).
#ezexam.solution(show-number: false)[
$-2$.
]
]

#ezexam.question[
设矩阵 $A=mat(2,1;-1,2)$，$E$ 为二阶单位矩阵，矩阵 $B$ 满足 $B A=B+2E$，则 $B=$#h(3em).
#ezexam.solution(show-number: false)[
$mat(1,-1;1,1)$.
]
]

#ezexam.question[
设随机变量 $X$ 与 $Y$ 相互独立，且均服从区间 $[0,3]$ 上的均匀分布，则 $P{max{X,Y}<=1}=$#h(3em).
#ezexam.solution(show-number: false)[
$1/9$.
]
]

= 二、选择题（本题共8小题，每小题4分，满分32分）

#ezexam.question[
设函数 $y=f(x)$ 具有二阶导数，且 $f'(x)>0,f''(x)>0$，$Delta x$ 为自变量 $x$ 在点 $x_0$ 处的增量，$Delta y$ 与 $dif y$ 分别为 $f(x)$ 在点 $x_0$ 处对应的增量与微分，若 $Delta x>0$，则
#choices([$0<dif y<Delta y$.],[$0<Delta y<dif y$.],[$Delta y<dif y<0$.],[$dif y<Delta y<0$.])
#ezexam.solution(show-number: false)[
A.
]
]

#ezexam.question[
设函数 $f(x)$ 在 $x=0$ 处连续，且 $lim_(h->0)f(h^2)/h^2=1$，则
#choices([$f(0)=0$ 且 $f'_-(0)$ 存在.],[$f(0)=1$ 且 $f'_-(0)$ 存在.],[$f(0)=0$ 且 $f'_+(0)$ 存在.],[$f(0)=1$ 且 $f'_+(0)$ 存在.])
#ezexam.solution(show-number: false)[
C.
]
]

#ezexam.question[
设函数 $f(x),g(x)$ 在 $[0,1]$ 上连续，且 $f(x)<=g(x)$，则对任意的 $c in (0,1)$，必有
#choices([$integral_(1/2)^c f(x)dif x>=integral_(1/2)^c g(x)dif x$.],[$integral_(1/2)^c f(x)dif x<=integral_(1/2)^c g(x)dif x$.],[$integral_c^1 f(x)dif x>=integral_c^1 g(x)dif x$.],[$integral_c^1 f(x)dif x<=integral_c^1 g(x)dif x$.])
#ezexam.solution(show-number: false)[
D.
]
]

#ezexam.question[
设非齐次线性微分方程 $y'+P(x)y=Q(x)$ 有两个不同的解 $y_1(x),y_2(x)$，$C$ 为任意常数，则该方程的通解是
#choices([$C[y_1(x)-y_2(x)]$.],[$y_1(x)+C[y_1(x)-y_2(x)]$.],[$C[y_1(x)+y_2(x)]$.],[$y_1(x)+C[y_1(x)+y_2(x)]$.])
#ezexam.solution(show-number: false)[
B.
]
]

#ezexam.question[
设 $f(x,y)$ 与 $phi(x,y)$ 均为可微函数，且 $phi'_y(x,y)!=0$.已知 $(x_0,y_0)$ 是 $f(x,y)$ 在约束条件 $phi(x,y)=0$ 下的一个极值点，下列选项正确的是
#choices([若 $f'_x(x_0,y_0)=0$，则 $f'_y(x_0,y_0)=0$.],[若 $f'_x(x_0,y_0)=0$，则 $f'_y(x_0,y_0)!=0$.],[若 $f'_x(x_0,y_0)!=0$，则 $f'_y(x_0,y_0)=0$.],[若 $f'_x(x_0,y_0)!=0$，则 $f'_y(x_0,y_0)!=0$.])
#ezexam.solution(show-number: false)[
D.
]
]

#ezexam.question[
设 $A$ 为三阶矩阵，将 $A$ 的第2行加到第1行得 $B$，再将 $B$ 的第1列的 $-1$ 倍加到第2列得 $C$，记 $P=mat(1,1,0;0,1,0;0,0,1)$，则
#choices([$C=P^(-1)A P$.],[$C=P A P^(-1)$.],[$C=P^T A P$.],[$C=P A P^T$.])
#ezexam.solution(show-number: false)[
B.
]
]

#ezexam.question[
设 $A,B$ 为随机事件，且 $P(B)>0,P(A|B)=1$，则必有
#choices([$P(A union B)>P(A)$.],[$P(A union B)>P(B)$.],[$P(A union B)=P(A)$.],[$P(A union B)=P(B)$.])
#ezexam.solution(show-number: false)[
C.
]
]

#ezexam.question[
设随机变量 $X$ 服从正态分布 $N(mu_1,sigma_1^2)$，$Y$ 服从正态分布 $N(mu_2,sigma_2^2)$，且 $P{|X-mu_1|<1}>P{|Y-mu_2|<1}$，则必有
#choices([$sigma_1<sigma_2$.],[$sigma_1>sigma_2$.],[$mu_1<mu_2$.],[$mu_1>mu_2$.])
#ezexam.solution(show-number: false)[
A.
]
]

= 三、解答题（本题共9小题，满分94分. 解答应写出文字说明、证明过程或演算步骤.）

#ezexam.question[
（本题满分7分）

设 $f(x,y)=y/(1+x y)-(1-y sin((pi x)/y))/(arctan x),x>0,y>0$.求：

（Ⅰ）$g(x)=lim_(y->+infinity)f(x,y)$；

（Ⅱ）$lim_(x->0^+)g(x)$.
#ezexam.solution(show-number: false)[
（Ⅰ）$g(x)=lim_(y->+infinity)f(x,y)=1/x-(1-pi x)/(arctan x)$.

（Ⅱ）
$ lim_(x->0^+)g(x)=lim_(x->0^+)(1/x-(1-pi x)/(arctan x)) \
=lim_(x->0^+)(arctan x-x+pi x^2)/x^2 \
=lim_(x->0^+)(1/(1+x^2)-1+2pi x)/(2x) \
=lim_(x->0^+)(2pi-x+2pi x^2)/(2(1+x^2))=pi. $
]
]

#ezexam.question[
（本题满分7分）

计算二重积分 $integral.double_D sqrt(y^2-x y)dif x dif y$，其中 $D$ 是由直线 $y=x,y=1,x=0$ 所围成的平面区域.
#ezexam.solution(show-number: false)[
区域 $D$ 如下图所示.
#import "@preview/cetz:0.5.2": canvas, draw
#align(center,canvas({
 import draw: *
 line((0,0),(0,3),(3,3),close:true,fill:rgb("dddddd"))
 line((-.4,0),(4,0),mark:(end:">"));line((0,-.4),(0,4),mark:(end:">"))
 line((3,0),(3,3),stroke:(dash:"dashed"))
 content((-.2,-.2),$O$);content((4.1,0),$x$);content((0,4.2),$y$)
 content((-.2,3),[1]);content((3,-.2),[1]);content((.8,1.8),$D$);content((2.2,1.6),$y=x$)
}))
$ #text[原式]=integral_0^1 dif y integral_0^y sqrt(y^2-x y)dif x \
=-integral_0^1 lr(2/3 sqrt(y)(y-x)^(3/2))|_0^y dif y \
=2/3 integral_0^1 y^2 dif y=2/9. $
]
]

#ezexam.question[
（本题满分10分）

证明：当 $0<a<b<pi$ 时，$b sin b+2cos b+pi b>a sin a+2cos a+pi a$.
#ezexam.solution(show-number: false)[
证法1　设 $f(x)=x sin x+2cos x+pi x,x in [0,pi]$，则
$ f'(x)=sin x+x cos x-2sin x+pi=x cos x-sin x+pi, $
$ f''(x)=cos x-x sin x-cos x=-x sin x<0,quad x in (0,pi), $
故 $f'(x)$ 在 $[0,pi]$ 上单调减少，从而 $f'(x)>f'(pi)=0,x in (0,pi)$，因此 $f(x)$ 在 $[0,pi]$ 上单调增加.当 $0<a<b<pi$ 时，$f(b)>f(a)$，即 $b sin b+2cos b+pi b>a sin a+2cos a+pi a$.

证法2　设 $phi(x)=x sin x+2cos x,x in [0,pi]$.在 $[a,b]$ 上应用拉格朗日中值定理，有 $phi(b)-phi(a)=phi'(xi)(b-a),xi in (a,b) subset (0,pi)$，即
$ b sin b+2cos b-a sin a-2cos a=(xi cos xi-sin xi)(b-a). $
设 $g(x)=x cos x-sin x,x in [0,pi]$，则
$ g'(x)=cos x-x sin x-cos x=-x sin x<0,quad x in (0,pi), $
因此 $g(x)$ 在 $[0,pi]$ 上单调减少，故 $xi cos xi-sin xi>g(pi)=-pi$，于是
$ b sin b+2cos b-a sin a-2cos a>-pi(b-a), $
移项得 $b sin b+2cos b+pi b>a sin a+2cos a+pi a$.
]
]

#ezexam.question[
（本题满分8分）

在 $x O y$ 坐标平面上，连续曲线 $L$ 过点 $M(1,0)$，其上任意点 $P(x,y) (x!=0)$ 处的切线斜率与直线 $O P$ 的斜率之差等于 $a x$（常数 $a>0$）.

（Ⅰ）求 $L$ 的方程；

（Ⅱ）当 $L$ 与直线 $y=a x$ 所围成平面图形的面积为 $8/3$ 时，确定 $a$ 的值.
#ezexam.solution(show-number: false)[
（Ⅰ）依题意得 $y'-1/x y=a x$，求得其通解为
$ y=e^(integral 1/x dif x)(integral a x e^(-integral 1/x dif x)dif x+C)=a x^2+C x. $
将 $x=1,y=0$ 代入上式得 $C=-a$，从而 $L$ 的方程为 $y=a x^2-a x$.

（Ⅱ）$L$ 与直线 $y=a x$ 的交点坐标为 $(0,0)$ 和 $(2,2a)$，那么 $L$ 与直线 $y=a x$ 围成平面图形的面积
$ S(a)=integral_0^2(a x-a x^2+a x)dif x=integral_0^2(2a x-a x^2)dif x=4/3 a, $
于是由题设知 $4/3 a=8/3$，从而 $a=2$.
]
]

#ezexam.question[
（本题满分10分）

试确定常数 $A,B,C$ 的值，使得
$ e^x(1+B x+C x^2)=1+A x+o(x^3), $
其中 $o(x^3)$ 是当 $x->0$ 时比 $x^3$ 高阶的无穷小量.
#ezexam.solution(show-number: false)[
解法1　因为 $e^x=1+x+1/2 x^2+1/6 x^3+o(x^3)$，将其代入题设等式，整理得
$ 1+(1+B)x+(1/2+B+C)x^2+(1/6+B/2+C)x^3=1+A x+o(x^3), $
故有
$ cases(1+B=A,1/2+B+C=0,1/6+B/2+C=0), $
解得 $A=1/3,B=-2/3,C=1/6$.

解法2　根据题设和洛必达法则，由于
$ 0=lim_(x->0)(e^x(1+B x+C x^2)-1-A x)/x^3 \
=lim_(x->0)(e^x(1+B+B x+2C x+C x^2)-A)/(3x^2) \
=lim_(x->0)(e^x[2C+1+2B+(B+4C)x+C x^2])/(6x) \
=lim_(x->0)(B+4C+2C x)/6, $
得
$ cases(1+B-A=0,2B+2C+1=0,B+4C=0), $
解得 $A=1/3,B=-2/3,C=1/6$.
]
]

#ezexam.question[
（本题满分13分）

设四维向量组 $alpha_1=(1+a,1,1,1)^T,alpha_2=(2,2+a,2,2)^T,alpha_3=(3,3,3+a,3)^T,alpha_4=(4,4,4,4+a)^T$，问 $a$ 为何值时，$alpha_1,alpha_2,alpha_3,alpha_4$ 线性相关？当 $alpha_1,alpha_2,alpha_3,alpha_4$ 线性相关时，求其一个极大线性无关组，并将其余向量用该极大线性无关组线性表出.
#ezexam.solution(show-number: false)[
解法1　记 $A=(alpha_1,alpha_2,alpha_3,alpha_4)$，则
$ |A|=mat(delim:"|",1+a,2,3,4;1,2+a,3,4;1,2,3+a,4;1,2,3,4+a)=(a+10)a^3, $
于是当 $a=0$ 或 $a=-10$ 时，$alpha_1,alpha_2,alpha_3,alpha_4$ 线性相关.

当 $a=0$ 时，$alpha_1$ 为 $alpha_1,alpha_2,alpha_3,alpha_4$ 的一个极大线性无关组，且 $alpha_2=2alpha_1,alpha_3=3alpha_1,alpha_4=4alpha_1$.

当 $a=-10$ 时，对 $A$ 施以初等行变换，有
$ A=mat(-9,2,3,4;1,-8,3,4;1,2,-7,4;1,2,3,-6) \
->mat(-9,2,3,4;10,-10,0,0;10,0,-10,0;10,0,0,-10) \
->mat(-9,2,3,4;1,-1,0,0;1,0,-1,0;1,0,0,-1) \
->mat(0,0,0,0;1,-1,0,0;1,0,-1,0;1,0,0,-1)=(beta_1,beta_2,beta_3,beta_4). $
由于 $beta_2,beta_3,beta_4$ 为 $beta_1,beta_2,beta_3,beta_4$ 的一个极大线性无关组，且 $beta_1=-beta_2-beta_3-beta_4$，故 $alpha_2,alpha_3,alpha_4$ 为 $alpha_1,alpha_2,alpha_3,alpha_4$ 的一个极大线性无关组，且 $alpha_1=-alpha_2-alpha_3-alpha_4$.

解法2　记 $A=(alpha_1,alpha_2,alpha_3,alpha_4)$，对 $A$ 施以初等行变换，有
$ A=mat(1+a,2,3,4;1,2+a,3,4;1,2,3+a,4;1,2,3,4+a) \
->mat(1+a,2,3,4;-a,a,0,0;-a,0,a,0;-a,0,0,a)=B. $
当 $a=0$ 时，$A$ 的秩为1，因而 $alpha_1,alpha_2,alpha_3,alpha_4$ 线性相关.此时 $alpha_1$ 为 $alpha_1,alpha_2,alpha_3,alpha_4$ 的一个极大线性无关组，且 $alpha_2=2alpha_1,alpha_3=3alpha_1,alpha_4=4alpha_1$.

当 $a!=0$ 时，再对 $B$ 施以初等行变换，有
$ B->mat(1+a,2,3,4;-1,1,0,0;-1,0,1,0;-1,0,0,1) \
->mat(a+10,0,0,0;-1,1,0,0;-1,0,1,0;-1,0,0,1)=C=(gamma_1,gamma_2,gamma_3,gamma_4). $
如果 $a!=-10$，$C$ 的秩为4，从而 $A$ 的秩为4，故 $alpha_1,alpha_2,alpha_3,alpha_4$ 线性无关.

如果 $a=-10$，$C$ 的秩为3，从而 $A$ 的秩为3，故 $alpha_1,alpha_2,alpha_3,alpha_4$ 线性相关.

由于 $gamma_2,gamma_3,gamma_4$ 为 $gamma_1,gamma_2,gamma_3,gamma_4$ 的一个极大线性无关组，且 $gamma_1=-gamma_2-gamma_3-gamma_4$，于是 $alpha_2,alpha_3,alpha_4$ 为 $alpha_1,alpha_2,alpha_3,alpha_4$ 的一个极大线性无关组，且 $alpha_1=-alpha_2-alpha_3-alpha_4$.
]
]

#ezexam.question[
（本题满分13分）

设三阶实对称矩阵 $A$ 的各行元素之和均为3，向量 $alpha_1=(-1,2,-1)^T,alpha_2=(0,-1,1)^T$ 是线性方程组 $A x=bold(0)$ 的两个解.

（Ⅰ）求 $A$ 的特征值与特征向量；

（Ⅱ）求正交矩阵 $Q$ 和对角矩阵 $Lambda$，使得 $Q^T A Q=Lambda$；

（Ⅲ）求 $A$ 及 $(A-3/2 E)^6$，其中 $E$ 为三阶单位矩阵.
#ezexam.solution(show-number: false)[
（Ⅰ）由于矩阵 $A$ 的各行元素之和均为3，所以 $A mat(1;1;1)=mat(3;3;3)=3mat(1;1;1)$.

因为 $A alpha_1=bold(0),A alpha_2=bold(0)$，即 $A alpha_1=0alpha_1,A alpha_2=0alpha_2$，故 $lambda_1=lambda_2=0$ 是 $A$ 的二重特征值，$alpha_1,alpha_2$ 为 $A$ 的属于特征值0的两个线性无关的特征向量；$lambda_3=3$ 是 $A$ 的一个特征值，$alpha_3=(1,1,1)^T$ 为 $A$ 的属于特征值3的特征向量.

总之，$A$ 的特征值为0，0，3.属于特征值0的全体特征向量为 $k_1 alpha_1+k_2 alpha_2$（$k_1,k_2$ 不全为零），属于特征值3的全体特征向量为 $k_3 alpha_3 (k_3!=0)$.

（Ⅱ）对 $alpha_1,alpha_2$ 正交化.令 $xi_1=alpha_1=(-1,2,-1)^T$，
$ xi_2=alpha_2-(alpha_2,xi_1)/(xi_1,xi_1)xi_1=1/2(-1,0,1)^T. $
再分别将 $xi_1,xi_2,alpha_3$ 单位化，得
$ beta_1=xi_1/norm(xi_1)=1/sqrt(6)(-1,2,-1)^T, $
$ beta_2=xi_2/norm(xi_2)=1/sqrt(2)(-1,0,1)^T, $
$ beta_3=alpha_3/norm(alpha_3)=1/sqrt(3)(1,1,1)^T. $
令
$ Q=(beta_1,beta_2,beta_3)=mat(-1/sqrt(6),-1/sqrt(2),1/sqrt(3);2/sqrt(6),0,1/sqrt(3);-1/sqrt(6),1/sqrt(2),1/sqrt(3)), $
$ Lambda=mat(0,0,0;0,0,0;0,0,3), $
那么 $Q$ 为正交矩阵，且 $Q^T A Q=Lambda$.
（Ⅲ）因 $Q^T A Q=Lambda$，且 $Q$ 为正交矩阵，故 $A=Q Lambda Q^T$，
$ A=mat(-1/sqrt(6),-1/sqrt(2),1/sqrt(3);2/sqrt(6),0,1/sqrt(3);-1/sqrt(6),1/sqrt(2),1/sqrt(3))
 mat(0,0,0;0,0,0;0,0,3)mat(-1/sqrt(6),2/sqrt(6),-1/sqrt(6);-1/sqrt(2),0,1/sqrt(2);1/sqrt(3),1/sqrt(3),1/sqrt(3)) \
=mat(1,1,1;1,1,1;1,1,1). $
由 $A=Q Lambda Q^T$，得 $A-3/2 E=Q(Lambda-3/2 E)Q^T$，所以 $(A-3/2 E)^6=Q(Lambda-3/2 E)^6 Q^T=(3/2)^6 E$.
]
]

#ezexam.question[
（本题满分13分）设二维随机变量 $(X,Y)$ 的概率分布为
#table(columns: 4, [$X slash Y$], [$-1$], [0], [1], [$-1$], [$a$], [0], [0.2], [0], [0.1], [$b$], [0.2], [1], [0], [0.1], [$c$])
其中 $a,b,c$ 为常数，且 $X$ 的数学期望 $E X=-0.2$，$P{Y<=0|X<=0}=0.5$.记 $Z=X+Y$，求：

（Ⅰ）$a,b,c$ 的值；

（Ⅱ）$Z$ 的概率分布；

（Ⅲ）$P{X=Z}$.
#ezexam.solution(show-number: false)[
（Ⅰ）由概率分布的性质知，
$ a+b+c+0.6=1, $
即 $a+b+c=0.4$.由 $E X=-0.2$，可得
$ -a+c=-0.1. $
再由
$ P{Y<=0|X<=0}=(P{X<=0,Y<=0})/(P{X<=0}) \
=(a+b+0.1)/(a+b+0.5)=0.5, $
得 $a+b=0.3$.解以上关于 $a,b,c$ 的三个方程，得
$ a=0.2,b=0.1,c=0.1. $
（Ⅱ）$Z$ 的可能取值为 $-2,-1,0,1,2$，
$ P{Z=-2}=P{X=-1,Y=-1}=0.2, $
$ P{Z=-1}=P{X=-1,Y=0}+P{X=0,Y=-1}=0.1, $
$ P{Z=0}=P{X=-1,Y=1}+P{X=0,Y=0} \
+P{X=1,Y=-1}=0.3, $
$ P{Z=1}=P{X=1,Y=0}+P{X=0,Y=1}=0.3, $
$ P{Z=2}=P{X=1,Y=1}=0.1. $
即 $Z$ 的概率分布为
#table(columns: 6, [$Z$], [$-2$], [$-1$], [0], [1], [2], [$P$], [0.2], [0.1], [0.3], [0.3], [0.1])
（Ⅲ）
$ P{X=Z}=P{Y=0} \
=0+b+0.1=0.1+0.1=0.2. $
]
]

#ezexam.question[
（本题满分13分）

设随机变量 $X$ 的概率密度为
$ f_X(x)=cases(1/2 & -1<x<0,1/4 & 0<=x<2,0 & #text[其他]), $
令 $Y=X^2$，$F(x,y)$ 为二维随机变量 $(X,Y)$ 的分布函数.求：

（Ⅰ）$Y$ 的概率密度 $f_Y(y)$；

（Ⅱ）$op("Cov")(X,Y)$；

（Ⅲ）$F(-1/2,4)$.
#ezexam.solution(show-number: false)[
（Ⅰ）$Y$ 的分布函数为 $F_Y(y)=P{Y<=y}=P{X^2<=y}$.

当 $y<=0$ 时，$F_Y(y)=0,f_Y(y)=0$；当 $0<y<1$ 时，
$ F_Y(y)=P{-sqrt(y)<=X<=sqrt(y)} \
=P{-sqrt(y)<=X<0}+P{0<=X<=sqrt(y)} \
=1/2 sqrt(y)+1/4 sqrt(y)=3/4 sqrt(y), $
$f_Y(y)=3/(8sqrt(y))$；当 $1<=y<4$ 时，
$ F_Y(y)=P{-1<=X<0}+P{0<=X<=sqrt(y)}=1/2+1/4 sqrt(y), $
$f_Y(y)=1/(8sqrt(y))$；当 $y>=4$ 时，$F_Y(y)=1,f_Y(y)=0$.

故 $Y$ 的概率密度为
$ f_Y(y)=cases(3/(8sqrt(y)) & 0<y<1,1/(8sqrt(y)) & 1<=y<4,0 & #text[其他]). $
（Ⅱ）
$ E X=integral_(-infinity)^(+infinity)x f_X(x)dif x=integral_(-1)^0 1/2 x dif x+integral_0^2 1/4 x dif x=1/4, $
$ E Y=E X^2=integral_(-infinity)^(+infinity)x^2 f_X(x)dif x=integral_(-1)^0 1/2 x^2 dif x+integral_0^2 1/4 x^2 dif x=5/6, $
$ E(X Y)=E X^3=integral_(-infinity)^(+infinity)x^3 f_X(x)dif x=integral_(-1)^0 1/2 x^3 dif x+integral_0^2 1/4 x^3 dif x=7/8, $
故 $op("Cov")(X,Y)=E(X Y)-E X dot E Y=2/3$.

（Ⅲ）
$ F(-1/2,4)=P{X<=-1/2,Y<=4}=P{X<=-1/2,X^2<=4} \
=P{X<=-1/2,-2<=X<=2}=P{-2<=X<=-1/2} \
=P{-1<X<=-1/2}=1/4. $
]
]

