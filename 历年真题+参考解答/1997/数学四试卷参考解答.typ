#import "../template.typ": exam, answer
#show: exam.with(year: 1997, subject: "四", title: "1997年全国工学、经济学硕士研究生入学考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#import "@preview/cetz:0.5.2" as cetz
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 1997 数学四试卷参考解答

= 一、填空题

#answer("1（1）")[
由乘积及链式求导法则，$dif y=e^(f(x))[(f'(ln x))/x+f'(x)f(ln x)]dif x$.
]

#answer("1（2）")[
记所求积分为 $I$，两边积分得 $I=pi/4+I/4$，故 $I=pi/3$.
]

#answer("1（3）")[
记全1矩阵为 $J$，则 $A=J-I$.$J$ 的特征值为 $n$ 和 $n-1$ 个0，故 $A$ 的特征值为 $n-1$ 和 $n-1$ 个 $-1$，从而 $det A=(-1)^(n-1)(n-1)$.

【原书行变换法】将各行加到第一行，提出公因子n−1，使第一行全为1. 再用第二至第n行分别减去第一行，得到下三角矩阵，其后n−1个对角元都是−1，故行列式为(−1)ⁿ⁻¹(n−1).
]

#answer("1（4）")[
前两因子的交为 $B$，后两因子的交为 $overline(B)$，整个事件为空集，概率为0.
]

#answer("1（5）")[
$1-(1-p)^2=5/9$ 得 $p=1/3$.所以 $P(Y>=1)=1-(2/3)^3=19/27$.
]

= 二、选择题

#answer("2（1）")[
B.由洛必达法则，两积分之比的极限为 $lim_(x arrow 0)(f(x)sin x)/(x phi(x))=lim_(x arrow 0)f(x)/phi(x) times (sin x)/x=0$.
]

#answer("2（2）")[
C.偶函数的一阶导数为奇函数、二阶导数为偶函数，故在正半轴 $f'<0$、$f''<0$.
]

#answer("2（3）")[
C.C项的系数矩阵行列式为 $det mat(1,0,1;2,2,0;0,3,3)=12≠0$.A项第三个向量为第二个减第一个，B项第三个为前两个之和，D项第三个为第一个的 $19/5$ 倍减第二个的 $2/5$ 倍，均相关.
]

#answer("2（4）")[
A.$r=m$ 意味着列向量张成 $bold(upright(R))^m$，任意右端 $b$ 都可表示为这些列的线性组合，故有解.其余条件不能保证相容.
]

#answer("2（5）")[
D.展开并用 $E(X-mu)=0$，得 $E(X-c)^2=sigma^2+(mu-c)^2>=sigma^2=E(X-mu)^2$.
]

= 解答题

#answer("三、")[
写成 $[a x-ln(1+a x)]/x^2+a^2 ln(1+a x)$.第二项趋于0；第一项用 $ln(1+a x)=a x-a^2 x^2/2+o(x^2)$，极限为 $a^2/2$.

【原书解法】分开趋于零的第二项，再用洛必达法则，
$ lim_(x->0)frac(a x-ln(1+a x),x^2)=lim_(x->0)frac(a-a/(1+a x),2x)=lim_(x->0)frac(a^2,2(1+a x))=a^2/2. $
先拆项能避免对复杂乘积连续求导.
]

#answer("四、")[
隐式求导得 $y'=y^2/(1-x y)$、$z'=z/(x z-x)$.由复合函数求导法则，
$ (dif u)/(dif x)=(partial f)/(partial x)+y^2/(1-x y)(partial f)/(partial y)+z/(x z-x)(partial f)/(partial z). $
]

#answer("五、")[
利润为 $R=(p-2)Q-C=-80p^2+16160p-649000$.令 $R'(p)=-160p+16160=0$，得 $p=101$.由于 $R''=-160<0$，该点取得最大值.因此最优单价为101元，最大利润为 $R(101)=167080$ 元.
]

#answer("六、")[
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

【原书截面法】以y为积分变量分开两个旋转体，
$ V_1=pi integral_(-1)^0(1+sqrt(1+y))^2 dif y-pi=11pi/6, $
$ V_2=27pi-pi integral_0^3(1+sqrt(1+y))^2 dif y=43pi/6. $
故总体积V=V₁+V₂=9π. 两部分的截面不同，不能直接把曲线平方后套用绕x轴旋转的公式.
]

#answer("七、")[
（1）在 $F(-x)$ 中令 $t=-u$，利用 $f(-u)=f(u)$，得
$ F(-x)=integral_0^x (x-2u)f(u)dif u=F(x). $
（2）求导得 $F'(x)=integral_0^x f(t)dif t-x f(x)=x[f(xi)-f(x)]$，其中 $xi$ 介于0与 $x$ 之间.$x>0$ 时两因子均非负；$x<0$ 时两因子均非正；$x=0$ 时导数为0.所以 $F'(x)>=0$，即 $F$ 单调不减.
]

#answer("八、")[
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

#answer("九、")[
（1）利用 $A^* A=(det A)I$，得
$ P Q=mat(A,alpha;0,(det A)(b-alpha^T A^(-1)alpha)). $
（2）因为 $det P=det A≠0$，上式取行列式得到
$ det Q=(det A)(b-alpha^T A^(-1)alpha). $
故 $det Q≠0$ 等价于 $alpha^T A^(-1)alpha≠b$，结论成立.

【分析】先按分块矩阵乘法计算PQ，注意矩阵、向量和标量的尺寸. 利用 $A^* A=(det A)I$消去左下块，右下块也应化为标量. 再用块三角矩阵的行列式等于对角块行列式之积，结合det(PQ)=detP·detQ，得到可逆条件.
]

#answer("十、")[
（1）$A$ 的特征多项式为 $(lambda-2)[lambda^2-(a+3)lambda+3(a-1)]$.因2至少为二重特征值，代入后二次因子应为0，得 $a=5$.此时多项式为 $(lambda-2)^2(lambda-6)$，所以 $b=6$.

（2）特征值2的特征子空间基为 $(1,-1,0)^T$、$(1,0,1)^T$；特征值6的一个特征向量为 $(1,-2,3)^T$.故可取
$ P=mat(1,1,1;-1,0,-2;0,1,3), $
其列向量线性无关，且 $A P=P B$，因此 $P^(-1)A P=B$.
]

#answer("十一、")[
（1）区间内部概率为 $5/8$，条件分布为均匀分布，故
$ F(x)=cases(0 & quad x<-1,(5x+7)/16 & quad -1<=x<1,1 & quad x>=1). $
（2）由于0处无概率质量，$p=P(X<0)=F(0)=7/16$.

【分析】区间内部的条件分布是均匀分布，而不是X的整个分布均匀. 对−1≤x＜1，由条件概率公式，
$ P(-1<X<=x)=P(-1<X<1)P(-1<X<=x|-1<X<1)=5/8 dot (x+1)/2. $
加上−1处的概率质量1/8，得F(x)=(5x+7)/16. 在1处还有1/4的跳跃，故x≥1时F(x)=1.
]

#answer("十二、")[
（1）$P(Y>y)=e^(-y)$（$y>=0$）.按 $Y<=1$、$1<Y<=2$、$Y>2$ 分类，联合分布为
$ mat((X_1,X_2),(0,0),(0,1),(1,0),(1,1);P,1-e^(-1),0,e^(-1)-e^(-2),e^(-2)). $
（2）$E X_k=P(Y>k)=e^(-k)$，由期望的线性性，$E(X_1+X_2)=e^(-1)+e^(-2)$.

【分析】X₁和X₂由同一个Y决定，不能按独立随机变量计算联合概率. 因X₂=1必有X₁=1，故(0,1)的概率为0. 另外，求和的期望只用线性性，不需要独立性.
]

