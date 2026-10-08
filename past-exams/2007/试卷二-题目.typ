#import "../template.typ": exam
#show: exam.with(year: 2007, subject: "二", title: "2007年全国硕士研究生入学统一考试")
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
函数 $f(x)=((e^(1/x)+e)tan x)/(x(e^(1/x)-e))$ 在 $[-pi,pi]$ 上的第一类间断点是 $x=$
#choices([0.],[1.],[$-pi/2$.],[$pi/2$.])
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
曲线 $y=1/x+ln(1+e^x)$ 渐近线的条数为
#choices[0.][1.][2.][3.]
]

#ezexam.question[
设函数 $f(x)$ 在 $(0,+infinity)$ 内具有二阶导数，且 $f''(x)>0$，令 $u_n=f(n) (n=1,2,dots)$，则下列结论正确的是
#choices([若 $u_1>u_2$，则 ${u_n}$ 必收敛.],[若 $u_1>u_2$，则 ${u_n}$ 必发散.],[若 $u_1<u_2$，则 ${u_n}$ 必收敛.],[若 $u_1<u_2$，则 ${u_n}$ 必发散.])
]

#ezexam.question[
二元函数 $f(x,y)$ 在点 $(0,0)$ 处可微的一个充分条件是
#choices([$lim_((x,y)->(0,0))[f(x,y)-f(0,0)]=0$.],[$lim_(x->0)(f(x,0)-f(0,0))/x=0$，且 $lim_(y->0)(f(0,y)-f(0,0))/y=0$.],[$lim_((x,y)->(0,0))(f(x,y)-f(0,0))/sqrt(x^2+y^2)=0$.],[$lim_(x->0)[f'_x(x,0)-f'_x(0,0)]=0$，且 $lim_(y->0)[f'_y(0,y)-f'_y(0,0)]=0$.])
]

#ezexam.question[
设函数 $f(x,y)$ 连续，则二次积分 $integral_(pi/2)^pi dif x integral_(sin x)^1 f(x,y)dif y$ 等于
#choices([$integral_0^1 dif y integral_(pi+arcsin y)^pi f(x,y)dif x$.],[$integral_0^1 dif y integral_(pi-arcsin y)^pi f(x,y)dif x$.],[$integral_0^1 dif y integral_(pi/2)^(pi+arcsin y) f(x,y)dif x$.],[$integral_0^1 dif y integral_(pi/2)^(pi-arcsin y) f(x,y)dif x$.])
]

#ezexam.question[
设向量组 $alpha_1,alpha_2,alpha_3$ 线性无关，则下列向量组线性相关的是
#choices([$alpha_1-alpha_2,alpha_2-alpha_3,alpha_3-alpha_1$.],[$alpha_1+alpha_2,alpha_2+alpha_3,alpha_3+alpha_1$.],[$alpha_1-2alpha_2,alpha_2-2alpha_3,alpha_3-2alpha_1$.],[$alpha_1+2alpha_2,alpha_2+2alpha_3,alpha_3+2alpha_1$.])
]

#ezexam.question[
设矩阵 $A=mat(2,-1,-1;-1,2,-1;-1,-1,2),B=mat(1,0,0;0,1,0;0,0,0)$，则 $A$ 与 $B$
#choices[合同，且相似.][合同，但不相似.][不合同，但相似.][既不合同，也不相似.]
]

= 二、填空题：11—16小题，每小题4分，共24分.把答案填在题中横线上.

#ezexam.question[
$lim_(x->0)(arctan x-sin x)/x^3=$#h(3em).
]

#ezexam.question[
曲线 $cases(x=cos t+cos^2 t,y=1+sin t)$ 上对应于 $t=pi/4$ 的点处的法线斜率为#h(3em).
]

#ezexam.question[
设函数 $y=1/(2x+3)$，则 $y^((n))(0)=$#h(3em).
]

#ezexam.question[
二阶常系数非齐次线性微分方程 $y''-4y'+3y=2e^(2x)$ 的通解为 $y=$#h(3em).
]

#ezexam.question[
设 $f(u,v)$ 是二元可微函数，$z=f(y/x,x/y)$，则 $x(partial z)/(partial x)-y(partial z)/(partial y)=$#h(3em).
]

#ezexam.question[
设矩阵 $A=mat(0,1,0,0;0,0,1,0;0,0,0,1;0,0,0,0)$，则 $A^3$ 的秩为#h(3em).
]

= 三、解答题：17—24小题，共86分.解答应写出文字说明、证明过程或演算步骤.

#ezexam.question[
（本题满分10分）设 $f(x)$ 是区间 $[0,pi/4]$ 上的单调、可导函数，且满足
$ integral_0^(f(x)) f^(-1)(t)dif t=integral_0^x t (cos t-sin t)/(sin t+cos t)dif t, $
其中 $f^(-1)$ 是 $f$ 的反函数，求 $f(x)$.
]

#ezexam.question[
（本题满分11分）设 $D$ 是位于曲线 $y=sqrt(x)a^(-x/(2a)) (a>1,0<=x<+infinity)$ 下方、$x$ 轴上方的无界区域.

（Ⅰ）求区域 $D$ 绕 $x$ 轴旋转一周所成旋转体的体积 $V(a)$；

（Ⅱ）当 $a$ 为何值时，$V(a)$ 最小？并求此最小值.
]

#ezexam.question[
（本题满分10分）求微分方程 $y''(x+y'^2)=y'$ 满足初始条件 $y(1)=y'(1)=1$ 的特解.
]

#ezexam.question[
（本题满分11分）已知函数 $f(u)$ 具有二阶导数，且 $f'(0)=1$，函数 $y=y(x)$ 由方程 $y-x e^(y-1)=1$ 所确定.设 $z=f(ln y-sin x)$，求 $(dif z)/(dif x)|_(x=0),(dif^2 z)/(dif x^2)|_(x=0)$.
]

#ezexam.question[
（本题满分11分）设函数 $f(x),g(x)$ 在 $[a,b]$ 上连续，在 $(a,b)$ 内具有二阶导数且存在相等的最大值，$f(a)=g(a),f(b)=g(b)$，证明：存在 $xi in (a,b)$，使得 $f''(xi)=g''(xi)$.
]

#ezexam.question[
（本题满分11分）设二元函数
$ f(x,y)=cases(x^2 & |x|+|y|<=1,1/sqrt(x^2+y^2) & 1<|x|+|y|<=2), $
计算二重积分 $integral.double_D f(x,y)dif sigma$，其中 $D={(x,y)||x|+|y|<=2}$.
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

