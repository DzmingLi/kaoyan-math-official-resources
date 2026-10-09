#import "../template.typ": exam
#show: exam.with(year: 1987, subject: "二", title: "1987年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)

= 一、填空题（本题共5小题，每小题3分，满分15分. 把答案填在题中横线上.）

#ezexam.question(label: n => [（1）])[
$lim_(n->infinity)((n-2)/(n+1))^n=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [（2）])[
设 $y=ln(1+a x)$，则 $y'=$ #fillin(len: 4em)[]，$y''=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [（3）])[
曲线 $y=arctan x$ 在横坐标为1的点处的切线方程是 #fillin(len: 4em)[]；法线方程是 #fillin(len: 4em)[].
]

#ezexam.question(label: n => [（4）])[
$integral f'(x)dif x=$ #fillin(len: 4em)[]，$integral_a^b f'(2x)dif x=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [（5）])[
积分中值定理的条件是 #fillin(len: 4em)[]，结论是 #fillin(len: 4em)[].
]

= 二、选择题（本题共4小题，每小题3分，满分12分. 每小题给出的四个选项中，只有一项符合题目要求，把所选项前的字母填在题后的括号内.）

#ezexam.question(label: n => [（1）])[
$f(x)=abs(x sin x)e^(sin x),-infinity<x<+infinity$ 是（　）.
#choices([有界函数],[单调函数],[周期函数],[偶函数])
]

#ezexam.question(label: n => [（2）])[
函数 $f(x)=x sin x$（　）.
#choices([在 $(-infinity,+infinity)$ 内有界.],[当 $x->infinity$ 时为无穷大.],[在 $(-infinity,+infinity)$ 内无界.],[当 $x->infinity$ 时有有限极限.])
]

#ezexam.question(label: n => [（3）])[
设 $f(x)$ 在 $x=a$ 处可导，则 $lim_(x->0)(f(a+x)-f(a-x))/x$ 等于（　）.
#choices([$f'(a)$],[$2f'(a)$],[$0$],[$f'(2a)$])
]

#ezexam.question(label: n => [（4）])[
设 $I=t integral_0^(s/t)f(t x)dif x$，其中 $f(x)$ 连续，$s>0,t>0$，则 $I$ 的值（　）.
#choices([依赖于 $s,t$.],[依赖于 $s,t,x$.],[依赖于 $t,x$，不依赖于 $s$.],[依赖于 $s$，不依赖于 $t$.])
]

#ezexam.question(label: n => [三、])[
（本题满分7分）

设 $cases(x=5(t-sin t),y=5(1-cos t))$，求 $(dif y)/(dif x),(dif^2 y)/(dif x^2)$.
]

#ezexam.question(label: n => [四、])[
（本题满分6分）

求 $lim_(x->0)(1/x-1/(e^x-1))$.
]

#ezexam.question(label: n => [五、])[
（本题满分10分）

（1）设 $f(x)$ 在 $(a,b)$ 内可导，且 $f'(x)>0$，则 $f(x)$ 在 $(a,b)$ 内单调增加.

（2）设 $g(x)$ 在 $x=c$ 处二阶可导，且 $g'(c)=0,g''(c)<0$，则 $g(c)$ 为 $g(x)$ 的一个极大值.
]

#ezexam.question(label: n => [六、])[
（本题满分10分）

求 $integral (dif x)/(a^2 sin^2 x+b^2 cos^2 x)$.（$a,b$ 是不全为零的非负常数.）
]

#ezexam.question(label: n => [七、])[
（本题满分8分）

求 $integral_0^1 x arcsin x dif x$.
]

#ezexam.question(label: n => [八、])[
（本题满分10分）

求过曲线 $y=-x^2+1$ 上的一点，使过该点的切线与这条曲线及 $x,y$ 轴在第一象限围成图形的面积最小，最小面积是多少？
]

#ezexam.question(label: n => [九、])[
（本题满分8分）

求由曲线 $y=1+sin x$ 与直线 $y=0,x=0,x=pi$ 围成的曲边梯形绕 $x$ 轴旋转而成的旋转体体积 $V$.
]

#ezexam.question(label: n => [十、])[
（本题满分7分）

求微分方程 $x (dif y)/(dif x)=x-y$ 满足条件 $y|_(x=sqrt(2))=0$ 的特解.
]

#ezexam.question(label: n => [十一、])[
（本题满分8分）

求微分方程 $y''+2y'+y=x e^x$ 的通解.
]
