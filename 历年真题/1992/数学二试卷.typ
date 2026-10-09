#import "../template.typ": exam
#show: exam.with(year: 1992, subject: "二", title: "1992年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)

= 一、填空题（本题共5小题，每小题3分，满分15分. 把答案填在题中横线上.）

#ezexam.question(label: n => [（1）])[
设 $cases(x=f(t)-pi,y=f(e^(3t)-1))$，其中 $f$ 可导，且 $f'(0)!=0$，则 $(dif y)/(dif x)|_(t=0)=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [（2）])[
函数 $y=x+2cos x$ 在 $[0,pi/2]$ 上的最大值为 #fillin(len: 4em)[].
]

#ezexam.question(label: n => [（3）])[
$lim_(x->0)(1-sqrt(1-x^2))/(e^x-cos x)=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [（4）])[
$integral_1^(+infinity)(dif x)/(x(x^2+1))=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [（5）])[
由曲线 $y=x e^x$ 与直线 $y=e x$ 所围成的图形的面积 $S=$ #fillin(len: 4em)[].
]

= 二、选择题（本题共5小题，每小题3分，满分15分. 每小题给出的四个选项中，只有一项符合题目要求，把所选项前的字母填在题后的括号内.）

#ezexam.question(label: n => [（1）])[
当 $x->0$ 时，$x-sin x$ 是 $x^2$ 的（　）.
#choices([低阶无穷小.],[高阶无穷小.],[等价无穷小.],[同阶但非等价的无穷小.])
]

#ezexam.question(label: n => [（2）])[
设 $f(x)=cases(x^2 & x<=0,x^2+x & x>0)$，则（　）.
#choices([$f(-x)=cases(-x^2 & x<=0,-(x^2+x) & x>0)$],[$f(-x)=cases(-(x^2+x) & x>0,x^2 & x<=0)$],[$f(-x)=cases(x^2 & x<=0,x^2-x & x>0)$],[$f(-x)=cases(x^2-x & x<=0,x^2 & x>0)$])
]

#ezexam.question(label: n => [（3）])[
当 $x->1$ 时，函数 $(x^2-1)/(x-1)e^(1/(x-1))$ 的极限（　）.
#choices([等于2.],[等于0.],[为 $infinity$.],[不存在但不为 $infinity$.])
]

#ezexam.question(label: n => [（4）])[
设 $f(x)$ 连续，$F(x)=integral_0^(x^2)f(t^2)dif t$，则 $F'(x)$ 等于（　）.
#choices([$f(x^4)$],[$x^2 f(x^4)$],[$2x f(x^4)$],[$2x f(x^2)$])
]

#ezexam.question(label: n => [（5）])[
若 $f(x)$ 的导函数是 $sin x$，则 $f(x)$ 有一个原函数为（　）.
#choices([$1+sin x$],[$1-sin x$],[$1+cos x$],[$1-cos x$])
]

= 三、（本题共5小题，每小题5分，满分25分.）

#ezexam.question(label: n => [（1）])[
求 $lim_(x->infinity)((3+x)/(6+x))^((x-1)/2)$.
]

#ezexam.question(label: n => [（2）])[
设函数 $y=y(x)$ 由方程 $y-x e^y=1$ 所确定，求 $(dif^2 y)/(dif x^2)|_(x=0)$ 的值.
]

#ezexam.question(label: n => [（3）])[
求 $integral x^3/sqrt(1+x^2)dif x$.
]

#ezexam.question(label: n => [（4）])[
求 $integral_0^pi sqrt(1-sin x)dif x$.
]

#ezexam.question(label: n => [（5）])[
求微分方程 $(y-x^3)dif x-2x dif y=0$ 的通解.
]

#ezexam.question(label: n => [四、])[
（本题满分9分）

设 $f(x)=cases(1+x^2 & x<0,e^(-x) & x>=0)$，求 $integral_1^3 f(x-2)dif x$.
]

#ezexam.question(label: n => [五、])[
（本题满分9分）

求微分方程 $y''-3y'+2y=x e^x$ 的通解.
]

#ezexam.question(label: n => [六、])[
（本题满分9分）

计算曲线 $y=ln(1-x^2)$ 上相应于 $0<=x<=1/2$ 的一段弧的长度.
]

#ezexam.question(label: n => [七、])[
（本题满分9分）

求曲线 $y=sqrt(x)$ 的一条切线 $l$，使该曲线与切线 $l$ 及直线 $x=0,x=2$ 所围成的平面图形面积最小.
]

#ezexam.question(label: n => [八、])[
（本题满分9分）

已知 $f''(x)<0,f(0)=0$.试证：对任意的二正数 $x_1$ 和 $x_2$，恒有 $f(x_1+x_2)<f(x_1)+f(x_2)$ 成立.
]
