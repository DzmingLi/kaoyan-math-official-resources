#import "../template.typ": exam
#show: exam.with(year: 2017, subject: "一")
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
设函数 $f(x)$ 可导，且 $f(x)f'(x)>0$，则（　）.
#choices([$f(1)>f(-1)$],[$f(1)<f(-1)$],[$abs(f(1))>abs(f(-1))$],[$abs(f(1))<abs(f(-1))$])
#ezexam.solution(show-number: false)[
C.
]
]

#ezexam.question[
函数 $f(x,y,z)=x^2 y+z^2$ 在点 $(1,2,0)$ 处沿向量 $n=(1,2,2)$ 的方向导数为（　）.
#choices([12.],[6.],[4.],[2.])
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
设 $alpha$ 为 $n$ 维单位列向量，$E$ 为 $n$ 阶单位矩阵，则（　）.
#choices([$E-alpha alpha^T$ 不可逆.],[$E+alpha alpha^T$ 不可逆.],[$E+2alpha alpha^T$ 不可逆.],[$E-2alpha alpha^T$ 不可逆.])
#ezexam.solution(show-number: false)[
A.
]
]

#ezexam.question[
已知矩阵 $A=mat(2,0,0;0,2,1;0,0,1)$，$B=mat(2,1,0;0,2,0;0,0,1)$，$C=mat(1,0,0;0,2,0;0,0,2)$，则（　）.
#choices([$A$ 与 $C$ 相似，$B$ 与 $C$ 相似.],[$A$ 与 $C$ 相似，$B$ 与 $C$ 不相似.],[$A$ 与 $C$ 不相似，$B$ 与 $C$ 相似.],[$A$ 与 $C$ 不相似，$B$ 与 $C$ 不相似.])
#ezexam.solution(show-number: false)[
B.
]
]

#ezexam.question[
设 $A,B$ 为随机事件.若 $0<P(A)<1$，$0<P(B)<1$，则 $P(A bar.v B)>P(A bar.v overline(B))$ 的充分必要条件是（　）.
#choices([$P(B bar.v A)>P(B bar.v overline(A))$],[$P(B bar.v A)<P(B bar.v overline(A))$],[$P(overline(B) bar.v A)>P(overline(B) bar.v overline(A))$],[$P(overline(B) bar.v A)<P(B bar.v overline(A))$])
#ezexam.solution(show-number: false)[
A.
]
]

#ezexam.question[
设 $X_1,X_2,dots,X_n$（$n>=2$）为来自总体 $N(mu,1)$ 的简单随机样本，记 $overline(X)=1/n sum_(i=1)^n X_i$，则下列结论中不正确的是（　）.
#choices([$sum_(i=1)^n (X_i-mu)^2$ 服从 $chi^2$ 分布.],[$2(X_n-X_1)^2$ 服从 $chi^2$ 分布.],[$sum_(i=1)^n (X_i-overline(X))^2$ 服从 $chi^2$ 分布.],[$n(overline(X)-mu)^2$ 服从 $chi^2$ 分布.])
#ezexam.solution(show-number: false)[
B.
]
]

= 二、填空题：9—14小题，每小题4分，共24分. 把答案填在题中横线上.

#ezexam.question[
已知函数 $f(x)=1/(1+x^2)$，则 $f^((3))(0)=$#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
0.
]
]

#ezexam.question[
微分方程 $y''+2y'+3y=0$ 的通解为 $y=$#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$e^(-x)(C_1 cos(sqrt(2)x)+C_2 sin(sqrt(2)x))$.
]
]

#ezexam.question[
若曲线积分 $integral_L (x dif x-a y dif y)/(x^2+y^2-1)$ 在区域 $D={(x,y) bar.v x^2+y^2<1}$ 内与路径无关，则 $a=$#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$-1$.
]
]

#ezexam.question[
幂级数 $sum_(n=1)^infinity (-1)^(n-1)n x^(n-1)$ 在区间 $(-1,1)$ 内的和函数 $S(x)=$#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$1/(1+x)^2$.
]
]

#ezexam.question[
设矩阵 $A=mat(1,0,1;1,1,2;0,1,1)$，$alpha_1,alpha_2,alpha_3$ 为线性无关的3维列向量组，则向量组 $A alpha_1,A alpha_2,A alpha_3$ 的秩为#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
2.
]
]

#ezexam.question[
设随机变量 $X$ 的分布函数为 $F(x)=0.5Phi(x)+0.5Phi((x-4)/2)$，其中 $Phi(x)$ 为标准正态分布函数，则 $E X=$#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
2.
]
]

= 三、解答题：15—23小题，共94分. 解答应写出文字说明、证明过程或演算步骤.

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
（本题满分10分）
设薄片型物体 $S$ 是圆锥面 $z=sqrt(x^2+y^2)$ 被柱面 $z^2=2x$ 割下的有限部分，其上任一点的密度为 $mu(x,y,z)=9sqrt(x^2+y^2+z^2)$.记圆锥面与柱面的交线为 $C$.

（Ⅰ）求 $C$ 在 $x O y$ 平面上的投影曲线的方程；

（Ⅱ）求 $S$ 的质量 $M$.
#ezexam.solution(show-number: false)[
解　（Ⅰ）圆锥面与柱面的交线 $C$ 的方程为 $cases(z=sqrt(x^2+y^2),z^2=2x)$，消去 $z$ 得 $C$ 到 $x O y$ 平面的投影柱面为 $x^2+y^2=2x$，故所求投影曲线的方程为 $cases(x^2+y^2=2x,z=0)$.
（Ⅱ）因为 $S$ 的密度为 $mu(x,y,z)=9sqrt(x^2+y^2+z^2)$，所以 $S$ 的质量为
$ M=integral.double_S 9sqrt(x^2+y^2+z^2)dif S. $
又 $S$ 在 $x O y$ 面上的投影区域为 $D={(x,y) bar.v x^2+y^2<=2x}$，所以
$ M&=9integral.double_D sqrt(2(x^2+y^2))sqrt(1+(x/sqrt(x^2+y^2))^2+(y/sqrt(x^2+y^2))^2)dif x dif y \
 &=18integral.double_D sqrt(x^2+y^2)dif x dif y \
 &=18integral_(-pi/2)^(pi/2)dif theta integral_0^(2cos theta)r dot r dif r \
 &=48integral_(-pi/2)^(pi/2)cos^3 theta dif theta=64. $
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

#ezexam.question[
（本题满分11分）
设随机变量 $X,Y$ 相互独立，且 $X$ 的概率分布为 $P{X=0}=P{X=2}=1/2$，$Y$ 的概率密度为 $f(y)=cases(2y&0<y<1,0&"其他")$.

（Ⅰ）求 $P{Y<=E Y}$；

（Ⅱ）求 $Z=X+Y$ 的概率密度.
#ezexam.solution(show-number: false)[
解　（Ⅰ）$E Y=integral_(-infinity)^(+infinity)y f(y)dif y=integral_0^1 2y^2 dif y=2/3$，
$ P{Y<=E Y}=P{Y<=2/3}=integral_0^(2/3)2y dif y=4/9. $
（Ⅱ）$Z$ 的分布函数记为 $F_Z(z)$，那么
$ F_Z(z)&=P{Z<=z}=P{X+Y<=z} \
 &=P{X=0}P{X+Y<=z bar.v X=0}+P{X=2}P{X+Y<=z bar.v X=2} \
 &=1/2 P{Y<=z}+1/2 P{Y<=z-2}. $
当 $z<0$ 时，$F_Z(z)=0$；当 $0<=z<1$ 时，$F_Z(z)=1/2 P{Y<=z}=z^2/2$；
当 $1<=z<2$ 时，$F_Z(z)=1/2$；当 $2<=z<3$ 时，$F_Z(z)=1/2+1/2 P{Y<=z-2}=1/2+1/2(z-2)^2$；
当 $z>=3$ 时，$F_Z(z)=1$.
所以 $Z$ 的概率密度为 $f_Z(z)=cases(z&0<z<1,z-2&2<z<3,0&"其他")$.
]
]

#ezexam.question[
（本题满分11分）
某工程师为了解一台天平的精度，用该天平对一物体的质量做 $n$ 次测量，该物体的质量 $mu$ 是已知的.设 $n$ 次测量结果 $X_1,X_2,dots,X_n$ 相互独立且均服从正态分布 $N(mu,sigma^2)$，该工程师记录的是 $n$ 次测量的绝对误差 $Z_i=abs(X_i-mu)$（$i=1,2,dots,n$）.利用 $Z_1,Z_2,dots,Z_n$ 估计 $sigma$.

（Ⅰ）求 $Z_1$ 的概率密度；

（Ⅱ）利用一阶矩求 $sigma$ 的矩估计量；

（Ⅲ）求 $sigma$ 的最大似然估计量.
#ezexam.solution(show-number: false)[
解　（Ⅰ）$Z_1$ 的分布函数为
$ F(z)=P{Z_1<=z}=P{abs(X_1-mu)<=z}=cases(2Phi(z/sigma)-1&z>=0,0&z<0). $
所以 $Z_1$ 的概率密度为
$ f(z)=cases(2/(sqrt(2pi)sigma)e^(-z^2/(2sigma^2))&z>=0,0&z<0). $
（Ⅱ）$E Z_1=integral_(-infinity)^(+infinity)z f(z)dif z=2/(sqrt(2pi)sigma)integral_0^(+infinity)z e^(-z^2/(2sigma^2))dif z=2/sqrt(2pi)sigma$.
$sigma=sqrt(2pi)/2 E Z_1$，令 $overline(Z)=1/n sum_(i=1)^n Z_i$，得 $sigma$ 的矩估计量为 $hat(sigma)=sqrt(2pi)/2 overline(Z)$.
（Ⅲ）记 $z_1,z_2,dots,z_n$ 为样本 $Z_1,Z_2,dots,Z_n$ 的观测值，则似然函数为
$ L(sigma)=product_(i=1)^n f(z_i)=(2/sqrt(2pi))^n sigma^(-n)e^(-1/(2sigma^2)sum_(i=1)^n z_i^2), $
对数似然函数为 $ln L(sigma)=n ln(2/sqrt(2pi))-n ln sigma-1/(2sigma^2)sum_(i=1)^n z_i^2$.
令 $(dif ln L(sigma))/(dif sigma)=-n/sigma+1/sigma^3 sum_(i=1)^n z_i^2=0$，得 $sigma$ 的最大似然估计值为 $hat(sigma)=sqrt(1/n sum_(i=1)^n z_i^2)$，所以 $sigma$ 的最大似然估计量为 $hat(sigma)=sqrt(1/n sum_(i=1)^n Z_i^2)$.
]
]

