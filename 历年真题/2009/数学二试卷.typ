#import "../template.typ": exam
#show: exam.with(year: 2009, subject: "二", title: "2009年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)


= 一、选择题：1—8小题，每小题4分，共32分. 在每小题给出的四个选项中，只有一项符合题目要求，把所选项前的字母填在题后的括号内.

#ezexam.question[
函数 $f(x)=(x-x^3)/(sin pi x)$ 的可去间断点的个数为
#choices([1.],[2.],[3.],[无穷多个.])
]

#ezexam.question[
当 $x->0$ 时，$f(x)=x-sin(a x)$ 与 $g(x)=x^2 ln(1-b x)$ 是等价无穷小，则
#choices([$a=1,b=-1/6$.],[$a=1,b=1/6$.],[$a=-1,b=-1/6$.],[$a=-1,b=1/6$.])
]

#ezexam.question[
设函数 $z=f(x,y)$ 的全微分为 $dif z=x dif x+y dif y$，则点 $(0,0)$
#choices([不是 $f(x,y)$ 的连续点.],[不是 $f(x,y)$ 的极值点.],[是 $f(x,y)$ 的极大值点.],[是 $f(x,y)$ 的极小值点.])
]

#ezexam.question[
设函数 $f(x,y)$ 连续，则 $integral_1^2 dif x integral_x^2 f(x,y)dif y+integral_1^2 dif y integral_2^(4-y)f(x,y)dif x=$
#choices([$integral_1^2 dif x integral_1^(4-x)f(x,y)dif y$.],[$integral_1^2 dif x integral_x^(4-x)f(x,y)dif y$.],[$integral_1^2 dif y integral_1^(4-y)f(x,y)dif x$.],[$integral_1^2 dif y integral_y^2 f(x,y)dif x$.])
]

#ezexam.question[
若 $f''(x)$ 不变号，且曲线 $y=f(x)$ 在点 $(1,1)$ 处的曲率圆为 $x^2+y^2=2$，则函数 $f(x)$ 在区间 $(1,2)$ 内
#choices([有极值点，无零点.],[无极值点，有零点.],[有极值点，有零点.],[无极值点，无零点.])
]

#ezexam.question[
设函数 $y=f(x)$ 在区间 $[-1,3]$ 上的图形如下，则函数 $F(x)=integral_0^x f(t)dif t$ 的图形为
#import "@preview/cetz:0.3.4": canvas, draw
#canvas({
 import draw: *
 line((-1.3,0),(3.4,0),mark:(end:">"));line((0,-1.5),(0,2.7),mark:(end:">"))
 line((-1,1),(0,1));circle((0,1),radius:.04,fill:white)
 bezier((0,-1),(1,0),(.4,-.7),(.8,-.3));bezier((1,0),(2,2),(1.3,1.1),(1.6,1.7))
 line((2,0),(3,0));circle((2,0),radius:.04,fill:white)
 line((-1,0),(-1,1),stroke:(dash:"dashed"));line((2,0),(2,2),stroke:(dash:"dashed"))
 for i in (-1,1,2,3){content((i,-.15),[#i])}
 content((-.2,-.2),$O$);content((-.15,1),[1]);content((-.15,2),[2]);content((-.2,-1),[−1]);content((3.4,-.15),$x$);content((-.2,2.7),$f(x)$)
})
#let graph-option(k) = canvas({
 import draw: *
 scale(.7)
 line((-1.3,0),(3.4,0),mark:(end:">"));line((0,-1.3),(0,1.8),mark:(end:">"))
 let h=if k==2 {1} else {0}
 line((-1,if k==0 {1} else if k==2 {0} else {-1}),(0,h))
 bezier((0,h),(1,h - 0.75),(.45,h - 0.45),(.75,h - 0.85))
 bezier((1,h - 0.75),(2,if k==1 {.5} else if k==2 {1.5} else {.5}),(1.35,h - 0.7),(1.7,h + 0.05))
 if k==1 {line((2,0),(3,0));line((2,0),(2,.5),stroke:(dash:"dashed"))} else {line((2,if k==2 {1.5} else {.5}),(3,if k==2 {1.5} else {.5}))}
 for i in (-1,1,2,3){content((i,-.12),[#i])}
 content((-.15,-.15),$O$);content((3.4,-.1),$x$);content((-.2,1.8),$F(x)$)
})
#choices(columns: 2, box(graph-option(0)), box(graph-option(1)), box(graph-option(2)), box(graph-option(3)))
]

#ezexam.question[
设 $A,B$ 均为2阶矩阵，$A^*,B^*$ 分别为 $A,B$ 的伴随矩阵.若 $|A|=2,|B|=3$，则分块矩阵 $mat(O,A;B,O)$ 的伴随矩阵为
#choices([$mat(O,3B^*;2A^*,O)$.],[$mat(O,2B^*;3A^*,O)$.],[$mat(O,3A^*;2B^*,O)$.],[$mat(O,2A^*;3B^*,O)$.])
]

#ezexam.question[
设 $A,P$ 均为3阶矩阵，$P^T$ 为 $P$ 的转置矩阵，且 $P^T A P=mat(1,0,0;0,1,0;0,0,2)$.若 $P=(alpha_1,alpha_2,alpha_3),Q=(alpha_1+alpha_2,alpha_2,alpha_3)$，则 $Q^T A Q$ 为
#choices([$mat(2,1,0;1,1,0;0,0,2)$.],[$mat(1,1,0;1,2,0;0,0,2)$.],[$mat(2,0,0;0,1,0;0,0,2)$.],[$mat(1,0,0;0,2,0;0,0,2)$.])
]

= 二、填空题：9—14小题，每小题4分，共24分. 把答案填在题中横线上.

#ezexam.question[
曲线 $cases(x=integral_0^(1-t)e^(-u^2)dif u,y=t^2 ln(2-t^2))$ 在点 $(0,0)$ 处的切线方程为 #fillin(len: 1.98438em)[].
]

#ezexam.question[
已知 $integral_(-infinity)^(+infinity)e^(k|x|)dif x=1$，则 $k=$ #fillin(len: 1.98438em)[].
]

#ezexam.question[
$lim_(n->infinity)integral_0^1 e^(-x)sin(n x)dif x=$ #fillin(len: 1.98438em)[].
]

#ezexam.question[
设 $y=y(x)$ 是由方程 $x y+e^y=x+1$ 确定的隐函数，则 $(dif^2 y)/(dif x^2)|_(x=0)=$ #fillin(len: 1.98438em)[].
]

#ezexam.question[
函数 $y=x^(2x)$ 在区间 $(0,1]$ 上的最小值为 #fillin(len: 1.98438em)[].
]

#ezexam.question[
设 $alpha,beta$ 为3维列向量，$beta^T$ 为 $beta$ 的转置.若矩阵 $alpha beta^T$ 相似于 $mat(2,0,0;0,0,0;0,0,0)$，则 $beta^T alpha=$ #fillin(len: 1.98438em)[].
]

= 三、解答题：15—23小题，共94分. 解答应写出文字说明、证明过程或演算步骤.

#ezexam.question[
（本题满分9分）求极限 $lim_(x->0)((1-cos x)[x-ln(1+tan x)])/(sin^4 x)$.
]

#ezexam.question[
（本题满分10分）计算不定积分 $integral ln(1+sqrt((1+x)/x))dif x(x>0)$.
]

#ezexam.question[
（本题满分10分）设 $z=f(x+y,x-y,x y)$，其中 $f$ 具有二阶连续偏导数，求 $dif z$ 与 $(partial^2 z)/(partial x partial y)$.
]

#ezexam.question[
（本题满分10分）设非负函数 $y=y(x)(x>=0)$ 满足微分方程 $x y''-y'+2=0$.当曲线 $y=y(x)$ 过原点时，其与直线 $x=1$ 及 $y=0$ 围成的平面区域 $D$ 的面积为2，求 $D$ 绕 $y$ 轴旋转所得旋转体的体积.
]

#ezexam.question[
（本题满分10分）计算二重积分 $integral.double_D(x-y)dif x dif y$，其中 $D={(x,y)|(x-1)^2+(y-1)^2<=2,y>=x}$.
]

#ezexam.question[
（本题满分12分）设 $y=y(x)$ 是区间 $(-pi,pi)$ 内过点 $(-pi/sqrt(2),pi/sqrt(2))$ 的光滑曲线.当 $-pi<x<0$ 时，曲线上任一点处的法线都过原点；当 $0<=x<pi$ 时，函数 $y(x)$ 满足 $y''+y+x=0$.求函数 $y(x)$ 的表达式.
]

#ezexam.question[
（本题满分11分）

（Ⅰ）证明拉格朗日中值定理：若函数 $f(x)$ 在 $[a,b]$ 上连续，在 $(a,b)$ 内可导，则存在 $xi in(a,b)$，使得 $f(b)-f(a)=f'(xi)(b-a)$.

（Ⅱ）证明：若函数 $f(x)$ 在 $x=0$ 处连续，在 $(0,delta)(delta>0)$ 内可导，且 $lim_(x->0^+)f'(x)=A$，则 $f'_+(0)$ 存在，且 $f'_+(0)=A$.
]

#ezexam.question[
（本题满分11分）设 $A=mat(1,-1,-1;-1,1,1;0,-4,-2),xi_1=mat(-1;1;-2)$.

（Ⅰ）求满足 $A xi_2=xi_1,A^2 xi_3=xi_1$ 的所有向量 $xi_2,xi_3$；

（Ⅱ）对（Ⅰ）中的任意向量 $xi_2,xi_3$，证明 $xi_1,xi_2,xi_3$ 线性无关.
]

#ezexam.question[
（本题满分11分）设二次型 $f(x_1,x_2,x_3)=a x_1^2+a x_2^2+(a-1)x_3^2+2x_1 x_3-2x_2 x_3$.

（Ⅰ）求二次型 $f$ 的矩阵的所有特征值；

（Ⅱ）若二次型 $f$ 的规范形为 $y_1^2+y_2^2$，求 $a$ 的值.
]

