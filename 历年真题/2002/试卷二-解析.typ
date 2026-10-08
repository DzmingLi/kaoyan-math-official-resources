#import "../template.typ": exam
#show: exam.with(year: 2002, subject: "二", title: "2002年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#ezexam.answer-state.update(true)


= 一、填空题（本题共5小题，每小题3分，满分15分）
#ezexam.counter-question.step()

（1）函数 $f(x)=cases((1-e^(tan x))/(arcsin(x/2)) & x>0,a e^(2x) & x<=0)$ 在 $x=0$ 处连续，则 $a=$#h(3em).
#ezexam.solution(show-number: false)[
$-2$.
]

（2）由曲线 $y=x e^(-x) (0<=x<+infinity)$ 与 $x$ 轴所围成的平面图形的面积为#h(3em).
#ezexam.solution(show-number: false)[
1.
]

（3）微分方程 $y y''+y'^2=0$ 满足初始条件 $y|_(x=0)=1,y'|_(x=0)=1/2$ 的特解是#h(3em).
#ezexam.solution(show-number: false)[
$y=sqrt(x+1)$ 或 $y^2=x+1$.
]

（4）$lim_(n->infinity) 1/n [sqrt(1+cos(pi/n))+sqrt(1+cos(2pi/n))+dots+sqrt(1+cos(n pi/n))]=$#h(3em).
#ezexam.solution(show-number: false)[
$2sqrt(2)/pi$.
]

（5）矩阵 $mat(0,-2,-2;2,2,-2;-2,-2,2)$ 的非零特征值为#h(3em).
#ezexam.solution(show-number: false)[
4.
]

= 二、选择题（本题共5小题，每小题3分，满分15分）
#ezexam.counter-question.step()

（1）设函数 $f(u)$ 可导，$y=f(x^2)$ 在 $x=-1$ 处取得增量 $Delta x=-0.1$ 时，对应的函数增量 $Delta y$ 的线性主部为 $0.1$，则 $f'(1)=$（　）.
#choices[$-1$.][$0.1$.][1.][$0.5$.]
#ezexam.solution(show-number: false)[
D.
]

（2）设 $f(x)$ 为连续函数，则下列函数中必为偶函数的是（　）.
#choices[$integral_0^x f(t^2) dif t$.][$integral_0^x f^2(t) dif t$.][$integral_0^x t[f(t)-f(-t)] dif t$.][$integral_0^x t[f(t)+f(-t)] dif t$.]
#ezexam.solution(show-number: false)[
D.
]

（3）设 $y(x)$ 是微分方程 $y''+p y'+q y=e^(3x)$ 满足初始条件 $y(0)=y'(0)=0$ 的特解，则 $lim_(x->0) (ln(1+x^2))/(y(x))=$（　）.
#choices[不存在.][1.][2.][3.]
#ezexam.solution(show-number: false)[
C.
]

（4）设函数 $y=f(x)$ 在 $(0,+infinity)$ 内有界且可导，则（　）.
#choices[当 $lim_(x->+infinity) f(x)=0$ 时，必有 $lim_(x->+infinity) f'(x)=0$.][当 $lim_(x->+infinity) f'(x)$ 存在时，必有 $lim_(x->+infinity) f'(x)=0$.][当 $lim_(x->0^+) f(x)=0$ 时，必有 $lim_(x->0^+) f'(x)=0$.][当 $lim_(x->0^+) f'(x)$ 存在时，必有 $lim_(x->0^+) f'(x)=0$.]
#ezexam.solution(show-number: false)[
B.
]

（5）设向量组 $alpha_1,alpha_2,alpha_3$ 线性无关，$beta_1$ 可由 $alpha_1,alpha_2,alpha_3$ 线性表示，$beta_2$ 不能由 $alpha_1,alpha_2,alpha_3$ 线性表示，则对任意常数 $k$，必有（　）.
#choices[$alpha_1,alpha_2,alpha_3,k beta_1+beta_2$ 线性无关.][$alpha_1,alpha_2,alpha_3,k beta_1+beta_2$ 线性相关.][$alpha_1,alpha_2,alpha_3,beta_1+k beta_2$ 线性无关.][$alpha_1,alpha_2,alpha_3,beta_1+k beta_2$ 线性相关.]
#ezexam.solution(show-number: false)[
A.
]

#ezexam.question(label: n => [三、])[
（本题满分6分）求曲线 $r=1-cos theta$ 在 $theta=pi/6$ 处的切线与法线的直角坐标方程.
#ezexam.solution(show-number: false)[
*解* 曲线的参数方程为
$ cases(x=(1-cos theta)cos theta,y=(1-cos theta)sin theta), $
即 $cases(x=cos theta-cos^2 theta,y=sin theta-sin theta cos theta)$.

曲线上对应于 $theta=pi/6$ 的点的直角坐标为 $(sqrt(3)/2-3/4,1/2-sqrt(3)/4)$.
$ lr((dif y)/(dif x)|)_(theta=pi/6)=lr(((dif y)/(dif theta))/((dif x)/(dif theta))|)_(theta=pi/6)=lr((cos theta-cos^2 theta+sin^2 theta)/(-sin theta+2cos theta sin theta)|)_(theta=pi/6)=1. $
所求的切线方程为 $y-1/2+sqrt(3)/4=x-sqrt(3)/2+3/4$，即
$ x-y-(3sqrt(3))/4+5/4=0. $
所求的法线方程为 $y-1/2+sqrt(3)/4=-(x-sqrt(3)/2+3/4)$，即
$ x+y-sqrt(3)/4+1/4=0. $
]


]

#ezexam.question(label: n => [四、])[
（本题满分7分）设 $f(x)=cases(2x+3/2 x^2 & -1<=x<0,(x e^x)/(e^x+1)^2 & 0<=x<=1)$，求函数 $F(x)=integral_(-1)^x f(t) dif t$ 的表达式.
#ezexam.solution(show-number: false)[
*解* 当 $-1<=x<0$ 时，
$ F(x)=integral_(-1)^x (2t+3/2 t^2) dif t=lr((t^2+1/2 t^3)|)_(-1)^x=1/2 x^3+x^2-1/2. $
当 $0<=x<=1$ 时，
$ F(x)&=integral_(-1)^x f(t) dif t=integral_(-1)^0 f(t) dif t+integral_0^x f(t) dif t \
&=lr((t^2+1/2 t^3)|)_(-1)^0+integral_0^x (t e^t)/(e^t+1)^2 dif t \
&=-1/2-integral_0^x t dif(1/(e^t+1)) \
&=-1/2-lr(t/(e^t+1)|)_0^x+integral_0^x (dif t)/(e^t+1) \
&=-1/2-x/(e^x+1)+integral_0^x (dif e^t)/(e^t (e^t+1)) \
&=-1/2-x/(e^x+1)+lr(ln(e^t/(e^t+1))|)_0^x \
&=-1/2-x/(e^x+1)+ln(e^x/(e^x+1))+ln 2. $
所以 $F(x)=cases(1/2 x^3+x^2-1/2 & -1<=x<0,ln(e^x/(e^x+1))-x/(e^x+1)+ln 2-1/2 & 0<=x<=1)$.
]


]

#ezexam.question(label: n => [五、])[
（本题满分7分）已知函数 $f(x)$ 在 $(0,+infinity)$ 内可导，$f(x)>0,lim_(x->+infinity) f(x)=1$，且满足
$ lim_(h->0) ((f(x+h x))/(f(x)))^(1/h)=e^(1/x), $
求 $f(x)$.
#ezexam.solution(show-number: false)[
*解* 设 $y=((f(x+h x))/(f(x)))^(1/h)$，则 $ln y=1/h ln((f(x+h x))/(f(x)))$.

因为
$ lim_(h->0) ln y&=lim_(h->0) 1/h ln((f(x+h x))/(f(x))) \
&=lim_(h->0) (x[ln f(x+h x)-ln f(x)])/(h x)=x[ln f(x)]', $
故 $lim_(h->0) ((f(x+h x))/(f(x)))^(1/h)=e^(x[ln f(x)]')$.

由已知条件得 $e^(x[ln f(x)]')=e^(1/x)$，因此 $x[ln f(x)]'=1/x$，即 $[ln f(x)]'=1/x^2$.

解之得 $f(x)=C e^(-1/x)$.由 $lim_(x->+infinity) f(x)=1$，得 $C=1$，故 $f(x)=e^(-1/x)$.
]


]

#ezexam.question(label: n => [六、])[
（本题满分7分）求微分方程 $x dif y+(x-2y) dif x=0$ 的一个解 $y=y(x)$，使得由曲线 $y=y(x)$ 与直线 $x=1,x=2$ 以及 $x$ 轴所围成的平面图形绕 $x$ 轴旋转一周的旋转体体积最小.
#ezexam.solution(show-number: false)[
*解* 原方程可化为 $(dif y)/(dif x)-2/x y=-1$.

则
$ y=e^(integral 2/x dif x)[-integral e^(-integral 2/x dif x) dif x+C]=x^2(1/x+C)=x+C x^2. $
由曲线 $y=x+C x^2$ 与直线 $x=1,x=2$ 及 $x$ 轴所围成的平面图形绕 $x$ 轴旋转一周的旋转体体积为
$ V(C)=integral_1^2 pi (x+C x^2)^2 dif x=pi (31/5 C^2+15/2 C+7/3). $
令 $V'(C)=pi (62/5 C+15/2)=0$，得 $C=-75/124$.

又 $V''(C)=62/5 pi>0$，故 $C=-75/124$ 为唯一极小值点，也是最小值点，于是得
$ y=y(x)=x-75/124 x^2. $
]


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
#ezexam.solution(show-number: false)[
*解法1* 如图建立坐标系，则抛物线的方程为 $y=x^2$.
#gate(1)
闸门矩形部分承受的水压力
$ P_1=2integral_1^(h+1) rho g(h+1-y) dif y=2rho g lr([(h+1)y-y^2/2])_1^(h+1)=rho g h^2, $
其中 $rho$ 为水的密度，$g$ 为重力加速度.

闸门下部承受的水压力
$ P_2&=2integral_0^1 rho g(h+1-y)sqrt(y) dif y \
&=2rho g lr([2/3 (h+1)y^(3/2)-2/5 y^(5/2)])_0^1=4rho g(1/3 h+2/15). $
由题意知 $P_1/P_2=5/4$，即 $h^2/(4(1/3 h+2/15))=5/4$，解之得 $h=2,h=-1/3$（舍去），故 $h=2$.

即闸门矩形部分的高应为2 m.

*解法2* 如图建立坐标系，则抛物线方程为 $x=h+1-y^2$.
#gate(2)
闸门矩形部分承受的水压力为
$ P_1=2integral_0^h rho g x dif x=rho g h^2. $
闸门下部承受的水压力为
$ P_2=2integral_h^(h+1) rho g x sqrt(h+1-x) dif x. $
设 $sqrt(h+1-x)=t$，得
$ P_2&=4rho g integral_0^1 (h+1-t^2)t^2 dif t \
&=4rho g lr([(h+1)t^3/3-t^5/5])_0^1=4rho g(1/3 h+2/15). $
以下同解1.
]


]

#ezexam.question(label: n => [八、])[
（本题满分8分）设 $0<x_1<3,x_(n+1)=sqrt(x_n (3-x_n)) (n=1,2,dots)$，证明数列 $ {x_n} $ 的极限存在，并求此极限.
#ezexam.solution(show-number: false)[
*解* 由 $0<x_1<3$ 知 $x_1,3-x_1$ 均为正数.故
$ 0<x_2=sqrt(x_1(3-x_1))<=1/2 (x_1+3-x_1)=3/2. $
设 $0<x_k<=3/2 (k>1)$，则
$ 0<x_(k+1)=sqrt(x_k (3-x_k))<=1/2 (x_k+3-x_k)=3/2, $
由数学归纳法知，对任意正整数 $n>1$ 均有 $0<x_n<=3/2$，因而数列 $ {x_n} $ 有界.

又当 $n>1$ 时，
$ x_(n+1)-x_n&=sqrt(x_n (3-x_n))-x_n=sqrt(x_n)(sqrt(3-x_n)-sqrt(x_n)) \
&=(sqrt(x_n)(3-2x_n))/(sqrt(3-x_n)+sqrt(x_n))>=0, $
因而有 $x_(n+1)>=x_n (n>1)$，故数列 $ {x_n} $ 单调增加.

由单调有界数列必有极限知 $lim_(n->infinity) x_n$ 存在.

设 $lim_(n->infinity) x_n=a$，在 $x_(n+1)=sqrt(x_n (3-x_n))$ 两边取极限，得 $a=sqrt(a(3-a))$，解之得 $a=3/2,a=0$（舍去）.

故 $lim_(n->infinity) x_n=3/2$.
]


]

#ezexam.question(label: n => [九、])[
（本题满分8分）设 $0<a<b$，证明不等式
$ (2a)/(a^2+b^2)<(ln b-ln a)/(b-a)<1/sqrt(a b). $
#ezexam.solution(show-number: false)[
*证* 先证右边不等式.

设 $phi(x)=ln x-ln a-(x-a)/sqrt(a x) (x>a>0)$，因为
$ phi'(x)=1/x-1/sqrt(a)(1/(2sqrt(x))+a/(2x sqrt(x)))=-(sqrt(x)-sqrt(a))^2/(2x sqrt(a x))<0, $
故当 $x>a$ 时 $phi(x)$ 单调减少，又 $phi(a)=0$，所以，当 $x>a$ 时 $phi(x)<phi(a)=0$，即 $ln x-ln a<(x-a)/sqrt(a x)$.

从而当 $b>a>0$ 时，$ln b-ln a<(b-a)/sqrt(a b)$，即
$ (ln b-ln a)/(b-a)<1/sqrt(a b). $
再证左边不等式.

*证法1* 设函数 $f(x)=ln x (x>a>0)$，由拉格朗日中值定理知，至少存在点 $xi in (a,b)$，使
$ (ln b-ln a)/(b-a)=lr((ln x)'|)_(x=xi)=1/xi, $
由于 $0<a<xi<b$，故 $1/xi>1/b>(2a)/(a^2+b^2)$，从而
$ (ln b-ln a)/(b-a)>(2a)/(a^2+b^2). $
*证法2* 设 $f(x)=(x^2+a^2)(ln x-ln a)-2a(x-a) (x>a>0)$，因为
$ f'(x)=2x(ln x-ln a)+(x^2+a^2)1/x-2a=2x(ln x-ln a)+(x-a)^2/x>0, $
故当 $x>a$ 时 $f(x)$ 单调增加，又 $f(a)=0$，所以当 $x>a$ 时，$f(x)>f(a)=0$，即 $(x^2+a^2)(ln x-ln a)-2a(x-a)>0$.

从而当 $b>a>0$ 时，有 $(a^2+b^2)(ln b-ln a)-2a(b-a)>0$，即
$ (2a)/(a^2+b^2)<(ln b-ln a)/(b-a). $
]


]

#ezexam.question(label: n => [十、])[
（本题满分8分）设函数 $f(x)$ 在 $x=0$ 的某邻域内具有二阶连续导数，且 $f(0)!=0,f'(0)!=0,f''(0)!=0$.证明：存在唯一的一组实数 $lambda_1,lambda_2,lambda_3$，使得当 $h->0$ 时，$lambda_1 f(h)+lambda_2 f(2h)+lambda_3 f(3h)-f(0)$ 是比 $h^2$ 高阶的无穷小.
#ezexam.solution(show-number: false)[
*证法1* 只需证存在唯一的一组实数 $lambda_1,lambda_2,lambda_3$，使
$ lim_(h->0) (lambda_1 f(h)+lambda_2 f(2h)+lambda_3 f(3h)-f(0))/h^2=0. $
由题设和洛必达法则，从
$ 0&=lim_(h->0) (lambda_1 f(h)+lambda_2 f(2h)+lambda_3 f(3h)-f(0))/h^2 \
&=lim_(h->0) (lambda_1 f'(h)+2lambda_2 f'(2h)+3lambda_3 f'(3h))/(2h) \
&=lim_(h->0) (lambda_1 f''(h)+4lambda_2 f''(2h)+9lambda_3 f''(3h))/2 \
&=1/2 (lambda_1+4lambda_2+9lambda_3)f''(0) $
知，$lambda_1,lambda_2,lambda_3$ 应满足方程组
$ cases(lambda_1+lambda_2+lambda_3=1,lambda_1+2lambda_2+3lambda_3=0,lambda_1+4lambda_2+9lambda_3=0). $
因为系数行列式 $mat(delim:"|",1,1,1;1,2,3;1,4,9)=2!=0$，所以上述方程组的解存在且唯一，即存在唯一的一组实数 $lambda_1,lambda_2,lambda_3$，使得当 $h->0$ 时，$lambda_1 f(h)+lambda_2 f(2h)+lambda_3 f(3h)-f(0)$ 是比 $h^2$ 高阶的无穷小.

*证法2* 由麦克劳林公式得
$ f(h)=f(0)+f'(0)h+1/2 f''(xi)h^2 $
（其中 $xi$ 介于0与 $h$ 之间），据题设条件，当 $h->0$ 时
$ f(h)&=f(0)+f'(0)h+1/2 f''(0)h^2+1/2 [f''(xi)-f''(0)]h^2 \
&=f(0)+f'(0)h+1/2 f''(0)h^2+o(h^2). $
同理可得
$ f(2h)=f(0)+2f'(0)h+2f''(0)h^2+o(h^2), \
f(3h)=f(0)+3f'(0)h+9/2 f''(0)h^2+o(h^2), $
故有
$ lambda_1 f(h)+lambda_2 f(2h)+lambda_3 f(3h)-f(0) \
=(lambda_1+lambda_2+lambda_3-1)f(0)+(lambda_1+2lambda_2+3lambda_3)f'(0)h \
+1/2 (lambda_1+4lambda_2+9lambda_3)f''(0)h^2+o(h^2). $
所以 $lambda_1,lambda_2,lambda_3$ 应满足方程组
$ cases(lambda_1+lambda_2+lambda_3=1,lambda_1+2lambda_2+3lambda_3=0,lambda_1+4lambda_2+9lambda_3=0). $
以下同证法1.
]


]

#ezexam.question(label: n => [十一、])[
（本题满分6分）已知 $A,B$ 为3阶矩阵，且满足 $2A^(-1)B=B-4E$，其中 $E$ 是3阶单位矩阵.

（1）证明：矩阵 $A-2E$ 可逆；

（2）若 $B=mat(1,-2,0;1,2,0;0,0,2)$，求矩阵 $A$.
#ezexam.solution(show-number: false)[
*解* （1）由 $2A^(-1)B=B-4E$ 知 $A B-2B-4A=O$，从而 $(A-2E)(B-4E)=8E$，或 $(A-2E)dot 1/8 (B-4E)=E$.

故 $A-2E$ 可逆，且 $(A-2E)^(-1)=1/8 (B-4E)$.

（2）由（1）知 $A=2E+8(B-4E)^(-1)$，而
$ (B-4E)^(-1)=mat(-3,-2,0;1,-2,0;0,0,-2)^(-1)=mat(-1/4,1/4,0;-1/8,-3/8,0;0,0,-1/2), $
故 $A=mat(0,2,0;-1,-1,0;0,0,-2)$.
]


]

#ezexam.question(label: n => [十二、])[
（本题满分6分）已知4阶方阵 $A=(alpha_1,alpha_2,alpha_3,alpha_4)$，$alpha_1,alpha_2,alpha_3,alpha_4$ 均为4维列向量，其中 $alpha_2,alpha_3,alpha_4$ 线性无关，$alpha_1=2alpha_2-alpha_3$.如果 $beta=alpha_1+alpha_2+alpha_3+alpha_4$，求线性方程组 $A x=beta$ 的通解.
#ezexam.solution(show-number: false)[
*解法1* 令 $x=mat(x_1;x_2;x_3;x_4)$，则由 $A x=(alpha_1,alpha_2,alpha_3,alpha_4)mat(x_1;x_2;x_3;x_4)=beta$ 得
$ x_1 alpha_1+x_2 alpha_2+x_3 alpha_3+x_4 alpha_4=alpha_1+alpha_2+alpha_3+alpha_4, $
将 $alpha_1=2alpha_2-alpha_3$ 代入上式，整理后得
$ (2x_1+x_2-3)alpha_2+(-x_1+x_3)alpha_3+(x_4-1)alpha_4=0. $
由 $alpha_2,alpha_3,alpha_4$ 线性无关，知
$ cases(2x_1+x_2-3=0,-x_1+x_3=0,x_4-1=0). $
解此方程组得 $x=mat(0;3;0;1)+k mat(1;-2;1;0)$，其中 $k$ 为任意常数.

*解法2* 由 $alpha_2,alpha_3,alpha_4$ 线性无关和 $alpha_1=2alpha_2-alpha_3+0alpha_4$，故 $A$ 的秩为3，因此 $A x=0$ 的基础解系中只包含一个向量.

由 $alpha_1-2alpha_2+alpha_3+0alpha_4=0$ 知 $mat(1;-2;1;0)$ 为齐次线性方程组 $A x=0$ 的一个解，所以其通解为 $x=k mat(1;-2;1;0)$，$k$ 为任意常数.

再由
$ beta=alpha_1+alpha_2+alpha_3+alpha_4=(alpha_1,alpha_2,alpha_3,alpha_4)mat(1;1;1;1)=A mat(1;1;1;1) $
知 $mat(1;1;1;1)$ 为非齐次线性方程组 $A x=beta$ 的一个特解，于是 $A x=beta$ 的通解为
$ x=mat(1;1;1;1)+k mat(1;-2;1;0), $
其中 $k$ 为任意常数.
]

]
