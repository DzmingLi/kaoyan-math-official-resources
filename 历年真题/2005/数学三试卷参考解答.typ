#import "../template.typ": exam
#show: exam.with(year: 2005, subject: "三", title: "2005年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#ezexam.answer-state.update(true)


= 一、填空题（本题共6小题，每小题4分，满分24分）

#ezexam.question[
极限 $lim_(x->infinity)x sin((2x)/(x^2+1))=$#h(3em).
#ezexam.solution(show-number: false)[
2.
]
]

#ezexam.question[
微分方程 $x y'+y=0$ 满足初始条件 $y(1)=2$ 的特解为#h(3em).
#ezexam.solution(show-number: false)[
$x y=2$.
]
]

#ezexam.question[
设二元函数 $z=x e^(x+y)+(x+1)ln(1+y)$，则 $dif z|_((1,0))=$#h(3em).
#ezexam.solution(show-number: false)[
$2e dif x+(e+2)dif y$.
]
]

#ezexam.question[
设行向量组 $(2,1,1,1),(2,1,a,a),(3,2,1,a),(4,3,2,1)$ 线性相关，且 $a!=1$，则 $a=$#h(3em).
#ezexam.solution(show-number: false)[
$1/2$.
]
]

#ezexam.question[
从数1，2，3，4中任取一个数，记为 $X$，再从 $1,dots,X$ 中任取一个数，记为 $Y$，则 $P{Y=2}=$#h(3em).
#ezexam.solution(show-number: false)[
$13/48$.
]
]

#ezexam.question[
设二维随机变量 $(X,Y)$ 的概率分布为
#table(columns:3,[$X$ / $Y$],[0],[1],[0],[0.4],[$a$],[1],[$b$],[0.1])
若随机事件 $\{X=0\}$ 与 $\{X+Y=1\}$ 相互独立，则 $a=$#h(3em)，$b=$#h(3em).
#ezexam.solution(show-number: false)[
$a=0.4,b=0.1$.
]
]

= 二、选择题（本题共8小题，每小题4分，满分32分）

#ezexam.question[
当 $a$ 取下列哪个值时，函数 $f(x)=2x^3-9x^2+12x-a$ 恰有两个不同的零点？
#choices[2.][4.][6.][8.]
#ezexam.solution(show-number: false)[
B.
]
]

#ezexam.question[
设 $I_1=integral.double_D cos sqrt(x^2+y^2)dif sigma,I_2=integral.double_D cos(x^2+y^2)dif sigma,I_3=integral.double_D cos((x^2+y^2)^2)dif sigma$，其中 $D={(x,y)|x^2+y^2<=1}$，则
#choices([$I_3>I_2>I_1$.],[$I_1>I_2>I_3$.],[$I_2>I_1>I_3$.],[$I_3>I_1>I_2$.])
#ezexam.solution(show-number: false)[
A.
]
]

#ezexam.question[
设 $a_n>0,n=1,2,dots$，若 $sum_(n=1)^infinity a_n$ 发散，$sum_(n=1)^infinity(-1)^(n-1)a_n$ 收敛，则下列结论正确的是
#choices([$sum_(n=1)^infinity a_(2n-1)$ 收敛，$sum_(n=1)^infinity a_(2n)$ 发散.],[$sum_(n=1)^infinity a_(2n)$ 收敛，$sum_(n=1)^infinity a_(2n-1)$ 发散.],[$sum_(n=1)^infinity(a_(2n-1)+a_(2n))$ 收敛.],[$sum_(n=1)^infinity(a_(2n-1)-a_(2n))$ 收敛.])
#ezexam.solution(show-number: false)[
D.
]
]

#ezexam.question[
设 $f(x)=x sin x+cos x$，下列命题中正确的是
#choices([$f(0)$ 是极大值，$f(pi/2)$ 是极小值.],[$f(0)$ 是极小值，$f(pi/2)$ 是极大值.],[$f(0)$ 是极大值，$f(pi/2)$ 也是极大值.],[$f(0)$ 是极小值，$f(pi/2)$ 也是极小值.])
#ezexam.solution(show-number: false)[
B.
]
]

#ezexam.question[
以下四个命题中，正确的是
#choices([若 $f'(x)$ 在 $(0,1)$ 内连续，则 $f(x)$ 在 $(0,1)$ 内有界.],[若 $f(x)$ 在 $(0,1)$ 内连续，则 $f(x)$ 在 $(0,1)$ 内有界.],[若 $f'(x)$ 在 $(0,1)$ 内有界，则 $f(x)$ 在 $(0,1)$ 内有界.],[若 $f(x)$ 在 $(0,1)$ 内有界，则 $f'(x)$ 在 $(0,1)$ 内有界.])
#ezexam.solution(show-number: false)[
C.
]
]

#ezexam.question[
设矩阵 $A=(a_(i j))_(3 times 3)$ 满足 $A^*=A^T$，其中 $A^*$ 为 $A$ 的伴随矩阵，$A^T$ 为 $A$ 的转置矩阵.若 $a_11,a_12,a_13$ 为三个相等的正数，则 $a_11$ 为
#choices([$sqrt(3)/3$.],[3.],[$1/3$.],[$sqrt(3)$.])
#ezexam.solution(show-number: false)[
A.
]
]

#ezexam.question[
设 $lambda_1,lambda_2$ 是矩阵 $A$ 的两个不同的特征值，对应的特征向量分别为 $alpha_1,alpha_2$，则 $alpha_1,A(alpha_1+alpha_2)$ 线性无关的充分必要条件是
#choices([$lambda_1=0$.],[$lambda_2=0$.],[$lambda_1!=0$.],[$lambda_2!=0$.])
#ezexam.solution(show-number: false)[
D.
]
]

#ezexam.question[
设一批零件的长度服从正态分布 $N(mu,sigma^2)$，其中 $mu,sigma^2$ 均未知.现从中随机抽取16个零件，测得样本均值 $overline(x)=20$（cm），样本标准差 $s=1$（cm），则 $mu$ 的置信度为0.90的置信区间是
#choices([$(20-1/4 t_0.05(16),20+1/4 t_0.05(16))$.],[$(20-1/4 t_0.1(16),20+1/4 t_0.1(16))$.],[$(20-1/4 t_0.05(15),20+1/4 t_0.05(15))$.],[$(20-1/4 t_0.1(15),20+1/4 t_0.1(15))$.])
#ezexam.solution(show-number: false)[
C.
]
]

= 三、解答题（本题共9小题，满分94分. 解答应写出文字说明、证明过程或演算步骤.）

#ezexam.question[
（本题满分8分）

求 $lim_(x->0)((1+x)/(1-e^(-x))-1/x)$.
#ezexam.solution(show-number: false)[
$ lim_(x->0)((1+x)/(1-e^(-x))-1/x) \
=lim_(x->0)(x+x^2-1+e^(-x))/(x(1-e^(-x))) \
=lim_(x->0)(x+x^2-1+e^(-x))/x^2 \
=lim_(x->0)(1+2x-e^(-x))/(2x) \
=lim_(x->0)(2+e^(-x))/2=3/2. $
]
]

#ezexam.question[
（本题满分8分）

设 $f(u)$ 具有二阶连续导数，且 $g(x,y)=f(y/x)+y f(x/y)$，求 $x^2(partial^2 g)/(partial x^2)-y^2(partial^2 g)/(partial y^2)$.
#ezexam.solution(show-number: false)[
由已知条件可得
$ (partial g)/(partial x)=-y/x^2 f'(y/x)+f'(x/y), $
$ (partial^2 g)/(partial x^2)=(2y)/x^3 f'(y/x)+y^2/x^4 f''(y/x)+1/y f''(x/y), $
$ (partial g)/(partial y)=1/x f'(y/x)+f(x/y)-x/y f'(x/y), $
$ (partial^2 g)/(partial y^2)=1/x^2 f''(y/x)-x/y^2 f'(x/y)+x/y^2 f'(x/y)+x^2/y^3 f''(x/y) \
=1/x^2 f''(y/x)+x^2/y^3 f''(x/y), $
所以
$ x^2(partial^2 g)/(partial x^2)-y^2(partial^2 g)/(partial y^2) \
=(2y)/x f'(y/x)+y^2/x^2 f''(y/x)+x^2/y f''(x/y)-y^2/x^2 f''(y/x)-x^2/y f''(x/y) \
=(2y)/x f'(y/x). $
]
]

#ezexam.question[
（本题满分9分）

计算二重积分 $integral.double_D |x^2+y^2-1|dif sigma$，其中 $D={(x,y)|0<=x<=1,0<=y<=1}$.
#ezexam.solution(show-number: false)[
解法1　将区域 $D$ 分成两个子区域：
$ D_1={(x,y)|x^2+y^2<=1,x>=0,y>=0}, $
$ D_2={(x,y)|x^2+y^2>=1,0<=x<=1,0<=y<=1}, $
则
$ integral.double_D |x^2+y^2-1|dif sigma=integral.double_(D_1)(1-x^2-y^2)dif sigma+integral.double_(D_2)(x^2+y^2-1)dif sigma. $
由于
$ integral.double_(D_1)(1-x^2-y^2)dif sigma=integral_0^(pi/2)dif theta integral_0^1(1-r^2)r dif r=pi/8, $
$ integral.double_(D_2)(x^2+y^2-1)dif sigma=integral.double_D(x^2+y^2-1)dif sigma-integral.double_(D_1)(x^2+y^2-1)dif sigma \
=integral_0^1 dif x integral_0^1(x^2+y^2-1)dif y-(-pi/8) \
=integral_0^1(x^2+1/3-1)dif x+pi/8 \
=lr([x^3/3-2/3 x])|_0^1+pi/8=-1/3+pi/8, $
故 $integral.double_D |x^2+y^2-1|dif sigma=pi/8-1/3+pi/8=pi/4-1/3$.

解法2　如下图所示，将 $D$ 分成 $D_1$ 与 $D_2$ 两部分.
#import "@preview/cetz:0.5.2": canvas, draw
#align(center,canvas({
 import draw: *
 line((0,0),(3.5,0),mark:(end:">"));line((0,0),(0,3.5),mark:(end:">"))
 line((0,3),(3,3),(3,0));arc((3,0),start:0deg,stop:90deg,radius:3)
 content((-.15,-.15),$O$);content((3,-.2),[1]);content((-.2,3),[1]);content((3.6,0),$x$);content((0,3.7),$y$)
 content((1.1,1.2),$D_1$);content((2.6,2.6),$D_2$);content((3.9,1.7),$x^2+y^2=1$);line((2.65,1.4),(3.2,1.7))
}))
$ integral.double_D|x^2+y^2-1|dif sigma=integral.double_(D_1)(1-x^2-y^2)dif sigma+integral.double_(D_2)(x^2+y^2-1)dif sigma. $
由于 $integral.double_(D_1)(1-x^2-y^2)dif sigma=integral_0^(pi/2)dif theta integral_0^1(1-r^2)r dif r=pi/8$，
$ integral.double_(D_2)(x^2+y^2-1)dif sigma=integral_0^1 dif x integral_(sqrt(1-x^2))^1(x^2+y^2-1)dif y \
=integral_0^1 lr([x^2 y+y^3/3-y])|_(sqrt(1-x^2))^1 dif x \
=integral_0^1[x^2-2/3+2/3(1-x^2)^(3/2)]dif x \
=integral_0^1(x^2-2/3)dif x+2/3 integral_0^1(1-x^2)^(3/2)dif x \
=-1/3+2/3 I, $
其中
$ I=integral_0^1(1-x^2)^(3/2)dif x=integral_0^(pi/2)cos^4 t dif t=3/4 dot 1/2 dot pi/2=(3pi)/16 $
（令 $x=sin t$）.因此
$ integral.double_(D_2)(x^2+y^2-1)dif sigma=-1/3+2/3 dot (3pi)/16=pi/8-1/3, $
$ integral.double_D|x^2+y^2-1|dif sigma=pi/8+pi/8-1/3=pi/4-1/3. $
]
]

#ezexam.question[
（本题满分9分）

求幂级数 $sum_(n=1)^infinity(1/(2n+1)-1)x^(2n)$ 在区间 $(-1,1)$ 内的和函数 $S(x)$.
#ezexam.solution(show-number: false)[
设 $S(x)=sum_(n=1)^infinity(1/(2n+1)-1)x^(2n),S_1(x)=sum_(n=1)^infinity x^(2n)/(2n+1),S_2(x)=sum_(n=1)^infinity x^(2n)$，则 $S(x)=S_1(x)-S_2(x),x in (-1,1)$.

由于
$ S_2(x)=sum_(n=1)^infinity x^(2n)=x^2/(1-x^2), $
$ [x S_1(x)]'=sum_(n=1)^infinity x^(2n)=x^2/(1-x^2),quad x in (-1,1), $
因此 $x S_1(x)=integral_0^x t^2/(1-t^2)dif t=-x+1/2 ln((1+x)/(1-x))$.

又由于 $S_1(0)=0$，故
$ S_1(x)=cases(-1+1/(2x)ln((1+x)/(1-x)) & |x| in (0,1),0 & x=0), $
所以
$ S(x)=S_1(x)-S_2(x)=cases(1/(2x)ln((1+x)/(1-x))-1/(1-x^2) & |x| in (0,1),0 & x=0). $
]
]

#ezexam.question[
（本题满分8分）

设 $f(x),g(x)$ 在 $[0,1]$ 上的导数连续，且 $f(0)=0,f'(x)>=0,g'(x)>=0$.证明：对任意 $a in [0,1]$，有
$ integral_0^a g(x)f'(x)dif x+integral_0^1 f(x)g'(x)dif x>=f(a)g(1). $
#ezexam.solution(show-number: false)[
证法1　设
$ F(x)=integral_0^x g(t)f'(t)dif t+integral_0^1 f(t)g'(t)dif t-f(x)g(1),quad x in [0,1], $
则 $F(x)$ 在 $[0,1]$ 上的导数连续，并且
$ F'(x)=g(x)f'(x)-f'(x)g(1)=f'(x)[g(x)-g(1)]. $
由于 $x in [0,1]$ 时，$f'(x)>=0,g'(x)>=0$，因此 $F'(x)<=0$，即 $F(x)$ 在 $[0,1]$ 上单调递减.

注意到
$ F(1)=integral_0^1 g(t)f'(t)dif t+integral_0^1 f(t)g'(t)dif t-f(1)g(1), $
而
$ integral_0^1 g(t)f'(t)dif t=integral_0^1 g(t)dif f(t) \
=lr(g(t)f(t))|_0^1-integral_0^1 f(t)g'(t)dif t \
=f(1)g(1)-integral_0^1 f(t)g'(t)dif t, $
故 $F(1)=0$.因此 $x in [0,1]$ 时，$F(x)>=0$，由此可得对任意 $a in [0,1]$，有
$ integral_0^a g(x)f'(x)dif x+integral_0^1 f(x)g'(x)dif x>=f(a)g(1). $

证法2　因为
$ integral_0^a g(x)f'(x)dif x=lr(g(x)f(x))|_0^a-integral_0^a f(x)g'(x)dif x \
=f(a)g(a)-integral_0^a f(x)g'(x)dif x, $
则
$ integral_0^a g(x)f'(x)dif x+integral_0^1 f(x)g'(x)dif x \
=f(a)g(a)-integral_0^a f(x)g'(x)dif x+integral_0^1 f(x)g'(x)dif x \
=f(a)g(a)+integral_a^1 f(x)g'(x)dif x. $
由于 $x in [0,1]$ 时，$f'(x)>=0$，因此 $f(x)$ 在 $[0,1]$ 上单调递增，$f(x)>=f(a),x in [a,1]$.

又由于 $x in [0,1]$ 时，$g'(x)>=0$，因此
$ f(x)g'(x)>=f(a)g'(x),quad x in [a,1], $
$ integral_a^1 f(x)g'(x)dif x>=integral_a^1 f(a)g'(x)dif x=f(a)[g(1)-g(a)], $
从而
$ integral_0^a g(x)f'(x)dif x+integral_0^1 f(x)g'(x)dif x
>=f(a)g(a)+f(a)[g(1)-g(a)]=f(a)g(1). $
]
]

#ezexam.question[
（本题满分13分）

已知齐次线性方程组
$ ("i")cases(x_1+2x_2+3x_3=0,2x_1+3x_2+5x_3=0,x_1+x_2+a x_3=0) $
和
$ ("ii")cases(x_1+b x_2+c x_3=0,2x_1+b^2 x_2+(c+1)x_3=0) $
同解，求 $a,b,c$ 的值.
#ezexam.solution(show-number: false)[
方程组（ii）的未知量个数大于方程的个数，故方程组（ii）有无穷多个解.因为方程组（i）与（ii）同解，所以方程组（i）的系数矩阵的秩小于3.

对方程组（i）的系数矩阵施以初等行变换
$ mat(1,2,3;2,3,5;1,1,a)->mat(1,0,1;0,1,1;0,0,a-2), $
从而 $a=2$.此时，方程组（i）的系数矩阵可化为
$ mat(1,2,3;2,3,5;1,1,2)->mat(1,0,1;0,1,1;0,0,0), $
故 $(-1,-1,1)^T$ 是方程组（i）的一个基础解系.

将 $x_1=-1,x_2=-1,x_3=1$ 代入方程组（ii）可得 $b=1,c=2$ 或 $b=0,c=1$.

当 $b=1,c=2$ 时，对方程组（ii）的系数矩阵施以初等行变换，有
$ mat(1,1,2;2,1,3)->mat(1,0,1;0,1,1), $
故方程组（i）与（ii）同解.

当 $b=0,c=1$ 时，方程组（ii）的系数矩阵可化为
$ mat(1,0,1;2,0,2)->mat(1,0,1;0,0,0), $
故方程组（i）与（ii）的解不相同.综上所述，当 $a=2,b=1,c=2$ 时，方程组（i）与（ii）同解.
]
]

#ezexam.question[
（本题满分13分）

设 $D=mat(A,C;C^T,B)$ 为正定矩阵，其中 $A,B$ 分别为 $m$ 阶、$n$ 阶对称矩阵，$C$ 为 $m times n$ 阶矩阵.

（Ⅰ）计算 $P^T D P$，其中 $P=mat(E_m,-A^(-1)C;O,E_n)$；

（Ⅱ）利用（Ⅰ）的结果判断矩阵 $B-C^T A^(-1)C$ 是否为正定矩阵，并证明你的结论.
#ezexam.solution(show-number: false)[
（Ⅰ）因 $P^T=mat(E_m,O;-C^T A^(-1),E_n)$，有
$ P^T D P=mat(E_m,O;-C^T A^(-1),E_n)mat(A,C;C^T,B)mat(E_m,-A^(-1)C;O,E_n) \
=mat(A,C;O,B-C^T A^(-1)C)mat(E_m,-A^(-1)C;O,E_n) \
=mat(A,O;O,B-C^T A^(-1)C). $
（Ⅱ）矩阵 $B-C^T A^(-1)C$ 是正定矩阵.

由（Ⅰ）的结果可知，矩阵 $D$ 合同于矩阵 $M=mat(A,O;O,B-C^T A^(-1)C)$.又 $D$ 为正定矩阵，可知矩阵 $M$ 为正定矩阵.

因矩阵 $M$ 为对称矩阵，故 $B-C^T A^(-1)C$ 为对称矩阵.对 $X=underbrace((0,0,dots,0),m)^T$ 及任意的 $Y=(y_1,y_2,dots,y_n)^T!=bold(0)$，有
$ (X^T,Y^T)mat(A,O;O,B-C^T A^(-1)C)mat(X;Y)>0, $
即 $Y^T(B-C^T A^(-1)C)Y>0$.故 $B-C^T A^(-1)C$ 为正定矩阵.
]
]

#ezexam.question[
（本题满分13分）设二维随机变量 $(X,Y)$ 的概率密度为
$ f(x,y)=cases(1 & 0<x<1,0<y<2x,0 & #text[其他]). $
求：（Ⅰ）$(X,Y)$ 的边缘概率密度 $f_X(x),f_Y(y)$；

（Ⅱ）$Z=2X-Y$ 的概率密度 $f_Z(z)$；

（Ⅲ）$P{Y<=1/2 | X<=1/2}$.
#ezexam.solution(show-number: false)[
解　（Ⅰ）当 $0<x<1$ 时，$f_X(x)=integral_(-infinity)^(+infinity)f(x,y)dif y=integral_0^(2x)dif y=2x$；当 $x<=0$ 或 $x>=1$ 时，$f_X(x)=0$，即 $f_X(x)=cases(2x & 0<x<1,0 & #text[其他])$.
当 $0<y<2$ 时，$f_Y(y)=integral_(-infinity)^(+infinity)f(x,y)dif x=integral_(y/2)^1 dif x=1-y/2$；当 $y<=0$ 或 $y>=2$ 时，$f_Y(y)=0$，即 $f_Y(y)=cases(1-y/2 & 0<y<2,0 & #text[其他])$.

（Ⅱ）解法1　当 $z<=0$ 时，$F_Z(z)=0$；当 $0<z<2$ 时，
$ F_Z(z)=P{2X-Y<=z}=integral.double_(2x-y<=z)f(x,y)dif x dif y=z-z^2/4; $
当 $z>=2$ 时，$F_Z(z)=1$，所以 $f_Z(z)=cases(1-z/2 & 0<z<2,0 & #text[其他])$.
解法2　$f_Z(z)=integral_(-infinity)^(+infinity)f(x,2x-z)dif x$，其中 $f(x,2x-z)=cases(1 & 0<x<1,0<z<2x,0 & #text[其他])$.
当 $z<=0$ 或 $z>=2$ 时，$f_Z(z)=0$；当 $0<z<2$ 时，$f_Z(z)=integral_(z/2)^1 dif x=1-z/2$，即 $f_Z(z)=cases(1-z/2 & 0<z<2,0 & #text[其他])$.
（Ⅲ）$P{Y<=1/2 | X<=1/2}=(P{X<=1/2,Y<=1/2})/(P{X<=1/2})=(3/16)/(1/4)=3/4$.
]
]

#ezexam.question[
（本题满分13分）

设 $X_1,X_2,dots,X_n (n>2)$ 为来自总体 $N(0,sigma^2)$ 的简单随机样本，其样本均值为 $overline(X)$.记 $Y_i=X_i-overline(X),i=1,2,dots,n$.

（Ⅰ）求 $Y_i$ 的方差 $D Y_i,i=1,2,dots,n$；

（Ⅱ）求 $Y_1$ 与 $Y_n$ 的协方差 $op("Cov")(Y_1,Y_n)$；

（Ⅲ）若 $c(Y_1+Y_n)^2$ 是 $sigma^2$ 的无偏估计量，求常数 $c$.
#ezexam.solution(show-number: false)[
（Ⅰ）
$ D Y_i=D(X_i-overline(X))=D[(1-1/n)X_i-1/n sum_(k!=i)X_k]=(n-1)/n sigma^2,quad i=1,2,dots,n. $
（Ⅱ）
$ op("Cov")(Y_1,Y_n)&=E(Y_1-E Y_1)(Y_n-E Y_n) \
&=E(X_1-overline(X))(X_n-overline(X)) \
&=E(X_1 X_n)+E(overline(X)^2)-E(X_1 overline(X))-E(X_n overline(X)) \
&=E X_1 E X_n+D overline(X)-1/n E(X_1^2)-1/n sum_(i=2)^n E(X_1 X_i) \
&quad -1/n E(X_n^2)-1/n sum_(i=1)^(n-1)E(X_i X_n)=-1/n sigma^2. $
（Ⅲ）
$ E[c(Y_1+Y_n)^2]&=c D(Y_1+Y_n) \
&=c[D Y_1+D Y_n+2op("Cov")(Y_1,Y_n)] \
&=c((n-1)/n+(n-1)/n-2/n)sigma^2 \
&=(2(n-2))/n c sigma^2=sigma^2, $
故 $c=n/(2(n-2))$.
]
]

