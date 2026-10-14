#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2002, subject: "一", title: "2002年全国硕士研究生入学统一考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#import "@preview/cetz:0.5.2"
#let planes(kind)=cetz.canvas({
 import cetz.draw: *
 set-style(stroke:.65pt,fill:white)
 if kind=="A" {
  line((-.7,-1),(.65,-1),(.65,1),(-.7,1),close:true)
  line((-1.15,-.2),(.3,-.2),(1.1,.25),(-.35,.25),close:true)
  line((-.45,-1.2),(.4,-.75),(.4,1.2),(-.45,.8),close:true)
  line((0,-.2),(0,.25),stroke:(dash:"dashed"))
 } else if kind=="B" {
  line((-.25,-1.2),(.4,-1.2),(.25,1.2),(-.4,1.2),close:true)
  line((-1.2,.85),(-.5,.85),(1.2,-.85),(.5,-.85),close:true)
  line((-1.2,-.85),(-.5,-.85),(1.2,.85),(.5,.85),close:true)
  line((-.35,0),(.35,0))
 } else if kind=="C" {
  line((-1.2,-.9),(1.2,-.9),(1.25,-.5),(-1.15,-.5),close:true)
  line((-1,1),(-1,.6),(1,-1.25),(1,-.8),close:true)
  line((-1,-1.25),(-1,-.8),(1,1),(1,.6),close:true)
 } else {
  line((-1.2,.9),(1.1,-.7),(1.1,-1.2),(-1.2,.4),close:true)
  line((-1.25,-.75),(.1,.25),(.1,1),(-1.25,0),close:true)
  line((-.15,-1.25),(1.2,-.25),(1.2,.5),(-.15,-.5),close:true)
 }
})
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2002 数学一试卷参考解答

= 一、填空题

#answer("1（1）")[
*分析* 本题考查广义积分计算.
*解* $ integral_e^(+infinity)frac(1,x ln^2 x)dif x=lim_(b->+infinity)[-frac(1,ln x)]_e^b=1. $
*典型错误* 原函数为 $-1/ln x$，不是 $1/ln x$，易漏掉负号.
]

#answer("1（2）")[
*解* 把 $y$ 看作 $x$ 的函数，将方程两边求导，得
$ e^y y'+6x y'+6y+2x=0. $
再求导，得
$ e^y y''+e^y(y')^2+6x y''+12y'+2=0. $
当 $x=0$ 时，原方程给出 $y=0$；代入第一式得 $y'=0$，再代入第二式得 $y''(0)=-2$.
*注* 只写出含 $x,y,y'$ 的二阶导数表达式还不够，必须由原方程与一阶导数关系确定零点处各量的具体值.
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
*分析* 二次型正交变换后的系数就是相应实对称矩阵的特征值.
*解法1* 标准形给出特征值为 $6,0,0$. 对应矩阵
$ A=mat(a,2,2;2,a,2;2,2,a),quad det(A-lambda E)=-(lambda-(a+4))(lambda-(a-2))^2. $
所以 $a+4=6,a-2=0$，得 $a=2$.

*解法2* 由标准形知 $r(A)=1$. 行列式
$ det A=(a+4)mat(delim:"|",1,2,2;1,a,2;1,2,a)=(a-2)^2(a+4). $
令其为零得 $a=2$ 或 $a=-4$. 前者秩为1，后者秩为2，故仅 $a=2$.

*典型错误* 仅令一个特征值等于6，误答 $a=2$ 或8，忽略其他特征值及重数；或者由行列式为零便接受 $a=-4$，未检验矩阵的秩.
*注* 若将标准形改成 $b y_1^2$，同样由二重特征值为零得 $a=2$，再得 $b=6$.
]

#answer("1（5）")[
*分析* 将正态变量标准化，把方程无实根的条件化成概率条件.
*解* 二次方程无实根当且仅当 $4-X<0$，所以 $P\{X>4\}=1/2$. 令 $Y=(X-mu)/sigma$，则 $Y$ 服从标准正态分布，有
$ frac(1,2)=1-P\{X<=4\}=1-P\{Y<=frac(4-mu,sigma)\}=1-Phi(frac(4-mu,sigma)). $
因 $Phi(0)=1/2$ 且严格递增，得 $(4-mu)/sigma=0$，即 $mu=4$.
]

= 二、选择题

#answer("2（1）")[
*解* 四种性质的关系为：偏导数连续 $②$ 推出可微 $③$；可微分别推出连续 $①$ 和偏导数存在 $④$. 因此选 A.
不能由“③推出④”和“③推出①”推出“④推出①”. 两个偏导数存在并不保证二元函数连续，不可把一元函数可导必连续的结论直接搬到二元函数.
]

#answer("2（2）")[
*分析* 用部分和定义判断收敛，再用正项级数的极限比较法判断是否绝对收敛.
*解* 前 $n$ 项部分和为
$ S_n=(frac(1,u_1)+frac(1,u_2))-(frac(1,u_2)+frac(1,u_3))+dots+(-1)^(n+1)(frac(1,u_n)+frac(1,u_(n+1)))=frac(1,u_1)+frac((-1)^(n+1),u_(n+1)). $
由 $n/u_n->1$，可写 $u_n=n(1+alpha_n)$，$alpha_n->0$，所以 $S_n->1/u_1$，级数收敛.
充分大的 $n$ 有 $u_n>0$，且
$ lim_(n->infinity)frac(frac(1,u_n)+frac(1,u_(n+1)),frac(2n+1,n(n+1)))=1. $
而 $sum (2n+1)/(n(n+1))$ 发散，所以绝对值级数发散，原级数条件收敛，选 C.
*注* 取 $u_n=n$ 可排除“发散”和“绝对收敛”，但一个例子不能证明所有满足条件的数列都条件收敛；仍须上述一般证明，才能排除“无法判定”.
]

#answer("2（3）")[
*分析* 考查函数极限与导函数极限的关系，并区别 $x->0^+$ 与 $x->+infinity$.
*解法1* 用反例排除：A取 $f(x)=sin(x^2)/x$，它在 $(0,+infinity)$ 有界可导，两端极限均为零，但 $f'(x)=2cos(x^2)-sin(x^2)/x^2$ 在无穷远处无极限. C取 $f(x)=sin x$，零点右极限为零，但导数右极限为1. D取 $f(x)=cos sqrt(x)$，导数右极限为 $-1/2$，并非零. 故选 B.

*解法2* 反证 B. 若导数无穷远处极限为 $A>0$，则存在 $X>0$，当 $x>X$ 时 $f'(x)>A/2$. 在 $[X,x]$ 上应用拉格朗日中值定理，得
$ f(x)=f(X)+f'(xi)(x-X)>f(X)+frac(A,2)(x-X). $
这与函数有界矛盾；极限为负时同理矛盾，故导数极限只能为零.
*注* 函数趋于零并不意味着曲线斜率也趋于零.
]

#answer("2（4）")[
*分析* 由线性方程组的秩判断公共解及其几何意义.
*解* 系数矩阵与增广矩阵秩相等且均为2，故有解，公共解有一个自由参数，构成一条直线. 三个平面相交于同一条直线，选 B.
C只有两两公共解，D是某一平面分别与另两个相交，均不表示三个方程有公共解.
]

#answer("2（5）")[
*解* 概率密度应非负且全轴积分为1；分布函数应单调不减，两端极限分别为0和1. A的全轴积分为2，C的正无穷极限为2，均不成立. 对B，取
$ f_1(x)=cases(1 & 0<x<=1,0 & #text[其他]),quad f_2(x)=cases(e^x & x<=0,0 & #text[其他]), $
则乘积恒为零，不能作为概率密度.
若 $X_((2))=max(X_1,X_2)$，由独立性，
$ F(x)=P\{X_1<=x,X_2<=x\}=F_1(x)F_2(x). $
故D确为某随机变量的分布函数，选 D.
]

= 解答题

#answer("三、")[
*分析* 用高阶无穷小的定义，结合导数定义或洛必达法则求出参数.


*解法1* 由题设条件知
$ lim_(h->0) [a f(h)+b f(2h)-f(0)]=(a+b-1)f(0)=0. $
由于 $f(0) != 0$，故必有 $a+b-1=0$.

又由洛必达法则，有
$ 0=lim_(h->0) (a f(h)+b f(2h)-f(0))/h=lim_(h->0) (a f'(h)+2b f'(2h))/1=(a+2b)f'(0), $
因 $f'(0) != 0$，故 $a+2b=0$.

于是得 $a=2,b=-1$.

*解法2* 按导数定义拆开原式：
$ 0=lim_(h->0)[a frac(f(h)-f(0),h)+2b frac(f(2h)-f(0),2h)+frac((a+b-1)f(0),h)]. $
前两项极限存在，第三项只有分子为零时极限才存在，故 $a+b-1=0$. 此后得 $0=(a+2b)f'(0)$，从而 $a=2,b=-1$.
*解法3* 由条件得
$ f(h)=f(0)+f'(0)h+o(h), \
f(2h)=f(0)+2f'(0)h+o(h), $
所以
$ a f(h)+b f(2h)-f(0)=(a+b-1)f(0)+(a+2b)f'(0)h+o(h). $
因此当 $a=2,b=-1$ 时，有 $a f(h)+b f(2h)-f(0)=o(h)$.


*注* 导数定义和可微展开两种解法只要求 $f$ 在零点可导，无须一阶导数在邻域连续；加强条件是为了也能使用洛必达法则.
*典型错误* 高于 $h$ 阶的无穷小不一定是某个 $h^(1+delta)$ 阶，不能假定存在 $delta>0$ 再以此求参. 另一个错误是混淆 $f'(0)$ 与常数 $f(0)$ 的导数 $(f(0))'=0$，脱离导数定义.
]

#answer("四、")[
*分析* 变上限积分求导确定切线斜率，再利用导数定义求极限.


*解* 由已知条件得
$ f(0)=0, quad f'(0)=lr((e^(-(arctan x)^2))/(1+x^2)|)_(x=0)=1, $
故所求切线方程为 $y=x$.
$ lim_(n->infinity) n f(2/n)=lim_(n->infinity) 2dot (f(2/n)-f(0))/(2/n)=2f'(0)=2. $


*注* 最后一项极限须按导数定义计算；题设未保证 $f'$ 在零点连续，不能写 $lim_(x->0)f'(x)=f'(0)$ 来套用洛必达法则. $n$ 也是离散变量，更不能直接对它应用洛必达法则.
]

#answer("五、")[
*分析* 根据最大值函数的取值，将区域划分成两块，再把二重积分写成两项之和.


*解* 设 $D_1={(x,y)|0<=x<=1,0<=y<=x}$，$D_2={(x,y)|0<=x<=1,x<=y<=1}$，则
$ integral.double_D e^(max{x^2,y^2}) dif x dif y &= integral.double_(D_1) e^(max{x^2,y^2}) dif x dif y+integral.double_(D_2) e^(max{x^2,y^2}) dif x dif y \
&=integral.double_(D_1) e^(x^2) dif x dif y+integral.double_(D_2) e^(y^2) dif x dif y \
&=integral_0^1 dif x integral_0^x e^(x^2) dif y+integral_0^1 dif y integral_0^y e^(y^2) dif x \
&=integral_0^1 x e^(x^2) dif x+integral_0^1 y e^(y^2) dif y \
&=e-1. $


*典型错误* 不能在整个 $D$ 上分别以 $e^(x^2)$ 与 $e^(y^2)$ 计算，并误把两种情形视作两个答案；也不能把某一个子区域的结果 $1/2(e-1)$ 当成全区域积分的值.
]

#answer("六、")[
*分析* 先验证第二类曲线积分的路径无关条件，再选择便于计算的折线；也可辨认全微分，或在乘积恒定的曲线上积分.


（1）*证* 因为
$ (partial)/(partial y){1/y [1+y^2 f(x y)]}=f(x y)-1/y^2+x y f'(x y)=(partial)/(partial x){x/y^2 [y^2 f(x y)-1]} $
在上半平面内处处成立，所以在上半平面内曲线积分 $I$ 与路径无关.

（2）*解法1* 由于 $I$ 与路径无关，故可取积分路径 $L$ 为由点 $(a,b)$ 到点 $(c,b)$ 再到点 $(c,d)$ 的折线段，所以
$ I &= integral_a^c 1/b [1+b^2 f(b x)] dif x+integral_b^d c/y^2 [y^2 f(c y)-1] dif y \
&= (c-a)/b+integral_a^c b f(b x) dif x+integral_b^d c f(c y) dif y+c/d-c/b \
&= c/d-a/b+integral_(a b)^(b c) f(t) dif t+integral_(b c)^(c d) f(t) dif t \
&= c/d-a/b+integral_(a b)^(c d) f(t) dif t. $
当 $a b=c d$ 时，$integral_(a b)^(c d) f(t) dif t=0$，由此得 $I=c/d-a/b$.

*解法2*
$ I=integral_L (dif x)/y-(x dif y)/y^2+integral_L y f(x y) dif x+x f(x y) dif y, \
integral_L (dif x)/y-(x dif y)/y^2=c/d-a/b. $
设 $F(x)$ 为 $f(x)$ 的一个原函数，则
$ integral_L y f(x y) dif x+x f(x y) dif y=integral_L f(x y) dif(x y)=F(c d)-F(a b), $
所以当 $a b=c d$ 时，$F(c d)-F(a b)=0$，由此得 $I=c/d-a/b$.


*解法3* 取路径 $x y=k$，$k=a b=c d$，写 $x=k/y$，则
$ I=integral_b^d[frac(1,y)(1+y^2 f(k))frac(-k,y^2)+frac(k,y^3)(y^2 f(k)-1)]dif y=integral_b^d frac(-2k,y^3)dif y=frac(k,d^2)-frac(k,b^2)=frac(c,d)-frac(a,b). $
*注1* 三种解法各有长处. 折线法应会换元合并两个含 $f$ 的积分；全微分法应能设抽象原函数，不必求出具体表达式.
*注2* 即使题目没有要求证明路径无关，求这类积分时也应先考虑路径无关性.
*注3* 若条件减弱为 $f$ 连续，偏导相等的检验法未必可用，但全微分法仍适用：只须构造可微函数 $u=x/y+F(x y)$，使 $dif u=P dif x+Q dif y$.
]

#answer("七、")[
*分析* 考查幂级数逐项求导、指数函数的麦克劳林展开，以及二阶常系数非齐次线性微分方程的初值问题.


*解* （1）因为
$ y(x)=1+x^3/(3!)+x^6/(6!)+x^9/(9!)+dots+x^(3n)/((3n)!)+dots, \
y'(x)=x^2/(2!)+x^5/(5!)+x^8/(8!)+dots+x^(3n-1)/((3n-1)!)+dots, \
y''(x)=x+x^4/(4!)+x^7/(7!)+dots+x^(3n-2)/((3n-2)!)+dots, $
所以 $y''+y'+y=e^x$.

（2）与 $y''+y'+y=e^x$ 相应的齐次微分方程为 $y''+y'+y=0$，其特征方程为 $lambda^2+lambda+1=0$，特征根为 $lambda_(1,2)=-1/2 plus.minus sqrt(3)/2 i$. 因此齐次微分方程的通解为
$ Y=e^(-x/2)[C_1 cos(sqrt(3)/2 x)+C_2 sin(sqrt(3)/2 x)]. $
设非齐次微分方程的特解为 $y^*=A e^x$，将 $y^*$ 代入方程 $y''+y'+y=e^x$ 得 $A=1/3$，于是 $y^*=1/3 e^x$，方程通解为
$ y=Y+y^*=e^(-x/2)[C_1 cos(sqrt(3)/2 x)+C_2 sin(sqrt(3)/2 x)]+1/3 e^x. $
当 $x=0$ 时，有
$ cases(y(0)=1=C_1+1/3,y'(0)=0=-1/2 C_1+sqrt(3)/2 C_2+1/3); $
由此，得 $C_1=2/3,C_2=0$.

于是幂级数 $sum_(n=0)^infinity x^(3n)/((3n)!)$ 的和函数为
$ y(x)=2/3 e^(-x/2)cos(sqrt(3)/2 x)+1/3 e^x quad (-infinity<x<+infinity). $


*典型错误* 未由级数确定 $y(0)=1,y'(0)=0$，初值写错，积分常数计算错误或特解设错.
*注* 若题目不先给出方程，而要求求 $y+y'+y''$ 并用初等函数表示 $y$，内容相同，但须自己发现与 $e^x$ 展开的关系.
]

#answer("八、")[
*分析* 方向导数的最大值等于梯度的模；然后用拉格朗日乘数法求边界上的条件极值.


*解* （1）由梯度的几何意义知，$h(x,y)$ 在点 $M(x_0,y_0)$ 处沿梯度
$ op("grad") h(x,y)|_((x_0,y_0))=(y_0-2x_0)i+(x_0-2y_0)j $
方向的方向导数最大，方向导数的最大值为该梯度的模，所以
$ g(x_0,y_0)=sqrt((y_0-2x_0)^2+(x_0-2y_0)^2)=sqrt(5x_0^2+5y_0^2-8x_0 y_0). $
（2）令 $f(x,y)=g^2(x,y)=5x^2+5y^2-8x y$，由题意，只需求 $f(x,y)$ 在约束条件 $75-x^2-y^2+x y=0$ 下的最大值点.

令 $L(x,y,lambda)=5x^2+5y^2-8x y+lambda (75-x^2-y^2+x y)$，则
$ cases(L'_x=10x-8y+lambda (y-2x)=0 & #text[①],L'_y=10y-8x+lambda (x-2y)=0 & #text[②],L'_lambda=75-x^2-y^2+x y=0 & #text[③]). $
①式与②式相加可得 $(x+y)(2-lambda)=0$，从而得 $y=-x$ 或 $lambda=2$.

若 $lambda=2$，则由①式得 $y=x$，再由③式得 $x=plus.minus 5sqrt(3),y=plus.minus 5sqrt(3)$.

若 $y=-x$，则由③式得 $x=plus.minus 5,y=minus.plus 5$.

于是得到4个可能的极值点
$ M_1(5,-5),M_2(-5,5),M_3(5sqrt(3),5sqrt(3)),M_4(-5sqrt(3),-5sqrt(3)). $
由于 $f(M_1)=f(M_2)=450$，$f(M_3)=f(M_4)=150$，故 $M_1(5,-5)$ 或 $M_2(-5,5)$ 可作为攀登的起点.


*典型错误* 未认出梯度的模就是最大方向导数，或转而求底面边界法向量的模，混淆两个不同对象；条件极值方程也须联立约束一同求解.
]

#answer("九、")[
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

#answer("十、")[
*分析* 以相似定义证明必要条件，并用反例说明逆命题一般不成立；实对称矩阵可对角化，因而逆命题在此条件下成立.


*证* （1）若 $A,B$ 相似，那么存在可逆矩阵 $P$，使 $P^(-1)A P=B$. 故
$ |lambda E-B| &= |lambda E-P^(-1)A P|=|P^(-1)lambda E P-P^(-1)A P| \
&=|P^(-1)(lambda E-A)P|=|P^(-1)||lambda E-A||P| \
&=|P^(-1)||P||lambda E-A|=|lambda E-A|. $
（2）令 $A=mat(0,1;0,0)$，$B=mat(0,0;0,0)$，那么 $|lambda E-A|=lambda^2=|lambda E-B|$，但 $A,B$ 不相似. 否则，存在可逆矩阵 $P$，使 $P^(-1)A P=B=O$，从而 $A=P O P^(-1)=O$，矛盾.

（3）由 $A,B$ 均为实对称矩阵知，$A,B$ 均相似于对角阵. 若 $A,B$ 的特征多项式相等，记特征多项式的根为 $lambda_1,dots,lambda_n$，则有
$ A #text[相似于] mat(lambda_1,,;,dots.down,;,,lambda_n), quad B #text[也相似于] mat(lambda_1,,;,dots.down,;,,lambda_n), $
即存在可逆矩阵 $P,Q$ 使
$ P^(-1)A P=mat(lambda_1,,;,dots.down,;,,lambda_n)=Q^(-1)B Q. $
于是 $(P Q^(-1))^(-1)A(P Q^(-1))=B$.

由 $P Q^(-1)$ 为可逆矩阵知，$A$ 与 $B$ 相似.


*典型错误* 用“相似矩阵特征值相同”来证明特征多项式相同，若前一结论正由后一结论推出，就构成循环论证.
第（2）问中，$mat(a,1;0,a)$ 与 $mat(a,0;1,a)$ 实际相似，不能作反例. 二阶矩阵有一个二重特征值 $a$ 时，相似标准形只有 $a E$ 和 $mat(a,1;0,a)$ 两类；若有两个不同实特征值，则可对角化，同特征值的两矩阵必相似.
]

#answer("十一、")[
*分析* 先由密度计算单次事件概率，再识别独立重复试验的二项分布，利用期望和方差求二阶矩；也可直接按分布律计算.


*解法1* 由于
$ P{X>pi/3}=integral_(pi/3)^pi 1/2 cos(x/2) dif x=1/2, quad Y~B(4,1/2), $
因此 $E Y=4times 1/2=2$，$D Y=4times 1/2 times (1-1/2)=1$，所以 $E Y^2=D Y+(E Y)^2=1+2^2=5$.

*解法2* 由于
$ P{X>pi/3}=integral_(pi/3)^pi 1/2 cos(x/2) dif x=1/2, quad Y~B(4,1/2), $
因此，$Y$ 的概率分布为
#table(columns:6,[$Y$],[0],[1],[2],[3],[4],[$P$],[$1/16$],[$4/16$],[$6/16$],[$4/16$],[$1/16$])
所以，$E Y^2=1/16 (0times 1+1times 4+2^2 times 6+3^2 times 4+4^2 times 1)=5$.


*典型错误* 不会求单次概率，或没有识别二项分布，因而未能利用期望、方差公式；也可通过写出分布律直接求二阶矩.
]

#answer("十二、")[
*分析* 矩估计将总体矩与样本矩相等；最大似然估计先写样本联合概率，再取对数求驻点，并检验参数取值范围.


*解*
$ E X=0times theta^2+1times 2theta (1-theta)+2times theta^2+3times (1-2theta)=3-4theta, \
overline(x)=1/8 times (3+1+3+0+3+1+2+3)=2. $
令 $E X=overline(x)$，即 $3-4theta=2$，解得 $theta$ 的矩估计值为 $hat(theta)=1/4$.

对于给定的样本值，似然函数为
$ L(theta)=4theta^6(1-theta)^2(1-2theta)^4. \
ln L(theta)=ln 4+6ln theta+2ln(1-theta)+4ln(1-2theta), \
(dif ln L(theta))/(dif theta)=6/theta-2/(1-theta)-8/(1-2theta)=(6-28theta+24theta^2)/(theta (1-theta)(1-2theta)), $
令 $(dif ln L(theta))/(dif theta)=0$，解得 $theta_(1,2)=(7plus.minus sqrt(13))/12$.

因 $(7+sqrt(13))/12>1/2$ 不合题意，所以 $theta$ 的最大似然估计为
$ hat(theta)=(7-sqrt(13))/12. $

*典型错误* 不熟悉矩估计的方法，或总体期望计算错误；最大似然估计中，把分布函数当成概率密度，样本联合密度未写成各密度的乘积，或者乘积中的幂次计算错误.
]

