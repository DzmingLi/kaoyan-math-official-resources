#import "../template.typ": exam
#show: exam.with(year: 1996, subject: "三", title: "1996年全国工学、经济学硕士研究生入学考试")
#import "@preview/ezexam:0.3.1" as ezexam
#import "@preview/cetz:0.4.2" as cetz
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(true)


= 一、填空题（15分，每小题3分）
#ezexam.counter-question.step()

（1）设 $y=(x+e^(-x/2))^(2/3)$，则 $y'|_(x=0)=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
链式法则给出 $y'=2/3 (x+e^(-x/2))^(-1/3)(1-e^(-x/2)/2)$，代入0得 $1/3$.
]

（2）$integral_(-1)^1 (x+sqrt(1-x^2))^2 dif x=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
展开为 $1+2x sqrt(1-x^2)$，第二项为奇函数，积分为0，故答案为2.
]

（3）微分方程 $y''+2y'+5y=0$ 的通解为#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
特征根为 $-1±2i$，故 $y=e^(-x)(C_1 cos 2x+C_2 sin 2x)$.
]

（4）$lim_(x arrow infinity)x[sin ln(1+3/x)-sin ln(1+1/x)]=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
令 $t=1/x$，利用 $sin ln(1+k t)=k t+o(t)$，所求极限为 $3-1=2$.
]

（5）由曲线 $y=x+1/x$、$x=2$ 及 $y=2$ 所围图形的面积 $S=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
曲线与 $y=2$ 在 $x=1$ 相切，故 $S=integral_1^2 (x+1/x-2)dif x=ln 2-1/2$.
]

= 二、选择题（15分，每小题3分）
#ezexam.counter-question.step()

（1）设当 $x arrow 0$ 时，$e^x-(a x^2+b x+1)$ 是比 $x^2$ 高阶的无穷小，则（　）.
#choices[$a=1/2,b=1$][$a=1,b=1$][$a=-1/2,b=1$][$a=-1,b=1$]
#ezexam.solution(show-number: false)[
A.比较 $e^x=1+x+x^2/2+o(x^2)$ 的系数，即得 $a=1/2,b=1$.
]

（2）设函数 $f(x)$ 在 $(-delta,delta)$ 内有定义，且恒有 $abs(f(x))<=x^2$，则 $x=0$ 必是 $f(x)$ 的（　）.
#choices[间断点][连续而不可导的点][可导的点，且 $f'(0)=0$][可导的点，且 $f'(0)≠0$]
#ezexam.solution(show-number: false)[
C.$f(0)=0$，且 $abs((f(x)-f(0))/x)<=abs(x) arrow 0$，所以 $f'(0)=0$.
]

（3）设 $f(x)$ 处处可导，则（　）.
#choices[当 $lim_(x arrow -infinity)f(x)=-infinity$，必有 $lim_(x arrow -infinity)f'(x)=-infinity$][当 $lim_(x arrow -infinity)f'(x)=-infinity$，必有 $lim_(x arrow -infinity)f(x)=-infinity$][当 $lim_(x arrow +infinity)f(x)=+infinity$，必有 $lim_(x arrow +infinity)f'(x)=+infinity$][当 $lim_(x arrow +infinity)f'(x)=+infinity$，必有 $lim_(x arrow +infinity)f(x)=+infinity$]
#ezexam.solution(show-number: false)[
D.当 $x$ 充分大时 $f'(x)>1$，由中值定理，$f(x)>f(M)+x-M arrow +infinity$.A、C可用 $f(x)=x$ 否定，B可用 $f(x)=x^2$ 否定.
]

（4）在区间 $(-infinity,+infinity)$ 内，方程 $abs(x)^(1/4)+abs(x)^(1/2)-cos x=0$（　）.
#choices[无实根][有且仅有一个实根][有且仅有两个实根][有无穷多个实根]
#ezexam.solution(show-number: false)[
C.左端为偶函数，在0处为 $-1$，在1处大于0，且在 $(0,1)$ 上严格增加.$x>=1$ 时左端为正，故恰有一正一负两个根.
]

（5）设 $f(x),g(x)$ 在 $[a,b]$ 上连续，且 $g(x)<f(x)<m$（$m$ 为常数），则曲线 $y=g(x)$、$y=f(x)$、$x=a$ 及 $x=b$ 所围图形绕直线 $y=m$ 旋转而成的旋转体体积为（　）.
#choices[$integral_a^b pi[2m-f(x)+g(x)][f(x)-g(x)]dif x$][$integral_a^b pi[2m-f(x)-g(x)][f(x)-g(x)]dif x$][$integral_a^b pi[m-f(x)+g(x)][f(x)-g(x)]dif x$][$integral_a^b pi[m-f(x)-g(x)][f(x)-g(x)]dif x$]
#ezexam.solution(show-number: false)[
B.圆环截面积为 $pi[(m-g(x))^2-(m-f(x))^2]=pi[2m-f(x)-g(x)][f(x)-g(x)]$，积分即得.
]

#ezexam.question(label: n => [三、])[
（30分，每小题5分）

（1）计算 $integral_0^(ln 2)sqrt(1-e^(-2x))dif x$.
#ezexam.solution(show-number: false)[
令 $t=e^x$，积分成为 $integral_1^2 sqrt(t^2-1)/t^2 dif t$.分部积分得
$ [-sqrt(t^2-1)/t+ln(t+sqrt(t^2-1))]_1^2=ln(2+sqrt(3))-sqrt(3)/2. $
]

（2）求 $integral 1/(1+sin x)dif x$.
#ezexam.solution(show-number: false)[
有理化后积分为 $integral (1-sin x)/(cos^2 x) dif x=tan x-1/(cos x)+C$，亦可写为 $-(cos x)/(1+sin x)+C$.
]

（3）设 $cases(x=integral_0^t f(u^2)dif u,y=[f(t^2)]^2)$，其中 $f(u)$ 具有二阶导数且 $f(u)≠0$，求 $(dif^2 y)/(dif x^2)$.
#ezexam.solution(show-number: false)[
由 $x'_t=f(t^2)$、$y'_t=4t f(t^2)f'(t^2)$，得 $(dif y)/(dif x)=4t f'(t^2)$，因此
$ (dif^2 y)/(dif x^2)=(4f'(t^2)+8t^2 f''(t^2))/f(t^2). $
]

（4）求函数 $f(x)=(1-x)/(1+x)$ 在 $x=0$ 点处带拉格朗日型余项的 $n$ 阶泰勒展开式.
#ezexam.solution(show-number: false)[
由 $f(x)=2/(1+x)-1$，$f^(k)(x)=2(-1)^k k!/(1+x)^(k+1)$，故
$ f(x)=1+2sum_(k=1)^n (-1)^k x^k+2(-1)^(n+1)x^(n+1)/(1+theta x)^(n+2), $
其中 $0<theta<1$，$x>-1$.
]

（5）求微分方程 $y''+y'=x^2$ 的通解.
#ezexam.solution(show-number: false)[
齐次通解为 $C_1+C_2 e^(-x)$，设多项式特解为 $a x^3+b x^2+c x$，代入得 $a=1/3,b=-1,c=2$.故 $y=x^3/3-x^2+2x+C_1+C_2 e^(-x)$.
]

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
#ezexam.solution(show-number: false)[
取底面椭圆为 $x^2/a^2+y^2/b^2=1$，楔形体在 $x>=0$ 一侧，高度为 $x tan alpha$.垂直于 $y$ 轴的截面为直角三角形，其面积为 $a^2/2 (1-y^2/b^2)tan alpha$.故
$ V=integral_(-b)^b a^2/2 (1-y^2/b^2)tan alpha dif y=(2a^2 b)/3 tan alpha. $
]

]

#ezexam.question(label: n => [四、])[
（8分）

计算不定积分 $integral (arctan x)/(x^2(1+x^2))dif x$.
#ezexam.solution(show-number: false)[
拆分为 $integral (arctan x)/x^2 dif x-integral (arctan x)/(1+x^2)dif x$，对第一项分部积分，得
$ I=-(arctan x)/x+integral 1/(x(1+x^2))dif x-1/2 (arctan x)^2 $
$ =-(arctan x)/x-1/2 (arctan x)^2+1/2 ln(x^2/(1+x^2))+C. $
]

]

#ezexam.question(label: n => [五、])[
（8分）

设 $f(x)=cases(1-2x^2 & quad x<-1,x^3 & quad -1<=x<=2,12x-16 & quad x>2)$.

（1）写出反函数 $g(x)$ 的表达式；

（2）$g(x)$ 是否有间断点、不可导点？若有，指出这些点.
#ezexam.solution(show-number: false)[
（1）各段反解得
$ g(x)=cases(-sqrt((1-x)/2) & quad x<-1,root(3,x) & quad -1<=x<=8,(x+16)/12 & quad x>8). $
（2）$g$ 处处连续，无间断点.在 $x=-1$ 处左右导数分别为 $1/4,1/3$，不可导；在0处差商无界，不可导；在8处左右导数同为 $1/12$，可导.因此不可导点只有 $-1,0$.
]

]

#ezexam.question(label: n => [六、])[
（8分）

设函数 $y=y(x)$ 由方程 $2y^3-2y^2+2x y-x^2=1$ 确定.求 $y(x)$ 的驻点，并判断是否为极值点.
#ezexam.solution(show-number: false)[
隐式求导得 $(3y^2-2y+x)y'+y-x=0$.令 $y'=0$，得 $y=x$，代入得 $(x-1)(2x^2+x+1)=0$，唯一驻点为 $x=1$、$y=1$.再求导，在该点得到 $2y''-1=0$，所以 $y''=1/2>0$，是极小值点.
]

]

#ezexam.question(label: n => [七、])[
（8分）

设 $f(x)$ 在 $[a,b]$ 上具有二阶导数，且 $f(a)=f(b)=0$、$f'(a)f'(b)>0$.证明存在 $xi,eta in (a,b)$，使 $f(xi)=0$ 及 $f''(eta)=0$.
#ezexam.solution(show-number: false)[
不妨设两端导数均为正，则在 $a$ 右侧附近函数为正，在 $b$ 左侧附近为负.由连续性，存在内点 $xi$ 使 $f(xi)=0$；两端导数均为负时同理.对 $[a,xi]$、$[xi,b]$ 分别用罗尔定理，得到 $f'$ 的两个内点零点，再对两点间的 $f'$ 用罗尔定理，得到 $f''(eta)=0$.
]

]

#ezexam.question(label: n => [八、])[
（8分）

设 $f(x)$ 为连续函数.

（1）求初值问题 $cases(y'+a y=f(x),y(0)=0)$ 的解，其中 $a>0$；

（2）若 $abs(f(x))<=k$（$k$ 为常数），证明当 $x>=0$ 时 $abs(y(x))<=(k/a)(1-e^(-a x))$.
#ezexam.solution(show-number: false)[
（1）乘积分因子 $e^(a x)$ 后得 $(y e^(a x))'=e^(a x)f(x)$.利用初值，
$ y(x)=e^(-a x)integral_0^x e^(a t)f(t)dif t. $
（2）当 $x>=0$ 时，$abs(y(x))<=k e^(-a x)integral_0^x e^(a t)dif t=(k/a)(1-e^(-a x))$.
]

]

