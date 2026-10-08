#import "../template.typ": exam
#show: exam.with(year: 1999, subject: "四", title: "1999年全国硕士研究生入学考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(true)


= 一、填空题（本题共5小题，每小题3分，满分15分）
#ezexam.counter-question.step()

（1）设函数 $f(x)=a^x$（$a>0,a!=1$），则 $lim_(n->infinity) frac(1,n^2)ln[f(1)f(2)dots f(n)]=$ #fillin(len: 3em)[].
#ezexam.solution(show-number: false)[
$frac(1,2)ln a$.
]

（2）设 $f(x,y,z)=e^x y z^2$，其中 $z=z(x,y)$ 是由 $x+y+z+x y z=0$ 确定的隐函数，则 $f'_x (0,1,-1)=$ #fillin(len: 3em)[].
#ezexam.solution(show-number: false)[
1.
]

（3）设 $A=mat(1,0,1;0,2,0;1,0,1)$，而 $n>=2$ 为整数，则 $A^n-2A^(n-1)=$ #fillin(len: 3em)[].
#ezexam.solution(show-number: false)[
$O$.
]

（4）已知 $A B-B=A$，其中 $B=mat(1,-2,0;2,1,0;0,0,2)$，则 $A=$ #fillin(len: 3em)[].
#ezexam.solution(show-number: false)[
$mat(1,frac(1,2),0;-frac(1,2),1,0;0,0,2)$.
]

（5）设随机变量 $X$ 服从参数为 $lambda$ 的泊松（Poisson）分布，且已知 $E[(X-1)(X-2)]=1$，则 $lambda=$ #fillin(len: 3em)[].
#ezexam.solution(show-number: false)[
1.
]

= 二、选择题（本题共5小题，每小题3分，满分15分）
#ezexam.counter-question.step()

（1）设 $f(x)$ 是连续函数，$F(x)$ 是 $f(x)$ 的原函数，则（　）.
#choices[当 $f(x)$ 是奇函数时，$F(x)$ 必是偶函数.][当 $f(x)$ 是偶函数时，$F(x)$ 必是奇函数.][当 $f(x)$ 是周期函数时，$F(x)$ 必是周期函数.][当 $f(x)$ 是单调增函数时，$F(x)$ 必是单调增函数.]
#ezexam.solution(show-number: false)[
A.
]

（2）设 $f(x,y)$ 连续，且 $f(x,y)=x y+integral.double_D f(u,v)dif u dif v$，其中 $D$ 是由 $y=0,y=x^2,x=1$ 所围区域，则 $f(x,y)$ 等于（　）.
#choices[$x y$.][$2x y$.][$x y+frac(1,8)$.][$x y+1$.]
#ezexam.solution(show-number: false)[
C.
]

（3）设向量 $bold(beta)$ 可由向量组 $bold(alpha)_1,bold(alpha)_2,dots,bold(alpha)_m$ 线性表示，但不能由向量组（Ⅰ）：$bold(alpha)_1,bold(alpha)_2,dots,bold(alpha)_(m-1)$ 线性表示，记向量组（Ⅱ）：$bold(alpha)_1,bold(alpha)_2,dots,bold(alpha)_(m-1),bold(beta)$，则（　）.
#choices[$bold(alpha)_m$ 不能由（Ⅰ）线性表示，也不能由（Ⅱ）线性表示.][$bold(alpha)_m$ 不能由（Ⅰ）线性表示，但可由（Ⅱ）线性表示.][$bold(alpha)_m$ 可由（Ⅰ）线性表示，也可由（Ⅱ）线性表示.][$bold(alpha)_m$ 可由（Ⅰ）线性表示，但不可由（Ⅱ）线性表示.]
#ezexam.solution(show-number: false)[
B.
]

（4）设 $A,B$ 为 $n$ 阶矩阵，且 $A$ 与 $B$ 相似，$E$ 为 $n$ 阶单位矩阵，则（　）.
#choices[$lambda E-A=lambda E-B$.][$A$ 与 $B$ 有相同的特征值和特征向量.][$A$ 与 $B$ 都相似于一个对角矩阵.][对任意常数 $t$，$t E-A$ 与 $t E-B$ 相似.]
#ezexam.solution(show-number: false)[
D.
]

（5）设随机变量 $X_i tilde mat(delim:"(",-1,0,1;frac(1,4),frac(1,2),frac(1,4))$（$i=1,2$），且满足 $P{X_1 X_2=0}=1$，则 $P{X_1=X_2}$ 等于（　）.
#choices[0.][$frac(1,4)$.][$frac(1,2)$.][1.]
#ezexam.solution(show-number: false)[
A.
]

#ezexam.question(label: n => [三、])[
（本题满分6分）

曲线 $y=frac(1,sqrt(x))$ 的切线与 $x$ 轴和 $y$ 轴围成一个图形，记切点的横坐标为 $a$.试求切线方程和这个图形的面积.当切点沿曲线趋于无穷远时，该面积的变化趋势如何？
#ezexam.solution(show-number: false)[
由 $y=frac(1,sqrt(x))$，得 $y'=-frac(1,2)x^(-frac(3,2))$，则切点 $P(a,frac(1,sqrt(a)))$ 处的切线方程为
$ y-frac(1,sqrt(a))=-frac(1,2sqrt(a^3))(x-a). quad "（2分）" $
#import "@preview/cetz:0.5.2"
#cetz.canvas({
 import cetz.draw: *
 set-style(stroke:0.6pt)
 line((-0.15,0),(3.5,0),mark:(end:">"));line((0,-0.15),(0,2.8),mark:(end:">"))
 line((0,1.5),(3,0))
 let curve=range(0,61).map(i=>{let x=0.16+i*3/60;(x,1/calc.sqrt(x))})
 line(..curve)
 line((1,0),(1,1),stroke:(dash:"dashed"));circle((1,1),radius:0.025,fill:black)
 content((3.6,0),$x$);content((0,2.9),$y$);content((-0.15,-0.12),$O$)
 content((-0.13,1.5),$R$);content((1,-0.18),$a$);content((1.1,1.22),$P$);content((3,-0.18),$Q$)
})
切线与 $x$ 轴和 $y$ 轴的交点分别为 $Q(3a,0)$ 和 $R(0,frac(3,2sqrt(a)))$. （3分）

于是，$triangle O R Q$ 的面积
$ S=frac(1,2)dot 3a dot frac(3,2sqrt(a))=frac(9,4)sqrt(a). quad "（4分）" $
当切点按 $x$ 轴正方向趋于无穷远时，有 $lim_(a -> +infinity) S=+infinity$. （5分）

当切点按 $y$ 轴正方向趋于无穷远时，有 $lim_(a -> 0^+) S=0$. （6分）
]


]

#ezexam.question(label: n => [四、])[
（本题满分7分）

计算二重积分 $integral.double_D y dif x dif y$，其中 $D$ 是由直线 $x=-2,y=0,y=2$ 以及曲线 $x=-sqrt(2y-y^2)$ 所围成的平面区域.
#ezexam.solution(show-number: false)[
*解法1* 区域 $D$ 和 $D_1$ 如图所示，有
#import "@preview/cetz:0.5.2"
#cetz.canvas({
 import cetz.draw: *
 set-style(stroke:0.6pt)
 let curve=range(0,61).map(i=>{let t=90deg+i*180deg/60;(calc.cos(t),1+calc.sin(t))})
 line((-2,0),(-2,2),(0,2),..curve,close:true,fill:luma(92%))
 line((-2.4,0),(1,0),mark:(end:">"));line((0,-0.2),(0,2.6),mark:(end:">"))
 content((1.1,0),$x$);content((0,2.7),$y$);content((0.12,-0.14),$O$)
 content((-2,-0.18),$-2$);content((0.16,2),$2$)
 content((-1.5,1),$D$);content((-0.45,1),$D_1$)
})
$ integral.double_D y dif x dif y=integral.double_(D+D_1) y dif x dif y-integral.double_(D_1) y dif x dif y, $
$ integral.double_(D+D_1) y dif x dif y=integral_(-2)^0 dif x integral_0^2 y dif y=4. quad "（2分）" $
在极坐标系下，有 $D_1={(r,theta)|0<=r<=2sin theta,frac(pi,2)<=theta<=pi}$，因此
$ integral.double_(D_1) y dif x dif y&=integral_(frac(pi,2))^pi dif theta integral_0^(2sin theta) r sin theta dot r dif r quad "（4分）" \
&=frac(8,3)integral_(frac(pi,2))^pi sin^4 theta dif theta \
&=frac(8,3times 4)integral_(frac(pi,2))^pi [1-2cos 2theta+frac(1+cos 4theta,2)]dif theta \
&=frac(pi,2). quad "（6分）" $
于是
$ integral.double_D y dif x dif y=4-frac(pi,2). quad "（7分）" $
*解法2* 如图所示，$D={(x,y)|-2<=x<=-sqrt(2y-y^2),0<=y<=2}$. （1分）
$ integral.double_D y dif x dif y&=integral_0^2 y dif y integral_(-2)^(-sqrt(2y-y^2)) dif x \
&=2integral_0^2 y dif y-integral_0^2 y sqrt(2y-y^2)dif y \
&=4-integral_0^2 y sqrt(1-(y-1)^2)dif y. quad "（3分）" $
令 $y-1=sin t$，有 $dif y=cos t dif t$，则 （4分）
$ integral_0^2 y sqrt(1-(y-1)^2)dif y&=integral_(-frac(pi,2))^(frac(pi,2)) (1+sin t)cos^2 t dif t \
&=integral_(-frac(pi,2))^(frac(pi,2)) cos^2 t dif t+integral_(-frac(pi,2))^(frac(pi,2)) cos^2 t sin t dif t \
&=integral_0^(frac(pi,2))(1+cos 2t)dif t
=frac(pi,2). quad "（6分）" $
于是
$ integral.double_D y dif x dif y=4-frac(pi,2). quad "（7分）" $
]


]

#ezexam.question(label: n => [五、])[
（本题满分6分）设生产某种产品必须投入两种要素，$x_1$ 和 $x_2$ 分别为两要素的投入量，$Q$ 为产出量，若生产函数为 $Q=2x_1^alpha x_2^beta$，其中 $alpha,beta$ 为正常数，且 $alpha+beta=1$.假设两种要素的价格分别为 $p_1$ 和 $p_2$，试问：当产出量为12时，两要素各投入多少可以使得投入总费用最小？
#ezexam.solution(show-number: false)[
需要在产出量 $2x_1^alpha x_2^beta=12$ 的条件下，求总费用 $p_1 x_1+p_2 x_2$ 的最小值.作拉格朗日函数
$ F(x_1,x_2,lambda)=p_1 x_1+p_2 x_2+lambda(12-2x_1^alpha x_2^beta). quad "（2分）" $
令
$ cases(frac(partial F,partial x_1)=p_1-2lambda alpha x_1^(alpha-1)x_2^beta=0 quad "（1）",frac(partial F,partial x_2)=p_2-2lambda beta x_1^alpha x_2^(beta-1)=0 quad "（2）",frac(partial F,partial lambda)=12-2x_1^alpha x_2^beta=0 quad "（3）"). quad "（3分）" $
由（1）、（2）得
$ frac(p_2,p_1)=frac(beta x_1,alpha x_2), quad x_1=frac(p_2 alpha,p_1 beta)x_2. $
代入（3）得
$ x_2=6(frac(p_1 beta,p_2 alpha))^alpha,quad x_1=6(frac(p_2 alpha,p_1 beta))^beta. quad "（5分）" $
因驻点唯一，且实际问题存在最小值，故上述计算结果说明，当两种生产要素的投入量分别为
$ x_1=6(frac(p_2 alpha,p_1 beta))^beta,quad x_2=6(frac(p_1 beta,p_2 alpha))^alpha $
时，投入总费用最小. （6分）
]


]

#ezexam.question(label: n => [六、])[
（本题满分6分）设 $F(x)$ 为 $f(x)$ 的原函数，且当 $x>=0$ 时，
$ f(x)F(x)=frac(x e^x,2(1+x)^2). $
已知 $F(0)=1$，$F(x)>0$，试求 $f(x)$.
#ezexam.solution(show-number: false)[
由 $F'(x)=f(x)$，有
$ 2F(x)F'(x)=frac(x e^x,(1+x)^2). quad "（1分）" $
于是，由
$ integral 2F(x)F'(x)dif x=integral frac(x e^x,(1+x)^2)dif x, quad "（2分）" $
得
$ F^2(x)=frac(e^x,1+x)+C. quad "（4分）" $
由 $F(0)=1$ 和 $F^2(0)=1+C$，得 $C=0$.从而
$ F(x)=sqrt(frac(e^x,1+x)) quad (F(x)>0), quad "（5分）" $
$ f(x)=frac(x e^(x/2),2(1+x)^(3/2)). quad "（6分）" $
]


]

#ezexam.question(label: n => [七、])[
（本题满分6分）已知 $f(x)$ 连续，$integral_0^x t f(x-t)dif t=1-cos x$，求 $integral_0^(frac(pi,2)) f(x)dif x$ 的值.
#ezexam.solution(show-number: false)[
令 $x-t=u$，有
$ integral_0^x t f(x-t)dif t=integral_0^x (x-u)f(u)dif u. quad "（2分）" $
于是
$ x integral_0^x f(u)dif u-integral_0^x u f(u)dif u=1-cos x. quad "（3分）" $
两边对 $x$ 求导，得
$ integral_0^x f(u)dif u=sin x. quad "（4分）" $
在上式中，令 $x=frac(pi,2)$，得
$ integral_0^(frac(pi,2)) f(x)dif x=1. quad "（6分）" $
]


]

#ezexam.question(label: n => [八、])[
（本题满分6分）证明：当 $0<x<pi$ 时，有 $sin frac(x,2)>frac(x,pi)$.
#ezexam.solution(show-number: false)[
*证法1* 设 $f(x)=sin frac(x,2)-frac(x,pi)$，有 （1分）
$ f'(x)=frac(1,2)cos frac(x,2)-frac(1,pi), $
$ f''(x)=-frac(1,4)sin frac(x,2)<0 quad (0<x<pi), quad "（2分）" $
则函数 $f(x)$ 对应的曲线在 $(0,pi)$ 内向上凸. （3分）

由于
$ f(0)=f(pi)=0, quad "（5分）" $
可见，当 $0<x<pi$ 时，$f(x)>0$，即
$ sin frac(x,2)>frac(x,pi). quad "（6分）" $
*证法2* 为证所给不等式，只需证明
$ frac(sin frac(x,2),x)>frac(1,pi) quad (0<x<pi). $
令
$ f(x)=frac(sin frac(x,2),x)-frac(1,pi) quad (0<x<pi), quad "（1分）" $
则
$ f'(x)=frac(frac(x,2)cos frac(x,2)-sin frac(x,2),x^2)=frac(cos frac(x,2)(frac(x,2)-tan frac(x,2)),x^2). quad "（3分）" $
因为对于 $0<x<pi$，有 $cos frac(x,2)>0$，$tan frac(x,2)>frac(x,2)$，所以 $f'(x)<0$，从而 $f(x)$ 在 $(0,pi)$ 内是单调减函数.因此，$f(x)>f(pi)=0$（$0<x<pi$），即
$ f(x)=frac(sin frac(x,2),x)-frac(1,pi)>0. quad "（6分）" $
于是，不等式得证.
]


]

#ezexam.question(label: n => [九、])[
（本题满分7分）设矩阵 $A=mat(3,2,-2;-k,-1,k;4,2,-3)$.问当 $k$ 为何值时，存在可逆矩阵 $P$，使得 $P^(-1)A P$ 为对角矩阵？并求出 $P$ 和相应的对角矩阵.
#ezexam.solution(show-number: false)[
由
$ |lambda E-A|&=mat(delim:"|",lambda-3,-2,2;k,lambda+1,-k;-4,-2,lambda+3) \
&=mat(delim:"|",lambda-1,-2,2;0,lambda+1,-k;0,0,lambda+1)=(lambda+1)^2(lambda-1), $
可得 $A$ 的特征值 $lambda_1=lambda_2=-1,lambda_3=1$. （2分）

对于 $lambda_1=-1$，有
$ (-E-A)=mat(-4,-2,2;k,0,-k;-4,-2,2)->mat(-4,-2,2;k,0,-k;0,0,0). quad "（3分）" $
当 $k=0$ 时，有
$ (-E-A)->mat(-4,-2,2;0,0,0;0,0,0)->mat(1,frac(1,2),-frac(1,2);0,0,0;0,0,0). $
对应的特征向量为
$ alpha_1=(-1,2,0)^T,quad alpha_2=(1,0,2)^T. quad "（4分）" $
对于 $lambda_3=1$，有
$ (E-A)=mat(-2,-2,2;k,2,-k;-4,-2,4)->mat(1,0,-1;0,1,0;0,0,0). $
对应的特征向量为
$ alpha_3=(1,0,1)^T. quad "（6分）" $
因此，当 $k=0$ 时，令
$ P=mat(-1,1,1;2,0,0;0,2,1),quad "则" P^(-1)A P=mat(-1,0,0;0,-1,0;0,0,1). quad "（7分）" $
]


]

#ezexam.question(label: n => [十、])[
（本题满分9分）已知线性方程组
$ cases(x_1+x_2+x_3=0,a x_1+b x_2+c x_3=0,a^2 x_1+b^2 x_2+c^2 x_3=0). $
（1）$a,b,c$ 满足何种关系时，方程组仅有零解？

（2）$a,b,c$ 满足何种关系时，方程组有无穷多组解，并用基础解系表示全部解.
#ezexam.solution(show-number: false)[
系数行列式
$ D=mat(delim:"|",1,1,1;a,b,c;a^2,b^2,c^2)=(a-b)(b-c)(c-a). quad "（2分）" $
（1）当 $a!=b,b!=c,c!=a$ 时，$D!=0$，方程组仅有零解
$ x_1=x_2=x_3=0. quad "（3分）" $
（2）下面分四种情况：

$1 degree.$ 当 $a=b!=c$ 时，同解方程组为
$ cases(x_1+x_2+x_3=0,x_3=0). $
方程组有无穷多组解，全部解为
$ k_1(1,-1,0)^T quad (k_1 "为任意常数"). quad "（5分）" $
$2 degree.$ 当 $a=c!=b$ 时，同解方程组为
$ cases(x_1+x_2+x_3=0,x_2=0). $
方程组有无穷多组解，全部解为
$ k_2(1,0,-1)^T quad (k_2 "为任意常数"). quad "（6分）" $
$3 degree.$ 当 $b=c!=a$ 时，同解方程组为
$ cases(x_1+x_2+x_3=0,x_1=0). $
方程组有无穷多组解，全部解为
$ k_3(0,1,-1)^T quad (k_3 "为任意常数"). quad "（7分）" $
$4 degree.$ 当 $a=b=c$ 时，同解方程组为
$ x_1+x_2+x_3=0, $
方程组有无穷多组解，全部解为
$ k_4(-1,1,0)^T+k_5(-1,0,1)^T quad (k_4,k_5 "为任意常数"). quad "（9分）" $
]


]

#ezexam.question(label: n => [十一、])[
（本题满分9分）设二维随机变量 $(X,Y)$ 在矩形 $G={(x,y)|0<=x<=2,0<=y<=1}$ 上服从均匀分布，试求边长为 $X$ 和 $Y$ 的矩形面积 $S$ 的概率密度 $f(s)$.
#ezexam.solution(show-number: false)[
二维随机变量 $(X,Y)$ 的概率密度为
$ psi(x,y)=cases(frac(1,2) quad "若" (x,y)in G,0 quad "若" (x,y)in.not G). $
设 $F(s)=P{S<=s}$ 为 $S$ 的分布函数，则

当 $s<=0$ 时，$F(s)=0$；

当 $s>=2$ 时，$F(s)=1$. （2分）

现在，设 $0<s<2$，曲线 $x y=s$ 与矩形 $G$ 的上边交于点 $(s,1)$；位于曲线 $x y=s$ 上方的点满足 $x y>s$，位于下方的点满足 $x y<s$，于是
#import "@preview/cetz:0.5.2"
#cetz.canvas({
 import cetz.draw: *
 set-style(stroke:0.6pt)
 line((-0.15,0),(3.4,0),mark:(end:">"));line((0,-0.15),(0,2.5),mark:(end:">"))
 line((0,1.5),(2.7,1.5),(2.7,0))
 line(..range(0,81).map(i=>{let x=0.38+i*2.72/80;(x,0.81/x)}))
 line((0.54,0),(0.54,1.5),stroke:(dash:"dashed"))
 content((3.4,-0.16),$x$);content((-0.15,2.5),$y$);content((-0.15,-0.16),$O$)
 content((0.54,-0.17),$s$);content((2.7,-0.17),$2$);content((-0.16,1.5),$1$)
 content((0.85,2.3),$x y=s$);content((1.7,1),$x y>s$);content((1,0.33),$x y<s$)
})
$ F(s)=P{S<=s}=P{X Y<=s}=1-P{X Y>s} quad "（4分）" $
$ &=1-integral.double_(x y>s) frac(1,2)dif x dif y=1-frac(1,2)integral_s^2 dif x integral_(s/x)^1 dif y \
&=frac(s,2)(1+ln 2-ln s). quad "（6分）" $
于是，
$ f(s)=cases(frac(1,2)(ln 2-ln s) quad "若" 0<s<2,0 quad "若" s<=0 "或" s>=2). quad "（9分）" $
]


]

#ezexam.question(label: n => [十二、])[
（本题满分8分）已知随机变量 $X_1$ 和 $X_2$ 的概率分布
$ X_1 tilde mat(-1,0,1;frac(1,4),frac(1,2),frac(1,4)),quad X_2 tilde mat(0,1;frac(1,2),frac(1,2)), $
而且 $P{X_1 X_2=0}=1$.

（1）求 $X_1$ 和 $X_2$ 的联合分布；

（2）问 $X_1$ 和 $X_2$ 是否独立？为什么？
#ezexam.solution(show-number: false)[
*解法1* （1）由 $P{X_1 X_2=0}=1$，可见
$ P{X_1=-1,X_2=1}=P{X_1=1,X_2=1}=0. quad "（2分）" $
易见
$ P{X_1=-1,X_2=0}&=P{X_1=-1}=frac(1,4); \
P{X_1=0,X_2=1}&=P{X_2=1}=frac(1,2); \
P{X_1=1,X_2=0}&=P{X_1=1}=frac(1,4); quad "（4分）" $
$ P{X_1=0,X_2=0}=1-(frac(1,4)+frac(1,2)+frac(1,4))=0. $
于是，得 $X_1$ 和 $X_2$ 的联合分布
#table(columns:5,[$X_2$ ∖ $X_1$],[$-1$],[0],[1],[$sum$],[0],[$frac(1,4)$],[0],[$frac(1,4)$],[$frac(1,2)$],[1],[0],[$frac(1,2)$],[0],[$frac(1,2)$],[$sum$],[$frac(1,4)$],[$frac(1,2)$],[$frac(1,4)$],[1])
（6分）

（2）由以上结果，可见
$ P{X_1=0,X_2=0}=0, $
$ P{X_1=0}P{X_2=0}=frac(1,4)!=0, $
于是，$X_1$ 和 $X_2$ 不独立. （8分）

注：考生只要用类似于（2）中的例子正确说明 $X_1$ 与 $X_2$ 不独立，均给2分.

*解法2* （1）由 $P{X_1 X_2=0}=1$，可见
$ P{X_1=-1,X_2=1}=P{X_1=1,X_2=1}=0. quad "（2分）" $
因此，$X_1$ 和 $X_2$ 的联合分布有如下结构：
#table(columns:5,[$X_2$ ∖ $X_1$],[$-1$],[0],[1],[$sum$],[0],[$p_(11)$],[$p_(21)$],[$p_(31)$],[$frac(1,2)$],[1],[0],[$p_(22)$],[0],[$frac(1,2)$],[$sum$],[$frac(1,4)$],[$frac(1,2)$],[$frac(1,4)$],[1])
（4分）

于是，由上表易见 $X_1$ 和 $X_2$ 的联合分布为：
#table(columns:5,[$X_2$ ∖ $X_1$],[$-1$],[0],[1],[$sum$],[0],[$frac(1,4)$],[0],[$frac(1,4)$],[$frac(1,2)$],[1],[0],[$frac(1,2)$],[0],[$frac(1,2)$],[$sum$],[$frac(1,4)$],[$frac(1,2)$],[$frac(1,4)$],[1])
（6分）

（2）同解法1. （8分）
]

]
