#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2002, subject: "二", title: "2002年全国硕士研究生入学统一考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
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
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2002 数学二试卷参考解答

= 一、填空题

#answer("1（1）")[
*分析* 零点处左、右极限应相等并等于 $f(0)=a$，求右极限时用等价无穷小可简化计算.
*解* $ lim_(x->0^+)frac(1-e^(tan x),arcsin(x/2))=lim_(x->0^+)frac(-tan x,x/2)=-2. $
左极限为 $a=f(0)$，故 $a=-2$.
]

#answer("1（2）")[
*分析* 用无穷区间上的广义积分表示无界图形的面积.
*解* $ A=integral_0^(+infinity)x e^(-x)dif x=lim_(b->+infinity)[-x e^(-x)-e^(-x)]_0^b=1. $
]

#answer("1（3）")[
*分析* 本题考查二阶可降阶微分方程的解法.
*解法1* 由 $y y''+(y')^2=0$ 得 $(y y')'=0$，所以 $y y'=C_1$. 由 $y(0)=1,y'(0)=1/2$ 得 $C_1=1/2$，即 $y dif y=1/2 dif x$. 积分得 $y^2=x+C_2$，由初值得 $C_2=1$，故 $y=sqrt(x+1)$.

*解法2* 方程缺少自变量 $x$，令 $y'=p(y)$，则
$ y''=frac(dif p,dif x)=p frac(dif p,dif y). $
方程变为 $y p p'+p^2=0$，分成 $p=0$ 或 $y p'+p=0$. 前者不满足初值；后者给出 $p y=C_1$，即 $y y'=C_1$，由初值 $C_1=1/2$，积分仍得 $y=sqrt(x+1)$.

*典型错误* 令 $y'=p$ 后误写 $y p'=-p^2$，再把 $p'$ 当作对 $y$ 求导，错误地得出 $x=y ln y+y-1$. 实际 $y''=dif p/dif x=p dif p/dif y$，不能漏掉链式法则的因子 $p$. 另一个错误是保留负根 $y=-sqrt(x+1)$，它不满足 $y(0)=1$.
]

#answer("1（4）")[
*分析* 将和式极限认作定积分的定义. 取 $f(x)=sqrt(1+cos x)$，在 $[0,pi]$ 上均分，所得和为该积分的黎曼和除以 $pi$.
*解* $ lim_(n->infinity)frac(1,n)sum_(k=1)^n sqrt(1+cos frac(k pi,n))=frac(1,pi)integral_0^pi sqrt(1+cos x)dif x=frac(sqrt(2),pi)integral_0^pi cos frac(x,2)dif x=frac(2sqrt(2),pi). $
]

#answer("1（5）")[
*解* 特征多项式为
$ det(lambda E-A)=mat(delim:"|",lambda,2,2;2,lambda-2,2;2,2,lambda-2)=lambda^2(lambda-4). $
因此特征值为0（二重）和4，非零特征值为4.
]

= 二、选择题

#answer("2（1）")[
*分析* 函数增量的线性主部就是微分，由微分值及自变量增量反求导数.
*解* $ dif y=f'(x^2)dif(x^2)=2x f'(x^2)dif x. $
代入 $x=-1,dif x=-0.1,dif y=0.1$ 得 $0.1=-2f'(1)(-0.1)$，故 $f'(1)=0.5$，选 D.
]

#answer("2（2）")[
*分析* $f(t)+f(-t)$ 为偶函数，乘以 $t$ 后为奇函数；奇函数的原函数必为偶函数.
*解* 设 $F(x)=integral_0^x t[f(t)+f(-t)]dif t$，令 $u=-t$，得
$ F(-x)=integral_0^x(-u)[f(-u)+f(u)]dif(-u)=integral_0^x u[f(u)+f(-u)]dif u=F(x). $
所以选 D. 同样可证A、C为奇函数. B在负半轴的积分为非正而正半轴为非负，一般不是偶函数.
]

#answer("2（3）")[
*分析* 无须求出微分方程的特解，利用方程确定零点二阶导数，再用洛必达法则. 由方程可知 $y,y',y''$ 连续.
*解* 由初值与方程得 $y''(0)=1$，故
$ lim_(x->0)frac(ln(1+x^2),y(x))=lim_(x->0)frac(2x/(1+x^2),y'(x))=lim_(x->0)frac(2(1-x^2)/(1+x^2)^2,y''(x))=2. $
选 C.
]

#answer("2（4）")[
*分析* 考查函数极限与导函数极限的关系，并区别 $x->0^+$ 与 $x->+infinity$.
*解法1* 用反例排除：A取 $f(x)=sin(x^2)/x$，它在 $(0,+infinity)$ 有界可导，两端极限均为零，但 $f'(x)=2cos(x^2)-sin(x^2)/x^2$ 在无穷远处无极限. C取 $f(x)=sin x$，零点右极限为零，但导数右极限为1. D取 $f(x)=cos sqrt(x)$，导数右极限为 $-1/2$，并非零. 故选 B.

*解法2* 反证 B. 若导数无穷远处极限为 $A>0$，则存在 $X>0$，当 $x>X$ 时 $f'(x)>A/2$. 在 $[X,x]$ 上应用拉格朗日中值定理，得
$ f(x)=f(X)+f'(xi)(x-X)>f(X)+frac(A,2)(x-X). $
这与函数有界矛盾；极限为负时同理矛盾，故导数极限只能为零.
*注* 函数趋于零并不意味着曲线斜率也趋于零.
]

#answer("2（5）")[
*分析* $beta_1$ 在原向量组张成的空间内，$beta_2$ 在该空间外；结合参数可取任意值排除错误选项.
*解* 当 $k=0$ 时，B和C均不成立. 若 $k!=0$ 而 $beta_1+k beta_2$ 可由原组三向量表示，则 $beta_2$ 也可以，矛盾，故D也不成立.
直接证明A：设
$ lambda_1 alpha_1+lambda_2 alpha_2+lambda_3 alpha_3+lambda_4(k beta_1+beta_2)=0. $
若 $lambda_4!=0$，就能将 $k beta_1+beta_2$ 线性表示，从而将 $beta_2$ 线性表示，与题设矛盾. 所以 $lambda_4=0$，再由原组无关得其余三个系数全零. 因此选 A.
]

= 解答题

#answer("三、")[
*分析* 以极角为参数，把极坐标方程改写为参数方程，利用参数方程求导公式求切线斜率，再写切线与法线方程.


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

#answer("四、")[
*分析* 分段函数在不同区间表达式不同，变上限积分也须分段计算；当上限非负时，要将积分在零点处分开.


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


*注* 若题目不明确给出上限范围，须先检查原函数的定义域；这里仅在区间 [−1,1] 内定义，所以所求函数也只在这个区间内有意义.


*注* 分部积分后的定积分下限项不能遗漏：代入零后，对数项并不为零，应保留 $-ln(1/2)$.
]

#answer("五、")[
*分析* 先取对数，把指数型极限转化成导数，建立关于函数的微分方程，再由无穷远处条件确定积分常数.


*解* 设 $y=((f(x+h x))/(f(x)))^(1/h)$，则 $ln y=1/h ln((f(x+h x))/(f(x)))$.

因为
$ lim_(h->0) ln y&=lim_(h->0) 1/h ln((f(x+h x))/(f(x))) \
&=lim_(h->0) (x[ln f(x+h x)-ln f(x)])/(h x)=x[ln f(x)]', $
故 $lim_(h->0) ((f(x+h x))/(f(x)))^(1/h)=e^(x[ln f(x)]')$.

由已知条件得 $e^(x[ln f(x)]')=e^(1/x)$，因此 $x[ln f(x)]'=1/x$，即 $[ln f(x)]'=1/x^2$.

解之得 $f(x)=C e^(-1/x)$. 由 $lim_(x->+infinity) f(x)=1$，得 $C=1$，故 $f(x)=e^(-1/x)$.


*注* $h x$ 趋于零与 $h$ 趋于零等价，是因为求该极限时 $x>0$ 固定. 用导数定义后，必须把关于 $x$ 的微分方程和边界条件继续解出.


*注* 这里应用导数定义，不能直接对差商使用洛必达法则：题设没有给出导函数连续的条件.
]

#answer("六、")[
*分析* 求一阶线性微分方程的通解，再把旋转体体积看作积分常数的函数，对该参数求最小值.


*解* 原方程可化为 $(dif y)/(dif x)-2/x y=-1$.

则
$ y=e^(integral 2/x dif x)[-integral e^(-integral 2/x dif x) dif x+C]=x^2(1/x+C)=x+C x^2. $
由曲线 $y=x+C x^2$ 与直线 $x=1,x=2$ 及 $x$ 轴所围成的平面图形绕 $x$ 轴旋转一周的旋转体体积为
$ V(C)=integral_1^2 pi (x+C x^2)^2 dif x=pi (31/5 C^2+15/2 C+7/3). $
令 $V'(C)=pi (62/5 C+15/2)=0$，得 $C=-75/124$.

又 $V''(C)=62/5 pi>0$，故 $C=-75/124$ 为唯一极小值点，也是最小值点，于是得
$ y=y(x)=x-75/124 x^2. $


*注* 求出驻点后还须判断最小值，不能停在 $V'(C)=0$. 此处可用二阶导数为正判断；也可由唯一驻点和体积函数存在最小值得出结论.
]

#answer("七、")[
*分析* 用定积分计算水压力，分别求矩形与抛物线段的压力，再由比值求高度. 两种坐标系均可采用.


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


*注* 水压力应用题的关键是理解深度乘以水平微元面积的物理含义；掌握微元法，才能在不同坐标系下正确列式.
]

#answer("八、")[
*分析* 用数学归纳法证明数列有界，利用相邻两项差证明从第二项起单调，再应用单调有界定理并求极限.


*解* 由 $0<x_1<3$ 知 $x_1,3-x_1$ 均为正数. 故
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


*注* 有界性也可由 $0<x_n<3$ 归纳证明，但 $3/2$ 是更精确的上界. 排除零极限时，可用从第二项起递增且 $x_2>0$.
]

#answer("九、")[
*分析* 一侧可用拉格朗日中值定理，另一侧构造函数并利用导数符号证明；也可两侧都构造函数.


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


*注* 构造辅助函数时，可先移项，再把其中一个常数（本题为 $b$）换成变量 $x$.
]

#answer("十、")[
*分析* 把高阶无穷小条件写成极限，逐项消去常数项、一次项、二次项系数，得到唯一的三元线性方程组；也可用带余项的麦克劳林公式.


*证法1* 只需证存在唯一的一组实数 $lambda_1,lambda_2,lambda_3$，使
$ lim_(h->0) (lambda_1 f(h)+lambda_2 f(2h)+lambda_3 f(3h)-f(0))/h^2=0. $
记分子为 $N(h)$. 高阶无穷小条件先给出
$ 0=lim_(h->0)N(h)=(lambda_1+lambda_2+lambda_3-1)f(0), $
由 $f(0)!=0$ 得 $lambda_1+lambda_2+lambda_3=1$. 再由洛必达法则，从
$ 0&=lim_(h->0) (lambda_1 f(h)+lambda_2 f(2h)+lambda_3 f(3h)-f(0))/h^2 \
&=lim_(h->0) (lambda_1 f'(h)+2lambda_2 f'(2h)+3lambda_3 f'(3h))/(2h) \
&=lim_(h->0) (lambda_1 f''(h)+4lambda_2 f''(2h)+9lambda_3 f''(3h))/2 \
&=1/2 (lambda_1+4lambda_2+9lambda_3)f''(0) $
知 $lambda_1+4lambda_2+9lambda_3=0$. 中间的商有有限极限，故其分子趋于零，得到
$ 0=lim_(h->0)[lambda_1 f'(h)+2lambda_2 f'(2h)+3lambda_3 f'(3h)]=(lambda_1+2lambda_2+3lambda_3)f'(0). $
由 $f'(0)!=0$ 得 $lambda_1+2lambda_2+3lambda_3=0$. 因而这三个参数应满足方程组
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


*注* 不可遗漏原表达式本身趋于零这一条件，否则会少一个方程，不能证明存在唯一性.
]

#answer("十一、")[
*分析* 将矩阵等式整理成两矩阵乘积为非零常数倍的单位阵，由逆矩阵定义求出逆矩阵，再代入具体矩阵计算.


*解* （1）由 $2A^(-1)B=B-4E$ 知 $A B-2B-4A=O$，从而 $(A-2E)(B-4E)=8E$，或 $(A-2E)dot 1/8 (B-4E)=E$.

故 $A-2E$ 可逆，且 $(A-2E)^(-1)=1/8 (B-4E)$.

（2）由（1）知 $A=2E+8(B-4E)^(-1)$，而
$ (B-4E)^(-1)=mat(-3,-2,0;1,-2,0;0,0,-2)^(-1)=mat(-1/4,1/4,0;-1/8,-3/8,0;0,0,-1/2), $
故 $A=mat(0,2,0;-1,-1,0;0,0,-2)$.
]

#answer("十二、")[
*分析* 用线性无关的充要条件，把线性方程组写成向量方程后求解；也可利用齐次解与一个非齐次特解构成通解的结构.


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


*注* 第二种方法的关键是由列向量的秩确定基础解系的向量个数，并从给出的两条向量关系直接读出齐次解和非齐次特解.
]

