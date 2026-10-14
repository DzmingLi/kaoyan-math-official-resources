#import "../template.typ": exam, answer
#show: exam.with(year: 1988, subject: "四", title: "1988年全国硕士研究生入学统一考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 1988 数学四试卷参考解答

= 一、判断题

#answer("（1）")[
错误. 举反例：$lim_(x->0)x=0,lim_(x->0)x dot frac(1,x)=1$，但 $lim_(x->0)frac(1,x)$ 不存在.
注：此题实际考查极限的四则运算法则中的乘法和除法法则. 事实上，$g(x)=frac(f(x)g(x),f(x))$，故如果 $lim_(x->x_0)f(x)$ 不为零，则 $lim_(x->x_0)g(x)$ 存在且等于 $frac(lim_(x->x_0)f(x)g(x),lim_(x->x_0)f(x))$.
]

#answer("（2）")[
错误. 反例如下：$f(x)=|x|$ 在 $x=0$ 点取极小值，但 $f'(0)$ 不存在.
]

#answer("（3）")[
错误. 令 $x=a-t$，则
$ integral_0^a f(x)dif x=-integral_a^0 f(a-t)dif t=integral_0^a f(a-t)dif t=integral_0^a f(a-x)dif x. $
或取 $f(x)=1$，则 $integral_0^a f(x)dif x=integral_0^a dif x=a$，而 $-integral_0^a f(a-x)dif x=-integral_0^a dif x=-a$，故原式不一定成立.
]

#answer("（4）")[
可用反证法. 若秩 $r(A)=n$，即 $A$ 可逆，则 $A^(-1)A B=A^(-1)O$，即 $B=O$，与题设矛盾，所以必有 $r(A)<n$.
或由 $A B=O$，得 $B$ 的列向量是齐次方程组 $A x=0$ 的解. 由于 $B!=0$，则 $A x=0$ 有非零解，从而 $r(A)<n$.
故原命题正确.
]

#answer("（5）")[
使用图解法，取 $A=G_1 union G_2,B=G_1,C=G_2 union G_3$，则有 $A union C=B union C=G_1 union G_2 union G_3$，但 $A!=B$，故结论错误.
#align(center)[#image("1988-数学四-事件.svg", width: 48mm)]
注：画出文氏图可以使集合和事件的运算直观、简洁.
]

= 二、填空题

#answer("（1）")[
① 根据变上限求导公式，$f'(x)=e^(-x^2/2)$.
② 当 $x in (-infinity,+infinity)$ 时，$f'(x)>0$，故 $f(x)$ 单调增加.
③ 因为
$ f(-x)=integral_0^(-x)e^(-t^2/2)dif t=-integral_0^x e^(-u^2/2)dif u=-f(x), $
所以 $f(x)$ 为奇函数.
④ $f''(x)=-x e^(-x^2/2)$，令 $f''(x)=0$，解得 $x=0$，而 $f(0)=0$，故拐点为 $(0,0)$.
⑤ 当 $x<0$ 时，$f''(x)>0$；当 $x>0$ 时，$f''(x)<0$，故 $f(x)$ 图形当 $x<0$ 时凹，当 $x>0$ 时凸.
⑥ 因为
$ lim_(x->+infinity)integral_0^x e^(-t^2/2)dif t=sqrt(pi/2),quad lim_(x->-infinity)integral_0^x e^(-t^2/2)dif t=-sqrt(pi/2), $
所以有两条水平渐近线 $y=sqrt(pi/2)$ 和 $y=-sqrt(pi/2)$.
注：第⑥问关键要知道泊松积分 $integral_0^(+infinity)e^(-x^2)dif x=frac(sqrt(pi),2)$，推导如下：令 $I=integral_0^(+infinity)e^(-x^2)dif x$，则
$ I^2&=integral_0^(+infinity)e^(-x^2)dif x dot integral_0^(+infinity)e^(-y^2)dif y \
&=integral_0^(+infinity)integral_0^(+infinity)e^(-(x^2+y^2))dif x dif y \
&=integral.double_(x>=0,y>=0)e^(-(x^2+y^2))dif sigma. $
将直角坐标系变换到极坐标系，得
$ I^2=integral_0^(pi/2)integral_0^(+infinity)e^(-r^2)r dif r dif theta=frac(pi,2)(-frac(1,2))e^(-r^2)|_0^(+infinity)=frac(pi,4). $
因此 $I=frac(sqrt(pi),2)$，从而
$ integral_0^(+infinity)e^(-t^2/2)dif t=sqrt(2)integral_0^(+infinity)e^(-(t/sqrt(2))^2)dif(t/sqrt(2))=sqrt(2)integral_0^(+infinity)e^(-x^2)dif x=sqrt(pi/2). $
]

#answer("（2）")[
*解法一* 先利用行列式的性质，再展开：
$ "原式"&=mat(delim:"|",1,1,1,0;0,0,-1,1;0,-1,0,1;0,1,1,1) \
&=mat(delim:"|",0,-1,1;-1,0,1;1,1,1)=mat(delim:"|",0,-1,1;0,1,2;1,1,1)=-3. $
*解法二* 注意到每一行元素之和均为 3，可先把第二、三、四列元素加到第一列，得
$ "原式"&=mat(delim:"|",3,1,1,0;3,1,0,1;3,0,1,1;3,1,1,1) \
&=3mat(delim:"|",1,1,1,0;1,1,0,1;1,0,1,1;1,1,1,1) \
&=3mat(delim:"|",1,0,0,-1;1,0,-1,0;1,-1,0,0;1,0,0,0) \
&=3(-1)^(4+1)mat(delim:"|",0,0,-1;0,-1,0;-1,0,0) \
&=3mat(delim:"|",-1,0,0;0,-1,0;0,0,-1)=-3. $
注：解法二中计算副对角线行列式时，可用公式
$ mat(delim:"|",0,0,dots,0,a_n;0,0,dots,a_(n-1),ast;dots.v,dots.v,dots.up,dots.v,dots.v;0,a_2,dots,ast,ast;a_1,ast,dots,ast,ast)=(-1)^(n(n-1)/2)a_n a_(n-1) dots a_2 a_1. $
]

#answer("（3）")[
将 $A$ 分块，利用公式 $mat(O,A_1;B_1,O)^(-1)=mat(O,B_1^(-1);A_1^(-1),O)$ 求解.
$ A^(-1)=mat(augment: #(vline:2,hline:2),0,0,0,1;0,0,1,0;0,1,0,0;1,0,0,0)^(-1)=mat(augment: #(vline:2,hline:2),0,0,0,1;0,0,1,0;0,1,0,0;1,0,0,0)=A. $
注：本题也可用初等变换求解.
]

#answer("（4）")[
由 $P(A union B)=P(A)+P(B)-P(A B)$，得：
（1）若 $A,B$ 互不相容，则 $A B=nothing$，从而 $P(A B)=0$，故由加法公式得
$ P(B)=P(A union B)-P(A)=0.7-0.4=0.3. $
（2）若 $A,B$ 相互独立，则 $P(A B)=P(A)P(B)$，根据加法公式有
$ P(A union B)=P(A)+P(B)-P(A B)=P(A)+P(B)-P(A)P(B). $
得 $P(B)=frac(P(A union B)-P(A),1-P(A))=frac(0.7-0.4,1-0.4)=0.5$.
]

= 解答题

#answer("三、")[
$f(x)$ 是分段函数. 当 $x>1$ 和 $x<=1$ 时，$f(x)$ 是初等函数，必可导. 因此只需考查在分段点 $x=1$ 处的可导性. 由可导必连续，因而可由连续性和可导性列出两个关系式，求得参数 $a,b$ 的值.
$f(x)$ 在 $x=1$ 处可导，则必连续，因此 $lim_(x->1^+)f(x)=f(1)$，得 $a+b=1$.
$f(x)$ 在 $x=1$ 可导，则左、右导数相等，即 $f'_+(1)=f'_-(1)$.
$ f'_+(1)&=lim_(x->1^+)frac(f(x)-f(1),x-1)=lim_(x->1^+)frac(a x+b-1,x-1) \
&=lim_(x->1^+)frac(a x+b-(a+b),x-1)=a, $
$ f'_-(1)=lim_(x->1^-)frac(f(x)-f(1),x-1)=lim_(x->1^-)frac(x^2-1,x-1)=2. $
综上可得 $a=2,b=-1$.
注：本题考查函数可导的概念. 利用了两个重要性质：函数在某点可导，则在该点连续；函数在某点可导，则在该点左、右导数相等. 注意左、右导数的求法应根据导数的定义.
]

#answer("四、")[
这是 $0 times infinity$ 型，可化为 $0/0$ 或 $infinity/infinity$ 型再用洛必达法则，本题显然化为 $0/0$ 型更简便.
$ "原式"=lim_(x->1)frac(1-x^2,cot(frac(pi,2)x))=lim_(x->1)frac(-2x,-frac(pi,2)csc^2(frac(pi,2)x))=frac(4,pi). $
]

#answer("五、")[
对于实际问题，首先要根据已知构造数学模型.
设围成圆的一段铁丝长为 $x$，围成正方形的一段铁丝长为 $a-x$，圆与正方形的面积之和为 $S$，则
$ S=pi(frac(x,2pi))^2+(frac(a-x,4))^2=frac(x^2,4pi)+frac(1,16)x^2-frac(a,8)x+frac(a^2,16). $
令 $S'=frac(x,2pi)+frac(x,8)-frac(a,8)=0$，得 $x=frac(pi a,4+pi)$，且 $S''=frac(1,2pi)+frac(1,8)>0$.
所以当围成圆的铁丝长为 $frac(pi a,4+pi)$，围成正方形的铁丝长为 $a-frac(pi a,4+pi)=frac(4a,4+pi)$ 时，圆和正方形的面积之和最小.
]

#block(breakable: false)[
#answer("六、")[
$ integral_0^3 frac(dif x,(1+x)sqrt(x))=2integral_0^3 frac(dif sqrt(x),1+x)=2arctan sqrt(x)|_0^3=frac(2,3)pi. $
]

]

#block(breakable: false)[
#answer("七、")[
$ frac(partial u,partial x)=e^(x/y) dot frac(1,y), $
$ frac(partial^2 u,partial x partial y)=frac(e^(x/y) dot (-frac(x,y^2))y-e^(x/y),y^2)=e^(x/y)(-frac(x,y^3)-frac(1,y^2)). $
]

]

#block(breakable: false)[
#answer("八、")[
交换积分次序得
$ "原式"&=integral_0^(pi/6)dif x integral_0^x frac(cos x,x)dif y=integral_0^(pi/6)frac(cos x,x)x dif x \
&=integral_0^(pi/6)cos x dif x=frac(1,2). $
注：本题也可用分部积分法，令 $u=integral_y^(pi/6)frac(cos x,x)dif x,v=y$，但相比交换积分次序的方法要复杂得多，大家可试求之.
]

]

#answer("九、")[
先画出草图. 设曲线 $y=x^2$（$x>=0$）上切点坐标为 $(x_0,x_0^2)$，由 $f'(x)=2x$，知切线斜率为 $f'(x_0)=2x_0$，所以切线方程为
$ y-x_0^2=2x_0(x-x_0),quad y=2x_0 x-x_0^2. $
令 $y=0$ 得 $x=x_0/2$，即切线与 $x$ 轴交点为 $(x_0/2,0)$，则
$ S=integral_0^(x_0^2)(frac(y+x_0^2,2x_0)-sqrt(y))dif y=frac(1,12). $
整理得 $S=frac(1,12)x_0^3=frac(1,12)$，解之即得 $x_0=1$，即 $A(1,1)$，故切线方程为 $y=2x-1$.
#align(center)[#image("1988-数学四-切线区域.svg", width: 40mm)]
平面绕 $x$ 轴旋转一周形成的体积为
$ V_x=integral_0^1 pi(x^2)^2 dif x-integral_(1/2)^1 pi(2x-1)^2 dif x=frac(pi,30). $
注：注意在求积分的时候选取适当的积分变量.
]

#block(breakable: false)[
#answer("十、")[
已知矩阵等式，要证 $A$ 可逆，可设法把已知等式改写为 $A B=E$ 的形式，则 $A$ 可逆，且 $A^(-1)=B$.
由 $A^2-3A-2E=O$，得 $A(A-3E)=2E$，即
$ A(frac(1,2)(A-3E))=E. $
所以 $A$ 可逆，且 $A^(-1)=frac(1,2)(A-3E)$.
注：矩阵可逆的证明，可根据定义. 只要能构造出另一个矩阵 $B$，使 $A B=E$，则 $A^(-1)=B$.
]

]

#answer("十一、")[
设 $k_1 beta_1+k_2 beta_2+...+k_s beta_s=0$，即
$ k_1(alpha_1+alpha_2)+k_2(alpha_2+alpha_3)+...+k_s(alpha_s+alpha_1)=0, $
也即 $(k_1+k_s)alpha_1+(k_1+k_2)alpha_2+...+(k_(s-1)+k_s)alpha_s=0$.
由题设 $alpha_1,alpha_2,...,alpha_s$ 线性无关，可知必有
$ cases(k_1+k_s=0,k_1+k_2=0,dots,k_(s-1)+k_s=0). $
其系数行列式为
$ D=mat(delim:"|",1,0,0,dots,0,1;1,1,0,dots,0,0;0,1,1,dots,0,0;dots.v,dots.v,dots.v,dots,dots.v,dots.v;0,0,0,dots,1,1)=1+(-1)^(1+s). $
当 $s$ 为奇数时，$D=2!=0$，即 $k_1,k_2,...,k_s$ 必全为零，所以向量组 $beta_1,beta_2,...,beta_s$ 线性无关；当 $s$ 为偶数时，$D=0$，即存在不全为零的 $k_1,k_2,...,k_s$，所以向量组 $beta_1,beta_2,...,beta_s$ 线性相关.
注：对向量组相关性的证明，最基本的方法就是定义.
]

#answer("十二、")[
化增广矩阵为阶梯形：
$ overline(A)&=mat(augment: #(vline:4),1,1,2,3,1;1,3,6,1,3;3,-1,-k_1,15,3;1,-5,-10,12,k_2) \
&arrow.r mat(augment: #(vline:4),1,1,2,3,1;0,2,4,-2,2;0,-4,-6-k_1,6,0;0,-6,-12,9,k_2-1) \
&arrow.r dots arrow.r mat(augment: #(vline:4),1,1,2,0,-k_2-4;0,1,2,0,(k_2+8)/3;0,0,2-k_1,0,2(1-k_2)/3;0,0,0,1,(k_2+5)/3). $
可见，当 $k_1=2$ 且 $k_2!=1$ 时，$r(A)=3,r(overline(A))=4$，即 $r(A)!=r(overline(A))$，此时方程组无解；当 $k_1!=2$ 时，$r(A)=r(overline(A))=4$，此时方程组有唯一解；当 $k_1=2$ 且 $k_2=1$ 时，$r(A)=r(overline(A))=3<4$，此时方程组有无穷多解：
$ mat(augment: #(vline:4),1,1,2,0,-5;0,1,2,0,3;0,0,0,0,0;0,0,0,1,2) arrow.r mat(augment: #(vline:4),1,0,0,0,-8;0,1,2,0,3;0,0,0,0,0;0,0,0,1,2). $
其等价方程组为 $cases(x_1=-8,x_2+2x_3=3,x_4=2)$.
取 $x_3$ 为自由未知量，得通解为
$ mat(x_1;x_2;x_3;x_4)=mat(-8;3;0;2)+k mat(0;-2;1;0), $
其中 $k$ 为任意常数.
]

#answer("十三、")[
设 $A_i={"箱中有"i"件残次品"}$（$i=0,1,2$），$P(A_0)=0.8,P(A_1)=0.1,P(A_2)=0.1$. 这是完备事件集. 又设 $B={"顾客买下该箱"}$，则
$ P(B|A_0)=1,quad P(B|A_1)=frac(binom(19,4),binom(20,4))=frac(4,5),quad P(B|A_2)=frac(binom(18,4),binom(20,4))=frac(12,19). $
（1）由全概率公式可知
$ alpha=P(B)=sum_(i=0)^2 P(B|A_i)P(A_i)=1times 0.8+frac(4,5)times 0.1+frac(12,19)times 0.1 approx 0.943. $
（2）由贝叶斯公式可知
$ beta=P(A_0|B)=frac(P(B|A_0)P(A_0),P(B))=frac(1times 0.8,0.943) approx 0.848. $
]

#answer("十四、")[
*解法一（分布函数法）* 由题设可知 $X$ 的密度函数为 $f_X(x)=cases(1 & 1<x<2,0 & "其他")$.
对任意实数，定义 $Y$ 的分布函数为 $F_Y(y)=P(Y<=y)=P(e^(2X)<=y)$.
当 $y<=e^2$ 时，$F_Y(y)=P(e^(2X)<=y)=0$；当 $e^2<y<e^4$ 时，
$ F_Y(y)&=P(e^(2X)<=y)=P(X<=frac(1,2)ln y) \
&=integral_(-infinity)^(frac(1,2)ln y)f_X(x)dif x=integral_1^(frac(1,2)ln y)dif x=frac(1,2)ln y-1. $
当 $y>=e^4$ 时，$F_Y(y)=P(Y<=y)=1$. 从而
$ F_Y(y)=cases(0 & y<=e^2,frac(1,2)ln y-1 & e^2<y<e^4,1 & y>=e^4). $
于是 $f_Y(y)=F'_Y(y)=cases(frac(1,2y) & e^2<y<e^4,0 & "其他")$.
*解法二（公式法）* $X$ 的密度函数为 $p(x)=cases(1 & 1<x<2,0 & "其他")$. 设 $y=g(x)=e^(2x)$，其反函数 $x=h(y)=frac(1,2)ln y,h'(y)=frac(1,2y)$.
$ alpha=min{g(1),g(2)}=e^2,quad beta=max{g(1),g(2)}=e^4. $
于是
$ f_Y(y)=cases(p(h(y))|h'(y)| & alpha<y<beta,0 & "其他")=cases(frac(1,2y) & e^2<y<e^4,0 & "其他"). $
]

#answer("十五、")[
在求离散型随机变量的分布列时，考虑确定这个随机变量的可能取值和取这些值的概率.
设在取到正品之前，已取出 $X$ 只废品. 由题意知 $X$ 可能取的值为 $0,1,2$，可得
$ P(X=0)=frac(8,10)=frac(4,5),quad P(X=1)=frac(2,10)times frac(8,9)=frac(8,45), $
$ P(X=2)=frac(2,10)times frac(1,9)times frac(8,8)=frac(1,45). $
且
$ E X=0 dot P(X=0)+1 dot P(X=1)+2 dot P(X=2)=frac(8,45)+2times frac(1,45)=frac(2,9). $
而
$ E X^2=0^2 P(X=0)+1^2 P(X=1)+2^2 P(X=2)=frac(8,45)+4times frac(1,45)=frac(4,15). $
从而 $D X=E X^2-(E X)^2=frac(4,15)-(frac(2,9))^2=frac(88,405)$.
]
