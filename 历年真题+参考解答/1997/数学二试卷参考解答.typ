#import "../template.typ": exam, answer
#show: exam.with(year: 1997, subject: "二", title: "1997年全国工学、经济学硕士研究生入学考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 1997 数学二试卷参考解答

= 一、填空题

#answer("1（1）")[
$lim_(x arrow 0)(ln(cos x))/x^2=-1/2$，故 $a=e^(-1/2)$.

【分析】按一点连续的定义，a等于函数在该点的极限；取对数后用洛必达法则，
$ a=e^(lim_(x->0)frac(ln cos x,x^2))=e^(lim_(x->0)frac(-tan x,2x))=e^(-1/2). $
]

#answer("1（2）")[
写成 $y=1/2 ln(1-x)-1/2 ln(1+x^2)$，得 $y''=-1/(2(1-x)^2)-(1-x^2)/(1+x^2)^2$，所以 $y''(0)=-3/2$.
]

#answer("1（3）")[
配方得 $x(4-x)=4-(x-2)^2$，故积分为 $arcsin((x-2)/2)+C$.

【另法】令t=√x，则积分为 $2integral frac(dif t,sqrt(4-t^2))=2arcsin(frac(sqrt(x),2))+C$.
]

#answer("1（4）")[
$I=[1/2 arctan((x+2)/2)]_0^infinity=pi/8$.
]

#answer("1（5）")[
$alpha_1,alpha_3$ 线性无关，故 $alpha_2$ 是它们的线性组合.比较第一、二分量得 $alpha_2=2alpha_1+alpha_3$，从第三分量得 $t=3$.
]

= 二、选择题

#answer("2（1）")[
C.$e^(tan x)-e^x=e^x(e^(tan x-x)-1)∼tan x-x∼x^3/3$.

【分析】由 $e^x(e^(tan x-x)-1)~tan x-x~x^3/3$ 可知是三阶无穷小量. 等价替换要用于完整的乘除因子，不能直接在相减式中把tanx替为sinx.
]

#answer("2（2）")[
D.由严格递减性知 $S_2<S_1$；由 $f''>0$，曲线位于端点弦的下方，故 $S_1<S_3$.
]

#answer("2（3）")[
B.代入得 $f''(x_0)=(1-e^(-x_0))/x_0>0$，由二阶导数判别法，$f(x_0)$ 是极小值.
]

#answer("2（4）")[
A.被积函数以 $2pi$ 为周期，故积分为常数.将后半周期换元，可写成 $integral_0^pi (e^(sin t)-e^(-sin t))sin t dif t>0$.
]

#answer("2（5）")[
D.$x<0$ 时 $f(x)=x^2>0$，故 $g(f(x))=x^2+2$；$x>=0$ 时 $f(x)=-x<=0$，故 $g(f(x))=2+x$.

【分析】应按内层f(x)的符号选择g的分段：x＜0时f(x)＞0，用g(u)=u+2；x≥0时f(x)≤0，用g(u)=2−u. 不能直接按x的符号选择外层分段.
]

= 解答题

#answer("三（1）")[
分子、分母同除以 $-x>0$，得
$ lim_(x arrow -infinity)(sqrt(4+1/x-1/x^2)-1-1/x)/sqrt(1+(sin x)/x^2)=1. $

【解法2】令t=−x→+∞，则
$ lim_(t->infinity)frac(sqrt(4t^2-t-1)-t+1,sqrt(t^2-sin t))=lim_(t->infinity)frac(sqrt(4-1/t-1/t^2)-1+1/t,sqrt(1-sin t/t^2))=1. $
【评析】x→−∞时√(x²)=−x，不能写成x. 若用有理化后同除x²，也须保留该符号.
]

#answer("三（2）")[
对 $t$ 求导，得 $(dif x)/(dif t)=1/(1+t^2)$、$2(1-t y)(dif y)/(dif t)=y^2-e^t$.因此
$ (dif y)/(dif x)=((y^2-e^t)(1+t^2))/(2(1-t y)). $

【解法2】由t=tanx，原式化为 $2y-y^2 tan x+e^(tan x)=5$. 对x求导，
$ 2y'-2y y' tan x-y^2 sec^2 x+e^(tan x)sec^2 x=0. $
所以 $y'=frac((y^2-e^(tan x))(1+tan^2 x),2(1-y tan x))$，与参数方程法相同.
]

#answer("三（3）")[
利用 $(tan x+1)^2=sec^2 x+2tan x$，被积函数恰为 $(e^(2x)tan x)'$，故积分为 $e^(2x)tan x+C$.

【解法1】把(tanx+1)²拆为sec²x+2tanx，对第一项分部积分，
$ integral e^(2x)sec^2 x dif x=e^(2x)tan x-2integral e^(2x)tan x dif x. $
与剩余项相消，得e²ˣtanx+C.
【解法2】直接分部积分，
$ I=1/2 e^(2x)(tan x+1)^2-integral e^(2x)(tan x+1)sec^2 x dif x. $
再以tan²x为微分项处理，得
$ I=1/2 e^(2x)(2tan x+1)-integral e^(2x)dif x=e^(2x)tan x+C. $
]

#answer("三（4）")[
该式是全微分：$dif(x^3+x^2 y-x y^2)=0$.因此通解为 $x^3+x^2 y-x y^2=C$.

【另法】视为齐次微分方程，令y=ux，
$ x frac(dif u,dif x)=-frac(3(u^2-u-1),2u-1). $
分离变量积分得u²−u−1=Cx⁻³，即xy²−x²y−x³=C，与全微分法的常数符号不同而等价.
]

#answer("三（5）")[
解的差表明 $e^(2x)$、$e^(-x)$ 是对应齐次方程的两个线性无关解，故左端为 $y''-y'-2y$.$x e^x$ 是一个特解，代入左端得 $(1-2x)e^x$.所以方程为 $y''-y'-2y=(1-2x)e^x$.

【解法2】由非齐次方程解的结构，通解可写为y=xeˣ+C₁e²ˣ+C₂e⁻ˣ. 将其连续求导两次，消去C₁、C₂，得到y″−y′−2y=(1−2x)eˣ.
【评析】已知三个解并不要求题干另加“常系数”条件；可用解的差得到两个齐次解，再消去任意常数.
]

#answer("三（6）")[
$det A=-1≠0$，故 $B=A-A^(-1)$.计算得
$ A^(-1)=mat(1,-1,-2;0,1,1;0,0,-1), quad B=mat(0,2,1;0,0,0;0,0,0). $
]

#answer("四、")[
系数行列式为 $(lambda-1)(5lambda+4)$.

当 $lambda≠1$ 且 $lambda≠-4/5$ 时，有唯一解.

当 $lambda=-4/5$ 时，第二式乘以 $-5$ 后左端等于第三式左端，右端却分别为 $-10$、$-1$，故无解.

当 $lambda=1$ 时，消元得 $x_1=1$、$x_2-x_3=-1$，有无穷多解，通解为
$ (x_1,x_2,x_3)^T=(1,-1,0)^T+k(0,1,1)^T, quad k in bold(upright(R)). $
]

#answer("五、")[
由极坐标面积和弧长公式，
$ abs(integral_0^theta r^2 dif theta)=abs(integral_0^theta sqrt(r^2+(r')^2)dif theta). $
求导得 $r^2=sqrt(r^2+(r')^2)$，即 $r'=±r sqrt(r^2-1)$.分离变量积分并代入 $r(0)=2$，得
$ r sin(pi/6±theta)=1. $
因此所求直线为 $x±sqrt(3)y=2$.

【评析】从r²=√(r²+r′²)解出r′时须保留正负两种可能；积分常数由r(0)=2确定. 求出的极坐标方程也可化为两条直线x±√3y=2.
]

#answer("六、")[
由 $(f(x)/x)'=3a/2$ 得 $f(x)=3a x^2/2+C x$，连续性保证 $f(0)=0$.面积条件给出 $2=integral_0^1 f(x)dif x=(a+C)/2$，故
$ f(x)=3a x^2/2+(4-a)x. $
正性条件要求 $-8<=a<=4$.旋转体积
$ V(a)=pi integral_0^1 f(x)^2 dif x=pi(a^2/30+a/3+16/3). $
这是开口向上的二次函数，驻点 $a=-5$ 在允许范围内，故此时体积最小，为 $9pi/2$.
]

#answer("七、")[
由题设 $f(0)=phi(0)=0$.当 $x≠0$ 时，$phi(x)=1/x integral_0^x f(u)dif u$，故
$ phi'(x)=cases((x f(x)-integral_0^x f(u)dif u)/x^2 & quad x≠0,1 & quad x=0). $
这里 $phi'(0)=lim_(x arrow 0)(integral_0^x f(u)dif u)/x^2=1$.$x≠0$ 处导函数连续，且 $lim_(x arrow 0)phi'(x)=2-1=1=phi'(0)$，所以 $phi'$ 处处连续.

【分析】先由f(x)/x→2及连续性得f(0)=0，换元u=xt把积分化为变上限积分. 在0处按定义求导，得φ′(0)=1；再分别求两个极限，得φ′(x)→2−1=1.
【评析】题设仅有连续性，不能擅自将求导搬进积分号，也不能对含f(x)的分子使用需要f可导的洛必达法则. 局部展开f(x)=2x+o(x)不能直接拿去替换固定区间[0,1]上的f(t)，必须保留xt中的x.
]

#answer("八、")[
令 $F(x)=x-pi/2 sin x$，则 $F'(x)=1-pi/2 cos x$.唯一驻点为 $x_0=arccos(2/pi)$，在其左侧递减，右侧递增.两端点值均为0，最小值为
$ m=arccos(2/pi)-1/2 sqrt(pi^2-4)<0. $
因此 $k<m$ 或 $k>=0$ 时无根；$k=m$ 时有唯一根 $x_0$；$m<k<0$ 时，两段严格单调区间内各有一根，共两个不同根.
]

