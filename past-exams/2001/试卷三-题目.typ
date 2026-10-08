#import "../template.typ": exam
#show: exam.with(year: 2001, subject: "三", title: "2001年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#ezexam.answer-state.update(false)


= 一、填空题（本题共5小题，每小题3分，满分15分）
#ezexam.counter-question.step()

（1）设生产函数为 $Q=A L^alpha K^beta$，其中 $Q$ 是产出量，$L$ 是劳动投入量，$K$ 是资本投入量，而 $A,alpha,beta$ 均为大于零的参数，则当 $Q=1$ 时 $K$ 关于 $L$ 的弹性为#h(3em).

（2）某公司每年的工资总额在比上一年增加20%的基础上再追加2百万元.若以 $W_t$ 表示第 $t$ 年的工资总额（单位：百万元），则 $W_t$ 满足的差分方程是#h(3em).

（3）设矩阵 $A=mat(k,1,1,1;1,k,1,1;1,1,k,1;1,1,1,k)$，且秩 $(A)=3$，则 $k=$#h(3em).

（4）设随机变量 $X$ 和 $Y$ 的数学期望分别为 $-2$ 和2，方差分别为1和4，而相关系数为 $-0.5$，则根据切比雪夫不等式 $P{|X+Y|>=6}<=$#h(3em).

（5）设总体 $X$ 服从正态分布 $N(0,2^2)$，而 $X_1,X_2,dots,X_15$ 是来自总体 $X$ 的简单随机样本，则随机变量
$ Y=(X_1^2+dots+X_10^2)/(2(X_11^2+dots+X_15^2)) $
服从#h(2em)分布，参数为#h(3em).

= 二、选择题（本题共5小题，每小题3分，满分15分）
#ezexam.counter-question.step()

（1）设 $f(x)$ 的导数在 $x=a$ 处连续，又 $lim_(x->a) f'(x)/(x-a)=-1$，则（　）.
#choices[$x=a$ 是 $f(x)$ 的极小值点.][$x=a$ 是 $f(x)$ 的极大值点.][$(a,f(a))$ 是曲线 $y=f(x)$ 的拐点.][$x=a$ 不是 $f(x)$ 的极值点，$(a,f(a))$ 也不是曲线 $y=f(x)$ 的拐点.]

（2）设 $g(x)=integral_0^x f(u) dif u$，其中
$ f(x)=cases(1/2 (x^2+1) & #text[若] 0<=x<1,1/3 (x-1) & #text[若] 1<=x<=2), $
则 $g(x)$ 在区间 $(0,2)$ 内（　）.
#choices[无界.][递减.][不连续.][连续.]

（3）设
$ A=mat(a_11,a_12,a_13,a_14;a_21,a_22,a_23,a_24;a_31,a_32,a_33,a_34;a_41,a_42,a_43,a_44), quad B=mat(a_14,a_13,a_12,a_11;a_24,a_23,a_22,a_21;a_34,a_33,a_32,a_31;a_44,a_43,a_42,a_41), \
P_1=mat(0,0,0,1;0,1,0,0;0,0,1,0;1,0,0,0), quad P_2=mat(1,0,0,0;0,0,1,0;0,1,0,0;0,0,0,1), $
其中 $A$ 可逆，则 $B^(-1)$ 等于（　）.
#choices[$A^(-1) P_1 P_2$.][$P_1 A^(-1) P_2$.][$P_1 P_2 A^(-1)$.][$P_2 A^(-1) P_1$.]

（4）设 $A$ 是 $n$ 阶矩阵，$alpha$ 是 $n$ 维列向量.若秩 $mat(A,alpha;alpha^T,0)=$ 秩 $(A)$，则线性方程组（　）.
#choices[$A X=alpha$ 必有无穷多解.][$A X=alpha$ 必有唯一解.][$mat(A,alpha;alpha^T,0)mat(X;y)=0$ 仅有零解.][$mat(A,alpha;alpha^T,0)mat(X;y)=0$ 必有非零解.]

（5）将一枚硬币重复掷 $n$ 次，以 $X$ 和 $Y$ 分别表示正面向上和反面向上的次数，则 $X$ 和 $Y$ 的相关系数等于（　）.
#choices[$-1$.][$0$.][$1/2$.][$1$.]

#ezexam.question(label: n => [三、])[
（本题满分5分）设 $u=f(x,y,z)$ 有连续的一阶偏导数，又函数 $y=y(x)$ 及 $z=z(x)$ 分别由下列两式确定：
$ e^(x y)-x y=2 quad #text[和] quad e^x=integral_0^(x-z) (sin t)/t dif t, $
求 $(dif u)/(dif x)$.


]

#ezexam.question(label: n => [四、])[
（本题满分6分）已知 $f(x)$ 在 $(-infinity,+infinity)$ 内可导，且 $lim_(x->infinity) f'(x)=e$，
$ lim_(x->infinity) ((x+c)/(x-c))^x=lim_(x->infinity) [f(x)-f(x-1)], $
求 $c$ 的值.


]

#ezexam.question(label: n => [五、])[
（本题满分6分）求二重积分 $integral.double_D y[1+x e^(1/2 (x^2+y^2))] dif x dif y$ 的值，其中 $D$ 是由直线 $y=x,y=-1$ 及 $x=1$ 围成的平面区域.


]

#ezexam.question(label: n => [六、])[
（本题满分7分）已知抛物线 $y=p x^2+q x$（其中 $p<0,q>0$）在第一象限内与直线 $x+y=5$ 相切，且此抛物线与 $x$ 轴所围成的平面图形的面积为 $S$.（1）问 $p$ 和 $q$ 为何值时，$S$ 达到最大值？（2）求出此最大值.


]

#ezexam.question(label: n => [七、])[
（本题满分6分）设 $f(x)$ 在 $[0,1]$ 上连续，在 $(0,1)$ 内可导，且满足
$ f(1)=k integral_0^(1/k) x e^(1-x) f(x) dif x quad (k>1), $
证明至少存在一点 $xi in (0,1)$，使得 $f'(xi)=(1-xi^(-1))f(xi)$.


]

#ezexam.question(label: n => [八、])[
（本题满分7分）已知 $f_n (x)$ 满足
$ f'_n (x)=f_n (x)+x^(n-1)e^x quad (n #text[为正整数]), $
且 $f_n (1)=e/n$，求函数项级数 $sum_(n=1)^infinity f_n (x)$ 之和.


]

#ezexam.question(label: n => [九、])[
（本题满分9分）设矩阵 $A=mat(1,1,a;1,a,1;a,1,1)$，$beta=mat(1;1;-2)$，已知线性方程组 $A X=beta$ 有解但不唯一，试求（1）$a$ 的值；（2）正交矩阵 $Q$，使 $Q^T A Q$ 为对角矩阵.


]

#ezexam.question(label: n => [十、])[
（本题满分8分）设 $A$ 为 $n$ 阶实对称矩阵，秩 $(A)=n$，$A_(i j)$ 是 $A=(a_(i j))_(n times n)$ 中元素 $a_(i j)$ 的代数余子式（$i,j=1,2,dots,n$），二次型
$ f(x_1,x_2,dots,x_n)=sum_(i=1)^n sum_(j=1)^n A_(i j)/|A| x_i x_j. $
（1）记 $X=(x_1,x_2,dots,x_n)^T$，把 $f(x_1,x_2,dots,x_n)$ 写成矩阵形式，并证明二次型 $f(X)$ 的矩阵为 $A^(-1)$；

（2）二次型 $g(X)=X^T A X$ 与 $f(X)$ 的规范形是否相同？说明理由.


]

#ezexam.question(label: n => [十一、])[
（本题满分8分）一生产线生产的产品成箱包装，每箱的重量是随机的.假设每箱平均重50千克，标准差为5千克.若用最大载重量为5吨的汽车承运，试利用中心极限定理说明每辆车最多可以装多少箱，才能保障不超载的概率大于0.977.（$Phi(2)=0.977$，其中 $Phi(x)$ 是标准正态分布函数.）


]

#ezexam.question(label: n => [十二、])[
（本题满分8分）设随机变量 $X$ 和 $Y$ 的联合分布是正方形 $G={(x,y):1<=x<=3,1<=y<=3}$ 上的均匀分布，试求随机变量 $U=|X-Y|$ 的概率密度 $p(u)$.

]
