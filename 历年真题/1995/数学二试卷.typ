#import "../template.typ": exam
#show: exam.with(year: 1995, subject: "二", title: "1995年全国工学、经济学硕士研究生入学考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])


= 一、填空题（15分，每小题3分）
#ezexam.counter-question.step()

（1）$lim_(x arrow 0)(1+3x)^(2/sin x)=$ #fillin(len: 4em)[].

（2）$(dif)/(dif x)integral_(x^2)^0 x cos(t^2)dif t=$ #fillin(len: 4em)[].

（3）设 $(arrow(a) times arrow(b))dot arrow(c)=2$，则 $[(arrow(a)+arrow(b))times(arrow(b)+arrow(c))]dot(arrow(c)+arrow(a))=$ #fillin(len: 4em)[].

（4）幂级数 $sum_(n=1)^infinity n/(2^n+(-3)^n)x^(2n-1)$ 的收敛半径 $R=$ #fillin(len: 4em)[].

（5）设三阶方阵 $A,B$ 满足 $A^(-1)B A=6A+B A$，且 $A=mat(1/3,0,0;0,1/4,0;0,0,1/7)$，则 $B=$ #fillin(len: 4em)[].

= 二、选择题（15分，每小题3分）
#ezexam.counter-question.step()

（1）设有直线 $L:cases(x+3y+2z+1=0,2x-y-10z+3=0)$ 及平面 $pi:4x-2y+z-2=0$，则直线 $L$（　）.
#choices[平行于 $pi$][在 $pi$ 上][垂直于 $pi$][与 $pi$ 斜交]

（2）设在 $[0,1]$ 上 $f''(x)>0$，则下列大小顺序正确的是（　）.
#choices[$f'(1)>f'(0)>f(1)-f(0)$][$f'(1)>f(1)-f(0)>f'(0)$][$f(1)-f(0)>f'(1)>f'(0)$][$f'(1)>f(0)-f(1)>f'(0)$]

（3）设 $f(x)$ 可导，$F(x)=f(x)(1+abs(sin x))$，则 $f(0)=0$ 是 $F(x)$ 在 $x=0$ 处可导的（　）.
#choices[充分必要条件][充分条件但非必要条件][必要条件但非充分条件][既非充分条件又非必要条件]

（4）设 $u_n=(-1)^n ln(1+1/sqrt(n))$，则（　）.
#choices[$sum_(n=1)^infinity u_n$ 与 $sum_(n=1)^infinity u_n^2$ 都收敛][$sum_(n=1)^infinity u_n$ 与 $sum_(n=1)^infinity u_n^2$ 都发散][$sum_(n=1)^infinity u_n$ 收敛而 $sum_(n=1)^infinity u_n^2$ 发散][$sum_(n=1)^infinity u_n$ 发散而 $sum_(n=1)^infinity u_n^2$ 收敛]

（5）设 $A=mat(a_11,a_12,a_13;a_21,a_22,a_23;a_31,a_32,a_33)$，$B=mat(a_21,a_22,a_23;a_11,a_12,a_13;a_31+a_11,a_32+a_12,a_33+a_13)$，$P_1=mat(0,1,0;1,0,0;0,0,1)$，$P_2=mat(1,0,0;0,1,0;1,0,1)$，则必有（　）.
#choices[$A P_1 P_2=B$][$A P_2 P_1=B$][$P_1 P_2 A=B$][$P_2 P_1 A=B$]

#ezexam.question(label: n => [三、])[
（15分，每小题5分）

（1）设 $u=f(x,y,z)$，$phi(x^2,e^y,z)=0$，$y=sin x$，其中 $f,phi$ 都具有一阶连续偏导数，且 $partial phi/partial z≠0$.求 $(dif u)/(dif x)$.

（2）求曲面 $z=x^2/2+y^2$ 平行于平面 $2x+2y-z=0$ 的切平面方程.

（3）计算二重积分 $integral.double_D x^2 y dif x dif y$，其中 $D$ 是由双曲线 $x^2-y^2=1$ 及直线 $y=0$、$y=1$ 所围成的平面区域.

]

#ezexam.question(label: n => [四、])[
（12分，每小题6分）

（1）计算曲面积分 $integral.double_Sigma z dif S$，其中 $Sigma$ 为锥面 $z=sqrt(x^2+y^2)$ 在柱体 $x^2+y^2<=2x$ 内的部分.

（2）将函数 $f(x)=x-1$（$0<=x<=2$）展开成周期为4的余弦级数.

]

#ezexam.question(label: n => [五、])[
（7分）

设曲线 $L$ 位于 $x O y$ 平面的第一象限内，$L$ 上任一点 $M$ 处的切线与 $y$ 轴总相交，交点记为 $A$.已知 $abs(M A)=abs(O A)$，且 $L$ 过点 $(3/2,3/2)$，求 $L$ 的方程.

]

#ezexam.question(label: n => [六、])[
（8分）

设函数 $Q(x,y)$ 在 $x O y$ 平面上具有一阶连续偏导数，曲线积分 $integral_L 2x y dif x+Q(x,y)dif y$ 与路径无关，并且对任意 $t$ 恒有
$ integral_((0,0))^((t,1))2x y dif x+Q(x,y)dif y=integral_((0,0))^((1,t))2x y dif x+Q(x,y)dif y. $
求 $Q(x,y)$.

]

#ezexam.question(label: n => [七、])[
（8分）

假设函数 $f(x)$ 和 $g(x)$ 在 $[a,b]$ 上存在二阶导数，并且 $g''(x)≠0$，$f(a)=f(b)=g(a)=g(b)=0$.试证：

（1）在开区间 $(a,b)$ 内 $g(x)≠0$；

（2）在开区间 $(a,b)$ 内至少存在一点 $xi$，使 $f(xi)/g(xi)=(f''(xi))/g''(xi)$.

]

#ezexam.question(label: n => [八、])[
（14分，每小题7分）

（1）设方程组 $cases(x_1+3x_2+2x_3+x_4=1,x_2+a x_3-a x_4=-1,x_1+2x_2+3x_4=3)$，问 $a$ 为何值时方程组有解？并在有解时求出方程组的通解.

（2）设三阶实对称矩阵 $A$ 的特征值为 $lambda_1=-1$、$lambda_2=lambda_3=1$，对应于 $lambda_1$ 的特征向量为 $xi_1=(0,1,1)^T$，求 $A$.

]

#ezexam.question(label: n => [九、])[
（6分）

设 $A$ 是 $n$ 阶矩阵，满足 $A A^T=I$（$I$ 是 $n$ 阶单位阵，$A^T$ 是 $A$ 的转置矩阵），$det A<0$，求 $det(A+I)$.
]

