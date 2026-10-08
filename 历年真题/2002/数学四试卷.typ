#import "../template.typ": exam
#show: exam.with(year: 2002, subject: "四", title: "2002年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#ezexam.answer-state.update(false)


= 一、填空题（本题共5小题，每小题3分，满分15分）
#ezexam.counter-question.step()

（1）设常数 $a!=1/2$，则 $lim_(n->infinity) ln[(n-2n a+1)/(n(1-2a))]^n=$#h(3em).

（2）已知 $f(x)$ 的一个原函数为 $ln^2 x$，则 $integral x f'(x) dif x=$#h(3em).

（3）设矩阵 $A=mat(1,-1;2,3),B=A^2-3A+2E$，则 $B^(-1)=$#h(3em).

（4）设向量组 $alpha_1=(a,0,c),alpha_2=(b,c,0),alpha_3=(0,a,b)$ 线性无关，则 $a,b,c$ 必满足关系式#h(3em).

（5）设随机变量 $X$ 和 $Y$ 的联合概率分布为
#table(columns:4,[$X \ Y$],[$-1$],[0],[1],[0],[0.07],[0.18],[0.15],[1],[0.08],[0.32],[0.20])
则 $X$ 和 $Y$ 的相关系数 $rho=$#h(3em).

= 二、选择题（本题共5小题，每小题3分，满分15分）
#ezexam.counter-question.step()

（1）设函数 $f(x)$ 在闭区间 $[a,b]$ 上有定义，在开区间 $(a,b)$ 内可导，则（　）.
#choices[当 $f(a)f(b)<0$ 时，存在 $xi in (a,b)$，使 $f(xi)=0$.][对任何 $xi in (a,b)$，有 $lim_(x->xi) [f(x)-f(xi)]=0$.][当 $f(a)=f(b)$ 时，存在 $xi in (a,b)$，使 $f'(xi)=0$.][存在 $xi in (a,b)$，使 $f(b)-f(a)=f'(xi)(b-a)$.]

（2）设函数 $f(x)$ 连续，则在下列变上限定积分定义的函数中，必为偶函数的是（　）.
#choices[$integral_0^x t[f(t)+f(-t)] dif t$.][$integral_0^x t[f(t)-f(-t)] dif t$.][$integral_0^x f(t^2) dif t$.][$integral_0^x f^2(t) dif t$.]

（3）设 $A,B$ 为 $n$ 阶矩阵，$A^*,B^*$ 分别为 $A,B$ 对应的伴随矩阵.分块矩阵 $C=mat(A,O;O,B)$，则 $C$ 的伴随矩阵 $C^*=$（　）.
#choices[$mat(|A|A^*,O;O,|B|B^*)$.][$mat(|B|B^*,O;O,|A|A^*)$.][$mat(|A|B^*,O;O,|B|A^*)$.][$mat(|B|A^*,O;O,|A|B^*)$.]

（4）设 $X_1$ 和 $X_2$ 是任意两个相互独立的连续型随机变量，它们的概率密度分别为 $f_1(x)$ 和 $f_2(x)$，分布函数分别为 $F_1(x)$ 和 $F_2(x)$，则（　）.
#choices[$f_1(x)+f_2(x)$ 必为某一随机变量的概率密度.][$F_1(x)F_2(x)$ 必为某一随机变量的分布函数.][$F_1(x)+F_2(x)$ 必为某一随机变量的分布函数.][$f_1(x)f_2(x)$ 必为某一随机变量的概率密度.]

（5）设随机变量 $X_1,X_2,dots,X_n$ 相互独立，$S_n=X_1+X_2+dots+X_n$，则根据列维－林德伯格（Levy－Lindberg）中心极限定理，当 $n$ 充分大时，$S_n$ 近似服从正态分布，只要 $X_1,X_2,dots,X_n$（　）.
#choices[有相同的数学期望.][有相同的方差.][服从同一指数分布.][服从同一离散型分布.]

#ezexam.question(label: n => [三、])[
（本题满分5分）求极限 $lim_(x->0) (integral_0^x [integral_0^(u^2) arctan(1+t) dif t] dif u)/(x(1-cos x))$.


]

#ezexam.question(label: n => [四、])[
（本题满分7分）设函数 $u=f(x,y,z)$ 有连续偏导数，且 $z=z(x,y)$ 由方程 $x e^x-y e^y=z e^z$ 所确定，求 $dif u$.


]

#ezexam.question(label: n => [五、])[
（本题满分6分）设 $f(sin^2 x)=x/(sin x)$，求 $integral sqrt(x)/sqrt(1-x) f(x) dif x$.


]

#ezexam.question(label: n => [六、])[
（本题满分7分）设闭区域 $D:x^2+y^2<=y,x>=0$.$f(x,y)$ 为 $D$ 上的连续函数，且
$ f(x,y)=sqrt(1-x^2-y^2)-8/pi integral.double_D f(u,v) dif u dif v. $
求 $f(x,y)$.


]

#ezexam.question(label: n => [七、])[
（本题满分7分）设某商品需求量 $Q$ 是价格 $p$ 的单调减少函数：$Q=Q(p)$，其需求弹性 $eta=(2p^2)/(192-p^2)>0$.

（1）设 $R$ 为总收益函数，证明 $(dif R)/(dif p)=Q(1-eta)$.

（2）求 $p=6$ 时，总收益对价格的弹性，并说明其经济意义.


]

#ezexam.question(label: n => [八、])[
（本题满分6分）设函数 $f(x),g(x)$ 在 $[a,b]$ 上连续，且 $g(x)>0$.利用闭区间上连续函数性质，证明存在一点 $xi in [a,b]$，使
$ integral_a^b f(x)g(x) dif x=f(xi)integral_a^b g(x) dif x. $


]

#ezexam.question(label: n => [九、])[
（本题满分8分）设四元齐次线性方程组（Ⅰ）为
$ cases(2x_1+3x_2-x_3=0,x_1+2x_2+x_3-x_4=0). $
且已知另一四元齐次线性方程组（Ⅱ）的一个基础解系为
$ alpha_1=(2,-1,a+2,1)^T, quad alpha_2=(-1,2,4,a+8)^T. $
（1）求方程组（Ⅰ）的一个基础解系；

（2）当 $a$ 为何值时，方程组（Ⅰ）与（Ⅱ）有非零公共解？在有非零公共解时，求出全部非零公共解.


]

#ezexam.question(label: n => [十、])[
（本题满分8分）设实对称矩阵 $A=mat(a,1,1;1,a,-1;1,-1,a)$，求可逆矩阵 $P$，使 $P^(-1)A P$ 为对角形矩阵，并计算行列式 $|A-E|$ 的值.


]

#ezexam.question(label: n => [十一、])[
（本题满分8分）设 $A,B$ 是任意二事件，其中 $A$ 的概率不等于0和1，证明，$P(B|A)=P(B|overline(A))$ 是事件 $A$ 与 $B$ 独立的充分必要条件.


]

#ezexam.question(label: n => [十二、])[
（本题满分8分）假设一设备开机后无故障工作的时间 $X$ 服从指数分布，平均无故障工作的时间（$E X$）为5小时.设备定时开机，出现故障时自动关机，而在无故障的情况下工作2小时便关机.试求该设备每次开机无故障工作的时间 $Y$ 的分布函数 $F(y)$.

]
