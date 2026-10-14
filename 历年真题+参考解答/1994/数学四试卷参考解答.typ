#import "../template.typ": exam, answer
#show: exam.with(year: 1994, subject: "四", title: "1994年全国工学、经济学硕士研究生入学考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#import "@preview/cetz:0.5.2" as cetz
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 1994 数学四试卷参考解答

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
$P(X<=1/2)=integral_0^(1/2)2x dif x=1/4$，故 $Y∼B(3,1/4)$，$P(Y=2)=binom(3,2)(1/4)^2(3/4)=9/64$.
]

= 二、选择题

#answer("2（1）")[
B.$x arrow ±infinity$ 时 $y arrow pi/4$，$x arrow 0$ 时 $y arrow +infinity$，而在 $x=-1,2$ 处单侧极限有限.故有 $y=pi/4$、$x=0$ 两条渐近线.
]

#answer("2（2）")[
C.由 $abs(a_n)/sqrt(n^2+lambda)<=1/2(a_n^2+1/(n^2+lambda))$ 及比较判别法，知绝对值级数收敛.
]

#answer("2（3）")[
C.矩阵右乘可逆矩阵不改变秩.
]

#answer("2（4）")[
D.条件等价于 $P(A|B)=P(A|overline(B))$.由全概率公式，这两者均等于 $P(A)$，故独立.
]

#answer("2（5）")[
B.标准统计量为 $(overline(X)-mu)/(S_1/sqrt(n))$，而 $S_2/sqrt(n-1)=S_1/sqrt(n)$.
]

= 解答题

#answer("三、")[
配方得 $(x-1/2)^2+(y-1/2)^2<=3/2$.令 $u=x-1/2$、$v=y-1/2$，则对称性使 $u,v$ 的积分均为零，故积分等于圆盘面积 $3pi/2$.

【原书极坐标法】令x−1/2=rcosθ、y−1/2=rsinθ，区域为0≤r≤√(3/2)、0≤θ≤2π，
$ I=integral_0^(sqrt(3/2))r dif r integral_0^(2pi)(1+r cos theta+r sin theta)dif theta=3pi/2. $
移轴后再转极坐标，面积因子r不可漏掉.
]

#answer("四、")[
特征方程有二重根 $-2$，通解为 $(C_1+C_2 x)e^(-2x)$.由初值得 $C_1=2$、$C_2=0$，故积分为 $integral_0^infinity 2e^(-2x)dif x=1$.
]

#answer("五、")[
先求得 $f_x=2x arctan(y/x)-y$，再对 $y$ 求导，得 $f_(x y)=2x^2/(x^2+y^2)-1=(x^2-y^2)/(x^2+y^2)$.
]

#answer("六、")[
令 $u=x^n-t^n$，得 $F(x)=1/n integral_0^(x^n) f(u)dif u$.由洛必达法则，
$ lim_(x arrow 0)F(x)/x^(2n)=1/(2n)lim_(x arrow 0)f(x^n)/x^n=(f'(0))/(2n). $

【分析】先以u=xⁿ−tⁿ换元，消去被积函数中的参数，再用积分上限函数求导及洛必达法则. 最后一个极限f(xⁿ)/xⁿ可以直接按f在0处的导数定义求出，只需f(0)=0和f′(0)存在.
]

#answer("七、")[
（1）切线斜率相同给出 $a/(2sqrt(x_0))=1/(2x_0)$，结合 $a sqrt(x_0)=ln sqrt(x_0)$，得 $a=1/e$、$(x_0,y_0)=(e^2,1)$.

（2）由截面圆环法，
$ V_x=pi integral_0^(e^2) x/e^2 dif x-pi/4 integral_1^(e^2)(ln x)^2 dif x=pi/2. $
对应两条母线及旋转截面如下.
#cetz.canvas({
 import cetz.draw: *
 line((-.3,0),(4.4,0),mark:(end:"stealth")); content((4.5,0),$x$)
 line((0,-1.8),(0,2),mark:(end:"stealth")); content((.15,2),$y$)
 for sign in (-1,1) {
  line(..range(0,101).map(i=>{let x=calc.exp(2)*i/100; (x*.5,sign*1.5*calc.sqrt(x)/calc.exp(1))}))
  line(..range(0,101).map(i=>{let x=1+(calc.exp(2)-1)*i/100; (x*.5,sign*.75*calc.ln(x))}),stroke:(dash:"dashed"))
 }
 circle((calc.exp(2)*.5,0),radius:(.25,1.5))
 content((3.7,-.2),$e^2$); content((.5,-.2),$1$); content((-.2,-.2),$O$)
 content((2.2,1.55),$y=e^(-1)sqrt(x)$); content((2,-1.6),$y=ln sqrt(x)$)
})
]

#answer("八、")[
由拉格朗日中值定理，$F(x)=f'(xi)$，$a<xi<x$.于是 $F'(x)=(f'(x)-f'(xi))/(x-a)$.因 $f''>0$，$f'$ 严格递增，故 $F'(x)>0$.

【证法2】对a＜x₁＜x₂，分别在[a,x₁]和[x₁,x₂]上用中值定理，得ξ₁∈(a,x₁)、ξ₂∈(x₁,x₂)，
$ F(x_2)-F(x_1)=frac(x_2-x_1,x_2-a)(f'(xi_2)-f'(xi_1))>0. $
由f″＞0可知f′严格递增，而ξ₂＞ξ₁，故结论成立.
【证法3】记φ(x)=f′(x)(x−a)−f(x)+f(a)，则φ′(x)=f″(x)(x−a)＞0. 结合a处连续性，φ(x)＞0，从而F′(x)=φ(x)/(x−a)²＞0.
【典型错误】F(x)=f′(ξ)中的ξ随x变化，不能当常数直接求导. 比较F(x₁)、F(x₂)时，分别在(a,x₁)、(a,x₂)中取的中间点也未必有确定大小，必须使用互不重叠的中值区间.
]

#answer("九、")[
（1）增广矩阵是四阶范德蒙矩阵，其行列式为 $product_(1<=i<j<=4)(a_j-a_i)≠0$，秩为4，而系数矩阵秩至多为3，故无解.

（2）系数矩阵仅有两种不同的行 $(1,k,k^2)$、$(1,-k,k^2)$，因 $k≠0$，秩为2.齐次解空间维数为1，$beta_2-beta_1=(2,0,-2)^T$ 是其非零解.故通解为 $X=(-1,1,1)^T+c(2,0,-2)^T$，$c$ 为任意常数.
]

#answer("十、")[
特征多项式为 $(lambda-1)^2(lambda+1)$.可对角化要求特征值1的特征子空间维数为2，即 $op("rank")(I-A)=1$.矩阵 $I-A$ 的非零行 $(1,0,-1)$、$(-x,0,-y)$ 成比例，等价于 $x+y=0$.这也是充分条件.
]

#answer("十一、")[
令 $Y_1=X_1 X_4$、$Y_2=X_2 X_3$，则二者独立，且 $P(Y_i=1)=0.16$、$P(Y_i=0)=0.84$.由 $X=Y_1-Y_2$，得
#table(columns:4,[$X$],[$-1$],[0],[1],[$p$],[0.1344],[0.7312],[0.1344])
]

#answer("十二、")[
设标准正态分布函数及密度分别为 $Phi,phi$，则 $E T=25Phi(12-mu)-21Phi(10-mu)-5$.求导得 $(dif E T)/(dif mu)=-25phi(12-mu)+21phi(10-mu)$.令其为零，解得 $mu_0=11-1/2 ln(25/21)≈10.9$.导数在此点左侧为正、右侧为负，故平均内径取该值时平均利润最大.
]

