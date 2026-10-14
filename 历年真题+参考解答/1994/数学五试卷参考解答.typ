#import "../template.typ": exam, answer
#show: exam.with(year: 1994, subject: "五", title: "1994年全国工学、经济学硕士研究生入学考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#import "@preview/cetz:0.5.2" as cetz
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 1994 数学五试卷参考解答

= 一、填空题

#answer("1（1）")[
奇函数部分积分为零，故原式 $=2integral_0^2 x/(2+x^2)dif x=ln 3$.
]

#answer("1（2）")[
由可导性，分母 $=-x f'(x_0)+o(x)=x+o(x)$，故极限为 $1$.
]

#answer("1（3）")[
两边求导得 $e^(x y)(y+x y')+2y y'=-sin x$，故 $y'=-(y e^(x y)+sin x)/(x e^(x y)+2y)$.
]

#answer("1（4）")[
直接验证矩阵乘积为单位矩阵，得
$ A^(-1)=mat(0,0,dots,0,1/a_n;1/a_1,0,dots,0,0;0,1/a_2,dots,0,0;dots,dots,dots,dots,dots;0,0,dots,1/a_(n-1),0). $
]

#answer("1（5）")[
由条件概率，所求为 $0.6/(1-0.1)=2/3$.
]

= 二、选择题

#answer("2（1）")[
B.$x arrow ±infinity$ 时 $y arrow pi/4$，$x arrow 0$ 时 $y arrow +infinity$，而在 $x=-1,2$ 处单侧极限有限.故有 $y=pi/4$、$x=0$ 两条渐近线.
]

#answer("2（2）")[
B.左端记为 $F(x)$，则 $F(a)<0$、$F(b)>0$，且 $F'(x)=f(x)+1/f(x)>0$.由零点定理及严格单调性，恰有一根.
]

#answer("2（3）")[
B.若其中之一可逆，等式即推出另一矩阵为零，矛盾.故均不可逆，秩均小于 $n$.
]

#answer("2（4）")[
B.$alpha_3=3alpha_1+alpha_2$，$alpha_5=2alpha_1+alpha_2$，而 $alpha_1,alpha_2,alpha_4$ 线性无关，故为极大线性无关组.
]

#answer("2（5）")[
D.条件等价于 $P(A|B)=P(A|overline(B))$.由全概率公式，这两者均等于 $P(A)$，故独立.
]

= 解答题

#answer("三、")[
令 $t=1/x$，则原式为 $lim_(t arrow 0)(t-ln(1+t))/t^2=1/2$.
]

#answer("四、")[
先求得 $f_x=2x arctan(y/x)-y$，再对 $y$ 求导，得 $f_(x y)=2x^2/(x^2+y^2)-1=(x^2-y^2)/(x^2+y^2)$.
]

#answer("五、")[
$f(x)=(x cos x-sin x)/x^2$.分部积分得
$ integral x^3 f'(x)dif x=x^3 f(x)-3integral x^2 f(x)dif x=x^2 cos x-4x sin x-6cos x+C. $

【解法2】由原函数关系直接求导，
$ f'(x)=frac(2sin x-2x cos x-x^2 sin x,x^3), $
所以
$ integral x^3 f'(x)dif x=integral(2sin x-2x cos x-x^2 sin x)dif x=x^2 cos x-4x sin x-6cos x+C. $
【分析】“sinx/x是f的原函数”意味着f=(sinx/x)′，不能把f误认成sinx/x.
]

#answer("六、")[
总产量 $z=3x+4y-alpha x^2-2alpha y^2-2beta x y$.由 $z_x=3-2alpha x-2beta y=0$、$z_y=4-4alpha y-2beta x=0$，解得
$ x_0=(3alpha-2beta)/(2alpha^2-beta^2), quad y_0=(4alpha-3beta)/(2(2alpha^2-beta^2)). $
海森矩阵负定，因此此驻点为唯一最大值点.由 $alpha>beta>0$，两个放养数均为正，故分别按上述数值放养.
]

#answer("七、")[
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

#answer("八、")[
令 $u=x^n-t^n$，得 $F(x)=1/n integral_0^(x^n) f(u)dif u$.由洛必达法则，
$ lim_(x arrow 0)F(x)/x^(2n)=1/(2n)lim_(x arrow 0)f(x^n)/x^n=(f'(0))/(2n). $

【分析】先以u=xⁿ−tⁿ换元，消去被积函数中的参数，再用积分上限函数求导及洛必达法则. 最后一个极限f(xⁿ)/xⁿ可以直接按f在0处的导数定义求出，只需f(0)=0和f′(0)存在.
]

#answer("九、")[
三向量均为原方程组的解，其关于原基础解系的系数矩阵为 $mat(1,0,1;1,1,0;0,1,1)$，行列式为2，故三向量线性无关.解空间维数为3，所以它们构成基础解系.
]

#answer("十、")[
特征多项式为 $(lambda-1)^2(lambda+1)$.可对角化要求特征值1的特征子空间维数为2，即 $op("rank")(I-A)=1$.矩阵 $I-A$ 的非零行 $(1,0,-1)$、$(-x,0,-y)$ 成比例，等价于 $x+y=0$.这也是充分条件.
]

#answer("十一、")[
一次观测成功的概率为 $P(X<=0.1)=integral_0^0.1 2x dif x=0.01$.因此 $V_n∼B(n,0.01)$，即 $P(V_n=m)=binom(n,m)0.01^m 0.99^(n-m)$，$m=0,1,dots,n$.
]

#answer("十二、")[
设标准正态分布函数及密度分别为 $Phi,phi$，则 $E T=25Phi(12-mu)-21Phi(10-mu)-5$.求导得 $(dif E T)/(dif mu)=-25phi(12-mu)+21phi(10-mu)$.令其为零，解得 $mu_0=11-1/2 ln(25/21)≈10.9$.导数在此点左侧为正、右侧为负，故平均内径取该值时平均利润最大.
]

