#import "../template.typ": exam
#show: exam.with(year: 2004, subject: "二", title: "2004年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#ezexam.answer-state.update(false)


= 一、填空题（本题共6小题，每小题4分，满分24分）

#ezexam.question[
设 $f(x)=lim_(n->infinity) ((n-1)x)/(n x^2+1)$，则 $f(x)$ 的间断点为 $x=$#h(3em).
]

#ezexam.question[
设函数 $y(x)$ 由参数方程 $cases(x=t^3+3t+1,y=t^3-3t+1)$ 确定，则曲线 $y=y(x)$ 向上凸的 $x$ 的取值范围为#h(3em).
]

#ezexam.question[
$integral_1^(+infinity) (dif x)/(x sqrt(x^2-1))=$#h(3em).
]

#ezexam.question[
设函数 $z=z(x,y)$ 由方程 $z=e^(2x-3z)+2y$ 确定，则 $3(partial z)/(partial x)+(partial z)/(partial y)=$#h(3em).
]

#ezexam.question[
微分方程 $(y+x^3)dif x-2x dif y=0$ 满足 $y|_(x=1)=6/5$ 的特解为#h(3em).
]

#ezexam.question[
设矩阵 $A=mat(2,1,0;1,2,0;0,0,1)$，矩阵 $B$ 满足 $A B A^*=2B A^*+E$，其中 $A^*$ 为 $A$ 的伴随矩阵，$E$ 是单位矩阵，则 $|B|=$#h(3em).
]

= 二、选择题（本题共8小题，每小题4分，满分32分）

#ezexam.question[
把 $x->0^+$ 时的无穷小量 $alpha=integral_0^x cos t^2 dif t,beta=integral_0^(x^2) tan sqrt(t) dif t,gamma=integral_0^sqrt(x) sin t^3 dif t$ 排列起来，使排在后面的是前一个的高阶无穷小量，则正确的排列次序是
#choices([$alpha,beta,gamma$.],[$alpha,gamma,beta$.],[$beta,alpha,gamma$.],[$beta,gamma,alpha$.])
]

#ezexam.question[
设 $f(x)=|x(1-x)|$，则
#choices([$x=0$ 是 $f(x)$ 的极值点，但 $(0,0)$ 不是曲线 $y=f(x)$ 的拐点.],[$x=0$ 不是 $f(x)$ 的极值点，但 $(0,0)$ 是曲线 $y=f(x)$ 的拐点.],[$x=0$ 是 $f(x)$ 的极值点，且 $(0,0)$ 是曲线 $y=f(x)$ 的拐点.],[$x=0$ 不是 $f(x)$ 的极值点，$(0,0)$ 也不是曲线 $y=f(x)$ 的拐点.])
]

#ezexam.question[
$lim_(n->infinity) ln root(n,(1+1/n)^2(1+2/n)^2 dots (1+n/n)^2)$ 等于
#choices([$integral_1^2 ln^2 x dif x$.],[$2integral_1^2 ln x dif x$.],[$2integral_1^2 ln(1+x) dif x$.],[$integral_1^2 ln^2(1+x) dif x$.])
]

#ezexam.question[
设函数 $f(x)$ 连续，且 $f'(0)>0$，则存在 $delta>0$，使得
#choices([$f(x)$ 在 $(0,delta)$ 内单调增加.],[$f(x)$ 在 $(-delta,0)$ 内单调减少.],[对任意的 $x in (0,delta)$，有 $f(x)>f(0)$.],[对任意的 $x in (-delta,0)$，有 $f(x)>f(0)$.])
]

#ezexam.question[
微分方程 $y''+y=x^2+1+sin x$ 的特解形式可设为
#choices([$y^*=a x^2+b x+c+x(A sin x+B cos x)$.],[$y^*=x(a x^2+b x+c+A sin x+B cos x)$.],[$y^*=a x^2+b x+c+A sin x$.],[$y^*=a x^2+b x+c+A cos x$.])
]

#ezexam.question[
设函数 $f(u)$ 连续，区域 $D={(x,y)|x^2+y^2<=2y}$，则 $integral.double_D f(x y) dif x dif y$ 等于
#choices([$integral_(-1)^1 dif x integral_(-sqrt(1-x^2))^sqrt(1-x^2) f(x y) dif y$.],[$2integral_0^2 dif y integral_0^sqrt(2y-y^2) f(x y) dif x$.],[$integral_0^pi dif theta integral_0^(2sin theta) f(r^2 sin theta cos theta) dif r$.],[$integral_0^pi dif theta integral_0^(2sin theta) f(r^2 sin theta cos theta)r dif r$.])
]

#ezexam.question[
设 $A$ 是三阶方阵，将 $A$ 的第1列与第2列交换得 $B$，再把 $B$ 的第2列加到第3列得 $C$，则满足 $A Q=C$ 的可逆矩阵 $Q$ 为
#choices([$mat(0,1,0;1,0,0;1,0,1)$.],[$mat(0,1,0;1,0,1;0,0,1)$.],[$mat(0,1,0;1,0,0;0,1,1)$.],[$mat(0,1,1;1,0,0;0,0,1)$.])
]

#ezexam.question[
设 $A,B$ 为满足 $A B=O$ 的任意两个非零矩阵，则必有
#choices([$A$ 的列向量组线性相关，$B$ 的行向量组线性相关.],[$A$ 的列向量组线性相关，$B$ 的列向量组线性相关.],[$A$ 的行向量组线性相关，$B$ 的行向量组线性相关.],[$A$ 的行向量组线性相关，$B$ 的列向量组线性相关.])
]

= 三、解答题（本题共9小题，满分94分. 解答应写出文字说明、证明过程或演算步骤.）

#ezexam.question[
（本题满分10分）求极限 $lim_(x->0) 1/x^3 [((2+cos x)/3)^x-1]$.
]

#ezexam.question[
（本题满分10分）设函数 $f(x)$ 在 $(-infinity,+infinity)$ 内有定义，在区间 $[0,2]$ 上 $f(x)=x(x^2-4)$，若对任意的 $x$ 都满足 $f(x)=k f(x+2)$，其中 $k$ 为常数.

（Ⅰ）写出 $f(x)$ 在 $[-2,0)$ 上的表达式；

（Ⅱ）问 $k$ 为何值时，$f(x)$ 在 $x=0$ 处可导.
]

#ezexam.question[
（本题满分11分）设 $f(x)=integral_x^(x+pi/2)|sin t|dif t$，

（Ⅰ）证明 $f(x)$ 是以 $pi$ 为周期的周期函数；

（Ⅱ）求 $f(x)$ 的值域.
]

#ezexam.question[
（本题满分12分）曲线 $y=(e^x+e^(-x))/2$ 与直线 $x=0,x=t (t>0)$ 及 $y=0$ 围成一曲边梯形.该曲边梯形绕 $x$ 轴旋转一周得一旋转体，其体积为 $V(t)$，侧面积为 $S(t)$，在 $x=t$ 处的底面积为 $F(t)$.

（Ⅰ）求 $(S(t))/(V(t))$ 的值；

（Ⅱ）计算极限 $lim_(t->+infinity)(S(t))/(F(t))$.
]

#ezexam.question[
（本题满分12分）设 $e<a<b<e^2$，证明 $ln^2 b-ln^2 a>4/e^2 (b-a)$.
]

#ezexam.question[
（本题满分11分）某种飞机在机场降落时，为了减少滑行距离，在触地的瞬间，飞机尾部张开减速伞，以增大阻力，使飞机迅速减速并停下.

现有一质量为9000 kg的飞机，着陆时的水平速度为700 km/h.经测试，减速伞打开后，飞机所受的总阻力与飞机的速度成正比（比例系数为 $k=6.0 times 10^6$）.问从着陆点算起，飞机滑行的最长距离是多少？

注　kg表示千克，km/h表示千米/小时.
]

#ezexam.question[
（本题满分10分）设 $z=f(x^2-y^2,e^(x y))$，其中 $f$ 具有连续二阶偏导数，求 $(partial z)/(partial x),(partial z)/(partial y),(partial^2 z)/(partial x partial y)$.
]

#ezexam.question[
（本题满分9分）设有齐次线性方程组
$ cases((1+a)x_1+x_2+x_3+x_4=0,2x_1+(2+a)x_2+2x_3+2x_4=0,3x_1+3x_2+(3+a)x_3+3x_4=0,4x_1+4x_2+4x_3+(4+a)x_4=0), $
试问 $a$ 取何值时，该方程组有非零解，并求其通解.
]

#ezexam.question[
（本题满分9分）设矩阵 $A=mat(1,2,-3;-1,4,-3;1,a,5)$ 的特征方程有一个二重根，求 $a$ 的值，并讨论 $A$ 是否可相似对角化.
]

