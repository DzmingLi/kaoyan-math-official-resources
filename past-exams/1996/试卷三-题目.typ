#import "../template.typ": exam
#show: exam.with(year: 1996, subject: "三", title: "1996年全国工学、经济学硕士研究生入学考试")
#import "@preview/ezexam:0.3.1" as ezexam
#import "@preview/cetz:0.4.2" as cetz
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])


= 一、填空题（15分，每小题3分）
#ezexam.counter-question.step()

（1）设 $y=(x+e^(-x/2))^(2/3)$，则 $y'|_(x=0)=$ #fillin(len: 4em)[].

（2）$integral_(-1)^1 (x+sqrt(1-x^2))^2 dif x=$ #fillin(len: 4em)[].

（3）微分方程 $y''+2y'+5y=0$ 的通解为#fillin(len: 4em)[].

（4）$lim_(x arrow infinity)x[sin ln(1+3/x)-sin ln(1+1/x)]=$ #fillin(len: 4em)[].

（5）由曲线 $y=x+1/x$、$x=2$ 及 $y=2$ 所围图形的面积 $S=$ #fillin(len: 4em)[].

= 二、选择题（15分，每小题3分）
#ezexam.counter-question.step()

（1）设当 $x arrow 0$ 时，$e^x-(a x^2+b x+1)$ 是比 $x^2$ 高阶的无穷小，则（　）.
#choices[$a=1/2,b=1$][$a=1,b=1$][$a=-1/2,b=1$][$a=-1,b=1$]

（2）设函数 $f(x)$ 在 $(-delta,delta)$ 内有定义，且恒有 $abs(f(x))<=x^2$，则 $x=0$ 必是 $f(x)$ 的（　）.
#choices[间断点][连续而不可导的点][可导的点，且 $f'(0)=0$][可导的点，且 $f'(0)≠0$]

（3）设 $f(x)$ 处处可导，则（　）.
#choices[当 $lim_(x arrow -infinity)f(x)=-infinity$，必有 $lim_(x arrow -infinity)f'(x)=-infinity$][当 $lim_(x arrow -infinity)f'(x)=-infinity$，必有 $lim_(x arrow -infinity)f(x)=-infinity$][当 $lim_(x arrow +infinity)f(x)=+infinity$，必有 $lim_(x arrow +infinity)f'(x)=+infinity$][当 $lim_(x arrow +infinity)f'(x)=+infinity$，必有 $lim_(x arrow +infinity)f(x)=+infinity$]

（4）在区间 $(-infinity,+infinity)$ 内，方程 $abs(x)^(1/4)+abs(x)^(1/2)-cos x=0$（　）.
#choices[无实根][有且仅有一个实根][有且仅有两个实根][有无穷多个实根]

（5）设 $f(x),g(x)$ 在 $[a,b]$ 上连续，且 $g(x)<f(x)<m$（$m$ 为常数），则曲线 $y=g(x)$、$y=f(x)$、$x=a$ 及 $x=b$ 所围图形绕直线 $y=m$ 旋转而成的旋转体体积为（　）.
#choices[$integral_a^b pi[2m-f(x)+g(x)][f(x)-g(x)]dif x$][$integral_a^b pi[2m-f(x)-g(x)][f(x)-g(x)]dif x$][$integral_a^b pi[m-f(x)+g(x)][f(x)-g(x)]dif x$][$integral_a^b pi[m-f(x)-g(x)][f(x)-g(x)]dif x$]

#ezexam.question(label: n => [三、])[
（30分，每小题5分）

（1）计算 $integral_0^(ln 2)sqrt(1-e^(-2x))dif x$.

（2）求 $integral 1/(1+sin x)dif x$.

（3）设 $cases(x=integral_0^t f(u^2)dif u,y=[f(t^2)]^2)$，其中 $f(u)$ 具有二阶导数且 $f(u)≠0$，求 $(dif^2 y)/(dif x^2)$.

（4）求函数 $f(x)=(1-x)/(1+x)$ 在 $x=0$ 点处带拉格朗日型余项的 $n$ 阶泰勒展开式.

（5）求微分方程 $y''+y'=x^2$ 的通解.

（6）设有一正椭圆柱体，其底面的长、短轴分别为 $2a,2b$.用过此柱体底面的短轴且与底面成 $alpha$ 角（$0<alpha<pi/2$）的平面截此柱体，得一楔形体（如图），求此楔形体的体积 $V$.
#cetz.canvas({
 import cetz.draw: *
 let p(x,y,z)=(x+.5*y,z - .35*y)
 let curve(top:false)=range(0,101).map(i=>{let t=-90deg+180deg*i/100; let x=2*calc.cos(t); let y=calc.sin(t); p(x,y,if top {.8*x} else {0})})
 line(..curve(),stroke:(dash:"dashed"))
 line(..curve(top:true))
 line(p(0,-1.25,0),p(0,1.25,0))
 for t in (-60deg,-30deg,0deg,30deg,60deg) {let x=2*calc.cos(t); let y=calc.sin(t); line(p(x,y,0),p(x,y,.8*x))}
 line(p(0,0,0),p(2.35,0,0),stroke:(dash:"dashed"))
 line(p(0,0,0),p(2.1,0,1.68))
 content((.8,.25),$alpha$)
})

]

#ezexam.question(label: n => [四、])[
（8分）

计算不定积分 $integral (arctan x)/(x^2(1+x^2))dif x$.

]

#ezexam.question(label: n => [五、])[
（8分）

设 $f(x)=cases(1-2x^2 & quad x<-1,x^3 & quad -1<=x<=2,12x-16 & quad x>2)$.

（1）写出反函数 $g(x)$ 的表达式；

（2）$g(x)$ 是否有间断点、不可导点？若有，指出这些点.

]

#ezexam.question(label: n => [六、])[
（8分）

设函数 $y=y(x)$ 由方程 $2y^3-2y^2+2x y-x^2=1$ 确定.求 $y(x)$ 的驻点，并判断是否为极值点.

]

#ezexam.question(label: n => [七、])[
（8分）

设 $f(x)$ 在 $[a,b]$ 上具有二阶导数，且 $f(a)=f(b)=0$、$f'(a)f'(b)>0$.证明存在 $xi,eta in (a,b)$，使 $f(xi)=0$ 及 $f''(eta)=0$.

]

#ezexam.question(label: n => [八、])[
（8分）

设 $f(x)$ 为连续函数.

（1）求初值问题 $cases(y'+a y=f(x),y(0)=0)$ 的解，其中 $a>0$；

（2）若 $abs(f(x))<=k$（$k$ 为常数），证明当 $x>=0$ 时 $abs(y(x))<=(k/a)(1-e^(-a x))$.
]

