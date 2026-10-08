#import "../template.typ": exam
#show: exam.with(year: 2009, subject: "三", title: "2009年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)


= 一、选择题：1—8小题，每小题4分，共32分.在每小题给出的四个选项中，只有一项符合题目要求，把所选项前的字母填在题后的括号内.

#ezexam.question[
函数 $f(x)=(x-x^3)/(sin pi x)$ 的可去间断点的个数为
#choices([1.],[2.],[3.],[无穷多个.])
]

#ezexam.question[
当 $x->0$ 时，$f(x)=x-sin(a x)$ 与 $g(x)=x^2 ln(1-b x)$ 是等价无穷小，则
#choices([$a=1,b=-1/6$.],[$a=1,b=1/6$.],[$a=-1,b=-1/6$.],[$a=-1,b=1/6$.])
]

#ezexam.question[
使不等式 $integral_1^x (sin t)/t dif t>ln x$ 成立的 $x$ 的范围是
#choices([$(0,1)$.],[$(1,pi/2)$.],[$(pi/2,pi)$.],[$(pi,+infinity)$.])
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

#ezexam.question[
设事件 $A$ 与事件 $B$ 互不相容，则
#choices([$P(overline(A) overline(B))=0$.],[$P(A B)=P(A)P(B)$.],[$P(A)=1-P(B)$.],[$P(overline(A) union overline(B))=1$.])
]

#ezexam.question[
设随机变量 $X$ 与 $Y$ 相互独立，且 $X$ 服从标准正态分布 $N(0,1)$，$Y$ 的概率分布为 $P{Y=0}=P{Y=1}=1/2$.记 $F_Z(z)$ 为随机变量 $Z=X Y$ 的分布函数，则函数 $F_Z(z)$ 的间断点个数为
#choices([0.],[1.],[2.],[3.])
]

= 二、填空题：9—14小题，每小题4分，共24分.把答案填在题中横线上.

#ezexam.question[
$lim_(x->0)(e-e^(cos x))/(root(3,1+x^2)-1)=$ #fillin(len: 1.98438em)[].
]

#ezexam.question[
设 $z=(x+e^y)^x$，则 $(partial z)/(partial x)|_((1,0))=$ #fillin(len: 1.98438em)[].
]

#ezexam.question[
幂级数 $sum_(n=1)^infinity(e^n-(-1)^n)/n^2 x^n$ 的收敛半径为 #fillin(len: 1.98438em)[].
]

#ezexam.question[
设某产品的需求函数为 $Q=Q(p)$，其对价格 $p$ 的弹性 $epsilon_p=0.2$，则当需求量为10000件时，价格增加1元会使产品收益增加 #fillin(len: 1.98438em)[] 元.
]

#ezexam.question[
设 $alpha=(1,1,1)^T,beta=(1,0,k)^T$.若矩阵 $alpha beta^T$ 相似于 $mat(3,0,0;0,0,0;0,0,0)$，则 $k=$ #fillin(len: 1.98438em)[].
]

#ezexam.question[
设 $X_1,X_2,dots,X_m$ 为来自二项分布总体 $B(n,p)$ 的简单随机样本，$overline(X)$ 和 $S^2$ 分别为样本均值和样本方差.记统计量 $T=overline(X)-S^2$，则 $E T=$ #fillin(len: 1.98438em)[].
]

= 三、解答题：15—23小题，共94分.解答应写出文字说明、证明过程或演算步骤.

#ezexam.question[
（本题满分9分）求二元函数 $f(x,y)=x^2(2+y^2)+y ln y$ 的极值.
]

#ezexam.question[
（本题满分10分）计算不定积分 $integral ln(1+sqrt((1+x)/x))dif x(x>0)$.
]

#ezexam.question[
（本题满分10分）计算二重积分 $integral.double_D(x-y)dif x dif y$，其中 $D={(x,y)|(x-1)^2+(y-1)^2<=2,y>=x}$.
]

#ezexam.question[
（本题满分11分）

（Ⅰ）证明拉格朗日中值定理：若函数 $f(x)$ 在 $[a,b]$ 上连续，在 $(a,b)$ 内可导，则存在 $xi in(a,b)$，使得 $f(b)-f(a)=f'(xi)(b-a)$.

（Ⅱ）证明：若函数 $f(x)$ 在 $x=0$ 处连续，在 $(0,delta)(delta>0)$ 内可导，且 $lim_(x->0^+)f'(x)=A$，则 $f'_+(0)$ 存在，且 $f'_+(0)=A$.
]

#ezexam.question[
（本题满分10分）设曲线 $y=f(x)$，其中 $f(x)$ 是可导函数，且 $f(x)>0$.已知曲线 $y=f(x)$ 与直线 $y=0,x=1$ 及 $x=t(t>1)$ 所围成的曲边梯形绕 $x$ 轴旋转一周所得的立体体积值是该曲边梯形面积值的 $pi t$ 倍，求该曲线的方程.
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

#ezexam.question[
（本题满分11分）设二维随机变量 $(X,Y)$ 的概率密度为 $f(x,y)=cases(e^(-x) quad 0<y<x,0 quad "其他")$.

（Ⅰ）求条件概率密度 $f_(Y|X)(y|x)$；

（Ⅱ）求条件概率 $P{X<=1|Y<=1}$.
]

#ezexam.question[
（本题满分11分）袋中有1个红球、2个黑球与3个白球.现有放回地从袋中取两次，每次取一个球，以 $X,Y,Z$ 分别表示两次取球所取得的红球、黑球与白球的个数.

（Ⅰ）求 $P{X=1|Z=0}$；

（Ⅱ）求二维随机变量 $(X,Y)$ 的概率分布.
]

