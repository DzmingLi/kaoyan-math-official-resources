#import "../template.typ": exam
#show: exam.with(year: 1994, subject: "五", title: "1994年全国工学、经济学硕士研究生入学考试")
#import "@preview/ezexam:0.3.1" as ezexam
#import "@preview/cetz:0.5.2" as cetz
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(true)


= 一、填空题（15分，每小题3分）
#ezexam.counter-question.step()

（1）$integral_(-2)^2 (x+abs(x))/(2+x^2)dif x=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
奇函数部分积分为零，故原式 $=2integral_0^2 x/(2+x^2)dif x=ln 3$.
]

（2）已知 $f'(x_0)=-1$，则 $lim_(x arrow 0)x/(f(x_0-2x)-f(x_0-x))=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
由可导性，分母 $=-x f'(x_0)+o(x)=x+o(x)$，故极限为 $1$.
]

（3）设方程 $e^(x y)+y^2=cos x$ 确定 $y$ 为 $x$ 的函数，则 $(dif y)/(dif x)=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
两边求导得 $e^(x y)(y+x y')+2y y'=-sin x$，故 $y'=-(y e^(x y)+sin x)/(x e^(x y)+2y)$.
]

（4）设 $A=mat(0,a_1,0,dots,0;0,0,a_2,dots,0;dots,dots,dots,dots,dots;0,0,0,dots,a_(n-1);a_n,0,0,dots,0)$，其中 $a_i≠0$，$i=1,2,dots,n$，则 $A^(-1)=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
直接验证矩阵乘积为单位矩阵，得
$ A^(-1)=mat(0,0,dots,0,1/a_n;1/a_1,0,dots,0,0;0,1/a_2,dots,0,0;dots,dots,dots,dots,dots;0,0,dots,1/a_(n-1),0). $
]

（5）假设一批产品中一、二、三等品各占60%、30%、10%，从中随意取出一件，结果不是三等品，则取到的是一等品的概率为 #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
由条件概率，所求为 $0.6/(1-0.1)=2/3$.
]

= 二、选择题（15分，每小题3分）
#ezexam.counter-question.step()

（1）曲线 $y=e^(1/x^2)arctan((x^2+x-1)/((x+1)(x-2)))$ 的渐近线有（　）.
#choices[1条][2条][3条][4条]
#ezexam.solution(show-number: false)[
B.$x arrow ±infinity$ 时 $y arrow pi/4$，$x arrow 0$ 时 $y arrow +infinity$，而在 $x=-1,2$ 处单侧极限有限.故有 $y=pi/4$、$x=0$ 两条渐近线.
]

（2）设函数 $f(x)$ 在闭区间 $[a,b]$ 上连续，且 $f(x)>0$，则方程 $integral_a^x f(t)dif t+integral_b^x 1/f(t)dif t=0$ 在开区间 $(a,b)$ 内的根有（　）.
#choices[0个][1个][2个][无穷多个]
#ezexam.solution(show-number: false)[
B.左端记为 $F(x)$，则 $F(a)<0$、$F(b)>0$，且 $F'(x)=f(x)+1/f(x)>0$.由零点定理及严格单调性，恰有一根.
]

（3）设 $A,B$ 都是 $n$ 阶非零矩阵，且 $A B=0$，则 $A$ 和 $B$ 的秩（　）.
#choices[必有一个等于零][都小于 $n$][一个小于 $n$，一个等于 $n$][都等于 $n$]
#ezexam.solution(show-number: false)[
B.若其中之一可逆，等式即推出另一矩阵为零，矛盾.故均不可逆，秩均小于 $n$.
]

（4）设有向量组 $alpha_1=(1,-1,2,4)$、$alpha_2=(0,3,1,2)$、$alpha_3=(3,0,7,14)$、$alpha_4=(1,-2,2,0)$、$alpha_5=(2,1,5,10)$，则该向量组的极大线性无关组是（　）.
#choices[$alpha_1,alpha_2,alpha_3$][$alpha_1,alpha_2,alpha_4$][$alpha_1,alpha_2,alpha_5$][$alpha_1,alpha_2,alpha_4,alpha_5$]
#ezexam.solution(show-number: false)[
B.$alpha_3=3alpha_1+alpha_2$，$alpha_5=2alpha_1+alpha_2$，而 $alpha_1,alpha_2,alpha_4$ 线性无关，故为极大线性无关组.
]

（5）设 $0<P(A)<1$，$0<P(B)<1$，$P(A|B)+P(overline(A)|overline(B))=1$，则（　）.
#choices[事件 $A$ 和 $B$ 互不相容][事件 $A$ 和 $B$ 互相对立][事件 $A$ 和 $B$ 互不独立][事件 $A$ 和 $B$ 相互独立]
#ezexam.solution(show-number: false)[
D.条件等价于 $P(A|B)=P(A|overline(B))$.由全概率公式，这两者均等于 $P(A)$，故独立.
]

#ezexam.question(label: n => [三、])[
（5分）

求极限 $lim_(x arrow infinity)[x-x^2 ln(1+1/x)]$.
#ezexam.solution(show-number: false)[
令 $t=1/x$，则原式为 $lim_(t arrow 0)(t-ln(1+t))/t^2=1/2$.
]

]

#ezexam.question(label: n => [四、])[
（5分）

已知 $f(x,y)=x^2 arctan(y/x)-y^2 arctan(x/y)$，求 $(partial^2 f)/(partial x partial y)$.
#ezexam.solution(show-number: false)[
先求得 $f_x=2x arctan(y/x)-y$，再对 $y$ 求导，得 $f_(x y)=2x^2/(x^2+y^2)-1=(x^2-y^2)/(x^2+y^2)$.
]

]

#ezexam.question(label: n => [五、])[
（6分）

已知 $(sin x)/x$ 是函数 $f(x)$ 的一个原函数，求 $integral x^3 f'(x)dif x$.
#ezexam.solution(show-number: false)[
$f(x)=(x cos x-sin x)/x^2$.分部积分得
$ integral x^3 f'(x)dif x=x^3 f(x)-3integral x^2 f(x)dif x=x^2 cos x-4x sin x-6cos x+C. $
]

]

#ezexam.question(label: n => [六、])[
（8分）

某养殖场饲养两种鱼，若甲种鱼放养 $x$（万尾），乙种鱼放养 $y$（万尾），收获时两种鱼的收获量分别为 $(3-alpha x-beta y)x$ 和 $(4-beta x-2alpha y)y$（$alpha>beta>0$）.求使产鱼总量最大的放养数.
#ezexam.solution(show-number: false)[
总产量 $z=3x+4y-alpha x^2-2alpha y^2-2beta x y$.由 $z_x=3-2alpha x-2beta y=0$、$z_y=4-4alpha y-2beta x=0$，解得
$ x_0=(3alpha-2beta)/(2alpha^2-beta^2), quad y_0=(4alpha-3beta)/(2(2alpha^2-beta^2)). $
海森矩阵负定，因此此驻点为唯一最大值点.由 $alpha>beta>0$，两个放养数均为正，故分别按上述数值放养.
]

]

#ezexam.question(label: n => [七、])[
（8分）

已知曲线 $y=a sqrt(x)$（$a>0$）与曲线 $y=ln sqrt(x)$ 在点 $(x_0,y_0)$ 处有公共切线，求：

（1）常数 $a$ 及切点 $(x_0,y_0)$；

（2）两曲线与 $x$ 轴围成的平面图形的面积 $S$.
#ezexam.solution(show-number: false)[
（1）切线斜率相同给出 $a/(2sqrt(x_0))=1/(2x_0)$，结合 $a sqrt(x_0)=ln sqrt(x_0)$，得 $a=1/e$、$(x_0,y_0)=(e^2,1)$.

（2）按 $y$ 积分，两条边界为 $x=e^2 y^2$ 和 $x=e^(2y)$，故
$ S=integral_0^1 (e^(2y)-e^2 y^2)dif y=e^2/6-1/2. $
#cetz.canvas({
 import cetz.draw: *
 line((-.3,0),(4.4,0),mark:(end:"stealth")); content((4.5,0),$x$)
 line((0,-.6),(0,2),mark:(end:"stealth")); content((.15,2),$y$)
 line(..range(0,101).map(i=>{let x=calc.exp(2)*i/100; (x*.5,1.5*calc.sqrt(x)/calc.exp(1))}))
 line(..range(0,101).map(i=>{let x=.5+(calc.exp(2)-.5)*i/100; (x*.5,.75*calc.ln(x))}))
 line((0,1.5),(3.695,1.5),(3.695,0),stroke:(dash:"dashed"))
 content((3.7,-.2),$e^2$); content((.5,-.2),$1$); content((-.2,-.2),$O$)
 content((2.2,1.7),$y=e^(-1)sqrt(x)$); content((2,.65),$y=ln sqrt(x)$)
})
]

]

#ezexam.question(label: n => [八、])[
（7分）

设函数 $f(x)$ 可导，且 $f(0)=0$，$F(x)=integral_0^x t^(n-1)f(x^n-t^n)dif t$，证明 $lim_(x arrow 0)F(x)/x^(2n)=(f'(0))/(2n)$.
#ezexam.solution(show-number: false)[
令 $u=x^n-t^n$，得 $F(x)=1/n integral_0^(x^n) f(u)dif u$.由洛必达法则，
$ lim_(x arrow 0)F(x)/x^(2n)=1/(2n)lim_(x arrow 0)f(x^n)/x^n=(f'(0))/(2n). $
]

]

#ezexam.question(label: n => [九、])[
（8分）

设 $alpha_1,alpha_2,alpha_3$ 是齐次线性方程组 $A X=0$ 的一个基础解系.证明 $alpha_1+alpha_2,alpha_2+alpha_3,alpha_3+alpha_1$ 也是该方程组的一个基础解系.
#ezexam.solution(show-number: false)[
三向量均为原方程组的解，其关于原基础解系的系数矩阵为 $mat(1,0,1;1,1,0;0,1,1)$，行列式为2，故三向量线性无关.解空间维数为3，所以它们构成基础解系.
]

]

#ezexam.question(label: n => [十、])[
（8分）

设 $A=mat(0,0,1;x,1,y;1,0,0)$ 有三个线性无关的特征向量，求 $x$ 和 $y$ 应满足的条件.
#ezexam.solution(show-number: false)[
特征多项式为 $(lambda-1)^2(lambda+1)$.可对角化要求特征值1的特征子空间维数为2，即 $op("rank")(I-A)=1$.矩阵 $I-A$ 的非零行 $(1,0,-1)$、$(-x,0,-y)$ 成比例，等价于 $x+y=0$.这也是充分条件.
]

]

#ezexam.question(label: n => [十一、])[
（7分）

假设随机变量 $X$ 的概率密度为 $f(x)=cases(2x & quad 0<x<1,0 & quad "其他")$.现对 $X$ 进行 $n$ 次独立重复观测，以 $V_n$ 表示观测值不大于0.1的次数.试求随机变量 $V_n$ 的概率分布.
#ezexam.solution(show-number: false)[
一次观测成功的概率为 $P(X<=0.1)=integral_0^0.1 2x dif x=0.01$.因此 $V_n∼B(n,0.01)$，即 $P(V_n=m)=binom(n,m)0.01^m 0.99^(n-m)$，$m=0,1,dots,n$.
]

]

#ezexam.question(label: n => [十二、])[
（8分）

假设由自动线加工的某种零件的内径 $X$（毫米）服从正态分布 $N(mu,1)$，内径小于10或大于12的为不合格品，其余为合格品.销售每件合格品获利，每件不合格品亏损.销售利润 $T$（元）与内径 $X$ 的关系为
$ T=cases(-1 & quad X<10,20 & quad 10<=X<=12,-5 & quad X>12). $
问平均内径 $mu$ 取何值时，销售一个零件的平均利润最大？
#ezexam.solution(show-number: false)[
设标准正态分布函数及密度分别为 $Phi,phi$，则 $E T=25Phi(12-mu)-21Phi(10-mu)-5$.求导得 $(dif E T)/(dif mu)=-25phi(12-mu)+21phi(10-mu)$.令其为零，解得 $mu_0=11-1/2 ln(25/21)≈10.9$.导数在此点左侧为正、右侧为负，故平均内径取该值时平均利润最大.
]

]

