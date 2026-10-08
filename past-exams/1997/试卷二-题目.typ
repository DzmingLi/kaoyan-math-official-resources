#import "../template.typ": exam
#show: exam.with(year: 1997, subject: "二", title: "1997年全国工学、经济学硕士研究生入学考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])


= 一、填空题（15分，每小题3分）
#ezexam.counter-question.step()

（1）已知 $f(x)=cases((cos x)^(x^(-2)) & quad x≠0,a & quad x=0)$ 在 $x=0$ 处连续，则 $a=$ #fillin(len: 4em)[].

（2）设 $y=ln sqrt((1-x)/(1+x^2))$，则 $y''|_(x=0)=$ #fillin(len: 4em)[].

（3）$integral (dif x)/sqrt(x(4-x))=$ #fillin(len: 4em)[].

（4）$integral_0^infinity (dif x)/(x^2+4x+8)=$ #fillin(len: 4em)[].

（5）已知向量组 $alpha_1=(1,2,-1,1)$、$alpha_2=(2,0,t,0)$、$alpha_3=(0,-4,5,-2)$ 的秩为2，则 $t=$ #fillin(len: 4em)[].

= 二、选择题（15分，每小题3分）
#ezexam.counter-question.step()

（1）设 $x arrow 0$ 时，$e^(tan x)-e^x$ 与 $x^n$ 是同阶无穷小，则 $n$ 为（　）.
#choices[1][2][3][4]

（2）设在区间 $[a,b]$ 上 $f(x)>0$、$f'(x)<0$、$f''(x)>0$.令 $S_1=integral_a^b f(x)dif x$、$S_2=f(b)(b-a)$、$S_3=1/2 [f(a)+f(b)](b-a)$，则（　）.
#choices[$S_1<S_2<S_3$][$S_2<S_3<S_1$][$S_3<S_1<S_2$][$S_2<S_1<S_3$]

（3）已知函数 $y=f(x)$ 对一切 $x$ 满足 $x f''(x)+3x[f'(x)]^2=1-e^(-x)$，若 $f'(x_0)=0$（$x_0≠0$），则（　）.
#choices[$f(x_0)$ 是 $f(x)$ 的极大值][$f(x_0)$ 是 $f(x)$ 的极小值][$(x_0,f(x_0))$ 是曲线 $y=f(x)$ 的拐点][$f(x_0)$ 不是 $f(x)$ 的极值，$(x_0,f(x_0))$ 也不是曲线 $y=f(x)$ 的拐点]

（4）设 $F(x)=integral_x^(x+2pi)e^(sin t)sin t dif t$，则 $F(x)$（　）.
#choices[为正常数][为负常数][恒为零][不为常数]

（5）设 $g(x)=cases(2-x & quad x<=0,x+2 & quad x>0)$，$f(x)=cases(x^2 & quad x<0,-x & quad x>=0)$，则 $g[f(x)]=$（　）.
#choices[$cases(2+x^2 & quad x<0,2-x & quad x>=0)$][$cases(2-x^2 & quad x<0,2+x & quad x>=0)$][$cases(2-x^2 & quad x<0,2-x & quad x>=0)$][$cases(2+x^2 & quad x<0,2+x & quad x>=0)$]

#ezexam.question(label: n => [三、])[
（30分，每小题5分）

（1）求极限 $lim_(x arrow -infinity)(sqrt(4x^2+x-1)+x+1)/sqrt(x^2+sin x)$.

（2）设 $y=y(x)$ 由 $cases(x=arctan t,2y-t y^2+e^t=5)$ 所确定，求 $(dif y)/(dif x)$.

（3）计算 $integral e^(2x)(tan x+1)^2 dif x$.

（4）求微分方程 $(3x^2+2x y-y^2)dif x+(x^2-2x y)dif y=0$ 的通解.

（5）已知 $y_1=x e^x+e^(2x)$、$y_2=x e^x+e^(-x)$、$y_3=x e^x+e^(2x)-e^(-x)$ 是某二阶线性非齐次微分方程的三个解.求此微分方程.

（6）已知 $A=mat(1,1,-1;0,1,1;0,0,-1)$，且 $A^2-A B=I$，其中 $I$ 是三阶单位矩阵.求矩阵 $B$.

]

#ezexam.question(label: n => [四、])[
（8分）

$lambda$ 取何值时，方程组
$ cases(2x_1+lambda x_2-x_3=1,lambda x_1-x_2+x_3=2,4x_1+5x_2-5x_3=-1) $
无解、有唯一解或有无穷多解？并在有无穷多解时写出方程组的通解.

]

#ezexam.question(label: n => [五、])[
（8分）

设曲线 $L$ 的极坐标方程为 $r=r(theta)$，$M(r,theta)$ 为 $L$ 上任一点，$M_0(2,0)$ 为 $L$ 上一定点.若极径 $O M_0$、$O M$ 与曲线 $L$ 所围成的曲边扇形面积值等于 $L$ 上 $M_0,M$ 两点间弧长值的一半，求曲线 $L$ 的方程.

]

#ezexam.question(label: n => [六、])[
（8分）

设函数 $f(x)$ 在闭区间 $[0,1]$ 上连续，在开区间 $(0,1)$ 内大于零，并满足 $x f'(x)=f(x)+(3a)/2 x^2$（$a$ 为常数）.又曲线 $y=f(x)$ 与 $x=1$、$y=0$ 所围的图形 $S$ 的面积值为2.求函数 $y=f(x)$，并问 $a$ 为何值时，图形 $S$ 绕 $x$ 轴旋转一周所得旋转体的体积最小.

]

#ezexam.question(label: n => [七、])[
（8分）

已知函数 $f(x)$ 连续，且 $lim_(x arrow 0)f(x)/x=2$.设 $phi(x)=integral_0^1 f(x t)dif t$，求 $phi'(x)$，并讨论 $phi'(x)$ 的连续性.

]

#ezexam.question(label: n => [八、])[
（8分）

就 $k$ 的不同取值情况，确定方程 $x-pi/2 sin x=k$ 在开区间 $(0,pi/2)$ 内根的个数，并证明你的结论.
]

