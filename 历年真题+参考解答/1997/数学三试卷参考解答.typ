#import "../template.typ": exam, answer
#show: exam.with(year: 1997, subject: "三", title: "1997年全国工学、经济学硕士研究生入学考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#import "@preview/cetz:0.5.2" as cetz
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 1997 数学三试卷参考解答

= 一、填空题

#answer("1（1）")[
由乘积及链式求导法则，$dif y=e^(f(x))[(f'(ln x))/x+f'(x)f(ln x)]dif x$.
]

#answer("1（2）")[
记所求积分为 $I$，两边在 $[0,1]$ 上积分得 $I=pi/4+pi/4 I$，故 $I=pi/(4-pi)$.
]

#answer("1（3）")[
齐次解为常数 $C$.设特解 $(a t+b)2^t$，代入得 $a=1,b=-2$，故 $y_t=C+(t-2)2^t$.

【另法】按差分方程逐项相加，
$ y_t=y_1+sum_(k=1)^(t-1)k 2^k. $
设 $s(t)=sum_(k=1)^(t-1)k 2^k$，错位相减得 $s(t)=2s(t)-(t-1)2^t+2^t-2$，故s(t)=(t−2)2ᵗ+2. 将常数y₁+2记为C，即得同一通解.
]

#answer("1（4）")[
矩阵为 $mat(2,1,0;1,1,t/2;0,t/2,1)$，顺序主子式分别为2、1、$1-t^2/2$，故 $-sqrt(2)<t<sqrt(2)$.
]

#answer("1（5）")[
令 $Z=(sum X_i)/9∼N(0,1)$，$V=(sum Y_i^2)/9∼chi^2(9)$，二者独立.$U=Z/sqrt(V/9)$，故服从自由度为9的 $t$ 分布.
]

= 二、选择题

#answer("2（1）")[
B.$f(x)∼(1-cos x)^3/3∼x^6/24$，而 $g(x)∼x^5/5$，所以 $f(x)/g(x)arrow 0$.

【分析】先求f/g之比，再依次利用积分上限函数求导、洛必达法则和sinx∼x，将极限化为
$ lim_(x->0)frac(sin(1-cos x)^2,x^3+x^4)=lim_(x->0)frac(2(1-cos x),3x+4x^2)=lim_(x->0)frac(2sin x,3+8x)=0. $
故f为g的高阶无穷小量.
]

#answer("2（2）")[
C.偶函数的一阶导数为奇函数、二阶导数为偶函数，故在正半轴 $f'<0$、$f''<0$.
]

#answer("2（3）")[
C.C项的系数矩阵行列式为 $det mat(1,0,1;2,2,0;0,3,3)=12≠0$.A项第三个向量为第二个减第一个，B项第三个为前两个之和，D项第三个为第一个的 $19/5$ 倍减第二个的 $2/5$ 倍，均相关.
]

#answer("2（4）")[
D.取 $P=B A^(-1)$、$Q=I$ 即可.
]

#answer("2（5）")[
A.四种组合等可能，$(1,1)$ 和 $(-1,-1)$ 满足 $X=Y$，故概率为 $1/2$.
]

= 解答题

#answer("三、")[
取对数，$ln Q(x)=ln A-(ln[delta K^(-x)+(1-delta)L^(-x)])/x$.由洛必达法则，
$ lim_(x arrow 0)(ln[delta K^(-x)+(1-delta)L^(-x)])/x=-delta ln K-(1-delta)ln L. $
因此 $lim ln Q(x)=ln(A K^delta L^(1-delta))$，再取指数即得结论.
]

#answer("四、")[
隐式求导得 $y'=y^2/(1-x y)$、$z'=z/(x z-x)$.由复合函数求导法则，
$ (dif u)/(dif x)=(partial f)/(partial x)+y^2/(1-x y)(partial f)/(partial y)+z/(x z-x)(partial f)/(partial z). $
]

#answer("五、")[
（1）税后利润 $R=-0.2x^2+(4-t)x-1$.当 $0<=t<4$ 时，最大利润对应 $x=5/2 (4-t)$ 吨；$t>=4$ 时最优销量为0.

（2）在 $0<=t<=4$ 时，总税额 $T=t x=10t-5t^2/2$，在 $t=2$ 时最大；更高税率下销量为0.因此应取 $t=2$ 万元/吨.

【分析】先写总收入R=px，总成本C及总税额T=tx，利润是R−C−T. 第（1）问解出的最优销量x₀依赖税率t；第（2）问应把x₀(t)代回T，再对t求最大值. 不可在求税收最大值时把销量当作不随税率改变的常数.
]

#answer("六、")[
当 $x>0$ 时显然连续.在0处，$0<=F(x)<=f(x)x^n/(n+1)arrow 0$，所以也连续.又因 $t^n f(t)$ 非负且单调不减，
$ F'(x)=(integral_0^x [x^n f(x)-t^n f(t)]dif t)/x^2>=0. $
结合 $F(0)=0<=F(x)$，可知 $F$ 在整个区间上单调不减.

【证法1】在0处用洛必达法则：
$ lim_(x->0^+)frac(integral_0^x t^n f(t)dif t,x)=lim_(x->0^+)x^n f(x)=0=F(0). $
对x＞0，积分中值定理给出0＜ξ＜x，使
$ F'(x)=frac(x^n f(x)-xi^n f(xi),x)=frac(x^n(f(x)-f(xi))+f(xi)(x^n-xi^n),x)>=0. $
因为f(ξ)≥f(0)≥0且f单调不减，各项均非负. 【证法2】直接把分子写成积分差，即正文中的积分表达式，也得到F′≥0.
]

#answer("七、")[
（1）在 $(a,a^2)$ 处的切线为 $y-a^2=2a(x-a)$，与 $x$ 轴相交于 $(a/2,0)$.因此 $overline(O P_n)=2^(-(n-1))$.

#cetz.canvas({
 import cetz.draw: *
 let p(x,y)=(4*x,3*y)
 line(p(-.08,0),p(1.2,0),mark:(end:">"))
 line(p(0,-.08),p(0,1.35),mark:(end:">"))
 line(..range(0,111).map(i=>{let x=i/100; p(x,x*x)}))
 for (a,n) in ((1,1),(.5,2),(.25,3)) {
  line(p(a,0),p(a,a*a),stroke:(dash:"dashed"))
  line(p(a/2,0),p(a+.05,2*a*(a+.05) - a*a))
  content(p(a,-.08),$P_#n$)
  content(p(a - .08,a*a+.055),$Q_#n$)
 }
 content(p(-.05,-.06),$O$)
 content(p(1.2,-.07),$x$)
 content(p(-.06,1.35),$y$)
 content(p(.95,1.3),$y=x^2$)
})

（2）$overline(Q_n P_n)=(overline(O P_n))^2=4^(-(n-1))$，故级数的和为 $1/(1-1/4)=4/3$.
]

#answer("八、")[
利用极坐标，原方程化为 $f(t)=e^(4pi t^2)+2pi integral_0^(2t)r f(r/2)dif r$，且 $f(0)=1$.求导得
$ f'(t)-8pi t f(t)=8pi t e^(4pi t^2). $
乘以积分因子 $e^(-4pi t^2)$，得 $(e^(-4pi t^2)f(t))'=8pi t$.积分并代入初值，得 $f(t)=(1+4pi t^2)e^(4pi t^2)$.

【分析】积分区域为半径2t的圆盘，被积函数只依赖到原点的距离，先用极坐标将二重积分化为变上限的一重积分，再对t求导得到一阶线性微分方程. 初值f(0)=1来自原方程，不能只解微分方程而漏掉它.
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
（1）实对称矩阵不同特征值的特征向量正交.解 $alpha_1^T alpha_3=alpha_2^T alpha_3=0$，得 $alpha_3=k(1,0,1)^T$，$k≠0$.

（2）取 $P=mat(-1,1,1;-1,-2,0;1,-1,1)$，则
$ P^(-1)=mat(-1/3,-1/3,1/3;1/6,-1/3,-1/6;1/2,0,1/2). $
于是
$ A=P op("diag")(1,2,3)P^(-1)=1/6 mat(13,-2,5;-2,10,2;5,2,13). $
]

#answer("十一、")[
区间内部的总概率为 $1-1/8-1/4=5/8$，条件分布为 $(-1,1)$ 上的均匀分布.所以当 $-1<=x<1$ 时，$F(x)=1/8+5/8 times (x+1)/2$.即
$ F(x)=cases(0 & quad x<-1,(5x+7)/16 & quad -1<=x<1,1 & quad x>=1). $

【分析】区间内部的条件分布是均匀分布，而不是X的整个分布均匀. 对−1≤x＜1，由条件概率公式，
$ P(-1<X<=x)=P(-1<X<1)P(-1<X<=x|-1<X<1)=5/8 dot (x+1)/2. $
加上−1处的概率质量1/8，得F(x)=(5x+7)/16. 在1处还有1/4的跳跃，故x≥1时F(x)=1.
]

#answer("十二、")[
记等候时间为 $Y$（分钟），有
$ Y=cases(5-X & quad 0<=X<=5,25-X & quad 5<X<=25,55-X & quad 25<X<=55,65-X & quad 55<X<=60). $
因此
$ E Y=1/60 [integral_0^5 (5-x)dif x+integral_5^25 (25-x)dif x $
$ +integral_25^55 (55-x)dif x+integral_55^60 (65-x)dif x]=35/3≈11.67. $
平均等候时间为 $35/3$ 分钟.


]

#answer("十三、")[
按两台记录仪寿命独立的模型，设 $T=X_1+X_2$，两寿命均服从参数为5的指数分布.用卷积公式，$t>0$ 时
$ f(t)=integral_0^t 5e^(-5x)5e^(-5(t-x))dif x=25t e^(-5t). $
故 $f(t)=cases(25t e^(-5t) & quad t>0,0 & quad t<=0)$，且
$ E T=1/5+1/5=2/5, quad D T=1/25+1/25=2/25. $

【分析】把先后启动的两台记录仪各自的无故障时间记作X₁、X₂，则总时间T=X₁+X₂. 两台独立，可用卷积求密度；卷积中同时要求x＞0和t−x＞0，所以积分区间为0＜x＜t. 求期望和方差时，分别用可加性和独立性.
]

