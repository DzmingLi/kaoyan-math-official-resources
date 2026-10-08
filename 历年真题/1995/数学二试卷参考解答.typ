#import "../template.typ": exam
#show: exam.with(year: 1995, subject: "二", title: "1995年全国工学、经济学硕士研究生入学考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(true)


= 一、填空题（15分，每小题3分）
#ezexam.counter-question.step()

（1）$lim_(x arrow 0)(1+3x)^(2/sin x)=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
取对数后极限为 $lim_(x arrow 0)2ln(1+3x)/sin x=6$，故原极限为 $e^6$.
]

（2）$(dif)/(dif x)integral_(x^2)^0 x cos(t^2)dif t=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
用乘积及变上限积分求导法则，得 $integral_(x^2)^0 cos(t^2)dif t-2x^2 cos(x^4)$.
]

（3）设 $(arrow(a) times arrow(b))dot arrow(c)=2$，则 $[(arrow(a)+arrow(b))times(arrow(b)+arrow(c))]dot(arrow(c)+arrow(a))=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
展开混合积后，非零项为 $(arrow(a) times arrow(b))dot arrow(c)$ 与 $(arrow(b) times arrow(c))dot arrow(a)$，两项均为2，故答案为4.
]

（4）幂级数 $sum_(n=1)^infinity n/(2^n+(-3)^n)x^(2n-1)$ 的收敛半径 $R=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
非零项的绝对值比值趋于 $x^2/3$，故在 $abs(x)<sqrt(3)$ 时收敛、$abs(x)>sqrt(3)$ 时发散，$R=sqrt(3)$.
]

（5）设三阶方阵 $A,B$ 满足 $A^(-1)B A=6A+B A$，且 $A=mat(1/3,0,0;0,1/4,0;0,0,1/7)$，则 $B=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
右乘 $A^(-1)$ 后得 $(A^(-1)-I)B=6I$，所以 $B=6(A^(-1)-I)^(-1)=mat(3,0,0;0,2,0;0,0,1)$.
]

= 二、选择题（15分，每小题3分）
#ezexam.counter-question.step()

（1）设有直线 $L:cases(x+3y+2z+1=0,2x-y-10z+3=0)$ 及平面 $pi:4x-2y+z-2=0$，则直线 $L$（　）.
#choices[平行于 $pi$][在 $pi$ 上][垂直于 $pi$][与 $pi$ 斜交]
#ezexam.solution(show-number: false)[
C.$L$ 的方向向量可取 $(1,3,2)times(2,-1,-10)=(-28,14,-7)$，与平面法向量 $(4,-2,1)$ 平行.
]

（2）设在 $[0,1]$ 上 $f''(x)>0$，则下列大小顺序正确的是（　）.
#choices[$f'(1)>f'(0)>f(1)-f(0)$][$f'(1)>f(1)-f(0)>f'(0)$][$f(1)-f(0)>f'(1)>f'(0)$][$f'(1)>f(0)-f(1)>f'(0)$]
#ezexam.solution(show-number: false)[
B.由中值定理，$f(1)-f(0)=f'(xi)$，$0<xi<1$；而 $f'$ 严格递增.
]

（3）设 $f(x)$ 可导，$F(x)=f(x)(1+abs(sin x))$，则 $f(0)=0$ 是 $F(x)$ 在 $x=0$ 处可导的（　）.
#choices[充分必要条件][充分条件但非必要条件][必要条件但非充分条件][既非充分条件又非必要条件]
#ezexam.solution(show-number: false)[
A.$F$ 在0处右、左导数分别为 $f'(0)+f(0)$、$f'(0)-f(0)$，二者相等当且仅当 $f(0)=0$.
]

（4）设 $u_n=(-1)^n ln(1+1/sqrt(n))$，则（　）.
#choices[$sum_(n=1)^infinity u_n$ 与 $sum_(n=1)^infinity u_n^2$ 都收敛][$sum_(n=1)^infinity u_n$ 与 $sum_(n=1)^infinity u_n^2$ 都发散][$sum_(n=1)^infinity u_n$ 收敛而 $sum_(n=1)^infinity u_n^2$ 发散][$sum_(n=1)^infinity u_n$ 发散而 $sum_(n=1)^infinity u_n^2$ 收敛]
#ezexam.solution(show-number: false)[
C.前者由莱布尼茨判别法收敛，后者因 $u_n^2∼1/n$ 而发散.
]

（5）设 $A=mat(a_11,a_12,a_13;a_21,a_22,a_23;a_31,a_32,a_33)$，$B=mat(a_21,a_22,a_23;a_11,a_12,a_13;a_31+a_11,a_32+a_12,a_33+a_13)$，$P_1=mat(0,1,0;1,0,0;0,0,1)$，$P_2=mat(1,0,0;0,1,0;1,0,1)$，则必有（　）.
#choices[$A P_1 P_2=B$][$A P_2 P_1=B$][$P_1 P_2 A=B$][$P_2 P_1 A=B$]
#ezexam.solution(show-number: false)[
C.先左乘 $P_2$，把第一行加到第三行；再左乘 $P_1$，交换第一、二行，即得到 $B$.
]

#ezexam.question(label: n => [三、])[
（15分，每小题5分）

（1）设 $u=f(x,y,z)$，$phi(x^2,e^y,z)=0$，$y=sin x$，其中 $f,phi$ 都具有一阶连续偏导数，且 $partial phi/partial z≠0$.求 $(dif u)/(dif x)$.
#ezexam.solution(show-number: false)[
由隐函数求导，$z'=-(2x phi_1'+e^(sin x)cos x phi_2')/phi_3'$.故
$ (dif u)/(dif x)=f_x+f_y cos x-f_z(2x phi_1'+e^(sin x)cos x phi_2')/phi_3'. $
其中 $phi_i'$ 表示 $phi$ 对第 $i$ 个自变量的偏导数.
]

（2）求曲面 $z=x^2/2+y^2$ 平行于平面 $2x+2y-z=0$ 的切平面方程.
#ezexam.solution(show-number: false)[
切点处法向量 $(x_0,2y_0,-1)$ 与 $(2,2,-1)$ 平行，故切点为 $(2,1,3)$，切平面为 $2x+2y-z-3=0$.
]

（3）计算二重积分 $integral.double_D x^2 y dif x dif y$，其中 $D$ 是由双曲线 $x^2-y^2=1$ 及直线 $y=0$、$y=1$ 所围成的平面区域.
#ezexam.solution(show-number: false)[
先对 $x$ 积分，得
$ I=integral_0^1 dif y integral_(-sqrt(1+y^2))^sqrt(1+y^2)x^2 y dif x=2/3 integral_0^1 y(1+y^2)^(3/2)dif y=2/15(4sqrt(2)-1). $
]

]

#ezexam.question(label: n => [四、])[
（12分，每小题6分）

（1）计算曲面积分 $integral.double_Sigma z dif S$，其中 $Sigma$ 为锥面 $z=sqrt(x^2+y^2)$ 在柱体 $x^2+y^2<=2x$ 内的部分.
#ezexam.solution(show-number: false)[
$dif S=sqrt(2)dif x dif y$，投影区域的极坐标表示为 $-pi/2<=theta<=pi/2$、$0<=r<=2cos theta$.故
$ I=sqrt(2)integral_(-pi/2)^(pi/2)dif theta integral_0^(2cos theta)r^2 dif r=32sqrt(2)/9. $
]

（2）将函数 $f(x)=x-1$（$0<=x<=2$）展开成周期为4的余弦级数.
#ezexam.solution(show-number: false)[
偶延拓后 $a_0=0$，分部积分得 $a_n=integral_0^2 (x-1)cos(n pi x/2)dif x=4((-1)^n-1)/(n^2 pi^2)$.故
$ f(x)=-8/pi^2 sum_(k=1)^infinity (cos((2k-1)pi x/2))/(2k-1)^2, quad x∈[0,2]. $
]

]

#ezexam.question(label: n => [五、])[
（7分）

设曲线 $L$ 位于 $x O y$ 平面的第一象限内，$L$ 上任一点 $M$ 处的切线与 $y$ 轴总相交，交点记为 $A$.已知 $abs(M A)=abs(O A)$，且 $L$ 过点 $(3/2,3/2)$，求 $L$ 的方程.
#ezexam.solution(show-number: false)[
设 $M=(x,y)$，切线与 $y$ 轴交于 $A=(0,y-x y')$.由长度条件平方并化简得 $2y y'-y^2/x=-x$.令 $z=y^2$，则 $z'-z/x=-x$，解得 $z=C x-x^2$.由给定点得 $C=3$，故 $y=sqrt(3x-x^2)$，$0<x<3$.
]

]

#ezexam.question(label: n => [六、])[
（8分）

设函数 $Q(x,y)$ 在 $x O y$ 平面上具有一阶连续偏导数，曲线积分 $integral_L 2x y dif x+Q(x,y)dif y$ 与路径无关，并且对任意 $t$ 恒有
$ integral_((0,0))^((t,1))2x y dif x+Q(x,y)dif y=integral_((0,0))^((1,t))2x y dif x+Q(x,y)dif y. $
求 $Q(x,y)$.
#ezexam.solution(show-number: false)[
路径无关给出 $Q_x=2x$，所以 $Q=x^2+c(y)$.两端积分分别为 $t^2+integral_0^1 c(y)dif y$ 与 $t+integral_0^t c(y)dif y$.对 $t$ 求导得 $2t=1+c(t)$，故 $Q(x,y)=x^2+2y-1$.
]

]

#ezexam.question(label: n => [七、])[
（8分）

假设函数 $f(x)$ 和 $g(x)$ 在 $[a,b]$ 上存在二阶导数，并且 $g''(x)≠0$，$f(a)=f(b)=g(a)=g(b)=0$.试证：

（1）在开区间 $(a,b)$ 内 $g(x)≠0$；

（2）在开区间 $(a,b)$ 内至少存在一点 $xi$，使 $f(xi)/g(xi)=(f''(xi))/g''(xi)$.
#ezexam.solution(show-number: false)[
（1）若内点 $c$ 满足 $g(c)=0$，在 $[a,c]$、$[c,b]$ 各用一次罗尔定理，再对两个导数零点之间用罗尔定理，得某点 $g''=0$，矛盾.

（2）令 $phi=f g'-f'g$，则 $phi(a)=phi(b)=0$.罗尔定理给出内点 $xi$ 使 $phi'(xi)=f(xi)g''(xi)-f''(xi)g(xi)=0$.由两分母非零，即得结论.
]

]

#ezexam.question(label: n => [八、])[
（14分，每小题7分）

（1）设方程组 $cases(x_1+3x_2+2x_3+x_4=1,x_2+a x_3-a x_4=-1,x_1+2x_2+3x_4=3)$，问 $a$ 为何值时方程组有解？并在有解时求出方程组的通解.
#ezexam.solution(show-number: false)[
消元得到 $(a-2)(x_3-x_4)=1$，所以 $a≠2$ 时有解.令 $x_4=k$，回代得
$ X=k(-3,0,1,1)^T+((7a-10)/(a-2),(2-2a)/(a-2),1/(a-2),0)^T, $
其中 $k$ 为任意常数.
]

（2）设三阶实对称矩阵 $A$ 的特征值为 $lambda_1=-1$、$lambda_2=lambda_3=1$，对应于 $lambda_1$ 的特征向量为 $xi_1=(0,1,1)^T$，求 $A$.
#ezexam.solution(show-number: false)[
令 $v=xi_1/sqrt(2)$.实对称矩阵在 $v$ 的正交补上作用为恒等映射，因此 $A=I-2v v^T=mat(1,0,0;0,0,-1;0,-1,0)$.
]

]

#ezexam.question(label: n => [九、])[
（6分）

设 $A$ 是 $n$ 阶矩阵，满足 $A A^T=I$（$I$ 是 $n$ 阶单位阵，$A^T$ 是 $A$ 的转置矩阵），$det A<0$，求 $det(A+I)$.
#ezexam.solution(show-number: false)[
有 $det(A+I)=det(A+A A^T)=det(A)det(I+A^T)=det(A)det(I+A)$.由于 $det A<0$，$1-det A≠0$，故 $det(A+I)=0$.
]

]

