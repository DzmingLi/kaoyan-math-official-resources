#import "../template.typ": exam
#show: exam.with(year: 1993, subject: "三", title: "1993年全国工学、经济学硕士研究生入学考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])


= 一、填空题（15分，每小题3分）
#ezexam.counter-question.step()

（1）$lim_(x arrow 0^+)x ln x=$ #fillin(len: 4em)[].

（2）函数 $y=y(x)$ 由方程 $sin(x^2+y^2)+e^x-x y^2=0$ 所确定，则 $(dif y)/(dif x)=$ #fillin(len: 4em)[].

（3）设 $F(x)=integral_1^x (2-1/sqrt(t))dif t$（$x>0$），则函数 $F(x)$ 的单调减少区间是 #fillin(len: 4em)[].

（4）$integral (tan x)/sqrt(cos x)dif x=$ #fillin(len: 4em)[].

（5）已知曲线 $y=f(x)$ 过点 $(0,-1/2)$，且其上任一点 $(x,y)$ 处的切线斜率为 $x ln(1+x^2)$，则 $f(x)=$ #fillin(len: 4em)[].

= 二、选择题（15分，每小题3分）
#ezexam.counter-question.step()

（1）当 $x arrow 0$ 时，变量 $1/x^2 sin(1/x)$ 是（　）.
#choices[无穷小][无穷大][有界的，但不是无穷小量][无界的，但不是无穷大]

（2）设 $f(x)=cases(abs(x^2-1)/(x-1) & x≠1, 2 & x=1)$，则在点 $x=1$ 处函数 $f(x)$（　）.
#choices[不连续][连续，但不可导][可导，但导数不连续][可导，且导数连续]

（3）已知 $f(x)=cases(x^2 & 0<=x<1, 1 & 1<=x<=2)$，设 $F(x)=integral_1^x f(t)dif t$（$0<=x<=2$），则 $F(x)$ 为（　）.
#choices[$cases(x^3/3 & 0<=x<1, x & 1<=x<=2)$][$cases(x^3/3-1/3 & 0<=x<1, x & 1<=x<=2)$][$cases(x^3/3 & 0<=x<1, x-1 & 1<=x<=2)$][$cases(x^3/3-1/3 & 0<=x<1, x-1 & 1<=x<=2)$]

（4）设常数 $k>0$，函数 $f(x)=ln x-x/e+k$ 在 $(0,+infinity)$ 内零点个数为（　）.
#choices[3][2][1][0]

（5）若 $f(x)=-f(-x)$，在 $(0,+infinity)$ 内 $f'(x)>0$、$f''(x)>0$，则 $f(x)$ 在 $(-infinity,0)$ 内（　）.
#choices[$f'(x)<0,f''(x)<0$][$f'(x)<0,f''(x)>0$][$f'(x)>0,f''(x)<0$][$f'(x)>0,f''(x)>0$]

#ezexam.question(label: n => [三、])[
（25分，每小题5分）

（1）设 $y=sin[f(x^2)]$，其中 $f$ 具有二阶导数，求 $(dif^2 y)/(dif x^2)$.

（2）求 $lim_(x arrow -infinity)x(sqrt(x^2+100)+x)$.

（3）求 $integral_0^(pi/4) x/(1+cos 2x)dif x$.

（4）求 $integral_0^(+infinity)x/(1+x)^3 dif x$.

（5）求微分方程 $(x^2-1)dif y+(2x y-cos x)dif x=0$ 满足初始条件 $y|_(x=0)=1$ 的特解.

]

#ezexam.question(label: n => [四、])[
（9分）

设二阶常系数线性微分方程 $y''+alpha y'+beta y=gamma e^x$ 的一个特解为 $y=e^(2x)+(1+x)e^x$，试确定常数 $alpha,beta,gamma$，并求该方程的通解.

]

#ezexam.question(label: n => [五、])[
（9分）

设平面图形 $A$ 由 $x^2+y^2<=2x$ 与 $y>=x$ 所确定，求图形 $A$ 绕直线 $x=2$ 旋转一周所得旋转体的体积.

]

#ezexam.question(label: n => [六、])[
（9分）

作半径为 $r$ 的球的外切正圆锥，问此圆锥的高 $h$ 为何值时，其体积 $V$ 最小，并求出该最小值.

]

#ezexam.question(label: n => [七、])[
（9分）

设 $x>0$，常数 $a>e$，证明 $(a+x)^a<a^(a+x)$.

]

#ezexam.question(label: n => [八、])[
（9分）

设 $f'(x)$ 在 $[0,a]$ 上连续，且 $f(0)=0$，证明：
$ abs(integral_0^a f(x)dif x)<=(M a^2)/2, quad M=max_(0<=x<=a)abs(f'(x)). $
]

