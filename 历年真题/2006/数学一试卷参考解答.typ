#import "../template.typ": exam
#show: exam.with(year: 2006, subject: "一", title: "2006年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#ezexam.answer-state.update(true)


= 一、填空题（本题共6小题，每小题4分，满分24分）

#ezexam.question[
$lim_(x->0)(x ln(1+x))/(1-cos x)=$#h(3em).
#ezexam.solution(show-number: false)[
2.
]
]

#ezexam.question[
微分方程 $y'=(y(1-x))/x$ 的通解是#h(3em).
#ezexam.solution(show-number: false)[
$y=C x e^(-x)$.
]
]

#ezexam.question[
设 $Sigma$ 是锥面 $z=sqrt(x^2+y^2) (0<=z<=1)$ 的下侧，则 $integral.double_Sigma x dif y dif z+2y dif z dif x+3(z-1)dif x dif y=$#h(3em).
#ezexam.solution(show-number: false)[
$2pi$.
]
]

#ezexam.question[
点 $(2,1,0)$ 到平面 $3x+4y+5z=0$ 的距离 $d=$#h(3em).
#ezexam.solution(show-number: false)[
$sqrt(2)$.
]
]

#ezexam.question[
设矩阵 $A=mat(2,1;-1,2)$，$E$ 为二阶单位矩阵，矩阵 $B$ 满足 $B A=B+2E$，则 $|B|=$#h(3em).
#ezexam.solution(show-number: false)[
2.
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
设 $f(x,y)$ 为连续函数，则 $integral_0^(pi/4)dif theta integral_0^1 f(r cos theta,r sin theta)r dif r$ 等于
#choices([$integral_0^(sqrt(2)/2)dif x integral_x^(sqrt(1-x^2))f(x,y)dif y$.],[$integral_0^(sqrt(2)/2)dif x integral_0^(sqrt(1-x^2))f(x,y)dif y$.],[$integral_0^(sqrt(2)/2)dif y integral_y^(sqrt(1-y^2))f(x,y)dif x$.],[$integral_0^(sqrt(2)/2)dif y integral_0^(sqrt(1-y^2))f(x,y)dif x$.])
#ezexam.solution(show-number: false)[
C.
]
]

#ezexam.question[
若级数 $sum_(n=1)^infinity a_n$ 收敛，则级数
#choices([$sum_(n=1)^infinity |a_n|$ 收敛.],[$sum_(n=1)^infinity(-1)^n a_n$ 收敛.],[$sum_(n=1)^infinity a_n a_(n+1)$ 收敛.],[$sum_(n=1)^infinity(a_n+a_(n+1))/2$ 收敛.])
#ezexam.solution(show-number: false)[
D.
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
（本题满分12分）

将函数 $f(x)=x/(2+x-x^2)$ 展开成 $x$ 的幂级数.
#ezexam.solution(show-number: false)[
解法1　因为 $x/(2+x-x^2)=x/3(1/(1+x)+1/(2-x))$，分别将 $1/(1+x),1/(2-x)$ 展开成 $x$ 的幂级数：
$ 1/(1+x)=sum_(n=0)^infinity(-1)^n x^n,quad |x|<1, $
$ 1/(2-x)=1/2 dot 1/(1-x/2)=sum_(n=0)^infinity x^n/2^(n+1),quad |x|<2, $
所以
$ x/(2+x-x^2)=x/3(1/(1+x)+1/(2-x)) \
=1/3 sum_(n=0)^infinity[(-1)^n+1/2^(n+1)]x^(n+1),quad |x|<1. $
解法2　因为 $x/(2+x-x^2)=1/3(2/(2-x)-1/(1+x))$，分别将 $1/(1+x),2/(2-x)$ 展开成 $x$ 的幂级数：
$ 1/(1+x)=sum_(n=0)^infinity(-1)^n x^n,quad |x|<1, $
$ 2/(2-x)=1/(1-x/2)=sum_(n=0)^infinity x^n/2^n,quad |x|<2, $
所以
$ x/(2+x-x^2)=1/3(2/(2-x)-1/(1+x)) \
=1/3 sum_(n=0)^infinity[1/2^n-(-1)^n]x^n,quad |x|<1. $
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

设在上半平面 $D={(x,y)|y>0}$ 内，函数 $f(x,y)$ 具有连续偏导数，且对任意的 $t>0$ 都有 $f(t x,t y)=t^(-2)f(x,y)$.证明：对 $D$ 内的任意分段光滑的有向简单闭曲线 $L$，都有
$ integral.cont_L y f(x,y)dif x-x f(x,y)dif y=0. $
#ezexam.solution(show-number: false)[
由格林公式知，对 $D$ 内的任意有向简单闭曲线 $L$，
$ integral.cont_L y f(x,y)dif x-x f(x,y)dif y=0 $
的充分必要条件是：对任意 $(x,y) in D$，有
$ 0=partial/(partial y)(y f(x,y))+partial/(partial x)(x f(x,y)) \
=2f(x,y)+y f'_2(x,y)+x f'_1(x,y). $
由于对任意的 $(x,y) in D$ 及 $t>0$ 都有 $f(t x,t y)=t^(-2)f(x,y)$，两边对 $t$ 求导，得
$ x f'_1(t x,t y)+y f'_2(t x,t y)=-2t^(-3)f(x,y). $
令 $t=1$，得 $2f(x,y)+x f'_1(x,y)+y f'_2(x,y)=0$，即
$ partial/(partial y)(y f(x,y))+partial/(partial x)(x f(x,y))=0, $
所以 $integral.cont_L y f(x,y)dif x-x f(x,y)dif y=0$.
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

#ezexam.question[
（本题满分9分）

设随机变量 $X$ 的概率密度为
$ f_X(x)=cases(1/2 & -1<x<0,1/4 & 0<=x<2,0 & #text[其他]), $
令 $Y=X^2$，$F(x,y)$ 为二维随机变量 $(X,Y)$ 的分布函数.求：

（Ⅰ）$Y$ 的概率密度 $f_Y(y)$；

（Ⅱ）$F(-1/2,4)$.
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
$ F(-1/2,4)=P{X<=-1/2,Y<=4}=P{X<=-1/2,X^2<=4} \
=P{X<=-1/2,-2<=X<=2}=P{-2<=X<=-1/2} \
=P{-1<X<=-1/2}=1/4. $
]
]

#ezexam.question[
（本题满分9分）

设总体 $X$ 的概率密度为
$ f(x;theta)=cases(theta & 0<x<1,1-theta & 1<=x<2,0 & #text[其他]), $
其中 $theta$ 是未知参数 $(0<theta<1)$，$X_1,X_2,dots,X_n$ 为来自总体 $X$ 的简单随机样本，记 $N$ 为样本值 $x_1,x_2,dots,x_n$ 中小于1的个数.求 $theta$ 的最大似然估计.
#ezexam.solution(show-number: false)[
似然函数为 $L(theta)=product_(i=1)^n f(x_i;theta)=theta^N(1-theta)^(n-N)$，取对数，得
$ ln L(theta)=N ln theta+(n-N)ln(1-theta), $
两边对 $theta$ 求导，得
$ (dif ln L(theta))/(dif theta)=N/theta-(n-N)/(1-theta). $
令 $(dif ln L(theta))/(dif theta)=0$，得 $theta=N/n$，所以 $theta$ 的最大似然估计为 $hat(theta)=N/n$.
]
]

