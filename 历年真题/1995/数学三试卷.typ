#import "../template.typ": exam
#show: exam.with(year: 1995, subject: "三", title: "1995年全国工学、经济学硕士研究生入学考试")
#import "@preview/ezexam:0.3.1" as ezexam
#import "@preview/cetz:0.5.2" as cetz
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])


= 一、填空题（15分，每小题3分）
#ezexam.counter-question.step()

（1）设 $y=cos(x^2)sin^2(1/x)$，则 $y'=$ #fillin(len: 4em)[].

（2）微分方程 $y''+y=-2x$ 的通解为 #fillin(len: 4em)[].

（3）曲线 $cases(x=1+t^2,y=t^3)$ 在 $t=2$ 处的切线方程为 #fillin(len: 4em)[].

（4）$lim_(n arrow infinity)(1/(n^2+n+1)+2/(n^2+n+2)+dots+n/(n^2+n+n))=$ #fillin(len: 4em)[].

（5）曲线 $y=x^2 e^(-x^2)$ 的渐近线方程为 #fillin(len: 4em)[].

= 二、选择题（15分，每小题3分）
#ezexam.counter-question.step()

（1）设 $f(x)$ 和 $phi(x)$ 在 $(-infinity,+infinity)$ 内有定义，$f(x)$ 为连续函数，且 $f(x)≠0$，$phi(x)$ 有间断点，则（　）.
#choices[$phi(f(x))$ 必有间断点][$(phi(x))^2$ 必有间断点][$f(phi(x))$ 必有间断点][$phi(x)/f(x)$ 必有间断点]

（2）曲线 $y=x(x-1)(2-x)$ 与 $x$ 轴所围图形的面积可表示为（　）.
#choices[$-integral_0^2 x(x-1)(2-x)dif x$][$integral_0^1 x(x-1)(2-x)dif x-integral_1^2 x(x-1)(2-x)dif x$][$-integral_0^1 x(x-1)(2-x)dif x+integral_1^2 x(x-1)(2-x)dif x$][$integral_0^2 x(x-1)(2-x)dif x$]

（3）设 $f(x)$ 在 $(-infinity,+infinity)$ 内可导，且对任意 $x_1>x_2$ 都有 $f(x_1)>f(x_2)$，则（　）.
#choices[对任意 $x$，$f'(x)>0$][对任意 $x$，$f'(-x)<=0$][函数 $f(-x)$ 单调增加][函数 $-f(-x)$ 单调增加]

（4）设函数 $f(x)$ 在 $[0,1]$ 上 $f'''(x)>0$，且 $f''(0)=0$，则下列大小顺序正确的是（　）.
#choices[$f'(1)>f'(0)>f(1)-f(0)$][$f'(1)>f(1)-f(0)>f'(0)$][$f(1)-f(0)>f'(1)>f'(0)$][$f'(1)>f(0)-f(1)>f'(0)$]

（5）设 $f(x)$ 可导，$F(x)=f(x)(1+abs(sin x))$.若使 $F(x)$ 在 $x=0$ 处可导，则必有（　）.
#choices[$f(0)=0$][$f'(0)=0$][$f(0)+f'(0)=0$][$f(0)-f'(0)=0$]

#ezexam.question(label: n => [三、])[
（30分，每小题5分）

（1）求 $lim_(x arrow 0^+)(1-sqrt(cos x))/(x(1-cos sqrt(x)))$.

（2）设函数 $y=y(x)$ 由方程 $x e^(f(y))=e^y$ 确定，其中 $f$ 具有二阶导数，且 $f'≠1$，求 $(dif^2 y)/(dif x^2)$.

（3）设 $f(x^2-1)=ln(x^2/(x^2-2))$，且 $f(phi(x))=ln x$，求 $integral phi(x)dif x$.

（4）设 $f(x)=cases(x arctan(1/x^2) & quad x≠0,0 & quad x=0)$，讨论 $f'(x)$ 在 $x=0$ 处的连续性.

（5）求摆线 $cases(x=1-cos t,y=t-sin t)$ 一拱（$0<=t<=2pi$）的弧长.

（6）设单位质点在水平面内作直线运动，初速度 $v|_(t=0)=v_0$.已知阻力与速度成正比（比例常数为1），问 $t$ 为多少时此质点的速度为 $v_0/3$？并求到此时刻该质点所经过的路程.

]

#ezexam.question(label: n => [四、])[
（8分）

求函数 $f(x)=integral_0^(x^2)(2-t)e^(-t)dif t$ 的最大值和最小值.

]

#ezexam.question(label: n => [五、])[
（8分）

设 $y=e^x$ 是微分方程 $x y'+p(x)y=x$ 的一个解，求此微分方程满足条件 $y|_(x=ln 2)=0$ 的特解.

]

#ezexam.question(label: n => [六、])[
（8分）

如图，设曲线 $L$ 的方程为 $y=f(x)$，且 $y''>0$.又 $M T$、$M P$ 分别为该曲线在点 $M(x_0,y_0)$ 处的切线和法线.已知线段 $M P$ 的长度为 $(1+(y'_0)^2)^(3/2)/y''_0$（其中 $y'_0=y'(x_0)$，$y''_0=y''(x_0)$），试推导出点 $P(xi,eta)$ 的坐标表达式.
#cetz.canvas({
 import cetz.draw: *
 line((-.2,0),(3.8,0),mark:(end:"stealth")); content((3.9,0),$x$)
 line((0,-.3),(0,3.8),mark:(end:"stealth")); content((.2,3.8),$y$)
 line(..range(0,101).map(i=>{let x=.3+3.1*i/100; (x,.25*calc.pow(x - .5,2)+.5)}))
 line((1,0),(3.5,2.5)); line((.5,3.5),(2.5,1.5))
 circle((2.5,1.5),radius:.04,fill:black)
 circle((.5,3.5),radius:.04,fill:black); content((1.25,3.75),$P(xi,eta)$)
 content((3.6,1.05),$M(x_0,y_0)$); content((3.45,2.9),$L$); content((1,-.2),$T$); content((-.15,-.15),$O$)
})

]

#ezexam.question(label: n => [七、])[
（8分）

设 $f(x)=integral_0^x (sin t)/(pi-t)dif t$，计算 $integral_0^pi f(x)dif x$.

]

#ezexam.question(label: n => [八、])[
（8分）

设 $lim_(x arrow 0)f(x)/x=1$，且 $f''(x)>0$，证明 $f(x)>=x$.
]

