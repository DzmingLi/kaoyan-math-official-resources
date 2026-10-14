#import "../template.typ": exam, answer
#show: exam.with(year: 1988, subject: "二", title: "1988年全国硕士研究生入学统一考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 1988 数学二试卷参考解答

= 一、填空题

#answer("（1）")[
$ f_-(0)=f(0)=a, quad f_+(0)=lim_(x->0^+)e^x(sin x+cos x)=1=f(0), $
故 $a=1$.

注　$f(x)$ 在 $x_0$ 连续 $<=>$ $lim_(x->x_0^+)f(x)=lim_(x->x_0^-)f(x)=f(x_0)$.
]

#answer("（2）")[
$ f(t)=t lim_(x->infinity)[(1+1/x)^x]^(2t)=t e^(2t), $
故 $f'(t)=e^(2t)+2t e^(2t)=(1+2t)e^(2t)$.
]

#answer("（3）")[
分析　$infinity^0$ 型，先将其指数化处理再使用洛必达法则.

解　$"原式"=lim_(x->0^+)e^(tan x dot(-1/2 ln x))$. 因为 $tan x~x$（$x->0$），则
$ lim_(x->0^+)tan x ln x=lim_(x->0^+)(ln x)/(1/x)
=lim_(x->0^+)x^(-1)/(-x^(-2))=-lim_(x->0^+)x=0, $
故原式 $=e^0=1$.
]

#answer("（4）")[
令 $sqrt(x)=t$，则 $x=t^2,dif x=2t dif t$，
$ "原式"=integral_0^2 e^t dot 2t dif t=2integral_0^2 t dif e^t $
$ =2(t e^t|_0^2-integral_0^2 e^t dif t)=2(e^2+1). $
]

#answer("（5）")[
对等式两边求导，得
$ 3x^2 dot f(x^3-1)=1, quad f(x^3-1)=1/(3x^2). $
令 $x=2$，则得 $f(7)=1/12$.
]

= 二、选择题

#answer("（1）")[
$ f'(0)=6$，切线方程为 $y-1=6x$，令 $y=0$，故 $x=-1/6$，故选 A.
]

#answer("（2）")[
由可导知必连续，从而
$ lim_(x->x_0)f(x)=f(x_0), quad lim_(x->x_0)g(x)=g(x_0). $
又由题设 $f(x)<g(x)$，$x in bold(R)$，故 $f(x_0)<g(x_0)$. 选 C.
]

#answer("（3）")[
因为
$ dif y=f'(x_0)Delta x=1/2 Delta x, quad lim_(Delta x->0)(dif y)/(Delta x)=1/2. $
可见，当 $Delta x->0$ 时，$f(x)$ 在 $x_0$ 处的微分 $dif y$ 是与 $Delta x$ 同阶的无穷小，选 B.

注　要理解微分的定义：设 $Delta x$ 为自变量在 $x$ 点处的改变量，若函数 $y=f(x)$ 的相应改变量 $Delta y$ 可分解为
$ Delta y=A Delta x+o(Delta x) quad (Delta x->0), $
其中 $A$ 与 $Delta x$ 无关，且 $o(Delta x)$ 是比 $Delta x$ 高阶的无穷小，则 $f(x)$ 在 $x$ 处可微. $A Delta x$ 就是 $f(x)$ 在点 $x$ 处的微分，即
$ dif y=dif f(x)=A Delta x=A dif x=f'(x)dif x=f'(x)Delta x. $
]

#answer("（4）")[
$ V=integral_0^pi pi y^2 dif x=pi integral_0^pi sin^3 x dif x $
$ =2pi integral_0^(pi/2)sin^3 x dif x=2pi dot 2/3 dot 1=4/3 pi. $
应选 B.
]

#answer("（5）")[
由原题可知 $f''(x)-2f'(x)+4f(x)=0$，令 $x=x_0$，则
$ f''(x_0)-2f'(x_0)+4f(x_0)=0. $
又 $f'(x_0)=0,f(x_0)>0$，则 $f''(x_0)=-4f(x_0)<0$，由此可知 $f(x)$ 在 $x_0$ 取极大值.
]

= 解答题

#answer("三、")[
分析　解出 $phi(x)$，然后确定其定义域.

解　由题设 $f(phi(x))=e^([phi(x)]^2)=1-x$，所以 $phi(x)=sqrt(ln(1-x))$.

由 $ln(1-x)>=0$ 知 $1-x>=1$，即 $x<=0$，故 $phi(x)$ 定义域为 $(-infinity,0]$.

注　要熟记常见简单函数的定义域，如 $y=log_a x,x>0$；$y=arcsin x,y=arccos x,abs(x)<=1$ 等.

已知 $f(x)$ 的定义域，求 $f(phi(x))$ 的定义域，一般采用方法：令 $u=phi(x)$，由 $u$ 的变化范围解出 $x$ 的变化范围，即为 $f(phi(x))$ 的定义域.

已知 $f(phi(x))$ 的定义域，求 $f(x)$ 的定义域，一般采用方法：令 $u=phi(x)$，由 $x$ 的变化范围解出 $u$ 的变化范围，即为 $f(x)$ 的定义域.
]

#answer("四、")[
由隐函数求导法，得
$ y'=e^(x y)+x e^(x y)(y+x y'), quad y'=(e^(x y)(1+x y))/(1-x^2 e^(x y)), $
所以 $y'|_(x=0)=y'|_(x=0,y=1)=1$.

再用隐函数求导法（也可对得到的 $y'$ 求导，略），得
$ y''=e^(x y)(y+x y')+e^(x y)(y+x y')+x y'e^(x y)(y+x y') $
$ quad +x e^(x y)(y+x y')^2+x e^(x y)(y'+y'+x y''). $
为求出 $y''(0)$，代入 $y'(0)=1$，及 $x=0,y=1$，有
$ y''(0)=1dot(1+0)+1(1+0)+0+0=>y''(0)=2. $
]

#answer("五、")[
设围成正方形的一段长为 $x$，另一段则为 $a-x$，正方形和圆面积之和
$ S=(x/4)^2+pi((a-x)/(2pi))^2. $
令 $S'=1/8 x-1/(2pi)(a-x)=0=>x_0=(4a)/(pi+4)$.
又 $S''(x_0)=1/8+1/(2pi)>0$.

故当围成正方形的一段铁丝长为 $(4a)/(pi+4)$，另一段为 $(pi a)/(pi+4)$ 时，可使正方形与圆的面积之和最小.
]

#answer("六、")[
当 $-1<=x<0$ 时，$-1<=t<=x<0$，$abs(t)=-t$，
$ integral_(-1)^x(1-abs(t))dif t=integral_(-1)^x(1+t)dif t=1/2(1+x)^2; $
当 $x>=0$ 时，
$ integral_(-1)^x(1-abs(t))dif t=integral_(-1)^0(1+t)dif t+integral_0^x(1-t)dif t $
$ =1-1/2(1-x)^2. $
]

#answer("七、")[
$ y=6/(x^2-2x+4)=6/((x-1)^2+3). $
可见函数的单增区间是 $(-infinity,1)$，单减区间是 $(1,+infinity)$，极值点为 $x=1$，极值为2.
$ y''=(36[(x-1)^2+3]x(x-2))/(x^2-2x+4)^4. $
所以 $x>2$ 或 $x<0$ 时，$y''>0$；$0<x<2$ 时，$y''<0$.

故凹区间是 $(-infinity,0)$ 和 $(2,+infinity)$，凸区间是 $(0,2)$，拐点是 $(0,3/2)$ 和 $(2,3/2)$.

由于 $lim_(x->+-infinity)y=0$，故 $y$ 有水平渐近线 $y=0$. 函数图形如下.
#align(center)[#image("1988-数学二-函数图形.svg", width: 50%)]
]

#answer("八、")[
（1）解法一　令 $t+a=u$，则
$ integral_(-a)^a f(t+a)dif t=integral_0^(2a)f(u)dif u, $
令 $t-a=u$，则
$ integral_(-a)^a f(t-a)dif t=integral_(-2a)^0 f(u)dif u, $
$ "原式"=lim_(a->0^+)1/(4a^2)[integral_0^(2a)f(u)dif u-integral_(-2a)^0 f(u)dif u] $
$ =lim_(a->0^+)(2f(2a)-2f(-2a))/(8a)
=lim_(a->0^+)(f(2a)-f(-2a))/(4a)=f'(0). $

解法二　由积分中值定理，得
$ 1/(4a^2)integral_(-a)^a[f(t+a)-f(t-a)]dif t $
$ =1/(4a^2)dot 2a[f(xi+a)-f(xi-a)] quad (-a<=xi<=a) $
$ =f'(eta), quad eta in (xi-a,xi+a) quad ("微分中值定理"). $
故
$ lim_(a->0^+)1/(4a^2)integral_(-a)^a[f(t+a)-f(t-a)]dif t
=lim_(a->0^+)f'(eta)=f'(0). $

（2）证法一
$ abs(1/(2a)integral_(-a)^a f(t)dif t-f(x))=abs(1/(2a)integral_(-a)^a[f(t)-f(x)]dif t) $
$ <=1/(2a)integral_(-a)^a abs(f(t)-f(x))dif t $
$ <=1/(2a)integral_(-a)^a(M-m)dif t=M-m. $
（因 $abs(f(t)-f(x))<=M-m$）.

证法二　用积分中值定理，
$ abs(1/(2a)integral_(-a)^a f(t)dif t-f(x))=abs(1/(2a)integral_(-a)^a[f(t)-f(x)]dif t) $
$ =abs(f(xi)-f(x))<=M-m quad (-a<=xi<=a). $
]

#answer("九、")[
所给方程为一阶线性非齐次微分方程，通解为
$ y=e^(-integral (dif x)/x)[integral 1/(x(x^2+1))e^(integral (dif x)/x)dif x+C] $
$ =1/x(integral 1/(x^2+1)dif x+C)=1/x(arctan x+C). $
]

#answer("十、")[
特征方程
$ r^2-3r+2=(r-1)(r-2)=0 $
的根为 $r_1=1,r_2=2$. 原方程右边 $2e^x=2e^(lambda x)$ 中的 $lambda=1=r_1$，故可设非齐次方程的特解为 $Y=x dot a e^x$，代入原方程并比较系数，得 $a=-2$. 原方程的通解为
$ y=c_1 e^x+c_2 e^(2x)-2x e^x. $
又曲线 $f(x)=c_1 e^x+c_2 e^(2x)-2x e^x$ 与曲线 $y=x^2-x+1$ 在点 $(0,1)$ 处相切，则
$ f(0)=c_1+c_2=1. $
又
$ f'(0)=(c_1 e^x+c_2 e^(2x)-2x e^x)'|_(x=0)=(x^2-x+1)'|_(x=0), $
得 $c_1+2c_2-2=-1$. 两式联立可解得 $c_1=1,c_2=0$，故所求函数
$ y=f(x)=e^x(1-2x). $
]

