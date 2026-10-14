#import "../template.typ": exam, answer
#show: exam.with(year: 1994, subject: "三", title: "1994年全国工学、经济学硕士研究生入学考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#import "@preview/cetz:0.5.2" as cetz
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 1994 数学三试卷参考解答

= 一、填空题

#answer("1（1）")[
由 $lim_(x arrow 0)f(x)=2+2a=a$，得 $a=-2$.

【分析】函数连续要求a等于0处极限，而该极限为2+2a，故a=−2.
]

#answer("1（2）")[
由 $x'=t/(1+t)$、$y'=t(3t+2)$，得 $(dif y)/(dif x)=(3t+2)(1+t)$，故 $(dif^2 y)/(dif x^2)=(6t+5)(t+1)/t$.

【分析】参数方程求导得dy/dx=(t+1)(3t+2)，再对t求导并除以dx/dt=t/(t+1)，得d²y/dx²=(6t+5)(t+1)/t.
]

#answer("1（3）")[
由变上限积分求导及链式法则，答案为 $-3sin 3x f(cos 3x)$.

【分析】利用变上限积分的复合函数求导式，
$ frac(dif,dif x)integral_0^(cos 3x)f(t)dif t=-3sin 3x f(cos 3x). $
]

#answer("1（4）")[
令 $u=x^2$，分部积分得 $1/2 integral u e^u dif u=1/2 e^(x^2)(x^2-1)+C$.
]

#answer("1（5）")[
分离变量得 $dif y/y=-dif x/(x(x-4))$，积分并整理得 $(x-4)y^4=C x$.
]

= 二、选择题

#answer("2（1）")[
A.用 $ln(1+x)=x-x^2/2+o(x^2)$，得 $a=1$、$-1/2-b=2$.

【分析】
$ ln(1+x)-(a x+b x^2)=(1-a)x-(1/2+b)x^2+o(x^2). $
与2x²等价要求1−a=0、−(1/2+b)=2，得a=1、b=−5/2. 应先由极限存在消去一次项.
]

#answer("2（2）")[
B.左导数为 $2$；右侧函数极限为 $1≠f(1)=2/3$，故右导数不存在.

【分析】必须用单侧导数定义：右侧差商 $lim_(x->1^+)frac(x^2-2/3,x-1)=+infinity$，右导数不存在；左侧差商趋于2. 不能直接把两段的导函数代入1，因为原函数在此不连续.
]

#answer("2（3）")[
C.$f''(x_0)=e^(sin x_0)>0$，由二阶导数判别法得结论.
]

#answer("2（4）")[
B.$x arrow ±infinity$ 时 $y arrow pi/4$；$x arrow 0$ 时 $y arrow -infinity$.在 $x=1,-2$ 处单侧极限有限.因此仅有 $y=pi/4$ 与 $x=0$ 两条渐近线.
]

#answer("2（5）")[
D.利用奇偶性得 $M=0$，$N=integral_(-pi/2)^(pi/2)cos^4 x dif x>0$，$P=-N<0$.
]

= 解答题

#answer("三（1）")[
求导得 $y'=(1+y')f'$，故 $y'=f'/(1-f')$.再求导得 $y''=(1+y')^2 f''+y'' f'$，所以 $y''=f''/(1-f')^3$，其中 $f',f''$ 的自变量均为 $x+y$.
]

#answer("三（2）")[
令 $x^2=sin t$，得 $I=1/2 integral_0^(pi/2)cos^4 t dif t=3pi/32$.

【分析】先写成 $1/2 integral_0^1(1-x^4)^(3/2)dif(x^2)$，再令x²=sint. 得到半区间的cos⁴积分后，可用降幂公式，也可用分部积分递推
$ integral_0^(pi/2)cos^4 t dif t=3/4 integral_0^(pi/2)sin^2(2t)dif t=3pi/16. $
再乘1/2，结果为3π/32.
]

#answer("三（3）")[
令 $L_n=tan^n(pi/4+2/n)$.由和角公式，
$ ln L_n=n ln(1+(2tan(2/n))/(1-tan(2/n))) arrow 4. $
故原极限为 $e^4$.

【解法2】由重要极限，
$ tan^n(pi/4+2/n)=(1+frac(2tan(2/n),1-tan(2/n)))^n->e^4. $
【解法3】令t=1/n，洛必达法则得
$ lim_(t->0)frac(tan(pi/4+2t)-1,t)=lim_(t->0)2sec^2(pi/4+2t)=4. $
结合(1+u)¹ᐟᵘ→e，也得e⁴. 本题可用三角恒等式、取对数或重要极限三种方式.
]

#answer("三（4）")[
令 $u=tan(x/2)$，则
$ I=1/4 integral (1+u^2)/u dif u=1/8 u^2+1/4 ln abs(u)+C. $
故 $I=1/8 tan^2(x/2)+1/4 ln abs(tan(x/2))+C$.
]

#answer("三（5）")[
$D_1=integral_0^a (x^2+1/2)dif x=a^3/3+a/2$，$D=a(a^2+1)/2$.故
$ D/D_1=3/2 (a^2+1)/(a^2+3/2)<3/2. $
]

#answer("四、")[
令 $f(x)=k x+1/x^2-1$，则 $f'=k-2/x^3$，$f''=6/x^4>0$.当 $k<=0$ 时，函数严格递减，从 $+infinity$ 趋于负值，恰有一根.当 $k>0$ 时，函数在 $x=(2/k)^(1/3)$ 处取得唯一极小值，两端趋于 $+infinity$；恰有一根等价于极小值为零，解得 $k=2sqrt(3)/9$.故 $k∈(-infinity,0]∪{2sqrt(3)/9}$.

【评析】必须分别讨论k≤0和k＞0. 仅令极小值为零会漏掉k≤0时严格递减且跨过零点的情形.
]

#answer("五、")[
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

#answer("六、")[
对应齐次通解为 $C_1 cos(a x)+C_2 sin(a x)$.当 $a≠1$ 时，待定系数法得特解 $sin x/(a^2-1)$；当 $a=1$ 时，特解为 $-x cos x/2$.故
$ y=cases(C_1 cos(a x)+C_2 sin(a x)+sin x/(a^2-1) & quad a≠1,C_1 cos x+C_2 sin x-x cos x/2 & quad a=1). $

【解法2】将sinx看作eⁱˣ的虚部，先求复系数方程 $z''+a^2 z=e^(i x)$ 的一个特解. a≠1时，取 $z=A e^(i x)$，代入得 $A=1/(a^2-1)$，取虚部即为sinx/(a²−1). a=1时，取 $z=A x e^(i x)$，代入得2iA=1，即A=−i/2，取虚部得到−xcosx/2. 加上齐次通解即得上述结果.
【评析】必须先判断强迫项的频率与特征根是否重合，不能漏掉a=1的共振情形.
]

#answer("七、")[
由单调性，$integral_0^lambda f(x)dif x>=lambda f(lambda)$，$integral_lambda^1 f(x)dif x<=(1-lambda)f(lambda)$.因此
$ integral_0^lambda f(x)dif x-lambda integral_0^1 f(x)dif x=(1-lambda)integral_0^lambda f(x)dif x-lambda integral_lambda^1 f(x)dif x>=0. $

【证法1】将两段积分分别用积分中值定理表示，
$ integral_0^lambda f(x)dif x-lambda integral_0^1 f(x)dif x=lambda(1-lambda)(f(xi_1)-f(xi_2))>=0, $
其中 $0<=xi_1<=lambda<=xi_2<=1$，最后一步由递减性.
【证法2】令 $F(lambda)=integral_0^lambda f(x)dif x-lambda integral_0^1 f(x)dif x$，则F(0)=F(1)=0. 由积分中值定理，$F'(lambda)=f(lambda)-f(xi)$，ξ∈[0,1]. 在ξ左侧F′非负，在右侧非正，因而F在两个端点零值之上，即F≥0.
]

#answer("八、")[
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

