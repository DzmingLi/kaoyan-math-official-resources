#import "../template.typ": exam
#show: exam.with(year: 1994, subject: "二", title: "1994年全国工学、经济学硕士研究生入学考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])


= 一、填空题（15分，每小题3分）
#ezexam.counter-question.step()

（1）$lim_(x arrow 0)cot x (1/sin x-1/x)=$ #fillin(len: 4em)[].

（2）曲面 $z-e^z+2x y=3$ 在点 $(1,2,0)$ 处的切平面方程为 #fillin(len: 4em)[].

（3）设 $u=e^(-x)sin(x/y)$，则 $(partial^2 u)/(partial x partial y)$ 在点 $(2,1/pi)$ 处的值为 #fillin(len: 4em)[].

（4）设区域 $D$ 为 $x^2+y^2<=R^2$，则 $integral.double_D (x^2/a^2+y^2/b^2)dif x dif y=$ #fillin(len: 4em)[].

（5）已知 $alpha=(1,2,3)$，$beta=(1,1/2,1/3)$.设 $A=alpha^T beta$，其中 $alpha^T$ 为 $alpha$ 的转置，则 $A^n=$ #fillin(len: 4em)[].

= 二、选择题（15分，每小题3分）
#ezexam.counter-question.step()

（1）设 $M=integral_(-pi/2)^(pi/2)(sin x)/(1+x^2)cos^4 x dif x$，$N=integral_(-pi/2)^(pi/2)(sin^3 x+cos^4 x)dif x$，$P=integral_(-pi/2)^(pi/2)(x^2 sin^3 x-cos^4 x)dif x$，则有（　）.
#choices[$N<P<M$][$M<P<N$][$N<M<P$][$P<M<N$]

（2）二元函数 $f(x,y)$ 在点 $(x_0,y_0)$ 处两个偏导数 $f_x(x_0,y_0)$、$f_y(x_0,y_0)$ 存在，是 $f(x,y)$ 在该点连续的（　）.
#choices[充分条件而非必要条件][必要条件而非充分条件][充分必要条件][既非充分条件又非必要条件]

（3）设常数 $lambda>0$，且级数 $sum_(n=1)^infinity a_n^2$ 收敛，则级数 $sum_(n=1)^infinity (-1)^n abs(a_n)/sqrt(n^2+lambda)$（　）.
#choices[发散][条件收敛][绝对收敛][收敛性与 $lambda$ 有关]

（4）设 $lim_(x arrow 0)(a tan x+b(1-cos x))/(c ln(1-2x)+d(1-e^(-x^2)))=2$，其中 $a^2+c^2≠0$，则必有（　）.
#choices[$b=4d$][$b=-4d$][$a=4c$][$a=-4c$]

（5）已知向量组 $alpha_1,alpha_2,alpha_3,alpha_4$ 线性无关，则（　）.
#choices[$alpha_1+alpha_2,alpha_2+alpha_3,alpha_3+alpha_4,alpha_4+alpha_1$ 线性无关][$alpha_1-alpha_2,alpha_2-alpha_3,alpha_3-alpha_4,alpha_4-alpha_1$ 线性无关][$alpha_1+alpha_2,alpha_2+alpha_3,alpha_3+alpha_4,alpha_4-alpha_1$ 线性无关][$alpha_1+alpha_2,alpha_2+alpha_3,alpha_3-alpha_4,alpha_4-alpha_1$ 线性无关]

#ezexam.question(label: n => [三、])[
（15分，每小题5分）

（1）设 $cases(x=cos(t^2),y=t cos(t^2)-integral_1^(t^2)(cos u)/(2sqrt(u))dif u)$，求 $(dif y)/(dif x)$、$(dif^2 y)/(dif x^2)$ 在 $t=sqrt(pi/2)$ 时的值.

（2）将函数 $f(x)=1/4 ln((1+x)/(1-x))+1/2 arctan x-x$ 展开成 $x$ 的幂级数.

（3）求 $integral 1/(sin 2x+2sin x)dif x$.

]

#ezexam.question(label: n => [四、])[
（12分，每小题6分）

（1）在椭圆 $x^2+4y^2=4$ 上求一点，使其到直线 $2x+3y-6=0$ 的距离最短.

（2）计算曲面积分 $integral.double_S (x dif y dif z+z^2 dif x dif y)/(x^2+y^2+z^2)$，其中 $S$ 为柱面 $x^2+y^2=R^2$ 及平面 $z=R$、$z=-R$（$R>0$）所围成的封闭曲面的外侧.

]

#ezexam.question(label: n => [五、])[
（9分）

设 $f(x)$ 具有二阶连续导数，$f(0)=0$，$f'(0)=1$，且 $[x y(x+y)-f(x)y]dif x+[f'(x)+x^2 y]dif y=0$ 为一全微分方程，求 $f(x)$ 及此全微分方程的通解.

]

#ezexam.question(label: n => [六、])[
（8分）

设 $f(x)$ 在点 $x=0$ 的某一邻域内具有二阶连续导数，且 $lim_(x arrow 0)f(x)/x=0$，证明级数 $sum_(n=1)^infinity f(1/n)$ 绝对收敛.

]

#ezexam.question(label: n => [七、])[
（6分）

已知点 $A$ 与 $B$ 的直角坐标分别为 $(1,0,0)$ 和 $(0,1,1)$，线段 $A B$ 绕 $z$ 轴旋转一周所成的旋转曲面为 $S$.求由 $S$ 及两平面 $z=0$、$z=1$ 所围成的立体体积.

]

#ezexam.question(label: n => [八、])[
（14分）

（1）（6分）设 $A$ 是 $n$ 阶方阵，$2,4,dots,2n$ 是 $A$ 的 $n$ 个特征值，$I$ 是 $n$ 阶单位阵，计算行列式 $det(A-3I)$ 的值.

（2）（8分）设四元线性齐次方程组（Ⅰ）为 $cases(x_1+x_2=0,x_2-x_4=0)$，又已知线性齐次方程组（Ⅱ）的通解为 $k_1(0,1,1,0)+k_2(-1,2,2,1)$.

（1）求线性方程组（Ⅰ）的基础解系；

（2）问方程组（Ⅰ）和（Ⅱ）是否有非零公共解？若有，求出所有非零公共解；若没有，说明理由.

]

#ezexam.question(label: n => [九、])[
（6分）

设 $A$ 为 $n$ 阶非零方阵，$A^*$ 是 $A$ 的伴随矩阵，$A^T$ 是 $A$ 的转置矩阵.当 $A^*=A^T$ 时，证明 $det A≠0$.
]

