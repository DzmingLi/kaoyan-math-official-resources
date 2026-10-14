#import "../template.typ": exam, answer
#show: exam.with(year: 1991, subject: "五", title: "1991年全国工学、经济学硕士研究生入学考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#import "@preview/cetz:0.5.2" as cetz
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 1991 数学五试卷参考解答

= 一、填空题

#answer("1（1）")[
由全微分与复合函数求导法则，$dif z=e^(sin(x y))cos(x y)(y dif x+x dif y)$.
]

#answer("1（2）")[
由过点条件得 $-1-a=0$、$b+c=0$；由切线斜率相同得 $3+a=-2b$.所以 $a=-1,b=-1,c=1$.
]

#answer("1（3）")[
由莱布尼茨公式 $f^((n))(x)=(x+n)e^x$，其导数为 $(x+n+1)e^x$，在 $x=-(n+1)$ 两侧由负变正，故在该点取极小值 $-e^(-(n+1))=-1/e^(n+1)$.
]

#answer("1（4）")[
行列式展开中只有主对角线项和循环项不为零.循环置换的符号为 $(-1)^(n-1)$，故行列式为 $a^n+(-1)^(n+1)b^n$.
]

#answer("1（5）")[
$P(A B)=P(A)-P(A-B)=0.4$，故 $P(overline(A B))=1-0.4=0.6$.
]

= 二、选择题

#answer("2（1）")[
*A.* $x ln(1+1/x) arrow 0$（$x arrow 0^+$），故A项极限为1.C、D两项左侧极限均为 $e^(-1)$.
]

#answer("2（2）")[
*D.* 奇数项子列趋于 $+infinity$，偶数项子列趋于0.整个数列无界，但不趋于无穷，也不趋于0.
]

#answer("2（3）")[
*C.* 由 $det(A B)=det A dot det B=0$，知两行列式中至少有一个为0.矩阵本身不一定为零矩阵.
]

#answer("2（4）")[
*D.* 取非齐次方程的两个不同解 $x_1,x_2$，则 $A(x_1-x_2)=0$，且 $x_1-x_2!=0$，故对应齐次方程有非零解.A、B项均缺少非齐次方程相容的条件.
]

#answer("2（5）")[
*D.* 不相容意味着 $A ∩ B=∅$，所以 $A-B=A$.补事件是否相容还取决于 $A ∪ B$ 是否为整个样本空间；又 $P(A B)=0$ 而 $P(A)P(B)>0$.
]

= 解答题

#answer("三、")[
取对数并用洛必达法则，
$ lim_(x arrow +infinity)(ln(x+sqrt(1+x^2)))/x
=lim_(x arrow +infinity)1/sqrt(1+x^2)=0. $
所以原极限为 $e^0=1$.
]

#answer("四、")[
按 $x=0$ 分段，
$ I=integral_(-1)^0(x+1)^2 dif x+integral_0^1(3x+1)^2 dif x=1/3+7=22/3. $
]

#answer("五、")[
*解一* 拆分并分部积分，
$ I=integral arctan x dif x-integral arctan x dif(arctan x)
=x arctan x-1/2 ln(1+x^2)-1/2(arctan x)^2+C. $
*解二* 令 $u=arctan x$，则 $x=tan u$，$dif x=sec^2 u dif u$，得到
$ I=integral u tan^2 u dif u=integral u(sec^2 u-1)dif u
=u tan u+ln abs(cos u)-u^2/2+C. $
代回 $u=arctan x$ 即得同一结果.
]

#answer("六、")[
*证一* 分别对 $x,y$ 求偏导数，得
$ y-f(z)=[x f'(z)+y g'(z)]z_x, quad x-g(z)=[x f'(z)+y g'(z)]z_y. $
因公共系数非零，可分别解出
$ z_x=(y-f(z))/(x f'(z)+y g'(z)), quad z_y=(x-g(z))/(x f'(z)+y g'(z)). $
交叉相乘即得待证等式.

*证二* 直接将求导所得两式分别乘以 $z_y,z_x$，右侧相等，所以 $[y-f(z)]z_y=[x-g(z)]z_x$.
]

#answer("七、")[
两曲线交点为 $P(1/sqrt(1+a),a/(1+a))$.两曲线之间的面积为
$ S_1=integral_0^(1/sqrt(1+a))[1-(1+a)x^2]dif x=2/(3sqrt(1+a)). $
总面积为 $integral_0^1(1-x^2)dif x=2/3$，故 $S_1=1/3$，于是 $a=3$.
#cetz.canvas({
  import cetz.draw: *
  let p(x, y) = (5 * x, 3.5 * y)
  let top = range(121).map(i => { let x = i / 120; p(x, 1 - x*x) })
  let left-top = range(61).map(i => { let x = i / 120; p(x, 1 - x*x) })
  let left-bottom = range(60, -1, step: -1).map(i => { let x = i / 120; p(x, 3*x*x) })
  line(p(0, 0), ..top, close: true, fill: luma(248))
  line(..left-top, ..left-bottom, close: true, fill: luma(225))
  line(..range(76).map(i => { let x = i / 120; p(x, 3*x*x) }))
  line((-0.2, 0), (5.6, 0), mark: (end: ">"))
  line((0, -0.2), (0, 4.3), mark: (end: ">"))
  content((-0.2, -0.25), $O$)
  content((5.7, -0.1), $x$)
  content((-0.15, 4.4), $y$)
  content((5, -0.25), $1$)
  content((-0.25, 3.5), $1$)
  content(p(0.55, 0.79), $P$)
  content(p(1.03, 0.3), $L_1$)
  content(p(0.65, 1.18), $L_2$)
  content(p(0.2, 0.6), $S_1$)
  content(p(0.76, 0.18), $S_2$)
})
]

#answer("八、")[
*解一* 总利润为
$ L=p_1 q_1+p_2 q_2-C=32p_1-0.2p_1^2+12p_2-0.05p_2^2-1395. $
由 $L_(p_1)=32-0.4p_1=0$，$L_(p_2)=12-0.1p_2=0$，得 $p_1=80,p_2=120$.二阶导数组成的矩阵为 $op("diag")(-0.4,-0.1)$，负定，故这是唯一最大值点；此时 $q_1=8,q_2=4$，最大总利润为605.

*解二* 以销量为变量，价格为 $p_1=120-5q_1$、$p_2=200-20q_2$，所以
$ L=80q_1-5q_1^2+160q_2-20q_2^2-35. $
由 $L_(q_1)=80-10q_1=0$、$L_(q_2)=160-40q_2=0$，得 $q_1=8,q_2=4$，同样得 $p_1=80,p_2=120$，最大总利润为605.
]

#answer("九、")[
*证一* 对 $ln t$ 在 $[x,x+1]$ 上应用拉格朗日中值定理，有 $ln(x+1)-ln x=1/xi$，其中 $x<xi<x+1$.因此 $ln(1+1/x)=1/xi>1/(1+x)$.

*证二* 令 $F(x)=ln(1+1/x)-1/(1+x)$，则 $F'(x)=-1/(x(1+x)^2)<0$，且 $lim_(x arrow +infinity)F(x)=0$.故在 $(0,+infinity)$ 内恒有 $F(x)>0$.
]

#answer("十、")[
（1）由 $A+B=A B$，得 $(A-E)(B-E)=A B-A-B+E=E$，故 $A-E$ 可逆，其逆矩阵为 $B-E$.

（2）由上式 $A=E+(B-E)^(-1)$.计算得
$ B-E=mat(0,-3,0;2,0,0;0,0,1), quad (B-E)^(-1)=mat(0,1/2,0;-1/3,0,0;0,0,1), $
所以 $A=mat(1,1/2,0;-1/3,1,0;0,0,2)$.
]

#answer("十一、")[
设 $x_1 alpha_1+x_2 alpha_2+x_3 alpha_3=beta$.系数矩阵为
$ A=mat(1+lambda,1,1;1,1+lambda,1;1,1,1+lambda), quad det A=lambda^2(lambda+3). $
（1）$lambda!=0$ 且 $lambda!=-3$ 时，系数阵可逆，表示唯一.

（2）$lambda=0$ 时，$beta=0$，方程组化为 $x_1+x_2+x_3=0$，有无穷多解，表示不唯一.

（3）$lambda=-3$ 时，三个方程左侧相加为0，右侧相加为 $0-3+9=6$，矛盾，故不能线性表示.
]

#answer("十二、")[
设对应特征值为 $lambda$，则 $A^(-1)alpha=lambda alpha$，即 $alpha=lambda A alpha$.比较分量得
$ lambda(3+k)=1, quad lambda(2+2k)=k. $
消去 $lambda$ 得 $k^2+k-2=0$，故 $k=-2$ 或 $k=1$；对应的 $lambda$ 分别为1和 $1/4$.
]

#answer("十三、")[
（1）由题意 $X$ 可能取0、1、2、3.把各路口遇到红灯的事件记为 $A_i$（$i=1,2,3$），这些事件相互独立，且概率均为 $1/2$.于是
$ P(X=0)=1/2, quad P(X=1)=1/4, quad P(X=2)=1/8, quad P(X=3)=1/8. $
最后一项表示三个路口全为绿灯.

（2）由离散随机变量函数的期望公式，
$ E(1/(1+X))=1/2+1/2 dot 1/4+1/3 dot 1/8+1/4 dot 1/8=67/96. $
]

#answer("十四、")[
令 $A_1,A_2,A_3$ 分别表示电压处于三个区间的事件，$B$ 表示元件损坏.标准化并查表，得
$ P(A_1)=Phi(-0.8)=0.212, quad P(A_2)=Phi(0.8)-Phi(-0.8)=0.576, $
$ P(A_3)=1-P(A_1)-P(A_2)=0.212. $
（1）由全概率公式，
$ alpha=P(B)=0.212 times 0.1+0.576 times 0.001+0.212 times 0.2
=0.064176 approx 0.0642. $
（2）由贝叶斯公式，
$ beta=P(A_2|B)=(P(A_2)P(B|A_2))/(P(B))=(0.576 times 0.001)/0.064176 approx 0.009. $
]

