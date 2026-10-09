#import "../template.typ": exam
#show: exam.with(year: 1997, subject: "三", title: "1997年全国工学、经济学硕士研究生入学考试")
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

（2）若 $f(x)=1/(1+x^2)+sqrt(1-x^2)integral_0^1 f(x)dif x$，则 $integral_0^1 f(x)dif x=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
记所求积分为 $I$，两边在 $[0,1]$ 上积分得 $I=pi/4+pi/4 I$，故 $I=pi/(4-pi)$.
]

（3）差分方程 $y_(t+1)-y_t=t 2^t$ 的通解为#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
齐次解为常数 $C$.设特解 $(a t+b)2^t$，代入得 $a=1,b=-2$，故 $y_t=C+(t-2)2^t$.
]

（4）若二次型 $f(x_1,x_2,x_3)=2x_1^2+x_2^2+x_3^2+2x_1 x_2+t x_2 x_3$ 是正定的，则 $t$ 的取值范围是#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
矩阵为 $mat(2,1,0;1,1,t/2;0,t/2,1)$，顺序主子式分别为2、1、$1-t^2/2$，故 $-sqrt(2)<t<sqrt(2)$.
]

（5）设随机变量 $X$ 和 $Y$ 相互独立且都服从正态分布 $N(0,3^2)$，而 $X_1,dots,X_9$ 和 $Y_1,dots,Y_9$ 分别是来自总体 $X$ 和 $Y$ 的简单随机样本，则统计量 $U=(X_1+dots+X_9)/sqrt(Y_1^2+dots+Y_9^2)$ 服从#fillin(len: 4em)[]分布（2分），参数为#fillin(len: 4em)[]（1分）.
#ezexam.solution(show-number: false)[
令 $Z=(sum X_i)/9∼N(0,1)$，$V=(sum Y_i^2)/9∼chi^2(9)$，二者独立.$U=Z/sqrt(V/9)$，故服从自由度为9的 $t$ 分布.
]

= 二、选择题（15分，每小题3分）
#ezexam.counter-question.step()

（1）设 $f(x)=integral_0^(1-cos x)sin(t^2)dif t$，$g(x)=x^5/5+x^6/6$，则当 $x arrow 0$ 时，$f(x)$ 是 $g(x)$ 的（　）.
#choices[低阶无穷小][高阶无穷小][等价无穷小][同阶但不等价的无穷小]
#ezexam.solution(show-number: false)[
B.$f(x)∼(1-cos x)^3/3∼x^6/24$，而 $g(x)∼x^5/5$，所以 $f(x)/g(x)arrow 0$.
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

（4）设 $A,B$ 为同阶可逆矩阵，则（　）.
#choices[$A B=B A$][存在可逆矩阵 $P$，使 $P^(-1)A P=B$][存在可逆矩阵 $C$，使 $C^T A C=B$][存在可逆矩阵 $P$ 和 $Q$，使 $P A Q=B$]
#ezexam.solution(show-number: false)[
D.取 $P=B A^(-1)$、$Q=I$ 即可.
]

（5）设两个随机变量 $X$ 与 $Y$ 相互独立且同分布：$P(X=-1)=P(Y=-1)=1/2$，$P(X=1)=P(Y=1)=1/2$.则下列各式中成立的是（　）.
#choices[$P(X=Y)=1/2$][$P(X=Y)=1$][$P(X+Y=0)=1/4$][$P(X Y=1)=1/4$]
#ezexam.solution(show-number: false)[
A.四种组合等可能，$(1,1)$ 和 $(-1,-1)$ 满足 $X=Y$，故概率为 $1/2$.
]

#ezexam.question(label: n => [三、])[
（6分）

在经济学中，称函数
$ Q(x)=A[delta K^(-x)+(1-delta)L^(-x)]^(-1/x) $
为固定替代弹性生产函数，而称函数 $overline(Q)=A K^delta L^(1-delta)$ 为 Cobb–Douglas 生产函数（简称 C–D 生产函数）.试证明：当 $x arrow 0$ 时，固定替代弹性生产函数变为 C–D 生产函数，即有 $lim_(x arrow 0)Q(x)=overline(Q)$.
#ezexam.solution(show-number: false)[
取对数，$ln Q(x)=ln A-(ln[delta K^(-x)+(1-delta)L^(-x)])/x$.由洛必达法则，
$ lim_(x arrow 0)(ln[delta K^(-x)+(1-delta)L^(-x)])/x=-delta ln K-(1-delta)ln L. $
因此 $lim ln Q(x)=ln(A K^delta L^(1-delta))$，再取指数即得结论.
]

]

#ezexam.question(label: n => [四、])[
（5分）

设 $u=f(x,y,z)$ 有连续偏导数，$y=y(x)$ 和 $z=z(x)$ 分别由方程 $e^(x y)-y=0$ 和 $e^z-x z=0$ 所确定.求 $(dif u)/(dif x)$.
#ezexam.solution(show-number: false)[
隐式求导得 $y'=y^2/(1-x y)$、$z'=z/(x z-x)$.由复合函数求导法则，
$ (dif u)/(dif x)=(partial f)/(partial x)+y^2/(1-x y)(partial f)/(partial y)+z/(x z-x)(partial f)/(partial z). $
]

]

#ezexam.question(label: n => [五、])[
（6分）

一商家销售某种商品的价格满足关系 $p=7-0.2x$（万元/吨），$x$ 为销售量（单位：吨），商品的成本函数是 $C=3x+1$（万元）.

（1）若每销售一吨商品，政府要征税 $t$（万元），求该商家获最大利润时的销售量；

（2）$t$ 为何值时，政府税收总额最大？
#ezexam.solution(show-number: false)[
（1）税后利润 $R=-0.2x^2+(4-t)x-1$.当 $0<=t<4$ 时，最大利润对应 $x=5/2 (4-t)$ 吨；$t>=4$ 时最优销量为0.

（2）在 $0<=t<=4$ 时，总税额 $T=t x=10t-5t^2/2$，在 $t=2$ 时最大；更高税率下销量为0.因此应取 $t=2$ 万元/吨.
]

]

#ezexam.question(label: n => [六、])[
（6分）

设函数 $f(x)$ 在 $[0,+infinity)$ 上连续、单调不减且 $f(0)>=0$.试证函数
$ F(x)=cases(1/x integral_0^x t^n f(t)dif t & quad x>0,0 & quad x=0) $
在 $[0,+infinity)$ 上连续且单调不减，其中 $n>0$.
#ezexam.solution(show-number: false)[
当 $x>0$ 时显然连续.在0处，$0<=F(x)<=f(x)x^n/(n+1)arrow 0$，所以也连续.又因 $t^n f(t)$ 非负且单调不减，
$ F'(x)=(integral_0^x [x^n f(x)-t^n f(t)]dif t)/x^2>=0. $
结合 $F(0)=0<=F(x)$，可知 $F$ 在整个区间上单调不减.
]

]

#ezexam.question(label: n => [七、])[
（6分）

从点 $P_1(1,0)$ 作 $x$ 轴的垂线，交抛物线 $y=x^2$ 于点 $Q_1(1,1)$；再从 $Q_1$ 作这条抛物线的切线与 $x$ 轴交于 $P_2$.然后又从 $P_2$ 作 $x$ 轴的垂线，交抛物线于点 $Q_2$，依次重复上述过程得到一系列的点 $P_1,Q_1;P_2,Q_2;dots;P_n,Q_n;dots$.

（1）求 $overline(O P_n)$；

（2）求级数 $overline(Q_1 P_1)+overline(Q_2 P_2)+dots+overline(Q_n P_n)+dots$ 的和.

其中 $n>=1$ 为自然数，$overline(M_1 M_2)$ 表示点 $M_1$ 与 $M_2$ 之间的距离.
#ezexam.solution(show-number: false)[
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

]

#ezexam.question(label: n => [八、])[
（6分）

设函数 $f(t)$ 在 $[0,+infinity)$ 上连续，且满足方程
$ f(t)=e^(4pi t^2)+integral.double_(x^2+y^2<=4t^2)f(1/2 sqrt(x^2+y^2))dif x dif y. $
求 $f(t)$.
#ezexam.solution(show-number: false)[
利用极坐标，原方程化为 $f(t)=e^(4pi t^2)+2pi integral_0^(2t)r f(r/2)dif r$，且 $f(0)=1$.求导得
$ f'(t)-8pi t f(t)=8pi t e^(4pi t^2). $
乘以积分因子 $e^(-4pi t^2)$，得 $(e^(-4pi t^2)f(t))'=8pi t$.积分并代入初值，得 $f(t)=(1+4pi t^2)e^(4pi t^2)$.
]

]

#ezexam.question(label: n => [九、])[
（6分）

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
（10分）

设三阶实对称矩阵 $A$ 的特征值是1、2、3；矩阵 $A$ 属于特征值1、2的特征向量分别是 $alpha_1=(-1,-1,1)^T$、$alpha_2=(1,-2,-1)^T$.

（1）求 $A$ 属于特征值3的特征向量；

（2）求矩阵 $A$.
#ezexam.solution(show-number: false)[
（1）实对称矩阵不同特征值的特征向量正交.解 $alpha_1^T alpha_3=alpha_2^T alpha_3=0$，得 $alpha_3=k(1,0,1)^T$，$k≠0$.

（2）取 $P=mat(-1,1,1;-1,-2,0;1,-1,1)$，则
$ P^(-1)=mat(-1/3,-1/3,1/3;1/6,-1/3,-1/6;1/2,0,1/2). $
于是
$ A=P op("diag")(1,2,3)P^(-1)=1/6 mat(13,-2,5;-2,10,2;5,2,13). $
]

]

#ezexam.question(label: n => [十一、])[
（7分）

假设随机变量 $X$ 的绝对值不大于1，$P(X=-1)=1/8$、$P(X=1)=1/4$；在事件 $-1<X<1$ 出现的条件下，$X$ 在 $(-1,1)$ 内的任一子区间上取值的条件概率与该子区间长度成正比.试求 $X$ 的分布函数 $F(x)=P(X<=x)$.
#ezexam.solution(show-number: false)[
区间内部的总概率为 $1-1/8-1/4=5/8$，条件分布为 $(-1,1)$ 上的均匀分布.所以当 $-1<=x<1$ 时，$F(x)=1/8+5/8 times (x+1)/2$.即
$ F(x)=cases(0 & quad x<-1,(5x+7)/16 & quad -1<=x<1,1 & quad x>=1). $
]

]

#ezexam.question(label: n => [十二、])[
（6分）

游客乘电梯从底层到电视塔顶层观光；电梯于每个整点的第5分钟、25分钟和55分钟从底层起行.假设一游客在早八点的第 $X$ 分钟到达底层候梯处，且 $X$ 在 $[0,60]$ 上均匀分布.求该游客等候时间的数学期望.
#ezexam.solution(show-number: false)[
记等候时间为 $Y$（分钟），有
$ Y=cases(5-X & quad 0<=X<=5,25-X & quad 5<X<=25,55-X & quad 25<X<=55,65-X & quad 55<X<=60). $
因此
$ E Y=1/60 [integral_0^5 (5-x)dif x+integral_5^25 (25-x)dif x $
$ +integral_25^55 (55-x)dif x+integral_55^60 (65-x)dif x]=35/3≈11.67. $
平均等候时间为 $35/3$ 分钟.
]

]

#ezexam.question(label: n => [十三、])[
（6分）

两台同样自动记录仪，每台无故障工作的时间服从参数为5的指数分布；首先开动其中一台，当其发生故障时停用，而另一台自行开动.试求两台记录仪无故障工作的总时间 $T$ 的概率密度 $f(t)$、数学期望和方差.
#ezexam.solution(show-number: false)[
按两台记录仪寿命独立的模型，设 $T=X_1+X_2$，两寿命均服从参数为5的指数分布.用卷积公式，$t>0$ 时
$ f(t)=integral_0^t 5e^(-5x)5e^(-5(t-x))dif x=25t e^(-5t). $
故 $f(t)=cases(25t e^(-5t) & quad t>0,0 & quad t<=0)$，且
$ E T=1/5+1/5=2/5, quad D T=1/25+1/25=2/25. $
]

]

