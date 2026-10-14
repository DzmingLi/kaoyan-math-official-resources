#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2020, subject: "一", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2020 数学一试卷参考解答

= 一、选择题

#answer-key(
  [1. D.],
  [2. C.],
  [3. A.],
  [4. A.],
  [5. B.],
  [6. C.],
  [7. D.],
  [8. B.],
)

= 二、填空题

#answer("9.")[
$-1$.
]

#answer("10.")[
$-sqrt(2)$.
]

#answer("11.")[
$a m+n$.
]

#answer("12.")[
$4e$.
]

#answer("13.")[
$a^2(a^2-4)$.
]

#answer("14.")[
$2/pi$.
]

= 三、解答题

#answer("15.")[
由 $f_x=3x^2-y$、$f_y=24y^2-x$，解得驻点 $(0,0)$ 和 $(1/6,1/12)$. 记 $A=f_(x x)=6x,B=f_(x y)=-1,C=f_(y y)=48y$. 在 $(0,0)$ 处 $A C-B^2=-1<0$，不是极值点. 在 $(1/6,1/12)$ 处 $A C-B^2=3>0$ 且 $A>0$，故为极小值点，极小值为 $-1/216$.
]

#answer("16.")[
取 $L_1$ 为 $4x^2+y^2=1$，方向为顺时针. 由两曲线围成的环域内格林公式，被积函数的旋度为0，故
$ I=-integral_(L_1)(4x-y)dif x+(x+y)dif y. $
再对椭圆内部应用格林公式，得
$ I=integral.double_(4x^2+y^2<=1)2dif x dif y=pi. $
]

#answer("17.")[
由递推关系，$a_n!=0$ 且 $lim_(n->infinity)abs(a_(n+1)/a_n)=1$，故收敛半径为1. 当 $abs(x)<1$，记 $S(x)=sum_(n=1)^infinity a_n x^n$，则
$ S'(x)=1+sum_(n=1)^infinity(n+1)a_(n+1)x^n=1+x S'(x)+1/2 S(x). $
即 $S'(x)-S(x)/(2(1-x))=1/(1-x)$，解得 $S(x)=C/sqrt(1-x)-2$. 由 $S(0)=0$ 得 $C=2$，故
$ S(x)=2(1/sqrt(1-x)-1). $
]

#answer("18.")[
下侧的法向量为 $(x,y,-z)$，故
$ I=integral.double_Sigma frac((x^2+y^2-z^2)f(x y)+2x^2+2y^2-z^2,sqrt(2(x^2+y^2)))dif S
=sqrt(2)/2 integral.double_Sigma sqrt(x^2+y^2)dif S. $
投影区域 $D={(x,y) | 1<=x^2+y^2<=4}$，曲面面积因子为 $sqrt(2)$. 因而
$ I=integral.double_D sqrt(x^2+y^2)dif x dif y=integral_0^(2pi)dif theta integral_1^2 r^2 dif r=14pi/3. $
]

#answer("19.")[
（1）$M=0$ 时结论显然成立. $M>0$ 时，设 $abs(f(x_0))=M$. 若 $0<x_0<1$，由中值定理存在 $xi in (0,x_0)$，使 $abs(f'(xi))=M/x_0>M$；若 $1<x_0<2$，在 $[x_0,2]$ 上应用中值定理得 $abs(f'(xi))=M/(2-x_0)>M$；若 $x_0=1$，在 $[0,1]$ 上应用中值定理得 $abs(f'(xi))=M$.

（2）若处处 $abs(f')<=M$，由（1）的证明知 $abs(f(1))=M$. 不妨设 $f(1)=M$. 令 $F(x)=f(x)-M x$，则在 $[0,1]$ 上 $F'(x)<=0$，且 $F(0)=F(1)=0$，故 $F(x)=0$，即 $f(x)=M x$. 因而 $f'(1)=M$. 又1为最大值点，$f'(1)=0$，所以 $M=0$.
]

#answer("20.")[
（1）两二次型矩阵为 $A=mat(1,-2;-2,4)$、$B=mat(a,2;2,b)$. 由 $Q^T A Q=B$，得 $a+b=5,a b-4=0$. 再由 $a>=b$，解得 $a=4,b=1$.

（2）两矩阵的特征值均为0、5. 分别取单位特征向量组成正交矩阵
$ Q_1=1/sqrt(5)mat(2,1;1,-2), quad Q_2=1/sqrt(5)mat(1,2;-2,1). $
有 $Q_1^T A Q_1=Q_2^T B Q_2=op("diag")(0,5)$. 因此所求矩阵可取
$ Q=Q_1 Q_2^T=1/5 mat(4,-3;-3,-4). $
]

#answer("21.")[
（1）若 $P$ 不可逆，则 $bold(alpha),A bold(alpha)$ 线性相关. 由 $bold(alpha)!=bold(0)$，存在 $lambda_0$ 使 $A bold(alpha)=lambda_0 bold(alpha)$，与题设矛盾. 故 $P$ 可逆.

（2）由已知关系，
$ A P=(A bold(alpha),6bold(alpha)-A bold(alpha))=P mat(0,6;1,-1). $
故 $P^(-1)A P=mat(0,6;1,-1)$. 特征多项式为 $(lambda-2)(lambda+3)$，有两个不同特征值，故 $A$ 相似于 $op("diag")(2,-3)$.
]

#answer("22.")[
（1）由全概率公式及独立性，
$ F(x,y)=1/2 P{X_1<=x,X_2<=y}+1/2 P{X_1<=x,X_1<=y}
=1/2 Phi(x)Phi(y)+1/2 Phi(min{x,y}). $
（2）令 $x->+infinity$，得 $F_Y(y)=Phi(y)$，故 $Y$ 服从标准正态分布.
]

#answer("23.")[
（1）$P{T>t}=e^(-t^m/theta^m)$，且
$ P{T>s+t | T>s}=P{T>s+t}/P{T>s}=e^(-((s+t)^m-s^m)/theta^m). $
（2）总体密度为 $f(t;theta)=m t^(m-1)/theta^m e^(-t^m/theta^m)$（$t>0$），其他处为0. 似然函数及其对数为
$ L(theta)=m^n theta^(-n m)product_(i=1)^n t_i^(m-1)e^(-sum_(i=1)^n t_i^m/theta^m), $
$ ln L=n ln m-n m ln theta+sum_(i=1)^n ln t_i^(m-1)-1/theta^m sum_(i=1)^n t_i^m. $
令导数为0，得 $-n m/theta+m/theta^(m+1)sum t_i^m=0$，故
$ hat(theta)=(1/n sum_(i=1)^n t_i^m)^(1/m). $
]

