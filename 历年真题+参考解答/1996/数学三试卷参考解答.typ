#import "../template.typ": exam, answer
#show: exam.with(year: 1996, subject: "三", title: "1996年全国工学、经济学硕士研究生入学考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#import "@preview/cetz:0.5.2" as cetz
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 1996 数学三试卷参考解答

= 一、填空题

#answer("1（1）")[
链式法则给出 $y'=2/3 (x+e^(-x/2))^(-1/3)(1-e^(-x/2)/2)$，代入0得 $1/3$.
]

#answer("1（2）")[
展开为 $1+2x sqrt(1-x^2)$，第二项为奇函数，积分为0，故答案为2.

【分析】由复合函数求导，
$ y'=2/3 (x+e^(-x/2))^(-1/3)(1-1/2 e^(-x/2)), $
代入x=0得1/3.
]

#answer("1（3）")[
特征根为 $-1±2i$，故 $y=e^(-x)(C_1 cos 2x+C_2 sin 2x)$.
]

#answer("1（4）")[
令 $t=1/x$，利用 $sin ln(1+k t)=k t+o(t)$，所求极限为 $3-1=2$.

【解法2】用和差化积，
$ x[sin ln(1+3/x)-sin ln(1+1/x)] $
$ =2x sin(1/2 ln frac(1+3/x,1+1/x))cos(1/2 ln((1+3/x)(1+1/x)))->2. $
【解法3】令t=1/x，洛必达法则给出
$ lim_(t->0)frac(sin ln(1+3t)-sin ln(1+t),t)=lim_(t->0)(frac(3cos ln(1+3t),1+3t)-frac(cos ln(1+t),1+t))=2. $
]

#answer("1（5）")[
曲线与 $y=2$ 在 $x=1$ 相切，故 $S=integral_1^2 (x+1/x-2)dif x=ln 2-1/2$.
]

= 二、选择题

#answer("2（1）")[
A.比较 $e^x=1+x+x^2/2+o(x^2)$ 的系数，即得 $a=1/2,b=1$.

【分析】由
$ e^x-(a x^2+b x+1)=(1-b)x+(1/2-a)x^2+o(x^2), $
要成为x²的高阶无穷小，必须b=1、a=1/2.
]

#answer("2（2）")[
C.$f(0)=0$，且 $abs((f(x)-f(0))/x)<=abs(x) arrow 0$，所以 $f'(0)=0$.
]

#answer("2（3）")[
D.当 $x$ 充分大时 $f'(x)>1$，由中值定理，$f(x)>f(M)+x-M arrow +infinity$.A、C可用 $f(x)=x$ 否定，B可用 $f(x)=x^2$ 否定.

【分析】A、C取f(x)=x即可否定，B也可取f(x)=e⁻ˣ否定. 对D，取X₀使x＞X₀时f′(x)＞1，中值定理给出f(x)＞f(X₀)+x−X₀→+∞. 不能从函数值趋于无穷推出其导数也趋于无穷.
]

#answer("2（4）")[
C.左端为偶函数，在0处为 $-1$，在1处大于0，且在 $(0,1)$ 上严格增加.$x>=1$ 时左端为正，故恰有一正一负两个根.
]

#answer("2（5）")[
B.圆环截面积为 $pi[(m-g(x))^2-(m-f(x))^2]=pi[2m-f(x)-g(x)][f(x)-g(x)]$，积分即得.
]

= 解答题

#answer("三（1）")[
令 $t=e^x$，积分成为 $integral_1^2 sqrt(t^2-1)/t^2 dif t$.分部积分得
$ [-sqrt(t^2-1)/t+ln(t+sqrt(t^2-1))]_1^2=ln(2+sqrt(3))-sqrt(3)/2. $

【解法2】令e⁻ˣ=sint，则积分变为
$ integral_(pi/6)^(pi/2)frac(cos^2 t,sin t)dif t=integral_(pi/6)^(pi/2)(csc t-sin t)dif t=ln(2+sqrt(3))-sqrt(3)/2. $
【解法3】令 $t=sqrt(1-e^(-2x))$，得
$ integral_0^(sqrt(3)/2)frac(t^2,1-t^2)dif t=-sqrt(3)/2+1/2 ln frac(2+sqrt(3),2-sqrt(3)). $
【解法4】先令e⁻ˣ=t，再令t=sinu，亦化为解法2.
【解法5】令e⁻ˣ=cost，得
$ integral_0^(pi/3)(sec t-cos t)dif t=[ln abs(tan t+sec t)-sin t]_0^(pi/3)=ln(2+sqrt(3))-sqrt(3)/2. $
]

#answer("三（2）")[
有理化后积分为 $integral (1-sin x)/(cos^2 x) dif x=tan x-1/(cos x)+C$，亦可写为 $-(cos x)/(1+sin x)+C$.

【解法2】用半角公式，
$ integral frac(dif x,1+sin x)=integral frac(sec^2(x/2), (1+tan(x/2))^2)dif x=-frac(2,1+tan(x/2))+C. $
【解法3】令t=tan(x/2)，则sinx=2t/(1+t²)、dx=2dt/(1+t²)，积分化为 $2integral frac(dif t,(1+t)^2)=-frac(2,1+t)+C$.
]

#answer("三（3）")[
由 $x'_t=f(t^2)$、$y'_t=4t f(t^2)f'(t^2)$，得 $(dif y)/(dif x)=4t f'(t^2)$，因此
$ (dif^2 y)/(dif x^2)=(4f'(t^2)+8t^2 f''(t^2))/f(t^2). $

【分析】先分别对参数t求导，求出dy/dx后，再对t求导并除以dx/dt. 这里同时用到变上限积分、复合函数和参数方程求导法则；不能把对t的二阶导数直接当成对x的二阶导数.
]

#answer("三（4）")[
由 $f(x)=2/(1+x)-1$，$f^(k)(x)=2(-1)^k k!/(1+x)^(k+1)$，故
$ f(x)=1+2sum_(k=1)^n (-1)^k x^k+2(-1)^(n+1)x^(n+1)/(1+theta x)^(n+2), $
其中 $0<theta<1$，$x>-1$.
]

#answer("三（5）")[
齐次通解为 $C_1+C_2 e^(-x)$，设多项式特解为 $a x^3+b x^2+c x$，代入得 $a=1/3,b=-1,c=2$.故 $y=x^3/3-x^2+2x+C_1+C_2 e^(-x)$.

【解法2】令p=y′，方程化为p′+p=x²，
$ p=e^(-x)(integral x^2 e^x dif x+C_0)=x^2-2x+2+C_0 e^(-x). $
再积分，即得y=x³/3−x²+2x+C₁+C₂e⁻ˣ.
【解法3】先积分原式(y′+y)′=x²，得y′+y=x³/3+C₀，再用一阶线性方程公式，亦得同一通解.
]

#answer("三（6）")[
取底面椭圆为 $x^2/a^2+y^2/b^2=1$，楔形体在 $x>=0$ 一侧，高度为 $x tan alpha$.垂直于 $y$ 轴的截面为直角三角形，其面积为 $a^2/2 (1-y^2/b^2)tan alpha$.故
$ V=integral_(-b)^b a^2/2 (1-y^2/b^2)tan alpha dif y=(2a^2 b)/3 tan alpha. $

【解法2】取垂直于x轴的矩形截面，两边长分别为 $2b sqrt(1-x^2/a^2)$ 和xtanα，故
$ V=integral_0^a 2b x sqrt(1-x^2/a^2)tan alpha dif x=2a^2 b/3 tan alpha. $
【解法3】斜截面为z=xtanα，先对z积分，
$ V=integral_0^a dif x integral_(-b sqrt(1-x^2/a^2))^(b sqrt(1-x^2/a^2))dif y integral_0^(x tan alpha)dif z=2a^2 b/3 tan alpha. $
【分析】先明确底面两轴与坐标轴的对应，再写截面或积分区域.
]

#answer("四、")[
拆分为 $integral (arctan x)/x^2 dif x-integral (arctan x)/(1+x^2)dif x$，对第一项分部积分，得
$ I=-(arctan x)/x+integral 1/(x(1+x^2))dif x-1/2 (arctan x)^2 $
$ =-(arctan x)/x-1/2 (arctan x)^2+1/2 ln(x^2/(1+x^2))+C. $

【解法2】令x=tant，则原积分为
$ integral t(csc^2 t-1)dif t=-t cot t+integral cot t dif t-t^2/2 $
$ =-t cot t+ln abs(sin t)-t^2/2+C $
$ =-frac(arctan x,x)+ln abs(frac(x,sqrt(1+x^2)))-frac((arctan x)^2,2)+C. $
【分析】被积函数并非纯三角有理式，直接使用半角万能代换会使计算复杂.
]

#answer("五、")[
（1）各段反解得
$ g(x)=cases(-sqrt((1-x)/2) & quad x<-1,root(3,x) & quad -1<=x<=8,(x+16)/12 & quad x>8). $
（2）$g$ 处处连续，无间断点.在 $x=-1$ 处左右导数分别为 $1/4,1/3$，不可导；在0处差商无界，不可导；在8处左右导数同为 $1/12$，可导.因此不可导点只有 $-1,0$.

【分析】f在全实轴连续且严格递增，反函数同样连续严格递增，其定义域为f的值域. f的不可导点和导数为0的点所对应的函数值，是反函数需要检查的点：f(−1)=−1、f(0)=0、f(2)=8. 比较左右导数后，前两点不可导而8处可导.
【评析】反解后各段区间也须换成原函数的值域；不能漏掉f′(0)=0引起的反函数不可导点.
]

#answer("六、")[
隐式求导得 $(3y^2-2y+x)y'+y-x=0$.令 $y'=0$，得 $y=x$，代入得 $(x-1)(2x^2+x+1)=0$，唯一驻点为 $x=1$、$y=1$.再求导，在该点得到 $2y''-1=0$，所以 $y''=1/2>0$，是极小值点.

【分析】不必解出隐函数. 对隐式一阶导数方程再求导，
$ (3y^2-2y+x)y''+2(3y-1)(y')^2+2y'-1=0. $
在驻点代入y′=0，可直接得到y″=1/2. 先将y′写成复杂分式再求导会增加计算.
]

#answer("七、")[
不妨设两端导数均为正，则在 $a$ 右侧附近函数为正，在 $b$ 左侧附近为负.由连续性，存在内点 $xi$ 使 $f(xi)=0$；两端导数均为负时同理.对 $[a,xi]$、$[xi,b]$ 分别用罗尔定理，得到 $f'$ 的两个内点零点，再对两点间的 $f'$ 用罗尔定理，得到 $f''(eta)=0$.

【证法1】反证. 若区间内部没有零点，连续性使f保持同号. 不妨设f＞0，则由两端的单侧差商得f′(a)≥0、f′(b)≤0，与f′(a)f′(b)＞0矛盾. 所以存在内部零点ξ. 在[a,ξ]和[ξ,b]各用一次罗尔定理，再对所得两个导数零点之间用一次罗尔定理，便得f″(η)=0.
]

#answer("八、")[
（1）乘积分因子 $e^(a x)$ 后得 $(y e^(a x))'=e^(a x)f(x)$.利用初值，
$ y(x)=e^(-a x)integral_0^x e^(a t)f(t)dif t. $
（2）当 $x>=0$ 时，$abs(y(x))<=k e^(-a x)integral_0^x e^(a t)dif t=(k/a)(1-e^(-a x))$.

【证法1】若F是f(x)eᵃˣ的一个原函数，一阶线性方程通解为y=e⁻ᵃˣ(F(x)+C). 初值使C=−F(0)，故
$ y=e^(-a x)(F(x)-F(0))=e^(-a x)integral_0^x f(t)e^(a t)dif t. $
【评析】用原函数F表示积分常数，才能清楚地代入初值. 不能把不定积分符号当作一个已有确定取值的函数.
]

