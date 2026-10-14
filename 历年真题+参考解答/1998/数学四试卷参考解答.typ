#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 1998, subject: "四", title: "1998年全国工学、经济学硕士研究生入学考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#import "@preview/cetz:0.5.2"
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 1998 数学四试卷参考解答

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
*解* 对 $A^* B A=2B A-8E$ 两边左乘 $A$、右乘 $A^(-1)$，利用 $A A^*=|A|E$，得
$ |A|B=2A B-8E, quad B=8(2A-|A|E)^(-1). $
又 $|A|=-2$，故
$ 2A-|A|E=mat(4,0,0;0,-2,0;0,0,4), $
所以
$ B=8mat(1/4,0,0;0,-1/2,0;0,0,1/4)=mat(2,0,0;0,-4,0;0,0,2). $
]

#answer("1（4）")[
*解* 因为 $A^*=|A|A^(-1)=2A^(-1)$，故
$ |2A^* B^(-1)|=|4A^(-1)B^(-1)|=4^n|A^(-1)||B^(-1)|=frac(4^n,2(-3))=-frac(2^(2n-1),3). $
]

#answer("1（5）")[
*解* 由二项分布的数学期望和方差公式，
$ E X=100p, quad sigma(X)=sqrt(D X)=sqrt(100p(1-p)). $
函数 $p(1-p)$ 在 $p=1/2$ 处取得最大值 $1/4$，所以标准差的最大值为 $5$，此时 $p=1/2$.
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
*解* 由于向量组 $bold(alpha),bold(beta),bold(gamma)$ 线性无关，故 $bold(alpha),bold(beta)$ 也线性无关. 又 $bold(alpha),bold(beta),bold(delta)$ 线性相关，故 $bold(delta)$ 可由 $bold(alpha),bold(beta)$ 线性表示. 因此
$ r(bold(alpha),bold(beta),bold(gamma),bold(delta))=r(bold(alpha),bold(beta),bold(gamma)), $
方程 $x_1 bold(alpha)+x_2 bold(beta)+x_3 bold(gamma)=bold(delta)$ 有解，应选 C.
]

#answer("2（4）")[
*解* 根据事件独立性的性质，若 $A,B,C$ 相互独立，则 $A+B$ 与 $C$ 独立，$A-B$ 与 $C$ 独立，$A B$ 与 $C$ 独立. 独立事件取补事件仍独立，所以排除 A、C、D，应选 B.
]

#answer("2（5）")[
*解* 由分布函数性质，$lim_(x->+infinity)F(x)=1$，故
$ 1=a lim_(x->+infinity) F_1(x)-b lim_(x->+infinity)F_2(x)=a-b. $
四组数值中只有 A 满足 $a-b=1$，且此时 $F=3F_1/5+2F_2/5$ 是两个分布函数的凸组合，确为分布函数. 应选 A.
]

= 解答题

#answer("三、")[
因为
$ lim_(x -> 0^+)(frac(tan x,x))^(frac(1,x^2))=lim_(x -> 0^+)[(1+frac(tan x-x,x))^(frac(x,tan x-x))]^(frac(tan x-x,x^3)), quad "（2分）" $
其中
$ lim_(x -> 0^+) frac(tan x-x,x^3)=lim_(x -> 0^+) frac(sec^2 x-1,3x^2)=frac(1,3), quad "（4分）" $
故
$ lim_(x -> 0^+)(frac(tan x,x))^(frac(1,x^2))=e^(frac(1,3)). quad "（5分）" $
取 $x=frac(1,n)$，则原式 $=e^(frac(1,3))$. （6分）

注：对数列极限直接用洛必达法则，扣2分.
]

#answer("四、")[
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

#answer("五、")[
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

#answer("六、")[
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

#answer("七、")[
*分析* 题目没有要求 $xi!=eta$，只要证明存在 $eta in(a,b)$ 使 $f(eta)+f'(eta)=1$ 即可，取 $xi=eta$ 就满足结论. 一般的证法是构造 $F(x)=e^x f(x)$，应用拉格朗日中值定理及题设条件.

*解*
令 $F(x)=e^x f(x)$，则 $F(x)$ 在 $[a,b]$ 上满足拉格朗日中值定理条件，故存在 $eta in (a,b)$，使得
$ frac(e^b f(b)-e^a f(a),b-a)=e^eta[f(eta)+f'(eta)]. quad "（3分）" $
由条件 $f(a)=f(b)=1$，得
$ frac(e^b-e^a,b-a)=e^eta[f(eta)+f'(eta)]. quad "（1）" quad "（4分）" $
再令 $phi(x)=e^x$，则 $phi(x)$ 在 $[a,b]$ 上满足拉格朗日中值定理条件，故存在 $xi in (a,b)$，使得
$ frac(e^b-e^a,b-a)=e^xi. quad "（2）" quad "（5分）" $
综合（1）、（2）两式，有
$ e^(eta-xi)[f(eta)+f'(eta)]=1. quad "（6分）" $

*证法一* 令 $g(x)=e^x[f(x)-1]$，则 $g(a)=g(b)=0$. 由罗尔定理，存在 $eta in(a,b)$ 使 $g'(eta)=0$，即 $f(eta)+f'(eta)=1$. 取 $xi=eta$ 即得结论.

*证法三* 令 $F(x)=e^(x-xi)f(x)-x$. 取 $xi$ 使
$ e^xi=frac(e^b-e^a,b-a). $
由指数函数的拉格朗日中值定理，这样的 $xi in(a,b)$ 存在. 此时 $F(a)=F(b)$，再用罗尔定理得到 $eta in(a,b)$ 使
$ F'(eta)=e^(eta-xi)[f(eta)+f'(eta)]-1=0. $

*错误证法的分析* 若先由罗尔定理找 $f'(eta)=0$，再令 $xi=eta+ln f(eta)$，就不能保证这个 $xi$ 属于 $(a,b)$，故此证明不成立. 本题的难点是构造恰当的辅助函数.
]

#answer("八、")[
*分析* 为求旋转体体积，须先确定面积最小所对应的 $a$. 因为只给定 $a<1$，应分 $0<a<1$ 与 $a<=0$ 两种情况计算 $S_1+S_2$，利用导数求极小值，再比较两种情况下的最小值. 计算面积时须注意积分上下限与被积函数的正负，确保结果为正值.

*解*
（1）当 $0<a<1$ 时（如图1），
#align(center)[#cetz.canvas({
 import cetz.draw: *
 set-style(stroke:0.6pt)
 let a=0.7
 let c1=range(0,31).map(i=>{let x=i*a/30;(3*x,3*x*x)})
 let c2=range(0,31).map(i=>{let x=a+i*(1-a)/30;(3*x,3*x*x)})
 line((0,0),(3*a,3*a*a),..c1.rev(),close:true,fill:luma(92%))
 line((3*a,3*a*a),(3,3*a),..c2.rev(),close:true,fill:luma(92%))
 line((-0.3,0),(3.8,0),mark:(end:">"));line((0,-0.3),(0,3.7),mark:(end:">"))
 line((0,0),(3,3*a));line(..range(0,61).map(i=>{let x=i/60;(3*x,3*x*x)}))
 line((3*a,0),(3*a,3*a*a),stroke:(dash:"dashed"));line((3,0),(3,3))
 content((3.9,0),$x$);content((0,3.8),$y$);content((-0.15,-0.15),$O$)
 content((3*a,-0.2),$a$);content((3,-0.2),[1]);content((1.3,0.6),$S_1$);content((2.7,1.9),$S_2$)
 content((1.1,1.2),$y=a x$);content((2.8,3.2),$y=x^2$)
})]
图1

$ S=S_1+S_2&=integral_0^a (a x-x^2) dif x+integral_a^1 (x^2-a x) dif x \
&=(frac(a x^2,2)-frac(x^3,3))|_0^a+(frac(x^3,3)-frac(a x^2,2))|_a^1 \
&=frac(a^3,3)-frac(a,2)+frac(1,3). quad "（2分）" $
令 $S'=a^2-frac(1,2)=0$，得 $a=frac(1,sqrt(2))$. 又 $S''(frac(1,sqrt(2)))=sqrt(2)>0$，则 $S(frac(1,sqrt(2)))$ 是极小值即最小值. 其值为
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

多数考生只考虑 $0<=a<1$，未讨论 $a<=0$ 的情况. 虽然不影响最后结果，但没有比较两种情况下的面积，论证不完备，一般扣2分. 利用定积分计算面积和旋转体体积是重点考查内容.
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
*分析* 先利用初等行变换判断方程组（Ⅰ）的解的情况并写出通解. 将通解分别代入方程组（Ⅱ）的三个方程，求出 $m,n,t$；最后还须验证（Ⅱ）的通解与（Ⅰ）完全相同.

*解*
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

即当 $m=2,n=4,t=6$ 时，方程组（Ⅰ）的全部解都是方程组（Ⅱ）的解. 这时，方程组（Ⅱ）化为
$ "（Ⅱ）" cases(x_1+2x_2-x_3-x_4=-5,4x_2-x_3-2x_4=-11,x_3-2x_4=-5). $
设方程组（Ⅱ）的系数矩阵为 $A_2$，增广矩阵为 $overline(A)_2$，对 $overline(A)_2$ 施以初等行变换，得
$ overline(A)_2=mat(augment:#4,1,2,-1,-1,-5;0,4,-1,-2,-11;0,0,1,-2,-5)->mat(augment:#4,1,0,0,-1,-2;0,1,0,-1,-4;0,0,1,-2,-5). quad "（6分）" $
于是方程组（Ⅱ）的通解为
$ X=vec(-2,-4,-5,0)+k vec(1,1,2,1) quad (k "为任意常数"). $
显然，方程组（Ⅰ）、（Ⅱ）的解完全相同，即方程组（Ⅰ）、（Ⅱ）同解. （7分）
]

#answer("十一、")[
*分析* 由题意，$X$ 的概率密度为
$ f(x)=cases(1/20 & 10<=x<=30,0 & "其他"). $
利润是需求量 $X$ 和进货量 $a$ 的函数，也是随机变量. 关键是正确写出供大于求、供不应求时的利润函数关系，再根据期望不少于9280建立不等式.

*解*
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

考生的典型错误有：写错 $M_a$ 的表达式；计算 $E M_a$ 时遗漏 $X$ 的密度函数；解错不等式. 这些错误反映出部分考生的基本功欠扎实.
]

#answer("十二、")[
*分析* 各 $X_i$ 只取0和1，因此 $(X_1,X_2)$ 的可能取值为 $(0,0),(0,1),(1,0),(1,1)$，须逐一计算概率. 事件 $X_1=1,X_2=0$ 表示抽到一等品，而 $X_1=1,X_2=1$ 表示同时为一等品和二等品，是不可能事件. 求相关系数时须分别计算 $E X_1,E X_2,D X_1,D X_2,E X_1 X_2$.

*解*
（1）设事件 $A_i=$“抽到 $i$ 等品”（$i=1,2,3$）. 由题意知 $A_1,A_2,A_3$ 两两互不相容，
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

常见错误是把 $X_1,X_2$ 当作独立变量，从而写出 $P{X_1=1,X_2=1}=P{X_1=1}P{X_2=1}=0.08$. 事实上两变量不独立，此事件的概率是零.
]

