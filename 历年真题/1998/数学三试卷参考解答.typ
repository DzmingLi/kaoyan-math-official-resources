#import "../template.typ": exam
#show: exam.with(year: 1998, subject: "三", title: "1998年全国工学、经济学硕士研究生入学考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(true)


= 一、填空题（本题共5小题，每小题3分，满分15分）
#ezexam.counter-question.step()

（1）设曲线 $f(x)=x^n$ 在点 $(1,1)$ 处的切线与 $x$ 轴的交点为 $(xi_n,0)$，则 $lim_(n -> infinity) f(xi_n)=$ #fillin(len: 3em)[].
#ezexam.solution(show-number: false)[
$frac(1,e)$.
]

（2）$integral frac(ln x-1,x^2) dif x=$ #fillin(len: 3em)[].
#ezexam.solution(show-number: false)[
$-frac(ln x,x)+C$.
]

（3）差分方程 $2y_(t+1)+10y_t-5t=0$ 的通解为 #fillin(len: 3em)[].
#ezexam.solution(show-number: false)[
$y_t=C(-5)^t+frac(5,12)(t-frac(1,6))$.
]

（4）设矩阵 $A,B$ 满足 $A^* B A=2B A-8E$，其中 $A=mat(1,0,0;0,-2,0;0,0,1)$，$E$ 为单位矩阵，$A^*$ 为 $A$ 的伴随矩阵，则 $B=$ #fillin(len: 3em)[].
#ezexam.solution(show-number: false)[
$mat(2,0,0;0,-4,0;0,0,2)$.
]

（5）设 $X_1,X_2,X_3,X_4$ 是来自正态总体 $N(0,2^2)$ 的简单随机样本，$X=a(X_1-2X_2)^2+b(3X_3-4X_4)^2$.则当 $a=$ #fillin(len: 3em)[]，$b=$ #fillin(len: 3em)[] 时，统计量 $X$ 服从 $chi^2$ 分布，其自由度为 #fillin(len: 3em)[].
#ezexam.solution(show-number: false)[
$frac(1,20)$；$frac(1,100)$；2.
]

= 二、选择题（本题共5小题，每小题3分，满分15分）
#ezexam.counter-question.step()

（1）设周期函数 $f(x)$ 在 $(-infinity,+infinity)$ 内可导，周期为4.又 $lim_(x -> 0) frac(f(1)-f(1-x),2x)=-1$，则曲线 $y=f(x)$ 在点 $(5,f(5))$ 处的切线的斜率为（　）.
#choices[$frac(1,2)$.][0.][$-1$.][$-2$.]
#ezexam.solution(show-number: false)[
D.
]

（2）设函数 $f(x)=lim_(n -> infinity) frac(1+x,1+x^(2n))$，讨论函数 $f(x)$ 的间断点，其结论为（　）.
#choices[不存在间断点.][存在间断点 $x=1$.][存在间断点 $x=0$.][存在间断点 $x=-1$.]
#ezexam.solution(show-number: false)[
B.
]

（3）齐次线性方程组
$ cases(lambda x_1+x_2+lambda^2 x_3=0,x_1+lambda x_2+x_3=0,x_1+x_2+lambda x_3=0) $
的系数矩阵记为 $A$.若存在三阶矩阵 $B!=0$ 使得 $A B=0$，则（　）.
#choices[$lambda=-2$ 且 $|B|=0$.][$lambda=-2$ 且 $|B|!=0$.][$lambda=1$ 且 $|B|=0$.][$lambda=1$ 且 $|B|!=0$.]
#ezexam.solution(show-number: false)[
C.
]

（4）设 $n$（$n>=3$）阶矩阵
$ A=mat(1,a,a,dots,a;a,1,a,dots,a;a,a,1,dots,a;dots.v,dots.v,dots.v,,dots.v;a,a,a,dots,1), $
若矩阵 $A$ 的秩为 $n-1$，则 $a$ 必为（　）.
#choices[1.][$frac(1,1-n)$.][$-1$.][$frac(1,n-1)$.]
#ezexam.solution(show-number: false)[
B.
]

（5）设 $F_1 (x)$ 与 $F_2 (x)$ 分别为随机变量 $X_1$ 与 $X_2$ 的分布函数.为使 $F(x)=a F_1 (x)-b F_2 (x)$ 是某一随机变量的分布函数，在下列给定的各组数值中应取（　）.
#choices[$a=frac(3,5),b=-frac(2,5)$.][$a=frac(2,3),b=frac(2,3)$.][$a=-frac(1,2),b=frac(3,2)$.][$a=frac(1,2),b=-frac(3,2)$.]
#ezexam.solution(show-number: false)[
A.
]

#ezexam.question(label: n => [三、])[
（本题满分5分）

设 $z=(x^2+y^2)e^(-arctan frac(y,x))$，求 $dif z$ 与 $frac(partial^2 z,partial x partial y)$.
#ezexam.solution(show-number: false)[
$ frac(partial z,partial x)&=2x e^(-arctan frac(y,x))-(x^2+y^2)e^(-arctan frac(y,x))(frac(1,1+frac(y^2,x^2)))(-frac(y,x^2)) \
&=(2x+y)e^(-arctan frac(y,x)), quad "（1分）" \
frac(partial z,partial y)&=2y e^(-arctan frac(y,x))-(x^2+y^2)e^(-arctan frac(y,x))(frac(1,1+frac(y^2,x^2)))frac(1,x) quad "（2分）" \
&=(2y-x)e^(-arctan frac(y,x)). $
所以
$ dif z=e^(-arctan frac(y,x))[(2x+y)dif x+(2y-x)dif y]. quad "（3分）" $
$ frac(partial^2 z,partial x partial y)&=e^(-arctan frac(y,x))-(2x+y)e^(-arctan frac(y,x))(frac(1,1+frac(y^2,x^2)))frac(1,x) \
&=frac(y^2-x y-x^2,x^2+y^2)e^(-arctan frac(y,x)). quad "（5分）" $
]


]

#ezexam.question(label: n => [四、])[
（本题满分5分）

设 $D={(x,y)|x^2+y^2<=x}$，求 $integral.double_D sqrt(x) dif x dif y$.
#ezexam.solution(show-number: false)[
*解法1* $D={(x,y)|0<=x<=1, -sqrt(x-x^2)<=y<=sqrt(x-x^2)}$，所以
$ integral.double_D sqrt(x) dif x dif y&=integral_0^1 sqrt(x) dif x integral_(-sqrt(x-x^2))^(sqrt(x-x^2)) dif y quad "（2分）" \
&=2integral_0^1 x sqrt(1-x) dif x quad "（3分）" \
&=4integral_0^1 t^2(1-t^2) dif t quad (sqrt(1-x)=t) quad "（4分）" \
&=4(frac(t^3,3)-frac(t^5,5))|_0^1=frac(8,15). quad "（5分）" $
*解法2*
$ integral.double_D sqrt(x) dif x dif y&=integral_(-frac(pi,2))^(frac(pi,2)) dif theta integral_0^(cos theta) sqrt(r cos theta) r dif r quad "（2分）" \
&=integral_(-frac(pi,2))^(frac(pi,2)) cos^(frac(1,2)) theta dif theta integral_0^(cos theta) r^(frac(3,2)) dif r quad "（3分）" \
&=frac(4,5)integral_0^(frac(pi,2)) cos^3 theta dif theta quad "（4分）" \
&=frac(8,15). quad "（5分）" $
]


]

#ezexam.question(label: n => [五、])[
（本题满分6分）

设某酒厂有一批新酿的好酒，如果现在（假定 $t=0$）就售出，总收入为 $R_0$（元）.如果窖藏起来待来日按陈酒价格出售，$t$ 年末总收入为
$ R=R_0 e^(frac(2,5)sqrt(t)). $
假定银行的年利率为 $r$，并以连续复利计息，试求窖藏多少年售出可使总收入的现值最大.并求 $r=0.06$ 时的 $t$ 值.
#ezexam.solution(show-number: false)[
根据连续复利公式，这批酒在窖藏 $t$ 年末售出总收入 $R$ 的现值为 $A(t)=R e^(-r t)$，而 $R=R_0 e^(frac(2,5)sqrt(t))$，所以
$ A(t)=R_0 e^(frac(2,5)sqrt(t)-r t). quad "（2分）" $
令 $frac(dif A,dif t)=R_0 e^(frac(2,5)sqrt(t)-r t)(frac(1,5sqrt(t))-r)=0$，得唯一驻点 $t_0=frac(1,25r^2)$. （3分）

又
$ frac(dif^2 A,dif t^2)=R_0 e^(frac(2,5)sqrt(t)-r t)[(frac(1,5sqrt(t))-r)^2-frac(1,10sqrt(t^3))], $
则有 $frac(dif^2 A,dif t^2)|_(t=t_0)=R_0 e^(frac(1,25r))(-12.5r^3)<0$.

于是，$t_0=frac(1,25r^2)$ 是极大值点即最大值点，故窖藏 $t=frac(1,25r^2)$（年）售出，总收入的现值最大. （5分）

当 $r=0.06$ 时，$t=frac(100,9)approx 11$（年）. （6分）
]


]

#ezexam.question(label: n => [六、])[
（本题满分6分）

设函数 $f(x)$ 在 $[a,b]$ 上连续，在 $(a,b)$ 内可导，且 $f'(x)!=0$.试证存在 $xi,eta in (a,b)$，使得
$ frac(f'(xi),f'(eta))=frac(e^b-e^a,b-a)dot e^(-eta). $
#ezexam.solution(show-number: false)[
令 $g(x)=e^x$，则 $g(x)$ 与 $f(x)$ 在 $[a,b]$ 上满足柯西中值定理条件，故由柯西中值定理，存在 $eta in (a,b)$，使得
$ frac(f(b)-f(a),e^b-e^a)=frac(f'(eta),e^eta), quad "（2分）" $
即
$ frac(f(b)-f(a),b-a)=frac((e^b-e^a)e^(-eta),b-a)dot f'(eta). quad "（3分）" $
又 $f(x)$ 在 $[a,b]$ 上满足拉格朗日中值定理条件，故由拉格朗日中值定理，存在 $xi in (a,b)$，使得 $frac(f(b)-f(a),b-a)=f'(xi)$. （5分）

由题设 $f'(x)!=0$ 知 $f'(eta)!=0$，从而
$ frac(f'(xi),f'(eta))=frac(e^b-e^a,b-a)dot e^(-eta). quad "（6分）" $
]


]

#ezexam.question(label: n => [七、])[
（本题满分6分）

设有两条抛物线 $y=n x^2+frac(1,n)$ 和 $y=(n+1)x^2+frac(1,n+1)$，记它们交点的横坐标的绝对值为 $a_n$.

（1）求这两条抛物线所围成的平面图形的面积 $S_n$；

（2）求级数 $sum_(n=1)^infinity frac(S_n,a_n)$ 的和.
#ezexam.solution(show-number: false)[
由 $y=n x^2+frac(1,n)$ 与 $y=(n+1)x^2+frac(1,n+1)$ 得
$ a_n=frac(1,sqrt(n(n+1))). quad "（2分）" $
因图形关于 $y$ 轴对称，所以
$ S_n&=2integral_0^(a_n) [n x^2+frac(1,n)-(n+1)x^2-frac(1,n+1)] dif x \
&=2integral_0^(a_n) [frac(1,n(n+1))-x^2] dif x \
&=frac(4,3)frac(1,n(n+1)sqrt(n(n+1))). quad "（4分）" $
因此
$ frac(S_n,a_n)=frac(4,3)frac(1,n(n+1))=frac(4,3)(frac(1,n)-frac(1,n+1)), quad "（5分）" $
从而
$ sum_(n=1)^infinity frac(S_n,a_n)=lim_(n -> infinity)sum_(k=1)^n frac(S_k,a_k)=lim_(n -> infinity)[frac(4,3)(1-frac(1,n+1))]=frac(4,3). quad "（6分）" $
]


]

#ezexam.question(label: n => [八、])[
（本题满分7分）

设函数 $f(x)$ 在 $[1,+infinity)$ 上连续.若由曲线 $y=f(x)$，直线 $x=1,x=t$（$t>1$）与 $x$ 轴所围成的平面图形绕 $x$ 轴旋转一周所成的旋转体体积为
$ V(t)=frac(pi,3)[t^2 f(t)-f(1)]. $
试求 $y=f(x)$ 所满足的微分方程，并求该微分方程满足条件 $y|_(x=2)=frac(2,9)$ 的解.
#ezexam.solution(show-number: false)[
依题意得 $V(t)=pi integral_1^t f^2(x) dif x=frac(pi,3)[t^2 f(t)-f(1)]$，即
$ 3integral_1^t f^2(x) dif x=t^2 f(t)-f(1). quad "（2分）" $
两边对 $t$ 求导，得
$ 3f^2(t)=2t f(t)+t^2 f'(t). quad "（3分）" $
将上式改写为 $x^2 y'=3y^2-2x y$，即
$ frac(dif y,dif x)=3(frac(y,x))^2-2dot frac(y,x). quad "（*）" $
令 $frac(y,x)=u$，则有
$ x frac(dif u,dif x)=3u(u-1). quad "（4分）" $
当 $u!=0,u!=1$ 时，由 $frac(dif u,u(u-1))=frac(3dif x,x)$ 两边积分得
$ frac(u-1,u)=C x^3. quad "（5分）" $
从而（\*）式的通解为 $y-x=C x^3 y$（$C$ 为任意常数）. （6分）

由已知条件，求得 $C=-1$，从而所求的解为
$ y-x=-x^3 y. quad ("或" y=frac(x,1+x^3)). quad "（7分）" $
]


]

#ezexam.question(label: n => [九、])[
（本题满分9分）

设向量 $bold(alpha)=(a_1,a_2,dots,a_n)^"T"$，$bold(beta)=(b_1,b_2,dots,b_n)^"T"$ 都是非零向量，且满足条件 $bold(alpha)^"T" bold(beta)=0$.记 $n$ 阶矩阵 $A=bold(alpha)bold(beta)^"T"$.求：

（1）$A^2$；

（2）矩阵 $A$ 的特征值和特征向量.
#ezexam.solution(show-number: false)[
（1）由 $A=bold(alpha)bold(beta)^"T"$ 和 $bold(alpha)^"T" bold(beta)=0$，有
$ A^2=A A&=(bold(alpha)bold(beta)^"T")(bold(alpha)bold(beta)^"T") \
&=bold(alpha)(bold(beta)^"T" bold(alpha))bold(beta)^"T"=(bold(beta)^"T" bold(alpha))bold(alpha)bold(beta)^"T" quad "（1分）" \
&=(bold(alpha)^"T" bold(beta))bold(alpha)bold(beta)^"T"=O, $
即 $A^2$ 为 $n$ 阶零矩阵. （3分）

（2）设 $lambda$ 为 $A$ 的任一特征值，$A$ 的属于特征值 $lambda$ 的特征向量为 $bold(x)$（$bold(x)!=0$），则 $A bold(x)=lambda bold(x)$.于是
$ A^2 bold(x)=lambda A bold(x)=lambda^2 bold(x). quad "（4分）" $
因为 $A^2=O$，所以 $lambda^2 bold(x)=0$，因为 $bold(x)!=0$，故 $lambda=0$，即矩阵 $A$ 的特征值全为零. （5分）

不妨设向量 $bold(alpha),bold(beta)$ 中分量 $a_1!=0,b_1!=0$，对齐次线性方程组 $(0E-A)bold(x)=0$ 的系数矩阵施以初等行变换：
$ -A=mat(-a_1 b_1,-a_1 b_2,dots,-a_1 b_n;-a_2 b_1,-a_2 b_2,dots,-a_2 b_n;dots.v,dots.v,,dots.v;-a_n b_1,-a_n b_2,dots,-a_n b_n) ->mat(b_1,b_2,dots,b_n;0,0,dots,0;dots.v,dots.v,,dots.v;0,0,dots,0). quad "（6分）" $
由此可得该方程组的基础解系为：
$ bold(alpha)_1=(-frac(b_2,b_1),1,0,dots,0)^"T", quad bold(alpha)_2=(-frac(b_3,b_1),0,1,dots,0)^"T", dots, \
bold(alpha)_(n-1)=(-frac(b_n,b_1),0,0,dots,1)^"T". quad "（8分）" $
于是 $A$ 的属于特征值 $lambda=0$ 的全部特征向量为 $c_1 bold(alpha)_1+c_2 bold(alpha)_2+dots+c_(n-1)bold(alpha)_(n-1)$（$c_1,c_2,dots,c_(n-1)$ 是不全为零的任意常数）. （9分）
]


]

#ezexam.question(label: n => [十、])[
（本题满分7分）

设矩阵 $A=mat(1,0,1;0,2,0;1,0,1)$，矩阵 $B=(k E+A)^2$，其中 $k$ 为实数，$E$ 为单位矩阵.求对角矩阵 $Lambda$，使 $B$ 与 $Lambda$ 相似，并求 $k$ 为何值时，$B$ 为正定矩阵.
#ezexam.solution(show-number: false)[
由
$ |lambda E-A|=mat(delim: "|",lambda-1,0,-1;0,lambda-2,0;-1,0,lambda-1)=lambda(lambda-2)^2, $
可得 $A$ 的特征值为 $lambda_1=lambda_2=2,lambda_3=0$. （2分）

记对角矩阵 $D=mat(2,0,0;0,2,0;0,0,0)$.因为 $A$ 是实对称矩阵，故存在正交矩阵 $P$，使得 $P^"T" A P=D$. （4分）

所以 $A=(P^"T")^(-1) D P^(-1)=P D P^"T"$.
$ B&=(k E+A)^2=(k P P^"T"+P D P^"T")^2 \
&=[P(k E+D)P^"T"][P(k E+D)P^"T"] \
&=P(k E+D)^2 P^"T"=P mat((k+2)^2,0,0;0,(k+2)^2,0;0,0,k^2)P^"T". quad "（5分）" $
由此可得
$ Lambda=mat((k+2)^2,0,0;0,(k+2)^2,0;0,0,k^2). quad "（6分）" $
由上面的结果立刻得到：当 $k!=-2$，且 $k!=0$ 时，$B$ 的全部特征值均为正数，这时 $B$ 为正定矩阵. （7分）

注：考生亦可直接由 $A$ 的特征值得到矩阵 $(k E+A)$ 的特征值为 $(k+2)$（二重）和 $k$（4分），进而得到 $B$ 的特征值为 $(k+2)^2$（二重）和 $k^2$（5分），并得到实对称矩阵 $B tilde Lambda$（6分）.
]


]

#ezexam.question(label: n => [十一、])[
（本题满分10分）

一商店经销某种商品，每周进货的数量 $X$ 与顾客对该种商品的需求量 $Y$ 是相互独立的随机变量，且都服从区间 $[10,20]$ 上的均匀分布.商店每售出一单位商品可得利润1000元；若需求量超过了进货量，商店可从其他商店调剂供应，这时每单位商品获利润为500元.试计算此商店经销该种商品每周所得利润的期望值.
#import "@preview/cetz:0.5.2"
#cetz.canvas({
 import cetz.draw: *
 set-style(stroke: 0.6pt)
 line((-0.3,0),(3,0),mark:(end:">")); line((0,-0.2),(0,2.8),mark:(end:">"))
 line((0,0),(2.5,2.5))
 rect((1,1),(2,2))
 line((0,1),(1,1),stroke:(dash:"dashed")); line((0,2),(1,2),stroke:(dash:"dashed"))
 line((1,0),(1,1),stroke:(dash:"dashed")); line((2,0),(2,1),stroke:(dash:"dashed"))
 content((3.1,0),$x$); content((0,2.9),$y$); content((-0.15,-0.12),$O$)
 content((1,-0.17),$10$); content((2,-0.17),$20$)
 content((-0.22,1),$10$); content((-0.22,2),$20$)
 content((1.7,1.3),$D_1$); content((1.3,1.7),$D_2$)
})
#ezexam.solution(show-number: false)[
设 $Z$ 表示商店每周所得的利润，则
$ Z=cases(1000Y & quad Y<=X,1000X+500(Y-X)=500(X+Y) & quad Y>X). quad "（3分）" $
由于 $X$ 与 $Y$ 的联合概率密度为：
$ phi(x,y)=cases(frac(1,100) & quad 10<=x<=20 quad 10<=y<=20,0 & quad "其他"), quad "（5分）" $
所以
$ E Z&=integral.double_(D_1) 1000y times frac(1,100) dif x dif y+integral.double_(D_2) 500(x+y)times frac(1,100) dif x dif y quad "（7分）" \
&=10integral_10^20 dif y integral_y^20 y dif x+5integral_10^20 dif y integral_10^y (x+y) dif x quad "（8分）" \
&=10integral_10^20 y(20-y) dif y+5integral_10^20 (frac(3,2)y^2-10y-50) dif y quad "（9分）" \
&=frac(20000,3)+5times 1500 approx 14166.67 quad "（元）". quad "（10分）" $
]


]

#ezexam.question(label: n => [十二、])[
（本题满分9分）

设有来自三个地区的各10名、15名和25名考生的报名表，其中女生的报名表分别为3份、7份和5份.随机地取一个地区的报名表，从中先后抽出两份.

（1）求先抽到的一份是女生表的概率 $p$；

（2）已知后抽到的一份是男生表，求先抽到的一份是女生表的概率 $q$.
#ezexam.solution(show-number: false)[
设 $H_i={"报名表是第" i "区考生的"}$（$i=1,2,3$），$A_j={"第" j "次抽到的报名表是男生表"}$（$j=1,2$），则
$ P(H_1)=P(H_2)=P(H_3)=frac(1,3); \
P(A_1|H_1)=frac(7,10), quad P(A_1|H_2)=frac(8,15), quad P(A_1|H_3)=frac(20,25). quad "（1分）" $
（1）
$ p=P(overline(A)_1)&=sum_(i=1)^3 P(H_i)P(overline(A)_1|H_i) \
&=frac(1,3)(frac(3,10)+frac(7,15)+frac(5,25))=frac(29,90). quad "（3分）" $
（2）由全概公式得
$ P(A_2|H_1)=frac(7,10), quad P(A_2|H_2)=frac(8,15), quad P(A_2|H_3)=frac(20,25). quad "（4分）" $
$ P(overline(A)_1 A_2|H_1)=frac(7,30), quad P(overline(A)_1 A_2|H_2)=frac(8,30), \
P(overline(A)_1 A_2|H_3)=frac(5,30). quad "（5分）" $
$ P(A_2)&=sum_(i=1)^3 P(H_i)dot P(A_2|H_i)=frac(1,3)[frac(7,10)+frac(8,15)+frac(20,25)]=frac(61,90). quad "（6分）" \
P(overline(A)_1 A_2)&=sum_(i=1)^3 P(H_i)P(overline(A)_1 A_2|H_i)=frac(1,3)(frac(7,30)+frac(8,30)+frac(5,30))=frac(2,9). quad "（7分）" $
因此，
$ q=P(overline(A)_1|A_2)=frac(P(overline(A)_1 A_2),P(A_2))=frac(frac(2,9),frac(61,90))=frac(20,61). quad "（9分）" $
]

]
