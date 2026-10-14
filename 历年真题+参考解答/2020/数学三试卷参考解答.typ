#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2020, subject: "三", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2020 数学三试卷参考解答

= 一、选择题

#answer-key(
  [1. B.],
  [2. C.],
  [3. A.],
  [4. B.],
  [5. C.],
  [6. D.],
  [7. D.],
  [8. C.],
)

= 二、填空题

#answer("9.")[
$(pi-1)dif x-dif y$.
]

#answer("10.")[
$y=x-1$.
]

#answer("11.")[
$8$.
]

#answer("12.")[
$pi(ln 2-1/3)$.
]

#answer("13.")[
$a^2(a^2-4)$.
]

#answer("14.")[
$8/7$.
]

= 三、解答题

#answer("15.")[
由 $ln(1+x)=x-x^2/2+o(x^2)$，
$ n ln(1+1/n)-1~-1/(2n). $
又
$ (1+1/n)^n-e=e[e^(n ln(1+1/n)-1)-1]~e[n ln(1+1/n)-1]~-e/(2n). $
因此 $a=1,b=-e/2$.
]

#answer("16.")[
由 $f_x=3x^2-y$、$f_y=24y^2-x$，解得驻点 $(0,0)$ 和 $(1/6,1/12)$. 记 $A=f_(x x)=6x,B=f_(x y)=-1,C=f_(y y)=48y$. 在 $(0,0)$ 处 $A C-B^2=-1<0$，不是极值点. 在 $(1/6,1/12)$ 处 $A C-B^2=3>0$ 且 $A>0$，故为极小值点，极小值为 $-1/216$.
]

#answer("17.")[
（1）特征方程 $r^2+2r+5=0$，通解为 $y=e^(-x)(C_1 cos 2x+C_2 sin 2x)$. 由初值条件得 $C_1=1,C_2=0$，故 $f(x)=e^(-x)cos 2x$.

（2）两次分部积分得
$ a_n=integral_(n pi)^infinity e^(-x)cos 2x dif x=e^(-n pi)-4a_n. $
故 $a_n=e^(-n pi)/5$，从而
$ sum_(n=1)^infinity a_n=e^(-pi)/(5(1-e^(-pi)))=1/(5(e^pi-1)). $
]

#answer("18.")[
令 $a=integral.double_D f(x,y)dif x dif y$. 因 $integral.double_D x dif x dif y=0$，
$ a=integral.double_D y sqrt(1-x^2)dif x dif y=integral_0^1(1-x^2)^(3/2)dif x
=integral_0^(pi/2)cos^4 t dif t=3pi/16. $
故 $f(x,y)=y sqrt(1-x^2)+3pi x/16$. 再利用关于 $y$ 轴的对称性，
$ integral.double_D x f(x,y)dif x dif y=3pi/16 integral_0^pi dif theta integral_0^1 r^3 cos^2 theta dif r=3pi^2/128. $
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
（1）所有可能取值为 $(0,0),(0,1),(1,1)$. 由区域面积之比，概率分别为 $1/4,1/2,1/4$，而 $(1,0)$ 的概率为0. 分布表为
#table(columns:3,[$Z_1 backslash Z_2$],[0],[1],[0],[$1/4$],[$1/2$],[1],[0],[$1/4$])

（2）$E Z_1=1/4,D Z_1=3/16,E Z_2=3/4,D Z_2=3/16,E(Z_1 Z_2)=1/4$. 因而协方差为 $1/16$，相关系数为
$ rho=(1/16)/(sqrt(3/16)sqrt(3/16))=1/3. $
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

