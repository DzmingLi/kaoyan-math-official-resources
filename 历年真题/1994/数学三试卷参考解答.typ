#import "../template.typ": exam
#show: exam.with(year: 1994, subject: "三", title: "1994年全国工学、经济学硕士研究生入学考试")
#import "@preview/ezexam:0.3.1" as ezexam
#import "@preview/cetz:0.5.2" as cetz
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(true)


= 一、填空题（15分，每小题3分）
#ezexam.counter-question.step()

（1）若 $f(x)=cases((sin 2x+e^(2a x)-1)/x & quad x≠0,a & quad x=0)$ 在 $(-infinity,+infinity)$ 上连续，则 $a=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
由 $lim_(x arrow 0)f(x)=2+2a=a$，得 $a=-2$.
]

（2）设函数 $y=y(x)$ 由参数方程 $cases(x=t-ln(1+t),y=t^3+t^2)$ 所确定，则 $(dif^2 y)/(dif x^2)=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
由 $x'=t/(1+t)$、$y'=t(3t+2)$，得 $(dif y)/(dif x)=(3t+2)(1+t)$，故 $(dif^2 y)/(dif x^2)=(6t+5)(t+1)/t$.
]

（3）$(dif)/(dif x)(integral_0^(cos 3x)f(t)dif t)=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
由变上限积分求导及链式法则，答案为 $-3sin 3x f(cos 3x)$.
]

（4）$integral x^3 e^(x^2)dif x=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
令 $u=x^2$，分部积分得 $1/2 integral u e^u dif u=1/2 e^(x^2)(x^2-1)+C$.
]

（5）微分方程 $y dif x+(x^2-4x)dif y=0$ 的通解为 #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
分离变量得 $dif y/y=-dif x/(x(x-4))$，积分并整理得 $(x-4)y^4=C x$.
]

= 二、选择题（15分，每小题3分）
#ezexam.counter-question.step()

（1）设 $lim_(x arrow 0)(ln(1+x)-(a x+b x^2))/x^2=2$，则（　）.
#choices[$a=1,b=-5/2$][$a=0,b=-2$][$a=0,b=-5/2$][$a=1,b=-2$]
#ezexam.solution(show-number: false)[
A.用 $ln(1+x)=x-x^2/2+o(x^2)$，得 $a=1$、$-1/2-b=2$.
]

（2）设 $f(x)=cases(2/3 x^3 & quad x<=1,x^2 & quad x>1)$，则 $f(x)$ 在 $x=1$ 处（　）.
#choices[左、右导数都存在][左导数存在，但右导数不存在][左导数不存在，但右导数存在][左、右导数都不存在]
#ezexam.solution(show-number: false)[
B.左导数为 $2$；右侧函数极限为 $1≠f(1)=2/3$，故右导数不存在.
]

（3）设 $y=f(x)$ 是满足微分方程 $y''+y'-e^(sin x)=0$ 的解，且 $f'(x_0)=0$，则 $f(x)$ 在（　）.
#choices[$x_0$ 的某个邻域内单调增加][$x_0$ 的某个邻域内单调减少][$x_0$ 处取得极小值][$x_0$ 处取得极大值]
#ezexam.solution(show-number: false)[
C.$f''(x_0)=e^(sin x_0)>0$，由二阶导数判别法得结论.
]

（4）曲线 $y=e^(1/x^2)arctan((x^2+x+1)/((x-1)(x+2)))$ 的渐近线有（　）.
#choices[1条][2条][3条][4条]
#ezexam.solution(show-number: false)[
B.$x arrow ±infinity$ 时 $y arrow pi/4$；$x arrow 0$ 时 $y arrow -infinity$.在 $x=1,-2$ 处单侧极限有限.因此仅有 $y=pi/4$ 与 $x=0$ 两条渐近线.
]

（5）设 $M=integral_(-pi/2)^(pi/2)(sin x)/(1+x^2)cos^4 x dif x$，$N=integral_(-pi/2)^(pi/2)(sin^3 x+cos^4 x)dif x$，$P=integral_(-pi/2)^(pi/2)(x^2 sin^3 x-cos^4 x)dif x$，则有（　）.
#choices[$N<P<M$][$M<P<N$][$N<M<P$][$P<M<N$]
#ezexam.solution(show-number: false)[
D.利用奇偶性得 $M=0$，$N=integral_(-pi/2)^(pi/2)cos^4 x dif x>0$，$P=-N<0$.
]

#ezexam.question(label: n => [三、])[
（25分，每小题5分）

（1）设 $y=f(x+y)$，其中 $f$ 具有二阶导数，且其一阶导数不等于1.求 $(dif^2 y)/(dif x^2)$.
#ezexam.solution(show-number: false)[
求导得 $y'=(1+y')f'$，故 $y'=f'/(1-f')$.再求导得 $y''=(1+y')^2 f''+y'' f'$，所以 $y''=f''/(1-f')^3$，其中 $f',f''$ 的自变量均为 $x+y$.
]

（2）计算 $integral_0^1 x(1-x^4)^(3/2)dif x$.
#ezexam.solution(show-number: false)[
令 $x^2=sin t$，得 $I=1/2 integral_0^(pi/2)cos^4 t dif t=3pi/32$.
]

（3）计算 $lim_(n arrow infinity)tan^n(pi/4+2/n)$.
#ezexam.solution(show-number: false)[
令 $L_n=tan^n(pi/4+2/n)$.由和角公式，
$ ln L_n=n ln(1+(2tan(2/n))/(1-tan(2/n))) arrow 4. $
故原极限为 $e^4$.
]

（4）求 $integral 1/(sin 2x+2sin x)dif x$.
#ezexam.solution(show-number: false)[
令 $u=tan(x/2)$，则
$ I=1/4 integral (1+u^2)/u dif u=1/8 u^2+1/4 ln abs(u)+C. $
故 $I=1/8 tan^2(x/2)+1/4 ln abs(tan(x/2))+C$.
]

（5）如图，设曲线方程为 $y=x^2+1/2$，梯形 $O A B C$ 的面积为 $D$，曲边梯形 $O A B C$ 的面积为 $D_1$，点 $A$ 的坐标为 $(a,0)$，$a>0$.证明：$D/D_1<3/2$.
#cetz.canvas({
 import cetz.draw: *
 line((-.3,0),(2.3,0),mark:(end:"stealth")); content((2.4,0),$x$)
 line((0,-.3),(0,2.8),mark:(end:"stealth")); content((.2,2.8),$y$)
 line((0,.5),(1.5,2.75),(1.5,0))
 line(..range(0,51).map(i=>{let x=1.5*i/50; (x,x*x+.5)}))
 content((-.15,-.15),$O$); content((1.5,-.2),$A$); content((1.7,2.75),$B$); content((-.2,.5),$C$)
 content((1.1,.8),$y=x^2+1/2$)
})
#ezexam.solution(show-number: false)[
$D_1=integral_0^a (x^2+1/2)dif x=a^3/3+a/2$，$D=a(a^2+1)/2$.故
$ D/D_1=3/2 (a^2+1)/(a^2+3/2)<3/2. $
]

]

#ezexam.question(label: n => [四、])[
（9分）

设当 $x>0$ 时，方程 $k x+1/x^2=1$ 有且仅有一个解，求 $k$ 的取值范围.
#ezexam.solution(show-number: false)[
令 $f(x)=k x+1/x^2-1$，则 $f'=k-2/x^3$，$f''=6/x^4>0$.当 $k<=0$ 时，函数严格递减，从 $+infinity$ 趋于负值，恰有一根.当 $k>0$ 时，函数在 $x=(2/k)^(1/3)$ 处取得唯一极小值，两端趋于 $+infinity$；恰有一根等价于极小值为零，解得 $k=2sqrt(3)/9$.故 $k∈(-infinity,0]∪{2sqrt(3)/9}$.
]

]

#ezexam.question(label: n => [五、])[
（9分）

设 $y=(x^3+4)/x^2$.

（1）求函数的增减区间及极值；

（2）求函数图象的凹凸区间及拐点；

（3）求其渐近线；

（4）作出其图形.
#ezexam.solution(show-number: false)[
（1）$y'=1-8/x^3$.增区间为 $(-infinity,0)$、$(2,+infinity)$；减区间为 $(0,2)$.在 $x=2$ 处取得极小值 $3$.

（2）$y''=24/x^4>0$，在 $(-infinity,0)$、$(0,+infinity)$ 上均为凹，无拐点.

（3）垂直渐近线为 $x=0$，斜渐近线为 $y=x$.

（4）零点为 $-root(3,4)$，图形如下.
#cetz.canvas({
 import cetz.draw: *
 line((-2.2,0),(3.3,0),mark:(end:"stealth")); content((3.4,0),$x$)
 line((0,-2),(0,4),mark:(end:"stealth")); content((.2,4),$y$)
 line((-2,-2),(3.2,3.2),stroke:(dash:"dashed"))
 for (lo,hi) in ((-4,-.72),(.78,6)) {
  line(..range(0,101).map(i=>{let x=lo+(hi - lo)*i/100; (x*.5,(x+4/(x*x))*.5)}))
 }
 content((1,1.25),$(2,3)$); content((-.18,-.2),$O$)
})
]

]

#ezexam.question(label: n => [六、])[
（9分）

求微分方程 $y''+a^2 y=sin x$ 的通解，其中常数 $a>0$.
#ezexam.solution(show-number: false)[
对应齐次通解为 $C_1 cos(a x)+C_2 sin(a x)$.当 $a≠1$ 时，待定系数法得特解 $sin x/(a^2-1)$；当 $a=1$ 时，特解为 $-x cos x/2$.故
$ y=cases(C_1 cos(a x)+C_2 sin(a x)+sin x/(a^2-1) & quad a≠1,C_1 cos x+C_2 sin x-x cos x/2 & quad a=1). $
]

]

#ezexam.question(label: n => [七、])[
（9分）

设 $f(x)$ 在 $[0,1]$ 上连续且递减，证明：当 $0<lambda<1$ 时，$integral_0^lambda f(x)dif x>=lambda integral_0^1 f(x)dif x$.
#ezexam.solution(show-number: false)[
由单调性，$integral_0^lambda f(x)dif x>=lambda f(lambda)$，$integral_lambda^1 f(x)dif x<=(1-lambda)f(lambda)$.因此
$ integral_0^lambda f(x)dif x-lambda integral_0^1 f(x)dif x=(1-lambda)integral_0^lambda f(x)dif x-lambda integral_lambda^1 f(x)dif x>=0. $
]

]

#ezexam.question(label: n => [八、])[
（9分）

求曲线 $y=3-abs(x^2-1)$ 与 $x$ 轴围成的封闭图形绕直线 $y=3$ 旋转所得的旋转体体积.
#ezexam.solution(show-number: false)[
曲线在 $0<=x<=1$ 时为 $y=x^2+2$，在 $1<=x<=2$ 时为 $y=4-x^2$，关于 $y$ 轴对称.图形如下.
#cetz.canvas({
 import cetz.draw: *
 line((-2.5,0),(2.7,0),mark:(end:"stealth")); content((2.8,0),$x$)
 line((0,-.3),(0,3.6),mark:(end:"stealth")); content((.2,3.6),$y$)
 line((-2.3,3),(2.3,3),stroke:(dash:"dashed")); content((2.7,3),$y=3$)
 line(..range(0,161).map(i=>{let x=-2+i/40; (x,3-calc.abs(x*x - 1))}))
 content((-.2,-.2),$O$); content((.15,1.8),$A$); content((1.15,3.15),$B$); content((2,-.2),$C$)
})
利用圆环截面积，得
$ V=2pi integral_0^2 (9-(x^2-1)^2)dif x=2pi integral_0^2 (8+2x^2-x^4)dif x=448pi/15. $
]

]

