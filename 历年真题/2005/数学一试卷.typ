#import "../template.typ": exam
#show: exam.with(year: 2005, subject: "一", title: "2005年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#ezexam.answer-state.update(false)


= 一、填空题（本题共6小题，每小题4分，满分24分）

#ezexam.question[
曲线 $y=x^2/(2x+1)$ 的斜渐近线方程为#h(3em).
]

#ezexam.question[
微分方程 $x y'+2y=x ln x$ 满足 $y(1)=-1/9$ 的解为#h(3em).
]

#ezexam.question[
设函数 $u(x,y,z)=1+x^2/6+y^2/12+z^2/18$，单位向量 $bold(n)=1/sqrt(3){1,1,1}$，则 $lr((partial u)/(partial bold(n)))|_((1,2,3))=$#h(3em).
]

#ezexam.question[
设 $Omega$ 是由锥面 $z=sqrt(x^2+y^2)$ 与半球面 $z=sqrt(R^2-x^2-y^2)$ 围成的空间区域，$Sigma$ 是 $Omega$ 的整个边界的外侧，则 $integral.double_Sigma x dif y dif z+y dif z dif x+z dif x dif y=$#h(3em).
]

#ezexam.question[
设 $alpha_1,alpha_2,alpha_3$ 均为三维列向量，记矩阵 $A=(alpha_1,alpha_2,alpha_3),B=(alpha_1+alpha_2+alpha_3,alpha_1+2alpha_2+4alpha_3,alpha_1+3alpha_2+9alpha_3)$.如果 $|A|=1$，那么 $|B|=$#h(3em).
]

#ezexam.question[
从数1，2，3，4中任取一个数，记为 $X$，再从 $1,dots,X$ 中任取一个数，记为 $Y$，则 $P{Y=2}=$#h(3em).
]

= 二、选择题（本题共8小题，每小题4分，满分32分）

#ezexam.question[
设函数 $f(x)=lim_(n->infinity) root(n,1+|x|^(3n))$，则 $f(x)$ 在 $(-infinity,+infinity)$ 内
#choices[处处可导.][恰有一个不可导点.][恰有两个不可导点.][至少有三个不可导点.]
]

#ezexam.question[
设 $F(x)$ 是连续函数 $f(x)$ 的一个原函数，“$M<=>N$”表示“$M$ 的充分必要条件是 $N$”，则必有
#choices([$F(x)$ 是偶函数 $<=>$ $f(x)$ 是奇函数.],[$F(x)$ 是奇函数 $<=>$ $f(x)$ 是偶函数.],[$F(x)$ 是周期函数 $<=>$ $f(x)$ 是周期函数.],[$F(x)$ 是单调函数 $<=>$ $f(x)$ 是单调函数.])
]

#ezexam.question[
设函数 $u(x,y)=phi(x+y)+phi(x-y)+integral_(x-y)^(x+y)psi(t)dif t$，其中函数 $phi$ 具有二阶导数，$psi$ 具有一阶导数，则必有
#choices([$(partial^2 u)/(partial x^2)=-(partial^2 u)/(partial y^2)$.],[$(partial^2 u)/(partial x^2)=(partial^2 u)/(partial y^2)$.],[$(partial^2 u)/(partial x partial y)=(partial^2 u)/(partial y^2)$.],[$(partial^2 u)/(partial x partial y)=(partial^2 u)/(partial x^2)$.])
]

#ezexam.question[
设有三元方程 $x y-z ln y+e^(x z)=1$，根据隐函数存在定理，存在点 $(0,1,1)$ 的一个邻域，在此邻域内该方程
#choices([只能确定一个具有连续偏导数的隐函数 $z=z(x,y)$.],[可确定两个具有连续偏导数的隐函数 $y=y(x,z)$ 和 $z=z(x,y)$.],[可确定两个具有连续偏导数的隐函数 $x=x(y,z)$ 和 $z=z(x,y)$.],[可确定两个具有连续偏导数的隐函数 $x=x(y,z)$ 和 $y=y(x,z)$.])
]

#ezexam.question[
设 $lambda_1,lambda_2$ 是矩阵 $A$ 的两个不同的特征值，对应的特征向量分别为 $alpha_1,alpha_2$，则 $alpha_1,A(alpha_1+alpha_2)$ 线性无关的充分必要条件是
#choices([$lambda_1!=0$.],[$lambda_2!=0$.],[$lambda_1=0$.],[$lambda_2=0$.])
]

#ezexam.question[
设 $A$ 为 $n (n>=2)$ 阶可逆矩阵，交换 $A$ 的第1行与第2行得矩阵 $B$，$A^*,B^*$ 分别为 $A,B$ 的伴随矩阵，则
#choices([交换 $A^*$ 的第1列与第2列得 $B^*$.],[交换 $A^*$ 的第1行与第2行得 $B^*$.],[交换 $A^*$ 的第1列与第2列得 $-B^*$.],[交换 $A^*$ 的第1行与第2行得 $-B^*$.])
]

#ezexam.question[
设二维随机变量 $(X,Y)$ 的概率分布为
#table(columns:3,[$X \ Y$],[0],[1],[0],[0.4],[$a$],[1],[$b$],[0.1])
已知随机事件 $\{X=0\}$ 与 $\{X+Y=1\}$ 相互独立，则
#choices([$a=0.2,b=0.3$.],[$a=0.4,b=0.1$.],[$a=0.3,b=0.2$.],[$a=0.1,b=0.4$.])
]

#ezexam.question[
设 $X_1,X_2,dots,X_n (n>=2)$ 为来自总体 $N(0,1)$ 的简单随机样本，$overline(X)$ 为样本均值，$S^2$ 为样本方差，则
#choices([$n overline(X) tilde N(0,1)$.],[$n S^2 tilde chi^2(n)$.],[$((n-1)overline(X))/S tilde t(n-1)$.],[$((n-1)X_1^2)/(sum_(i=2)^n X_i^2) tilde F(1,n-1)$.])
]

= 三、解答题（本题共9小题，满分94分. 解答应写出文字说明、证明过程或演算步骤.）

#ezexam.question[
（本题满分11分）设 $D={(x,y)|x^2+y^2<=sqrt(2),x>=0,y>=0}$，$[1+x^2+y^2]$ 表示不超过 $1+x^2+y^2$ 的最大整数.计算二重积分 $integral.double_D x y[1+x^2+y^2]dif x dif y$.
]

#ezexam.question[
（本题满分12分）求幂级数 $sum_(n=1)^infinity(-1)^(n-1)[1+1/(n(2n-1))]x^(2n)$ 的收敛区间与和函数 $f(x)$.
]

#ezexam.question[
（本题满分11分）如下图所示，曲线 $C$ 的方程为 $y=f(x)$，点 $(3,2)$ 是它的一个拐点，直线 $l_1$ 与 $l_2$ 分别是曲线 $C$ 在点 $(0,0)$ 与 $(3,2)$ 处的切线，其交点为 $(2,4)$.设函数 $f(x)$ 具有三阶连续导数，计算定积分 $integral_0^3(x^2+x)f'''(x)dif x$.
#import "@preview/cetz:0.5.2"
#cetz.canvas({
 import cetz.draw: *
 for i in range(1,6) {line((i,0),(i,5),stroke:.3pt);line((0,i),(5,i),stroke:.3pt)}
 line((-.4,0),(5.6,0),mark:(end:">"));line((0,-.4),(0,5.7),mark:(end:">"))
 line((0,0),(2.4,4.8));line((1.6,4.8),(4,0))
 bezier((0,0),(3,2),(.7,1.4),(2,4));bezier((3,2),(4.3,1.3),(3.4,1.2),(3.8,1.2))
 for i in range(1,5){content((i,-.1),[ #i ],anchor:"north");content((-.1,i),[ #i ],anchor:"east")}
 content((-.1,-.1),$O$,anchor:"north-east");content((5.6,0),$x$,anchor:"north");content((0,5.7),$y$,anchor:"east");content((2.5,4.5),$l_1$);content((1.4,4.5),$l_2$);content((1.2,1.5),$C$);content((4.1,1.7),$y=f(x)$)
})
]

#ezexam.question[
（本题满分12分）已知函数 $f(x)$ 在 $[0,1]$ 上连续，在 $(0,1)$ 内可导，且 $f(0)=0,f(1)=1$.证明：

（Ⅰ）存在 $xi in (0,1)$，使得 $f(xi)=1-xi$；

（Ⅱ）存在两个不同的点 $eta,zeta in (0,1)$，使得 $f'(eta)f'(zeta)=1$.
]

#ezexam.question[
（本题满分12分）设函数 $phi(y)$ 具有连续导数，在围绕原点的任意分段光滑简单闭曲线 $L$ 上，曲线积分 $integral.cont_L (phi(y)dif x+2x y dif y)/(2x^2+y^4)$ 的值为同一常数.

（Ⅰ）证明：对右半平面 $x>0$ 内的任意分段光滑简单闭曲线 $C$，有 $integral.cont_C(phi(y)dif x+2x y dif y)/(2x^2+y^4)=0$；

（Ⅱ）求函数 $phi(y)$ 的表达式.
]

#ezexam.question[
（本题满分9分）已知二次型 $f(x_1,x_2,x_3)=(1-a)x_1^2+(1-a)x_2^2+2x_3^2+2(1+a)x_1 x_2$ 的秩为2.

（Ⅰ）求 $a$ 的值；

（Ⅱ）求正交变换 $bold(x)=Q bold(y)$，把 $f(x_1,x_2,x_3)$ 化成标准形；

（Ⅲ）求方程 $f(x_1,x_2,x_3)=0$ 的解.
]

#ezexam.question[
（本题满分9分）已知三阶矩阵 $A$ 的第1行是 $(a,b,c)$，$a,b,c$ 不全为零，矩阵 $B=mat(1,2,3;2,4,6;3,6,k)$（$k$ 为常数），且 $A B=O$，求线性方程组 $A bold(x)=bold(0)$ 的通解.
]

#ezexam.question[
（本题满分9分）设二维随机变量 $(X,Y)$ 的概率密度为
$ f(x,y)=cases(1 & 0<x<1,0<y<2x,0 & #text[其他]). $
求：（Ⅰ）$(X,Y)$ 的边缘概率密度 $f_X(x),f_Y(y)$；

（Ⅱ）$Z=2X-Y$ 的概率密度 $f_Z(z)$.
]

#ezexam.question[
（本题满分9分）设 $X_1,X_2,dots,X_n (n>2)$ 为来自总体 $N(0,1)$ 的简单随机样本，$overline(X)$ 为样本均值，记 $Y_i=X_i-overline(X),i=1,2,dots,n$.
求：（Ⅰ）$Y_i$ 的方差 $D Y_i,i=1,2,dots,n$；

（Ⅱ）$Y_1$ 与 $Y_n$ 的协方差 $op("Cov")(Y_1,Y_n)$.
]

