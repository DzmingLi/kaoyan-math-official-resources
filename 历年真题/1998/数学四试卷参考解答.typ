#import "../template.typ": exam
#show: exam.with(year: 1998, subject: "四", title: "1998年全国工学、经济学硕士研究生入学考试")
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

（3）设矩阵 $A,B$ 满足 $A^* B A=2B A-8E$，其中 $A=mat(1,0,0;0,-2,0;0,0,1)$，$E$ 为单位矩阵，$A^*$ 为 $A$ 的伴随矩阵，则 $B=$ #fillin(len: 3em)[].
#ezexam.solution(show-number: false)[
$mat(2,0,0;0,-4,0;0,0,2)$.
]

（4）设 $A,B$ 均为 $n$ 阶矩阵，$|A|=2$，$|B|=-3$，则 $|2A^* B^(-1)|=$ #fillin(len: 3em)[].
#ezexam.solution(show-number: false)[
$-frac(2^(2n-1),3)$.
]

（5）设一次试验成功的概率为 $p$，进行100次独立重复试验，当 $p=$ #fillin(len: 3em)[] 时，成功次数的标准差的值最大，其最大值为 #fillin(len: 3em)[].（注：第一空2分，第二空1分.）
#ezexam.solution(show-number: false)[
$frac(1,2)$；5.
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

（3）若向量组 $bold(alpha),bold(beta),bold(gamma)$ 线性无关；$bold(alpha),bold(beta),bold(delta)$ 线性相关，则（　）.
#choices[$bold(alpha)$ 必可由 $bold(beta),bold(gamma),bold(delta)$ 线性表示.][$bold(beta)$ 必不可由 $bold(alpha),bold(gamma),bold(delta)$ 线性表示.][$bold(delta)$ 必可由 $bold(alpha),bold(beta),bold(gamma)$ 线性表示.][$bold(delta)$ 必不可由 $bold(alpha),bold(beta),bold(gamma)$ 线性表示.]
#ezexam.solution(show-number: false)[
C.
]

（4）设 $A,B,C$ 是三个相互独立的随机事件，且 $0<P(C)<1$.则在下列给定的四对事件中不相互独立的是（　）.
#choices[$overline(A+B)$ 与 $C$.][$overline(A C)$ 与 $overline(C)$.][$overline(A-B)$ 与 $overline(C)$.][$overline(A B)$ 与 $overline(C)$.]
#ezexam.solution(show-number: false)[
B.
]

（5）设 $F_1 (x)$ 与 $F_2 (x)$ 分别为随机变量 $X_1$ 与 $X_2$ 的分布函数.为使 $F(x)=a F_1 (x)-b F_2 (x)$ 是某一随机变量的分布函数，在下列给定的各组数值中应取（　）.
#choices[$a=frac(3,5),b=-frac(2,5)$.][$a=frac(2,3),b=frac(2,3)$.][$a=-frac(1,2),b=frac(3,2)$.][$a=frac(1,2),b=-frac(3,2)$.]
#ezexam.solution(show-number: false)[
A.
]

#ezexam.question(label: n => [三、])[
（本题满分6分）

求 $lim_(n -> infinity)(n tan frac(1,n))^(n^2)$（$n$ 为自然数）.
#ezexam.solution(show-number: false)[
因为
$ lim_(x -> 0^+)(frac(tan x,x))^(frac(1,x^2))=lim_(x -> 0^+)[(1+frac(tan x-x,x))^(frac(x,tan x-x))]^(frac(tan x-x,x^3)), quad "（2分）" $
其中
$ lim_(x -> 0^+) frac(tan x-x,x^3)=lim_(x -> 0^+) frac(sec^2 x-1,3x^2)=frac(1,3), quad "（4分）" $
故
$ lim_(x -> 0^+)(frac(tan x,x))^(frac(1,x^2))=e^(frac(1,3)). quad "（5分）" $
取 $x=frac(1,n)$，则原式 $=e^(frac(1,3))$. （6分）

注：对数列极限直接用洛必达法则，扣2分.
]


]

#ezexam.question(label: n => [四、])[
（本题满分6分）

设 $z=(x^2+y^2)e^(-arctan frac(y,x))$，求 $dif z$ 与 $frac(partial^2 z,partial x partial y)$.
#ezexam.solution(show-number: false)[
$ frac(partial z,partial x)&=2x e^(-arctan frac(y,x))-(x^2+y^2)e^(-arctan frac(y,x))(frac(x^2,x^2+y^2))(-frac(y,x^2)) \
&=(2x+y)e^(-arctan frac(y,x)), quad "（2分）" \
frac(partial z,partial y)&=2y e^(-arctan frac(y,x))-(x^2+y^2)e^(-arctan frac(y,x))(frac(x^2,x^2+y^2))frac(1,x) quad "（3分）" \
&=(2y-x)e^(-arctan frac(y,x)). $
所以
$ dif z=e^(-arctan frac(y,x))[(2x+y)dif x+(2y-x)dif y]. quad "（4分）" $
$ frac(partial^2 z,partial x partial y)&=e^(-arctan frac(y,x))-(2x+y)e^(-arctan frac(y,x))(frac(x^2,x^2+y^2))frac(1,x) \
&=frac(y^2-x y-x^2,x^2+y^2)e^(-arctan frac(y,x)). quad "（6分）" $
]


]

#ezexam.question(label: n => [五、])[
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

#ezexam.question(label: n => [六、])[
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

#ezexam.question(label: n => [七、])[
（本题满分6分）

设 $f(x)$ 在 $[a,b]$ 上连续，在 $(a,b)$ 内可导，且 $f(a)=f(b)=1$，试证存在 $xi,eta in (a,b)$，使得
$ e^(eta-xi)[f(eta)+f'(eta)]=1. $
#ezexam.solution(show-number: false)[
令 $F(x)=e^x f(x)$，则 $F(x)$ 在 $[a,b]$ 上满足拉格朗日中值定理条件，故存在 $eta in (a,b)$，使得
$ frac(e^b f(b)-e^a f(a),b-a)=e^eta[f(eta)+f'(eta)]. quad "（3分）" $
由条件 $f(a)=f(b)=1$，得
$ frac(e^b-e^a,b-a)=e^eta[f(eta)+f'(eta)]. quad "（1）" quad "（4分）" $
再令 $phi(x)=e^x$，则 $phi(x)$ 在 $[a,b]$ 上满足拉格朗日中值定理条件，故存在 $xi in (a,b)$，使得
$ frac(e^b-e^a,b-a)=e^xi. quad "（2）" quad "（5分）" $
综合（1）、（2）两式，有
$ e^(eta-xi)[f(eta)+f'(eta)]=1. quad "（6分）" $
]


]

#ezexam.question(label: n => [八、])[
（本题满分9分）

设直线 $y=a x$ 与抛物线 $y=x^2$ 所围成图形的面积为 $S_1$，它们与直线 $x=1$ 所围成的图形面积为 $S_2$，并且 $a<1$.

（1）试确定 $a$ 的值，使 $S_1+S_2$ 达到最小，并求出最小值；

（2）求该最小值所对应的平面图形绕 $x$ 轴旋转一周所得旋转体的体积.
#import "@preview/cetz:0.5.2"
#cetz.canvas({
 import cetz.draw: *
 set-style(stroke:0.6pt)
 let a=0.65
 let curve=range(0,41).map(i=>{let x=i/40; (3*x,3*x*x)})
 line((0,0),(3,3*a),..curve.rev(),close:true,fill:luma(92%))
 line((-0.2,0),(3.6,0),mark:(end:">")); line((0,-0.2),(0,3.6),mark:(end:">"))
 line((3*a,0),(3*a,3*a*a),stroke:(dash:"dashed"))
 content((3.7,0),$x$); content((0,3.7),$y$); content((-0.13,-0.13),$O$)
 content((3*a,-0.2),$a$); content((3,-0.2),$1$)
 content((0.9,0.35),$S_1$); content((2.7,2.15),$S_2$)
 content((1,1.15),$y=a x$); content((2.6,3.15),$y=x^2$)
})
#ezexam.solution(show-number: false)[
（1）当 $0<a<1$ 时（如图1），
$ S=S_1+S_2&=integral_0^a (a x-x^2) dif x+integral_a^1 (x^2-a x) dif x \
&=(frac(a x^2,2)-frac(x^3,3))|_0^a+(frac(x^3,3)-frac(a x^2,2))|_a^1 \
&=frac(a^3,3)-frac(a,2)+frac(1,3). quad "（2分）" $
令 $S'=a^2-frac(1,2)=0$，得 $a=frac(1,sqrt(2))$.又 $S''(frac(1,sqrt(2)))=sqrt(2)>0$，则 $S(frac(1,sqrt(2)))$ 是极小值即最小值.其值为
$ S(frac(1,sqrt(2)))=frac(1,6sqrt(2))-frac(1,2sqrt(2))+frac(1,3)=frac(2-sqrt(2),6). quad "（4分）" $
当 $a<=0$ 时（如图2），
#cetz.canvas({
 import cetz.draw: *
 set-style(stroke:0.6pt)
 let a=-0.6
 let c1=range(0,31).map(i=>{let x=a+i*(-a)/30;(2.5*x,2.5*x*x)})
 let c2=range(0,41).map(i=>{let x=i/40;(2.5*x,2.5*x*x)})
 line((0,0),(2.5*a,2.5*a*a),..c1,close:true,fill:luma(92%))
 line((0,0),(2.5,2.5*a),..c2.rev(),close:true,fill:luma(92%))
 line((-1.8,0),(3.1,0),mark:(end:">")); line((0,-1.7),(0,3),mark:(end:">"))
 line((2.5*a,0),(2.5*a,2.5*a*a),stroke:(dash:"dashed"))
 content((3.2,0),$x$); content((0,3.1),$y$); content((-0.15,-0.15),$O$)
 content((2.5*a,-0.18),$a$); content((2.65,-0.15),$1$)
 content((-0.8,0.65),$S_1$); content((1.7,0.6),$S_2$)
})
图2

$ S=S_1+S_2&=integral_a^0 (a x-x^2) dif x+integral_0^1 (x^2-a x) dif x \
&=-frac(a^3,6)-frac(a,2)+frac(1,3). \
S'&=-frac(a^2,2)-frac(1,2)=-frac(1,2)(a^2+1)<0, $
$S$ 单调减少，故 $a=0$ 时，$S$ 取得最小值，此时 $S=frac(1,3)$.

注：此部分如果论述正确，不计算 $S$ 的值，也不扣分.

综合上述，当 $a=frac(1,sqrt(2))$ 时，$S(frac(1,sqrt(2)))$ 为所求最小值，最小值为 $frac(2-sqrt(2),6)$. （6分）

（2）
$ V_x&=pi integral_0^(frac(1,sqrt(2))) (frac(1,2)x^2-x^4) dif x+pi integral_(frac(1,sqrt(2)))^1 (x^4-frac(1,2)x^2) dif x \
&=pi(frac(1,6)x^3-frac(x^5,5))|_0^(frac(1,sqrt(2)))+pi(frac(x^5,5)-frac(1,6)x^3)|_(frac(1,sqrt(2)))^1 \
&=frac(sqrt(2)+1,30)pi. quad "（9分）" $
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

已知下列非齐次线性方程组（Ⅰ）、（Ⅱ）
$ "（Ⅰ）" cases(x_1+x_2-2x_4=-6,4x_1-x_2-x_3-x_4=1,3x_1-x_2-x_3=3); $
$ "（Ⅱ）" cases(x_1+m x_2-x_3-x_4=-5,n x_2-x_3-2x_4=-11,x_3-2x_4=-t+1). $
（1）求解方程组（Ⅰ），用其导出组的基础解系表示通解；

（2）当方程组（Ⅱ）中的参数 $m,n,t$ 为何值时，方程组（Ⅰ）与（Ⅱ）同解.
#ezexam.solution(show-number: false)[
（1）设方程组（Ⅰ）的系数矩阵为 $A_1$，增广矩阵为 $overline(A)_1$，对 $overline(A)_1$ 作初等行变换，得
$ overline(A)_1=mat(augment:#4,1,1,0,-2,-6;4,-1,-1,-1,1;3,-1,-1,0,3)->mat(augment:#4,1,0,0,-1,-2;0,1,0,-1,-4;0,0,1,-2,-5). $
由于秩 $(A_1)=$ 秩 $(overline(A)_1)=3<4$，所以方程组有无穷多组解，且通解为
$ X=vec(-2,-4,-5,0)+k vec(1,1,2,1) quad (k "为任意常数"). quad "（3分）" $
（2）将通解 $X$ 代入（Ⅱ）的第一个方程，得
$ (-2+k)+m(-4+k)-(-5+2k)-k=-5, $
解得 $m=2$.

将通解 $X$ 代入（Ⅱ）的第二个方程，得 $n(-4+k)-(-5+2k)-2k=-11$，从而 $n=4$.

将通解 $X$ 代入（Ⅱ）的第三个方程，得 $(-5+2k)-2k=-t+1$，解得 $t=6$.

因此，方程组（Ⅱ）的参数 $m=2,n=4,t=6$. （5分）

即当 $m=2,n=4,t=6$ 时，方程组（Ⅰ）的全部解都是方程组（Ⅱ）的解.这时，方程组（Ⅱ）化为
$ "（Ⅱ）" cases(x_1+2x_2-x_3-x_4=-5,4x_2-x_3-2x_4=-11,x_3-2x_4=-5). $
设方程组（Ⅱ）的系数矩阵为 $A_2$，增广矩阵为 $overline(A)_2$，对 $overline(A)_2$ 施以初等行变换，得
$ overline(A)_2=mat(augment:#4,1,2,-1,-1,-5;0,4,-1,-2,-11;0,0,1,-2,-5)->mat(augment:#4,1,0,0,-1,-2;0,1,0,-1,-4;0,0,1,-2,-5). quad "（6分）" $
于是方程组（Ⅱ）的通解为
$ X=vec(-2,-4,-5,0)+k vec(1,1,2,1) quad (k "为任意常数"). $
显然，方程组（Ⅰ）、（Ⅱ）的解完全相同，即方程组（Ⅰ）、（Ⅱ）同解. （7分）
]


]

#ezexam.question(label: n => [十一、])[
（本题满分9分）

设某种商品每周的需求量 $X$ 是服从区间 $[10,30]$ 上均匀分布的随机变量，而经销商店进货数量为区间 $[10,30]$ 中的某一整数，商店每销售一单位商品可获利500元；若供大于求则削价处理，每处理1单位商品亏损100元；若供不应求，则可从外部调剂供应，此时每1单位商品仅获利300元.为使商店所获利润期望值不少于9280元，试确定最少进货量.
#ezexam.solution(show-number: false)[
设进货数量为 $a$，则利润为
$ M_a&=cases(500a+(X-a)300 & quad a<X<=30,500X-(a-X)100 & quad 10<=X<=a) \
&=cases(300X+200a & quad a<X<=30,600X-100a & quad 10<=X<=a). quad "（3分）" $
期望利润
$ E M_a&=integral_10^30 frac(1,20)dot M_a dif x \
&=frac(1,20)integral_10^a (600x-100a) dif x+frac(1,20)integral_a^30 (300x+200a) dif x \
&=frac(1,20)(600dot frac(x^2,2)-100a x)|_10^a+frac(1,20)(300dot frac(x^2,2)+200a x)|_a^30 \
&=-7.5a^2+350a+5250. quad "（6分）" $
依题意，有
$ -7.5a^2+350a+5250>=9280, quad "（7分）" $
即 $7.5a^2-350a+4030<=0$，解得
$ 20frac(2,3)<=a<=26. quad "（8分）" $
故利润期望值不少于9280元的最少进货量为21单位. （9分）
]


]

#ezexam.question(label: n => [十二、])[
（本题满分7分）

某箱装有100件产品，其一、二和三等品分别为80、10和10件，现在从中随机抽取一件，记
$ X_i=cases(1 & quad "若抽到" i "等品",0 & quad "其他") quad (i=1,2,3). $
试求：（1）随机变量 $X_1$ 与 $X_2$ 的联合分布；

（2）随机变量 $X_1$ 与 $X_2$ 的相关系数 $rho$.
#ezexam.solution(show-number: false)[
（1）设事件 $A_i=$“抽到 $i$ 等品”（$i=1,2,3$）.由题意知 $A_1,A_2,A_3$ 两两互不相容，
$ P(A_1)=0.8, quad P(A_2)=P(A_3)=0.1. quad "（1分）" $
易见，
$ P{X_1=0,X_2=0}&=P(A_3)=0.1, \
P{X_1=0,X_2=1}&=P(A_2)=0.1; \
P{X_1=1,X_2=0}&=P(A_1)=0.8, \
P{X_1=1,X_2=1}&=P(emptyset)=0. quad "（3分）" $
（2）$E X_1=0.8$，$E X_2=0.1$.
$ D X_1=0.8times 0.2=0.16, quad D X_2=0.1times 0.9=0.09. quad "（4分）" $
$ E X_1 X_2=0times 0times 0.1+0times 1times 0.1+1times 0times 0.8+1times 1times 0=0. quad "（5分）" $
$ "COV"(X_1,X_2)=E X_1 X_2-E X_1 dot E X_2=0-0.8times 0.1=-0.08. quad "（6分）" $
$ rho=frac("COV"(X_1,X_2),sqrt(D X_1 dot D X_2))=frac(-0.08,sqrt(0.16times 0.09))=-frac(2,3). quad "（7分）" $
]

]
