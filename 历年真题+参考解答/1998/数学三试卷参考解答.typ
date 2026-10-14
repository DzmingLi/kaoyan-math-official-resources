#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 1998, subject: "三", title: "1998年全国工学、经济学硕士研究生入学考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#import "@preview/cetz:0.5.2"
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 1998 数学三试卷参考解答

= 一、填空题

#answer("1（1）")[
*解* 设点 $(1,1)$ 处切线为 $y=a x+b$，则 $a=f'(1)=n$，$1=a+b$，故 $b=1-n$. 取 $y=0$，得
$ xi_n=-b/a=1-1/n. $
因此
$ lim_(n->infinity) f(xi_n)=lim_(n->infinity)(1-1/n)^n=1/e. $
本题结合了导数的几何意义和重要极限.
]

#answer("1（2）")[
*解* 利用凑微分和分部积分公式，
$ integral frac(ln x-1,x^2) dif x
&=integral(ln x-1) dif(-1/x) \
&=-frac(1,x)(ln x-1)+integral frac(1,x) dif(ln x-1) \
&=-frac(ln x,x)+1/x-1/x+C=-frac(ln x,x)+C. $
]

#answer("1（3）")[
*分析* 这是非齐次的一阶常系数线性差分方程，标准形式为 $y_(t+1)+5y_t=5t/2$，右端是一次多项式.

*解* 依一阶线性差分方程的通解公式，取 $a=5,b_1=5/2,b_0=0$，得
$ y_t=C(-a)^t-frac(b_1,(1+a)^2)+frac(b_1,1+a)t=C(-5)^t+frac(5,12)(t-1/6). $
]

#answer("1（4）")[
*解* 对 $A^* B A=2B A-8E$ 两边左乘 $A$、右乘 $A^(-1)$，利用 $A A^*=|A|E$，得
$ |A|B=2A B-8E, quad B=8(2A-|A|E)^(-1). $
又 $|A|=-2$，故
$ 2A-|A|E=mat(4,0,0;0,-2,0;0,0,4), $
所以
$ B=8mat(1/4,0,0;0,-1/2,0;0,0,1/4)=mat(2,0,0;0,-4,0;0,0,2). $
]

#answer("1（5）")[
*分析* 相互独立的标准正态变量的平方和服从卡方分布，自由度等于平方项的个数.

*解* 本题有两个相互独立的线性组合. 要使其标准化，须满足
$ D[sqrt(a)(X_1-2X_2)]=(a+4a)D X_1=5a dot 2^2=1, $
$ D[sqrt(b)(3X_3-4X_4)]=(9b+16b)D X_1=25b dot 2^2=1. $
故 $a=1/20,b=1/100$，自由度为 $2$.
]

= 二、选择题

#answer("2（1）")[
*解* 由 $f(x+4)=f(x)$，两边求导得 $f'(x+4)=f'(x)$，所以 $f'(5)=f'(1)$. 又
$ lim_(x->0) frac(f(1)-f(1-x),2x)=1/2 f'(1)=-1, $
得 $f'(1)=-2$. 所求切线斜率为 $-2$，应选 D.
]

#answer("2（2）")[
*解* 先求极限所定义的分段函数，得
$ f(x)=cases(0 & |x|>1,0 & x=-1,1 & x=1,1+x & -1<x<1). $
在 $x=-1$ 处，两侧极限及函数值均为零；在 $x=1$ 处，左右极限分别为 $2$ 和 $0$，故只有 $x=1$ 是间断点，应选 B.
]

#answer("2（3）")[
*解* 由 $A B=O,B!=O$，知方程组 $A x=0$ 有非零解，因此
$ |A|=mat(delim: "|",lambda,1,lambda^2;1,lambda,1;1,1,lambda)=-(lambda-1)^2=0. $
所以 $lambda=1$，此时 $A$ 的每个元素均为 $1$. 由 $A B=O$ 转置得 $B^T A^T=O$，可知 $B^T x=0$ 有非零解，于是 $|B|=|B^T|=0$. 应选 C.
]

#answer("2（4）")[
*解法一* 由 $r(A)=n-1$，知 $|A|=0$，且至少有一个 $n-1$ 阶子行列式不为零. 若 $a=-1$，则 $|A|!=0$；若 $a=1$，则 $r(A)=1<n-1$，故排除 A、C. 若取 $n=3,a=1/2$，则
$ |A|=mat(delim: "|",1,1/2,1/2;1/2,1,1/2;1/2,1/2,1)=1/2!=0, $
排除 D. 应选 B.

*解法二* 将其余各行加到第一行，提出公因子，再用第一行消去下面各行的首项，得
$ |A|=[(n-1)a+1](1-a)^(n-1). $
由秩的条件排除 $a=1$，所以 $(n-1)a+1=0$，即 $a=1/(1-n)$. 应选 B.
]

#answer("2（5）")[
*解* 由分布函数性质，$lim_(x->+infinity)F(x)=1$，故
$ 1=a lim_(x->+infinity) F_1(x)-b lim_(x->+infinity)F_2(x)=a-b. $
四组数值中只有 A 满足 $a-b=1$，且此时 $F=3F_1/5+2F_2/5$ 是两个分布函数的凸组合，确为分布函数. 应选 A.
]

= 解答题

#answer("三、")[
*分析* 求全微分主要是先求两个一阶偏导数. 使用 $(arctan x)'=1/(1+x^2)$ 和复合函数求导法则，再对一阶偏导数继续求偏导.

*解*
$ frac(partial z,partial x)&=2x e^(-arctan frac(y,x))-(x^2+y^2)e^(-arctan frac(y,x))(frac(1,1+frac(y^2,x^2)))(-frac(y,x^2)) \
&=(2x+y)e^(-arctan frac(y,x)), quad "（1分）" \
frac(partial z,partial y)&=2y e^(-arctan frac(y,x))-(x^2+y^2)e^(-arctan frac(y,x))(frac(1,1+frac(y^2,x^2)))frac(1,x) quad "（2分）" \
&=(2y-x)e^(-arctan frac(y,x)). $
所以
$ dif z=e^(-arctan frac(y,x))[(2x+y)dif x+(2y-x)dif y]. quad "（3分）" $
$ frac(partial^2 z,partial x partial y)&=e^(-arctan frac(y,x))-(2x+y)e^(-arctan frac(y,x))(frac(1,1+frac(y^2,x^2)))frac(1,x) \
&=frac(y^2-x y-x^2,x^2+y^2)e^(-arctan frac(y,x)). quad "（5分）" $
]

#answer("四、")[
*分析* 这是二重积分的基本计算题. 可化为极坐标，注意正确确定径向和角度的积分限，也可直接化为二次积分.

*解*
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

#answer("五、")[
*分析* 连续复利公式为 $R(t)=A e^(r t)$，所以 $t$ 时刻收入 $R(t)$ 的现值为 $A(t)=R(t)e^(-r t)$. 将题给收入代入得到现值与窖藏时间的关系，再求最大值.

*解*
根据连续复利公式，这批酒在窖藏 $t$ 年末售出总收入 $R$ 的现值为 $A(t)=R e^(-r t)$，而 $R=R_0 e^(frac(2,5)sqrt(t))$，所以
$ A(t)=R_0 e^(frac(2,5)sqrt(t)-r t). quad "（2分）" $
令 $frac(dif A,dif t)=R_0 e^(frac(2,5)sqrt(t)-r t)(frac(1,5sqrt(t))-r)=0$，得唯一驻点 $t_0=frac(1,25r^2)$. （3分）

又
$ frac(dif^2 A,dif t^2)=R_0 e^(frac(2,5)sqrt(t)-r t)[(frac(1,5sqrt(t))-r)^2-frac(1,10sqrt(t^3))], $
则有 $frac(dif^2 A,dif t^2)|_(t=t_0)=R_0 e^(frac(1,25r))(-12.5r^3)<0$.

于是，$t_0=frac(1,25r^2)$ 是极大值点即最大值点，故窖藏 $t=frac(1,25r^2)$（年）售出，总收入的现值最大. （5分）

当 $r=0.06$ 时，$t=frac(100,9)approx 11$（年）. （6分）

*注* 不应忽略“连续复利计息”的要求而使用离散复利公式 $A(t)=R(t)(1+r)^(-t)$. 后者会给出 $t=1/[25ln^2(1+r)]$，虽然数值接近，也不是本题所要求的模型.
]

#answer("六、")[
*分析* 目标式包含 $f$ 与指数函数的导数，因而可联想到柯西中值定理，再结合拉格朗日中值定理. 题目没有要求 $xi!=eta$，也可以令二者相等.

*解*
令 $g(x)=e^x$，则 $g(x)$ 与 $f(x)$ 在 $[a,b]$ 上满足柯西中值定理条件，故由柯西中值定理，存在 $eta in (a,b)$，使得
$ frac(f(b)-f(a),e^b-e^a)=frac(f'(eta),e^eta), quad "（2分）" $
即
$ frac(f(b)-f(a),b-a)=frac((e^b-e^a)e^(-eta),b-a)dot f'(eta). quad "（3分）" $
又 $f(x)$ 在 $[a,b]$ 上满足拉格朗日中值定理条件，故由拉格朗日中值定理，存在 $xi in (a,b)$，使得 $frac(f(b)-f(a),b-a)=f'(xi)$. （5分）

由题设 $f'(x)!=0$ 知 $f'(eta)!=0$，从而
$ frac(f'(xi),f'(eta))=frac(e^b-e^a,b-a)dot e^(-eta). quad "（6分）" $

*证法二* 对 $g(x)=e^x$ 使用拉格朗日中值定理，存在 $eta in (a,b)$，使
$ e^b-e^a=e^eta(b-a). $
令 $xi=eta$，由 $f'(eta)!=0$，得
$ frac(f'(xi),f'(eta))=1=frac(e^b-e^a,b-a)e^(-eta). $
]

#answer("七、")[
*分析* 先正确求出 $a_n,S_n$，再求级数 $sum S_n/a_n$ 的和. 计算面积时可先画草图，确定积分上下限.

*解*
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

#answer("八、")[
*分析* 先写出旋转体体积的定积分表达式，与题给体积等式比较，求导得到微分方程，再求通解和满足初始条件的特解.

*解*
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

#answer("九、")[
*分析* 利用矩阵乘法结合律和 $alpha^T beta$ 是数值这一事实，先求 $A^2$. 再用特征值定义确定全部特征值，将其代入 $(A-lambda E)x=0$，求出全部特征向量.

*解*
（1）由 $A=bold(alpha)bold(beta)^"T"$ 和 $bold(alpha)^"T" bold(beta)=0$，有
$ A^2=A A&=(bold(alpha)bold(beta)^"T")(bold(alpha)bold(beta)^"T") \
&=bold(alpha)(bold(beta)^"T" bold(alpha))bold(beta)^"T"=(bold(beta)^"T" bold(alpha))bold(alpha)bold(beta)^"T" quad "（1分）" \
&=(bold(alpha)^"T" bold(beta))bold(alpha)bold(beta)^"T"=O, $
即 $A^2$ 为 $n$ 阶零矩阵. （3分）

（2）设 $lambda$ 为 $A$ 的任一特征值，$A$ 的属于特征值 $lambda$ 的特征向量为 $bold(x)$（$bold(x)!=0$），则 $A bold(x)=lambda bold(x)$. 于是
$ A^2 bold(x)=lambda A bold(x)=lambda^2 bold(x). quad "（4分）" $
因为 $A^2=O$，所以 $lambda^2 bold(x)=0$，因为 $bold(x)!=0$，故 $lambda=0$，即矩阵 $A$ 的特征值全为零. （5分）

由于 $bold(alpha)$ 非零，可以取某个非零分量对应的行作主元行；通过调整坐标编号，不妨设 $bold(beta)$ 的分量 $b_1!=0$，对齐次线性方程组 $(0E-A)bold(x)=0$ 的系数矩阵施以初等行变换：
$ -A=mat(-a_1 b_1,-a_1 b_2,dots,-a_1 b_n;-a_2 b_1,-a_2 b_2,dots,-a_2 b_n;dots.v,dots.v,,dots.v;-a_n b_1,-a_n b_2,dots,-a_n b_n) ->mat(b_1,b_2,dots,b_n;0,0,dots,0;dots.v,dots.v,,dots.v;0,0,dots,0). quad "（6分）" $
由此可得该方程组的基础解系为：
$ bold(alpha)_1=(-frac(b_2,b_1),1,0,dots,0)^"T", quad bold(alpha)_2=(-frac(b_3,b_1),0,1,dots,0)^"T", dots, \
bold(alpha)_(n-1)=(-frac(b_n,b_1),0,0,dots,1)^"T". quad "（8分）" $
于是 $A$ 的属于特征值 $lambda=0$ 的全部特征向量为 $c_1 bold(alpha)_1+c_2 bold(alpha)_2+dots+c_(n-1)bold(alpha)_(n-1)$（$c_1,c_2,dots,c_(n-1)$ 是不全为零的任意常数）. （9分）
]

#answer("十、")[
*分析* 先求 $A$ 的特征值及相似的对角矩阵 $D$，利用实对称矩阵可以正交对角化这一性质，将 $B$ 也写成正交相似的形式. 也可直接由 $A$ 的特征值推出 $B$ 的特征值.

*解*
由
$ |lambda E-A|=mat(delim: "|",lambda-1,0,-1;0,lambda-2,0;-1,0,lambda-1)=lambda(lambda-2)^2, $
可得 $A$ 的特征值为 $lambda_1=lambda_2=2,lambda_3=0$. （2分）

记对角矩阵 $D=mat(2,0,0;0,2,0;0,0,0)$. 因为 $A$ 是实对称矩阵，故存在正交矩阵 $P$，使得 $P^"T" A P=D$. （4分）

所以 $A=(P^"T")^(-1) D P^(-1)=P D P^"T"$.
$ B&=(k E+A)^2=(k P P^"T"+P D P^"T")^2 \
&=[P(k E+D)P^"T"][P(k E+D)P^"T"] \
&=P(k E+D)^2 P^"T"=P mat((k+2)^2,0,0;0,(k+2)^2,0;0,0,k^2)P^"T". quad "（5分）" $
由此可得
$ Lambda=mat((k+2)^2,0,0;0,(k+2)^2,0;0,0,k^2). quad "（6分）" $
由上面的结果立刻得到：当 $k!=-2$，且 $k!=0$ 时，$B$ 的全部特征值均为正数，这时 $B$ 为正定矩阵. （7分）

注：考生亦可直接由 $A$ 的特征值得到矩阵 $(k E+A)$ 的特征值为 $(k+2)$（二重）和 $k$（4分），进而得到 $B$ 的特征值为 $(k+2)^2$（二重）和 $k^2$（5分），并得到实对称矩阵 $B tilde Lambda$（6分）.
]

#answer("十一、")[
*分析* 先由独立均匀分布写出联合密度，再把利润写成进货量与需求量的二元分段函数，利用随机变量函数的期望公式计算二重积分.

*解*
设 $Z$ 表示商店每周所得的利润，则
$ Z=cases(1000Y & quad Y<=X,1000X+500(Y-X)=500(X+Y) & quad Y>X). quad "（3分）" $
由于 $X$ 与 $Y$ 的联合概率密度为：
$ phi(x,y)=cases(frac(1,100) & quad 10<=x<=20 quad 10<=y<=20,0 & quad "其他"), quad "（5分）" $
#align(center)[#cetz.canvas({
 import cetz.draw: *
 set-style(stroke:0.6pt)
 line((0,0),(4.8,0),mark:(end:">")); line((0,0),(0,4.8),mark:(end:">"))
 line((2,2),(4,2),(4,4),(2,4),close:true)
 line((2,2),(4,4))
 line((2,0),(2,2),stroke:(dash:"dashed"));line((4,0),(4,2),stroke:(dash:"dashed"))
 line((0,2),(2,2),stroke:(dash:"dashed"));line((0,4),(2,4),stroke:(dash:"dashed"))
 content((4.9,0),$x$);content((0,4.9),$y$);content((-0.15,-0.15),$O$)
 content((2,-0.2),[10]);content((4,-0.2),[20]);content((-0.25,2),[10]);content((-0.25,4),[20])
 content((3.4,2.6),$D_1$);content((2.6,3.4),$D_2$)
})]

所以
$ E Z&=integral.double_(D_1) 1000y times frac(1,100) dif x dif y+integral.double_(D_2) 500(x+y)times frac(1,100) dif x dif y quad "（7分）" \
&=10integral_10^20 dif y integral_y^20 y dif x+5integral_10^20 dif y integral_10^y (x+y) dif x quad "（8分）" \
&=10integral_10^20 y(20-y) dif y+5integral_10^20 (frac(3,2)y^2-10y-50) dif y quad "（9分）" \
&=frac(20000,3)+5times 1500 approx 14166.67 quad "（元）". quad "（10分）" $

*注* 当需求量超过进货量时，利润是已售进货的利润加上调货所得利润，不能仅写成 $500Y$. 计算期望还必须乘以联合密度 $1/100$，并正确确定两部分的积分区域.
]

#answer("十二、")[
*分析* 先定义地区和抽到男、女生报名表的事件，再利用全概率公式与条件概率公式. 注意两次抽取是不放回抽样，不能把两次事件当作独立事件.

*解*
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

