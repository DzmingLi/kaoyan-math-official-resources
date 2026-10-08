#import "../template.typ": exam
#show: exam.with(year: 2002, subject: "二", title: "2002年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#ezexam.answer-state.update(false)


= 一、填空题（本题共5小题，每小题3分，满分15分）
#ezexam.counter-question.step()

（1）函数 $f(x)=cases((1-e^(tan x))/(arcsin(x/2)) & x>0,a e^(2x) & x<=0)$ 在 $x=0$ 处连续，则 $a=$#h(3em).

（2）由曲线 $y=x e^(-x) (0<=x<+infinity)$ 与 $x$ 轴所围成的平面图形的面积为#h(3em).

（3）微分方程 $y y''+y'^2=0$ 满足初始条件 $y|_(x=0)=1,y'|_(x=0)=1/2$ 的特解是#h(3em).

（4）$lim_(n->infinity) 1/n [sqrt(1+cos(pi/n))+sqrt(1+cos(2pi/n))+dots+sqrt(1+cos(n pi/n))]=$#h(3em).

（5）矩阵 $mat(0,-2,-2;2,2,-2;-2,-2,2)$ 的非零特征值为#h(3em).

= 二、选择题（本题共5小题，每小题3分，满分15分）
#ezexam.counter-question.step()

（1）设函数 $f(u)$ 可导，$y=f(x^2)$ 在 $x=-1$ 处取得增量 $Delta x=-0.1$ 时，对应的函数增量 $Delta y$ 的线性主部为 $0.1$，则 $f'(1)=$（　）.
#choices[$-1$.][$0.1$.][1.][$0.5$.]

（2）设 $f(x)$ 为连续函数，则下列函数中必为偶函数的是（　）.
#choices[$integral_0^x f(t^2) dif t$.][$integral_0^x f^2(t) dif t$.][$integral_0^x t[f(t)-f(-t)] dif t$.][$integral_0^x t[f(t)+f(-t)] dif t$.]

（3）设 $y(x)$ 是微分方程 $y''+p y'+q y=e^(3x)$ 满足初始条件 $y(0)=y'(0)=0$ 的特解，则 $lim_(x->0) (ln(1+x^2))/(y(x))=$（　）.
#choices[不存在.][1.][2.][3.]

（4）设函数 $y=f(x)$ 在 $(0,+infinity)$ 内有界且可导，则（　）.
#choices[当 $lim_(x->+infinity) f(x)=0$ 时，必有 $lim_(x->+infinity) f'(x)=0$.][当 $lim_(x->+infinity) f'(x)$ 存在时，必有 $lim_(x->+infinity) f'(x)=0$.][当 $lim_(x->0^+) f(x)=0$ 时，必有 $lim_(x->0^+) f'(x)=0$.][当 $lim_(x->0^+) f'(x)$ 存在时，必有 $lim_(x->0^+) f'(x)=0$.]

（5）设向量组 $alpha_1,alpha_2,alpha_3$ 线性无关，$beta_1$ 可由 $alpha_1,alpha_2,alpha_3$ 线性表示，$beta_2$ 不能由 $alpha_1,alpha_2,alpha_3$ 线性表示，则对任意常数 $k$，必有（　）.
#choices[$alpha_1,alpha_2,alpha_3,k beta_1+beta_2$ 线性无关.][$alpha_1,alpha_2,alpha_3,k beta_1+beta_2$ 线性相关.][$alpha_1,alpha_2,alpha_3,beta_1+k beta_2$ 线性无关.][$alpha_1,alpha_2,alpha_3,beta_1+k beta_2$ 线性相关.]

#ezexam.question(label: n => [三、])[
（本题满分6分）求曲线 $r=1-cos theta$ 在 $theta=pi/6$ 处的切线与法线的直角坐标方程.


]

#ezexam.question(label: n => [四、])[
（本题满分7分）设 $f(x)=cases(2x+3/2 x^2 & -1<=x<0,(x e^x)/(e^x+1)^2 & 0<=x<=1)$，求函数 $F(x)=integral_(-1)^x f(t) dif t$ 的表达式.


]

#ezexam.question(label: n => [五、])[
（本题满分7分）已知函数 $f(x)$ 在 $(0,+infinity)$ 内可导，$f(x)>0,lim_(x->+infinity) f(x)=1$，且满足
$ lim_(h->0) ((f(x+h x))/(f(x)))^(1/h)=e^(1/x), $
求 $f(x)$.


]

#ezexam.question(label: n => [六、])[
（本题满分7分）求微分方程 $x dif y+(x-2y) dif x=0$ 的一个解 $y=y(x)$，使得由曲线 $y=y(x)$ 与直线 $x=1,x=2$ 以及 $x$ 轴所围成的平面图形绕 $x$ 轴旋转一周的旋转体体积最小.


]

#ezexam.question(label: n => [七、])[
（本题满分7分）某闸门的形状与大小如图所示，其中直线 $l$ 为对称轴，闸门的上部为矩形 $A B C D$，下部由二次抛物线与线段 $A B$ 所围成.当水面与闸门的上端相平时，欲使闸门矩形部分承受的水压力与闸门下部承受的水压力之比为 $5:4$，闸门矩形部分的高 $h$ 应为多少 m（米）？
#import "@preview/cetz:0.5.2"
#let gate(mode)=cetz.canvas({
 import cetz.draw: *
 set-style(stroke:.65pt)
 line((-1,1),(-1,3),(1,3),(1,1))
 line(..range(0,61).map(i=>{let x=-1+i/30;(x,x*x)}))
 line((-1,1),(1,1),stroke:(dash:"dashed"))
 for (p,t,a) in (((-1,1),$A$, "east"),((1,1),$B$, "west"),((-1,3),$D$, "south-east"),((1,3),$C$, "south-west")){content(p,t,anchor:a)}
 if mode==0 {
  line((0,-.3),(0,3.6),stroke:(dash:"dashed"));content((0,3.6),$l$,anchor:"south")
  line((-1,3.35),(0,3.35),mark:(start:">",end:">"));line((0,3.35),(1,3.35),mark:(start:">",end:">"))
  content((-.5,3.4),[1 m],anchor:"south");content((.5,3.4),[1 m],anchor:"south")
  line((1.45,1),(1.45,3),mark:(start:">",end:">"));content((1.5,2),$h$,anchor:"west")
  line((1.45,0),(1.45,1),mark:(start:">",end:">"));content((1.5,.5),[1 m],anchor:"west")
 } else if mode==1 {
  line((-1.2,0),(1.5,0),mark:(end:">"));content((1.5,0),$x$,anchor:"north")
  line((0,-.3),(0,3.6),mark:(end:">"));content((0,3.6),$y$,anchor:"east")
  content((0,0),$O$,anchor:"north-east");content((0,1),[1],anchor:"south-east");content((0,3),$h+1$,anchor:"north-east")
 } else {
  line((-1.2,3),(1.5,3),mark:(end:">"));content((1.5,3),$y$,anchor:"north")
  line((0,3.3),(0,-.4),mark:(end:">"));content((0,-.4),$x$,anchor:"east")
  content((0,3),$O$,anchor:"south-west");content((0,1),$h$,anchor:"south-west");content((0,0),$h+1$,anchor:"north-west")
 }
})
#gate(0)


]

#ezexam.question(label: n => [八、])[
（本题满分8分）设 $0<x_1<3,x_(n+1)=sqrt(x_n (3-x_n)) (n=1,2,dots)$，证明数列 $ {x_n} $ 的极限存在，并求此极限.


]

#ezexam.question(label: n => [九、])[
（本题满分8分）设 $0<a<b$，证明不等式
$ (2a)/(a^2+b^2)<(ln b-ln a)/(b-a)<1/sqrt(a b). $


]

#ezexam.question(label: n => [十、])[
（本题满分8分）设函数 $f(x)$ 在 $x=0$ 的某邻域内具有二阶连续导数，且 $f(0)!=0,f'(0)!=0,f''(0)!=0$.证明：存在唯一的一组实数 $lambda_1,lambda_2,lambda_3$，使得当 $h->0$ 时，$lambda_1 f(h)+lambda_2 f(2h)+lambda_3 f(3h)-f(0)$ 是比 $h^2$ 高阶的无穷小.


]

#ezexam.question(label: n => [十一、])[
（本题满分6分）已知 $A,B$ 为3阶矩阵，且满足 $2A^(-1)B=B-4E$，其中 $E$ 是3阶单位矩阵.

（1）证明：矩阵 $A-2E$ 可逆；

（2）若 $B=mat(1,-2,0;1,2,0;0,0,2)$，求矩阵 $A$.


]

#ezexam.question(label: n => [十二、])[
（本题满分6分）已知4阶方阵 $A=(alpha_1,alpha_2,alpha_3,alpha_4)$，$alpha_1,alpha_2,alpha_3,alpha_4$ 均为4维列向量，其中 $alpha_2,alpha_3,alpha_4$ 线性无关，$alpha_1=2alpha_2-alpha_3$.如果 $beta=alpha_1+alpha_2+alpha_3+alpha_4$，求线性方程组 $A x=beta$ 的通解.

]
