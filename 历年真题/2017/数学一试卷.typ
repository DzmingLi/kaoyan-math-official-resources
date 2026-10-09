#import "../template.typ": exam
#show: exam.with(year: 2017, subject: "一")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)


= 一、选择题：1—8小题，每小题4分，共32分. 在每小题给出的四个选项中，只有一项符合题目要求，把所选项前的字母填在题后的括号内.

#ezexam.question[
若函数 $f(x)=cases((1-cos sqrt(x))/(a x)&x>0,b&x<=0)$ 在 $x=0$ 处连续，则（　）.
#choices([$a b=1/2$],[$a b=-1/2$],[$a b=0$],[$a b=2$])
]

#ezexam.question[
设函数 $f(x)$ 可导，且 $f(x)f'(x)>0$，则（　）.
#choices([$f(1)>f(-1)$],[$f(1)<f(-1)$],[$abs(f(1))>abs(f(-1))$],[$abs(f(1))<abs(f(-1))$])
]

#ezexam.question[
函数 $f(x,y,z)=x^2 y+z^2$ 在点 $(1,2,0)$ 处沿向量 $n=(1,2,2)$ 的方向导数为（　）.
#choices([12.],[6.],[4.],[2.])
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
]

#ezexam.question[
设 $alpha$ 为 $n$ 维单位列向量，$E$ 为 $n$ 阶单位矩阵，则（　）.
#choices([$E-alpha alpha^T$ 不可逆.],[$E+alpha alpha^T$ 不可逆.],[$E+2alpha alpha^T$ 不可逆.],[$E-2alpha alpha^T$ 不可逆.])
]

#ezexam.question[
已知矩阵 $A=mat(2,0,0;0,2,1;0,0,1)$，$B=mat(2,1,0;0,2,0;0,0,1)$，$C=mat(1,0,0;0,2,0;0,0,2)$，则（　）.
#choices([$A$ 与 $C$ 相似，$B$ 与 $C$ 相似.],[$A$ 与 $C$ 相似，$B$ 与 $C$ 不相似.],[$A$ 与 $C$ 不相似，$B$ 与 $C$ 相似.],[$A$ 与 $C$ 不相似，$B$ 与 $C$ 不相似.])
]

#ezexam.question[
设 $A,B$ 为随机事件.若 $0<P(A)<1$，$0<P(B)<1$，则 $P(A bar.v B)>P(A bar.v overline(B))$ 的充分必要条件是（　）.
#choices([$P(B bar.v A)>P(B bar.v overline(A))$],[$P(B bar.v A)<P(B bar.v overline(A))$],[$P(overline(B) bar.v A)>P(overline(B) bar.v overline(A))$],[$P(overline(B) bar.v A)<P(B bar.v overline(A))$])
]

#ezexam.question[
设 $X_1,X_2,dots,X_n$（$n>=2$）为来自总体 $N(mu,1)$ 的简单随机样本，记 $overline(X)=1/n sum_(i=1)^n X_i$，则下列结论中不正确的是（　）.
#choices([$sum_(i=1)^n (X_i-mu)^2$ 服从 $chi^2$ 分布.],[$2(X_n-X_1)^2$ 服从 $chi^2$ 分布.],[$sum_(i=1)^n (X_i-overline(X))^2$ 服从 $chi^2$ 分布.],[$n(overline(X)-mu)^2$ 服从 $chi^2$ 分布.])
]

= 二、填空题：9—14小题，每小题4分，共24分. 把答案填在题中横线上.

#ezexam.question[
已知函数 $f(x)=1/(1+x^2)$，则 $f^((3))(0)=$#fillin(len: 4em)[].
]

#ezexam.question[
微分方程 $y''+2y'+3y=0$ 的通解为 $y=$#fillin(len: 4em)[].
]

#ezexam.question[
若曲线积分 $integral_L (x dif x-a y dif y)/(x^2+y^2-1)$ 在区域 $D={(x,y) bar.v x^2+y^2<1}$ 内与路径无关，则 $a=$#fillin(len: 4em)[].
]

#ezexam.question[
幂级数 $sum_(n=1)^infinity (-1)^(n-1)n x^(n-1)$ 在区间 $(-1,1)$ 内的和函数 $S(x)=$#fillin(len: 4em)[].
]

#ezexam.question[
设矩阵 $A=mat(1,0,1;1,1,2;0,1,1)$，$alpha_1,alpha_2,alpha_3$ 为线性无关的3维列向量组，则向量组 $A alpha_1,A alpha_2,A alpha_3$ 的秩为#fillin(len: 4em)[].
]

#ezexam.question[
设随机变量 $X$ 的分布函数为 $F(x)=0.5Phi(x)+0.5Phi((x-4)/2)$，其中 $Phi(x)$ 为标准正态分布函数，则 $E X=$#fillin(len: 4em)[].
]

= 三、解答题：15—23小题，共94分. 解答应写出文字说明、证明过程或演算步骤.

#ezexam.question[
（本题满分10分）
设函数 $f(u,v)$ 具有2阶连续偏导数，$y=f(e^x,cos x)$，求 $(dif y)/(dif x)|_(x=0)$，$(dif^2 y)/(dif x^2)|_(x=0)$.
]

#ezexam.question[
（本题满分10分）
求 $lim_(n->+infinity)sum_(k=1)^n k/n^2 ln(1+k/n)$.
]

#ezexam.question[
（本题满分10分）
已知函数 $y(x)$ 由方程 $x^3+y^3-3x+3y-2=0$ 确定，求 $y(x)$ 的极值.
]

#ezexam.question[
（本题满分10分）
设函数 $f(x)$ 在区间 $[0,1]$ 上具有2阶导数，且 $f(1)>0$，$lim_(x->0^+)f(x)/x<0$.证明：

（Ⅰ）方程 $f(x)=0$ 在区间 $(0,1)$ 内至少存在一个实根；

（Ⅱ）方程 $f(x)f''(x)+(f'(x))^2=0$ 在区间 $(0,1)$ 内至少存在两个不同实根.
]

#ezexam.question[
（本题满分10分）
设薄片型物体 $S$ 是圆锥面 $z=sqrt(x^2+y^2)$ 被柱面 $z^2=2x$ 割下的有限部分，其上任一点的密度为 $mu(x,y,z)=9sqrt(x^2+y^2+z^2)$.记圆锥面与柱面的交线为 $C$.

（Ⅰ）求 $C$ 在 $x O y$ 平面上的投影曲线的方程；

（Ⅱ）求 $S$ 的质量 $M$.
]

#ezexam.question[
（本题满分11分）
设3阶矩阵 $A=(alpha_1,alpha_2,alpha_3)$ 有3个不同的特征值，且 $alpha_3=alpha_1+2alpha_2$.

（Ⅰ）证明 $r(A)=2$；

（Ⅱ）若 $beta=alpha_1+alpha_2+alpha_3$，求方程组 $A x=beta$ 的通解.
]

#ezexam.question[
（本题满分11分）
设二次型 $f(x_1,x_2,x_3)=2x_1^2-x_2^2+a x_3^2+2x_1 x_2-8x_1 x_3+2x_2 x_3$ 在正交变换 $x=Q y$ 下的标准形为 $lambda_1 y_1^2+lambda_2 y_2^2$，求 $a$ 的值及一个正交矩阵 $Q$.
]

#ezexam.question[
（本题满分11分）
设随机变量 $X,Y$ 相互独立，且 $X$ 的概率分布为 $P{X=0}=P{X=2}=1/2$，$Y$ 的概率密度为 $f(y)=cases(2y&0<y<1,0&"其他")$.

（Ⅰ）求 $P{Y<=E Y}$；

（Ⅱ）求 $Z=X+Y$ 的概率密度.
]

#ezexam.question[
（本题满分11分）
某工程师为了解一台天平的精度，用该天平对一物体的质量做 $n$ 次测量，该物体的质量 $mu$ 是已知的.设 $n$ 次测量结果 $X_1,X_2,dots,X_n$ 相互独立且均服从正态分布 $N(mu,sigma^2)$，该工程师记录的是 $n$ 次测量的绝对误差 $Z_i=abs(X_i-mu)$（$i=1,2,dots,n$）.利用 $Z_1,Z_2,dots,Z_n$ 估计 $sigma$.

（Ⅰ）求 $Z_1$ 的概率密度；

（Ⅱ）利用一阶矩求 $sigma$ 的矩估计量；

（Ⅲ）求 $sigma$ 的最大似然估计量.
]

