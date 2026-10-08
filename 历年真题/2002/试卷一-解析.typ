#import "../template.typ": exam
#show: exam.with(year: 2002, subject: "一", title: "2002年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#ezexam.answer-state.update(true)


= 一、填空题（本题共5小题，每小题3分，满分15分）
#ezexam.counter-question.step()

（1）$integral_e^(+infinity) (dif x)/(x ln^2 x)=$#h(3em).
#ezexam.solution(show-number: false)[
1.
]

（2）已知函数 $y=y(x)$ 由方程 $e^y+6x y+x^2-1=0$ 确定，则 $y''(0)=$#h(3em).
#ezexam.solution(show-number: false)[
$-2$.
]

（3）微分方程 $y y''+y'^2=0$ 满足初始条件 $y|_(x=0)=1,y'|_(x=0)=1/2$ 的特解是#h(3em).
#ezexam.solution(show-number: false)[
$y=sqrt(x+1)$ 或 $y^2=x+1$.
]

（4）已知实二次型 $f(x_1,x_2,x_3)=a(x_1^2+x_2^2+x_3^2)+4x_1 x_2+4x_1 x_3+4x_2 x_3$ 经正交变换 $x=P y$ 可化成标准形 $f=6y_1^2$，则 $a=$#h(3em).
#ezexam.solution(show-number: false)[
2.
]

（5）设随机变量 $X$ 服从正态分布 $N(mu,sigma^2) (sigma>0)$，且二次方程 $y^2+4y+X=0$ 无实根的概率为 $1/2$，则 $mu=$#h(3em).
#ezexam.solution(show-number: false)[
4.
]

= 二、选择题（本题共5小题，每小题3分，满分15分）
#ezexam.counter-question.step()

（1）考虑二元函数 $f(x,y)$ 的下面4条性质：

① $f(x,y)$ 在点 $(x_0,y_0)$ 处连续，

② $f(x,y)$ 在点 $(x_0,y_0)$ 处的两个偏导数连续，

③ $f(x,y)$ 在点 $(x_0,y_0)$ 处可微，

④ $f(x,y)$ 在点 $(x_0,y_0)$ 处的两个偏导数存在.

若用“$P => Q$”表示可由性质 $P$ 推出性质 $Q$，则有（　）.
#choices[②$=>$③$=>$①.][③$=>$②$=>$①.][③$=>$④$=>$①.][③$=>$①$=>$④.]
#ezexam.solution(show-number: false)[
A.
]

（2）设 $u_n != 0 (n=1,2,3,dots)$，且 $lim_(n->infinity) n/u_n=1$，则级数 $sum_(n=1)^infinity (-1)^(n+1)(1/u_n+1/u_(n+1))$（　）.
#choices[发散.][绝对收敛.][条件收敛.][收敛性根据所给条件不能判定.]
#ezexam.solution(show-number: false)[
C.
]

（3）设函数 $y=f(x)$ 在 $(0,+infinity)$ 内有界且可导，则（　）.
#choices[当 $lim_(x->+infinity) f(x)=0$ 时，必有 $lim_(x->+infinity) f'(x)=0$.][当 $lim_(x->+infinity) f'(x)$ 存在时，必有 $lim_(x->+infinity) f'(x)=0$.][当 $lim_(x->0^+) f(x)=0$ 时，必有 $lim_(x->0^+) f'(x)=0$.][当 $lim_(x->0^+) f'(x)$ 存在时，必有 $lim_(x->0^+) f'(x)=0$.]
#ezexam.solution(show-number: false)[
B.
]

（4）设有三张不同平面的方程 $a_(i 1)x+a_(i 2)y+a_(i 3)z=b_i,i=1,2,3$，它们所组成的线性方程组的系数矩阵与增广矩阵的秩都为2，则这三张平面可能的位置关系为（　）.
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
#choices[#box(planes("A"))][#box(planes("B"))][#box(planes("C"))][#box(planes("D"))]
#ezexam.solution(show-number: false)[
B.
]

（5）设 $X_1$ 和 $X_2$ 是任意两个相互独立的连续型随机变量，它们的概率密度分别为 $f_1(x)$ 和 $f_2(x)$，分布函数分别为 $F_1(x)$ 和 $F_2(x)$，则（　）.
#choices[$f_1(x)+f_2(x)$ 必为某一随机变量的概率密度.][$f_1(x)f_2(x)$ 必为某一随机变量的概率密度.][$F_1(x)+F_2(x)$ 必为某一随机变量的分布函数.][$F_1(x)F_2(x)$ 必为某一随机变量的分布函数.]
#ezexam.solution(show-number: false)[
D.
]

#ezexam.question(label: n => [三、])[
（本题满分6分）设函数 $f(x)$ 在 $x=0$ 的某邻域内具有一阶连续导数，且 $f(0) != 0,f'(0) != 0$，若 $a f(h)+b f(2h)-f(0)$ 在 $h->0$ 时是比 $h$ 高阶的无穷小，试确定 $a,b$ 的值.
#ezexam.solution(show-number: false)[
*解法1* 由题设条件知
$ lim_(h->0) [a f(h)+b f(2h)-f(0)]=(a+b-1)f(0)=0. $
由于 $f(0) != 0$，故必有 $a+b-1=0$.

又由洛必达法则，有
$ 0=lim_(h->0) (a f(h)+b f(2h)-f(0))/h=lim_(h->0) (a f'(h)+2b f'(2h))/1=(a+2b)f'(0), $
因 $f'(0) != 0$，故 $a+2b=0$.

于是得 $a=2,b=-1$.

*解法2* 由条件得
$ f(h)=f(0)+f'(0)h+o(h), \
f(2h)=f(0)+2f'(0)h+o(h), $
所以
$ a f(h)+b f(2h)-f(0)=(a+b-1)f(0)+(a+2b)f'(0)h+o(h). $
因此当 $a=2,b=-1$ 时，有 $a f(h)+b f(2h)-f(0)=o(h)$.
]


]

#ezexam.question(label: n => [四、])[
（本题满分7分）已知两曲线 $y=f(x)$ 与 $y=integral_0^(arctan x) e^(-t^2) dif t$ 在点 $(0,0)$ 处的切线相同，写出此切线方程，并求极限 $lim_(n->infinity) n f(2/n)$.
#ezexam.solution(show-number: false)[
*解* 由已知条件得
$ f(0)=0, quad f'(0)=lr((e^(-(arctan x)^2))/(1+x^2)|)_(x=0)=1, $
故所求切线方程为 $y=x$.
$ lim_(n->infinity) n f(2/n)=lim_(n->infinity) 2dot (f(2/n)-f(0))/(2/n)=2f'(0)=2. $
]


]

#ezexam.question(label: n => [五、])[
（本题满分7分）计算二重积分 $integral.double_D e^(max{x^2,y^2}) dif x dif y$，其中 $D={(x,y)|0<=x<=1,0<=y<=1}$.
#ezexam.solution(show-number: false)[
*解* 设 $D_1={(x,y)|0<=x<=1,0<=y<=x}$，$D_2={(x,y)|0<=x<=1,x<=y<=1}$，则
$ integral.double_D e^(max{x^2,y^2}) dif x dif y &= integral.double_(D_1) e^(max{x^2,y^2}) dif x dif y+integral.double_(D_2) e^(max{x^2,y^2}) dif x dif y \
&=integral.double_(D_1) e^(x^2) dif x dif y+integral.double_(D_2) e^(y^2) dif x dif y \
&=integral_0^1 dif x integral_0^x e^(x^2) dif y+integral_0^1 dif y integral_0^y e^(y^2) dif x \
&=integral_0^1 x e^(x^2) dif x+integral_0^1 y e^(y^2) dif y \
&=e-1. $
]


]

#ezexam.question(label: n => [六、])[
（本题满分8分）设函数 $f(x)$ 在 $(-infinity,+infinity)$ 内具有一阶连续导数，$L$ 是上半平面（$y>0$）内的有向分段光滑曲线，其起点为 $(a,b)$，终点为 $(c,d)$.记
$ I=integral_L 1/y [1+y^2 f(x y)] dif x+x/y^2 [y^2 f(x y)-1] dif y, $
（1）证明曲线积分 $I$ 与路径 $L$ 无关；

（2）当 $a b=c d$ 时，求 $I$ 的值.
#ezexam.solution(show-number: false)[
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
]


]

#ezexam.question(label: n => [七、])[
（本题满分7分）

（1）验证函数 $y(x)=1+x^3/(3!)+x^6/(6!)+x^9/(9!)+dots+x^(3n)/((3n)!)+dots (-infinity<x<+infinity)$ 满足微分方程 $y''+y'+y=e^x$；

（2）利用（1）的结果求幂级数 $sum_(n=0)^infinity x^(3n)/((3n)!)$ 的和函数.
#ezexam.solution(show-number: false)[
*解* （1）因为
$ y(x)=1+x^3/(3!)+x^6/(6!)+x^9/(9!)+dots+x^(3n)/((3n)!)+dots, \
y'(x)=x^2/(2!)+x^5/(5!)+x^8/(8!)+dots+x^(3n-1)/((3n-1)!)+dots, \
y''(x)=x+x^4/(4!)+x^7/(7!)+dots+x^(3n-2)/((3n-2)!)+dots, $
所以 $y''+y'+y=e^x$.

（2）与 $y''+y'+y=e^x$ 相应的齐次微分方程为 $y''+y'+y=0$，其特征方程为 $lambda^2+lambda+1=0$，特征根为 $lambda_(1,2)=-1/2 plus.minus sqrt(3)/2 i$.因此齐次微分方程的通解为
$ Y=e^(-x/2)[C_1 cos(sqrt(3)/2 x)+C_2 sin(sqrt(3)/2 x)]. $
设非齐次微分方程的特解为 $y^*=A e^x$，将 $y^*$ 代入方程 $y''+y'+y=e^x$ 得 $A=1/3$，于是 $y^*=1/3 e^x$，方程通解为
$ y=Y+y^*=e^(-x/2)[C_1 cos(sqrt(3)/2 x)+C_2 sin(sqrt(3)/2 x)]+1/3 e^x. $
当 $x=0$ 时，有
$ cases(y(0)=1=C_1+1/3,y'(0)=0=-1/2 C_1+sqrt(3)/2 C_2+1/3); $
由此，得 $C_1=2/3,C_2=0$.

于是幂级数 $sum_(n=0)^infinity x^(3n)/((3n)!)$ 的和函数为
$ y(x)=2/3 e^(-x/2)cos(sqrt(3)/2 x)+1/3 e^x quad (-infinity<x<+infinity). $
]


]

#ezexam.question(label: n => [八、])[
（本题满分7分）设有一小山，取它的底面所在的平面为 $x O y$ 坐标面，其底部所占的区域为 $D={(x,y)|x^2+y^2-x y<=75}$，小山的高度函数为 $h(x,y)=75-x^2-y^2+x y$.

（1）设 $M(x_0,y_0)$ 为区域 $D$ 上一点，问 $h(x,y)$ 在该点沿平面上什么方向的方向导数最大？若记此方向导数的最大值为 $g(x_0,y_0)$，试写出 $g(x_0,y_0)$ 的表达式.

（2）现欲利用此小山开展攀岩活动，为此需要在山脚寻找一上山坡度最大的点作为攀登的起点.也就是说，要在 $D$ 的边界线 $x^2+y^2-x y=75$ 上找出使（1）中的 $g(x,y)$ 达到最大值的点.试确定攀登起点的位置.
#ezexam.solution(show-number: false)[
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
]


]

#ezexam.question(label: n => [九、])[
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

#ezexam.question(label: n => [十、])[
（本题满分8分）设 $A,B$ 为同阶方阵，

（1）如果 $A,B$ 相似，试证 $A,B$ 的特征多项式相等.

（2）举一个二阶方阵的例子说明（1）的逆命题不成立.

（3）当 $A,B$ 均为实对称矩阵时，试证（1）的逆命题成立.
#ezexam.solution(show-number: false)[
*证* （1）若 $A,B$ 相似，那么存在可逆矩阵 $P$，使 $P^(-1)A P=B$.故
$ |lambda E-B| &= |lambda E-P^(-1)A P|=|P^(-1)lambda E P-P^(-1)A P| \
&=|P^(-1)(lambda E-A)P|=|P^(-1)||lambda E-A||P| \
&=|P^(-1)||P||lambda E-A|=|lambda E-A|. $
（2）令 $A=mat(0,1;0,0)$，$B=mat(0,0;0,0)$，那么 $|lambda E-A|=lambda^2=|lambda E-B|$，但 $A,B$ 不相似.否则，存在可逆矩阵 $P$，使 $P^(-1)A P=B=O$，从而 $A=P O P^(-1)=O$，矛盾.

（3）由 $A,B$ 均为实对称矩阵知，$A,B$ 均相似于对角阵.若 $A,B$ 的特征多项式相等，记特征多项式的根为 $lambda_1,dots,lambda_n$，则有
$ A #text[相似于] mat(lambda_1,,;,dots.down,;,,lambda_n), quad B #text[也相似于] mat(lambda_1,,;,dots.down,;,,lambda_n), $
即存在可逆矩阵 $P,Q$ 使
$ P^(-1)A P=mat(lambda_1,,;,dots.down,;,,lambda_n)=Q^(-1)B Q. $
于是 $(P Q^(-1))^(-1)A(P Q^(-1))=B$.

由 $P Q^(-1)$ 为可逆矩阵知，$A$ 与 $B$ 相似.
]


]

#ezexam.question(label: n => [十一、])[
（本题满分7分）设随机变量 $X$ 的概率密度为
$ f(x)=cases(1/2 cos(x/2) & 0<=x<=pi,0 & #text[其他]), $
对 $X$ 独立地重复观察4次，用 $Y$ 表示观察值大于 $pi/3$ 的次数，求 $Y^2$ 的数学期望.
#ezexam.solution(show-number: false)[
*解法1* 由于
$ P{X>pi/3}=integral_(pi/3)^pi 1/2 cos(x/2) dif x=1/2, quad Y~B(4,1/2), $
因此 $E Y=4times 1/2=2$，$D Y=4times 1/2 times (1-1/2)=1$，所以 $E Y^2=D Y+(E Y)^2=1+2^2=5$.

*解法2* 由于
$ P{X>pi/3}=integral_(pi/3)^pi 1/2 cos(x/2) dif x=1/2, quad Y~B(4,1/2), $
因此，$Y$ 的概率分布为
#table(columns:6,[$Y$],[0],[1],[2],[3],[4],[$P$],[$1/16$],[$4/16$],[$6/16$],[$4/16$],[$1/16$])
所以，$E Y^2=1/16 (0times 1+1times 4+2^2 times 6+3^2 times 4+4^2 times 1)=5$.
]


]

#ezexam.question(label: n => [十二、])[
（本题满分7分）设总体 $X$ 的概率分布为
#table(columns:5,[$X$],[0],[1],[2],[3],[$P$],[$theta^2$],[$2theta (1-theta)$],[$theta^2$],[$1-2theta$])
其中 $theta (0<theta<1/2)$ 是未知参数，利用总体 $X$ 的如下样本值

3，1，3，0，3，1，2，3，

求 $theta$ 的矩估计值和最大似然估计值.
#ezexam.solution(show-number: false)[
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
]

]
