#import "../template.typ": exam
#show: exam.with(year: 2005, subject: "二", title: "2005年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#ezexam.answer-state.update(false)


= 一、填空题（本题共6小题，每小题4分，满分24分）

#ezexam.question[
设 $y=(1+sin x)^x$，则 $dif y|_(x=pi)=$#h(3em).
]

#ezexam.question[
曲线 $y=(1+x)^(3/2)/sqrt(x)$ 的斜渐近线方程为#h(3em).
]

#ezexam.question[
定积分 $integral_0^1 (x dif x)/((2-x^2)sqrt(1-x^2))=$#h(3em).
]

#ezexam.question[
微分方程 $x y'+2y=x ln x$ 满足 $y(1)=-1/9$ 的解为#h(3em).
]

#ezexam.question[
当 $x->0$ 时，$alpha(x)=k x^2$ 与 $beta(x)=sqrt(1+x arcsin x)-sqrt(cos x)$ 是等价无穷小量，则 $k=$#h(3em).
]

#ezexam.question[
设 $alpha_1,alpha_2,alpha_3$ 均为三维列向量，记矩阵 $A=(alpha_1,alpha_2,alpha_3),B=(alpha_1+alpha_2+alpha_3,alpha_1+2alpha_2+4alpha_3,alpha_1+3alpha_2+9alpha_3)$.如果 $|A|=1$，那么 $|B|=$#h(3em).
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
设函数 $y=y(x)$ 由参数方程 $cases(x=t^2+2t,y=ln(1+t))$ 确定，则曲线 $y=y(x)$ 在 $x=3$ 处的法线与 $x$ 轴交点的横坐标是
#choices([$1/8 ln 2+3$.],[$-1/8 ln 2+3$.],[$-8 ln 2+3$.],[$8 ln 2+3$.])
]

#ezexam.question[
设区域 $D={(x,y) | x^2+y^2<=4,x>=0,y>=0}$，$f(x)$ 为 $D$ 上的正值连续函数，$a,b$ 为常数，则 $integral.double_D (a sqrt(f(x))+b sqrt(f(y)))/(sqrt(f(x))+sqrt(f(y))) dif sigma=$
#choices([$a b pi$.],[$(a b)/2 pi$.],[$(a+b)pi$.],[$(a+b)/2 pi$.])
]

#ezexam.question[
设函数 $u(x,y)=phi(x+y)+phi(x-y)+integral_(x-y)^(x+y)psi(t)dif t$，其中函数 $phi$ 具有二阶导数，$psi$ 具有一阶导数，则必有
#choices([$(partial^2 u)/(partial x^2)=-(partial^2 u)/(partial y^2)$.],[$(partial^2 u)/(partial x^2)=(partial^2 u)/(partial y^2)$.],[$(partial^2 u)/(partial x partial y)=(partial^2 u)/(partial y^2)$.],[$(partial^2 u)/(partial x partial y)=(partial^2 u)/(partial x^2)$.])
]

#ezexam.question[
设 $f(x)=1/(e^(x/(x-1))-1)$，则
#choices([$x=0,x=1$ 都是 $f(x)$ 的第一类间断点.],[$x=0,x=1$ 都是 $f(x)$ 的第二类间断点.],[$x=0$ 是 $f(x)$ 的第一类间断点，$x=1$ 是 $f(x)$ 的第二类间断点.],[$x=0$ 是 $f(x)$ 的第二类间断点，$x=1$ 是 $f(x)$ 的第一类间断点.])
]

#ezexam.question[
设 $lambda_1,lambda_2$ 是矩阵 $A$ 的两个不同的特征值，对应的特征向量分别为 $alpha_1,alpha_2$，则 $alpha_1,A(alpha_1+alpha_2)$ 线性无关的充分必要条件是
#choices([$lambda_1!=0$.],[$lambda_2!=0$.],[$lambda_1=0$.],[$lambda_2=0$.])
]

#ezexam.question[
设 $A$ 为 $n (n>=2)$ 阶可逆矩阵，交换 $A$ 的第1行与第2行得矩阵 $B$，$A^*,B^*$ 分别为 $A,B$ 的伴随矩阵，则
#choices([交换 $A^*$ 的第1列与第2列得 $B^*$.],[交换 $A^*$ 的第1行与第2行得 $B^*$.],[交换 $A^*$ 的第1列与第2列得 $-B^*$.],[交换 $A^*$ 的第1行与第2行得 $-B^*$.])
]

= 三、解答题（本题共9小题，满分94分. 解答应写出文字说明、证明过程或演算步骤.）

#ezexam.question[
（本题满分11分）

设函数 $f(x)$ 连续，且 $f(0)!=0$，求极限 $lim_(x->0) (integral_0^x (x-t)f(t)dif t)/(x integral_0^x f(x-t)dif t)$.
]

#ezexam.question[
（本题满分11分）

如下图所示，$C_1$ 和 $C_2$ 分别是 $y=1/2(1+e^x)$ 和 $y=e^x$ 的图像，过点 $(0,1)$ 的曲线 $C_3$ 是单调增函数的图像.过 $C_2$ 上任一点 $M(x,y)$ 分别作垂直于 $x$ 轴和 $y$ 轴的直线 $l_x$ 和 $l_y$，记 $C_1,C_2$ 与 $l_x$ 所围图形的面积为 $S_1(x)$；$C_2,C_3$ 与 $l_y$ 所围图形的面积为 $S_2(y)$.如果总有 $S_1(x)=S_2(y)$，求曲线 $C_3$ 的方程 $x=phi(y)$.
#import "@preview/cetz:0.5.2": canvas, draw
#align(center,canvas({
 import draw: *
 let c1=range(61).map(i=>{let x=i/40; (x, (1+calc.exp(x))/2)})
 let c2=range(61).map(i=>{let x=i/40; (x, calc.exp(x))})
 let c3=range(61).map(i=>{let y=1+i*3.5/60; (calc.ln(y)+1/(2*y)-.5,y)})
 line(..c1,..c2.rev(),close:true,fill:rgb("dddddd"),stroke:none)
 line(..c2,..c3.rev(),close:true,fill:rgb("eeeeee"),stroke:none)
 line(..c1); line(..c2); line(..c3)
 line((-.2,0),(2.1,0),mark:(end:">")); line((0,-.2),(0,5),mark:(end:">"))
 line((1.5,0),(1.5,4.8)); line((0,4.48),(1.8,4.48))
 content((2.2,0),$x$);content((0,5.2),$y$);content((-.15,-.15),$O$)
 content((-.15,1),[1]);content((1.75,2.7),$C_1$);content((1.6,4.9),$C_2$)
 content((1.05,4.9),$C_3$);content((1.85,4.3),$M(x,y)$)
 content((1.7,1.3),$l_x$);content((.5,4.65),$l_y$)
}))
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
（本题满分12分）

用变量变换 $x=cos t (0<t<pi)$ 化简方程 $(1-x^2)y''-x y'+y=0$，并求其满足 $y|_(x=0)=1,y'|_(x=0)=2$ 的特解.
]

#ezexam.question[
（本题满分12分）已知函数 $f(x)$ 在 $[0,1]$ 上连续，在 $(0,1)$ 内可导，且 $f(0)=0,f(1)=1$.证明：

（Ⅰ）存在 $xi in (0,1)$，使得 $f(xi)=1-xi$；

（Ⅱ）存在两个不同的点 $eta,zeta in (0,1)$，使得 $f'(eta)f'(zeta)=1$.
]

#ezexam.question[
（本题满分10分）

已知函数 $z=f(x,y)$ 的全微分 $dif z=2x dif x-2y dif y$，并且 $f(1,1)=2$，求 $f(x,y)$ 在椭圆域 $D={(x,y)|x^2+y^2/4<=1}$ 上的最大值和最小值.
]

#ezexam.question[
（本题满分9分）

计算二重积分 $integral.double_D |x^2+y^2-1|dif sigma$，其中 $D={(x,y)|0<=x<=1,0<=y<=1}$.
]

#ezexam.question[
（本题满分9分）

确定常数 $a$，使向量组 $alpha_1=(1,1,a)^T,alpha_2=(1,a,1)^T,alpha_3=(a,1,1)^T$ 可由向量组 $beta_1=(1,1,a)^T,beta_2=(-2,a,4)^T,beta_3=(-2,a,a)^T$ 线性表示，但向量组 $beta_1,beta_2,beta_3$ 不能由向量组 $alpha_1,alpha_2,alpha_3$ 线性表示.
]

#ezexam.question[
（本题满分9分）已知三阶矩阵 $A$ 的第1行是 $(a,b,c)$，$a,b,c$ 不全为零，矩阵 $B=mat(1,2,3;2,4,6;3,6,k)$（$k$ 为常数），且 $A B=O$，求线性方程组 $A bold(x)=bold(0)$ 的通解.
]

