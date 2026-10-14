#import "../template.typ": exam, answer
#show: exam.with(year: 1988, subject: "三", title: "1988年全国硕士研究生入学统一考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 1988 数学三试卷参考解答

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
#align(center)[#image("1988-数学三-事件.svg", width: 48mm)]
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
对增广矩阵作初等行变换，有
$ (A,E)&=mat(augment: #(vline:4),0,0,0,1,1,0,0,0;0,0,1,0,0,1,0,0;0,1,0,0,0,0,1,0;1,0,0,0,0,0,0,1) \
&tilde mat(augment: #(vline:4),1,0,0,0,0,0,0,1;0,1,0,0,0,0,1,0;0,0,1,0,0,1,0,0;0,0,0,1,1,0,0,0). $
所以 $A^(-1)=mat(0,0,0,1;0,0,1,0;0,1,0,0;1,0,0,0)$.
注：可用初等变换或分块矩阵求逆的方法. 若利用分块矩阵的公式
$ mat(O,A;B,O)^(-1)=mat(O,B^(-1);A^(-1),O), $
也可得到上述结果.
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
这是 $0/0$ 型. 首先将 $x^x$ 化为 $e^(x ln x)$，则分子化为 $e^(x ln x)-1$，可用等价无穷小代换，也可以使用洛必达法则.
*解法一*
$ "原式"=lim_(x->1)frac(e^(x ln x)-1,x ln x)=lim_(x->1)frac(x ln x,x ln x)=1. $
*解法二*
$ "原式"&=lim_(x->1)frac(e^(x ln x)-1,x ln x)=lim_(x->1)frac(1,x) dot lim_(x->1)frac(e^(x ln x)-1,ln x) \
&=1 dot lim_(x->1)frac(e^(x ln x)(1+ln x),1/x)=1. $
注：要掌握常见的等价无穷小：$x->0$ 时，
$ x tilde sin x tilde arcsin x tilde tan x tilde arctan x tilde ln(1+x) tilde e^x-1, $
$ 1-cos x tilde frac(1,2)x^2,quad (1+x)^a-1 tilde a x,quad a^x-1 tilde x ln a quad (a>0,a!=1). $
利用等价无穷小代换求极限需注意：代换只能用于乘除法运算中，而不能用于加减；必须 $x->0$；上述公式中的 $x$ 位置可以是任意无穷小函数.
]

#answer("四、")[
$ integral_0^3 frac(dif x,(1+x)sqrt(x))=2integral_0^3 frac(dif sqrt(x),1+x)=2arctan sqrt(x)|_0^3=frac(2,3)pi. $
]

#answer("五、")[
$u$ 为隐函数方程 $u+e^u=x y$ 确定，需先求出 $frac(partial u,partial x)$、$frac(partial u,partial y)$.
对 $u+e^u=x y$ 两端求全微分得
$ dif u+e^u dif u=x dif y+y dif x,quad dif u=frac(x dif y+y dif x,1+e^u). $
故 $frac(partial u,partial x)=frac(y,1+e^u),frac(partial u,partial y)=frac(x,1+e^u)$.
$ frac(partial^2 u,partial x partial y)&=frac(partial,partial y)(frac(y,1+e^u))=frac(1+e^u-y e^u frac(partial u,partial y),(1+e^u)^2) \
&=frac((1+e^u)^2-x y e^u,(1+e^u)^3)=frac(1,1+e^u)-frac(x y e^u,(1+e^u)^3). $
注：也可直接由公式求两个偏导. $F(x,y,u)=u+e^u-x y=0$，则
$ frac(partial u,partial x)=-frac(F'_x,F'_u)=frac(y,1+e^u),quad frac(partial u,partial y)=-frac(F'_y,F'_u)=frac(x,1+e^u). $
]

#answer("六、")[
先画出草图. 设曲线 $y=x^2$（$x>=0$）上切点坐标为 $(x_0,x_0^2)$，由 $f'(x)=2x$，知切线斜率为 $f'(x_0)=2x_0$，所以切线方程为
$ y-x_0^2=2x_0(x-x_0),quad y=2x_0 x-x_0^2. $
令 $y=0$ 得 $x=x_0/2$，即切线与 $x$ 轴交点为 $(x_0/2,0)$，则
$ S=integral_0^(x_0^2)(frac(y+x_0^2,2x_0)-sqrt(y))dif y=frac(1,12). $
整理得 $S=frac(1,12)x_0^3=frac(1,12)$，解之即得 $x_0=1$，即 $A(1,1)$，故切线方程为 $y=2x-1$.
#align(center)[#image("1988-数学三-切线区域.svg", width: 40mm)]
平面绕 $x$ 轴旋转一周形成的体积为
$ V_x=integral_0^1 pi(x^2)^2 dif x-integral_(1/2)^1 pi(2x-1)^2 dif x=frac(pi,30). $
注：注意在求积分的时候选取适当的积分变量.
]

#block(breakable: false)[
#answer("七、")[
交换积分次序得
$ "原式"&=integral_0^(pi/6)dif x integral_0^x frac(cos x,x)dif y \
&=integral_0^(pi/6)frac(cos x,x)x dif x=integral_0^(pi/6)cos x dif x=frac(1,2). $
注：本题也可用分部积分法，令 $u=integral_y^(pi/6)frac(cos x,x)dif x,v=y$ 来求之，但相对交换积分次序求解要复杂得多.
]
]

#answer("八、")[
令 $u_n=frac((n+1)!,n^(n+1))$，则
$ lim_(n->infinity)frac(u_(n+1),u_n)&=lim_(n->infinity)frac(frac((n+2)!,(n+1)^(n+2)),frac((n+1)!,n^(n+1))) \
&=lim_(n->infinity)frac(1,(1+1/n)^n)frac(n(n+2),(n+1)^2)=frac(1,e)<1. $
故达朗贝尔判别法知，级数 $sum_(n=1)^infinity frac((n+1)!,n^(n+1))$ 收敛.
注：此题考查正项级数收敛的达朗贝尔判别法（比值判别法）：$lim_(n->infinity)frac(u_(n+1),u_n)=l$，则 $l<1$ 时，级数 $sum_(n=1)^infinity u_n$ 收敛；$l>1$ 时，发散；$l=1$ 时，不能做出结论. 使用达朗贝尔判别法不需另找级数比较，但当 $l=1$ 时必须使用其他办法讨论.
]

#answer("九、")[
显然应使用比较判别法. 因为 $|a_n b_n|<=frac(a_n^2+b_n^2,2)$，而 $sum_(n=1)^infinity a_n^2$ 和 $sum_(n=1)^infinity b_n^2$ 均收敛，则 $sum_(n=1)^infinity frac(1,2)(a_n^2+b_n^2)$ 也收敛.
由比较判别法知 $sum_(n=1)^infinity|a_n b_n|$ 收敛，即 $sum_(n=1)^infinity a_n b_n$ 绝对收敛.
注：此题考查了绝对收敛的概念和正项级数收敛的比较判别法：若 $0<=u_n<=v_n$，则级数 $sum_(n=1)^infinity v_n$ 收敛时，级数 $sum_(n=1)^infinity u_n$ 收敛；当级数 $sum_(n=1)^infinity u_n$ 发散时，级数 $sum_(n=1)^infinity v_n$ 发散.
]

#answer("十、")[
（1）当需求量等于供给量时，有 $a/p^2=b p$，即 $p^3=a/b$，因此均衡价格为 $p_e=(a/b)^(1/3)$.
（2）由条件知
$ frac(dif p,dif t)=k[D(p)-S(p)]=k(a/p^2-b p)=frac(k b,p^2)(a/b-p^3). $
因此有 $frac(dif p,dif t)=frac(k b,p^2)(p_e^3-p^3)$，即 $frac(p^2 dif p,p^3-p_e^3)=-k b dif t$.
两边积分得 $p^3=p_e^3+C e^(-3k b t)$. 由条件 $p(0)=1$，可得 $C=1-p_e^3$，于是价格函数为
$ p(t)=[p_e^3+(1-p_e^3)e^(-3k b t)]^(1/3). $
（3）$lim_(t->infinity)p(t)=lim_(t->infinity)[p_e^3+(1-p_e^3)e^(-3k b t)]^(1/3)=p_e$.
]

#answer("十一、")[
$A A^*=A^* A=|A|E$，所以 $A^*=|A|A^(-1)=frac(1,2)A^(-1)$. 于是
$ |(3A)^(-1)-2A^*|&=|frac(1,3)A^(-1)-2 dot frac(1,2)A^(-1)| \
&=|-frac(2,3)A^(-1)|=(-frac(2,3))^3|A^(-1)| \
&=-frac(8,27)times 2=-frac(16,27). $
注：涉及到 $A^*$ 的问题，首先应联想到关系式 $A A^*=A^* A=|A|E$.
]

#answer("十二、")[
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

#answer("十三、")[
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

#answer("十四、")[
设 $A_i={"箱中有"i"件残次品"}$（$i=0,1,2$），$P(A_0)=0.8,P(A_1)=0.1,P(A_2)=0.1$. 这是完备事件集. 又设 $B={"顾客买下该箱"}$，则
$ P(B|A_0)=1,quad P(B|A_1)=frac(binom(19,4),binom(20,4))=frac(4,5),quad P(B|A_2)=frac(binom(18,4),binom(20,4))=frac(12,19). $
（1）由全概率公式可知
$ alpha=P(B)=sum_(i=0)^2 P(B|A_i)P(A_i)=1times 0.8+frac(4,5)times 0.1+frac(12,19)times 0.1 approx 0.943. $
（2）由贝叶斯公式可知
$ beta=P(A_0|B)=frac(P(B|A_0)P(A_0),P(B))=frac(1times 0.8,0.943) approx 0.848. $
]

#answer("十五、")[
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

#answer("十六、")[
（1）设 $A=$“抽查到被盗索赔户”，则 $p=P(A)=0.2$. 由题意，$X tilde B(n,p)=B(100,0.2)$. 因此分布律为
$ P{X=k}=binom(100,k)0.2^k 0.8^(100-k),quad k=0,1,...,100. $
（2）$E(X)=n p=20,D(X)=n p(1-p)=16$. 根据棣莫佛—拉普拉斯定理，
$ P{14<=X<=30}&=P{frac(14-20,4)<=frac(X-20,4)<=frac(30-20,4)} \
&=P{-1.5<=frac(X-20,4)<=2.5} approx Phi(2.5)-Phi(-1.5) \
&=Phi(2.5)-[1-Phi(1.5)] \
&=0.994-1+0.933=0.927. $
]
