#import "../template.typ": exam
#show: exam.with(year: 1989, subject: "二", title: "1989年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)

= 一、填空题（每小题3分，满分21分. 把答案填在题中横线上.）

#ezexam.question(label: n => [（1）])[
$lim_(x->0)x cot(2x)=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [（2）])[
$integral_0^pi t sin t dif t=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [（3）])[
曲线 $y=integral_0^x(t-1)(t-2)dif t$ 在点 $(0,0)$ 处的切线方程是 #fillin(len: 4em)[].
]

#ezexam.question(label: n => [（4）])[
设 $f(x)=x(x+1)(x+2)dots(x+n)$，则 $f'(0)=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [（5）])[
设 $f(x)$ 是连续函数，且 $f(x)=x+2integral_0^1 f(t)dif t$，则 $f(x)=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [（6）])[
设 $f(x)=cases(a+b x^2 & x<=0,(sin(b x))/x & x>0)$ 在 $x=0$ 处连续，则常数 $a$ 与 $b$ 应满足的关系是 #fillin(len: 4em)[].
]

#ezexam.question(label: n => [（7）])[
设 $tan y=x+y$，则 $dif y=$ #fillin(len: 4em)[].
]

= 二、选择题（每小题3分，满分18分. 每小题给出的四个选项中，只有一项符合题目要求，把所选项前的字母填在题后的括号内.）

#ezexam.question(label: n => [（1）])[
当 $x>0$ 时，曲线 $y=x sin(1/x)$（　）.
#choices([有且仅有水平渐近线.],[有且仅有铅直渐近线.],[既有水平渐近线，也有铅直渐近线.],[既无水平渐近线，也无铅直渐近线.])
]

#ezexam.question(label: n => [（2）])[
若 $3a^2-5b<0$，则方程 $x^5+2a x^3+3b x+4c=0$（　）.
#choices([无实根.],[有唯一实根.],[有三个不同实根.],[有五个不同实根.])
]

#ezexam.question(label: n => [（3）])[
由曲线 $y=cos x (-pi/2<=x<=pi/2)$ 与 $x$ 轴所围成的图形，绕 $x$ 轴旋转一周所成的旋转体的体积为（　）.
#choices([$pi/2$],[$pi$],[$pi^2/2$],[$pi^2$])
]

#ezexam.question(label: n => [（4）])[
设两函数 $f(x)$ 及 $g(x)$ 都在 $x=a$ 处取得极大值，则函数 $F(x)=f(x)g(x)$ 在 $x=a$ 处（　）.
#choices([必取极大值.],[必取极小值.],[不可能取极值.],[是否取极值不能确定.])
]

#ezexam.question(label: n => [（5）])[
微分方程 $y''-y=e^x+1$ 的一个特解应具有形式（式中 $a,b$ 为常数）（　）.
#choices([$a e^x+b$],[$a x e^x+b$],[$a e^x+b x$],[$a x e^x+b x$])
]

#ezexam.question(label: n => [（6）])[
设 $f(x)$ 在 $x=a$ 的某个邻域内有定义，则 $f(x)$ 在 $x=a$ 处可导的一个充分条件是（　）.
#choices([$lim_(h->infinity)h[f(a+1/h)-f(a)]$ 存在.],[$lim_(h->0)(f(a+2h)-f(a+h))/h$ 存在.],[$lim_(h->0)(f(a+h)-f(a-h))/(2h)$ 存在.],[$lim_(h->0)(f(a)-f(a-h))/h$ 存在.])
]

= 三、（每小题4分，满分20分.）

#ezexam.question(label: n => [（1）])[
已知 $y=arcsin(e^(-sqrt(x)))$，求 $y'$.
]

#ezexam.question(label: n => [（2）])[
求 $integral (dif x)/(x ln^2 x)$.
]

#ezexam.question(label: n => [（3）])[
求 $lim_(x->0)(2sin x+cos x)^(1/x)$.
]

#ezexam.question(label: n => [（4）])[
已知 $cases(x=ln(1+t^2),y=arctan t)$，求 $(dif y)/(dif x)$ 及 $(dif^2 y)/(dif x^2)$.
]

#ezexam.question(label: n => [（5）])[
已知 $f(2)=1/2,f'(2)=0$ 及 $integral_0^2 f(x)dif x=1$，求 $integral_0^1 x^2 f''(2x)dif x$.
]

#ezexam.question(label: n => [四、])[
（本题满分6分）

求微分方程 $x y'+(1-x)y=e^(4x) (0<x<+infinity)$ 满足 $y(1)=0$ 的解.
]

#ezexam.question(label: n => [五、])[
（本题满分7分）

设 $f(x)=sin x-integral_0^x(x-t)f(t)dif t$，其中 $f$ 为连续函数，求 $f(x)$.
]

#ezexam.question(label: n => [六、])[
（本题满分7分）

证明方程 $ln x=x/e-integral_0^pi sqrt(1-cos(2x))dif x$ 在区间 $(0,+infinity)$ 内有且仅有两个不同实根.
]

#ezexam.question(label: n => [七、])[
（本题满分11分）

对函数 $y=(x+1)/x^2$ 填写下表.
#table(columns: (1fr, 1fr), stroke: 0.4pt, [单调减少区间], [], [单调增加区间], [], [极值点], [], [极值], [], [凹（∪）区间], [], [凸（∩）区间], [], [拐点], [], [渐近线], [])
]

#ezexam.question(label: n => [八、])[
（本题满分10分）

设抛物线 $y=a x^2+b x+c$ 过原点，当 $0<=x<=1$ 时 $y>=0$，又已知该抛物线与 $x$ 轴及直线 $x=1$ 所围成的面积为 $1/3$，试确定 $a,b,c$，使此图形绕 $x$ 轴旋转一周而成的旋转体的体积 $V$ 最小.
]
