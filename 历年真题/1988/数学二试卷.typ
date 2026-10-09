#import "../template.typ": exam
#show: exam.with(year: 1988, subject: "二", title: "1988年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)

= 一、填空题（本题共5小题，每小题3分，满分15分. 把答案填在题中横线上.）

#ezexam.question(label: n => [（1）])[
设 $f(x)=cases(2x+a & x<=0,e^x(sin x+cos x) & x>0)$ 在 $(-infinity,+infinity)$ 内连续，则 $a=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [（2）])[
设 $f(t)=lim_(x->infinity)t(1+1/x)^(2t x)$，则 $f'(t)=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [（3）])[
$lim_(x->0^+)(1/sqrt(x))^(tan x)=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [（4）])[
$integral_0^4 e^(sqrt(x))dif x=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [（5）])[
设 $f(x)$ 连续且 $integral_0^(x^3-1)f(t)dif t=x$，则 $f(7)=$ #fillin(len: 4em)[].
]

= 二、选择题（本题共5小题，每小题4分，满分20分. 每小题给出的四个选项中，只有一项符合题目要求，把所选项前的字母填在题后的括号内.）

#ezexam.question(label: n => [（1）])[
$f(x)=1/3 x^3+1/2 x^2+6x+1$ 的图形在点 $(0,1)$ 的切线与 $x$ 轴交点的坐标是（　）.
#choices([$(-1/6,0)$],[$(-1,0)$],[$(1/6,0)$],[$(1,0)$])
]

#ezexam.question(label: n => [（2）])[
若 $f(x)$ 与 $g(x)$ 在 $(-infinity,+infinity)$ 上皆可导，且 $f(x)<g(x)$，则必有（　）.
#choices([$f(-x)>g(-x)$],[$f'(x)<g'(x)$],[$lim_(x->x_0)f(x)<lim_(x->x_0)g(x)$],[$integral_0^x f(t)dif t>integral_0^x g(t)dif t$])
]

#ezexam.question(label: n => [（3）])[
设 $f(x)$ 可导且 $f'(x_0)=1/2$，则 $Delta x->0$ 时，$f(x)$ 在 $x_0$ 处的微分 $dif y$ 是（　）.
#choices([与 $Delta x$ 等价的无穷小.],[与 $Delta x$ 同阶的无穷小.],[与 $Delta x$ 低阶的无穷小.],[比 $Delta x$ 高阶的无穷小.])
]

#ezexam.question(label: n => [（4）])[
由曲线 $y=sin^(3/2)x (0<=x<=pi)$ 与 $x$ 轴围成的平面图形绕 $x$ 轴旋转而成的旋转体体积为（　）.
#choices([$4/3$],[$4/3 pi$],[$2/3 pi^2$],[$2/3 pi$])
]

#ezexam.question(label: n => [（5）])[
设 $y=f(x)$ 是方程 $y''-2y'+4y=0$ 的一个解且 $f(x_0)>0,f'(x_0)=0$，则函数 $f(x)$ 在点 $x_0$ 处（　）.
#choices([取得极大值.],[取得极小值.],[某邻域内单调增加.],[某邻域内单调减少.])
]

#ezexam.question(label: n => [三、])[
（本题满分5分）

设 $f(x)=e^(x^2),f(phi(x))=1-x$ 且 $phi(x)>=0$，求 $phi(x)$ 及其定义域.
]

#ezexam.question(label: n => [四、])[
（本题满分5分）

设 $y=1+x e^(x^2)$，求 $y'|_(x=0),y''|_(x=0)$.
]

#ezexam.question(label: n => [五、])[
（本题满分8分）

将长为 $a$ 的一段铁丝截成两段，用一段围成正方形，另一段围成圆，为使正方形与圆的面积之和最小，问两段铁丝的长为多少？
]

#ezexam.question(label: n => [六、])[
（本题满分7分）

设 $x>=-1$，求 $integral_(-1)^x(1-abs(t))dif t$.
]

#ezexam.question(label: n => [七、])[
（本题满分12分）

作函数 $y=6/(x^2-2x+4)$ 的图形，并填写下表.
#table(columns: (1fr, 1fr), stroke: 0.4pt, [单调增加区间], [], [单调减少区间], [], [极值点], [], [极值], [], [凹（∪）区间], [], [凸（∩）区间], [], [拐点], [], [渐近线], [])
]

#ezexam.question(label: n => [八、])[
（本题满分8分）

设 $f(x)$ 在 $(-infinity,+infinity)$ 内连续可导，且 $m<=f(x)<=M,a>0$.

（1）求 $lim_(a->0^+)1/(4a^2)integral_(-a)^a[f(t+a)-f(t-a)]dif t$；

（2）求证：$abs(1/(2a)integral_(-a)^a f(t)dif t-f(x))<=M-m$.
]

#ezexam.question(label: n => [九、])[
（本题满分5分）

求微分方程 $y'+1/x y=1/(x(x^2+1))$ 的通解.
]

#ezexam.question(label: n => [十、])[
（本题满分10分）

设函数 $y=y(x)$ 满足微分方程 $y''-3y'+2y=2e^x$，其图形在点 $(0,1)$ 处的切线与曲线 $y=x^2-x+1$ 在该点处的切线重合，求函数 $y$ 的解析表达式.
]
