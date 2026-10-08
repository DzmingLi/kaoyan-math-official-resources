#import "../template.typ": exam
#show: exam.with(year: 1996, subject: "一", title: "1996年全国工学、经济学硕士研究生入学考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])


= 一、填空题（15分，每小题3分）
#ezexam.counter-question.step()

（1）设 $lim_(x arrow infinity)((x+2a)/(x-a))^x=8$，则 $a=$ #fillin(len: 4em)[].

（2）设一平面经过原点及点 $(6,-3,2)$，且与平面 $4x-y+2z=8$ 垂直，则此平面方程为#fillin(len: 4em)[].

（3）微分方程 $y''-2y'+2y=e^x$ 的通解为#fillin(len: 4em)[].

（4）函数 $u=ln(x+sqrt(y^2+z^2))$ 在 $A(1,0,1)$ 点处沿 $A$ 点指向 $B(3,-2,2)$ 点方向的方向导数为#fillin(len: 4em)[].

（5）设 $A$ 是 $4 times 3$ 矩阵，且秩 $r(A)=2$，而 $B=mat(1,0,2;0,2,0;-1,0,3)$，则 $r(A B)=$ #fillin(len: 4em)[].

= 二、选择题（15分，每小题3分）
#ezexam.counter-question.step()

（1）已知 $((x+a y)dif x+y dif y)/(x+y)^2$ 为某函数的全微分，则 $a$ 等于（　）.
#choices[$-1$][0][1][2]

（2）$f(x)$ 有二阶连续导数，且 $f'(0)=0$，$lim_(x arrow 0)(f''(x))/abs(x)=1$，则（　）.
#choices[$f(0)$ 是 $f(x)$ 的极大值][$f(0)$ 是 $f(x)$ 的极小值][$(0,f(0))$ 是曲线 $y=f(x)$ 的拐点][$f(0)$ 不是极值，$(0,f(0))$ 也不是拐点]

（3）设 $a_n>0$（$n=1,2,dots$），且 $sum_(n=1)^infinity a_n$ 收敛，常数 $lambda in (0,pi/2)$，则级数 $sum_(n=1)^infinity (-1)^n (n tan(lambda/n))a_(2n)$（　）.
#choices[绝对收敛][条件收敛][发散][敛散性与 $lambda$ 有关]

（4）设 $f(x)$ 有连续的导数，$f(0)=0$，$f'(0)≠0$，$F(x)=integral_0^x (x^2-t^2)f(t)dif t$，且当 $x arrow 0$ 时 $F'(x)$ 与 $x^k$ 是同阶无穷小，则 $k$ 等于（　）.
#choices[1][2][3][4]

（5）四阶行列式 $det mat(a_1,0,0,b_1;0,a_2,b_2,0;0,b_3,a_3,0;b_4,0,0,a_4)$ 的值等于（　）.
#choices[$a_1 a_2 a_3 a_4-b_1 b_2 b_3 b_4$][$a_1 a_2 a_3 a_4+b_1 b_2 b_3 b_4$][$(a_1 a_2-b_1 b_2)(a_3 a_4-b_3 b_4)$][$(a_2 a_3-b_2 b_3)(a_1 a_4-b_1 b_4)$]

#ezexam.question(label: n => [三、])[
（10分，每小题5分）

（1）求心形线 $r=a(1+cos theta)$ 的全长，其中 $a>0$ 是常数.

（2）设 $x_1=10$，$x_(n+1)=sqrt(6+x_n)$（$n=1,2,dots$），证明数列 ${x_n}$ 极限存在，并求此极限.

]

#ezexam.question(label: n => [四、])[
（12分，每小题6分）

（1）计算曲面积分 $integral.double_S (2x+z)dif y dif z+z dif x dif y$，其中 $S$ 为有向曲面 $z=x^2+y^2$（$0<=z<=1$），其法向量与 $z$ 轴正向的夹角为锐角.

（2）设变换 $cases(u=x-2y,v=x+a y)$ 可把方程 $6(partial^2 z)/(partial x^2)+(partial^2 z)/(partial x partial y)-(partial^2 z)/(partial y^2)=0$ 化简为 $(partial^2 z)/(partial u partial v)=0$，求常数 $a$.

]

#ezexam.question(label: n => [五、])[
（7分）

求级数 $sum_(n=2)^infinity 1/((n^2-1)2^n)$ 的和.

]

#ezexam.question(label: n => [六、])[
（7分）

设对任意 $x>0$，曲线 $y=f(x)$ 上点 $(x,f(x))$ 处的切线在 $y$ 轴上的截距等于 $1/x integral_0^x f(t)dif t$，求 $f(x)$ 的一般表达式.

]

#ezexam.question(label: n => [七、])[
（8分）

设 $f(x)$ 在 $[0,1]$ 上具有二阶导数，且满足 $abs(f(x))<=a$、$abs(f''(x))<=b$，其中 $a,b$ 都是非负常数，$c$ 是 $(0,1)$ 内任意一点.证明 $abs(f'(c))<=2a+b/2$.

]

#ezexam.question(label: n => [八、])[
（6分）

设 $A=I-xi xi^T$，其中 $I$ 是 $n$ 阶单位矩阵，$xi$ 是 $n$ 维非零列向量，$xi^T$ 是其转置.证明：

（1）$A^2=A$ 的充要条件是 $xi^T xi=1$；

（2）当 $xi^T xi=1$ 时，$A$ 是不可逆矩阵.

]

#ezexam.question(label: n => [九、])[
（8分）

已知二次型 $f(x_1,x_2,x_3)=5x_1^2+5x_2^2+c x_3^2-2x_1 x_2+6x_1 x_3-6x_2 x_3$ 的秩为2.

（1）求参数 $c$ 及此二次型对应矩阵的特征值；

（2）指出方程 $f(x_1,x_2,x_3)=1$ 表示何种二次曲面.

]

= 十、填空题（6分，每小题3分）
#ezexam.counter-question.step()

（1）工厂 $A,B$ 的产品次品率分别为1%和2%，现从由 $A,B$ 的产品分别占60%和40%的一批产品中随机抽取一件，发现是次品，则该次品属 $A$ 生产的概率是#fillin(len: 4em)[].

（2）设 $xi,eta$ 相互独立，且均服从正态分布 $N(0,(1/sqrt(2))^2)$，则 $E(abs(xi-eta))=$ #fillin(len: 4em)[].

#ezexam.question(label: n => [十一、])[
（6分）

设 $xi,eta$ 相互独立且服从同一分布，已知 $P(xi=i)=1/3$（$i=1,2,3$）.又设 $X=max(xi,eta)$，$Y=min(xi,eta)$.

（1）写出二维随机变量 $(X,Y)$ 的分布律；

#table(columns:4,[$Y ∖ X$],[1],[2],[3],[1],[],[],[],[2],[],[],[],[3],[],[],[])

（2）求 $E(X)$.
]

