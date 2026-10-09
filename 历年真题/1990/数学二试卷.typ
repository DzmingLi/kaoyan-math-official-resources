#import "../template.typ": exam
#show: exam.with(year: 1990, subject: "二", title: "1990年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)

= 一、填空题（本题共5小题，每小题3分，满分15分. 把答案填在题中横线上.）

#ezexam.question(label: n => [（1）])[
曲线 $cases(x=cos^3 t,y=sin^3 t)$ 上对应于 $t=pi/6$ 点处的法线方程是 #fillin(len: 4em)[].
]

#ezexam.question(label: n => [（2）])[
设 $y=e^(tan(1/x)) dot sin(1/x)$，则 $y'=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [（3）])[
$integral_0^1 x sqrt(1-x)dif x=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [（4）])[
下列两个积分的大小关系是：$integral_(-2)^(-1)e^(-x^3)dif x$ #fillin(len: 4em)[] $integral_(-2)^(-1)e^(x^3)dif x$.
]

#ezexam.question(label: n => [（5）])[
设函数 $f(x)=cases(1 & abs(x)<=1,0 & abs(x)>1)$，则 $f(f(x))=$ #fillin(len: 4em)[].
]

= 二、选择题（每小题3分，满分15分. 每小题给出的四个选项中，只有一项符合题目要求，把所选项前的字母填在题后的括号内.）

#ezexam.question(label: n => [（1）])[
已知 $lim_(x->infinity)(x^2/(x+1)-a x-b)=0$，其中 $a,b$ 是常数，则（　）.
#choices([$a=1,b=1$],[$a=-1,b=1$],[$a=1,b=-1$],[$a=-1,b=-1$])
]

#ezexam.question(label: n => [（2）])[
设函数 $f(x)$ 在 $(-infinity,+infinity)$ 上连续，则 $dif[integral f(x)dif x]$ 等于（　）.
#choices([$f(x)$],[$f(x)dif x$],[$f(x)+C$],[$f'(x)dif x$])
]

#ezexam.question(label: n => [（3）])[
已知函数 $f(x)$ 具有任意阶导数，且 $f'(x)=[f(x)]^2$，则当 $n$ 为大于2的正整数时，$f(x)$ 的 $n$ 阶导数 $f^((n))(x)$ 是（　）.
#choices([$n![f(x)]^(n+1)$],[$n[f(x)]^(n+1)$],[$[f(x)]^(2n)$],[$n![f(x)]^(2n)$])
]

#ezexam.question(label: n => [（4）])[
设 $f(x)$ 是连续函数，且 $F(x)=integral_x^(e^(-x)) f(t)dif t$，则 $F'(x)$ 等于（　）.
#choices([$-e^(-x)f(e^(-x))-f(x)$],[$-e^(-x)f(e^(-x))+f(x)$],[$e^(-x)f(e^(-x))-f(x)$],[$e^(-x)f(e^(-x))+f(x)$])
]

#ezexam.question(label: n => [（5）])[
设 $F(x)=cases(f(x)/x & x!=0,f(0) & x=0)$，其中 $f(x)$ 在 $x=0$ 处可导，$f'(0)!=0,f(0)=0$，则 $x=0$ 是 $F(x)$ 的（　）.
#choices([连续点.],[第一类间断点.],[第二类间断点.],[连续点或间断点不能由此确定.])
]

= 三、（每小题5分，满分25分.）

#ezexam.question(label: n => [（1）])[
已知 $lim_(x->infinity)((x+a)/(x-a))^x=9$，求常数 $a$.
]

#ezexam.question(label: n => [（2）])[
求由方程 $2y-x=(x-y)ln(x-y)$ 所确定的函数 $y=y(x)$ 的微分 $dif y$.
]

#ezexam.question(label: n => [（3）])[
求曲线 $y=1/(1+x^2) (x>0)$ 的拐点.
]

#ezexam.question(label: n => [（4）])[
计算 $integral (ln x)/(1-x)^2 dif x$.
]

#ezexam.question(label: n => [（5）])[
求微分方程 $x ln x dif y+(y-ln x)dif x=0$ 满足条件 $y|_(x=e)=1$ 的特解.
]

#ezexam.question(label: n => [四、])[
（本题满分9分）

在椭圆 $x^2/a^2+y^2/b^2=1$ 的第一象限部分上求一点 $P$，使该点处的切线、椭圆及两坐标轴所围图形面积为最小（其中 $a>0,b>0$）.
]

#ezexam.question(label: n => [五、])[
（本题满分9分）

证明：当 $x>0$，有不等式 $arctan x+1/x>pi/2$.
]

#ezexam.question(label: n => [六、])[
（本题满分9分）

设 $f(x)=integral_1^x (ln t)/(1+t)dif t$，其中 $x>0$，求 $f(x)+f(1/x)$.
]

#ezexam.question(label: n => [七、])[
（本题满分9分）

过点 $P(1,0)$ 作抛物线 $y=sqrt(x-2)$ 的切线，该切线与上述抛物线及 $x$ 轴围成一平面图形，求此平面图形绕 $x$ 轴旋转一周所成旋转体的体积.
]

#ezexam.question(label: n => [八、])[
（本题满分9分）

求微分方程 $y''+4y'+4y=e^(a x)$ 之通解，其中 $a$ 为实数.
]
