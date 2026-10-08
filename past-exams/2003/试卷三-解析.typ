#import "../template.typ": exam
#show: exam.with(year: 2003, subject: "三", title: "2003年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#ezexam.answer-state.update(true)


= 一、填空题（本题共6小题，每小题4分，满分24分）
#ezexam.counter-question.step()

（1）设 $f(x)=cases(x^lambda cos(1/x) & x != 0,0 & x=0)$，其导函数在 $x=0$ 处连续，则 $lambda$ 取值范围是#h(3em).
#ezexam.solution(show-number: false)[
$lambda>2$.
]

（2）已知曲线 $y=x^3-3a^2 x+b$ 与 $x$ 轴相切，则 $b^2$ 可以通过 $a$ 表示为 $b^2=$#h(3em).
#ezexam.solution(show-number: false)[
$4a^6$.
]

（3）设 $a>0,f(x)=g(x)=cases(a & 0<=x<=1,0 & #text[其他])$，而 $D$ 表示全平面，则 $I=integral.double_D f(x)g(y-x) dif x dif y=$#h(3em).
#ezexam.solution(show-number: false)[
$a^2$.
]

（4）设 $n$ 维向量 $alpha=(a,0,dots,0,a)^T,a<0$；$E$ 为 $n$ 阶单位矩阵，矩阵
$ A=E-alpha alpha^T,B=E+1/a alpha alpha^T, $
其中 $A$ 的逆矩阵为 $B$，则 $a=$#h(3em).
#ezexam.solution(show-number: false)[
$-1$.
]

（5）设随机变量 $X$ 和 $Y$ 的相关系数为0.9，若 $Z=X-0.4$，则 $Y$ 与 $Z$ 的相关系数为#h(3em).
#ezexam.solution(show-number: false)[
0.9.
]

（6）设总体 $X$ 服从参数为2的指数分布，$X_1,X_2,dots,X_n$ 为来自总体 $X$ 的简单随机样本，则当 $n->infinity$ 时，$Y_n=1/n sum_(i=1)^n X_i^2$ 依概率收敛于#h(3em).
#ezexam.solution(show-number: false)[
$1/2$.
]

= 二、选择题（本题共6小题，每小题4分，满分24分）
#ezexam.counter-question.step()

（1）设 $f(x)$ 为不恒等于零的奇函数，且 $f'(0)$ 存在，则函数 $g(x)=f(x)/x$（　）.
#choices[在 $x=0$ 处左极限不存在.][有跳跃间断点 $x=0$.][在 $x=0$ 处右极限不存在.][有可去间断点 $x=0$.]
#ezexam.solution(show-number: false)[
D.
]

（2）设可微函数 $f(x,y)$ 在点 $(x_0,y_0)$ 取得极小值，则下列结论正确的是（　）.
#choices[$f(x_0,y)$ 在 $y=y_0$ 处的导数等于零.][$f(x_0,y)$ 在 $y=y_0$ 处的导数大于零.][$f(x_0,y)$ 在 $y=y_0$ 处的导数小于零.][$f(x_0,y)$ 在 $y=y_0$ 处的导数不存在.]
#ezexam.solution(show-number: false)[
A.
]

（3）设 $p_n=(a_n+|a_n|)/2,q_n=(a_n-|a_n|)/2,n=1,2,dots$，则下列命题正确的是（　）.
#choices[若 $sum_(n=1)^infinity a_n$ 条件收敛，则 $sum_(n=1)^infinity p_n$ 与 $sum_(n=1)^infinity q_n$ 都收敛.][若 $sum_(n=1)^infinity a_n$ 绝对收敛，则 $sum_(n=1)^infinity p_n$ 与 $sum_(n=1)^infinity q_n$ 都收敛.][若 $sum_(n=1)^infinity a_n$ 条件收敛，则 $sum_(n=1)^infinity p_n$ 与 $sum_(n=1)^infinity q_n$ 的敛散性都不定.][若 $sum_(n=1)^infinity a_n$ 绝对收敛，则 $sum_(n=1)^infinity p_n$ 与 $sum_(n=1)^infinity q_n$ 的敛散性都不定.]
#ezexam.solution(show-number: false)[
B.
]

（4）设三阶矩阵 $A=mat(a,b,b;b,a,b;b,b,a)$，若 $A$ 的伴随矩阵的秩等于1，则必有（　）.
#choices[$a=b$ 或 $a+2b=0$.][$a=b$ 或 $a+2b != 0$.][$a != b$ 且 $a+2b=0$.][$a != b$ 且 $a+2b != 0$.]
#ezexam.solution(show-number: false)[
C.
]

（5）设 $alpha_1,alpha_2,dots,alpha_s$ 均为 $n$ 维向量，下列结论不正确的是（　）.
#choices[若对于任一组不全为零的数 $k_1,k_2,dots,k_s$，都有 $k_1 alpha_1+k_2 alpha_2+dots+k_s alpha_s != 0$，则 $alpha_1,alpha_2,dots,alpha_s$ 线性无关.][若 $alpha_1,alpha_2,dots,alpha_s$ 线性相关，则对于任意一组不全为零的数 $k_1,k_2,dots,k_s$，有 $k_1 alpha_1+k_2 alpha_2+dots+k_s alpha_s=0$.][$alpha_1,alpha_2,dots,alpha_s$ 线性无关的充分必要条件是此向量组的秩为 $s$.][$alpha_1,alpha_2,dots,alpha_s$ 线性无关的必要条件是其中任意两个向量线性无关.]
#ezexam.solution(show-number: false)[
B.
]

（6）将一枚硬币独立地掷两次，引进事件：$A_1=$｛掷第一次出现正面｝，$A_2=$｛掷第二次出现正面｝，$A_3=$｛正、反面各出现一次｝，$A_4=$｛正面出现两次｝，则事件（　）.
#choices[$A_1,A_2,A_3$ 相互独立.][$A_2,A_3,A_4$ 相互独立.][$A_1,A_2,A_3$ 两两独立.][$A_2,A_3,A_4$ 两两独立.]
#ezexam.solution(show-number: false)[
C.
]

#ezexam.question(label: n => [三、])[
（本题满分8分）设
$ f(x)=1/(pi x)+1/(sin pi x)-1/(pi(1-x)),x in [1/2,1). $
试补充定义 $f(1)$ 使得 $f(x)$ 在 $[1/2,1]$ 上连续.
#ezexam.solution(show-number: false)[
解 令 $y=1-x$，有
$ lim_(x->1^-) f(x)&=1/pi+lim_(x->1^-) (pi(1-x)-sin pi x)/(pi(1-x)sin pi x) \
&=1/pi+lim_(y->0^+) (pi y-sin pi y)/(pi y sin pi y) \
&=1/pi+lim_(y->0^+) (pi y-sin pi y)/(pi^2 y^2) \
&=1/pi+lim_(y->0^+) (pi-pi cos pi y)/(2 pi^2 y) \
&=1/pi+lim_(y->0^+) (pi^2 sin pi y)/(2 pi^2)=1/pi. $
由于 $f(x)$ 在 $[1/2,1)$ 上连续，因此定义
$ f(1)=1/pi, $
就可使 $f(x)$ 在 $[1/2,1]$ 上连续.
]


]

#ezexam.question(label: n => [四、])[
（本题满分8分）设 $f(u,v)$ 具有二阶连续偏导数，且满足 $(partial^2 f)/(partial u^2)+(partial^2 f)/(partial v^2)=1$，又 $g(x,y)=f[x y,1/2(x^2-y^2)]$，求 $(partial^2 g)/(partial x^2)+(partial^2 g)/(partial y^2)$.
#ezexam.solution(show-number: false)[
解
$ (partial g)/(partial x)=y (partial f)/(partial u)+x (partial f)/(partial v), \
(partial g)/(partial y)=x (partial f)/(partial u)-y (partial f)/(partial v). $
故
$ (partial^2 g)/(partial x^2)=y^2 (partial^2 f)/(partial u^2)+2x y (partial^2 f)/(partial u partial v)+x^2 (partial^2 f)/(partial v^2)+(partial f)/(partial v), \
(partial^2 g)/(partial y^2)=x^2 (partial^2 f)/(partial u^2)-2x y (partial^2 f)/(partial u partial v)+y^2 (partial^2 f)/(partial v^2)-(partial f)/(partial v). $
所以
$ (partial^2 g)/(partial x^2)+(partial^2 g)/(partial y^2)&=(x^2+y^2)(partial^2 f)/(partial u^2)+(x^2+y^2)(partial^2 f)/(partial v^2) \
&=x^2+y^2. $
]


]

#ezexam.question(label: n => [五、])[
（本题满分8分）计算二重积分
$ I=integral.double_D e^(-(x^2+y^2-pi)) sin(x^2+y^2) dif x dif y, $
其中积分区域 $D={(x,y) | x^2+y^2<=pi}$.
#ezexam.solution(show-number: false)[
解 作极坐标变换：$x=r cos theta,y=r sin theta$，有
$ I&=e^pi integral.double_D e^(-(x^2+y^2)) sin(x^2+y^2) dif x dif y \
&=e^pi integral_0^(2 pi) dif theta integral_0^sqrt (pi) r e^(-r^2) sin r^2 dif r. $
令 $t=r^2$，则
$ I=pi e^pi integral_0^pi e^(-t) sin t dif t. $
记 $A=integral_0^pi e^(-t) sin t dif t$，则
$ A&=-integral_0^pi sin t dif e^(-t) \
&=-[lr(e^(-t) sin t)|_0^pi-integral_0^pi e^(-t) cos t dif t] \
&=-integral_0^pi cos t dif e^(-t) \
&=-[lr(e^(-t) cos t)|_0^pi+integral_0^pi e^(-t) sin t dif t] \
&=e^(-pi)+1-A. $
因此
$ A=1/2(1+e^(-pi)), quad I=(pi e^pi)/2(1+e^(-pi))=pi/2(1+e^pi). $
]


]

#ezexam.question(label: n => [六、])[
（本题满分9分）求幂级数 $1+sum_(n=1)^infinity (-1)^n x^(2n)/(2n) (|x|<1)$ 的和函数 $f(x)$ 及其极值.
#ezexam.solution(show-number: false)[
解
$ f'(x)=sum_(n=1)^infinity (-1)^n x^(2n-1)=-x/(1+x^2). $
上式两边从0到 $x$ 积分，得
$ f(x)-f(0)=-integral_0^x t/(1+t^2) dif t=-1/2 ln(1+x^2). $
由 $f(0)=1$，得
$ f(x)=1-1/2 ln(1+x^2), quad (|x|<1). $
令 $f'(x)=0$，求得唯一驻点 $x=0$.由于
$ f''(x)=-(1-x^2)/(1+x^2)^2, quad f''(0)=-1<0, $
可见 $f(x)$ 在 $x=0$ 处取得极大值，且极大值为
$ f(0)=1. $
]


]

#ezexam.question(label: n => [七、])[
（本题满分9分）设 $F(x)=f(x)g(x)$，其中函数 $f(x),g(x)$ 在 $(-infinity,+infinity)$ 内满足以下条件：
$ f'(x)=g(x),g'(x)=f(x), #text[且] f(0)=0,f(x)+g(x)=2e^x. $
（1）求 $F(x)$ 所满足的一阶微分方程；

（2）求出 $F(x)$ 的表达式.
#ezexam.solution(show-number: false)[
解 （1）由
$ F'(x)&=f'(x)g(x)+f(x)g'(x)=g^2(x)+f^2(x) \
&=[f(x)+g(x)]^2-2f(x)g(x)=(2e^x)^2-2F(x), $
可见 $F(x)$ 所满足的一阶微分方程为
$ F'(x)+2F(x)=4e^(2x). $
（2）
$ F(x)&=e^(-integral 2 dif x)[integral 4e^(2x) dot e^(integral 2 dif x) dif x+C] \
&=e^(-2x)[integral 4e^(4x) dif x+C]=e^(2x)+C e^(-2x). $
将 $F(0)=f(0)g(0)=0$ 代入上式，得 $C=-1$.

于是
$ F(x)=e^(2x)-e^(-2x). $
]


]

#ezexam.question(label: n => [八、])[
（本题满分8分）设函数 $f(x)$ 在 $[0,3]$ 上连续，在 $(0,3)$ 内可导，且 $f(0)+f(1)+f(2)=3,f(3)=1$.试证必存在 $xi in (0,3)$，使 $f'(xi)=0$.
#ezexam.solution(show-number: false)[
证 因为 $f(x)$ 在 $[0,3]$ 上连续，所以 $f(x)$ 在 $[0,2]$ 上连续，且在 $[0,2]$ 上必有最大值 $M$ 和最小值 $m$，于是
$ m<=f(0)<=M, quad m<=f(1)<=M, quad m<=f(2)<=M. $
故
$ m<=(f(0)+f(1)+f(2))/3<=M. $
由介值定理知，至少存在一点 $c in [0,2]$，使
$ f(c)=(f(0)+f(1)+f(2))/3=1. $
因为 $f(c)=1=f(3)$，且 $f(x)$ 在 $[c,3]$ 上连续，在 $(c,3)$ 内可导，所以由罗尔定理知，必存在 $xi in (c,3) subset (0,3)$，使 $f'(xi)=0$.
]


]

#ezexam.question(label: n => [九、])[
（本题满分13分）已知齐次线性方程组
$ cases((a_1+b)x_1+a_2 x_2+a_3 x_3+dots+a_n x_n=0,a_1 x_1+(a_2+b)x_2+a_3 x_3+dots+a_n x_n=0,a_1 x_1+a_2 x_2+(a_3+b)x_3+dots+a_n x_n=0,dots,a_1 x_1+a_2 x_2+a_3 x_3+dots+(a_n+b)x_n=0), $
其中 $sum_(i=1)^n a_i != 0$.试讨论 $a_1,a_2,dots,a_n$ 和 $b$ 满足何种关系时，

（1）方程组仅有零解；

（2）方程组有非零解.在有非零解时，求此方程组的一个基础解系.
#ezexam.solution(show-number: false)[
解 方程组的系数行列式
$ |A|=mat(delim:"|",a_1+b,a_2,a_3,dots,a_n;a_1,a_2+b,a_3,dots,a_n;a_1,a_2,a_3+b,dots,a_n;dots.v,dots.v,dots.v,,dots.v;a_1,a_2,a_3,dots,a_n+b)=b^(n-1)(b+sum_(i=1)^n a_i). $
（1）当 $b != 0$ 且 $b+sum_(i=1)^n a_i != 0$ 时，$op("秩")(A)=n$，方程组仅有零解.

（2）当 $b=0$ 时，原方程组的同解方程组为
$ a_1 x_1+a_2 x_2+dots+a_n x_n=0. $
由 $sum_(i=1)^n a_i != 0$ 可知，$a_i (i=1,2,dots,n)$ 不全为零.不妨设 $a_1 != 0$，得原方程组的一个基础解系为
$ alpha_1=(-a_2/a_1,1,0,dots,0)^T, quad alpha_2=(-a_3/a_1,0,1,dots,0)^T, \
 dots, quad alpha_(n-1)=(-a_n/a_1,0,0,dots,1)^T. $
当 $b=-sum_(i=1)^n a_i$ 时，有 $b != 0$，原方程组的系数矩阵可化为
$ mat(a_1-sum_(i=1)^n a_i,a_2,a_3,dots,a_n;-1,1,0,dots,0;-1,0,1,dots,0;dots.v,dots.v,dots.v,,dots.v;-1,0,0,dots,1) \
->mat(-1,1,0,dots,0;-1,0,1,dots,0;dots.v,dots.v,dots.v,,dots.v;-1,0,0,dots,1;0,0,0,dots,0). $
由此得原方程组的同解方程组为
$ x_2=x_1,x_3=x_1,dots,x_n=x_1. $
原方程组的一个基础解系为
$ alpha=(1,1,dots,1)^T. $
]


]

#ezexam.question(label: n => [十、])[
（本题满分13分）设二次型 $f(x_1,x_2,x_3)=X^T A X=a x_1^2+2x_2^2-2x_3^2+2b x_1 x_3 (b>0)$，其中二次型的矩阵 $A$ 的特征值之和为1，特征值之积为 $-12$.

（1）求 $a,b$ 的值；

（2）利用正交变换将二次型 $f$ 化为标准形，并写出所用的正交变换和对应的正交矩阵.
#ezexam.solution(show-number: false)[
解法1 （1）二次型 $f$ 的矩阵为
$ A=mat(a,0,b;0,2,0;b,0,-2). $
设 $A$ 的特征值为 $lambda_i (i=1,2,3)$.由题设，有
$ lambda_1+lambda_2+lambda_3=a+2+(-2)=1, $
$ lambda_1 lambda_2 lambda_3=mat(delim:"|",a,0,b;0,2,0;b,0,-2)=-4a-2b^2=-12. $
解得 $a=1,b=2$.

（2）由矩阵 $A$ 的特征多项式
$ |lambda E-A|=mat(delim:"|",lambda-1,0,-2;0,lambda-2,0;-2,0,lambda+2)=(lambda-2)^2 (lambda+3), $
得 $A$ 的特征值 $lambda_1=lambda_2=2,lambda_3=-3$.

对于 $lambda_1=lambda_2=2$，解齐次线性方程组 $(2E-A)X=0$，得其基础解系
$ xi_1=(2,0,1)^T,xi_2=(0,1,0)^T. $
对于 $lambda_3=-3$，解齐次线性方程组 $(-3E-A)X=0$，得其基础解系
$ xi_3=(1,0,-2)^T. $
由于 $xi_1,xi_2,xi_3$ 已是正交向量组，为得到规范正交向量组，只需将 $xi_1,xi_2,xi_3$ 单位化，由此得
$ eta_1=(2/sqrt(5),0,1/sqrt(5))^T,eta_2=(0,1,0)^T,eta_3=(1/sqrt(5),0,-2/sqrt(5))^T. $
令矩阵
$ Q=(eta_1,eta_2,eta_3)=mat(2/sqrt(5),0,1/sqrt(5);0,1,0;1/sqrt(5),0,-2/sqrt(5)), $
则 $Q$ 为正交矩阵.在正交变换 $X=Q Y$ 下，有
$ Q^T A Q=mat(2,0,0;0,2,0;0,0,-3), $
且二次型的标准形为
$ f=2y_1^2+2y_2^2-3y_3^2. $
解法2 （1）二次型 $f$ 的矩阵为
$ A=mat(a,0,b;0,2,0;b,0,-2), $
$A$ 的特征多项式为
$ |lambda E-A|&=mat(delim:"|",lambda-a,0,-b;0,lambda-2,0;-b,0,lambda+2) \
&=(lambda-2)[lambda^2-(a-2)lambda-(2a+b^2)]. $
设 $A$ 的特征值为 $lambda_1,lambda_2,lambda_3$，则 $lambda_1=2,lambda_2+lambda_3=a-2,lambda_2 lambda_3=-(2a+b^2)$.由题设得
$ lambda_1+lambda_2+lambda_3=2+(a-2)=1, \
 lambda_1 lambda_2 lambda_3=-2(2a+b^2)=-12. $
解得 $a=1,b=2$.

（2）由（1），可得 $A$ 的特征值为
$ lambda_1=lambda_2=2,lambda_3=-3. $
以下可参见解法1.
]


]

#ezexam.question(label: n => [十一、])[
（本题满分13分）设随机变量 $X$ 的概率密度为
$ f(x)=cases(1/(3 root(3,x^2)) & x in [1,8],0 & #text[其他]); $
$F(x)$ 是 $X$ 的分布函数.求随机变量 $Y=F(X)$ 的分布函数.
#ezexam.solution(show-number: false)[
解 易见，当 $x<1$ 时，$F(x)=0$；当 $x>8$ 时，$F(x)=1$.

对于 $x in [1,8]$，有
$ F(x)=integral_1^x 1/(3 root(3,t^2)) dif t=root(3,x)-1. $
设 $G(y)$ 是随机变量 $Y=F(X)$ 的分布函数.显然，当 $y<=0$ 时 $G(y)=0$；当 $y>=1$ 时 $G(y)=1$.

对于 $y in (0,1)$，有
$ G(y)&=P{Y<=y}=P{F(X)<=y} \
&=P{root(3,X)-1<=y}=P{X<=(y+1)^3}=F[(y+1)^3]=y. $
于是，$Y=F(X)$ 的分布函数为
$ G(y)=cases(0 & y<=0,y & 0<y<1,1 & y>=1). $
]


]

#ezexam.question(label: n => [十二、])[
（本题满分13分）设随机变量 $X$ 与 $Y$ 独立，其中 $X$ 的概率分布为
$ X tilde mat(1,2;0.3,0.7), $
而 $Y$ 的概率密度为 $f(y)$，求随机变量 $U=X+Y$ 的概率密度 $g(u)$.
#ezexam.solution(show-number: false)[
解 设 $F(y)$ 是 $Y$ 的分布函数，则由全概率公式，知 $U=X+Y$ 的分布函数为
$ G(u)&=P{X+Y<=u} \
&=0.3P{X+Y<=u | X=1}+0.7P{X+Y<=u | X=2} \
&=0.3P{Y<=u-1 | X=1}+0.7P{Y<=u-2 | X=2}. $
由于 $X$ 和 $Y$ 独立，可见
$ G(u)&=0.3P{Y<=u-1}+0.7P{Y<=u-2} \
&=0.3F(u-1)+0.7F(u-2). $
由此，得 $U$ 的概率密度
$ g(u)&=G'(u)=0.3F'(u-1)+0.7F'(u-2) \
&=0.3f(u-1)+0.7f(u-2). $
]

]
