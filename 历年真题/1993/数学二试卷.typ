#import "../template.typ": exam
#show: exam.with(year: 1993, subject: "二", title: "1993年全国工学、经济学硕士研究生入学考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])


= 一、填空题（15分，每小题3分）
#ezexam.counter-question.step()

（1）函数 $F(x)=integral_1^x (2-1/sqrt(t))dif t$（$x>0$）的单调减少区间为 #fillin(len: 4em)[].

（2）由曲线 $cases(3x^2+2y^2=12,z=0)$ 绕 $y$ 轴旋转一周得到的旋转面在点 $(0,sqrt(3),sqrt(2))$ 处的指向外侧的单位法向量为 #fillin(len: 4em)[].

（3）设函数 $f(x)=pi x+x^2$（$-pi<x<pi$）的傅里叶级数展开式为 $a_0/2+sum_(n=1)^infinity (a_n cos n x+b_n sin n x)$，则其中系数 $b_3$ 的值为 #fillin(len: 4em)[].

（4）设数量场 $u=ln sqrt(x^2+y^2+z^2)$，则 $op("div")(op("grad")u)=$ #fillin(len: 4em)[].

（5）设 $n$ 阶矩阵 $A$ 的各行元素之和均为零，且 $A$ 的秩为 $n-1$，则线性方程组 $A X=0$ 的通解为 #fillin(len: 4em)[].

= 二、选择题（15分，每小题3分）
#ezexam.counter-question.step()

（1）设 $f(x)=integral_0^(sin x) sin(t^2)dif t$，$g(x)=x^3+x^4$，则当 $x arrow 0$ 时，$f(x)$ 是 $g(x)$ 的（　）.
#choices[等价无穷小][同阶但非等价的无穷小][高阶无穷小][低阶无穷小]

（2）双纽线 $(x^2+y^2)^2=x^2-y^2$ 所围成的区域面积可用定积分表示为（　）.
#choices[$2integral_0^(pi/4) cos 2theta dif theta$][$4integral_0^(pi/4) cos 2theta dif theta$][$2integral_0^(pi/4) sqrt(cos 2theta)dif theta$][$1/2 integral_0^(pi/4)(cos 2theta)^2 dif theta$]

（3）设有直线 $l_1:(x-1)/1=(y-5)/(-2)=(z+8)/1$ 与 $l_2:cases(x-y=6,2y+z=3)$，则 $l_1$ 与 $l_2$ 的夹角为（　）.
#choices[$pi/6$][$pi/4$][$pi/3$][$pi/2$]

（4）设曲线积分 $integral_l [f(x)-e^x]sin y dif x-f(x)cos y dif y$ 与路径无关，其中 $f(x)$ 具有一阶连续导数，且 $f(0)=0$，则 $f(x)$ 等于（　）.
#choices[$(e^(-x)-e^x)/2$][$(e^x-e^(-x))/2$][$(e^x+e^(-x))/2-1$][$1-(e^x+e^(-x))/2$]

（5）已知 $Q=mat(1,2,3;2,4,t;3,6,9)$，$P$ 为三阶非零矩阵，且满足 $P Q=0$，则（　）.
#choices[$t=6$ 时 $P$ 的秩必为1][$t=6$ 时 $P$ 的秩必为2][$t≠6$ 时 $P$ 的秩必为1][$t≠6$ 时 $P$ 的秩必为2]

#ezexam.question(label: n => [三、])[
（15分，每小题5分）

（1）求 $lim_(x arrow infinity)(sin(2/x)+cos(1/x))^x$.

（2）求 $integral (x e^x)/sqrt(e^x-1)dif x$.

（3）求微分方程 $x^2 y'+x y=y^2$ 满足初始条件 $y|_(x=1)=1$ 的特解.

]

#ezexam.question(label: n => [四、])[
（18分，每小题6分）

（1）设 $z=x^3 f(x y,y/x)$，$f$ 具有连续二阶偏导数，求 $(partial z)/(partial y)$、$(partial^2 z)/(partial y^2)$ 及 $(partial^2 z)/(partial x partial y)$.

（2）计算 $integral.double_Sigma 2x z dif y dif z+y z dif z dif x-z^2 dif x dif y$，其中 $Sigma$ 是由曲面 $z=sqrt(x^2+y^2)$ 与 $z=sqrt(2-x^2-y^2)$ 所围立体的表面外侧.

（3）已知 $bold(upright(R))^3$ 的两个基为
$ alpha_1=(1,1,1)^T, quad alpha_2=(1,0,-1)^T, quad alpha_3=(1,0,1)^T; $
$ beta_1=(1,2,1)^T, quad beta_2=(2,3,4)^T, quad beta_3=(3,4,3)^T, $
求由基 $alpha_1,alpha_2,alpha_3$ 到基 $beta_1,beta_2,beta_3$ 的过渡矩阵.

]

#ezexam.question(label: n => [五、])[
（7分）

求级数 $sum_(n=0)^infinity ((-1)^n (n^2-n+1))/2^n$ 之和.

]

#ezexam.question(label: n => [六、])[
（10分，每小题5分）

（1）设在 $[0,+infinity)$ 上函数 $f(x)$ 有连续导数，且 $f'(x)>=k>0$，$f(0)<0$，证明 $f(x)$ 在 $(0,+infinity)$ 内有且仅有一个零点.

（2）设 $b>a>e$，证明 $a^b>b^a$.

]

#ezexam.question(label: n => [七、])[
（8分）

已知二次型 $f(x_1,x_2,x_3)=2x_1^2+3x_2^2+3x_3^2+2a x_2 x_3$（$a>0$）通过正交变换化成标准形 $f=y_1^2+2y_2^2+5y_3^2$，求参数 $a$ 及所用的正交变换矩阵.

]

#ezexam.question(label: n => [八、])[
（6分）

设 $A$ 是 $n times m$ 矩阵，$B$ 是 $m times n$ 矩阵，其中 $n<m$，$I$ 是 $n$ 阶单位矩阵.若 $A B=I$，证明 $B$ 的列向量组线性无关.

]

#ezexam.question(label: n => [九、])[
（6分）

设物体 $A$ 从点 $(0,1)$ 出发，以速度大小为常数 $v$ 沿 $y$ 轴正向运动.物体 $B$ 从点 $(-1,0)$ 与 $A$ 同时出发，其速度大小为 $2v$，方向始终指向 $A$.试建立物体 $B$ 的运动轨迹所满足的微分方程，并写出初始条件.
]

