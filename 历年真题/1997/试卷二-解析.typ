#import "../template.typ": exam
#show: exam.with(year: 1997, subject: "二", title: "1997年全国工学、经济学硕士研究生入学考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(true)


= 一、填空题（15分，每小题3分）
#ezexam.counter-question.step()

（1）已知 $f(x)=cases((cos x)^(x^(-2)) & quad x≠0,a & quad x=0)$ 在 $x=0$ 处连续，则 $a=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$lim_(x arrow 0)(ln(cos x))/x^2=-1/2$，故 $a=e^(-1/2)$.
]

（2）设 $y=ln sqrt((1-x)/(1+x^2))$，则 $y''|_(x=0)=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
写成 $y=1/2 ln(1-x)-1/2 ln(1+x^2)$，得 $y''=-1/(2(1-x)^2)-(1-x^2)/(1+x^2)^2$，所以 $y''(0)=-3/2$.
]

（3）$integral (dif x)/sqrt(x(4-x))=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
配方得 $x(4-x)=4-(x-2)^2$，故积分为 $arcsin((x-2)/2)+C$.
]

（4）$integral_0^infinity (dif x)/(x^2+4x+8)=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$I=[1/2 arctan((x+2)/2)]_0^infinity=pi/8$.
]

（5）已知向量组 $alpha_1=(1,2,-1,1)$、$alpha_2=(2,0,t,0)$、$alpha_3=(0,-4,5,-2)$ 的秩为2，则 $t=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$alpha_1,alpha_3$ 线性无关，故 $alpha_2$ 是它们的线性组合.比较第一、二分量得 $alpha_2=2alpha_1+alpha_3$，从第三分量得 $t=3$.
]

= 二、选择题（15分，每小题3分）
#ezexam.counter-question.step()

（1）设 $x arrow 0$ 时，$e^(tan x)-e^x$ 与 $x^n$ 是同阶无穷小，则 $n$ 为（　）.
#choices[1][2][3][4]
#ezexam.solution(show-number: false)[
C.$e^(tan x)-e^x=e^x(e^(tan x-x)-1)∼tan x-x∼x^3/3$.
]

（2）设在区间 $[a,b]$ 上 $f(x)>0$、$f'(x)<0$、$f''(x)>0$.令 $S_1=integral_a^b f(x)dif x$、$S_2=f(b)(b-a)$、$S_3=1/2 [f(a)+f(b)](b-a)$，则（　）.
#choices[$S_1<S_2<S_3$][$S_2<S_3<S_1$][$S_3<S_1<S_2$][$S_2<S_1<S_3$]
#ezexam.solution(show-number: false)[
D.由严格递减性知 $S_2<S_1$；由 $f''>0$，曲线位于端点弦的下方，故 $S_1<S_3$.
]

（3）已知函数 $y=f(x)$ 对一切 $x$ 满足 $x f''(x)+3x[f'(x)]^2=1-e^(-x)$，若 $f'(x_0)=0$（$x_0≠0$），则（　）.
#choices[$f(x_0)$ 是 $f(x)$ 的极大值][$f(x_0)$ 是 $f(x)$ 的极小值][$(x_0,f(x_0))$ 是曲线 $y=f(x)$ 的拐点][$f(x_0)$ 不是 $f(x)$ 的极值，$(x_0,f(x_0))$ 也不是曲线 $y=f(x)$ 的拐点]
#ezexam.solution(show-number: false)[
B.代入得 $f''(x_0)=(1-e^(-x_0))/x_0>0$，由二阶导数判别法，$f(x_0)$ 是极小值.
]

（4）设 $F(x)=integral_x^(x+2pi)e^(sin t)sin t dif t$，则 $F(x)$（　）.
#choices[为正常数][为负常数][恒为零][不为常数]
#ezexam.solution(show-number: false)[
A.被积函数以 $2pi$ 为周期，故积分为常数.将后半周期换元，可写成 $integral_0^pi (e^(sin t)-e^(-sin t))sin t dif t>0$.
]

（5）设 $g(x)=cases(2-x & quad x<=0,x+2 & quad x>0)$，$f(x)=cases(x^2 & quad x<0,-x & quad x>=0)$，则 $g[f(x)]=$（　）.
#choices[$cases(2+x^2 & quad x<0,2-x & quad x>=0)$][$cases(2-x^2 & quad x<0,2+x & quad x>=0)$][$cases(2-x^2 & quad x<0,2-x & quad x>=0)$][$cases(2+x^2 & quad x<0,2+x & quad x>=0)$]
#ezexam.solution(show-number: false)[
D.$x<0$ 时 $f(x)=x^2>0$，故 $g(f(x))=x^2+2$；$x>=0$ 时 $f(x)=-x<=0$，故 $g(f(x))=2+x$.
]

#ezexam.question(label: n => [三、])[
（30分，每小题5分）

（1）求极限 $lim_(x arrow -infinity)(sqrt(4x^2+x-1)+x+1)/sqrt(x^2+sin x)$.
#ezexam.solution(show-number: false)[
分子、分母同除以 $-x>0$，得
$ lim_(x arrow -infinity)(sqrt(4+1/x-1/x^2)-1-1/x)/sqrt(1+(sin x)/x^2)=1. $
]

（2）设 $y=y(x)$ 由 $cases(x=arctan t,2y-t y^2+e^t=5)$ 所确定，求 $(dif y)/(dif x)$.
#ezexam.solution(show-number: false)[
对 $t$ 求导，得 $(dif x)/(dif t)=1/(1+t^2)$、$2(1-t y)(dif y)/(dif t)=y^2-e^t$.因此
$ (dif y)/(dif x)=((y^2-e^t)(1+t^2))/(2(1-t y)). $
]

（3）计算 $integral e^(2x)(tan x+1)^2 dif x$.
#ezexam.solution(show-number: false)[
利用 $(tan x+1)^2=sec^2 x+2tan x$，被积函数恰为 $(e^(2x)tan x)'$，故积分为 $e^(2x)tan x+C$.
]

（4）求微分方程 $(3x^2+2x y-y^2)dif x+(x^2-2x y)dif y=0$ 的通解.
#ezexam.solution(show-number: false)[
该式是全微分：$dif(x^3+x^2 y-x y^2)=0$.因此通解为 $x^3+x^2 y-x y^2=C$.
]

（5）已知 $y_1=x e^x+e^(2x)$、$y_2=x e^x+e^(-x)$、$y_3=x e^x+e^(2x)-e^(-x)$ 是某二阶线性非齐次微分方程的三个解.求此微分方程.
#ezexam.solution(show-number: false)[
解的差表明 $e^(2x)$、$e^(-x)$ 是对应齐次方程的两个线性无关解，故左端为 $y''-y'-2y$.$x e^x$ 是一个特解，代入左端得 $(1-2x)e^x$.所以方程为 $y''-y'-2y=(1-2x)e^x$.
]

（6）已知 $A=mat(1,1,-1;0,1,1;0,0,-1)$，且 $A^2-A B=I$，其中 $I$ 是三阶单位矩阵.求矩阵 $B$.
#ezexam.solution(show-number: false)[
$det A=-1≠0$，故 $B=A-A^(-1)$.计算得
$ A^(-1)=mat(1,-1,-2;0,1,1;0,0,-1), quad B=mat(0,2,1;0,0,0;0,0,0). $
]

]

#ezexam.question(label: n => [四、])[
（8分）

$lambda$ 取何值时，方程组
$ cases(2x_1+lambda x_2-x_3=1,lambda x_1-x_2+x_3=2,4x_1+5x_2-5x_3=-1) $
无解、有唯一解或有无穷多解？并在有无穷多解时写出方程组的通解.
#ezexam.solution(show-number: false)[
系数行列式为 $(lambda-1)(5lambda+4)$.

当 $lambda≠1$ 且 $lambda≠-4/5$ 时，有唯一解.

当 $lambda=-4/5$ 时，第二式乘以 $-5$ 后左端等于第三式左端，右端却分别为 $-10$、$-1$，故无解.

当 $lambda=1$ 时，消元得 $x_1=1$、$x_2-x_3=-1$，有无穷多解，通解为
$ (x_1,x_2,x_3)^T=(1,-1,0)^T+k(0,1,1)^T, quad k in bold(upright(R)). $
]

]

#ezexam.question(label: n => [五、])[
（8分）

设曲线 $L$ 的极坐标方程为 $r=r(theta)$，$M(r,theta)$ 为 $L$ 上任一点，$M_0(2,0)$ 为 $L$ 上一定点.若极径 $O M_0$、$O M$ 与曲线 $L$ 所围成的曲边扇形面积值等于 $L$ 上 $M_0,M$ 两点间弧长值的一半，求曲线 $L$ 的方程.
#ezexam.solution(show-number: false)[
由极坐标面积和弧长公式，
$ abs(integral_0^theta r^2 dif theta)=abs(integral_0^theta sqrt(r^2+(r')^2)dif theta). $
求导得 $r^2=sqrt(r^2+(r')^2)$，即 $r'=±r sqrt(r^2-1)$.分离变量积分并代入 $r(0)=2$，得
$ r sin(pi/6±theta)=1. $
因此所求直线为 $x±sqrt(3)y=2$.
]

]

#ezexam.question(label: n => [六、])[
（8分）

设函数 $f(x)$ 在闭区间 $[0,1]$ 上连续，在开区间 $(0,1)$ 内大于零，并满足 $x f'(x)=f(x)+(3a)/2 x^2$（$a$ 为常数）.又曲线 $y=f(x)$ 与 $x=1$、$y=0$ 所围的图形 $S$ 的面积值为2.求函数 $y=f(x)$，并问 $a$ 为何值时，图形 $S$ 绕 $x$ 轴旋转一周所得旋转体的体积最小.
#ezexam.solution(show-number: false)[
由 $(f(x)/x)'=3a/2$ 得 $f(x)=3a x^2/2+C x$，连续性保证 $f(0)=0$.面积条件给出 $2=integral_0^1 f(x)dif x=(a+C)/2$，故
$ f(x)=3a x^2/2+(4-a)x. $
正性条件要求 $-8<=a<=4$.旋转体积
$ V(a)=pi integral_0^1 f(x)^2 dif x=pi(a^2/30+a/3+16/3). $
这是开口向上的二次函数，驻点 $a=-5$ 在允许范围内，故此时体积最小，为 $9pi/2$.
]

]

#ezexam.question(label: n => [七、])[
（8分）

已知函数 $f(x)$ 连续，且 $lim_(x arrow 0)f(x)/x=2$.设 $phi(x)=integral_0^1 f(x t)dif t$，求 $phi'(x)$，并讨论 $phi'(x)$ 的连续性.
#ezexam.solution(show-number: false)[
由题设 $f(0)=phi(0)=0$.当 $x≠0$ 时，$phi(x)=1/x integral_0^x f(u)dif u$，故
$ phi'(x)=cases((x f(x)-integral_0^x f(u)dif u)/x^2 & quad x≠0,1 & quad x=0). $
这里 $phi'(0)=lim_(x arrow 0)(integral_0^x f(u)dif u)/x^2=1$.$x≠0$ 处导函数连续，且 $lim_(x arrow 0)phi'(x)=2-1=1=phi'(0)$，所以 $phi'$ 处处连续.
]

]

#ezexam.question(label: n => [八、])[
（8分）

就 $k$ 的不同取值情况，确定方程 $x-pi/2 sin x=k$ 在开区间 $(0,pi/2)$ 内根的个数，并证明你的结论.
#ezexam.solution(show-number: false)[
令 $F(x)=x-pi/2 sin x$，则 $F'(x)=1-pi/2 cos x$.唯一驻点为 $x_0=arccos(2/pi)$，在其左侧递减，右侧递增.两端点值均为0，最小值为
$ m=arccos(2/pi)-1/2 sqrt(pi^2-4)<0. $
因此 $k<m$ 或 $k>=0$ 时无根；$k=m$ 时有唯一根 $x_0$；$m<k<0$ 时，两段严格单调区间内各有一根，共两个不同根.
]

]

