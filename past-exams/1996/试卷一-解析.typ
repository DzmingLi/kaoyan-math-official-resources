#import "../template.typ": exam
#show: exam.with(year: 1996, subject: "一", title: "1996年全国工学、经济学硕士研究生入学考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(true)


= 一、填空题（15分，每小题3分）
#ezexam.counter-question.step()

（1）设 $lim_(x arrow infinity)((x+2a)/(x-a))^x=8$，则 $a=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
极限为 $e^(3a)$，由 $e^(3a)=8$，得 $a=ln 2$.
]

（2）设一平面经过原点及点 $(6,-3,2)$，且与平面 $4x-y+2z=8$ 垂直，则此平面方程为#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
法向量须同时垂直于 $(6,-3,2)$ 与 $(4,-1,2)$，可取 $(2,2,-3)$，故平面方程为 $2x+2y-3z=0$.
]

（3）微分方程 $y''-2y'+2y=e^x$ 的通解为#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
特征根为 $1±i$，特解可取 $e^x$，故 $y=e^x (C_1 cos x+C_2 sin x+1)$.
]

（4）函数 $u=ln(x+sqrt(y^2+z^2))$ 在 $A(1,0,1)$ 点处沿 $A$ 点指向 $B(3,-2,2)$ 点方向的方向导数为#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
单位方向向量为 $(2,-2,1)/3$，$nabla u(A)=(1/2,0,1/2)$，点乘得方向导数 $1/2$.
]

（5）设 $A$ 是 $4 times 3$ 矩阵，且秩 $r(A)=2$，而 $B=mat(1,0,2;0,2,0;-1,0,3)$，则 $r(A B)=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
因为 $det B=10≠0$，右乘可逆矩阵不改变秩，所以 $r(A B)=2$.
]

= 二、选择题（15分，每小题3分）
#ezexam.counter-question.step()

（1）已知 $((x+a y)dif x+y dif y)/(x+y)^2$ 为某函数的全微分，则 $a$ 等于（　）.
#choices[$-1$][0][1][2]
#ezexam.solution(show-number: false)[
D.令 $P=(x+a y)/(x+y)^2$、$Q=y/(x+y)^2$，由 $P_y=Q_x$ 得 $(a-2)x-a y=-2y$，所以 $a=2$.
]

（2）$f(x)$ 有二阶连续导数，且 $f'(0)=0$，$lim_(x arrow 0)(f''(x))/abs(x)=1$，则（　）.
#choices[$f(0)$ 是 $f(x)$ 的极大值][$f(0)$ 是 $f(x)$ 的极小值][$(0,f(0))$ 是曲线 $y=f(x)$ 的拐点][$f(0)$ 不是极值，$(0,f(0))$ 也不是拐点]
#ezexam.solution(show-number: false)[
B.在0的去心邻域内 $f''(x)>0$，所以 $f'$ 严格增加，且在0处由负变正，因此 $f(0)$ 为极小值.
]

（3）设 $a_n>0$（$n=1,2,dots$），且 $sum_(n=1)^infinity a_n$ 收敛，常数 $lambda in (0,pi/2)$，则级数 $sum_(n=1)^infinity (-1)^n (n tan(lambda/n))a_(2n)$（　）.
#choices[绝对收敛][条件收敛][发散][敛散性与 $lambda$ 有关]
#ezexam.solution(show-number: false)[
A.$n tan(lambda/n) arrow lambda$，故此因子有界，而正项子级数 $sum a_(2n)$ 收敛，由比较判别法得绝对收敛.
]

（4）设 $f(x)$ 有连续的导数，$f(0)=0$，$f'(0)≠0$，$F(x)=integral_0^x (x^2-t^2)f(t)dif t$，且当 $x arrow 0$ 时 $F'(x)$ 与 $x^k$ 是同阶无穷小，则 $k$ 等于（　）.
#choices[1][2][3][4]
#ezexam.solution(show-number: false)[
C.$F'(x)=2x integral_0^x f(t)dif t$，利用 $f(t)=f'(0)t+o(t)$，得 $F'(x)=f'(0)x^3+o(x^3)$，所以 $k=3$.
]

（5）四阶行列式 $det mat(a_1,0,0,b_1;0,a_2,b_2,0;0,b_3,a_3,0;b_4,0,0,a_4)$ 的值等于（　）.
#choices[$a_1 a_2 a_3 a_4-b_1 b_2 b_3 b_4$][$a_1 a_2 a_3 a_4+b_1 b_2 b_3 b_4$][$(a_1 a_2-b_1 b_2)(a_3 a_4-b_3 b_4)$][$(a_2 a_3-b_2 b_3)(a_1 a_4-b_1 b_4)$]
#ezexam.solution(show-number: false)[
D.同时按1、4、2、3重排行列，化为两个二阶块的行列式之积，即所选表达式.
]

#ezexam.question(label: n => [三、])[
（10分，每小题5分）

（1）求心形线 $r=a(1+cos theta)$ 的全长，其中 $a>0$ 是常数.
#ezexam.solution(show-number: false)[
由极坐标弧长公式，$sqrt(r^2+(r')^2)=2a abs(cos(theta/2))$，故全长为
$ L=4a integral_0^pi cos(theta/2)dif theta=8a. $
]

（2）设 $x_1=10$，$x_(n+1)=sqrt(6+x_n)$（$n=1,2,dots$），证明数列 ${x_n}$ 极限存在，并求此极限.
#ezexam.solution(show-number: false)[
由归纳法可得 $x_n>3$.因为 $x_n^2>x_n+6$，所以 $x_(n+1)<x_n$.数列单调递减且有下界，故极限存在.设极限为 $l>=3$，则 $l=sqrt(6+l)$，解得 $l=3$.
]

]

#ezexam.question(label: n => [四、])[
（12分，每小题6分）

（1）计算曲面积分 $integral.double_S (2x+z)dif y dif z+z dif x dif y$，其中 $S$ 为有向曲面 $z=x^2+y^2$（$0<=z<=1$），其法向量与 $z$ 轴正向的夹角为锐角.
#ezexam.solution(show-number: false)[
取向上的面积向量 $(-2x,-2y,1)dif x dif y$，在单位圆盘 $D$ 上积分，得
$ I=integral.double_D [-2x(2x+x^2+y^2)+x^2+y^2]dif x dif y. $
由对称性，奇函数项为零，$integral.double_D x^2 dif x dif y=pi/4$，$integral.double_D (x^2+y^2)dif x dif y=pi/2$，因此 $I=-pi/2$.
]

（2）设变换 $cases(u=x-2y,v=x+a y)$ 可把方程 $6(partial^2 z)/(partial x^2)+(partial^2 z)/(partial x partial y)-(partial^2 z)/(partial y^2)=0$ 化简为 $(partial^2 z)/(partial u partial v)=0$，求常数 $a$.
#ezexam.solution(show-number: false)[
由链式法则，$z_(x x)=z_(u u)+2z_(u v)+z_(v v)$，$z_(x y)=-2z_(u u)+(a-2)z_(u v)+a z_(v v)$，$z_(y y)=4z_(u u)-4a z_(u v)+a^2 z_(v v)$.代入得
$ (10+5a)z_(u v)+(6+a-a^2)z_(v v)=0. $
要求 $6+a-a^2=0$ 且 $10+5a≠0$，故 $a=3$.
]

]

#ezexam.question(label: n => [五、])[
（7分）

求级数 $sum_(n=2)^infinity 1/((n^2-1)2^n)$ 的和.
#ezexam.solution(show-number: false)[
令 $s(x)=sum_(n=2)^infinity x^n/(n^2-1)$，利用 $1/(n^2-1)=1/2 (1/(n-1)-1/(n+1))$ 及 $sum_(n=1)^infinity x^n/n=-ln(1-x)$，得
$ s(x)=(2+x)/4+(1-x^2)/(2x)ln(1-x), quad 0<abs(x)<1. $
因此所求和为 $s(1/2)=5/8-3/4 ln 2$.
]

]

#ezexam.question(label: n => [六、])[
（7分）

设对任意 $x>0$，曲线 $y=f(x)$ 上点 $(x,f(x))$ 处的切线在 $y$ 轴上的截距等于 $1/x integral_0^x f(t)dif t$，求 $f(x)$ 的一般表达式.
#ezexam.solution(show-number: false)[
切线截距为 $f(x)-x f'(x)$，故 $integral_0^x f(t)dif t=x f(x)-x^2 f'(x)$.求导并化简得 $x f''(x)+f'(x)=0$，即 $(x f'(x))'=0$.因此 $f(x)=C_1 ln x+C_2$，$x>0$.代回原式可验证任意 $C_1,C_2$ 均成立.
]

]

#ezexam.question(label: n => [七、])[
（8分）

设 $f(x)$ 在 $[0,1]$ 上具有二阶导数，且满足 $abs(f(x))<=a$、$abs(f''(x))<=b$，其中 $a,b$ 都是非负常数，$c$ 是 $(0,1)$ 内任意一点.证明 $abs(f'(c))<=2a+b/2$.
#ezexam.solution(show-number: false)[
在 $c$ 点作泰勒展开，分别取 $x=0,1$，得
$ f(0)=f(c)-c f'(c)+1/2 f''(xi_1)c^2, $
$ f(1)=f(c)+(1-c)f'(c)+1/2 f''(xi_2)(1-c)^2. $
两式相减后取绝对值，得 $abs(f'(c))<=2a+b/2 (c^2+(1-c)^2)<=2a+b/2$.
]

]

#ezexam.question(label: n => [八、])[
（6分）

设 $A=I-xi xi^T$，其中 $I$ 是 $n$ 阶单位矩阵，$xi$ 是 $n$ 维非零列向量，$xi^T$ 是其转置.证明：

（1）$A^2=A$ 的充要条件是 $xi^T xi=1$；

（2）当 $xi^T xi=1$ 时，$A$ 是不可逆矩阵.
#ezexam.solution(show-number: false)[
（1）$A^2-A=(xi^T xi-1)xi xi^T$.因为 $xi≠0$，故 $xi xi^T≠0$，所以 $A^2=A$ 等价于 $xi^T xi=1$.

（2）此时 $A xi=xi-xi(xi^T xi)=0$，且 $xi≠0$，所以 $A$ 不可逆.
]

]

#ezexam.question(label: n => [九、])[
（8分）

已知二次型 $f(x_1,x_2,x_3)=5x_1^2+5x_2^2+c x_3^2-2x_1 x_2+6x_1 x_3-6x_2 x_3$ 的秩为2.

（1）求参数 $c$ 及此二次型对应矩阵的特征值；

（2）指出方程 $f(x_1,x_2,x_3)=1$ 表示何种二次曲面.
#ezexam.solution(show-number: false)[
（1）矩阵为 $A=mat(5,-1,3;-1,5,-3;3,-3,c)$.由 $det A=24(c-3)=0$，得 $c=3$，此时秩确为2.特征多项式为 $lambda(lambda-4)(lambda-9)$，所以特征值为0、4、9.

（2）经正交变换，方程成为 $4y_2^2+9y_3^2=1$，表示椭圆柱面.
]

]

= 十、填空题（6分，每小题3分）
#ezexam.counter-question.step()

（1）工厂 $A,B$ 的产品次品率分别为1%和2%，现从由 $A,B$ 的产品分别占60%和40%的一批产品中随机抽取一件，发现是次品，则该次品属 $A$ 生产的概率是#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
由贝叶斯公式，所求概率为 $(0.6 times 0.01)/(0.6 times 0.01+0.4 times 0.02)=3/7$.
]

（2）设 $xi,eta$ 相互独立，且均服从正态分布 $N(0,(1/sqrt(2))^2)$，则 $E(abs(xi-eta))=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
差 $Z=xi-eta∼N(0,1)$，所以 $E abs(Z)=2/sqrt(2pi) integral_0^infinity z e^(-z^2/2)dif z=sqrt(2/pi)$.
]

#ezexam.question(label: n => [十一、])[
（6分）

设 $xi,eta$ 相互独立且服从同一分布，已知 $P(xi=i)=1/3$（$i=1,2,3$）.又设 $X=max(xi,eta)$，$Y=min(xi,eta)$.

（1）写出二维随机变量 $(X,Y)$ 的分布律；

#table(columns:4,[$Y ∖ X$],[1],[2],[3],[1],[],[],[],[2],[],[],[],[3],[],[],[])

（2）求 $E(X)$.
#ezexam.solution(show-number: false)[
（1）对角线事件概率为 $1/9$，$y<x$ 时由两个等可能的有序对组成，概率为 $2/9$；$y>x$ 时为0.
#table(columns:4,[$Y ∖ X$],[1],[2],[3],[1],[$1/9$],[$2/9$],[$2/9$],[2],[0],[$1/9$],[$2/9$],[3],[0],[0],[$1/9$])

（2）$X$ 的概率分别为 $1/9,3/9,5/9$，故 $E X=(1+6+15)/9=22/9$.
]

]

