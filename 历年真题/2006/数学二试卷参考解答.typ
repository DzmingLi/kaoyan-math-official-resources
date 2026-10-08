#import "../template.typ": exam
#show: exam.with(year: 2006, subject: "二", title: "2006年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#ezexam.answer-state.update(true)


= 一、填空题（本题共6小题，每小题4分，满分24分）

#ezexam.question[
曲线 $y=(x+4sin x)/(5x-2cos x)$ 的水平渐近线方程为#h(3em).
#ezexam.solution(show-number: false)[
$y=1/5$.
]
]

#ezexam.question[
设函数 $f(x)=cases(1/x^3 integral_0^x sin(t^2)dif t & x!=0,a & x=0)$ 在 $x=0$ 处连续，则 $a=$#h(3em).
#ezexam.solution(show-number: false)[
$1/3$.
]
]

#ezexam.question[
反常积分 $integral_0^(+infinity)(x dif x)/(1+x^2)^2=$#h(3em).
#ezexam.solution(show-number: false)[
$1/2$.
]
]

#ezexam.question[
微分方程 $y'=(y(1-x))/x$ 的通解是#h(3em).
#ezexam.solution(show-number: false)[
$y=C x e^(-x)$.
]
]

#ezexam.question[
设函数 $y=y(x)$ 由方程 $y=1-x e^y$ 确定，则 $lr((dif y)/(dif x))|_(x=0)=$#h(3em).
#ezexam.solution(show-number: false)[
$-e$.
]
]

#ezexam.question[
设矩阵 $A=mat(2,1;-1,2)$，$E$ 为二阶单位矩阵，矩阵 $B$ 满足 $B A=B+2E$，则 $|B|=$#h(3em).
#ezexam.solution(show-number: false)[
2.
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
设 $f(x)$ 是奇函数，除 $x=0$ 外处处连续，$x=0$ 是其第一类间断点，则 $integral_0^x f(t)dif t$ 是
#choices[连续的奇函数.][连续的偶函数.][在 $x=0$ 间断的奇函数.][在 $x=0$ 间断的偶函数.]
#ezexam.solution(show-number: false)[
B.
]
]

#ezexam.question[
设函数 $g(x)$ 可微，$h(x)=e^(1+g(x)),h'(1)=1,g'(1)=2$，则 $g(1)$ 等于
#choices([$ln 3-1$.],[$-ln 3-1$.],[$-ln 2-1$.],[$ln 2-1$.])
#ezexam.solution(show-number: false)[
C.
]
]

#ezexam.question[
函数 $y=C_1 e^x+C_2 e^(-2x)+x e^x$ 满足的一个微分方程是
#choices([$y''-y'-2y=3x e^x$.],[$y''-y'-2y=3e^x$.],[$y''+y'-2y=3x e^x$.],[$y''+y'-2y=3e^x$.])
#ezexam.solution(show-number: false)[
D.
]
]

#ezexam.question[
设 $f(x,y)$ 为连续函数，则 $integral_0^(pi/4)dif theta integral_0^1 f(r cos theta,r sin theta)r dif r$ 等于
#choices([$integral_0^(sqrt(2)/2)dif x integral_x^(sqrt(1-x^2))f(x,y)dif y$.],[$integral_0^(sqrt(2)/2)dif x integral_0^(sqrt(1-x^2))f(x,y)dif y$.],[$integral_0^(sqrt(2)/2)dif y integral_y^(sqrt(1-y^2))f(x,y)dif x$.],[$integral_0^(sqrt(2)/2)dif y integral_0^(sqrt(1-y^2))f(x,y)dif x$.])
#ezexam.solution(show-number: false)[
C.
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
设 $alpha_1,alpha_2,dots,alpha_s$ 均为 $n$ 维列向量，$A$ 是 $m times n$ 矩阵，下列选项正确的是
#choices([若 $alpha_1,alpha_2,dots,alpha_s$ 线性相关，则 $A alpha_1,A alpha_2,dots,A alpha_s$ 线性相关.],[若 $alpha_1,alpha_2,dots,alpha_s$ 线性相关，则 $A alpha_1,A alpha_2,dots,A alpha_s$ 线性无关.],[若 $alpha_1,alpha_2,dots,alpha_s$ 线性无关，则 $A alpha_1,A alpha_2,dots,A alpha_s$ 线性相关.],[若 $alpha_1,alpha_2,dots,alpha_s$ 线性无关，则 $A alpha_1,A alpha_2,dots,A alpha_s$ 线性无关.])
#ezexam.solution(show-number: false)[
A.
]
]

#ezexam.question[
设 $A$ 为三阶矩阵，将 $A$ 的第2行加到第1行得 $B$，再将 $B$ 的第1列的 $-1$ 倍加到第2列得 $C$，记 $P=mat(1,1,0;0,1,0;0,0,1)$，则
#choices([$C=P^(-1)A P$.],[$C=P A P^(-1)$.],[$C=P^T A P$.],[$C=P A P^T$.])
#ezexam.solution(show-number: false)[
B.
]
]

= 三、解答题（本题共9小题，满分94分.解答应写出文字说明、证明过程或演算步骤.）

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
（本题满分10分）

求 $integral (arcsin e^x)/e^x dif x$.
#ezexam.solution(show-number: false)[
解法1　令 $arcsin e^x=t$，则 $x=ln sin t,dif x=cos t/(sin t)dif t$.
$ integral (arcsin e^x)/e^x dif x=integral t/(sin t) dot cos t/(sin t)dif t \
=-integral t dif(1/(sin t)) \
=-t/(sin t)+integral 1/(sin t)dif t \
=-t/(sin t)+ln|csc t-cot t|+C \
=-(arcsin e^x)/e^x+ln|1/e^x-sqrt(1-e^(2x))/e^x|+C \
=-(arcsin e^x)/e^x+ln(1-sqrt(1-e^(2x)))-x+C. $
解法2
$ integral (arcsin e^x)/e^x dif x=-integral arcsin e^x dif(e^(-x)) \
=-(arcsin e^x)/e^x+integral (dif x)/sqrt(1-e^(2x)). $
在 $integral (dif x)/sqrt(1-e^(2x))$ 中，令 $sqrt(1-e^(2x))=t$，则 $dif x=(-t dif t)/(1-t^2)$，
$ integral (dif x)/sqrt(1-e^(2x))=-integral (dif t)/(1-t^2) \
=-1/2 ln|(1+t)/(1-t)|+C \
=-1/2 ln((1+sqrt(1-e^(2x)))/(1-sqrt(1-e^(2x))))+C, $
于是
$ integral (arcsin e^x)/e^x dif x=-(arcsin e^x)/e^x-1/2 ln((1+sqrt(1-e^(2x)))/(1-sqrt(1-e^(2x))))+C. $
]
]

#ezexam.question[
（本题满分10分）

设区域 $D={(x,y)|x^2+y^2<=1,x>=0}$，计算二重积分 $I=integral.double_D(1+x y)/(1+x^2+y^2)dif x dif y$.
#ezexam.solution(show-number: false)[
解法1
$ I_1=integral.double_D 1/(1+x^2+y^2)dif x dif y \
=integral_(-pi/2)^(pi/2)dif theta integral_0^1 1/(1+r^2)r dif r \
=pi/2 lr(ln(1+r^2))|_0^1=pi/2 ln 2, $
$ I_2=integral.double_D(x y)/(1+x^2+y^2)dif x dif y \
=integral_(-pi/2)^(pi/2)dif theta integral_0^1(r^3 cos theta sin theta)/(1+r^2)dif r \
=integral_(-pi/2)^(pi/2)cos theta sin theta dif theta integral_0^1 r^3/(1+r^2)dif r=0, $
所以 $I=I_1+I_2=pi/2 ln 2$.

解法2　$I_1$ 同解法1.由于 $D$ 关于 $x$ 轴对称，且函数 $(x y)/(1+x^2+y^2)$ 是 $y$ 的奇函数，所以 $I_2=integral.double_D(x y)/(1+x^2+y^2)dif x dif y=0$，故 $I=I_1+I_2=pi/2 ln 2$.
]
]

#ezexam.question[
（本题满分12分）

设数列 $\{x_n\}$ 满足 $0<x_1<pi,x_(n+1)=sin x_n (n=1,2,dots)$.

（Ⅰ）证明 $lim_(n->infinity)x_n$ 存在，并求该极限；

（Ⅱ）计算 $lim_(n->infinity)(x_(n+1)/x_n)^(1/x_n^2)$.
#ezexam.solution(show-number: false)[
（Ⅰ）用归纳法证明 $\{x_n\}$ 单调下降且有下界.

由 $0<x_1<pi$，得 $0<x_2=sin x_1<x_1<pi$.设 $0<x_n<pi$，则 $0<x_(n+1)=sin x_n<x_n<pi$，所以 $\{x_n\}$ 单调下降且有下界，故 $lim_(n->infinity)x_n$ 存在.

记 $a=lim_(n->infinity)x_n$，由 $x_(n+1)=sin x_n$ 得 $a=sin a$，所以 $a=0$，即 $lim_(n->infinity)x_n=0$.

（Ⅱ）解法1　因为
$ lim_(x->0)(sin x/x)^(1/x^2)=lim_(x->0)e^(1/x^2 ln(sin x/x)) \
=lim_(x->0)e^(1/(2x)(cos x/(sin x)-1/x)) \
=lim_(x->0)e^((x cos x-sin x)/(2x^3)) \
=lim_(x->0)e^((-x sin x)/(6x^2))=e^(-1/6). $
又由（Ⅰ）$lim_(n->infinity)x_n=0$，所以
$ lim_(n->infinity)(x_(n+1)/x_n)^(1/x_n^2) \
=lim_(n->infinity)(sin x_n/x_n)^(1/x_n^2)=lim_(x->0)(sin x/x)^(1/x^2)=e^(-1/6). $
解法2　因为
$ (sin x/x)^(1/x^2)=[(1+(sin x-x)/x)^(x/(sin x-x))]^((sin x-x)/x^3), $
又因为 $lim_(x->0)(sin x-x)/x^3=-1/6,lim_(x->0)(1+(sin x-x)/x)^(x/(sin x-x))=e$，所以 $lim_(x->0)(sin x/x)^(1/x^2)=e^(-1/6)$，故
$ lim_(n->infinity)(x_(n+1)/x_n)^(1/x_n^2)=lim_(n->infinity)(sin x_n/x_n)^(1/x_n^2)=lim_(x->0)(sin x/x)^(1/x^2)=e^(-1/6). $
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
（本题满分12分）

设函数 $f(u)$ 在 $(0,+infinity)$ 内具有二阶导数，且 $z=f(sqrt(x^2+y^2))$ 满足等式 $(partial^2 z)/(partial x^2)+(partial^2 z)/(partial y^2)=0$.

（Ⅰ）验证 $f''(u)+f'(u)/u=0$；

（Ⅱ）若 $f(1)=0,f'(1)=1$，求函数 $f(u)$ 的表达式.
#ezexam.solution(show-number: false)[
（Ⅰ）由 $z=f(u),u=sqrt(x^2+y^2)$，得
$ (partial z)/(partial x)=f' dot x/sqrt(x^2+y^2), $
$ (partial^2 z)/(partial x^2)=f'' dot x^2/(x^2+y^2)+f' dot y^2/(x^2+y^2)^(3/2), $
$ (partial z)/(partial y)=f' dot y/sqrt(x^2+y^2), $
$ (partial^2 z)/(partial y^2)=f'' dot y^2/(x^2+y^2)+f' dot x^2/(x^2+y^2)^(3/2). $
所以根据题设条件可得 $f''+1/sqrt(x^2+y^2) dot f'=0$，即 $f''(u)+f'(u)/u=0$.

（Ⅱ）由（Ⅰ）及 $f'(1)=1$，得 $f'(u)=1/u$，所以 $f(u)=ln u+C$.由 $f(1)=0$，得 $C=0$，因此 $f(u)=ln u$.
]
]

#ezexam.question[
（本题满分12分）

已知曲线 $L$ 的方程为 $cases(x=t^2+1,y=4t-t^2) (t>=0)$，

（Ⅰ）讨论 $L$ 的凹凸性；

（Ⅱ）过点 $(-1,0)$ 引 $L$ 的切线，求切点 $(x_0,y_0)$ 并写出切线的方程；

（Ⅲ）求此切线与 $L$（对应于 $x<=x_0$ 的部分）及 $x$ 轴所围成的平面图形的面积.
#ezexam.solution(show-number: false)[
解法1　（Ⅰ）由于 $(dif y)/(dif x)=2/t-1,(dif^2 y)/(dif x^2)=-1/t^3$，当 $t>0$ 时，$(dif^2 y)/(dif x^2)<0$，故 $L$ 上凸.

（Ⅱ）因为当 $t=0$ 时，$L$ 在对应点处的切线方程为 $x=1$，不合题意，故设切点 $(x_0,y_0)$ 对应的参数为 $t_0>0$，则 $L$ 在 $(x_0,y_0)$ 处的切线方程为
$ y-(4t_0-t_0^2)=(2/t_0-1)(x-t_0^2-1). $
令 $x=-1,y=0$，得 $t_0^2+t_0-2=0$，解得 $t_0=1$ 或 $t_0=-2$（舍去）.由 $t_0=1$ 知，切点为 $(2,3)$，且切线方程为 $y=x+1$.

（Ⅲ）由 $t=0,t=4$ 知 $L$ 与 $x$ 轴的交点分别为 $(1,0)$ 和 $(17,0)$.所求平面图形的面积为
$ S=integral_(-1)^2(x+1)dif x-integral_1^2 y dif x \
=9/2-integral_0^1(4t-t^2)dif(t^2+1) \
=9/2-2integral_0^1(4t^2-t^3)dif t=7/3. $
解法2　（Ⅰ）同解法1.

（Ⅱ）$L$ 的直角坐标方程为 $y=4sqrt(x-1)-(x-1)$.

因为当 $x_0=1$ 时，$L$ 在对应点处的切线方程为 $x=1$，不合题意，故可设 $L$ 在点 $(x_0,y_0)$ 处的切线方程为
$ y-y_0=(2/sqrt(x_0-1)-1)(x-x_0),quad x_0>1. $
将 $x=-1,y=0$ 代入上式，得
$ -y_0=(2/sqrt(x_0-1)-1)(-1-x_0), $
$ -4sqrt(x_0-1)+(x_0-1)=(-2+sqrt(x_0-1))/sqrt(x_0-1)(x_0+1), $
整理得 $(x_0-1)+sqrt(x_0-1)-2=0$，即 $(sqrt(x_0-1)+2)(sqrt(x_0-1)-1)=0$，解得 $x_0=2$，并得 $y_0=3$，即切点为 $(2,3)$.因此切线方程为 $y=x+1$.

（Ⅲ）令 $y=0$，得 $L$ 与 $x$ 轴的交点分别为 $(1,0),(17,0)$.所求平面图形面积为
$ S=integral_(-1)^2(x+1)dif x-integral_1^2[4sqrt(x-1)-(x-1)]dif x \
=9/2-lr([8/3(x-1)^(3/2)-1/2(x-1)^2])|_1^2 \
=9/2-13/6=7/3. $
]
]

#ezexam.question[
（本题满分9分）

已知非齐次线性方程组
$ cases(x_1+x_2+x_3+x_4=-1,4x_1+3x_2+5x_3-x_4=-1,a x_1+x_2+3x_3+b x_4=1) $
有三个线性无关的解.

（Ⅰ）证明方程组系数矩阵 $A$ 的秩 $r(A)=2$；

（Ⅱ）求 $a,b$ 的值及方程组的通解.
#ezexam.solution(show-number: false)[
（Ⅰ）设 $xi_1,xi_2,xi_3$ 是该线性方程组的三个线性无关的解，则 $xi_1-xi_2,xi_1-xi_3$ 是对应的齐次线性方程组 $A x=bold(0)$ 的两个线性无关的解，因而 $4-r(A)>=2$，即 $r(A)<=2$.

又 $A$ 有一个二阶子式 $mat(delim:"|",1,1;4,3)!=0$，于是 $r(A)>=2$，因此 $r(A)=2$.

（Ⅱ）对增广矩阵 $overline(A)$ 施以初等行变换，有
$ overline(A)=mat(augment:#4,1,1,1,1,-1;4,3,5,-1,-1;a,1,3,b,1) \
->mat(augment:#4,1,1,1,1,-1;0,-1,1,-5,3;0,1-a,3-a,b-a,1+a) \
->mat(augment:#4,1,0,2,-4,2;0,1,-1,5,-3;0,0,4-2a,4a+b-5,4-2a)=B. $
因 $r(A)=2$，故 $4-2a=0,4a+b-5=0$，即 $a=2,b=-3$.

此时 $B=mat(augment:#4,1,0,2,-4,2;0,1,-1,5,-3;0,0,0,0,0)$，可得方程组通解为
$ x=mat(2;-3;0;0)+k_1 mat(-2;1;1;0)+k_2 mat(4;-5;0;1), $
其中 $k_1,k_2$ 为任意常数.
]
]

#ezexam.question[
（本题满分9分）

设三阶实对称矩阵 $A$ 的各行元素之和均为3，向量 $alpha_1=(-1,2,-1)^T,alpha_2=(0,-1,1)^T$ 是线性方程组 $A x=bold(0)$ 的两个解.

（Ⅰ）求 $A$ 的特征值与特征向量；

（Ⅱ）求正交矩阵 $Q$ 和对角矩阵 $Lambda$，使得 $Q^T A Q=Lambda$.
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
]
]

