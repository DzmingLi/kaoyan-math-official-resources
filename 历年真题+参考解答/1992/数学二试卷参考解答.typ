#import "../template.typ": exam, answer
#show: exam.with(year: 1992, subject: "二", title: "1992年全国硕士研究生入学统一考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 1992 数学二试卷参考解答

= 一、填空题

#answer("（1）")[
先求导数，再代入值.
$ (dif y)/(dif x)=y'_t/x'_t=(3e^(3t)f'(e^(3t)-1))/(f'(t)), $
$ (dif y)/(dif x)|_(t=0)=(3f'(0))/(f'(0))=3. $
]

#answer("（2）")[
令 $y'=1-2sin x=0$，解得驻点 $x=pi/6$.
比较如下函数值：
$ y(0)=2, quad y(pi/6)=pi/6+sqrt(3), quad y(pi/2)=pi/2. $
得知最大值为 $pi/6+sqrt(3)$.
]

#answer("（3）")[
$ lim_(x->0)(1-sqrt(1-x^2))/(e^x-cos x)=lim_(x->0)(1/2 x^2)/(e^x-cos x) $
$ =lim_(x->0)x/(e^x+sin x)=0/(1+0)=0. $

注　$x->0$ 时，$1-sqrt(1-x^2)~1/2 x^2$.
]

#answer("（4）")[
$ "原式"=integral_1^(+infinity)((x^2+1)-x^2)/(x(x^2+1))dif x $
$ =integral_1^(+infinity)(1/x-x/(x^2+1))dif x=[ln x-1/2 ln(x^2+1)]_1^(+infinity) $
$ =lim_(x->+infinity)ln(x/sqrt(x^2+1))+1/2 ln 2=1/2 ln 2. $
]

#answer("（5）")[
令 $e x-x e^x=x(e-e^x)=0$，解得 $x=0,1$. 两曲线在 $x=0$ 与 $x=1$ 处相交，而当 $x in [0,1]$ 时，$e>=e^x,e x>=x e^x$，故面积
$ S=integral_0^1(e x-x e^x)dif x=1/2 e-1. $
]

= 二、选择题

#answer("（1）")[
解法一　由洛必达法则，
$ lim_(x->0)(x-sin x)/x^2=lim_(x->0)(1-cos x)/(2x)=lim_(x->0)(1/2 x^2)/(2x)=0. $

解法二　由泰勒—皮亚诺公式，
$ x-sin x=x-(x-x^3/(3!)+o(x^3))=x^3/(3!)+o(x^3). $
应选 B.
]

#answer("（2）")[
方法一　令 $y=-x$，且当 $x<=0$ 时，$y>=0$；$x>0$ 时，$y<0$. 代入 $f(x)$ 的表达式，有
$ f(-y)=cases((-y)^2 & y>=0,(-y)^2+(-y) & y<0). $
视式中的 $y$ 为 $x$，便是
$ f(-x)=cases(x^2-x & x<0,x^2 & x>=0). $
可见 D 是正确的.

方法二　直接计算. 当 $x>=0$ 时，$-x<=0$，故由 $f(x)$ 的定义，$f(-x)=(-x)^2=x^2$；而当 $x<0$ 时，$-x>0$，则 $f(-x)=(-x)^2+(-x)=x^2-x$. 即 D 是正确的.

方法三　也可利用 $f(x)$ 与 $f(-x)$ 的图象是关于 $y$ 轴对称的原理，直接从图形上判断 D 是正确的.
]

#answer("（3）")[
因 $lim_(x->1)(x^2-1)/(x-1)=2$，而
$ lim_(x->1^+)e^(1/(x-1))=+infinity, quad lim_(x->1^-)e^(1/(x-1))=0, $
故
$ lim_(x->1^+)(x^2-1)/(x-1)e^(1/(x-1))=+infinity, $
$ lim_(x->1^-)(x^2-1)/(x-1)e^(1/(x-1))=0. $
所以选 D.

注　左、右极限存在且相等，是函数极限存在的充要条件. 本题中函数 $(x^2-1)/(x-1)e^(1/(x-1))$ 为两个因式的乘积，易求出 $lim_(x->1)(x^2-1)/(x-1)=2$，所以解本题的关键是因式 $e^(1/(x-1))$.
]

#answer("（4）")[
$ F'(x)=f((x^2)^2)dot(x^2)'=2x f(x^4). $
应选 C.
]

#answer("（5）")[
$f'(x)=sin x$，则 $f(x)=integral sin x dif x=-cos x+C_1$.

从而 $f(x)$ 的原函数为
$ F(x)=integral f(x)dif x=-sin x+C_1 x+C_2, $
取 $C_1=0,C_2=1$，则有 $f(x)$ 的一个原函数 $1-sin x$. 应选 B.

注　做为选择题求解时，也可对选项求二阶导验证.
]

= 三、

#answer("（1）")[
$ "原式"=lim_(x->infinity)((3/x+1)^(x/2))/((6/x+1)^(x/2))((3+x)/(6+x))^(-1/2) $
$ =e^(3/2)/e^(6/2) dot 1^(-1/2)=e^(-3/2). $

注　求幂指函数“$1^infinity$”型的极限，常将其化为重要极限 $lim_(x->infinity)(1+1/x)^x=e$ 的形式，也可以采用取对数的方法将其化为指数幂数，进而求解.
]

#answer("（2）")[
由隐函数求导法，方程两边对 $x$ 求导，得
$ y'-e^y-x e^y y'=0, $
当 $x=0$ 时显见 $y=1$，代入上式，得 $y'(0)=e$. 再对上式求导，又得
$ y''-e^y dot y'-e^y dot y'-x e^y(y')^2-x e^y y''=0, $
再代入 $x=0,y=1,y'(0)=e$，得 $y''(0)=2e dot e-0=2e^2$.
]

#answer("（3）")[
解法一
$ "原式"=1/2 integral x^2/sqrt(1+x^2)dif(x^2)=1/2 integral ((1+x^2)-1)/sqrt(1+x^2)dif(x^2) $
$ =1/2 integral(sqrt(1+x^2)-1/sqrt(1+x^2))dif(1+x^2) $
$ =1/2[2/3(1+x^2)^(3/2)-2(1+x^2)^(1/2)]+C $
$ =1/3(1+x^2)^(3/2)-(1+x^2)^(1/2)+C. $

解法二
$ "原式"=1/2 integral x^2/sqrt(1+x^2)dif(1+x^2)=integral x^2 dif sqrt(1+x^2) $
$ =x^2 sqrt(1+x^2)-integral sqrt(1+x^2)dif(1+x^2) $
$ =x^2(1+x^2)^(1/2)-2/3(1+x^2)^(3/2)+C. $

解法三　设 $x=tan t$（$-pi/2<t<pi/2$），则 $dif x=sec^2 t dif t$，
$ "原式"=integral (tan^3 t dot sec^2 t)/(sec t)dif t=integral tan^2 t dif sec t $
$ =integral(sec^2 t-1)dif sec t=1/3(1+x^2)^(3/2)-(1+x^2)^(1/2)+C. $
]

#answer("（4）")[
$ "原式"=integral_0^pi sqrt((sin(x/2)-cos(x/2))^2)dif x $
$ =integral_0^pi abs(sin(x/2)-cos(x/2))dif x $
$ =integral_0^(pi/2)(cos(x/2)-sin(x/2))dif x+integral_(pi/2)^pi(sin(x/2)-cos(x/2))dif x $
$ =2(sin(x/2)+cos(x/2))|_0^(pi/2)-2(cos(x/2)+sin(x/2))|_(pi/2)^pi $
$ =4(sqrt(2)-1). $
]

#answer("（5）")[
所给方程是一阶线性方程，其标准形式为
$ y'-1/(2x)y=-x^2/2. $
通解为
$ y=e^(-integral(-1/(2x))dif x)(integral(-x^2/2)e^(integral(-1/(2x))dif x)dif x+C) $
$ =C sqrt(x)-1/5 x^3 quad ("其中" C "为常数"). $
]

= 解答题

#answer("四、")[
令 $x-2=t$，则
$ integral_1^3 f(x-2)dif x=integral_(-1)^1 f(t)dif t $
$ =integral_(-1)^0(1+t^2)dif t+integral_0^1 e^(-t)dif t=7/3-1/e. $
]

#answer("五、")[
特征方程 $r^2-3r+2=0$ 的两个根是 $r_1=1,r_2=2$；由右边项 $x e^(lambda x)$，$lambda=1=r_1$，设非齐次方程的特解
$ Y=x dot(a x+b)e^x, $
代入方程可得 $a=-1/2,b=-1$. 所求通解为
$ y=c_1 e^x+c_2 e^(2x)-x/2(x+2)e^x. $
]

#answer("六、")[
$ y'=(-2x)/(1-x^2), quad 1+(y')^2=((1+x^2)^2)/((1-x^2)^2), $
$ dif s=sqrt(1+(y')^2)dif x=(1+x^2)/(1-x^2)dif x quad (0<=x<=1/2), $
$ s=integral_0^(1/2)(1+x^2)/(1-x^2)dif x=integral_0^(1/2)(2-(1-x^2))/(1-x^2)dif x $
$ =integral_0^(1/2)(2/(1-x^2)-1)dif x=ln abs((1+x)/(1-x))|_0^(1/2)-1/2 $
$ =ln 3-1/2. $
]

#answer("七、")[
点 $(t,sqrt(t))$ 处的切线方程为
$ y-sqrt(t)=1/(2sqrt(t))(x-t), $
即 $y=x/(2sqrt(t))+sqrt(t)/2$；

面积
$ S(t)=integral_0^2[x/(2sqrt(t))+sqrt(t)/2-sqrt(x)]dif x $
$ =1/sqrt(t)+sqrt(t)-4/3 sqrt(2), $
$ S'(t)=-1/2 t^(-3/2)+1/2 t^(-1/2)=(t-1)/(2t sqrt(t)). $
令 $S'(t)=0$ 解得唯一驻点 $t=1$，而且 $S'$ 在此处由负变正，$S$ 在此取极小值也即是最小值. 所求切线方程为 $y=x/2+1/2$.
#align(center)[#image("1992-数学二-切线面积.svg", width: 45%)]
]

#answer("八、")[
分析　利用微分中值定理和函数单调性证明，也可构造一个新的辅助函数，并利用此函数的单调性证明.

解法一　由微分中值定理，有
$ f(x_1)-f(0)=x_1 f'(xi_1), quad 0<xi_1<x_1, $
$ f(x_1+x_2)-f(x_2)=x_1 f'(xi_2), quad x_2<xi_2<x_1+x_2, $
不妨设 $x_1<=x_2$（若不然，则交换上面两式中的 $x_1,x_2$ 即可），从而 $xi_1<xi_2$.

由 $f''(x)<0$ 知 $f'(x)$ 单调减少，故 $f'(xi_2)<f'(xi_1)$，而 $x_1>0$，所以
$ f(x_1+x_2)-f(x_2)<f(x_1)-f(0), $
由 $f(0)=0$ 即得 $f(x_1+x_2)<f(x_1)+f(x_2)$.

解法二　令 $F(x)=f(x+x_2)-f(x)$，则
$ F'(x)=f'(x+x_2)-f'(x)=x_2 f''(x+theta x_2)<0, quad 0<theta<1. $
所以 $F(x)$ 单调减少，又 $x_1>0$，故 $F(x_1)<F(0)$，即
$ f(x_1+x_2)-f(x_1)<f(x_2)-f(0), $
由 $f(0)=0$，即得 $f(x_1+x_2)<f(x_1)+f(x_2)$.
]

