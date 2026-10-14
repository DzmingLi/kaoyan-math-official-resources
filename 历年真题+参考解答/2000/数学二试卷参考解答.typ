#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2000, subject: "二", title: "2000年全国硕士研究生入学考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2000 数学二试卷参考解答

= 一、填空题

#answer("1（1）")[
应填 $-frac(1,6)$.
这是一道求极限的常规题，用洛必达法则求. 如果先对分母用等价无穷小代替：$ln(1+2x^3)~2x^3$（$x->0$），更方便些.
$ "原式"=lim_(x->0)frac(arctan x-x,2x^3)=lim_(x->0)frac(frac(1,1+x^2)-1,6x^2)=-frac(1,6). $
]

#answer("1（2）")[
应填 $(ln 2-1)dif x$.
等式两边同时求微分：
$ 2^(x y)(y dif x+x dif y)ln 2=dif x+dif y. $
由原方程知，当 $x=0$ 时，$y=1$，并代入上式得
$ ln 2 dot dif x-dif x=dif y, $
即
$ dif y|_(x=0)=(ln 2-1)dif x. $
也可以先求出 $y'|_(x=0)$（原方程两边求导），但在填写答案时，可能忘了写后面的 $dif x$ 而出现错误.
]

#answer("1（3）")[
应填 $frac(pi,3)$.
虽然此广义积分不仅上限为 $+infinity$，而且函数也是无界的，但换元后，便只是界为无穷的广义积分了.
令 $t=sqrt(x-2)$，则 $x=t^2+2,dif x=2t dif t$，当 $x=2$ 时，$t=0$；当 $x->+infinity$，$t->+infinity$. 所以
$ "原式"&=integral_0^(+infinity)frac(2t dif t,(t^2+9)t) \
&=lim_(b->+infinity)(frac(2,3)arctan frac(t,3)|_0^b)=frac(pi,3). $
]

#answer("1（4）")[
应填 $y=2x+1$.
按照求函数曲线斜渐近线的方法，分别求出系数 $a,b$ 即可.
$ a=lim_(x->infinity)frac(y,x)=lim_(x->infinity)(2-frac(1,x))e^(1/x)=2; $
$ b&=lim_(x->infinity)(y-2x)=lim_(x->infinity)[2x(e^(1/x)-1)-e^(1/x)] \
&=lim_(x->infinity)[frac(2(e^(1/x)-1),frac(1,x))-e^(1/x)]=1. $
所以渐近线方程为 $y=2x+1$.
]

#answer("1（5）")[
应填 $mat(1,0,0,0;-1,2,0,0;0,-2,3,0;0,0,-3,4)$.
此类填空题，总是先进行符号推导再代入数字运算.
因为
$ B+E&=(E+A)^(-1)(E-A)+E \
&=(E+A)^(-1)[E-A+E+A] \
&=2(E+A)^(-1), $
所以
$ (E+B)^(-1)=frac(1,2)(E+A)=mat(1,0,0,0;-1,2,0,0;0,-2,3,0;0,0,-3,4). $
]

= 二、选择题

#answer("2（1）")[
应选 D.
由题目所给的条件便可分别确定系数. 因函数 $f(x)$ 在整个数轴上连续，故有 $a>=0$；又因 $lim_(x->-infinity)f(x)=0$，因而必有当 $x->-infinity$ 时 $a+e^(b x)->infinity$，所以 $b<0$. 故 D 是正确的.
这是一个简单的选择题. 从以上分析看当知道 $a>=0$ 时，系数 $b$ 都无需考虑，即可确定应选 D，因为四个选项中只有选项 D 包含 $a>=0$. 所以说这个题目的 4 个选项设计得不太好，缺少必要的迷惑性. 本题得分率高也就必然了.
]

#answer("2（2）")[
应填 C.
由 $f'(0)=0$ 知 $x=0$ 是函数 $f(x)$ 的一个驻点，由关系式知 $f''(0)=0$，即 $(0,f(0))$ 可能是拐点. 如何判断？或者分别考察 $f'(x)$ 与 $f''(x)$ 在点 $x=0$ 的左右附近是否变号，但在本题中这不容易做到；于是去求 $f(x)$ 在点 $x=0$ 处的更高阶的导数. 仍由原关系式可得 $f'''(0)=1$，从而得知点 $(0,f(0))$ 是曲线 $y=f(x)$ 的拐点，即选项 C 是正确的.
注 1：函数 $f(x)$ 的三阶导数是存在的. 这是因为等式 $f''(x)=x-[f'(x)]^2$ 的右端可导.
注 2：一般的判别法则是：若 $f(x)$ 在点 $x_0$ 处的第一个非零导数为 $f^((k))(x_0)$（$k>2$），若 $k$ 为奇数，则点 $(x_0,f(x_0))$ 是曲线 $y=f(x)$ 的拐点；若 $k$ 为偶数，则 $x_0$ 是函数 $f(x)$ 的极值点.
]

#answer("2（3）")[
应选 A.
粗看起来，选项眼花缭乱，其实仔细审题发现，A、B 两项是 $frac(f(x),g(x))$ 在区间 $(a,b)$ 内的值与两端点处的值比大小，C、D 两项是 $f(x)g(x)$ 在区间 $(a,b)$ 内的值与两端点处的值比大小. 题干中含有某种形式的导数的不等式，就想到用单调性. 题干中表述的是谁的导数呢？经验算，
$ (frac(f(x),g(x)))'=frac(g(x)f'(x)-f(x)g'(x),g^2(x))<0, $
故应选 A.
]

#answer("2（4）")[
应选 C.
由所给的极限式通过运算去求未知的极限是本题的思路. 一个方法是写出 $sin 6x$ 的泰勒公式
$ sin 6x=(6x)-frac(1,3!)(6x)^3+o(x^3), $
代入原极限式得
$ lim_(x->0)(frac(6x-36x^3+o(x^3)+x f(x),x^3))=lim_(x->0)(frac(6+f(x),x^2)-36)=0. $
即 $lim_(x->0)frac(6+f(x),x^2)=36$. 或者，因
$ lim_(x->0)frac(sin 6x+x f(x),x^3)&=lim_(x->0)frac(sin 6x-6x+6x+x f(x),x^3) \
&=lim_(x->0)[frac(sin 6x-6x,x^3)+frac(6+f(x),x^2)]=0, $
而
$ lim_(x->0)frac(sin 6x-6x,x^3)=lim_(x->0)frac(6cos 6x-6,3x^2)=lim_(x->0)frac(-36sin 6x,6x)=-36. $
总之，选项 C 正确.
解此题最易犯的错误，是不考虑 $f(x)$ 是否满足必要的条件而使用洛必达法则. 结果花费了不少时间还未必得到正确的结论. 其次不少人选 A，是认为
$ 0=lim_(x->0)frac(sin 6x+x f(x),x^3)=lim_(x->0)frac(frac(sin 6x,x)+f(x),x^2)=lim_(x->0)frac(6+f(x),x^2). $
在这里，用 6 替换 $frac(sin 6x,x)$ 是错误的！
]

#answer("2（5）")[
应选 B.
解高阶常系数线性齐次微分方程，是通过解其特征方程（代数方程）确定微分方程的通解. 本题是将此过程反过来使用：由给定的特解知特征方程的根为 $lambda_1=1,lambda_2=-1$（2 重），故特征方程是 $(lambda-1)(lambda+1)^2=0$，展开得
$ lambda^3+lambda^2-lambda-1=0, $
从而，微分方程为 $y'''+y''-y'-y=0$，即选项 B 正确.
]

说明没有什么特别难的题. 具体说来，（1）、（2）与（5）题做得较好，得分率高，即类似于试卷中的极限、连续或极值、拐点题考生已经基本熟悉与掌握了.（3）与（4）题做得不够好，反映了考生对题目中给定条件的分析与利用不够，应引起考生注意.

= 解答题

#answer("三、")[
*分析* 本题的关键是求出 $f(x)$ 的一般表达式. 在积分中，若能充分利用凑微分和初等方法可以减少不少工作量.

设 $ln x=t$，则 $x=e^t$，$f(t)=frac(ln(1+e^t),e^t)$. （1分）
$ integral f(x)dif x&=integral frac(ln(1+e^x),e^x)dif x \
&=-integral ln(1+e^x)dif e^(-x) \
&=-e^(-x)ln(1+e^x)+integral frac(1,1+e^x)dif x quad "（3分）" \
&=-e^(-x)ln(1+e^x)+integral(1-frac(e^x,1+e^x))dif x \
&=-e^(-x)ln(1+e^x)+x-ln(1+e^x)+C \
&=x-(1+e^(-x))ln(1+e^x)+C. quad "（5分）" $
注：若结论中没有常数 $C$ 扣1分.

]

#answer("四、")[
*分析* 首先要建立 $S(t)$ 的表达式. $S(t)$ 随着 $t$ 的不同取值表达式不同，即它是分段函数，因而 $integral_0^x S(t)dif t$ 也是分段函数.

由题设知
$ S(t)=cases(frac(1,2)t^2 quad 0<=t<=1,-frac(1,2)t^2+2t-1 quad 1<t<=2,1 quad t>2). quad "（2分）" $
#import "@preview/cetz:0.5.2"
#cetz.canvas({
 import cetz.draw: *
 set-style(stroke:0.6pt)
 line((0,0),(1.5,0),(0,1.5),close:true,fill:luma(85%))
 line((0,2),(2,2),(2,0))
 line((-0.4,1.9),(1.9,-0.4))
 line((-0.3,0),(3,0),mark:(end:">"));line((0,-0.25),(0,2.7),mark:(end:">"))
 content((3,-0.15),$x$);content((-0.15,2.7),$y$);content((-0.15,-0.15),$O$)
 content((-0.15,2),$1$);content((2.13,0.15),$1$);content((2.2,-0.55),$x+y=t$)
})
所以，当 $0<=x<=1$ 时，
$ integral_0^x S(t)dif t=integral_0^x frac(1,2)t^2 dif t=frac(1,6)x^3; $
当 $1<x<=2$ 时，
$ integral_0^x S(t)dif t=integral_0^1 S(t)dif t+integral_1^x S(t)dif t=-frac(x^3,6)+x^2-x+frac(1,3); $
当 $x>2$ 时，
$ integral_0^x S(t)dif t=integral_0^2 S(t)dif t+integral_2^x S(t)dif t=x-1. quad "（4分）" $
因此
$ integral_0^x S(t)dif t=cases(frac(1,6)x^3 quad 0<=x<=1,-frac(1,6)x^3+x^2-x+frac(1,3) quad 1<x<=2,x-1 quad x>2). quad "（5分）" $

本题是以几何应用的形式考查对分段函数及其积分的掌握情况. ]

#answer("五、")[
*分析* 求两个函数乘积的 $n$ 阶导数，一个方法是利用莱布尼茨公式，由于其中一个因子是 $x^2$，故其 3 阶以上的导数均为 0，所以 $f(x)$ 的 $n$ 阶导数的表达式只有 3 项. 另一个方法是先写出 $f(x)$ 的麦克劳林公式，再通过比较系数得解，这要求考生能掌握 $ln(1+x)$ 的麦克劳林公式.

*解法1* 由莱布尼兹公式
$ (u v)^((n))=u^((n))v^((0))+C_n^1 u^((n-1))v'+C_n^2 u^((n-2))v''+dots+u^((0))v^((n)) $
及 $[ln(1+x)]^((k))=frac((-1)^(k-1)(k-1)!,(1+x)^k)$（$k$ 为正整数）， （2分）
得
$ f^((n))(x)&=x^2 frac((-1)^(n-1)(n-1)!,(1+x)^n)+2n x frac((-1)^(n-2)(n-2)!,(1+x)^(n-1)) \
& quad +n(n-1)dot frac((-1)^(n-3)(n-3)!,(1+x)^(n-2)). quad "（4分）" $
所以
$ f^((n))(0)=(-1)^(n-3)n(n-1)(n-3)!=frac((-1)^(n-1)n!,n-2). quad "（5分）" $
*解法2* 由麦克劳林公式
$ f(x)=f(0)+frac(f'(0),1!)x+dots+frac(f^((n))(0),n!)x^n+o(x^n), $
及
$ x^2 ln(1+x)&=x^2[x-frac(x^2,2)+frac(x^3,3)+dots+(-1)^(n-1)frac(x^(n-2),n-2)+o(x^(n-2))] \
&=x^3-frac(x^4,2)+frac(x^5,3)+dots+(-1)^(n-1)dot frac(x^n,n-2)+o(x^n), quad "（3分）" $
比较 $x^n$ 的系数得 $frac(f^((n))(0),n!)=frac((-1)^(n-1),n-2)$，

所以 $f^((n))(0)=frac((-1)^(n-1)n!,n-2)$. （5分）

实际考试中大多数考生所用的方法是，试图通过求 $f(x)$ 的 1 至 3（或 4）阶导数总结出规律，推得一般的结果. 显然这是不容易做到的，因为从 $f'(0)=0,f''(0)=0,f'''(0)=6,f^((4))(0)=-12$，如何能归纳出 $f^((n))(0)=frac((-1)^(n-1)n!,n-2)$ 呢？而且花费的时间也较多. 这是本题失分的主要原因.
]

#answer("六、")[
*分析* 本题的（1）是（2）的一个台阶，而（1）的证明，主要是利用被积函数 $|cos t|$ 的周期性——每个周期上的积分值相等. 利用（1）的不等式和夹逼准则可求得（2）.

（1）因为 $|cos x|>=0$，且 $n pi<=x<(n+1)pi$，所以
$ integral_0^(n pi)|cos x|dif x<=S(x)<integral_0^((n+1)pi)|cos x|dif x. quad "（1分）" $
又因为 $|cos x|$ 是以 $pi$ 为周期的函数，在每个周期上积分值相等，所以
$ integral_0^(n pi)|cos x|dif x=n integral_0^pi |cos x|dif x=2n, $
$ integral_0^((n+1)pi)|cos x|dif x=2(n+1). quad "（3分）" $
因此当 $n pi<=x<(n+1)pi$ 时，有
$ 2n<=S(x)<2(n+1). quad "（4分）" $
（2）由（1）知，当 $n pi<=x<(n+1)pi$ 时，有
$ frac(2n,(n+1)pi)<frac(S(x),x)<frac(2(n+1),n pi). quad "（5分）" $
令 $x->+infinity$，由夹逼准则得
$ lim_(x->+infinity)frac(S(x),x)=frac(2,pi). quad "（6分）" $

]

#answer("七、")[
*分析* 建立方程有两个重要的方法，其一是根据问题所服从的客观规律（定理、定律或几何关系）；其二是用微元法，分析自变量的一个典型的小区间上，未知函数增量的线性主部，即微分，得到微分方程.
设 $m=m(t)$ 为 2000 年后第 $t$ 年湖泊中污染物 $A$ 的含量，此时浓度为 $frac(m,V)$. 在 $[t,t+dif t]$ 内，排入湖泊中 $A$ 的量近似为
$ frac(m_0,V)dot frac(V,6)dif t=frac(m_0,6)dif t. $
排出量近似为 $frac(m,V)dot frac(V,3)dif t=frac(m,3)dif t$，因此 $m(t)$ 的增量的线性主部——微分
$ dif m=(frac(m_0,6)-frac(m,3))dif t $
是可分离变量的方程.

设从2000年初（令此时 $t=0$）开始，第 $t$ 年湖泊中污染物 $A$ 的总量为 $m$，浓度为 $frac(m,V)$，则在时间间隔 $[t,t+dif t]$ 内，排入湖泊中 $A$ 的量为 $frac(m_0,V)dot frac(V,6)dif t=frac(m_0,6)dif t$，流出湖泊的水中 $A$ 的量为 $frac(m,V)dot frac(V,3)dif t=frac(m,3)dif t$，因而在此时间间隔内湖泊中污染物 $A$ 的改变量
$ dif m=(frac(m_0,6)-frac(m,3))dif t. quad "（3分）" $
由分离变量法解得
$ m=frac(m_0,2)-C e^(-t/3), $
代入初始条件
$ m|_(t=0)=5m_0,quad "得" C=-frac(9,2)m_0. $
于是
$ m=frac(m_0,2)(1+9e^(-t/3)). quad "（6分）" $
令 $m=m_0$，得 $t=6ln 3$，

即至多需经过 $6ln 3$ 年，湖泊中污染物 $A$ 的含量降至 $m_0$ 以内. （7分）

用微元法建立方程模型是考生一个薄弱环节.
]

#answer("八、")[
*分析* 令 $F(x)=integral_0^x f(t)dif t$，则 $F(0)=F(pi)=0$. 要完成证明，须通过条件 $integral_0^pi f(x)cos x dif x=0$，找到另一点 $xi in (0,pi)$，使 $F(xi)=0$，再两次运用罗尔中值定理即可.

*证法1* 令 $F(x)=integral_0^x f(t)dif t$，$0<=x<=pi$， （1分）
则有 $F(0)=0,F(pi)=0$. 又因为
$ 0&=integral_0^pi f(x)cos x dif x=integral_0^pi cos x dif F(x) \
&=F(x)cos x|_0^pi+integral_0^pi F(x)sin x dif x \
&=integral_0^pi F(x)sin x dif x, $
所以存在 $xi in (0,pi)$，使 $F(xi)sin xi=0$. 因若不然，则在 $(0,pi)$ 内或 $F(x)sin x$ 恒为正，或 $F(x)sin x$ 恒为负，均与 $integral_0^pi F(x)sin x dif x=0$ 矛盾. 但当 $xi in (0,pi)$ 时，$sin xi!=0$，故 $F(xi)=0$.

由上证得 $F(0)=F(xi)=F(pi)=0$（$0<xi<pi$）. （4分）

再对 $F(x)$ 在区间 $[0,xi],[xi,pi]$ 上分别用罗尔定理，知至少存在 $xi_1 in (0,xi),xi_2 in (xi,pi)$，使
$ F'(xi_1)=F'(xi_2)=0, $
即 $f(xi_1)=f(xi_2)=0$. （6分）

*证法2* 由 $integral_0^pi f(x)dif x=0$ 知，存在 $xi_1 in (0,pi)$，使 $f(xi_1)=0$. 因若不然，则在 $(0,pi)$ 内或 $f(x)$ 恒为正，或 $f(x)$ 恒为负，均与 $integral_0^pi f(x)dif x=0$ 矛盾. （1分）

若在 $(0,pi)$ 内 $f(x)=0$ 仅有一个实根 $x=xi_1$，则由 $integral_0^pi f(x)dif x=0$ 推知，$f(x)$ 在 $(0,xi_1)$ 内与 $(xi_1,pi)$ 内异号，不妨设在 $(0,xi_1)$ 内 $f(x)>0$，在 $(xi_1,pi)$ 内 $f(x)<0$. 于是再由 $integral_0^pi f(x)cos x dif x=0$ 与 $integral_0^pi f(x)dif x=0$ 及 $cos x$ 在 $[0,pi]$ 上的单调性知：
$ 0&=integral_0^pi f(x)(cos x-cos xi_1)dif x \
&=integral_0^(xi_1) f(x)(cos x-cos xi_1)dif x+integral_(xi_1)^pi f(x)(cos x-cos xi_1)dif x \
&>0, $
得出矛盾. （5分）

从而推知，在 $(0,pi)$ 内除 $xi_1$ 外，$f(x)=0$ 至少还有另一实根 $xi_2$，故知存在 $xi_1,xi_2 in (0,pi)$，$xi_1!=xi_2$，使 $f(xi_1)=f(xi_2)=0$. （6分）

注：证法1中的 $xi$ 和证法2中的 $xi_1$ 也可用积分中值定理得到.

本题是数学一、二、三、四都用的一道考题，也是本年数学卷中最难的一题. 论证中所发生的错误，值得提出来：
（1）有些考生会引进 $F(x)$，但只是说，设 $F(x)$ 为 $f(x)$ 的一个原函数，接下去就推知 $F(0)=0,F(pi)=0$. 这是不对的，因为只设 $F(x)$ 为 $f(x)$ 的一个原函数，$F(x)$ 还是不确定的，之后的事无从谈起. 这说明，许多考生不会用变上限积分 $integral_0^x f(t)dif t$ 来表示一个确定的原函数，而只会用不定积分来表示，这是教学中薄弱的一环，应引起教师们的注意.
（2）有不少考生想到用分部积分来处理，但做成
$ integral_0^pi f(x)cos x dif x=f(x)sin x|_0^pi-integral_0^pi sin x dot f'(x)dif x, $
题中未设 $f'(x)$ 存在，这样做显然不合道理. 事实上，到这一步只要再动一下脑筋，改一个方向就可得出正确的结果，但没有这么做.
（3）有许多辅导书上有下述两道题：“设 $f(x)$ 在 $[0,1]$ 上连续，且 $integral_0^1 f(x)dif x=0,integral_0^1 f(x)x dif x=0$，试证明至少存在两个不同的点 $xi_1,xi_2 in (0,1)$，使 $f(xi_1)=f(xi_2)=0$.” 另一题是“设 $f(x)$ 在 $[0,pi]$ 上连续，且 $integral_0^pi f(x)cos x dif x=0,integral_0^pi f(x)sin x dif x=0$，试证明至少存在两个不同的点 $xi_1,xi_2 in (0,pi)$，使 $f(xi_1)=f(xi_2)=0$.” 从答卷看，有的考生在论证过程中，似乎是在模仿上述两题的路子. 但实际上，由于未掌握上述两题的论证实质，仅是在形式上模仿，当然论证不好.
]

#answer("九、")[
*分析* $f(x)$ 是周期为 5 的函数，所以欲求曲线在点 $(6,f(6))$ 处的切线方程，只需求出 $f(x)$ 在点 $x=1$ 处的函数值及导数 $f'(1)$. 它们都可由给定的关系式得到. 但只能由定义求 $f'(1)$.

由 $lim_(x->0)[f(1+sin x)-3f(1-sin x)]=lim_(x->0)[8x+alpha(x)]$，得 $f(1)-3f(1)=0$，故 $f(1)=0$. （1分）

又
$ lim_(x->0)frac(f(1+sin x)-3f(1-sin x),sin x)=lim_(x->0)[frac(8x,sin x)+frac(alpha(x),x)dot frac(x,sin x)]=8, $
设 $sin x=t$，则有
$ lim_(x->0)frac(f(1+sin x)-3f(1-sin x),sin x)&=lim_(t->0)frac(f(1+t)-f(1),t)+3lim_(t->0)frac(f(1-t)-f(1),-t) \
&=4f'(1), $
所以 $f'(1)=2$. （4分）

由于 $f(x+5)=f(x)$，所以 $f(6)=f(1)=0$，$f'(6)=f'(1)=2$，故所求的切线方程为 $y=2(x-6)$， （6分）
即
$ 2x-y-12=0. quad "（7分）" $

本题是一个综合题，涉及到函数的周期性、连续性、极限、导数的定义及切线方程. 问题的难点在只能用导数的定义求 $f'(1)$，因为题目的条件只是 $f(x)$ 在 $x=1$ 处可导，所以不能用其他的工具. 大多数的错误也都出在这里.
]

#answer("十、")[
*分析* 这也是一个综合题，求旋转体体积的最大值. 此旋转体体积依赖于二抛物线交点位置，而交点的位置由参数 $a$ 确定. 所以首先求二抛物线交点坐标——参数 $a$ 的函数，再写出直线 $O A$ 的方程以及旋转体体积——也是参数 $a$ 的函数，最后求最大值.

当 $x>=0$ 时，由 $cases(y=a x^2,y=1-x^2)$ 解得 $x=frac(1,sqrt(1+a)),y=frac(a,1+a)$， （1分）
故直线 $O A$ 的方程为
$ y=frac(a x,sqrt(1+a)). quad "（2分）" $
#import "@preview/cetz:0.5.2"
#cetz.canvas({
 import cetz.draw: *
 set-style(stroke:0.6pt)
 let a=1.4
 let xa=1/calc.sqrt(1+a)
 let curve=range(0,51).map(i=>{let x=xa*i/50;(2.6*x,2.6*a*x*x)})
 line((0,0),(2.6*xa,2.6*a*xa*xa),..curve.rev(),close:true,fill:luma(85%))
 line(..range(0,61).map(i=>{let x=i/60;(2.6*x,2.6*(1-x*x))}))
 line(..range(0,51).map(i=>{let x=(xa+0.12)*i/50;(2.6*x,2.6*a*x*x)}))
 line((-0.25,0),(3,0),mark:(end:">"));line((0,-0.25),(0,3),mark:(end:">"))
 content((3.1,0),$x$);content((0,3.1),$y$);content((-0.15,-0.17),$O$)
 content((-0.15,2.6),$1$);content((2.6,-0.17),$1$);content((2.6*xa+0.18,2.6*a*xa*xa),$A$)
})
旋转体的体积
$ V&=pi integral_0^(frac(1,sqrt(1+a)))(frac(a^2 x^2,1+a)-a^2 x^4)dif x \
&=pi[frac(a^2,3(1+a))x^3-frac(a^2,5)x^5]|_0^(frac(1,sqrt(1+a))) \
&=frac(2pi,15)dot frac(a^2,(1+a)^(5/2)). quad "（4分）" $
$ frac(dif V,dif a)&=frac(2pi,15)dot frac(2a(1+a)^(5/2)-a^2 dot frac(5,2)(1+a)^(3/2),(1+a)^5) \
&=frac(pi(4a-a^2),15(1+a)^(7/2)) quad (a>0). $
令 $frac(dif V,dif a)=0$，并由 $a>0$ 得唯一驻点 $a=4$. （6分）

由题意知此旋转体在 $a=4$ 时取最大值，其最大体积为
$ V=frac(2pi,15)dot frac(16,5^(5/2))=frac(32sqrt(5),1875)pi. quad "（8分）" $

]

#answer("十一、")[
*分析* 对含有变上限定积分的题，在求 $f'(x)$ 时一般都是等式两边对 $x$ 求导以消去积分号，再解相关的微分方程便可得解. 本题的一个技巧是先用 $(x+1)$ 乘等式再求导. 第二部分的证明则利用 $f'(x)$ 的表达式以及引进适当的辅助函数或由 $f(x)=f(0)+integral_0^x f'(t)dif t$ 来证明.

（1）由题设知 $(x+1)f'(x)+(x+1)f(x)-integral_0^x f(t)dif t=0$.

上式两边对 $x$ 求导，得 $(x+1)f''(x)=-(x+2)f'(x)$. （2分）

设 $u=f'(x)$，则有 $frac(dif u,dif x)=-frac(x+2,x+1)u$，

解之得 $f'(x)=u=frac(C e^(-x),x+1)$.

由 $f(0)=1$ 及 $f'(0)+f(0)=0$，知 $f'(0)=-1$，从而 $C=-1$，

因此
$ f'(x)=-frac(e^(-x),x+1). quad "（4分）" $
（2）*证法1* 当 $x>=0$ 时，$f'(x)<0$，即 $f(x)$ 单调减少，又 $f(0)=1$，所以
$ f(x)<=f(0)=1. quad "（5分）" $
设 $phi(x)=f(x)-e^(-x)$，则 $phi(0)=0$，$phi'(x)=f'(x)+e^(-x)=frac(x,x+1)e^(-x)$.

当 $x>=0$ 时，$phi'(x)>=0$，即 $phi(x)$ 单调增加，因而
$ phi(x)>=phi(0)=0,quad "即有" f(x)>=e^(-x). $
综上所述，当 $x>=0$ 时，成立不等式 $e^(-x)<=f(x)<=1$. （8分）

*证法2* 由于 $integral_0^x f'(t)dif t=f(x)-f(0)=f(x)-1$，

所以
$ f(x)=1-integral_0^x frac(e^(-t),t+1)dif t. quad "（5分）" $
注意到当 $x>=0$ 时，
$ 0<=integral_0^x frac(e^(-t),t+1)dif t<=integral_0^x e^(-t)dif t=1-e^(-x), quad "（7分）" $
因而 $e^(-x)<=f(x)<=1$. （8分）

]

#answer("十二、")[
*分析* 先把 $A,B$ 的含意搞清楚，导出 $A^2,A^4$ 的表达式；再把所给的方程尽量化简，最后代入数据求解. 本题考查矩阵运算及解线性方程组.

由题设得
$ A=mat(1;2;1)(1,frac(1,2),0)=mat(1,frac(1,2),0;2,1,0;1,frac(1,2),0),quad B=(1,frac(1,2),0)mat(1;2;1)=2. quad "（1分）" $
又 $A^2=alpha beta^T alpha beta^T=alpha(beta^T alpha)beta^T=2A$，$A^4=8A$.

代入原方程，得 $16A x=8A x+16x+gamma$，

即 $8(A-2E)x=gamma$（其中 $E$ 是3阶单位矩阵）. （3分）

令 $x=(x_1,x_2,x_3)^T$，代入上式，得到非齐次线性方程组
$ cases(-x_1+frac(1,2)x_2=0,2x_1-x_2=0,x_1+frac(1,2)x_2-2x_3=1), $
解其对应的齐次方程组，得通解
$ xi=k mat(1;2;1) quad (k "为任意常数"), quad "（4分）" $
显然，非齐次线性方程组的一个特解为
$ eta^*=mat(0;0;-frac(1,2)), quad "（5分）" $
于是所求方程的解为 $x=xi+eta^*$，即
$ x=k mat(1;2;1)+mat(0;0;-frac(1,2)) quad (k "为任意常数"). quad "（6分）" $

]

#answer("十三、")[
*分析* 向量组 $alpha_1,alpha_2,alpha_3$ 是不含参数的，所以它的秩能求出，从而可以决定 $beta_1,beta_2,beta_3$ 的线性相关性. 由此可导出 $a$ 与 $b$ 的一个关系式. 再根据条件 $beta_3$ 可由 $alpha_1,alpha_2,alpha_3$ 线性表示，便能解出 $b,a$ 的值.

*解法1* $alpha_1$ 和 $alpha_2$ 线性无关，$alpha_3=3alpha_1+2alpha_2$，所以向量组 $alpha_1,alpha_2,alpha_3$ 线性相关，且秩为2，$alpha_1,alpha_2$ 是它的一个极大线性无关组. （2分）

由于向量组 $beta_1,beta_2,beta_3$ 与 $alpha_1,alpha_2,alpha_3$ 具有相同的秩，故 $beta_1,beta_2,beta_3$ 线性相关，从而
$ mat(delim:"|",0,a,b;1,2,1;-1,1,0)=0, $
由此解得 $a=3b$. （5分）

又 $beta_3$ 可由 $alpha_1,alpha_2,alpha_3$ 线性表示，从而可由 $alpha_1,alpha_2$ 线性表示，所以 $alpha_1,alpha_2,beta_3$ 线性相关. 于是
$ mat(delim:"|",1,3,b;2,0,1;-3,1,0)=0, $
解之得 $2b-10=0$.

于是得 $a=15,b=5$. （7分）

*解法2* 因 $beta_3$ 可由 $alpha_1,alpha_2,alpha_3$ 线性表示，故线性方程组
$ mat(1,3,9;2,0,6;-3,1,-7)mat(x_1;x_2;x_3)=mat(b;1;0) "有解". quad "（1分）" $
对增广矩阵的行施行初等变换：
$ mat(augment:#3,1,3,9,b;2,0,6,1;-3,1,-7,0)&->mat(augment:#3,1,3,9,b;0,-6,-12,1-2b;0,10,20,3b) \
&->mat(augment:#3,1,3,9,b;0,1,2,frac(2b-1,6);0,1,2,frac(3b,10)) \
&->mat(augment:#3,1,3,9,b;0,1,2,frac(2b-1,6);0,0,0,frac(3b,10)-frac(2b-1,6)). $
由非齐次线性方程组有解的条件知 $frac(3b,10)-frac(2b-1,6)=0$，得 $b=5$. （4分）

又 $alpha_1$ 和 $alpha_2$ 线性无关，$alpha_3=3alpha_1+2alpha_2$，所以向量组 $alpha_1,alpha_2,alpha_3$ 的秩为2. （5分）

由题设知向量组 $beta_1,beta_2,beta_3$ 的秩也是2，从而 $mat(delim:"|",0,a,5;1,2,1;-1,1,0)=0$，解之得 $a=15$. （7分）
]

