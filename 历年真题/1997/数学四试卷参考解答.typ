#import "../template.typ": exam
#show: exam.with(year: 1997, subject: "四", title: "1997年全国工学、经济学硕士研究生入学考试")
#import "@preview/ezexam:0.3.1" as ezexam
#import "@preview/cetz:0.5.2" as cetz
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(true)


= 一、填空题（15分，每小题3分）
#ezexam.counter-question.step()

（1）设 $y=f(ln x)e^(f(x))$，其中 $f$ 可微，则 $dif y=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
由乘积及链式求导法则，$dif y=e^(f(x))[(f'(ln x))/x+f'(x)f(ln x)]dif x$.
]

（2）设 $f(x)=1/(1+x^2)+x^3 integral_0^1 f(x)dif x$，则 $integral_0^1 f(x)dif x=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
记所求积分为 $I$，两边积分得 $I=pi/4+I/4$，故 $I=pi/3$.
]

（3）设 $n$ 阶矩阵
$ A=mat(0,1,1,dots,1,1;1,0,1,dots,1,1;1,1,0,dots,1,1;dots.v,dots.v,dots.v,dots.down,dots.v,dots.v;1,1,1,dots,0,1;1,1,1,dots,1,0), $
则 $det A=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
记全1矩阵为 $J$，则 $A=J-I$.$J$ 的特征值为 $n$ 和 $n-1$ 个0，故 $A$ 的特征值为 $n-1$ 和 $n-1$ 个 $-1$，从而 $det A=(-1)^(n-1)(n-1)$.
]

（4）设 $A,B$ 是任意两个随机事件，则 $P[(overline(A)+B)(A+B)(overline(A)+overline(B))(A+overline(B))]=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
前两因子的交为 $B$，后两因子的交为 $overline(B)$，整个事件为空集，概率为0.
]

（5）设随机变量 $X$ 服从参数为 $(2,p)$ 的二项分布，随机变量 $Y$ 服从参数为 $(3,p)$ 的二项分布.若 $P(X>=1)=5/9$，则 $P(Y>=1)=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$1-(1-p)^2=5/9$ 得 $p=1/3$.所以 $P(Y>=1)=1-(2/3)^3=19/27$.
]

= 二、选择题（15分，每小题3分）
#ezexam.counter-question.step()

（1）设 $f(x),phi(x)$ 在点 $x=0$ 的某邻域内连续，且当 $x arrow 0$ 时，$f(x)$ 是 $phi(x)$ 的高阶无穷小，则当 $x arrow 0$ 时，$integral_0^x f(t)sin t dif t$ 是 $integral_0^x t phi(t)dif t$ 的（　）.
#choices[低阶无穷小][高阶无穷小][同阶但不等价的无穷小][等价无穷小]
#ezexam.solution(show-number: false)[
B.由洛必达法则，两积分之比的极限为 $lim_(x arrow 0)(f(x)sin x)/(x phi(x))=lim_(x arrow 0)f(x)/phi(x) times (sin x)/x=0$.
]

（2）若 $f(-x)=f(x)$（$-infinity<x<+infinity$），在 $(-infinity,0)$ 内 $f'(x)>0$ 且 $f''(x)<0$，则在 $(0,+infinity)$ 内有（　）.
#choices[$f'(x)>0,f''(x)<0$][$f'(x)>0,f''(x)>0$][$f'(x)<0,f''(x)<0$][$f'(x)<0,f''(x)>0$]
#ezexam.solution(show-number: false)[
C.偶函数的一阶导数为奇函数、二阶导数为偶函数，故在正半轴 $f'<0$、$f''<0$.
]

（3）设向量组 $alpha_1,alpha_2,alpha_3$ 线性无关，则下列向量组中线性无关的是（　）.
#choices[$alpha_1+alpha_2,alpha_2+alpha_3,alpha_3-alpha_1$][$alpha_1+alpha_2,alpha_2+alpha_3,alpha_1+2alpha_2+alpha_3$][$alpha_1+2alpha_2,2alpha_2+3alpha_3,3alpha_3+alpha_1$][$alpha_1+alpha_2+alpha_3,2alpha_1-3alpha_2+22alpha_3,3alpha_1+5alpha_2-5alpha_3$]
#ezexam.solution(show-number: false)[
C.C项的系数矩阵行列式为 $det mat(1,0,1;2,2,0;0,3,3)=12≠0$.A项第三个向量为第二个减第一个，B项第三个为前两个之和，D项第三个为第一个的 $19/5$ 倍减第二个的 $2/5$ 倍，均相关.
]

（4）非齐次线性方程组 $A X=b$ 中未知量个数为 $n$，方程个数为 $m$，系数矩阵 $A$ 的秩为 $r$，则（　）.
#choices[$r=m$ 时，方程组 $A X=b$ 有解][$r=n$ 时，方程组 $A X=b$ 有唯一解][$m=n$ 时，方程组 $A X=b$ 有唯一解][$r<n$ 时，方程组 $A X=b$ 有无穷多解]
#ezexam.solution(show-number: false)[
A.$r=m$ 意味着列向量张成 $bold(upright(R))^m$，任意右端 $b$ 都可表示为这些列的线性组合，故有解.其余条件不能保证相容.
]

（5）设 $X$ 是一随机变量，$E X=mu$、$D X=sigma^2$（$mu,sigma>0$ 为常数），则对任意常数 $c$，必有（　）.
#choices[$E(X-c)^2=E X^2-c^2$][$E(X-c)^2=E(X-mu)^2$][$E(X-c)^2<E(X-mu)^2$][$E(X-c)^2>=E(X-mu)^2$]
#ezexam.solution(show-number: false)[
D.展开并用 $E(X-mu)=0$，得 $E(X-c)^2=sigma^2+(mu-c)^2>=sigma^2=E(X-mu)^2$.
]

#ezexam.question(label: n => [三、])[
（6分）

求极限 $lim_(x arrow 0)[a/x-(1/x^2-a^2)ln(1+a x)]$（$a≠0$）.
#ezexam.solution(show-number: false)[
写成 $[a x-ln(1+a x)]/x^2+a^2 ln(1+a x)$.第二项趋于0；第一项用 $ln(1+a x)=a x-a^2 x^2/2+o(x^2)$，极限为 $a^2/2$.
]

]

#ezexam.question(label: n => [四、])[
（6分）

设 $u=f(x,y,z)$ 有连续偏导数，$y=y(x)$ 和 $z=z(x)$ 分别由方程 $e^(x y)-y=0$ 和 $e^z-x z=0$ 所确定.求 $(dif u)/(dif x)$.
#ezexam.solution(show-number: false)[
隐式求导得 $y'=y^2/(1-x y)$、$z'=z/(x z-x)$.由复合函数求导法则，
$ (dif u)/(dif x)=(partial f)/(partial x)+y^2/(1-x y)(partial f)/(partial y)+z/(x z-x)(partial f)/(partial z). $
]

]

#ezexam.question(label: n => [五、])[
（6分）

假设某种商品的需求量 $Q$ 是单价 $p$（单位：元）的函数：$Q=12000-80p$；商品的总成本 $C$ 是需求量 $Q$ 的函数：$C=25000+50Q$；每单位商品需要纳税2元.试求使销售利润最大的商品单价和最大利润额.
#ezexam.solution(show-number: false)[
利润为 $R=(p-2)Q-C=-80p^2+16160p-649000$.令 $R'(p)=-160p+16160=0$，得 $p=101$.由于 $R''=-160<0$，该点取得最大值.因此最优单价为101元，最大利润为 $R(101)=167080$ 元.
]

]

#ezexam.question(label: n => [六、])[
（7分）

求曲线 $y=x^2-2x$、$y=0$、$x=1$、$x=3$ 所围成的平面图形的面积 $S$，并求该平面图形绕 $y$ 轴旋转一周所得旋转体的体积 $V$.
#ezexam.solution(show-number: false)[
按曲线与坐标轴的位置，将区域分成两部分.

#cetz.canvas({
 import cetz.draw: *
 let p(x,y)=(1.25*x,.85*y)
 let arc(lo,hi)=range(0,61).map(i=>{let x=lo+(hi - lo)*i/60; p(x,x*x - 2*x)})
 line(p(1,0),..arc(1,2),close:true,fill:luma(90%))
 line(p(2,0),..arc(2,3),p(3,0),close:true,fill:luma(90%))
 line(p(-.2,0),p(3.65,0),mark:(end:">"))
 line(p(0,-1.35),p(0,3.8),mark:(end:">"))
 line(..arc(0,3.1))
 content(p(-.15,-.15),$O$)
 for x in (1,2,3) {content(p(x,-.18),[#x])}
 content(p(3.65,-.16),$x$)
 content(p(-.14,3.8),$y$)
 content(p(1.45,-.45),$S_1$)
 content(p(2.7,1),$S_2$)
 content(p(1.75,2.4),$y=x^2-2x$)
})

在 $[1,2]$ 上曲线位于 $x$ 轴下方，在 $[2,3]$ 上位于其上方.故
$ S=integral_1^2 (2x-x^2)dif x+integral_2^3 (x^2-2x)dif x=2/3+4/3=2. $
用柱壳法计算旋转体积，
$ V=2pi[integral_1^2 x(2x-x^2)dif x+integral_2^3 x(x^2-2x)dif x]=9pi. $
]

]

#ezexam.question(label: n => [七、])[
（7分）

设函数 $f(x)$ 在 $(-infinity,+infinity)$ 内连续，且 $F(x)=integral_0^x (x-2t)f(t)dif t$.试证：

（1）若 $f(x)$ 为偶函数，则 $F(x)$ 也是偶函数；

（2）若 $f(x)$ 单调不增，则 $F(x)$ 单调不减.
#ezexam.solution(show-number: false)[
（1）在 $F(-x)$ 中令 $t=-u$，利用 $f(-u)=f(u)$，得
$ F(-x)=integral_0^x (x-2u)f(u)dif u=F(x). $
（2）求导得 $F'(x)=integral_0^x f(t)dif t-x f(x)=x[f(xi)-f(x)]$，其中 $xi$ 介于0与 $x$ 之间.$x>0$ 时两因子均非负；$x<0$ 时两因子均非正；$x=0$ 时导数为0.所以 $F'(x)>=0$，即 $F$ 单调不减.
]

]

#ezexam.question(label: n => [八、])[
（6分）

设 $D$ 是以点 $O(0,0)$、$A(1,2)$ 和 $B(2,1)$ 为顶点的三角形区域，求 $integral.double_D x dif x dif y$.
#ezexam.solution(show-number: false)[
三边所在直线为 $y=2x$、$y=x/2$ 和 $y=3-x$.在 $x=1$ 处分区，得

#cetz.canvas({
 import cetz.draw: *
 let p(x,y)=(1.6*x,1.6*y)
 line(p(0,0),p(1,2),p(1,.5),close:true,fill:luma(92%))
 line(p(1,.5),p(1,2),p(2,1),close:true,fill:luma(85%))
 line(p(-.15,0),p(2.6,0),mark:(end:">"))
 line(p(0,-.15),p(0,2.5),mark:(end:">"))
 line(p(0,2),p(1,2),stroke:(dash:"dashed"))
 line(p(2,0),p(2,1),stroke:(dash:"dashed"))
 line(p(1,0),p(1,.5))
 content(p(-.12,-.12),$O$)
 content(p(1,2.15),$A$)
 content(p(2.15,1.05),$B$)
 content(p(1,-.15),$P$)
 content(p(1.02,-.4),[1])
 content(p(2,-.15),[2])
 content(p(-.13,2),[2])
 content(p(-.13,1),[1])
 content(p(2.6,-.1),$x$)
 content(p(-.1,2.5),$y$)
 content(p(.68,.95),$D_1$)
 content(p(1.35,1.2),$D_2$)
})

$ I=integral_0^1 x dif x integral_(x/2)^(2x)dif y+integral_1^2 x dif x integral_(x/2)^(3-x)dif y $
$ =integral_0^1 3x^2/2 dif x+integral_1^2 (3x-3x^2/2)dif x=3/2. $
]

]

#ezexam.question(label: n => [九、])[
（7分）

设 $A$ 为 $n$ 阶非奇异矩阵，$alpha$ 为 $n$ 维列向量，$b$ 为常数.记分块矩阵
$ P=mat(I,0;-alpha^T A^*,det A), quad Q=mat(A,alpha;alpha^T,b), $
其中 $A^*$ 是矩阵 $A$ 的伴随矩阵，$I$ 为 $n$ 阶单位矩阵.

（1）计算并化简 $P Q$；

（2）证明：矩阵 $Q$ 可逆的充要条件是 $alpha^T A^(-1)alpha≠b$.
#ezexam.solution(show-number: false)[
（1）利用 $A^* A=(det A)I$，得
$ P Q=mat(A,alpha;0,(det A)(b-alpha^T A^(-1)alpha)). $
（2）因为 $det P=det A≠0$，上式取行列式得到
$ det Q=(det A)(b-alpha^T A^(-1)alpha). $
故 $det Q≠0$ 等价于 $alpha^T A^(-1)alpha≠b$，结论成立.
]

]

#ezexam.question(label: n => [十、])[
（9分）

设矩阵 $A$ 与 $B$ 相似，且
$ A=mat(1,-1,1;2,4,-2;-3,-3,a), quad B=mat(2,0,0;0,2,0;0,0,b). $
（1）求 $a,b$ 的值；

（2）求可逆矩阵 $P$，使 $P^(-1)A P=B$.
#ezexam.solution(show-number: false)[
（1）$A$ 的特征多项式为 $(lambda-2)[lambda^2-(a+3)lambda+3(a-1)]$.因2至少为二重特征值，代入后二次因子应为0，得 $a=5$.此时多项式为 $(lambda-2)^2(lambda-6)$，所以 $b=6$.

（2）特征值2的特征子空间基为 $(1,-1,0)^T$、$(1,0,1)^T$；特征值6的一个特征向量为 $(1,-2,3)^T$.故可取
$ P=mat(1,1,1;-1,0,-2;0,1,3), $
其列向量线性无关，且 $A P=P B$，因此 $P^(-1)A P=B$.
]

]

#ezexam.question(label: n => [十一、])[
（8分）

假设随机变量 $X$ 的绝对值不大于1，$P(X=-1)=1/8$、$P(X=1)=1/4$；在事件 $-1<X<1$ 出现的条件下，$X$ 在 $(-1,1)$ 内的任一子区间上取值的条件概率与该子区间长度成正比.试求：

（1）$X$ 的分布函数 $F(x)=P(X<=x)$；

（2）$X$ 取负值的概率 $p$.
#ezexam.solution(show-number: false)[
（1）区间内部概率为 $5/8$，条件分布为均匀分布，故
$ F(x)=cases(0 & quad x<-1,(5x+7)/16 & quad -1<=x<1,1 & quad x>=1). $
（2）由于0处无概率质量，$p=P(X<0)=F(0)=7/16$.
]

]

#ezexam.question(label: n => [十二、])[
（8分）

假设随机变量 $Y$ 服从参数为 $lambda=1$ 的指数分布，随机变量
$ X_k=cases(0 & quad Y<=k,1 & quad Y>k), quad k=1,2. $
（1）求 $X_1$ 和 $X_2$ 的联合概率分布；

（2）求 $E(X_1+X_2)$.
#ezexam.solution(show-number: false)[
（1）$P(Y>y)=e^(-y)$（$y>=0$）.按 $Y<=1$、$1<Y<=2$、$Y>2$ 分类，联合分布为
$ mat((X_1,X_2),(0,0),(0,1),(1,0),(1,1);P,1-e^(-1),0,e^(-1)-e^(-2),e^(-2)). $
（2）$E X_k=P(Y>k)=e^(-k)$，由期望的线性性，$E(X_1+X_2)=e^(-1)+e^(-2)$.
]

]

