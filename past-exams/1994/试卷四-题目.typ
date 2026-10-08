#import "../template.typ": exam
#show: exam.with(year: 1994, subject: "四", title: "1994年全国工学、经济学硕士研究生入学考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])


= 一、填空题（15分，每小题3分）
#ezexam.counter-question.step()

（1）$integral_(-2)^2 (x+abs(x))/(2+x^2)dif x=$ #fillin(len: 4em)[].

（2）已知 $f'(x_0)=-1$，则 $lim_(x arrow 0)x/(f(x_0-2x)-f(x_0-x))=$ #fillin(len: 4em)[].

（3）设方程 $e^(x y)+y^2=cos x$ 确定 $y$ 为 $x$ 的函数，则 $(dif y)/(dif x)=$ #fillin(len: 4em)[].

（4）设 $A=mat(0,a_1,0,dots,0;0,0,a_2,dots,0;dots,dots,dots,dots,dots;0,0,0,dots,a_(n-1);a_n,0,0,dots,0)$，其中 $a_i≠0$，$i=1,2,dots,n$，则 $A^(-1)=$ #fillin(len: 4em)[].

（5）设随机变量 $X$ 的概率密度为 $f(x)=cases(2x & quad 0<x<1,0 & quad "其他")$，以 $Y$ 表示对 $X$ 的三次独立重复观察中事件 ${X<=1/2}$ 出现的次数，则 $P(Y=2)=$ #fillin(len: 4em)[].

= 二、选择题（15分，每小题3分）
#ezexam.counter-question.step()

（1）曲线 $y=e^(1/x^2)arctan((x^2+x-1)/((x+1)(x-2)))$ 的渐近线有（　）.
#choices[1条][2条][3条][4条]

（2）设常数 $lambda>0$，且级数 $sum_(n=1)^infinity a_n^2$ 收敛，则级数 $sum_(n=1)^infinity (-1)^n abs(a_n)/sqrt(n^2+lambda)$（　）.
#choices[发散][条件收敛][绝对收敛][收敛性与 $lambda$ 有关]

（3）设 $A$ 是 $m times n$ 矩阵，$C$ 是 $n$ 阶可逆矩阵，矩阵 $A$ 的秩为 $r$，矩阵 $B=A C$ 的秩为 $r_1$，则（　）.
#choices[$r>r_1$][$r<r_1$][$r=r_1$][$r$ 与 $r_1$ 的关系依 $C$ 而定]

（4）设 $0<P(A)<1$，$0<P(B)<1$，$P(A|B)+P(overline(A)|overline(B))=1$，则（　）.
#choices[事件 $A$ 和 $B$ 互不相容][事件 $A$ 和 $B$ 互相对立][事件 $A$ 和 $B$ 互不独立][事件 $A$ 和 $B$ 相互独立]

（5）设 $X_1,X_2,dots,X_n$ 是来自正态总体 $N(mu,sigma^2)$ 的简单随机样本，$overline(X)$ 是样本均值，记
$ S_1^2=1/(n-1)sum_(i=1)^n (X_i-overline(X))^2, quad S_2^2=1/n sum_(i=1)^n (X_i-overline(X))^2, $
$ S_3^2=1/(n-1)sum_(i=1)^n (X_i-mu)^2, quad S_4^2=1/n sum_(i=1)^n (X_i-mu)^2. $
则服从自由度为 $n-1$ 的 $t$ 分布的随机变量是（　）.
#choices[$t=(overline(X)-mu)/(S_1/sqrt(n-1))$][$t=(overline(X)-mu)/(S_2/sqrt(n-1))$][$t=(overline(X)-mu)/(S_3/sqrt(n))$][$t=(overline(X)-mu)/(S_4/sqrt(n))$]

#ezexam.question(label: n => [三、])[
（6分）

计算二重积分 $integral.double_D (x+y)dif x dif y$，其中 $D={(x,y)|x^2+y^2<=x+y+1}$.

]

#ezexam.question(label: n => [四、])[
（5分）

设函数 $y=y(x)$ 满足条件 $cases(y''+4y'+4y=0,y(0)=2, y'(0)=-4)$，求广义积分 $integral_0^infinity y(x)dif x$.

]

#ezexam.question(label: n => [五、])[
（5分）

已知 $f(x,y)=x^2 arctan(y/x)-y^2 arctan(x/y)$，求 $(partial^2 f)/(partial x partial y)$.

]

#ezexam.question(label: n => [六、])[
（5分）

设函数 $f(x)$ 可导，且 $f(0)=0$，$F(x)=integral_0^x t^(n-1)f(x^n-t^n)dif t$，求 $lim_(x arrow 0)F(x)/x^(2n)$.

]

#ezexam.question(label: n => [七、])[
（8分）

已知曲线 $y=a sqrt(x)$（$a>0$）与曲线 $y=ln sqrt(x)$ 在点 $(x_0,y_0)$ 处有公共切线，求：

（1）常数 $a$ 及切点 $(x_0,y_0)$；

（2）两曲线与 $x$ 轴围成的平面图形绕 $x$ 轴旋转所得旋转体的体积 $V_x$.

]

#ezexam.question(label: n => [八、])[
（6分）

假设 $f(x)$ 在 $[a,infinity)$ 上连续，$f''(x)$ 在 $(a,infinity)$ 内存在且大于零，记 $F(x)=(f(x)-f(a))/(x-a)$（$x>a$）.证明 $F(x)$ 在 $(a,infinity)$ 内单调增加.

]

#ezexam.question(label: n => [九、])[
（11分）

设线性方程组
$ cases(x_1+a_1 x_2+a_1^2 x_3=a_1^3,x_1+a_2 x_2+a_2^2 x_3=a_2^3,x_1+a_3 x_2+a_3^2 x_3=a_3^3,x_1+a_4 x_2+a_4^2 x_3=a_4^3). $
（1）证明，若 $a_1,a_2,a_3,a_4$ 两两不相等，则此线性方程组无解；

（2）设 $a_1=a_3=k$，$a_2=a_4=-k$（$k≠0$），且已知 $beta_1=(-1,1,1)^T$、$beta_2=(1,1,-1)^T$ 是该方程组的两个解，写出此方程组的通解.

]

#ezexam.question(label: n => [十、])[
（8分）

设 $A=mat(0,0,1;x,1,y;1,0,0)$ 有三个线性无关的特征向量，求 $x$ 和 $y$ 应满足的条件.

]

#ezexam.question(label: n => [十一、])[
（8分）

假设随机变量 $X_1,X_2,X_3,X_4$ 相互独立，且同分布，$P(X_i=0)=0.6$、$P(X_i=1)=0.4$（$i=1,2,3,4$）.求行列式 $X=det mat(X_1,X_2;X_3,X_4)$ 的概率分布.

]

#ezexam.question(label: n => [十二、])[
（8分）

假设由自动线加工的某种零件的内径 $X$（毫米）服从正态分布 $N(mu,1)$，内径小于10或大于12的为不合格品，其余为合格品.销售每件合格品获利，每件不合格品亏损.销售利润 $T$（元）与内径 $X$ 的关系为
$ T=cases(-1 & quad X<10,20 & quad 10<=X<=12,-5 & quad X>12). $
问平均内径 $mu$ 取何值时，销售一个零件的平均利润最大？
]

