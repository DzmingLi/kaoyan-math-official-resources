#import "../template.typ": exam
#show: exam.with(year: 2017, subject: "二")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)


= 一、选择题：1—8小题，每小题4分，共32分.在每小题给出的四个选项中，只有一项符合题目要求，把所选项前的字母填在题后的括号内.

#ezexam.question[
若函数 $f(x)=cases((1-cos sqrt(x))/(a x)&x>0,b&x<=0)$ 在 $x=0$ 处连续，则（　）.
#choices([$a b=1/2$],[$a b=-1/2$],[$a b=0$],[$a b=2$])
]

#ezexam.question[
设二阶可导函数 $f(x)$ 满足 $f(1)=f(-1)=1$，$f(0)=-1$，且 $f''(x)>0$，则（　）.
#choices([$integral_(-1)^1 f(x)dif x>0$],[$integral_(-1)^1 f(x)dif x<0$],[$integral_(-1)^0 f(x)dif x>integral_0^1 f(x)dif x$],[$integral_(-1)^0 f(x)dif x<integral_0^1 f(x)dif x$])
]

#ezexam.question[
设数列 $\{x_n\}$ 收敛，则（　）.
#choices([当 $lim_(n->infinity)sin x_n=0$ 时，$lim_(n->infinity)x_n=0$.],[当 $lim_(n->infinity)(x_n+sqrt(abs(x_n)))=0$ 时，$lim_(n->infinity)x_n=0$.],[当 $lim_(n->infinity)(x_n+x_n^2)=0$ 时，$lim_(n->infinity)x_n=0$.],[当 $lim_(n->infinity)(x_n+sin x_n)=0$ 时，$lim_(n->infinity)x_n=0$.])
]

#ezexam.question[
微分方程 $y''-4y'+8y=e^(2x)(1+cos 2x)$ 的特解可设为 $y=$（　）.
#choices([$A e^(2x)+e^(2x)(B cos 2x+C sin 2x)$],[$A x e^(2x)+e^(2x)(B cos 2x+C sin 2x)$],[$A e^(2x)+x e^(2x)(B cos 2x+C sin 2x)$],[$A x e^(2x)+x e^(2x)(B cos 2x+C sin 2x)$])
]

#ezexam.question[
设 $f(x,y)$ 具有一阶偏导数，且对任意的 $(x,y)$ 都有 $(partial f(x,y))/(partial x)>0$，$(partial f(x,y))/(partial y)<0$，则（　）.
#choices([$f(0,0)>f(1,1)$],[$f(0,0)<f(1,1)$],[$f(0,1)>f(1,0)$],[$f(0,1)<f(1,0)$])
]

#ezexam.question[
甲、乙两人赛跑，计时开始时，甲在乙前方10（单位：m）处.图中，实线表示甲的速度曲线 $v=v_1(t)$（单位：m/s），虚线表示乙的速度曲线 $v=v_2(t)$，三块阴影部分面积的数值依次为10、20、3.计时开始后乙追上甲的时刻记为 $t_0$（单位：s），则（　）.
#import "@preview/cetz:0.3.4"
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
设 $A$ 为3阶矩阵，$P=(alpha_1,alpha_2,alpha_3)$ 为可逆矩阵，使得 $P^(-1)A P=mat(0,0,0;0,1,0;0,0,2)$，则 $A(alpha_1+alpha_2+alpha_3)=$（　）.
#choices([$alpha_1+alpha_2$],[$alpha_2+2alpha_3$],[$alpha_2+alpha_3$],[$alpha_1+2alpha_2$])
]

#ezexam.question[
已知矩阵 $A=mat(2,0,0;0,2,1;0,0,1)$，$B=mat(2,1,0;0,2,0;0,0,1)$，$C=mat(1,0,0;0,2,0;0,0,2)$，则（　）.
#choices([$A$ 与 $C$ 相似，$B$ 与 $C$ 相似.],[$A$ 与 $C$ 相似，$B$ 与 $C$ 不相似.],[$A$ 与 $C$ 不相似，$B$ 与 $C$ 相似.],[$A$ 与 $C$ 不相似，$B$ 与 $C$ 不相似.])
]

= 二、填空题：9—14小题，每小题4分，共24分.把答案填在题中横线上.

#ezexam.question[
曲线 $y=x(1+arcsin(2/x))$ 的斜渐近线方程为#fillin(len: 4em)[].
]

#ezexam.question[
设函数 $y=y(x)$ 由参数方程 $cases(x=t+e^t,y=sin t)$ 确定，则 $(dif^2 y)/(dif x^2)|_(t=0)=$#fillin(len: 4em)[].
]

#ezexam.question[
$integral_0^(+infinity)ln(1+x)/(1+x)^2 dif x=$#fillin(len: 4em)[].
]

#ezexam.question[
设函数 $f(x,y)$ 具有一阶连续偏导数，且 $dif f(x,y)=y e^y dif x+x(1+y)e^y dif y$，$f(0,0)=0$，则 $f(x,y)=$#fillin(len: 4em)[].
]

#ezexam.question[
$integral_0^1 dif y integral_y^1 tan x/x dif x=$#fillin(len: 4em)[].
]

#ezexam.question[
设矩阵 $A=mat(4,1,-2;1,2,a;3,1,-1)$ 的一个特征向量为 $mat(1;1;2)$，则 $a=$#fillin(len: 4em)[].
]

= 三、解答题：15—23小题，共94分.解答应写出文字说明、证明过程或演算步骤.

#ezexam.question[
（本题满分10分）
求 $lim_(x->0^+)(integral_0^x sqrt(x-t)e^t dif t)/sqrt(x^3)$.
]

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
（本题满分11分）
已知平面区域 $D={(x,y) bar.v x^2+y^2<=2y}$，计算二重积分 $integral.double_D (x+1)^2 dif x dif y$.
]

#ezexam.question[
（本题满分11分）
设 $y(x)$ 是区间 $(0,3/2)$ 内的可导函数，且 $y(1)=0$.点 $P$ 是曲线 $l:y=y(x)$ 上的任意一点，$l$ 在点 $P$ 处的切线与 $y$ 轴相交于点 $(0,Y_P)$，法线与 $x$ 轴相交于点 $(X_P,0)$.若 $X_P=Y_P$，求 $l$ 上点的坐标 $(x,y)$ 满足的方程.
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

