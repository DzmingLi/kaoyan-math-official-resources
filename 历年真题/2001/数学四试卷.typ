#import "../template.typ": exam
#show: exam.with(year: 2001, subject: "四", title: "2001年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#ezexam.answer-state.update(false)


= 一、填空题（本题共5小题，每小题3分，满分15分）
#ezexam.counter-question.step()

（1）设生产函数为 $Q=A L^alpha K^beta$，其中 $Q$ 是产出量，$L$ 是劳动投入量，$K$ 是资本投入量，而 $A,alpha,beta$ 均为大于零的参数，则当 $Q=1$ 时 $K$ 关于 $L$ 的弹性为#h(3em).

（2）设 $z=e^(-x)-f(x-2y)$，且当 $y=0$ 时，$z=x^2$，则 $(partial z)/(partial x)=$#h(3em).

（3）设行列式 $D=mat(delim:"|",3,0,4,0;2,2,2,2;0,-7,0,0;5,3,-2,2)$，则第四行各元素余子式之和的值为#h(3em).

（4）设矩阵 $A=mat(k,1,1,1;1,k,1,1;1,1,k,1;1,1,1,k)$，且秩 $(A)=3$，则 $k=$#h(3em).

（5）设随机变量 $X$ 和 $Y$ 的数学期望都是2，方差分别为1和4，而相关系数为0.5，则根据切比雪夫不等式 $P{|X-Y|>=6}<=$#h(3em).

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

（4）对于任意二事件 $A$ 和 $B$，与 $A union B=B$ 不等价的是（　）.
#choices[$A subset B$.][$overline(B) subset overline(A)$.][$A overline(B)=emptyset$.][$overline(A)B=emptyset$.]

（5）将一枚硬币重复掷 $n$ 次，以 $X$ 和 $Y$ 分别表示正面向上和反面向上的次数，则 $X$ 和 $Y$ 的相关系数等于（　）.
#choices[$-1$.][$0$.][$1/2$.][$1$.]

#ezexam.question(label: n => [三、])[
（本题满分6分）设 $u=f(x,y,z)$ 有连续的一阶偏导数，又函数 $y=y(x)$ 及 $z=z(x)$ 分别由下列两式确定：
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
（本题满分7分）某商品进价为 $a$（元/件），根据以往经验，当销售价为 $b$（元/件）时，销售量为 $c$ 件（$a,b,c$ 均为正常数，且 $b>=4/3 a$），市场调查表明，销售价每下降10%，销售量可增加40%.现决定一次性降价.试问，当销售价定为多少时，可获得最大利润？并求出最大利润.


]

#ezexam.question(label: n => [七、])[
（本题满分6分）设 $f(x)$ 在区间 $[0,1]$ 上连续，在 $(0,1)$ 内可导，且满足
$ f(1)=3integral_0^(1/3) e^(1-x^2) f(x) dif x, $
证明存在 $xi in (0,1)$，使得 $f'(xi)=2xi f(xi)$.


]

#ezexam.question(label: n => [八、])[
（本题满分6分）设函数 $f(x)$ 在 $(0,+infinity)$ 内连续，$f(1)=5/2$，且对所有 $x,t in (0,+infinity)$，满足条件
$ integral_1^(x t) f(u) dif u=t integral_1^x f(u) dif u+x integral_1^t f(u) dif u, $
求 $f(x)$.


]

#ezexam.question(label: n => [九、])[
（本题满分9分）设矩阵 $A=mat(1,1,a;1,a,1;a,1,1)$，$beta=mat(1;1;-2)$，已知线性方程组 $A X=beta$ 有解但不唯一，试求（1）$a$ 的值；（2）正交矩阵 $Q$，使 $Q^T A Q$ 为对角矩阵.


]

#ezexam.question(label: n => [十、])[
（本题满分8分）设 $alpha_i=(a_(i 1),a_(i 2),dots,a_(i n))^T (i=1,2,dots,r;r<n)$ 是 $n$ 维实向量，且 $alpha_1,alpha_2,dots,alpha_r$ 线性无关.已知 $beta=(b_1,b_2,dots,b_n)^T$ 是线性方程组
$ cases(a_11 x_1+a_12 x_2+dots+a_(1n) x_n=0,a_21 x_1+a_22 x_2+dots+a_(2n) x_n=0,dots quad dots quad dots quad dots,a_(r 1)x_1+a_(r 2)x_2+dots+a_(r n)x_n=0) $
的非零解向量.试判断向量组 $alpha_1,alpha_2,dots,alpha_r,beta$ 的线性相关性.


]

#ezexam.question(label: n => [十一、])[
（本题满分8分）一生产线生产的产品成箱包装，每箱的重量是随机的.假设每箱平均重50千克，标准差为5千克.若用最大载重量为5吨的汽车承运，试利用中心极限定理说明每辆车最多可以装多少箱，才能保障不超载的概率大于0.977.（$Phi(2)=0.977$，其中 $Phi(x)$ 是标准正态分布函数.）


]

#ezexam.question(label: n => [十二、])[
（本题满分8分）设随机变量 $X$ 和 $Y$ 的联合分布在以点 $(0,1),(1,0),(1,1)$ 为顶点的三角形区域上服从均匀分布，试求随机变量 $U=X+Y$ 的方差.

]
