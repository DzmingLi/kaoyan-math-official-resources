#import "../template.typ": exam
#show: exam.with(year: 1994, subject: "三", title: "1994年全国工学、经济学硕士研究生入学考试")
#import "@preview/ezexam:0.3.1" as ezexam
#import "@preview/cetz:0.4.2" as cetz
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])


= 一、填空题（15分，每小题3分）
#ezexam.counter-question.step()

（1）若 $f(x)=cases((sin 2x+e^(2a x)-1)/x & quad x≠0,a & quad x=0)$ 在 $(-infinity,+infinity)$ 上连续，则 $a=$ #fillin(len: 4em)[].

（2）设函数 $y=y(x)$ 由参数方程 $cases(x=t-ln(1+t),y=t^3+t^2)$ 所确定，则 $(dif^2 y)/(dif x^2)=$ #fillin(len: 4em)[].

（3）$(dif)/(dif x)(integral_0^(cos 3x)f(t)dif t)=$ #fillin(len: 4em)[].

（4）$integral x^3 e^(x^2)dif x=$ #fillin(len: 4em)[].

（5）微分方程 $y dif x+(x^2-4x)dif y=0$ 的通解为 #fillin(len: 4em)[].

= 二、选择题（15分，每小题3分）
#ezexam.counter-question.step()

（1）设 $lim_(x arrow 0)(ln(1+x)-(a x+b x^2))/x^2=2$，则（　）.
#choices[$a=1,b=-5/2$][$a=0,b=-2$][$a=0,b=-5/2$][$a=1,b=-2$]

（2）设 $f(x)=cases(2/3 x^3 & quad x<=1,x^2 & quad x>1)$，则 $f(x)$ 在 $x=1$ 处（　）.
#choices[左、右导数都存在][左导数存在，但右导数不存在][左导数不存在，但右导数存在][左、右导数都不存在]

（3）设 $y=f(x)$ 是满足微分方程 $y''+y'-e^(sin x)=0$ 的解，且 $f'(x_0)=0$，则 $f(x)$ 在（　）.
#choices[$x_0$ 的某个邻域内单调增加][$x_0$ 的某个邻域内单调减少][$x_0$ 处取得极小值][$x_0$ 处取得极大值]

（4）曲线 $y=e^(1/x^2)arctan((x^2+x+1)/((x-1)(x+2)))$ 的渐近线有（　）.
#choices[1条][2条][3条][4条]

（5）设 $M=integral_(-pi/2)^(pi/2)(sin x)/(1+x^2)cos^4 x dif x$，$N=integral_(-pi/2)^(pi/2)(sin^3 x+cos^4 x)dif x$，$P=integral_(-pi/2)^(pi/2)(x^2 sin^3 x-cos^4 x)dif x$，则有（　）.
#choices[$N<P<M$][$M<P<N$][$N<M<P$][$P<M<N$]

#ezexam.question(label: n => [三、])[
（25分，每小题5分）

（1）设 $y=f(x+y)$，其中 $f$ 具有二阶导数，且其一阶导数不等于1.求 $(dif^2 y)/(dif x^2)$.

（2）计算 $integral_0^1 x(1-x^4)^(3/2)dif x$.

（3）计算 $lim_(n arrow infinity)tan^n(pi/4+2/n)$.

（4）求 $integral 1/(sin 2x+2sin x)dif x$.

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

]

#ezexam.question(label: n => [四、])[
（9分）

设当 $x>0$ 时，方程 $k x+1/x^2=1$ 有且仅有一个解，求 $k$ 的取值范围.

]

#ezexam.question(label: n => [五、])[
（9分）

设 $y=(x^3+4)/x^2$.

（1）求函数的增减区间及极值；

（2）求函数图象的凹凸区间及拐点；

（3）求其渐近线；

（4）作出其图形.

]

#ezexam.question(label: n => [六、])[
（9分）

求微分方程 $y''+a^2 y=sin x$ 的通解，其中常数 $a>0$.

]

#ezexam.question(label: n => [七、])[
（9分）

设 $f(x)$ 在 $[0,1]$ 上连续且递减，证明：当 $0<lambda<1$ 时，$integral_0^lambda f(x)dif x>=lambda integral_0^1 f(x)dif x$.

]

#ezexam.question(label: n => [八、])[
（9分）

求曲线 $y=3-abs(x^2-1)$ 与 $x$ 轴围成的封闭图形绕直线 $y=3$ 旋转所得的旋转体体积.
]

