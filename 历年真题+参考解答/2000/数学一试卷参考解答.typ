#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2000, subject: "一", title: "2000年全国硕士研究生入学考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2000 数学一试卷参考解答

= 一、填空题

#answer("1（1）")[
$frac(pi,4)$.
这是计算定积分的基本题，用定积分换元法可以算得
$ integral_0^1 sqrt(2x-x^2)dif x=integral_0^1 sqrt(1-(x-1)^2)dif x=integral_0^(pi/2) cos^2 t dif t=frac(pi,4). $
其中换元 $x-1=sin t$.
因为是一道填空题，不必列出计算过程，所以也可以由定积分的几何意义获得结果. 此定积分表示圆 $x^2+y^2-2x=0$ 围成的面积的 $frac(1,4)$，此圆半径为 1，故得 $frac(pi,4)$.
]

#answer("1（2）")[
$frac(x-1,1)=frac(y+2,-4)=frac(z-2,6)$.
令 $F(x,y,z)=x^2+2y^2+3z^2-21$，则
$ F'_x(1,-2,2)=2,quad F'_y(1,-2,2)=-8,quad F'_z(1,-2,2)=12. $
故所求的法线方程为
$ frac(x-1,1)=frac(y+2,-4)=frac(z-2,6). $
这也是一道基本题，没有什么计算量，知识点单纯. 但遗憾的是不少考生填了切平面方程：$(x-1)-4(y+2)+6(z-2)=0$.
]

#answer("1（3）")[
$y=C_1+frac(C_2,x^2)$.
这是 $y''=f(x,y')$ 型的可降阶微分方程.
令 $p=y'$，则 $p'+frac(3,x)p=0,p=C x^(-3)$.
因此
$ y=integral C x^(-3)dif x=C_1-frac(C,2)x^(-2)=C_1+frac(C_2,x^2) quad (C_2=-frac(C,2)). $
这是一道十分基础的题.
]

#answer("1（4）")[
$-1$.
非齐次线性方程组无解的充要条件是系数矩阵的秩不等于增广矩阵的秩. 但对于未知数个数与方程个数相等的方程组来说，可先考察系数矩阵的行列式为 0 的情况，解得 $a=-1$ 或 $3$.
当满足时，方程组无解或有无穷多解. 所以应进一步考察是哪种情形，为此，只要将具体的 $a$ 代入方程组看一看就可以了.
当 $a=-1$ 时，系数矩阵的秩为 2，增广矩阵的秩为 3，故方程组无解；当 $a=3$ 时，系数矩阵的秩为 2，增广矩阵的秩也为 2，故方程组有无穷多解，因而 $a=3$ 不符合条件.
很多考生填 $a=-1$ 或 $3$，说明考生对方程组解的理论理解得不深刻，掌握得不透彻、不扎实.
]

#answer("1（5）")[
$frac(2,3)$.
根据题意，事件 $A,B$ 相互独立，$P(overline(A)overline(B))=frac(1,9)$，$P(A overline(B))=P(B overline(A))$.
根据 $A$ 与 $B$ 的相互独立性及 $P(A overline(B))=P(B overline(A))$，知 $P(A)=P(B)$，因而
$ P(overline(A)overline(B))=(1-P(A))^2. $
而 $P(overline(A)overline(B))=frac(1,9)$，故 $P(A)=frac(2,3)$.
但是大约有三分之一的考生填 $frac(4,9)$. 是什么原因呢？恐怕是将相互独立与互不相容概念混淆了. 考生误认为 $A$ 与 $B$ 互不相容，从而
$ frac(1,9)&=P(overline(A)overline(B))=P(overline(A union B)) \
&=1-P(A union B)=1-[P(A)+P(B)-P(A B)] \
&=1-(P(A)+P(B))=1-2P(A), $
于是 $P(A)=frac(4,9)$.
]

= 二、选择题

#answer("2（1）")[
应选 A.
粗看起来，选项眼花缭乱，其实仔细审题发现，A、B 两项是 $frac(f(x),g(x))$ 在区间 $(a,b)$ 内的值与两端点处的值比大小，C、D 两项是 $f(x)g(x)$ 在区间 $(a,b)$ 内的值与两端点处的值比大小. 题干中含有某种形式的导数的不等式，就想到用单调性. 题干中表述的是谁的导数呢？经验算，
$ (frac(f(x),g(x)))'=frac(g(x)f'(x)-f(x)g'(x),g^2(x))<0, $
故应选 A.
]

#answer("2（2）")[
应选 C.
这是一道考查学生对于函数的奇偶性与积分区域对称性理解的选择题. 定积分、二重积分、三重积分中都出现过类似的考题，这次试题考查的知识点设置在第一型曲面积分上. 试题设置在第一型曲面积分上与设置在三重积分上是一样的. 注意到 $S$ 为球面的 $z>=0$ 部分，所以在 $S$ 上 $x$ 与 $y$ 轮换对称，故 A 与 B 两个选项是一样的. A 的左边，被积函数是 $x$ 的奇函数，$S$ 又对于 $y O z$ 平面对称，故 $integral.double_S x dif S=0$，而右边 $integral.double_(S_1)x dif S>0$，所以 A、B 都不对. 绝大部分考生的确不选 A 和 B. 至于 C 和 D，被考生选的几乎各占一半. 其实应该选 C，理由如下：由于 $S$ 关于 $y O z$ 平面和 $x O z$ 平面都对称，故
$ integral.double_S z dif S=4integral.double_(S_1)z dif S, $
这是容易想到的. 再一层，在 $S_1$ 上，$x$ 与 $z$ 为轮换对称，所以
$ integral.double_(S_1)z dif S=integral.double_(S_1)x dif S, $
故知 C 对. 至于 D，很多考生误选的原因恐怕在于：认为 $integral.double_S x y z dif S$ 的被积函数 $x y z$ 既是 $x$ 的奇函数，又是 $y$ 的奇函数，就误认为 $x y z$ 是“偶函数”，这是不正确的，不能对二个变量的函数混在一起谈奇偶性. 事实上，对于固定的 $y$ 和 $z$，$x y z$ 为 $x$ 的奇函数，而对于固定的 $y$ 和 $z$，区域 $S$ 关于 $y O z$ 平面对称，所以 $integral.double_S x y z dif S=0$，而右边 $integral.double_(S_1)x y z dif S>0$，所以 D 不对. 读者可以看到以上分析仍归结到一元的对称性与奇偶性上去. 应该指出，类似的题目，也可在第一型曲线积分、第二型曲线积分或第二型曲面积分上出现，应引起考生注意.
]

#answer("2（3）")[
应选 D.
实际上，D 的通项是两个收敛级数 $sum_(n=1)^infinity u_(n+1)$ 与 $sum_(n=1)^infinity u_n$ 的通项的和，由收敛级数的性质知 D 正确. 但是有相当多的考生误选 A 或 B，其原因在于误认为 $sum_(n=1)^infinity u_n$ 为正项级数. 也有的考生选 C，大概把 C 的通项也理解为两个收敛级数通项的差，其实这是不对的（注意二个脚号的奇、偶性）.
]

#answer("2（4）")[
应选 D.
向量组 $alpha_1,dots,alpha_m$（$m<n$）线性无关，向量组 $alpha_1,dots,alpha_m$ 可由向量组 $beta_1,dots,beta_m$ 线性表示，从而推知 $beta_1,dots,beta_m$ 必线性无关（否则 $alpha_1,dots,alpha_m$ 必线性相关了），所以 A 是 $beta_1,dots,beta_m$ 线性无关的充分条件. 但 A 不是 $beta_1,dots,beta_m$ 线性无关的必要条件. 事实上，$alpha_1,dots,alpha_m$ 与 $beta_1,dots,beta_m$ 是两个不相干的向量组，$alpha_1,dots,alpha_m$ 线性无关，$beta_1,dots,beta_m$ 线性无关，而 $m<n$，所以这两组之间可以毫无关系.（如果 $m=n$（不可能 $m>n$），那么由 $beta_1,dots,beta_m$ 线性无关，推知它是 $n$ 维向量空间中的一组基，故 $alpha_1,dots,alpha_m$ 必可由 $beta_1,dots,beta_m$ 线性表示，即推知 A 也是必要条件）.
至于 B，向量组 $beta_1,dots,beta_m$ 可由 $alpha_1,dots,alpha_m$ 线性表示，没有说怎么表示，所以 $beta_1,dots,beta_m$ 既可线性相关，也可线性无关，所以 B 既非充分条件，又非必要条件.
至于 C，实际上是将 A、B 合并在一起的说法，但 B 既非充分又非必要，故 C 只是充分（由 A），并非必要.
D 是正确的. 理由是，D 的充要条件是两向量组的秩相等，而 $alpha_1,dots,alpha_m$ 的秩为 $m$，这恰恰是 $beta_1,dots,beta_m$ 线性无关的充要条件.
实际考下来，有相当多的考生答 C，其原因大概是误认为两向量组等价的充要条件是两向量组的秩相等，这是不对的.
]

#answer("2（5）")[
应选 B.
只要记住 $xi$ 与 $eta$ 不相关的充要条件是 $"cov"(xi,eta)=0$，而经过简单的计算即可验证 B 为正确选项.
本题“二维随机变量 $(X,Y)$ 服从二维正态分布”这个条件是多余的. 
]

= 解答题

#answer("三、")[
*分析* 由于函数中含有绝对值 $|x|$，故应分别考虑极限
$ lim_(x->0^+)(frac(2+e^(1/x),1+e^(4/x))+frac(sin x,|x|)) quad "和" quad lim_(x->0^-)(frac(2+e^(1/x),1+e^(4/x))+frac(sin x,|x|)). $

因
$ lim_(x->0^+)(frac(2+e^(1/x),1+e^(4/x))+frac(sin x,|x|))=lim_(x->0^+)(frac(2e^(-4/x)+e^(-3/x),e^(-4/x)+1)+frac(sin x,x))=1, quad "（2分）" $
$ lim_(x->0^-)(frac(2+e^(1/x),1+e^(4/x))+frac(sin x,|x|))=lim_(x->0^-)(frac(2+e^(1/x),1+e^(4/x))-frac(sin x,x))=2-1=1, quad "（4分）" $
故原式 $=1$. （5分）

考生的典型错误是将 $lim_(x->0)(frac(2+e^(1/x),1+e^(4/x))+frac(sin x,|x|))$ 分成两个极限 $lim_(x->0)frac(2+e^(1/x),1+e^(4/x))$ 和 $lim_(x->0)frac(sin x,|x|)$ 去讨论，而这两个极限都不存在，就答原题的极限不存在. 今后，考生一旦遇到求带有绝对值函数的极限就应考虑左右极限.
]

#answer("四、")[
*分析* 这是一道求包含抽象函数的二阶偏导的问题，是一道常规题.

$ frac(partial z,partial x)=y f'_1+frac(1,y)f'_2-frac(y,x^2)g', quad "（2分）" $
$ frac(partial^2 z,partial x partial y)&=f'_1+y(x f''_(11)-frac(x,y^2)f''_(12))-frac(1,y^2)f'_2+frac(1,y)(x f''_(21)-frac(x,y^2)f''_(22)) \
& quad -frac(1,x^2)g'-frac(y,x^3)g'' \
&=f'_1-frac(1,y^2)f'_2+x y f''_(11)-frac(x,y^3)f''_(22)-frac(1,x^2)g'-frac(y,x^3)g''. quad "（5分）" $

考生的错误主要是：漏项、不会计算、将 $frac(partial,partial x)g(frac(y,x))$ 写成 $g'_x(frac(y,x))(-frac(y,x^2))$，$g'$ 应是对中间变量 $frac(y,x)$ 求导，不是对 $x$ 求导.
]

#answer("五、")[
*分析* 由 $R>1$，故原点 $(0,0)$ 包含在圆周 $L$ 内，而原点 $(0,0)$ 是被积函数的奇点. 因此，不满足格林公式条件，须通过作一包含原点的封闭曲线挖去原点，此题最好取该封闭曲线为椭圆以便于计算.

$ P=frac(-y,4x^2+y^2),quad Q=frac(x,4x^2+y^2), $
$ frac(partial P,partial y)=frac(y^2-4x^2,(4x^2+y^2)^2)=frac(partial Q,partial x),quad (x,y)!=(0,0). quad "（1分）" $
作足够小椭圆 $C:cases(x=frac(delta,2)cos theta,y=delta sin theta)$（$theta in [0,2pi]$，$C$ 取逆时针方向）. （2分）

于是由格林公式有
$ integral.cont_(L+C^-) frac(x dif y-y dif x,4x^2+y^2)=0, quad "（4分）" $
即得
$ integral.cont_L frac(x dif y-y dif x,4x^2+y^2)&=integral.cont_C frac(x dif y-y dif x,4x^2+y^2) \
&=integral_0^(2pi) frac(frac(1,2)delta^2,delta^2)dif theta=pi. quad "（6分）" $

计算平面曲线积分及与此相关的题，是常见考题. 被积表达式为已知并且明确是以曲线积分形式给出的题，一般有 5 种解法. 一般解法是选取参数方程，直接用参数式计算之，考生中有不少用此法. 用 $x=1+R cos t,y=R sin t$，$t$ 从 0 到 $2pi$，则
$ I=integral_0^(2pi)frac(R^2+R cos t,4(1+R cos t)^2+R^2 sin^2 t)dif t, $
计算复杂，做不到底. 由于是封闭曲线积分，一些考生验算 $frac(partial Q,partial x)-frac(partial P,partial y)$，发现结果为零. 于是有的考生认为根据格林公式，此积分为 0. 这就错了！因为 $P,Q$ 在点 $(0,0)$ 不具有连续、可导性质，即 $L$ 所包围的区域不是一个单连通区域，格林公式不能用于 $L$ 所包围的区域. 另一类考生也知道格林公式不能用于 $L$ 所包围的区域，但由于去掉点 $(0,0)$ 后有 $frac(partial Q,partial x)=frac(partial P,partial y)$，所以在 $L$ 内部另作一包围点 $(0,0)$ 的封闭曲线，不过是作 $x=delta cos t,y=delta sin t$，$delta>0$ 足够小，得到
$ I=integral_0^(2pi)frac(delta^2 dif t,4delta^2 cos^2 t+delta^2 sin^2 t)=integral_0^(2pi)frac(dif t,1+3cos^2 t), $
但这个积分不会计算了，仍是做不到底. 这些考生为什么不能因势利导，仔细观察分母的形式，作一封闭曲线 $x=delta cos t,y=2delta sin t$（$t$ 从 0 到 $2pi$）呢？这是一条包围原点的椭圆. 于是 $I=integral_0^(2pi)frac(1,2)dif t=pi$. 当然也有些考生见此题面熟，记住有所谓“循环量”这么一个东西，不管对不对就将 $2pi$ 写上，这当然不对.
]

#answer("六、")[
*分析* 曲面积分（第一型或第二型），是常见的考题. 题中出现的曲面积分的形式和解法，可以与曲线积分类比. 本题相当于给了一个在单连通区域内的封闭曲线的曲线积分，其中含有待定的具有连续一阶导数的函数，且已知对该区域内的任意封闭曲线该曲线积分恒为零，求该待定函数. 正确的做法是，由高斯公式，推得 $f(x)$ 应满足的充要条件是
$ frac(partial P,partial x)+frac(partial Q,partial y)+frac(partial R,partial z)=x f'(x)+f(x)-x f(x)-e^(2x)=0. $
其中 $P,Q,R$ 按通常理解. 然后解微分方程，并注意到利用条件 $lim_(x->0^+)f(x)=1$ 确定常数 $C$.

由题设和高斯公式得
$ 0&=∯_S x f(x)dif y dif z-x y f(x)dif z dif x-e^(2x)z dif x dif y \
&=plus.minus integral.triple_V (x f'(x)+f(x)-x f(x)-e^(2x))dif V, quad "（1分）" $
其中 $V$ 为 $S$ 围成的有界闭区域，当有向曲面 $S$ 的法向量指向外侧时，取“$+$”号，当有向曲面 $S$ 的法向量指向内侧时，取“$-$”号. 由 $S$ 的任意性，知
$ x f'(x)+f(x)-x f(x)-e^(2x)=0,quad x>0, quad "（2分）" $
即 $f'(x)+(frac(1,x)-1)f(x)=frac(1,x)e^(2x),quad x>0$.

按一阶线性非齐次微分方程通解公式，有
$ f(x)&=e^(integral(1-frac(1,x))dif x)[integral frac(1,x)e^(2x)dot e^(integral(frac(1,x)-1)dif x)dif x+C] \
&=frac(e^x,x)[integral frac(1,x)e^(2x)dot x e^(-x)dif x+C] \
&=frac(e^x,x)(e^x+C). quad "（5分）" $
由于 $lim_(x->0^+) f(x)=lim_(x->0^+)[frac(e^(2x)+C e^x,x)]=1$，故必有 $lim_(x->0^+)(e^(2x)+C e^x)=0$，即 $C+1=0$，从而 $C=-1$.

于是
$ f(x)=frac(e^x,x)(e^x-1). quad "（7分）" $

在历届考题中未出现过这种题型，有新意，但从第二型曲线积分中得到启发（或类比），所以答卷尚可. 由条件 $lim_(x->0^+)f(x)=1$ 定 $C$，也有新意，但考生还是容易掌握的.
典型的错误有：将 $frac(partial P,partial x)+frac(partial Q,partial y)+frac(partial R,partial z)=0$ 写成 $frac(partial P,partial x)=frac(partial Q,partial y)=frac(partial R,partial z)$，成为一个方程组，当然 $f(x)$ 解不出来了！这是似是而非的类比，对高斯公式没有掌握. 另一种典型错误是用了斯托克斯公式，要知道，现在给的是封闭曲面的曲面积分，而不是空间封闭曲线的曲线积分. 再一种是不会或不知道如何去定 $C$，只知由 $f(x_0)=y_0$ 定 $C$，而不知由 $lim_(x->x_0)f(x)=y_0$ 定 $C$.
]

#answer("七、")[
*分析* 这是一道常规题，解法规范，但考虑在 $x=-3$ 处级数的收敛时应运用收敛级数的性质.

因为
$ lim_(n->infinity)frac([3^n+(-2)^n]n,[3^(n+1)+(-2)^(n+1)](n+1))=lim_(n->infinity)frac([1+(-frac(2,3))^n]n,3[1+(-frac(2,3))^(n+1)](n+1))=frac(1,3), quad "（2分）" $
所以收敛半径为3，收敛区间为 $(-3,3)$. （3分）

当 $x=3$ 时，因为 $frac(3^n,3^n+(-2)^n)dot frac(1,n)>frac(1,2n)$，且 $sum_(n=1)^infinity frac(1,n)$ 发散，所以原级数在点 $x=3$ 处发散. （4分）

当 $x=-3$ 时，由于
$ frac((-3)^n,3^n+(-2)^n)dot frac(1,n)=(-1)^n frac(1,n)-frac(2^n,3^n+(-2)^n)dot frac(1,n), $
且 $sum_(n=1)^infinity frac((-1)^n,n)$ 与 $sum_(n=1)^infinity frac(2^n,3^n+(-2)^n)dot frac(1,n)$ 都收敛，所以原级数在点 $x=-3$ 处收敛. （6分）

下面来说一下答卷中的典型错误. 为简单起见，命
$ a_n=frac(1,3^n+(-2)^n)dot frac(1,n). $
第一类错误是，求收敛半径时不用极限，例如写成 $frac(a_(n+1),a_n)=frac(1,3)$，就说收敛半径为 3. 或者写成由 $frac(a_(n+1),a_n)|x|<1$ 推知 $|x|<3$ 收敛. 其次，在 $x=-3$ 处，级数成为 $sum_(n=1)^infinity a_n(-3)^n$，明明是个交错级数，却用正项级数的比较判别法的极限形式，说成由
$ lim_(n->infinity)frac(a_n(-3)^n,(-1)^n frac(1,n))=1 $
及 $sum_(n=1)^infinity (-1)^n frac(1,n)$ 收敛，故 $sum_(n=1)^infinity a_n(-3)^n$ 收敛. 更多的人知道 $sum_(n=1)^infinity a_n(-3)^n$ 是交错级数，但却立即说由莱布尼茨判别法推知收敛，好像交错级数必定收敛，而不需其他条件. 也有一些考生说出莱布尼茨判别法的两个条件，但并未去验证 $a_n 3^n>=a_(n+1)3^(n+1)$（事实上，此式是不成立的，当然无法去验证）.
]

#answer("八、")[
*分析* 这是一道物理应用题，求重心问题有规范化的解法，步骤清楚，没有难点，但关键是建立一个合适的坐标系.

*解法1* 设所考虑的球体为 $Omega$，以 $Omega$ 的球心为原点 $O$，射线 $O P_0$ 为正 $x$ 轴建立直角坐标系，则点 $P_0$ 的坐标为 $(R,0,0)$，球面的方程为
$ x^2+y^2+z^2=R^2. $
#import "@preview/cetz:0.5.2"
#let sphere-diagram(origin-bottom:false)=cetz.canvas({
 import cetz.draw: *
 set-style(stroke:0.6pt)
 let cy=if origin-bottom {1.3}else{0}
 circle((0,cy),radius:1.3)
 for (a,b) in ((0,180),(180,360)) {
  let dash=if a==0 {"dashed"}else{"solid"}
  line(..range(0,51).map(i=>{let t=(a+(b - a)*i/50)*1deg;(1.3*calc.cos(t),cy+0.48*calc.sin(t))}),stroke:(dash:dash))
  line(..range(0,51).map(i=>{let t=(a+(b - a)*i/50)*1deg;(-0.55*calc.sin(t),cy+1.3*calc.cos(t))}),stroke:(dash:dash))
 }
 line((-1.6,0),(1.8,0),mark:(end:">"));line((0,-1.6+cy),(0,1.8+cy),mark:(end:">"))
 line(if origin-bottom {(0,0)}else{(1.6,1.6)},(-1.55,-1.55),mark:(end:">"))
 content((1.85,-0.15),$y$);content((0.15,1.85+cy),$z$);content((-1.7,-1.55),$x$)
 content((-0.37,cy+0.75),$Omega$)
 if origin-bottom {circle((0,cy),radius:0.025,fill:black);content((0.2,cy),$tilde(O)$);content((0.2,-0.2),$P_0$)}else{content((0.18,-0.17),$O$);content((-0.85,-0.75),$P_0$)}
})
#sphere-diagram()
设 $Omega$ 的重心位置为 $(overline(x),overline(y),overline(z))$，由对称性，得
$ overline(y)=0,quad overline(z)=0, quad "（2分）" $
$ overline(x)=frac(integral.triple_Omega x dot k[(x-R)^2+y^2+z^2]dif V,integral.triple_Omega k[(x-R)^2+y^2+z^2]dif V). $
而
$ integral.triple_Omega [(x-R)^2+y^2+z^2]dif V \
&=integral.triple_Omega (x^2+y^2+z^2)dif V+integral.triple_Omega R^2 dif V \
&=8integral_0^(pi/2)dif theta integral_0^(pi/2)dif phi integral_0^R r^2 dot r^2 sin phi dif r+frac(4,3)pi R^5 \
&=frac(32,15)pi R^5, quad "（4分）" $
$ integral.triple_Omega x[(x-R)^2+y^2+z^2]dif V&=-2R integral.triple_Omega x^2 dif V \
&=-frac(2R,3)integral.triple_Omega (x^2+y^2+z^2)dif V \
&=-frac(8,15)pi R^6, quad "（6分）" $
故 $overline(x)=-frac(R,4)$.

因此，球体 $Omega$ 的重心位置为 $(-frac(R,4),0,0)$. （7分）

*解法2* 设所考虑的球体为 $Omega$，球心为 $tilde(O)$，以定点 $P_0$ 为原点，射线 $P_0 tilde(O)$ 为正 $z$ 轴建立直角坐标系，则球面的方程为
$ x^2+y^2+z^2=2R z. $
#sphere-diagram(origin-bottom:true)
设 $Omega$ 的重心位置为 $(overline(x),overline(y),overline(z))$，由对称性，得
$ overline(x)=0,quad overline(y)=0, quad "（2分）" $
$ overline(z)=frac(integral.triple_Omega k z(x^2+y^2+z^2)dif V,integral.triple_Omega k(x^2+y^2+z^2)dif V). $
$ integral.triple_Omega (x^2+y^2+z^2)dif V&=4integral_0^(pi/2)dif theta integral_0^(pi/2)dif phi integral_0^(2R cos phi)r^4 sin phi dif r \
&=frac(32,15)pi R^5, quad "（4分）" $
而
$ integral.triple_Omega z(x^2+y^2+z^2)dif V&=4integral_0^(pi/2)dif theta integral_0^(pi/2)dif phi integral_0^(2R cos phi)r^5 sin phi cos phi dif r \
&=frac(64,3)pi R^6 integral_0^(pi/2)cos^7 phi sin phi dif phi \
&=frac(8,3)pi R^6, quad "（6分）" $
故 $overline(z)=frac(5,4)R$.

因此，球体 $Omega$ 的重心位置为 $(0,0,frac(5,4)R)$. （7分）

考生的典型错误有：
（1）不说明如何建立坐标系，就说球面方程如何如何，或者根本不说球面方程如何. 请考生注意，原题并未说坐标如何，因此在建立方程前，必须说清楚坐标系是如何建立的，否则变成无源之水.
（2）题中说 $P_0$ 为球面上任意一点，有的考生就将 $P_0$ 设成 $(x_0,y_0,z_0)$. 要知道，题中并未给出坐标系，要由考生自选，那么考生就可适当选取坐标系，使点 $P_0$ 的坐标变简单. 这说明很多学生还不清楚“坐标系”是人为的这个基本观点.
（3）在建立坐标系之后（例如设 $P_0$ 为坐标原点，$z$ 轴通过球心），最方便的当然用球面坐标，但也有少数考生采用直角坐标，当然是困难重重，做不到底.
（4）采用球面坐标系之后，体积元素、积分限、甚至距离平方都有出错的，积分计算错的、三重积分列成曲面积分的等等. 总之，考生对建立坐标系和三重积分都较生疏.
]

#answer("九、")[
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

#answer("十、")[
*分析* 为求矩阵 $B$，运用矩阵运算规则，将 $A B A^(-1)=B A^(-1)+3E$ 化为
$ B=3(E-frac(A^*,det A))^(-1). $
因此，只要求出 $det A$ 及 $(E-frac(A^*,det A))^(-1)$ 即可.

*解法1* 由 $|A^*|=|A|^(n-1)$，有 $|A|^3=8$，得 $|A|=2$. （2分）

又 $(A-E)B A^(-1)=3E$，有 $(A-E)B=3A$.

从而 $A^(-1)(A-E)B=3E$，由此得 $(E-A^(-1))B=3E$，即 $(E-frac(A^*,|A|))B=3E$，亦即 $(2E-A^*)B=6E$.

又 $2E-A^*$ 为可逆矩阵，于是
$ B=6(2E-A^*)^(-1). quad "（4分）" $
由 $2E-A^*=mat(1,0,0,0;0,1,0,0;-1,0,1,0;0,3,0,-6)$，有
$ (2E-A^*)^(-1)=mat(1,0,0,0;0,1,0,0;1,0,1,0;0,frac(1,2),0,-frac(1,6)). $
因此
$ B=mat(6,0,0,0;0,6,0,0;6,0,6,0;0,3,0,-1). quad "（6分）" $
*解法2* 由 $|A^*|=|A|^(n-1)$，有 $|A|^3=8$，得 $|A|=2$. （2分）

又 $A A^*=|A|E$，得
$ A&=|A|(A^*)^(-1)=2(A^*)^(-1) \
&=2mat(1,0,0,0;0,1,0,0;-1,0,1,0;0,frac(3,8),0,frac(1,8))=mat(2,0,0,0;0,2,0,0;-2,0,2,0;0,frac(3,4),0,frac(1,4)). quad "（3分）" $
可见 $A-E$ 为可逆矩阵，于是由 $(A-E)B A^(-1)=3E$ 有
$ B=3(A-E)^(-1)A. quad "（4分）" $
由 $A-E=mat(1,0,0,0;0,1,0,0;-2,0,1,0;0,frac(3,4),0,-frac(3,4))$，得
$ (A-E)^(-1)=mat(1,0,0,0;0,1,0,0;2,0,1,0;0,1,0,-frac(4,3)), quad "（5分）" $
因此
$ B&=3mat(1,0,0,0;0,1,0,0;2,0,1,0;0,1,0,-frac(4,3))mat(2,0,0,0;0,2,0,0;-2,0,2,0;0,frac(3,4),0,frac(1,4)) \
&=mat(6,0,0,0;0,6,0,0;6,0,6,0;0,3,0,-1). quad "（6分）" $

本题的典型错误为将 $(A-E)^(-1)$ 错写成 $A^(-1)-E^(-1)$，其次是计算错误.
]

#answer("十一、")[
*分析* 这是研究生入学考试数学试题中第一次在线性代数方面编制应用题. 要求考生能建立数学模型，并运用特征向量和特征向量的有关知识解决问题.

（1）$cases(x_(n+1)=frac(5,6)x_n+frac(2,5)(frac(1,6)x_n+y_n),y_(n+1)=frac(3,5)(frac(1,6)x_n+y_n))$.

化简得 $cases(x_(n+1)=frac(9,10)x_n+frac(2,5)y_n,y_(n+1)=frac(1,10)x_n+frac(3,5)y_n)$，

即 $mat(x_(n+1);y_(n+1))=mat(frac(9,10),frac(2,5);frac(1,10),frac(3,5))mat(x_n;y_n)$，于是
$ A=mat(frac(9,10),frac(2,5);frac(1,10),frac(3,5)). quad "（3分）" $
（2）令 $P=(eta_1,eta_2)=mat(4,-1;1,1)$，则由 $|P|=5!=0$ 知，$eta_1,eta_2$ 线性无关.

因 $A eta_1=mat(4;1)=eta_1$，故 $eta_1$ 为 $A$ 的特征向量，且相应的特征值 $lambda_1=1$.

因 $A eta_2=mat(-frac(1,2);frac(1,2))=frac(1,2)eta_2$，故 $eta_2$ 为 $A$ 的特征向量，且相应的特征值 $lambda_2=frac(1,2)$. （4分）

（3）
$ mat(x_(n+1);y_(n+1))=A mat(x_n;y_n)=A^2 mat(x_(n-1);y_(n-1))=dots=A^n mat(x_1;y_1)=A^n mat(frac(1,2);frac(1,2)). quad "（5分）" $
由 $P^(-1)A P=mat(lambda_1,0;0,lambda_2)$，有 $A=P mat(lambda_1,0;0,lambda_2)P^(-1)$.

于是
$ A^n=P mat(lambda_1,0;0,lambda_2)^n P^(-1). quad "（6分）" $
又 $P^(-1)=frac(1,5)mat(1,1;-1,4)$，故
$ A^n&=frac(1,5)mat(4,-1;1,1)mat(1,0;0,(frac(1,2))^n)mat(1,1;-1,4) \
&=frac(1,5)mat(4+(frac(1,2))^n,4-4(frac(1,2))^n;1-(frac(1,2))^n,1+4(frac(1,2))^n). $
因此
$ mat(x_(n+1);y_(n+1))=A^n mat(frac(1,2);frac(1,2))=frac(1,10)mat(8-3(frac(1,2))^n;2+3(frac(1,2))^n). quad "（8分）" $

这道代数应用题很有新意，前面两小问题是基本的，计算量也不大，考生应能得分，最后有一定的计算量，但水平较高、概念清楚的考生也能得到.
答卷中主要错误有：
（1）式子列错，按理说，式子列错之后，验证特征向量时会发现问题然后得到纠正. 但实际不然，许多考生不会去纠正，也不知如何纠正.
（2）不会验证特征向量，宁可去求特征向量.
（3）将 $A$ 对角化后，应该是 $A^n=P mat(lambda_1^n,0;0,lambda_2^n)P^(-1)$，但有不少考生却写成 $A^n=mat(lambda_1^n,0;0,lambda_2^n)$.
阅卷中，发现第（3）问有一个比标准答案更好的做法. 由于 $eta_1$ 与 $eta_2$ 线性无关，故 $eta_1,eta_2$ 是二维列向量空间中的一个基，于是
$ mat(x_1;y_1)=k_1 eta_1+k_2 eta_2,quad k_1=frac(1,5),quad k_2=frac(3,10). $
因而
$ mat(x_(n+1);y_(n+1))&=A^n mat(x_1;y_1)=A^n k_1 eta_1+A^n k_2 eta_2 \
&=k_1 A^n eta_1+k_2 A^n eta_2 \
&=k_1 lambda_1^n eta_1+k_2 lambda_2^n eta_2, $
即得答案，避免了求 $P$ 及 $P^(-1)$、对角化等步骤.
]

#answer("十二、")[
*分析* 根据题意，开机后第一次停机时，若生产了的产品个数 $X=i$，则前 $i-1$ 个产品为合格品，第 $i$ 个产品必为不合格产品，因此
$ P{X=i}=q^(i-1)p quad (q=1-p,quad i=1,2,dots), $
由此并根据数学期望和方差的定义求 $E(X)$ 和 $D(X)$.

记 $q=1-p$，$X$ 的概率分布为
$ P{X=i}=q^(i-1)p,quad i=1,2,dots. quad "（3分）" $
$X$ 的数学期望为
$ E(X)&=sum_(i=1)^infinity i q^(i-1)p=p sum_(i=1)^infinity (q^i)' \
&=p(sum_(i=1)^infinity q^i)'=p(frac(q,1-q))'=frac(1,p). quad "（5分）" $
因为
$ E(X^2)&=sum_(i=1)^infinity i^2 q^(i-1)p=p[q(sum_(i=1)^infinity q^i)']' \
&=p[frac(q,(1-q)^2)]'=frac(2-p,p^2), quad "（7分）" $
所以 $X$ 的方差为
$ D(X)=E(X^2)-[E(X)]^2=frac(2-p,p^2)-frac(1,p^2)=frac(1-p,p^2). quad "（8分）" $

这是一道典型的习题，由打靶（打中即停）题改造过来. 答卷中的典型错误有：
（1）将 $P{X=i}=q^(i-1)p$（$i=1,2,dots$）写成 $P{X=i}=q^i p$（$i=1,2,dots$）. 这是将合格产品的计数搞错了. 比方说，第一个产品就不合格，即该生产线未生产出合格产品就停机，因此应该是 $P{X=1}=q^0 p$，从而 $P{X=i}=q^(i-1)p$（$i=1,2,dots$）.
（2）级数求和不会或求错，甚至有的写成有限项求和.
（3）有不少考生记住了这种分布（因为这是典型分布）的数学期望及方差的值，没有通过计算就将答案写上.
有的阅卷教师反映，求数学期望和方差时用到级数求和的方法和技巧，是否这不应该成为概率论试题考查的要点. 教师提到的这一点恰是本题考查综合能力的目的之一，数学一卷中没有级数求和问题，就期望在本题中予以考查. 考生对数学知识的掌握一定要全面，要在平时学习中自觉培养综合应用所学相关知识解决问题的能力，研究生数学考试不是平时单元练习，测量的就是数学能力.
]

#answer("十三、")[
*分析* 根据最大似然估计的定义来求.

似然函数为
$ L(theta)=L(x_1,x_2,dots,x_n;theta)=cases(2^n e^(-2sum_(i=1)^n (x_i-theta)) quad x_i>=theta quad (i=1,2,dots,n),0 quad "其他"). quad "（2分）" $
当 $x_i>=theta$（$i=1,2,dots,n$）时，$L(theta)>0$，取对数，得
$ ln L(theta)=n ln 2-2sum_(i=1)^n (x_i-theta). $
因为 $frac(dif ln L(theta),dif theta)=2n>0$，所以 $L(theta)$ 单调增加. （4分）

由于 $theta$ 必须满足 $theta<=x_i$（$i=1,2,dots,n$），因此当 $theta$ 取 $x_1,x_2,dots,x_n$ 中的最小值时，$L(theta)$ 取最大值. 所以 $theta$ 的最大似然估计值为
$ hat(theta)=min(x_1,x_2,dots,x_n). quad "（6分）" $

求最大似然估计量（值）或矩估计量（值），是常考的题型，一般说来考生应该掌握了求这些估计的基本方法. 本题答卷中典型错误是，由于 $frac(dif ln L(theta),dif theta)=2n>0$，$L(theta)$ 单调增加，有些考生就不知道应如何取估计值了.
]

