#import "../template.typ": exam
#show: exam.with(year: 1995, subject: "三", title: "1995年全国工学、经济学硕士研究生入学考试")
#import "@preview/ezexam:0.3.1" as ezexam
#import "@preview/cetz:0.5.2" as cetz
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(true)


= 一、填空题（15分，每小题3分）
#ezexam.counter-question.step()

（1）设 $y=cos(x^2)sin^2(1/x)$，则 $y'=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
用乘积和链式法则，得 $y'=-2x sin(x^2)sin^2(1/x)-sin(2/x)cos(x^2)/x^2$.
]

（2）微分方程 $y''+y=-2x$ 的通解为 #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
齐次解为 $C_1 cos x+C_2 sin x$，特解为 $-2x$，故 $y=-2x+C_1 cos x+C_2 sin x$.
]

（3）曲线 $cases(x=1+t^2,y=t^3)$ 在 $t=2$ 处的切线方程为 #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
切点为 $(5,8)$，斜率为 $3t^2/(2t)=3$，故 $3x-y-7=0$.
]

（4）$lim_(n arrow infinity)(1/(n^2+n+1)+2/(n^2+n+2)+dots+n/(n^2+n+n))=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
和式介于 $n(n+1)/(2(n^2+2n))$ 与 $n(n+1)/(2(n^2+n+1))$ 之间，两端均趋于 $1/2$.
]

（5）曲线 $y=x^2 e^(-x^2)$ 的渐近线方程为 #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
函数在实轴上连续，且 $x arrow ±infinity$ 时趋于0，故渐近线为 $y=0$.
]

= 二、选择题（15分，每小题3分）
#ezexam.counter-question.step()

（1）设 $f(x)$ 和 $phi(x)$ 在 $(-infinity,+infinity)$ 内有定义，$f(x)$ 为连续函数，且 $f(x)≠0$，$phi(x)$ 有间断点，则（　）.
#choices[$phi(f(x))$ 必有间断点][$(phi(x))^2$ 必有间断点][$f(phi(x))$ 必有间断点][$phi(x)/f(x)$ 必有间断点]
#ezexam.solution(show-number: false)[
D.若 $phi/f$ 在 $phi$ 的某间断点连续，则乘以连续函数 $f$ 后，$phi$ 也连续，矛盾.
]

（2）曲线 $y=x(x-1)(2-x)$ 与 $x$ 轴所围图形的面积可表示为（　）.
#choices[$-integral_0^2 x(x-1)(2-x)dif x$][$integral_0^1 x(x-1)(2-x)dif x-integral_1^2 x(x-1)(2-x)dif x$][$-integral_0^1 x(x-1)(2-x)dif x+integral_1^2 x(x-1)(2-x)dif x$][$integral_0^2 x(x-1)(2-x)dif x$]
#ezexam.solution(show-number: false)[
C.函数在 $(0,1)$ 为负，在 $(1,2)$ 为正，按绝对值积分即得.
]

（3）设 $f(x)$ 在 $(-infinity,+infinity)$ 内可导，且对任意 $x_1>x_2$ 都有 $f(x_1)>f(x_2)$，则（　）.
#choices[对任意 $x$，$f'(x)>0$][对任意 $x$，$f'(-x)<=0$][函数 $f(-x)$ 单调增加][函数 $-f(-x)$ 单调增加]
#ezexam.solution(show-number: false)[
D.$f$ 严格递增，故 $f(-x)$ 严格递减，取负后严格递增.严格递增函数的导数可以在个别点为零.
]

（4）设函数 $f(x)$ 在 $[0,1]$ 上 $f'''(x)>0$，且 $f''(0)=0$，则下列大小顺序正确的是（　）.
#choices[$f'(1)>f'(0)>f(1)-f(0)$][$f'(1)>f(1)-f(0)>f'(0)$][$f(1)-f(0)>f'(1)>f'(0)$][$f'(1)>f(0)-f(1)>f'(0)$]
#ezexam.solution(show-number: false)[
B.由条件，$f''(x)>0$（$0<x<=1$），所以 $f'$ 严格递增，再用中值定理即可.
]

（5）设 $f(x)$ 可导，$F(x)=f(x)(1+abs(sin x))$.若使 $F(x)$ 在 $x=0$ 处可导，则必有（　）.
#choices[$f(0)=0$][$f'(0)=0$][$f(0)+f'(0)=0$][$f(0)-f'(0)=0$]
#ezexam.solution(show-number: false)[
A.左右导数为 $f'(0)±f(0)$，相等须有 $f(0)=0$.
]

#ezexam.question(label: n => [三、])[
（30分，每小题5分）

（1）求 $lim_(x arrow 0^+)(1-sqrt(cos x))/(x(1-cos sqrt(x)))$.
#ezexam.solution(show-number: false)[
有理化后，利用 $1-cos x∼x^2/2$、$1-cos sqrt(x)∼x/2$，原极限为 $1/2$.
]

（2）设函数 $y=y(x)$ 由方程 $x e^(f(y))=e^y$ 确定，其中 $f$ 具有二阶导数，且 $f'≠1$，求 $(dif^2 y)/(dif x^2)$.
#ezexam.solution(show-number: false)[
取对数得 $ln x+f(y)=y$，所以 $y'=1/(x(1-f'(y)))$.再求导得
$ y''=(f''(y)-(1-f'(y))^2)/(x^2(1-f'(y))^3). $
]

（3）设 $f(x^2-1)=ln(x^2/(x^2-2))$，且 $f(phi(x))=ln x$，求 $integral phi(x)dif x$.
#ezexam.solution(show-number: false)[
换元得 $f(u)=ln((u+1)/(u-1))$.由 $(phi(x)+1)/(phi(x)-1)=x$ 得 $phi(x)=(x+1)/(x-1)$，故 $integral phi(x)dif x=x+2ln abs(x-1)+C$.
]

（4）设 $f(x)=cases(x arctan(1/x^2) & quad x≠0,0 & quad x=0)$，讨论 $f'(x)$ 在 $x=0$ 处的连续性.
#ezexam.solution(show-number: false)[
由定义 $f'(0)=lim_(x arrow 0)arctan(1/x^2)=pi/2$.当 $x≠0$ 时 $f'(x)=arctan(1/x^2)-2x^2/(1+x^4)$，其极限也为 $pi/2$，故连续.
]

（5）求摆线 $cases(x=1-cos t,y=t-sin t)$ 一拱（$0<=t<=2pi$）的弧长.
#ezexam.solution(show-number: false)[
速度模为 $sqrt(sin^2 t+(1-cos t)^2)=2sin(t/2)$，故弧长为 $integral_0^(2pi)2sin(t/2)dif t=8$.
]

（6）设单位质点在水平面内作直线运动，初速度 $v|_(t=0)=v_0$.已知阻力与速度成正比（比例常数为1），问 $t$ 为多少时此质点的速度为 $v_0/3$？并求到此时刻该质点所经过的路程.
#ezexam.solution(show-number: false)[
由 $v'+v=0$、$v(0)=v_0$ 得 $v=v_0 e^(-t)$.故 $t=ln 3$，路程为 $integral_0^(ln 3)v_0 e^(-t)dif t=2v_0/3$.
]

]

#ezexam.question(label: n => [四、])[
（8分）

求函数 $f(x)=integral_0^(x^2)(2-t)e^(-t)dif t$ 的最大值和最小值.
#ezexam.solution(show-number: false)[
$f$ 为偶函数，且 $f'(x)=2x(2-x^2)e^(-x^2)$.在正半轴上先增后减，$f(0)=0$，$lim_(x arrow infinity)f(x)=1$.因此在 $x=±sqrt(2)$ 处取得最大值 $1+e^(-2)$；在 $x=0$ 处取得最小值0.
]

]

#ezexam.question(label: n => [五、])[
（8分）

设 $y=e^x$ 是微分方程 $x y'+p(x)y=x$ 的一个解，求此微分方程满足条件 $y|_(x=ln 2)=0$ 的特解.
#ezexam.solution(show-number: false)[
代入已知解得 $p(x)=x e^(-x)-x$.齐次通解为 $C e^(x+e^(-x))$，所以原方程通解为 $y=e^x+C e^(x+e^(-x))$.代入初值，$C=-e^(-1/2)$，故 $y=e^x-e^(x+e^(-x)-1/2)$.
]

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
#ezexam.solution(show-number: false)[
向上单位法向量为 $(-y'_0,1)/sqrt(1+(y'_0)^2)$，与图中 $M P$ 同向.将其乘以给定长度，再加上 $M$ 的坐标，得
$ xi=x_0-y'_0(1+(y'_0)^2)/y''_0, quad eta=y_0+(1+(y'_0)^2)/y''_0. $
]

]

#ezexam.question(label: n => [七、])[
（8分）

设 $f(x)=integral_0^x (sin t)/(pi-t)dif t$，计算 $integral_0^pi f(x)dif x$.
#ezexam.solution(show-number: false)[
交换积分次序，得
$ integral_0^pi dif x integral_0^x (sin t)/(pi-t)dif t=integral_0^pi (sin t)/(pi-t)(pi-t)dif t=2. $
]

]

#ezexam.question(label: n => [八、])[
（8分）

设 $lim_(x arrow 0)f(x)/x=1$，且 $f''(x)>0$，证明 $f(x)>=x$.
#ezexam.solution(show-number: false)[
由条件得 $f(0)=0$、$f'(0)=1$.泰勒公式给出 $f(x)=x+x^2 (f''(xi))/2$，其中 $xi$ 在0与 $x$ 之间.因 $f''(xi)>0$，故 $f(x)>=x$，等号仅在 $x=0$ 时成立.
]

]

