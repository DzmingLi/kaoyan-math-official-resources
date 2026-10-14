#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2004, subject: "二", title: "2004年全国硕士研究生入学统一考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2004 数学二试卷参考解答

= 一、填空题

#answer("1.")[
*分析* 先按 $x=0$ 与 $x!=0$ 分类求极限，再判断连续性.
*解* $f(x)=cases(0 & x=0,1/x & x!=0)$，故唯一间断点为 $x=0$.
]

#answer("2.")[
*分析* 由参数方程求二阶导数，并将参数范围转换为横坐标范围.
*解* $dif y/dif x=(t^2-1)/(t^2+1)$，
$ frac(dif^2 y,dif x^2)=frac(dif,dif t)frac(t^2-1,t^2+1)dot frac(1,3t^2+3)=frac(4t,3(t^2+1)^3). $
向上凸要求二阶导数为负，故 $t<0$. 又 $x'(t)=3t^2+3>0$，$t=0$ 对应 $x=1$，$t->-infinity$ 时 $x->-infinity$，所以范围 $(-infinity,1)$（或 $(-infinity,1]$）.
*典型错误* 二阶导数计算错误；只求出 $t<0$，没有转换为 $x$ 的范围.
]

#answer("3.")[
*分析* 考查反常积分与换元积分法.
*解法1* 令 $x=sec t$，$dif x=sec t tan t dif t$，则
$ integral_1^infinity frac(dif x,x sqrt(x^2-1))=integral_0^(pi/2)dif t=pi/2. $
*解法2* 令 $x=1/t$，$dif x=-dif t/t^2$，则
$ integral_1^infinity frac(dif x,x sqrt(x^2-1))=integral_0^1 frac(dif t,sqrt(1-t^2))=lr(arcsin t)|_0^1=pi/2. $
]

#answer("4.")[
*分析* 考查隐函数的偏导数，可直接对等式求偏导或使用隐函数求导公式.
*解法1* 等式两边对 $x$ 求偏导，$z_x=e^(2x-3z)(2-3z_x)$，所以 $z_x=2e^(2x-3z)/(1+3e^(2x-3z))$. 同理 $z_y=2/(1+3e^(2x-3z))$，故 $3z_x+z_y=2$.
*解法2* 令 $F(x,y,z)=z-e^(2x-3z)-2y$，则
$ z_x=-F_x/F_z=frac(2e^(2x-3z),1+3e^(2x-3z)),quad z_y=-F_y/F_z=frac(2,1+3e^(2x-3z)). $
因而仍得 $3z_x+z_y=2$.
*典型错误* 使用隐函数公式时，在计算三元函数 $F$ 的偏导数 $F_x,F_y$ 时又把 $z$ 当成 $x,y$ 的函数.
]

#answer("5.")[
*分析* 化为一阶线性非齐次微分方程，再使用初值确定常数.
*解* 原方程写成 $y'-y/(2x)=x^2/2$. 由通解公式，
$ y=e^(-integral -frac(1,2x)dif x)[integral frac(x^2,2)e^(integral -frac(1,2x)dif x)dif x+C]=x^3/5+C sqrt(x). $
由 $y(1)=6/5$ 得 $C=1$，故 $y=x^3/5+sqrt(x)$.
*典型错误* 记错标准形式中的 $p(x)$ 符号，将其误认为 $1/(2x)$.
]

#answer("6.")[
*分析* 只要求 $det B$，可直接对矩阵等式取行列式，不必先求 $B$.
*解* 原式化为 $(A-2E)B A^*=E$，取行列式得 $det(A-2E)det B det(A^*)=1$.
由 $det A=3$ 得 $det(A^*)=3^2=9$；又
$ det(A-2E)=mat(delim:"|",0,1,0;1,0,0;0,0,-1)=1, $
所以 $det B=1/9$.
*注* 也可以先求 $B=(A-2E)^(-1)(A^*)^(-1)$ 再取行列式，但计算量较大.
]

= 二、选择题

#answer("7.")[
*分析* 比较无穷小的阶，可用洛必达法则及变上限积分求导.
*解法1* 当 $x->0^+$ 时，
$ lim frac(alpha,beta)=lim frac(cos(x^2),2x tan x)=+infinity, $
$ lim frac(beta,gamma)=lim frac(2x tan x,frac(1,2sqrt(x))sin(x sqrt(x)))=0, $
$ lim frac(alpha,gamma)=lim frac(cos(x^2),frac(1,2sqrt(x))sin(x sqrt(x)))=+infinity. $
故 $gamma$ 比 $alpha$ 高阶，$beta$ 比 $gamma$ 高阶，排列 $alpha,gamma,beta$，选 B.
*解法2* $alpha'=cos(x^2)~1,beta'=2x tan x~2x^2,gamma'=sin(x sqrt(x))/(2sqrt(x))~x/2$. 导数的阶依次为0、2、1，故原函数的阶依次为1、3、2，仍得相同顺序.

*典型错误* 求变上限积分的导数时，遗漏上限函数的导数因子.
]

#answer("8.")[
*分析* 考查极值和拐点的概念.
*解* $f(x)=abs(x(1-x))>=0,f(0)=0$，故零点是极小值点. 在零点左邻域 $f(x)=x^2-x,f''(x)=2>0$；右邻域 $f(x)=x-x^2,f''(x)=-2<0$，所以曲线在 $(0,0)$ 两侧凹凸性改变，是拐点，选 C.
*注* 也可以画出零点附近的函数草图判断.
]

#answer("9.")[
*分析* 将对数乘积转成和，再用定积分定义求极限.
*解* 原式为
$ 2lim_(n->infinity)frac(1,n)[ln(1+1/n)+ln(1+2/n)+dots+ln(1+n/n)]=2integral_1^2 ln x dif x, $
选 B.
]

#answer("10.")[
*分析* 用导数定义和极限保号性；一点导数的符号不能保证邻域单调.
*解* $f'(0)=lim_(x->0)(f(x)-f(0))/x>0$，故存在 $delta>0$，使 $0<abs(x)<delta$ 时差商为正. 对 $0<x<delta$，即 $f(x)>f(0)$，所以选 C.
*典型错误* 仅由 $f'(0)>0$ 就断言附近函数单调递增. 单调性判定需要整个区间内导数不变号.

*反例* 取 $f(x)=cases(x/2+x^2 sin(1/x) & x!=0,0 & x=0)$，则 $f'(0)=1/2>0$. 当 $x!=0$ 时 $f'(x)=1/2+2x sin(1/x)-cos(1/x)$. 在 $x_n=1/(2n pi)$ 处 $f'(x_n)=-1/2$，所以任何右邻域都有导数为负的点，函数不能单调增加.
]

#answer("11.")[
*分析* 使用非齐次方程特解的叠加原理与待定系数法.
*解* 齐次方程的特征根为 $plus.minus i$. 对右端 $x^2+1$ 可设特解 $a x^2+b x+c$；对右端 $sin x$，由于 $i$ 为特征根，需乘以 $x$，设 $x(A sin x+B cos x)$. 相加得原方程特解可设为 $a x^2+b x+c+x(A sin x+B cos x)$，选 A.
]

#answer("12.")[
*分析* 正确确定区域及极坐标面积元.
*解* 区域为 $x^2+(y-1)^2<=1$，在极坐标下 $0<=r<=2sin theta,0<=theta<=pi$，故
$ integral.double_D f(x y)dif x dif y=integral_0^pi dif theta integral_0^(2sin theta)f(r^2 sin theta cos theta)r dif r. $
选 D. A的内层上下限应为 $1 plus.minus sqrt(1-x^2)$，C遗漏面积元因子 $r$；被积函数关于 $x$ 的奇偶性未知，不能将左半区域换成右半区域的二倍，故 B也不成立.
]

#answer("13.")[
*分析* 初等列变换等价于右乘相应初等矩阵.
*解* $C=A E_1 E_2$，其中
$ E_1=mat(0,1,0;1,0,0;0,0,1),quad E_2=mat(1,0,0;0,1,1;0,0,1). $
所以 $Q=E_1 E_2=mat(0,1,1;1,0,0;0,0,1)$，选 D.
*注* 也可以对单位矩阵依次作题设的两次列变换，直接得到 $Q$.
]

#answer("14.")[
*分析* 可用一个反例排除错误选项；也可由齐次方程组的非零解推导.
*解法1* 取 $A=(1,0),B=(0,1)^T$，有 $A B=0$. $A$ 的列向量组相关而行向量组无关；$B$ 的行向量组相关而列向量组无关. 故只能选 A.
*解法2* $B$ 非零，所以 $A x=0$ 有非零解，故 $A$ 的列向量组相关. 又 $B^T A^T=0$，$A^T$ 非零，故 $B^T x=0$ 有非零解，即 $B$ 的行向量组相关.
*典型错误* 混淆“非零解对应列向量组相关”与行向量组相关.
]

= 三、解答题

#answer("15.")[
*分析* 将幂函数化为指数函数，再用等价无穷小或洛必达法则求极限.
解法1　原式
$ =lim_(x->0)(e^(x ln((2+cos x)/3))-1)/x^3 \
=lim_(x->0)(ln((2+cos x)/3))/x^2 \
=lim_(x->0)(ln(2+cos x)-ln 3)/x^2 \
=lim_(x->0)((1/(2+cos x))dot(-sin x))/(2x) \
=-1/2 lim_(x->0)1/(2+cos x) dot (sin x)/x=-1/6. $
解法2　原式
$ =lim_(x->0)(e^(x ln((2+cos x)/3))-1)/x^3 \
=lim_(x->0)(ln((2+cos x)/3))/x^2 \
=lim_(x->0)(ln(1+(cos x-1)/3))/x^2 \
=lim_(x->0)(cos x-1)/(3x^2)=-1/6. $
*解法3* 直接使用洛必达法则，令 $q=(2+cos x)/3$，则
$ lim_(x->0)frac(q^x-1,x^3)=lim_(x->0)frac(q^x,2+cos x)dot lim_(x->0)frac((2+cos x)ln q-x sin x,3x^2) $
$ =frac(1,9)lim_(x->0)frac(-sin x ln q-2sin x-x cos x,2x)=-frac(1,18)lim_(x->0)(frac(sin x,x)ln q+2frac(sin x,x)+cos x)=-frac(1,6). $
*典型错误* 没有论证便在变指数幂中直接用 $cos x$ 的近似式替换；误记 $cos x-1$ 的等价无穷小的符号；把变指数幂当作常指数幂求导.
]

#answer("16.")[
*分析* 第一问利用平移后的自变量落在已知区间内；第二问分别计算左右导数并令其相等.
解　（Ⅰ）当 $-2<=x<0$，即 $0<=x+2<2$ 时，
$ f(x)=k f(x+2)=k(x+2)[(x+2)^2-4]=k x(x+2)(x+4). $
（Ⅱ）由题设知 $f(0)=0$.
$ f'_+(0)=lim_(x->0^+)(f(x)-f(0))/(x-0)=lim_(x->0^+)(x(x^2-4))/x=-4, \
f'_-(0)=lim_(x->0^-)(f(x)-f(0))/(x-0)=lim_(x->0^-)(k x(x+2)(x+4))/x=8k. $
令 $f'_-(0)=f'_+(0)$，得 $k=-1/2$，即当 $k=-1/2$ 时，$f(x)$ 在 $x=0$ 处可导.
*典型错误* 只检验一侧导数，或没有要求两侧导数同时存在且相等.
]

#answer("17.")[
*分析* 用定积分换元证明周期性，再在一个周期上比较驻点和端点的函数值.
解　（Ⅰ）$f(x+pi)=integral_(x+pi)^(x+3/2 pi)|sin t|dif t$.
设 $t=u+pi$，则有
$ f(x+pi)=integral_x^(x+pi/2)|sin(u+pi)|dif u=integral_x^(x+pi/2)|sin u|dif u=f(x), $
故 $f(x)$ 是以 $pi$ 为周期的周期函数.

（Ⅱ）因为 $|sin x|$ 在 $(-infinity,+infinity)$ 内连续，注意到 $f(x)$ 的周期为 $pi$，故只需在 $[0,pi]$ 上讨论其值域. 因为
$ f'(x)=|sin(x+pi/2)|-|sin x|=|cos x|-|sin x|, $
令 $f'(x)=0$，得 $x_1=pi/4,x_2=(3pi)/4$，且
$ f(pi/4)=integral_(pi/4)^((3pi)/4)sin t dif t=sqrt(2), \
f((3pi)/4)=integral_((3pi)/4)^((5pi)/4)|sin t|dif t=integral_((3pi)/4)^pi sin t dif t-integral_pi^((5pi)/4)sin t dif t=2-sqrt(2). $
又 $f(0)=integral_0^(pi/2)sin t dif t=1,f(pi)=integral_pi^(3/2 pi)(-sin t)dif t=1$，因而 $f(x)$ 的最小值是 $2-sqrt(2)$，最大值是 $sqrt(2)$，故 $f(x)$ 的值域是 $[2-sqrt(2),sqrt(2)]$.
*典型错误* 误把 $|sin t|$ 的原函数写成 $-|cos t|$；忽略积分区间随 $x$ 移动，在整个积分区间上错误地去掉绝对值.
]

#answer("18.")[
*分析* 写出旋转体体积和旋转曲面面积的定积分，第一问不必计算积分；第二问利用洛必达法则.
解　（Ⅰ）
$ S(t)&=integral_0^t 2pi y sqrt(1+y'^2)dif x \
&=2pi integral_0^t ((e^x+e^(-x))/2)sqrt(1+(e^(2x)-2+e^(-2x))/4)dif x \
&=2pi integral_0^t ((e^x+e^(-x))/2)^2 dif x, \
V(t)&=pi integral_0^t ((e^x+e^(-x))/2)^2 dif x, $
所以 $(S(t))/(V(t))=2$.
（Ⅱ）$F(t)=pi y^2|_(x=t)=pi ((e^t+e^(-t))/2)^2$，
$ lim_(t->+infinity)(S(t))/(F(t))=lim_(t->+infinity)(2pi integral_0^t ((e^x+e^(-x))/2)^2 dif x)/(pi ((e^t+e^(-t))/2)^2) $
$ =lim_(t->+infinity)(2((e^t+e^(-t))/2)^2)/(2((e^t+e^(-t))/2)((e^t-e^(-t))/2))=lim_(t->+infinity)(e^t+e^(-t))/(e^t-e^(-t))=1. $
*典型错误* 把变化的半径提出面积积分，误写成 $S(t)=2pi f(t)integral_0^t sqrt(1+f'(x)^2)dif x$.
]

#answer("19.")[
*分析* 可利用函数的单调性，也可使用拉格朗日或柯西中值定理.

证法1　设 $phi(x)=ln^2 x-4/e^2 x$，则
$ phi'(x)=2 (ln x)/x-4/e^2, quad phi''(x)=2 (1-ln x)/x^2, $
所以当 $x>e$ 时，$phi''(x)<0$，故 $phi'(x)$ 单调减少，从而当 $e<x<e^2$ 时，
$ phi'(x)>phi'(e^2)=4/e^2-4/e^2=0, $
即当 $e<x<e^2$ 时，$phi(x)$ 单调增加.
因此当 $e<a<b<e^2$ 时，$phi(b)>phi(a)$，即
$ ln^2 b-4/e^2 b>ln^2 a-4/e^2 a, $
故 $ln^2 b-ln^2 a>4/e^2(b-a)$.

*证法2* 设 $phi(x)=ln^2 x-ln^2 a-frac(4,e^2)(x-a)$. 与证法1相同，$phi'(x)>0$ 对 $e<x<e^2$ 成立. 因而 $phi(b)>phi(a)=0$，得到所求不等式.

证法3　对函数 $ln^2 x$ 在 $[a,b]$ 上应用拉格朗日中值定理，得
$ ln^2 b-ln^2 a=(2ln xi)/xi (b-a),quad a<xi<b. $
设 $phi(t)=(ln t)/t$，则 $phi'(t)=(1-ln t)/t^2$.
当 $t>e$ 时，$phi'(t)<0$，所以 $phi(t)$ 单调减少，从而 $phi(xi)>phi(e^2)$，即
$ (ln xi)/xi>(ln e^2)/e^2=2/e^2, $
故 $ln^2 b-ln^2 a>4/e^2(b-a)$.

*证法4* 令 $f(x)=ln^2 x,g(x)=x$，在 $[a,b]$ 上应用柯西中值定理，得
$ frac(ln^2 b-ln^2 a,b-a)=frac(f'(xi),g'(xi))=frac(2ln xi,xi),quad a<xi<b. $
由证法3中函数 $ln t/t$ 的单调性，仍得 $ln^2 b-ln^2 a>frac(4,e^2)(b-a)$.
*典型错误* 把中值定理确定的 $xi$ 当作自变量，对 $f'(xi)$ 再求导；没有证明 $ln t/t$ 的单调性.
]

#answer("20.")[
*分析* 根据牛顿第二定律列出微分方程和初始条件，再令 $t->+infinity$ 或 $v(t)->0$ 求距离的极限.
解　由题设，飞机的质量 $m=9000$ kg，着陆时的速度 $v_0=700$ km/h. 从飞机接触跑道开始计时，设 $t$ 时刻飞机的滑行距离为 $x(t)$，速度为 $v(t)$.

法1　根据牛顿第二定律，得 $m (dif v)/(dif t)=-k v$，又
$ (dif v)/(dif t)=(dif v)/(dif x) dot (dif x)/(dif t)=v (dif v)/(dif x), $
由以上二式得 $dif x=-m/k dif v$.
积分得 $x(t)=-m/k v+C$. 由于 $v(0)=v_0,x(0)=0$，故得 $C=m/k v_0$，从而
$ x(t)=m/k(v_0-v(t)). $
当 $v(t)->0$ 时，
$ x(t)->(m v_0)/k=(9000 times 700)/(6.0 times 10^6) ("km")=1.05 ("km"). $
所以，飞机滑行的最长距离为1.05 km.

法2　根据牛顿第二定律，得 $m (dif v)/(dif t)=-k v$，所以
$ (dif v)/v=-k/m dif t. $
两端积分得通解 $v=C e^(-k/m t)$，代入初始条件 $v|_(t=0)=v_0$，解得 $C=v_0$，故 $v(t)=v_0 e^(-k/m t)$.
飞机滑行的最长距离为
$ x=integral_0^(+infinity) v(t) dif t=lr(- (m v_0)/k e^(-k/m t))|_0^(+infinity)=(m v_0)/k=1.05 ("km"). $

法3　根据牛顿第二定律，得
$ m (dif^2 x)/(dif t^2)=-k (dif x)/(dif t),quad (dif^2 x)/(dif t^2)+k/m (dif x)/(dif t)=0, $
其特征方程为 $r^2+k/m r=0$，解之得 $r_1=0,r_2=-k/m$，故
$ x=C_1+C_2 e^(-k/m t). $
由 $x|_(t=0)=0,v|_(t=0)=lr((dif x)/(dif t))|_(t=0)=lr(- (k C_2)/m e^(-k/m t))|_(t=0)=v_0$，得 $C_1=-C_2=(m v_0)/k$.
于是 $x(t)=(m v_0)/k (1-e^(-k/m t))$.
当 $t->+infinity$ 时，$x(t)->(m v_0)/k=1.05 ("km")$.
所以，飞机滑行的最长距离为1.05 km.
*法4* 由 $m dif v/dif t=-k v$，得 $dif v/dif t=-frac(2000,3)v$，所以 $dif t=-frac(3,2000v)dif v$. 因 $v=dif x/dif t$，知
$ x=integral_0^infinity v dif t=-integral_700^0 v frac(3,2000v)dif v=frac(21,20)=1.05 thin "km". $
*典型错误* 列方程时漏掉阻力的负号；积分时漏掉常数. 题设的 $k$ 应取与质量、速度单位相容的量纲，即 kg/h；错误地使用 g/s 会得到不合理的滑行距离. 建模结果应结合实际解释和检查.
]

#answer("21.")[
*分析* 识别两个中间变量与 $x,y$ 的复合关系，使用多元复合函数求导法则和乘积法则.
解
$ (partial z)/(partial x)&=2x f'_1+y e^(x y)f'_2, \
(partial z)/(partial y)&=-2y f'_1+x e^(x y)f'_2, \
(partial^2 z)/(partial x partial y)&=2x[f''_(11)dot(-2y)+f''_(12)dot x e^(x y)]+e^(x y)f'_2+x y e^(x y)f'_2 \
&quad+y e^(x y)[f''_(21)dot(-2y)+f''_(22)dot x e^(x y)] \
&=-4x y f''_(11)+2(x^2-y^2)e^(x y)f''_(12)+x y e^(2x y)f''_(22)+e^(x y)(1+x y)f'_2. $
*典型错误* 偏导数记号不规范；忘记 $f'_1,f'_2$ 仍是两个中间变量的函数而漏掉混合二阶偏导项；对乘积求导时误把乘积法则写成两项导数相乘.
]

#answer("22.")[
*分析* 对系数矩阵作初等行变换讨论秩，或者先令系数行列式为零求参数，再写出同解方程组和基础解系.
解法1　对方程组的系数矩阵 $A$ 作初等行变换，有
$ A=mat(1+a,1,1,1;2,2+a,2,2;3,3,3+a,3;4,4,4,4+a) \
->mat(1+a,1,1,1;-2a,a,0,0;-3a,0,a,0;-4a,0,0,a)=B. $
当 $a=0$ 时，$r(A)=1<4$，故方程组有非零解，其同解方程组为
$ x_1+x_2+x_3+x_4=0, $
由此得基础解系为
$ eta_1=(-1,1,0,0)^"T",quad eta_2=(-1,0,1,0)^"T",quad eta_3=(-1,0,0,1)^"T", $
于是所求方程组的通解为 $bold(x)=k_1 eta_1+k_2 eta_2+k_3 eta_3$，其中 $k_1,k_2,k_3$ 为任意常数.
当 $a!=0$ 时，
$ B->mat(1+a,1,1,1;-2,1,0,0;-3,0,1,0;-4,0,0,1)->mat(a+10,0,0,0;-2,1,0,0;-3,0,1,0;-4,0,0,1), $
可知当 $a=-10$ 时，$r(A)=3<4$，故方程组也有非零解，其同解方程组为
$ cases(-2x_1+x_2=0,-3x_1+x_3=0,-4x_1+x_4=0), $
由此得基础解系为 $eta=(1,2,3,4)^"T"$，于是所求方程组的通解为 $bold(x)=k eta$，其中 $k$ 为任意常数.

解法2　方程组的系数行列式
$ |A|=mat(delim:"|",1+a,1,1,1;2,2+a,2,2;3,3,3+a,3;4,4,4,4+a)=(a+10)a^3. $
当 $|A|=0$，即 $a=0$ 或 $a=-10$ 时，方程组有非零解.
当 $a=0$ 时，对系数矩阵 $A$ 作初等行变换，有
$ A=mat(1,1,1,1;2,2,2,2;3,3,3,3;4,4,4,4)->mat(1,1,1,1;0,0,0,0;0,0,0,0;0,0,0,0), $
故方程组的同解方程组为 $x_1+x_2+x_3+x_4=0$，其基础解系为
$ eta_1=(-1,1,0,0)^"T",quad eta_2=(-1,0,1,0)^"T",quad eta_3=(-1,0,0,1)^"T", $
于是所求方程组的通解为 $bold(x)=k_1 eta_1+k_2 eta_2+k_3 eta_3$，其中 $k_1,k_2,k_3$ 为任意常数.
当 $a=-10$ 时，对 $A$ 作初等行变换，有
$ A=mat(-9,1,1,1;2,-8,2,2;3,3,-7,3;4,4,4,-6)->mat(-9,1,1,1;20,-10,0,0;30,0,-10,0;40,0,0,-10) \
->mat(-9,1,1,1;-2,1,0,0;-3,0,1,0;-4,0,0,1)->mat(0,0,0,0;-2,1,0,0;-3,0,1,0;-4,0,0,1), $
故方程组的同解方程组为 $cases(x_2=2x_1,x_3=3x_1,x_4=4x_1)$，其基础解系为 $eta=(1,2,3,4)^"T"$，于是所求方程组的通解为 $bold(x)=k eta$，其中 $k$ 为任意常数.
*典型错误* 在 $a=-10$ 的情况下，求通解时发生简单的行变换计算错误.
]

#answer("23.")[
*分析* 分别讨论固定特征值为二重根，以及另外两个特征值重合的情况，再由特征子空间的维数判断能否相似对角化.
解　$A$ 的特征多项式为
$ &mat(delim:"|",lambda-1,-2,3;1,lambda-4,3;-1,-a,lambda-5) \
=&mat(delim:"|",lambda-2,2-lambda,0;1,lambda-4,3;-1,-a,lambda-5) \
=&(lambda-2)mat(delim:"|",1,-1,0;1,lambda-4,3;-1,-a,lambda-5) \
=&(lambda-2)mat(delim:"|",1,0,0;1,lambda-3,3;-1,-a-1,lambda-5) \
=&(lambda-2)(lambda^2-8lambda+18+3a). $
若 $lambda=2$ 是特征方程的二重根，则有 $2^2-16+18+3a=0$，解得 $a=-2$.
当 $a=-2$ 时，$A$ 的特征值为2，2，6，矩阵 $2E-A=mat(1,-2,3;1,-2,3;-1,2,-3)$ 的秩为1，故 $lambda=2$ 对应的线性无关的特征向量有两个，从而 $A$ 可相似对角化.
若 $lambda=2$ 不是特征方程的二重根，则 $lambda^2-8lambda+18+3a$ 为完全平方，从而 $18+3a=16$，解得 $a=-2/3$.
当 $a=-2/3$ 时，$A$ 的特征值为2，4，4，矩阵 $4E-A=mat(3,-2,3;1,0,3;-1,2/3,-1)$ 的秩为2，故 $lambda=4$ 对应的线性无关的特征向量只有一个，从而 $A$ 不可相似对角化.
*典型错误* 只求出 $a=-2/3$，遗漏 $lambda=2$ 为二重根时的 $a=-2$ 情况.
]

