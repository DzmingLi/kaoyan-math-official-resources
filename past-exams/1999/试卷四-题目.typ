#import "../template.typ": exam
#show: exam.with(year: 1999, subject: "四", title: "1999年全国硕士研究生入学考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)


= 一、填空题（本题共5小题，每小题3分，满分15分）
#ezexam.counter-question.step()

（1）设函数 $f(x)=a^x$（$a>0,a!=1$），则 $lim_(n->infinity) frac(1,n^2)ln[f(1)f(2)dots f(n)]=$ #fillin(len: 3em)[].

（2）设 $f(x,y,z)=e^x y z^2$，其中 $z=z(x,y)$ 是由 $x+y+z+x y z=0$ 确定的隐函数，则 $f'_x (0,1,-1)=$ #fillin(len: 3em)[].

（3）设 $A=mat(1,0,1;0,2,0;1,0,1)$，而 $n>=2$ 为整数，则 $A^n-2A^(n-1)=$ #fillin(len: 3em)[].

（4）已知 $A B-B=A$，其中 $B=mat(1,-2,0;2,1,0;0,0,2)$，则 $A=$ #fillin(len: 3em)[].

（5）设随机变量 $X$ 服从参数为 $lambda$ 的泊松（Poisson）分布，且已知 $E[(X-1)(X-2)]=1$，则 $lambda=$ #fillin(len: 3em)[].

= 二、选择题（本题共5小题，每小题3分，满分15分）
#ezexam.counter-question.step()

（1）设 $f(x)$ 是连续函数，$F(x)$ 是 $f(x)$ 的原函数，则（　）.
#choices[当 $f(x)$ 是奇函数时，$F(x)$ 必是偶函数.][当 $f(x)$ 是偶函数时，$F(x)$ 必是奇函数.][当 $f(x)$ 是周期函数时，$F(x)$ 必是周期函数.][当 $f(x)$ 是单调增函数时，$F(x)$ 必是单调增函数.]

（2）设 $f(x,y)$ 连续，且 $f(x,y)=x y+integral.double_D f(u,v)dif u dif v$，其中 $D$ 是由 $y=0,y=x^2,x=1$ 所围区域，则 $f(x,y)$ 等于（　）.
#choices[$x y$.][$2x y$.][$x y+frac(1,8)$.][$x y+1$.]

（3）设向量 $bold(beta)$ 可由向量组 $bold(alpha)_1,bold(alpha)_2,dots,bold(alpha)_m$ 线性表示，但不能由向量组（Ⅰ）：$bold(alpha)_1,bold(alpha)_2,dots,bold(alpha)_(m-1)$ 线性表示，记向量组（Ⅱ）：$bold(alpha)_1,bold(alpha)_2,dots,bold(alpha)_(m-1),bold(beta)$，则（　）.
#choices[$bold(alpha)_m$ 不能由（Ⅰ）线性表示，也不能由（Ⅱ）线性表示.][$bold(alpha)_m$ 不能由（Ⅰ）线性表示，但可由（Ⅱ）线性表示.][$bold(alpha)_m$ 可由（Ⅰ）线性表示，也可由（Ⅱ）线性表示.][$bold(alpha)_m$ 可由（Ⅰ）线性表示，但不可由（Ⅱ）线性表示.]

（4）设 $A,B$ 为 $n$ 阶矩阵，且 $A$ 与 $B$ 相似，$E$ 为 $n$ 阶单位矩阵，则（　）.
#choices[$lambda E-A=lambda E-B$.][$A$ 与 $B$ 有相同的特征值和特征向量.][$A$ 与 $B$ 都相似于一个对角矩阵.][对任意常数 $t$，$t E-A$ 与 $t E-B$ 相似.]

（5）设随机变量 $X_i tilde mat(delim:"(",-1,0,1;frac(1,4),frac(1,2),frac(1,4))$（$i=1,2$），且满足 $P{X_1 X_2=0}=1$，则 $P{X_1=X_2}$ 等于（　）.
#choices[0.][$frac(1,4)$.][$frac(1,2)$.][1.]

#ezexam.question(label: n => [三、])[
（本题满分6分）

曲线 $y=frac(1,sqrt(x))$ 的切线与 $x$ 轴和 $y$ 轴围成一个图形，记切点的横坐标为 $a$.试求切线方程和这个图形的面积.当切点沿曲线趋于无穷远时，该面积的变化趋势如何？


]

#ezexam.question(label: n => [四、])[
（本题满分7分）

计算二重积分 $integral.double_D y dif x dif y$，其中 $D$ 是由直线 $x=-2,y=0,y=2$ 以及曲线 $x=-sqrt(2y-y^2)$ 所围成的平面区域.


]

#ezexam.question(label: n => [五、])[
（本题满分6分）设生产某种产品必须投入两种要素，$x_1$ 和 $x_2$ 分别为两要素的投入量，$Q$ 为产出量，若生产函数为 $Q=2x_1^alpha x_2^beta$，其中 $alpha,beta$ 为正常数，且 $alpha+beta=1$.假设两种要素的价格分别为 $p_1$ 和 $p_2$，试问：当产出量为12时，两要素各投入多少可以使得投入总费用最小？


]

#ezexam.question(label: n => [六、])[
（本题满分6分）设 $F(x)$ 为 $f(x)$ 的原函数，且当 $x>=0$ 时，
$ f(x)F(x)=frac(x e^x,2(1+x)^2). $
已知 $F(0)=1$，$F(x)>0$，试求 $f(x)$.


]

#ezexam.question(label: n => [七、])[
（本题满分6分）已知 $f(x)$ 连续，$integral_0^x t f(x-t)dif t=1-cos x$，求 $integral_0^(frac(pi,2)) f(x)dif x$ 的值.


]

#ezexam.question(label: n => [八、])[
（本题满分6分）证明：当 $0<x<pi$ 时，有 $sin frac(x,2)>frac(x,pi)$.


]

#ezexam.question(label: n => [九、])[
（本题满分7分）设矩阵 $A=mat(3,2,-2;-k,-1,k;4,2,-3)$.问当 $k$ 为何值时，存在可逆矩阵 $P$，使得 $P^(-1)A P$ 为对角矩阵？并求出 $P$ 和相应的对角矩阵.


]

#ezexam.question(label: n => [十、])[
（本题满分9分）已知线性方程组
$ cases(x_1+x_2+x_3=0,a x_1+b x_2+c x_3=0,a^2 x_1+b^2 x_2+c^2 x_3=0). $
（1）$a,b,c$ 满足何种关系时，方程组仅有零解？

（2）$a,b,c$ 满足何种关系时，方程组有无穷多组解，并用基础解系表示全部解.


]

#ezexam.question(label: n => [十一、])[
（本题满分9分）设二维随机变量 $(X,Y)$ 在矩形 $G={(x,y)|0<=x<=2,0<=y<=1}$ 上服从均匀分布，试求边长为 $X$ 和 $Y$ 的矩形面积 $S$ 的概率密度 $f(s)$.


]

#ezexam.question(label: n => [十二、])[
（本题满分8分）已知随机变量 $X_1$ 和 $X_2$ 的概率分布
$ X_1 tilde mat(-1,0,1;frac(1,4),frac(1,2),frac(1,4)),quad X_2 tilde mat(0,1;frac(1,2),frac(1,2)), $
而且 $P{X_1 X_2=0}=1$.

（1）求 $X_1$ 和 $X_2$ 的联合分布；

（2）问 $X_1$ 和 $X_2$ 是否独立？为什么？

]
