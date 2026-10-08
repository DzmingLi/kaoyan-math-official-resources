#import "../template.typ": exam
#show: exam.with(year: 2007, subject: "一", title: "2007年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#ezexam.answer-state.update(false)


= 一、选择题：1—10小题，每小题4分，共40分.在每小题给出的四个选项中，只有一项符合题目要求，把所选项前的字母填在题后的括号内.

#ezexam.question[
当 $x->0^+$ 时，与 $sqrt(x)$ 等价的无穷小量是
#choices([$1-e^sqrt(x)$.],[$ln((1+x)/(1-sqrt(x)))$.],[$sqrt(1+sqrt(x))-1$.],[$1-cos sqrt(x)$.])
]

#ezexam.question[
曲线 $y=1/x+ln(1+e^x)$ 渐近线的条数为
#choices[0.][1.][2.][3.]
]

#ezexam.question[
如下图，连续函数 $y=f(x)$ 在区间 $[-3,-2],[2,3]$ 上的图形分别是直径为1的上、下半圆周，在区间 $[-2,0],[0,2]$ 上的图形分别是直径为2的下、上半圆周.设 $F(x)=integral_0^x f(t)dif t$，则下列结论正确的是
#import "@preview/cetz:0.5.2"
#cetz.canvas({
 import cetz.draw: *
 line((-3.4,0),(3.7,0),mark:(end:">"));line((0,-1.3),(0,1.6),mark:(end:">"))
 for (c,r,s) in ((-2.5,.5,1),(-1,1,-1),(1,1,1),(2.5,.5,-1)) {
  let pts=range(81).map(i=>{let t=i*180deg/80;(c - r*calc.cos(t),s*r*calc.sin(t))})
  line(..pts)
 }
 for i in (-3,-2,-1,1,2,3){content((i,-.1),[#i],anchor:"north")}
 content((-.1,-.1),$O$,anchor:"north-east");content((3.7,0),$x$,anchor:"north");content((0,1.6),$y$,anchor:"east")
})
#choices([$F(3)=-3/4 F(-2)$.],[$F(3)=5/4 F(2)$.],[$F(-3)=3/4 F(2)$.],[$F(-3)=-5/4 F(-2)$.])
]

#ezexam.question[
设函数 $f(x)$ 在 $x=0$ 处连续，下列命题错误的是
#choices([若 $lim_(x->0)f(x)/x$ 存在，则 $f(0)=0$.],[若 $lim_(x->0)(f(x)+f(-x))/x$ 存在，则 $f(0)=0$.],[若 $lim_(x->0)f(x)/x$ 存在，则 $f'(0)$ 存在.],[若 $lim_(x->0)(f(x)-f(-x))/x$ 存在，则 $f'(0)$ 存在.])
]

#ezexam.question[
设函数 $f(x)$ 在 $(0,+infinity)$ 内具有二阶导数，且 $f''(x)>0$，令 $u_n=f(n) (n=1,2,dots)$，则下列结论正确的是
#choices([若 $u_1>u_2$，则 ${u_n}$ 必收敛.],[若 $u_1>u_2$，则 ${u_n}$ 必发散.],[若 $u_1<u_2$，则 ${u_n}$ 必收敛.],[若 $u_1<u_2$，则 ${u_n}$ 必发散.])
]

#ezexam.question[
设曲线 $L:f(x,y)=1$（$f(x,y)$ 具有一阶连续偏导数）过第二象限内的点 $M$ 和第四象限内的点 $N$，$Gamma$ 为 $L$ 上从点 $M$ 到点 $N$ 的一段弧，则下列积分小于零的是
#choices([$integral_Gamma f(x,y)dif x$.],[$integral_Gamma f(x,y)dif y$.],[$integral_Gamma f(x,y)dif s$.],[$integral_Gamma f'_x(x,y)dif x+f'_y(x,y)dif y$.])
]

#ezexam.question[
设向量组 $alpha_1,alpha_2,alpha_3$ 线性无关，则下列向量组线性相关的是
#choices([$alpha_1-alpha_2,alpha_2-alpha_3,alpha_3-alpha_1$.],[$alpha_1+alpha_2,alpha_2+alpha_3,alpha_3+alpha_1$.],[$alpha_1-2alpha_2,alpha_2-2alpha_3,alpha_3-2alpha_1$.],[$alpha_1+2alpha_2,alpha_2+2alpha_3,alpha_3+2alpha_1$.])
]

#ezexam.question[
设矩阵 $A=mat(2,-1,-1;-1,2,-1;-1,-1,2),B=mat(1,0,0;0,1,0;0,0,0)$，则 $A$ 与 $B$
#choices[合同，且相似.][合同，但不相似.][不合同，但相似.][既不合同，也不相似.]
]

#ezexam.question[
某人向同一目标独立重复射击，每次射击命中目标的概率为 $p (0<p<1)$，则此人第4次射击恰好第2次命中目标的概率为
#choices([$3p(1-p)^2$.],[$6p(1-p)^2$.],[$3p^2(1-p)^2$.],[$6p^2(1-p)^2$.])
]

#ezexam.question[
设随机变量 $(X,Y)$ 服从二维正态分布，且 $X$ 与 $Y$ 不相关，$f_X(x),f_Y(y)$ 分别表示 $X,Y$ 的概率密度，则在 $Y=y$ 的条件下，$X$ 的条件概率密度 $f_(X|Y)(x|y)$ 为
#choices([$f_X(x)$.],[$f_Y(y)$.],[$f_X(x)f_Y(y)$.],[$f_X(x)/f_Y(y)$.])
]

= 二、填空题：11—16小题，每小题4分，共24分.把答案填在题中横线上.

#ezexam.question[
$integral_1^2 1/x^3 e^(1/x)dif x=$#h(3em).
]

#ezexam.question[
设 $f(u,v)$ 为二元可微函数，$z=f(x^y,y^x)$，则 $(partial z)/(partial x)=$#h(3em).
]

#ezexam.question[
二阶常系数非齐次线性微分方程 $y''-4y'+3y=2e^(2x)$ 的通解为 $y=$#h(3em).
]

#ezexam.question[
设曲面 $Sigma:|x|+|y|+|z|=1$，则 $integral.surf_Sigma(x+|y|)dif S=$#h(3em).
]

#ezexam.question[
设矩阵 $A=mat(0,1,0,0;0,0,1,0;0,0,0,1;0,0,0,0)$，则 $A^3$ 的秩为#h(3em).
]

#ezexam.question[
在区间 $(0,1)$ 中随机地取两个数，则这两个数之差的绝对值小于 $1/2$ 的概率为#h(3em).
]

= 三、解答题：17—24小题，共86分.解答应写出文字说明、证明过程或演算步骤.

#ezexam.question[
（本题满分11分）求函数 $f(x,y)=x^2+2y^2-x^2 y^2$ 在区域 $D={(x,y)|x^2+y^2<=4,y>=0}$ 上的最大值和最小值.
]

#ezexam.question[
（本题满分10分）计算曲面积分
$ I=integral.double_Sigma x z dif y dif z+2z y dif z dif x+3x y dif x dif y, $
其中 $Sigma$ 为曲面 $z=1-x^2-y^2/4 (0<=z<=1)$ 的上侧.
]

#ezexam.question[
（本题满分11分）设函数 $f(x),g(x)$ 在 $[a,b]$ 上连续，在 $(a,b)$ 内具有二阶导数且存在相等的最大值，$f(a)=g(a),f(b)=g(b)$，证明：存在 $xi in (a,b)$，使得 $f''(xi)=g''(xi)$.
]

#ezexam.question[
（本题满分10分）设幂级数 $sum_(n=0)^infinity a_n x^n$ 在 $(-infinity,+infinity)$ 内收敛，其和函数 $y(x)$ 满足 $y''-2x y'-4y=0,y(0)=0,y'(0)=1$.

（Ⅰ）证明 $a_(n+2)=2/(n+1)a_n,n=1,2,dots$；

（Ⅱ）求 $y(x)$ 的表达式.
]

#ezexam.question[
（本题满分11分）设线性方程组
$ cases(x_1+x_2+x_3=0,x_1+2x_2+a x_3=0,x_1+4x_2+a^2 x_3=0) quad "①" $
与方程
$ x_1+2x_2+x_3=a-1 quad "②" $
有公共解，求 $a$ 的值及所有公共解.
]

#ezexam.question[
（本题满分11分）设3阶实对称矩阵 $A$ 的特征值 $lambda_1=1,lambda_2=2,lambda_3=-2$，且 $alpha_1=(1,-1,1)^T$ 是 $A$ 的属于 $lambda_1$ 的一个特征向量.记 $B=A^5-4A^3+E$，其中 $E$ 为3阶单位矩阵.

（Ⅰ）验证 $alpha_1$ 是矩阵 $B$ 的特征向量，并求 $B$ 的全部特征值与特征向量；

（Ⅱ）求矩阵 $B$.
]

#ezexam.question[
（本题满分11分）设二维随机变量 $(X,Y)$ 的概率密度为
$ f(x,y)=cases(2-x-y & 0<x<1 quad 0<y<1,0 & "其他"). $
（Ⅰ）求 $P{X>2Y}$；

（Ⅱ）求 $Z=X+Y$ 的概率密度 $f_Z(z)$.
]

#ezexam.question[
（本题满分11分）设总体 $X$ 的概率密度为
$ f(x;theta)=cases(1/(2theta) & 0<x<theta,1/(2(1-theta)) & theta<=x<1,0 & "其他"), $
其中参数 $theta (0<theta<1)$ 未知，$X_1,X_2,dots,X_n$ 是来自总体 $X$ 的简单随机样本，$overline(X)$ 是样本均值.

（Ⅰ）求参数 $theta$ 的矩估计量 $hat(theta)$；

（Ⅱ）判断 $4overline(X)^2$ 是否为 $theta^2$ 的无偏估计量，并说明理由.
]

