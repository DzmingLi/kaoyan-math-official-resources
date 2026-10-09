#import "../template.typ": exam
#show: exam.with(year: 1994, subject: "一", title: "1994年全国工学、经济学硕士研究生入学考试")
#import "@preview/ezexam:0.3.1" as ezexam
#import "@preview/cetz:0.5.2" as cetz
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(true)


= 一、填空题（15分，每小题3分）
#ezexam.counter-question.step()

（1）$lim_(x arrow 0)cot x (1/sin x-1/x)=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
由 $sin x=x-x^3/6+o(x^3)$，得 $1/sin x-1/x∼x/6$，又 $cot x∼1/x$，故极限为 $1/6$.
]

（2）曲面 $z-e^z+2x y=3$ 在点 $(1,2,0)$ 处的切平面方程为 #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
令 $F=z-e^z+2x y-3$，则该点处梯度为 $(4,2,0)$，故切平面为 $2x+y-4=0$.
]

（3）设 $u=e^(-x)sin(x/y)$，则 $(partial^2 u)/(partial x partial y)$ 在点 $(2,1/pi)$ 处的值为 #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$u_y=-x e^(-x)cos(x/y)/y^2$，所以 $u_(x y)=e^(-x)((x-1)cos(x/y)/y^2+x sin(x/y)/y^3)$.代入得 $(pi/e)^2$.
]

（4）设区域 $D$ 为 $x^2+y^2<=R^2$，则 $integral.double_D (x^2/a^2+y^2/b^2)dif x dif y=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
由对称性，$integral.double_D x^2 dif x dif y=integral.double_D y^2 dif x dif y=pi R^4/4$，故答案为 $(pi R^4)/4 (1/a^2+1/b^2)$.
]

（5）已知 $alpha=(1,2,3)$，$beta=(1,1/2,1/3)$.设 $A=alpha^T beta$，其中 $alpha^T$ 为 $alpha$ 的转置，则 $A^n=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
由 $beta alpha^T=3$，得 $A^n=3^(n-1)A=3^(n-1)mat(1,1/2,1/3;2,1,2/3;3,3/2,1)$.
]

= 二、选择题（15分，每小题3分）
#ezexam.counter-question.step()

（1）设 $M=integral_(-pi/2)^(pi/2)(sin x)/(1+x^2)cos^4 x dif x$，$N=integral_(-pi/2)^(pi/2)(sin^3 x+cos^4 x)dif x$，$P=integral_(-pi/2)^(pi/2)(x^2 sin^3 x-cos^4 x)dif x$，则有（　）.
#choices[$N<P<M$][$M<P<N$][$N<M<P$][$P<M<N$]
#ezexam.solution(show-number: false)[
D.利用奇偶性得 $M=0$，$N=integral_(-pi/2)^(pi/2)cos^4 x dif x>0$，$P=-N<0$.
]

（2）二元函数 $f(x,y)$ 在点 $(x_0,y_0)$ 处两个偏导数 $f_x(x_0,y_0)$、$f_y(x_0,y_0)$ 存在，是 $f(x,y)$ 在该点连续的（　）.
#choices[充分条件而非必要条件][必要条件而非充分条件][充分必要条件][既非充分条件又非必要条件]
#ezexam.solution(show-number: false)[
D.函数 $x y/(x^2+y^2)$ 在原点补定义为零后，两偏导数存在却不连续；函数 $sqrt(x^2+y^2)$ 连续，但在原点的两偏导数均不存在.
]

（3）设常数 $lambda>0$，且级数 $sum_(n=1)^infinity a_n^2$ 收敛，则级数 $sum_(n=1)^infinity (-1)^n abs(a_n)/sqrt(n^2+lambda)$（　）.
#choices[发散][条件收敛][绝对收敛][收敛性与 $lambda$ 有关]
#ezexam.solution(show-number: false)[
C.由 $abs(a_n)/sqrt(n^2+lambda)<=1/2(a_n^2+1/(n^2+lambda))$ 及比较判别法，知绝对值级数收敛.
]

（4）设 $lim_(x arrow 0)(a tan x+b(1-cos x))/(c ln(1-2x)+d(1-e^(-x^2)))=2$，其中 $a^2+c^2≠0$，则必有（　）.
#choices[$b=4d$][$b=-4d$][$a=4c$][$a=-4c$]
#ezexam.solution(show-number: false)[
D.若 $c=0$，则 $a≠0$，极限不能为有限非零数.故 $c≠0$，原极限为 $-a/(2c)=2$，即 $a=-4c$.
]

（5）已知向量组 $alpha_1,alpha_2,alpha_3,alpha_4$ 线性无关，则（　）.
#choices[$alpha_1+alpha_2,alpha_2+alpha_3,alpha_3+alpha_4,alpha_4+alpha_1$ 线性无关][$alpha_1-alpha_2,alpha_2-alpha_3,alpha_3-alpha_4,alpha_4-alpha_1$ 线性无关][$alpha_1+alpha_2,alpha_2+alpha_3,alpha_3+alpha_4,alpha_4-alpha_1$ 线性无关][$alpha_1+alpha_2,alpha_2+alpha_3,alpha_3-alpha_4,alpha_4-alpha_1$ 线性无关]
#ezexam.solution(show-number: false)[
C.将各组向量关于原向量组的系数列成矩阵，C 的行列式为 $2$，其余三组的行列式均为零.
]

#ezexam.question(label: n => [三、])[
（15分，每小题5分）

（1）设 $cases(x=cos(t^2),y=t cos(t^2)-integral_1^(t^2)(cos u)/(2sqrt(u))dif u)$，求 $(dif y)/(dif x)$、$(dif^2 y)/(dif x^2)$ 在 $t=sqrt(pi/2)$ 时的值.
#ezexam.solution(show-number: false)[
在所求点附近 $t>0$，故 $x'= -2t sin(t^2)$，$y'=-2t^2 sin(t^2)$.所以 $(dif y)/(dif x)=t$，$(dif^2 y)/(dif x^2)=-1/(2t sin(t^2))$，代入分别得 $sqrt(pi/2)$、$-1/sqrt(2pi)$.
]

（2）将函数 $f(x)=1/4 ln((1+x)/(1-x))+1/2 arctan x-x$ 展开成 $x$ 的幂级数.
#ezexam.solution(show-number: false)[
由 $f'(x)=1/(1-x^4)-1=sum_(n=1)^infinity x^(4n)$，且 $f(0)=0$，逐项积分得
$ f(x)=sum_(n=1)^infinity x^(4n+1)/(4n+1), quad -1<x<1. $
]

（3）求 $integral 1/(sin 2x+2sin x)dif x$.
#ezexam.solution(show-number: false)[
令 $u=tan(x/2)$，则
$ I=1/4 integral (1+u^2)/u dif u=1/8 u^2+1/4 ln abs(u)+C. $
故 $I=1/8 tan^2(x/2)+1/4 ln abs(tan(x/2))+C$.
]

]

#ezexam.question(label: n => [四、])[
（6分）

计算曲面积分 $integral.double_S (x dif y dif z+z^2 dif x dif y)/(x^2+y^2+z^2)$，其中 $S$ 为柱面 $x^2+y^2=R^2$ 及平面 $z=R$、$z=-R$（$R>0$）所围成的封闭曲面的外侧.
#ezexam.solution(show-number: false)[
将 $S$ 分为上底 $S_1$、下底 $S_2$ 和侧面 $S_3$.两底面上第一项为零，第二项因定向相反而抵消；侧面上第二项为零.
#cetz.canvas({
 import cetz.draw: *
 circle((0,1.4),radius:(1,.3))
 circle((0,-1.4),radius:(1,.3))
 line((-1,-1.4),(-1,1.4)); line((1,-1.4),(1,1.4))
 line((0,-1.8),(0,2),mark:(end:"stealth")); content((.2,2),$z$)
 line((0,0),(1.8,0),mark:(end:"stealth")); content((1.9,0),$y$)
 line((0,0),(-1.4,-1.8),mark:(end:"stealth")); content((-1.5,-1.9),$x$)
 content((1.3,1.4),$S_1$); content((1.3,-1.4),$S_2$); content((1.3,.7),$S_3$)
 content((-.2,.15),$O$); content((.2,1.15),$R$); content((.25,-1.2),$-R$)
})
将侧面投影到 $y O z$ 平面，得
$ I=2 integral_(-R)^R sqrt(R^2-y^2)dif y integral_(-R)^R 1/(R^2+z^2)dif z=pi^2 R/2. $
]

]

#ezexam.question(label: n => [五、])[
（9分）

设 $f(x)$ 具有二阶连续导数，$f(0)=0$，$f'(0)=1$，且 $[x y(x+y)-f(x)y]dif x+[f'(x)+x^2 y]dif y=0$ 为一全微分方程，求 $f(x)$ 及此全微分方程的通解.
#ezexam.solution(show-number: false)[
由 $P_y=Q_x$ 得 $x^2+2x y-f(x)=f''(x)+2x y$，即 $f''+f=x^2$.其通解为 $f=C_1 cos x+C_2 sin x+x^2-2$.利用初值得
$ f(x)=2cos x+sin x+x^2-2. $
原方程为 $dif(-2y sin x+y cos x+x^2 y^2/2+2x y)=0$，故通解为
$ -2y sin x+y cos x+x^2 y^2/2+2x y=C. $
]

]

#ezexam.question(label: n => [六、])[
（8分）

设 $f(x)$ 在点 $x=0$ 的某一邻域内具有二阶连续导数，且 $lim_(x arrow 0)f(x)/x=0$，证明级数 $sum_(n=1)^infinity f(1/n)$ 绝对收敛.
#ezexam.solution(show-number: false)[
由条件得 $f(0)=f'(0)=0$.泰勒公式给出 $f(x)=1/2 f''(theta x)x^2$，$0<theta<1$.在原点附近取闭区间，由连续性存在 $M>0$ 使 $abs(f'')<=M$.于是充分大的 $n$ 有 $abs(f(1/n))<=M/(2n^2)$.由 $sum 1/n^2$ 收敛及比较判别法即得结论.
]

]

#ezexam.question(label: n => [七、])[
（6分）

已知点 $A$ 与 $B$ 的直角坐标分别为 $(1,0,0)$ 和 $(0,1,1)$，线段 $A B$ 绕 $z$ 轴旋转一周所成的旋转曲面为 $S$.求由 $S$ 及两平面 $z=0$、$z=1$ 所围成的立体体积.
#ezexam.solution(show-number: false)[
直线 $A B$ 可写为 $x=1-z$，$y=z$.在高度 $z$ 处的截面半径为 $r(z)=sqrt((1-z)^2+z^2)$.
#cetz.canvas({
 import cetz.draw: *
 circle((0,0),radius:(1,.3)); circle((0,2),radius:(1,.3))
 bezier((-1,0),(-1,2),(-.5,.7),(-.5,1.3)); bezier((1,0),(1,2),(.5,.7),(.5,1.3))
 line((0,-.4),(0,2.7),mark:(end:"stealth")); content((.2,2.7),$z$)
 line((0,0),(1.7,0),mark:(end:"stealth")); content((1.8,0),$y$)
 line((0,0),(-1.2,-.9),mark:(end:"stealth")); content((-1.3,-1),$x$)
 line((-.7,-.21),(.8,2.18)); content((-.8,-.45),$A$); content((1,2.4),$B$)
 circle((0,1),radius:(.71,.22)); content((.25,1),$Q$); content((.2,-.2),$O$)
})
因此 $V=pi integral_0^1 (1-2z+2z^2)dif z=2pi/3$.
]

]

#ezexam.question(label: n => [八、])[
（8分）

设四元线性齐次方程组（Ⅰ）为 $cases(x_1+x_2=0,x_2-x_4=0)$，又已知线性齐次方程组（Ⅱ）的通解为 $k_1(0,1,1,0)+k_2(-1,2,2,1)$.

（1）求线性方程组（Ⅰ）的基础解系；

（2）问方程组（Ⅰ）和（Ⅱ）是否有非零公共解？若有，求出所有非零公共解；若没有，说明理由.
#ezexam.solution(show-number: false)[
（1）由 $x_1=-x_2$、$x_4=x_2$，基础解系可取 $(0,0,1,0)$、$(-1,1,0,1)$.

（2）将（Ⅱ）的通解代入（Ⅰ），两式均给出 $k_1+k_2=0$.所以所有非零公共解为 $k(-1,1,1,1)$，其中 $k≠0$.
]

]

#ezexam.question(label: n => [九、])[
（6分）

设 $A$ 为 $n$ 阶非零方阵，$A^*$ 是 $A$ 的伴随矩阵，$A^T$ 是 $A$ 的转置矩阵.当 $A^*=A^T$ 时，证明 $det A≠0$.
#ezexam.solution(show-number: false)[
由 $A A^*=det(A)I$ 得 $A A^T=det(A)I$.若 $det A=0$，则 $A A^T=0$，其各对角元为 $A$ 的相应行元素的平方和，因此各行均为零，矛盾于 $A≠0$.故 $det A≠0$.
]

]

= 十、填空题（6分，每小题3分）
#ezexam.counter-question.step()

（1）已知 $A,B$ 两个事件满足条件 $P(A B)=P(overline(A) overline(B))$，且 $P(A)=p$，则 $P(B)=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
由 $P(overline(A) overline(B))=1-P(A)-P(B)+P(A B)$，得 $P(B)=1-p$.
]

（2）设相互独立的两个随机变量 $X,Y$ 具有同一分布律，且 $X$ 的分布律为
#table(columns:3,[$X$],[0],[1],[$p$],[$1/2$],[$1/2$])
则随机变量 $Z=max{X,Y}$ 的分布律为 #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
由独立性，$P(Z=0)=P(X=0,Y=0)=1/4$，$P(Z=1)=3/4$.
#table(columns:3,[$Z$],[0],[1],[$p$],[$1/4$],[$3/4$])
]

#ezexam.question(label: n => [十一、])[
（6分）

已知随机变量 $(X,Y)$ 服从二维正态分布，且 $X$ 和 $Y$ 分别服从正态分布 $N(1,3^2)$ 和 $N(0,4^2)$，$X$ 与 $Y$ 的相关系数 $rho_(X Y)=-1/2$.设 $Z=X/3+Y/2$.

（1）求 $Z$ 的数学期望 $E Z$ 和方差 $D Z$；

（2）求 $X$ 与 $Z$ 的相关系数 $rho_(X Z)$；

（3）问 $X$ 与 $Z$ 是否相互独立？为什么？
#ezexam.solution(show-number: false)[
（1）$E Z=1/3$.$op("Cov")(X,Y)=-6$，故 $D Z=9/9+16/4+2(-6)/6=3$.

（2）$op("Cov")(X,Z)=9/3-6/2=0$，故 $rho_(X Z)=0$.

（3）$(X,Z)$ 仍为二维正态随机变量，不相关即独立，故 $X$ 与 $Z$ 相互独立.
]

]

