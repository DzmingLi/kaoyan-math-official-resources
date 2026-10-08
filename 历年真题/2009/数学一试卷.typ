#import "../template.typ": exam
#show: exam.with(year: 2009, subject: "一", title: "2009年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)


= 一、选择题：1—8小题，每小题4分，共32分.在每小题给出的四个选项中，只有一项符合题目要求，把所选项前的字母填在题后的括号内.

#ezexam.question[
当 $x->0$ 时，$f(x)=x-sin(a x)$ 与 $g(x)=x^2 ln(1-b x)$ 是等价无穷小，则
#choices([$a=1,b=-1/6$.],[$a=1,b=1/6$.],[$a=-1,b=-1/6$.],[$a=-1,b=1/6$.])
]

#ezexam.question[
如图，正方形 ${ (x,y) | |x|<=1,|y|<=1 }$ 被其对角线划分为四个区域 $D_k(k=1,2,3,4)$，$I_k=integral.double_(D_k)y cos x dif x dif y$，则 $max_(1<=k<=4){I_k}=$ #fillin(len: 1.98438em)[].
#import "@preview/cetz:0.3.4": canvas, draw
#canvas({
 import draw: *
 line((-1,-1),(1,-1),(1,1),(-1,1),close:true)
 line((-1,-1),(1,1));line((-1,1),(1,-1))
 line((-1.5,0),(1.6,0),mark:(end:">"));line((0,-1.5),(0,1.6),mark:(end:">"))
 for (pos,label) in (((0,.6),$D_1$),((-.6,0),$D_2$),((0,-.6),$D_3$),((.6,0),$D_4$),((1.6,-.15),$x$),((-.15,1.6),$y$),((-.14,-.14),$O$),((1.1,-.15),[1]),((-1.1,-.15),[−1]),((-.15,1.1),[1]),((-.15,-1.1),[−1])) {content(pos,label)}
})
#choices([$I_1$.],[$I_2$.],[$I_3$.],[$I_4$.])
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
设有两个数列 ${a_n},{b_n}$，若 $lim_(n->infinity)a_n=0$，则
#choices([当 $sum_(n=1)^infinity b_n$ 收敛时，$sum_(n=1)^infinity a_n b_n$ 收敛.],[当 $sum_(n=1)^infinity b_n$ 发散时，$sum_(n=1)^infinity a_n b_n$ 发散.],[当 $sum_(n=1)^infinity|b_n|$ 收敛时，$sum_(n=1)^infinity a_n^2 b_n^2$ 收敛.],[当 $sum_(n=1)^infinity|b_n|$ 发散时，$sum_(n=1)^infinity a_n^2 b_n^2$ 发散.])
]

#ezexam.question[
设 $alpha_1,alpha_2,alpha_3$ 是3维向量空间 $bold(upright(R))^3$ 的一组基，则由基 $alpha_1,1/2 alpha_2,1/3 alpha_3$ 到基 $alpha_1+alpha_2,alpha_2+alpha_3,alpha_3+alpha_1$ 的过渡矩阵为
#choices([$mat(1,0,1;2,2,0;0,3,3)$.],[$mat(1,2,0;0,2,3;1,0,3)$.],[$mat(1/2,1/4,-1/6;-1/2,1/4,1/6;1/2,-1/4,1/6)$.],[$mat(1/2,-1/2,1/2;1/4,1/4,-1/4;-1/6,1/6,1/6)$.])
]

#ezexam.question[
设 $A,B$ 均为2阶矩阵，$A^*,B^*$ 分别为 $A,B$ 的伴随矩阵.若 $|A|=2,|B|=3$，则分块矩阵 $mat(O,A;B,O)$ 的伴随矩阵为
#choices([$mat(O,3B^*;2A^*,O)$.],[$mat(O,2B^*;3A^*,O)$.],[$mat(O,3A^*;2B^*,O)$.],[$mat(O,2A^*;3B^*,O)$.])
]

#ezexam.question[
设随机变量 $X$ 的分布函数为 $F(x)=0.3Phi(x)+0.7Phi((x-1)/2)$，其中 $Phi(x)$ 为标准正态分布的分布函数，则 $E X=$ #fillin(len: 1.98438em)[].
#choices([0.],[0.3.],[0.7.],[1.])
]

#ezexam.question[
设随机变量 $X$ 与 $Y$ 相互独立，且 $X$ 服从标准正态分布 $N(0,1)$，$Y$ 的概率分布为 $P{Y=0}=P{Y=1}=1/2$.记 $F_Z(z)$ 为随机变量 $Z=X Y$ 的分布函数，则函数 $F_Z(z)$ 的间断点个数为
#choices([0.],[1.],[2.],[3.])
]

= 二、填空题：9—14小题，每小题4分，共24分.把答案填在题中横线上.

#ezexam.question[
设函数 $f(u,v)$ 具有二阶连续偏导数，$z=f(x,x y)$，则 $(partial^2 z)/(partial x partial y)=$ #fillin(len: 1.98438em)[].
]

#ezexam.question[
若二阶常系数线性齐次微分方程 $y''+a y'+b y=0$ 的通解为 $y=(C_1+C_2 x)e^x$，则非齐次方程 $y''+a y'+b y=x$ 满足条件 $y(0)=2,y'(0)=0$ 的解为 $y=$ #fillin(len: 1.98438em)[].
]

#ezexam.question[
已知曲线 $L:y=x^2(0<=x<=sqrt(2))$，则 $integral_L x dif s=$ #fillin(len: 1.98438em)[].
]

#ezexam.question[
设 $Omega={(x,y,z)|x^2+y^2+z^2<=1}$，则 $integral.triple_Omega z^2 dif x dif y dif z=$ #fillin(len: 1.98438em)[].
]

#ezexam.question[
若3维列向量 $alpha,beta$ 满足 $alpha^T beta=2$，其中 $alpha^T$ 为 $alpha$ 的转置，则矩阵 $beta alpha^T$ 的非零特征值为 #fillin(len: 1.98438em)[].
]

#ezexam.question[
设 $X_1,X_2,dots,X_m$ 为来自二项分布总体 $B(n,p)$ 的简单随机样本，$overline(X)$ 和 $S^2$ 分别为样本均值和样本方差.若 $overline(X)+k S^2$ 为 $n p^2$ 的无偏估计量，则 $k=$ #fillin(len: 1.98438em)[].
]

= 三、解答题：15—23小题，共94分.解答应写出文字说明、证明过程或演算步骤.

#ezexam.question[
（本题满分9分）求二元函数 $f(x,y)=x^2(2+y^2)+y ln y$ 的极值.
]

#ezexam.question[
（本题满分9分）设 $a_n$ 为曲线 $y=x^n$ 与 $y=x^(n+1)(n=1,2,dots)$ 所围成区域的面积，记 $S_1=sum_(n=1)^infinity a_n,S_2=sum_(n=1)^infinity a_(2n-1)$，求 $S_1$ 与 $S_2$ 的值.
]

#ezexam.question[
（本题满分11分）椭球面 $S_1$ 是椭圆 $x^2/4+y^2/3=1$ 绕 $x$ 轴旋转而成，圆锥面 $S_2$ 是由过点 $(4,0)$ 且与椭圆 $x^2/4+y^2/3=1$ 相切的直线绕 $x$ 轴旋转而成.

（Ⅰ）求 $S_1$ 及 $S_2$ 的方程；

（Ⅱ）求 $S_1$ 与 $S_2$ 之间的立体体积.
]

#ezexam.question[
（本题满分11分）

（Ⅰ）证明拉格朗日中值定理：若函数 $f(x)$ 在 $[a,b]$ 上连续，在 $(a,b)$ 内可导，则存在 $xi in(a,b)$，使得 $f(b)-f(a)=f'(xi)(b-a)$.

（Ⅱ）证明：若函数 $f(x)$ 在 $x=0$ 处连续，在 $(0,delta)(delta>0)$ 内可导，且 $lim_(x->0^+)f'(x)=A$，则 $f'_+(0)$ 存在，且 $f'_+(0)=A$.
]

#ezexam.question[
（本题满分10分）计算曲面积分 $I=integral.surf_Sigma (x dif y dif z+y dif z dif x+z dif x dif y)/(x^2+y^2+z^2)^(3/2)$，其中 $Sigma$ 是曲面 $2x^2+2y^2+z^2=4$ 的外侧.
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
（本题满分11分）袋中有1个红球、2个黑球与3个白球.现有放回地从袋中取两次，每次取一个球，以 $X,Y,Z$ 分别表示两次取球所取得的红球、黑球与白球的个数.

（Ⅰ）求 $P{X=1|Z=0}$；

（Ⅱ）求二维随机变量 $(X,Y)$ 的概率分布.
]

#ezexam.question[
（本题满分11分）设总体 $X$ 的概率密度为 $f(x)=cases(lambda^2 x e^(-lambda x) quad x>0,0 quad "其他")$，其中参数 $lambda(lambda>0)$ 未知，$X_1,X_2,dots,X_n$ 是来自总体 $X$ 的简单随机样本.

（Ⅰ）求参数 $lambda$ 的矩估计量；

（Ⅱ）求参数 $lambda$ 的最大似然估计量.
]

