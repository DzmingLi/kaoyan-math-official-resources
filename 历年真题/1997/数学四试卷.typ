#import "../template.typ": exam
#show: exam.with(year: 1997, subject: "四", title: "1997年全国工学、经济学硕士研究生入学考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])


= 一、填空题（15分，每小题3分）
#ezexam.counter-question.step()

（1）设 $y=f(ln x)e^(f(x))$，其中 $f$ 可微，则 $dif y=$ #fillin(len: 4em)[].

（2）设 $f(x)=1/(1+x^2)+x^3 integral_0^1 f(x)dif x$，则 $integral_0^1 f(x)dif x=$ #fillin(len: 4em)[].

（3）设 $n$ 阶矩阵
$ A=mat(0,1,1,dots,1,1;1,0,1,dots,1,1;1,1,0,dots,1,1;dots.v,dots.v,dots.v,dots.down,dots.v,dots.v;1,1,1,dots,0,1;1,1,1,dots,1,0), $
则 $det A=$ #fillin(len: 4em)[].

（4）设 $A,B$ 是任意两个随机事件，则 $P[(overline(A)+B)(A+B)(overline(A)+overline(B))(A+overline(B))]=$ #fillin(len: 4em)[].

（5）设随机变量 $X$ 服从参数为 $(2,p)$ 的二项分布，随机变量 $Y$ 服从参数为 $(3,p)$ 的二项分布.若 $P(X>=1)=5/9$，则 $P(Y>=1)=$ #fillin(len: 4em)[].

= 二、选择题（15分，每小题3分）
#ezexam.counter-question.step()

（1）设 $f(x),phi(x)$ 在点 $x=0$ 的某邻域内连续，且当 $x arrow 0$ 时，$f(x)$ 是 $phi(x)$ 的高阶无穷小，则当 $x arrow 0$ 时，$integral_0^x f(t)sin t dif t$ 是 $integral_0^x t phi(t)dif t$ 的（　）.
#choices[低阶无穷小][高阶无穷小][同阶但不等价的无穷小][等价无穷小]

（2）若 $f(-x)=f(x)$（$-infinity<x<+infinity$），在 $(-infinity,0)$ 内 $f'(x)>0$ 且 $f''(x)<0$，则在 $(0,+infinity)$ 内有（　）.
#choices[$f'(x)>0,f''(x)<0$][$f'(x)>0,f''(x)>0$][$f'(x)<0,f''(x)<0$][$f'(x)<0,f''(x)>0$]

（3）设向量组 $alpha_1,alpha_2,alpha_3$ 线性无关，则下列向量组中线性无关的是（　）.
#choices[$alpha_1+alpha_2,alpha_2+alpha_3,alpha_3-alpha_1$][$alpha_1+alpha_2,alpha_2+alpha_3,alpha_1+2alpha_2+alpha_3$][$alpha_1+2alpha_2,2alpha_2+3alpha_3,3alpha_3+alpha_1$][$alpha_1+alpha_2+alpha_3,2alpha_1-3alpha_2+22alpha_3,3alpha_1+5alpha_2-5alpha_3$]

（4）非齐次线性方程组 $A X=b$ 中未知量个数为 $n$，方程个数为 $m$，系数矩阵 $A$ 的秩为 $r$，则（　）.
#choices[$r=m$ 时，方程组 $A X=b$ 有解][$r=n$ 时，方程组 $A X=b$ 有唯一解][$m=n$ 时，方程组 $A X=b$ 有唯一解][$r<n$ 时，方程组 $A X=b$ 有无穷多解]

（5）设 $X$ 是一随机变量，$E X=mu$、$D X=sigma^2$（$mu,sigma>0$ 为常数），则对任意常数 $c$，必有（　）.
#choices[$E(X-c)^2=E X^2-c^2$][$E(X-c)^2=E(X-mu)^2$][$E(X-c)^2<E(X-mu)^2$][$E(X-c)^2>=E(X-mu)^2$]

#ezexam.question(label: n => [三、])[
（6分）

求极限 $lim_(x arrow 0)[a/x-(1/x^2-a^2)ln(1+a x)]$（$a≠0$）.

]

#ezexam.question(label: n => [四、])[
（6分）

设 $u=f(x,y,z)$ 有连续偏导数，$y=y(x)$ 和 $z=z(x)$ 分别由方程 $e^(x y)-y=0$ 和 $e^z-x z=0$ 所确定.求 $(dif u)/(dif x)$.

]

#ezexam.question(label: n => [五、])[
（6分）

假设某种商品的需求量 $Q$ 是单价 $p$（单位：元）的函数：$Q=12000-80p$；商品的总成本 $C$ 是需求量 $Q$ 的函数：$C=25000+50Q$；每单位商品需要纳税2元.试求使销售利润最大的商品单价和最大利润额.

]

#ezexam.question(label: n => [六、])[
（7分）

求曲线 $y=x^2-2x$、$y=0$、$x=1$、$x=3$ 所围成的平面图形的面积 $S$，并求该平面图形绕 $y$ 轴旋转一周所得旋转体的体积 $V$.

]

#ezexam.question(label: n => [七、])[
（7分）

设函数 $f(x)$ 在 $(-infinity,+infinity)$ 内连续，且 $F(x)=integral_0^x (x-2t)f(t)dif t$.试证：

（1）若 $f(x)$ 为偶函数，则 $F(x)$ 也是偶函数；

（2）若 $f(x)$ 单调不增，则 $F(x)$ 单调不减.

]

#ezexam.question(label: n => [八、])[
（6分）

设 $D$ 是以点 $O(0,0)$、$A(1,2)$ 和 $B(2,1)$ 为顶点的三角形区域，求 $integral.double_D x dif x dif y$.

]

#ezexam.question(label: n => [九、])[
（7分）

设 $A$ 为 $n$ 阶非奇异矩阵，$alpha$ 为 $n$ 维列向量，$b$ 为常数.记分块矩阵
$ P=mat(I,0;-alpha^T A^*,det A), quad Q=mat(A,alpha;alpha^T,b), $
其中 $A^*$ 是矩阵 $A$ 的伴随矩阵，$I$ 为 $n$ 阶单位矩阵.

（1）计算并化简 $P Q$；

（2）证明：矩阵 $Q$ 可逆的充要条件是 $alpha^T A^(-1)alpha≠b$.

]

#ezexam.question(label: n => [十、])[
（9分）

设矩阵 $A$ 与 $B$ 相似，且
$ A=mat(1,-1,1;2,4,-2;-3,-3,a), quad B=mat(2,0,0;0,2,0;0,0,b). $
（1）求 $a,b$ 的值；

（2）求可逆矩阵 $P$，使 $P^(-1)A P=B$.

]

#ezexam.question(label: n => [十一、])[
（8分）

假设随机变量 $X$ 的绝对值不大于1，$P(X=-1)=1/8$、$P(X=1)=1/4$；在事件 $-1<X<1$ 出现的条件下，$X$ 在 $(-1,1)$ 内的任一子区间上取值的条件概率与该子区间长度成正比.试求：

（1）$X$ 的分布函数 $F(x)=P(X<=x)$；

（2）$X$ 取负值的概率 $p$.

]

#ezexam.question(label: n => [十二、])[
（8分）

假设随机变量 $Y$ 服从参数为 $lambda=1$ 的指数分布，随机变量
$ X_k=cases(0 & quad Y<=k,1 & quad Y>k), quad k=1,2. $
（1）求 $X_1$ 和 $X_2$ 的联合概率分布；

（2）求 $E(X_1+X_2)$.
]

