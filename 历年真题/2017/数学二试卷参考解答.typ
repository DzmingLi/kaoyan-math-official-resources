#import "../template.typ": exam
#show: exam.with(year: 2017, subject: "二")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(true)


= 一、选择题：1—8小题，每小题4分，共32分. 在每小题给出的四个选项中，只有一项符合题目要求，把所选项前的字母填在题后的括号内.

#ezexam.question[
若函数 $f(x)=cases((1-cos sqrt(x))/(a x)&x>0,b&x<=0)$ 在 $x=0$ 处连续，则（　）.
#choices([$a b=1/2$],[$a b=-1/2$],[$a b=0$],[$a b=2$])
#ezexam.solution(show-number: false)[
A.
]
]

#ezexam.question[
设二阶可导函数 $f(x)$ 满足 $f(1)=f(-1)=1$，$f(0)=-1$，且 $f''(x)>0$，则（　）.
#choices([$integral_(-1)^1 f(x)dif x>0$],[$integral_(-1)^1 f(x)dif x<0$],[$integral_(-1)^0 f(x)dif x>integral_0^1 f(x)dif x$],[$integral_(-1)^0 f(x)dif x<integral_0^1 f(x)dif x$])
#ezexam.solution(show-number: false)[
B.
]
]

#ezexam.question[
设数列 $\{x_n\}$ 收敛，则（　）.
#choices([当 $lim_(n->infinity)sin x_n=0$ 时，$lim_(n->infinity)x_n=0$.],[当 $lim_(n->infinity)(x_n+sqrt(abs(x_n)))=0$ 时，$lim_(n->infinity)x_n=0$.],[当 $lim_(n->infinity)(x_n+x_n^2)=0$ 时，$lim_(n->infinity)x_n=0$.],[当 $lim_(n->infinity)(x_n+sin x_n)=0$ 时，$lim_(n->infinity)x_n=0$.])
#ezexam.solution(show-number: false)[
D.
]
]

#ezexam.question[
微分方程 $y''-4y'+8y=e^(2x)(1+cos 2x)$ 的特解可设为 $y=$（　）.
#choices([$A e^(2x)+e^(2x)(B cos 2x+C sin 2x)$],[$A x e^(2x)+e^(2x)(B cos 2x+C sin 2x)$],[$A e^(2x)+x e^(2x)(B cos 2x+C sin 2x)$],[$A x e^(2x)+x e^(2x)(B cos 2x+C sin 2x)$])
#ezexam.solution(show-number: false)[
C.
]
]

#ezexam.question[
设 $f(x,y)$ 具有一阶偏导数，且对任意的 $(x,y)$ 都有 $(partial f(x,y))/(partial x)>0$，$(partial f(x,y))/(partial y)<0$，则（　）.
#choices([$f(0,0)>f(1,1)$],[$f(0,0)<f(1,1)$],[$f(0,1)>f(1,0)$],[$f(0,1)<f(1,0)$])
#ezexam.solution(show-number: false)[
D.
]
]

#ezexam.question[
甲、乙两人赛跑，计时开始时，甲在乙前方10（单位：m）处.图中，实线表示甲的速度曲线 $v=v_1(t)$（单位：m/s），虚线表示乙的速度曲线 $v=v_2(t)$，三块阴影部分面积的数值依次为10、20、3.计时开始后乙追上甲的时刻记为 $t_0$（单位：s），则（　）.
#import "@preview/cetz:0.5.2"
#cetz.canvas({
 import cetz.draw: *
 line((-0.25,0),(7,0),mark:(end:">")); line((0,-0.3),(0,4.1),mark:(end:">"))
 content((-0.2,-0.2),$O$); content((7,-0.25),[t(s)]); content((0.8,4),[v(m/s)])
 for (x,l) in ((1,"5"),(2,"10"),(3,"15"),(4,"20"),(5,"25"),(6,"30")) {line((x,0),(x,0.08));content((x,-0.2),l)}
 // 三块有界阴影，曲线在 t=10、25 处相交.
 bezier((0,1.5),(2,1.8),(2/3,2.3),(4/3,2)); bezier((2,1.8),(5,3),(3,1),(4,1.1)); bezier((5,3),(6,3.7),(5+1/3,3.5),(5+2/3,3.6))
 bezier((0,1.5),(2,1.8),(2/3,0.7),(4/3,1.2),stroke:(dash:"dashed")); bezier((2,1.8),(5,3),(3,2.5),(4,2.8),stroke:(dash:"dashed")); line((5,3),(6,3.4),stroke:(dash:"dashed"))
 for x in (2,5,6) {line((x,0),(x,if x==2 {1.8} else if x==5 {3} else {3.7}),stroke:(dash:"dashed"))}
 for (pos,l) in (((1,2.35),"10"),((3.5,3.2),"20"),((5.7,3.0),"3")) {content(pos,l)}
 // 阴影用短竖线表示.
 for j in range(1,10) {let t=j/10; let x=2*t;let top=(1-t)*(1-t)*(1-t)*1.5+3*(1-t)*(1-t)*t*2.3+3*(1-t)*t*t*2+t*t*t*1.8;let bot=(1-t)*(1-t)*(1-t)*1.5+3*(1-t)*(1-t)*t*0.7+3*(1-t)*t*t*1.2+t*t*t*1.8;line((x,bot),(x,top),stroke:0.3pt)}
 for j in range(1,15) {let t=j/15;let x=2+3*t;let bot=(1-t)*(1-t)*(1-t)*1.8+3*(1-t)*(1-t)*t*1+3*(1-t)*t*t*1.1+t*t*t*3;let top=(1-t)*(1-t)*(1-t)*1.8+3*(1-t)*(1-t)*t*2.5+3*(1-t)*t*t*2.8+t*t*t*3;line((x,bot),(x,top),stroke:0.3pt)}
 for j in range(1,6) {let t=j/6;let x=5+t;line((x,3+0.4*t),(x,(1-t)*(1-t)*(1-t)*3+3*(1-t)*(1-t)*t*3.5+3*(1-t)*t*t*3.6+t*t*t*3.7),stroke:0.3pt)}
})
#choices([$t_0=10$],[$15<t_0<20$],[$t_0=25$],[$t_0>25$])
#ezexam.solution(show-number: false)[
C.
]
]

#ezexam.question[
设 $A$ 为3阶矩阵，$P=(alpha_1,alpha_2,alpha_3)$ 为可逆矩阵，使得 $P^(-1)A P=mat(0,0,0;0,1,0;0,0,2)$，则 $A(alpha_1+alpha_2+alpha_3)=$（　）.
#choices([$alpha_1+alpha_2$],[$alpha_2+2alpha_3$],[$alpha_2+alpha_3$],[$alpha_1+2alpha_2$])
#ezexam.solution(show-number: false)[
B.
]
]

#ezexam.question[
已知矩阵 $A=mat(2,0,0;0,2,1;0,0,1)$，$B=mat(2,1,0;0,2,0;0,0,1)$，$C=mat(1,0,0;0,2,0;0,0,2)$，则（　）.
#choices([$A$ 与 $C$ 相似，$B$ 与 $C$ 相似.],[$A$ 与 $C$ 相似，$B$ 与 $C$ 不相似.],[$A$ 与 $C$ 不相似，$B$ 与 $C$ 相似.],[$A$ 与 $C$ 不相似，$B$ 与 $C$ 不相似.])
#ezexam.solution(show-number: false)[
B.
]
]

= 二、填空题：9—14小题，每小题4分，共24分. 把答案填在题中横线上.

#ezexam.question[
曲线 $y=x(1+arcsin(2/x))$ 的斜渐近线方程为#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$y=x+2$.
]
]

#ezexam.question[
设函数 $y=y(x)$ 由参数方程 $cases(x=t+e^t,y=sin t)$ 确定，则 $(dif^2 y)/(dif x^2)|_(t=0)=$#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$-1/8$.
]
]

#ezexam.question[
$integral_0^(+infinity)ln(1+x)/(1+x)^2 dif x=$#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
1.
]
]

#ezexam.question[
设函数 $f(x,y)$ 具有一阶连续偏导数，且 $dif f(x,y)=y e^y dif x+x(1+y)e^y dif y$，$f(0,0)=0$，则 $f(x,y)=$#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$x y e^y$.
]
]

#ezexam.question[
$integral_0^1 dif y integral_y^1 tan x/x dif x=$#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$-ln cos 1$.
]
]

#ezexam.question[
设矩阵 $A=mat(4,1,-2;1,2,a;3,1,-1)$ 的一个特征向量为 $mat(1;1;2)$，则 $a=$#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$-1$.
]
]

= 三、解答题：15—23小题，共94分. 解答应写出文字说明、证明过程或演算步骤.

#ezexam.question[
（本题满分10分）
求 $lim_(x->0^+)(integral_0^x sqrt(x-t)e^t dif t)/sqrt(x^3)$.
#ezexam.solution(show-number: false)[
解　令 $x-t=u$，则 $t=x-u$，$dif t=-dif u$.
$ lim_(x->0^+)(integral_0^x sqrt(x-t)e^t dif t)/sqrt(x^3)
 &=lim_(x->0^+)(e^x integral_0^x sqrt(u)e^(-u)dif u)/sqrt(x^3) \
 &=lim_(x->0^+)(integral_0^x sqrt(u)e^(-u)dif u)/sqrt(x^3) \
 &=lim_(x->0^+)(sqrt(x)e^(-x))/(3/2 sqrt(x))=2/3. $
]
]

#ezexam.question[
（本题满分10分）
设函数 $f(u,v)$ 具有2阶连续偏导数，$y=f(e^x,cos x)$，求 $(dif y)/(dif x)|_(x=0)$，$(dif^2 y)/(dif x^2)|_(x=0)$.
#ezexam.solution(show-number: false)[
解　因为 $y=f(e^x,cos x)$，所以
$ (dif y)/(dif x)&=(partial f(u,v))/(partial u)e^x-(partial f(u,v))/(partial v)sin x, \
(dif^2 y)/(dif x^2)&=(partial f(u,v))/(partial u)e^x+((partial^2 f(u,v))/(partial u^2)e^x-(partial^2 f(u,v))/(partial u partial v)sin x)e^x \
&quad -(partial f(u,v))/(partial v)cos x-((partial^2 f(u,v))/(partial u partial v)e^x-(partial^2 f(u,v))/(partial v^2)sin x)sin x. $
当 $x=0$ 时，$u=e^0=1$，$v=cos 0=1$，所以
$ (dif y)/(dif x)|_(x=0)&=(partial f(1,1))/(partial u), \
(dif^2 y)/(dif x^2)|_(x=0)&=(partial f(1,1))/(partial u)+(partial^2 f(1,1))/(partial u^2)-(partial f(1,1))/(partial v). $
]
]

#ezexam.question[
（本题满分10分）
求 $lim_(n->+infinity)sum_(k=1)^n k/n^2 ln(1+k/n)$.
#ezexam.solution(show-number: false)[
解
$ lim_(n->+infinity)sum_(k=1)^n k/n^2 ln(1+k/n)
 &=lim_(n->+infinity)sum_(k=1)^n k/n ln(1+k/n)dot 1/n \
 &=integral_0^1 x ln(1+x)dif x \
 &=1/2 x^2 ln(1+x)|_0^1-1/2 integral_0^1 x^2/(1+x)dif x \
 &=1/2 ln 2-1/2 integral_0^1(x-1+1/(1+x))dif x \
 &=1/2 ln 2-1/4(x-1)^2|_0^1-1/2 ln(1+x)|_0^1=1/4. $
]
]

#ezexam.question[
（本题满分10分）
已知函数 $y(x)$ 由方程 $x^3+y^3-3x+3y-2=0$ 确定，求 $y(x)$ 的极值.
#ezexam.solution(show-number: false)[
解　由 $x^3+y^3-3x+3y-2=0$，得
$ 3x^2+3y^2 y'-3+3y'=0,quad "①" \
6x+6y(y')^2+3y^2 y''+3y''=0.quad "②" $
在①式中令 $y'=0$ 得 $x=-1$，$x=1$.
当 $x$ 分别取 $-1$ 和1时，由原方程得 $y(-1)=0$，$y(1)=1$.
将 $x=-1$，$y(-1)=0$ 及 $y'(-1)=0$ 代入②式得 $y''(-1)=2$.
因为 $y'(-1)=0$，$y''(-1)>0$，所以 $y(-1)=0$ 是 $y(x)$ 的极小值.
将 $x=1$，$y(1)=1$ 及 $y'(1)=0$ 代入②式得 $y''(1)=-1$.
因为 $y'(1)=0$，$y''(1)<0$，所以 $y(1)=1$ 是 $y(x)$ 的极大值.
]
]

#ezexam.question[
（本题满分10分）
设函数 $f(x)$ 在区间 $[0,1]$ 上具有2阶导数，且 $f(1)>0$，$lim_(x->0^+)f(x)/x<0$.证明：

（Ⅰ）方程 $f(x)=0$ 在区间 $(0,1)$ 内至少存在一个实根；

（Ⅱ）方程 $f(x)f''(x)+(f'(x))^2=0$ 在区间 $(0,1)$ 内至少存在两个不同实根.
#ezexam.solution(show-number: false)[
解　（Ⅰ）由题设知 $f(x)$ 连续且 $lim_(x->0^+)f(x)/x$ 存在，所以 $f(0)=0$.
由 $lim_(x->0^+)f(x)/x<0$ 与极限的保号性可知，存在 $a in (0,1)$，使得 $f(a)/a<0$，即 $f(a)<0$.
又 $f(1)>0$，所以存在 $b in (a,1) subset (0,1)$，使得 $f(b)=0$，即方程 $f(x)=0$ 在区间 $(0,1)$ 内至少存在一个实根.
（Ⅱ）由（Ⅰ）知 $f(0)=f(b)=0$，根据罗尔定理，存在 $c in (0,b) subset (0,1)$，使得 $f'(c)=0$.
令 $F(x)=f(x)f'(x)$，由题设知 $F(x)$ 在区间 $[0,b]$ 可导，且 $F(0)=0$，$F(c)=0$，$F(b)=0$.
根据罗尔定理，存在 $xi in (0,c)$，$eta in (c,b)$，使得 $F'(xi)=F'(eta)=0$，即 $xi,eta$ 是方程 $f(x)f''(x)+(f'(x))^2=0$ 在区间 $(0,1)$ 内的两个不同实根.
]
]

#ezexam.question[
（本题满分11分）
已知平面区域 $D={(x,y) bar.v x^2+y^2<=2y}$，计算二重积分 $integral.double_D (x+1)^2 dif x dif y$.
#ezexam.solution(show-number: false)[
解　$integral.double_D (x+1)^2 dif x dif y=integral.double_D (x^2+2x+1)dif x dif y$.
$D$ 的边界曲线在极坐标系下的方程为 $r=2sin theta$（$0<=theta<=pi$），所以
$ integral.double_D x^2 dif x dif y
 &=integral_0^pi dif theta integral_0^(2sin theta)r^3 cos^2 theta dif r \
 &=4integral_0^pi sin^4 theta cos^2 theta dif theta \
 &=integral_0^pi (1-cos 2theta)/2 dot sin^2 2theta dif theta \
 &=1/2 integral_0^pi sin^2 2theta dif theta-1/2 integral_0^pi cos 2theta sin^2 2theta dif theta \
 &=1/4 integral_0^pi(1-cos 4theta)dif theta=pi/4. $
又因为 $integral.double_D (2x+1)dif x dif y=integral.double_D 2x dif x dif y+integral.double_D 1 dif x dif y=0+pi=pi$，
所以 $integral.double_D (x+1)^2 dif x dif y=5pi/4$.
]
]

#ezexam.question[
（本题满分11分）
设 $y(x)$ 是区间 $(0,3/2)$ 内的可导函数，且 $y(1)=0$.点 $P$ 是曲线 $l:y=y(x)$ 上的任意一点，$l$ 在点 $P$ 处的切线与 $y$ 轴相交于点 $(0,Y_P)$，法线与 $x$ 轴相交于点 $(X_P,0)$.若 $X_P=Y_P$，求 $l$ 上点的坐标 $(x,y)$ 满足的方程.
#ezexam.solution(show-number: false)[
解　曲线 $l:y=y(x)$ 在点 $P(x,y)$ 的切线方程为 $Y-y=y'(X-x)$.
令 $X=0$ 得 $Y_P=y-x y'$.
曲线 $l:y=y(x)$ 在点 $P(x,y)$ 的法线方程为 $y'(Y-y)=-X+x$.
令 $Y=0$ 得 $X_P=x+y y'$.
由题设知 $x+y y'=y-x y'$，整理得
$ y'=(y-x)/(y+x)=(y/x-1)/(y/x+1). $
令 $y/x=u$，则 $(dif y)/(dif x)=u+x(dif u)/(dif x)$，代入上述方程并分离变量得
$ (1+u)/(1+u^2)dif u=-1/x dif x. $
两边积分得 $arctan u+1/2 ln(1+u^2)=-ln abs(x)+C$，即 $arctan(y/x)+1/2 ln(x^2+y^2)=C$.
因为曲线 $l$ 过点 $(1,0)$，所以 $C=0$，于是曲线 $l$ 上点的坐标 $(x,y)$ 满足的方程为
$ arctan(y/x)+1/2 ln(x^2+y^2)=0. $
]
]

#ezexam.question[
（本题满分11分）
设3阶矩阵 $A=(alpha_1,alpha_2,alpha_3)$ 有3个不同的特征值，且 $alpha_3=alpha_1+2alpha_2$.

（Ⅰ）证明 $r(A)=2$；

（Ⅱ）若 $beta=alpha_1+alpha_2+alpha_3$，求方程组 $A x=beta$ 的通解.
#ezexam.solution(show-number: false)[
解　（Ⅰ）由 $alpha_3=alpha_1+2alpha_2$，知 $alpha_1,alpha_2,alpha_3$ 线性相关，故 $r(A)<=2$.
又因为 $A$ 有3个不同的特征值，所以 $A$ 至少有2个不为零的特征值，从而 $r(A)>=2$.
故 $r(A)=2$.
（Ⅱ）由 $alpha_1+2alpha_2-alpha_3=0$，知 $A mat(1;2;-1)=0$，故 $mat(1;2;-1)$ 为方程组 $A x=0$ 的一个解.
又 $r(A)=2$，所以 $mat(1;2;-1)$ 为 $A x=0$ 的一个基础解系.
因为 $beta=alpha_1+alpha_2+alpha_3=A mat(1;1;1)$，所以 $mat(1;1;1)$ 为方程组 $A x=beta$ 的一个特解.
故 $A x=beta$ 的通解为 $x=mat(1;1;1)+k mat(1;2;-1)$，其中 $k$ 为任意常数.
]
]

#ezexam.question[
（本题满分11分）
设二次型 $f(x_1,x_2,x_3)=2x_1^2-x_2^2+a x_3^2+2x_1 x_2-8x_1 x_3+2x_2 x_3$ 在正交变换 $x=Q y$ 下的标准形为 $lambda_1 y_1^2+lambda_2 y_2^2$，求 $a$ 的值及一个正交矩阵 $Q$.
#ezexam.solution(show-number: false)[
解　二次型 $f$ 的矩阵为 $A=mat(2,1,-4;1,-1,1;-4,1,a)$.
由题设知 $abs(A)=0$.又 $abs(A)=6-3a$，于是 $a=2$.
矩阵 $A$ 的特征多项式为 $abs(lambda E-A)=lambda(lambda+3)(lambda-6)$，所以特征值为 $-3,6,0$.
不妨设 $lambda_1=-3$，$lambda_2=6$，$lambda_3=0$.
矩阵 $A$ 属于特征值 $lambda_1=-3$ 的单位特征向量为 $beta_1=1/sqrt(3)(1,-1,1)^T$；
属于特征值 $lambda_2=6$ 的单位特征向量为 $beta_2=1/sqrt(2)(-1,0,1)^T$；
属于特征值 $lambda_3=0$ 的单位特征向量为 $beta_3=1/sqrt(6)(1,2,1)^T$.
故所求的一个正交矩阵为
$ Q=(beta_1,beta_2,beta_3)=mat(1/sqrt(3),-1/sqrt(2),1/sqrt(6);-1/sqrt(3),0,2/sqrt(6);1/sqrt(3),1/sqrt(2),1/sqrt(6)). $
]
]

