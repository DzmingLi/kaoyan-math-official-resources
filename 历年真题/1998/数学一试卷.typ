#import "../template.typ": exam
#show: exam.with(year: 1998, subject: "一", title: "1998年全国工学、经济学硕士研究生入学考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)


= 一、填空题（本题共5小题，每小题3分，满分15分）
#ezexam.counter-question.step()

（1）$lim_(x->0) frac(sqrt(1+x)+sqrt(1-x)-2,x^2)=$ #fillin(len: 4em)[].

（2）设 $z=1/x f(x y)+y phi(x+y)$，$f,phi$ 具有二阶连续导数，则 $frac(partial^2 z,partial x partial y)=$ #fillin(len: 4em)[].

（3）设 $l$ 为椭圆 $x^2/4+y^2/3=1$，其周长记为 $a$，则 $integral.cont_l (2x y+3x^2+4y^2) dif s=$ #fillin(len: 4em)[].

（4）设 $A$ 为 $n$ 阶矩阵，$|A|!=0$，$A^*$ 为 $A$ 的伴随矩阵，$E$ 为 $n$ 阶单位矩阵.若 $A$ 有特征值 $lambda$，则 $(A^*)^2+E$ 必有特征值#fillin(len: 4em)[].

（5）设平面区域 $D$ 由曲线 $y=1/x$ 及直线 $y=0,x=1,x=e^2$ 所围成，二维随机变量 $(X,Y)$ 在区域 $D$ 上服从均匀分布，则 $(X,Y)$ 关于 $X$ 的边缘概率密度在 $x=2$ 处的值为#fillin(len: 4em)[].

= 二、选择题（本题共5小题，每小题3分，满分15分）
#ezexam.counter-question.step()

（1）设 $f(x)$ 连续，则 $frac(dif,dif x) integral_0^x t f(x^2-t^2) dif t=$ （　）.
#choices[$x f(x^2)$.][$-x f(x^2)$.][$2x f(x^2)$.][$-2x f(x^2)$.]

（2）函数 $f(x)=(x^2-x-2)abs(x^3-x)$ 不可导点的个数是（　）.
#choices[3.][2.][1.][0.]

（3）已知函数 $y=y(x)$ 在任意点 $x$ 处的增量 $Delta y=frac(y Delta x,1+x^2)+alpha$，且当 $Delta x->0$ 时，$alpha$ 是 $Delta x$ 的高阶无穷小，$y(0)=pi$，则 $y(1)$ 等于（　）.
#choices[$2pi$.][$pi$.][$e^(pi/4)$.][$pi e^(pi/4)$.]

（4）设矩阵 $mat(a_1,b_1,c_1;a_2,b_2,c_2;a_3,b_3,c_3)$ 是满秩的，则直线
$ frac(x-a_3,a_1-a_2)=frac(y-b_3,b_1-b_2)=frac(z-c_3,c_1-c_2) $
与直线
$ frac(x-a_1,a_2-a_3)=frac(y-b_1,b_2-b_3)=frac(z-c_1,c_2-c_3) $
（　）.
#choices[相交于一点.][重合.][平行但不重合.][异面.]

（5）设 $A,B$ 是两个随机事件，且 $0<P(A)<1$，$P(B)>0$，$P(B|A)=P(B|overline(A))$，则必有（　）.
#choices[$P(A|B)=P(overline(A)|B)$.][$P(A|B)!=P(overline(A)|B)$.][$P(A B)=P(A)P(B)$.][$P(A B)!=P(A)P(B)$.]

#ezexam.question(label: n => [三、])[
（本题满分5分）

求直线 $l:frac(x-1,1)=y/1=frac(z-1,-1)$ 在平面 $pi:x-y+2z-1=0$ 上的投影直线 $l_0$ 的方程，并求 $l_0$ 绕 $y$ 轴旋转一周所成曲面的方程.


]

#ezexam.question(label: n => [四、])[
（本题满分6分）

确定常数 $lambda$，使在右半平面 $x>0$ 上的向量
$ bold(A)(x,y)=2x y(x^4+y^2)^lambda bold(i)-x^2(x^4+y^2)^lambda bold(j) $
为某二元函数 $u(x,y)$ 的梯度，并求 $u(x,y)$.


]

#ezexam.question(label: n => [五、])[
（本题满分6分）

从船上向海中沉放某种探测仪器，按探测要求，需确定仪器的下沉深度 $y$（从海平面算起）与下沉速度 $v$ 之间的函数关系.设仪器在重力作用下，从海平面由静止开始铅直下沉，在下沉过程中还受到阻力和浮力的作用.仪器的质量为 $m$，体积为 $B$，海水的比重为 $rho$，仪器所受的阻力与速度成正比，比例系数为 $k>0$.建立 $y$ 与 $v$ 所满足的微分方程，并求出函数关系 $y=y(v)$.


]

#ezexam.question(label: n => [六、])[
（本题满分7分）

计算曲面积分
$ integral.double_Sigma frac(a x dif y dif z+(z+a)^2 dif x dif y,sqrt(x^2+y^2+z^2)), $
其中 $Sigma$ 是下半球面 $z=-sqrt(a^2-x^2-y^2)$ 的上侧，$a>0$.


]

#ezexam.question(label: n => [七、])[
（本题满分6分）

求极限
$ lim_(n -> infinity) [frac(sin frac(pi,n),n+1)+frac(sin frac(2 pi,n),n+frac(1,2))+dots+frac(sin pi,n+frac(1,n))]. $


]

#ezexam.question(label: n => [八、])[
（本题满分5分）

设正项数列 $ {a_n} $ 单调减少，且级数 $sum_(n=1)^infinity (-1)^n a_n$ 发散，问级数 $sum_(n=1)^infinity (frac(1,a_n+1))^n$ 是否收敛？并说明理由.


]

#ezexam.question(label: n => [九、])[
（本题满分6分）

设 $y=f(x)$ 是区间 $[0,1]$ 上的任一非负连续函数.

（1）试证存在 $x_0 in (0,1)$，使得在区间 $[0,x_0]$ 上以 $f(x_0)$ 为高的矩形面积，等于在区间 $[x_0,1]$ 上以 $y=f(x)$ 为曲边的曲边梯形面积.

（2）又设 $f(x)$ 在区间 $(0,1)$ 内可导且 $f'(x)>-frac(2f(x),x)$，证明（1）中的 $x_0$ 是唯一的.


]

#ezexam.question(label: n => [十、])[
（本题满分6分）

已知二次曲面方程
$ x^2+a y^2+z^2+2b x y+2x z+2y z=4 $
可以经过正交变换 $vec(x,y,z)=P vec(xi,eta,zeta)$ 化为椭圆柱面方程 $eta^2+4zeta^2=4$，求 $a,b$ 的值和正交矩阵 $P$.


]

#ezexam.question(label: n => [十一、])[
（本题满分4分）

设 $A$ 是 $n$ 阶矩阵，若存在正整数 $k$，使线性方程组 $A^k bold(x)=0$ 有解向量 $bold(alpha)$，且 $A^(k-1)bold(alpha)!=0$.试证：向量组 $bold(alpha),A bold(alpha),dots,A^(k-1)bold(alpha)$ 是线性无关的.


]

#ezexam.question(label: n => [十二、])[
（本题满分5分）

已知线性方程组
$ "（Ⅰ）" cases(a_(11)x_1+a_(12)x_2+dots+a_(1 comma 2n)x_(2n)=0,a_(21)x_1+a_(22)x_2+dots+a_(2 comma 2n)x_(2n)=0,dots,a_(n 1)x_1+a_(n 2)x_2+dots+a_(n comma 2n)x_(2n)=0) $
的一个基础解系为 $(b_(11),b_(12),dots,b_(1 comma 2n))^"T",(b_(21),b_(22),dots,b_(2 comma 2n))^"T",dots,(b_(n 1),b_(n 2),dots,b_(n comma 2n))^"T"$.试写出线性方程组
$ "（Ⅱ）" cases(b_(11)y_1+b_(12)y_2+dots+b_(1 comma 2n)y_(2n)=0,b_(21)y_1+b_(22)y_2+dots+b_(2 comma 2n)y_(2n)=0,dots,b_(n 1)y_1+b_(n 2)y_2+dots+b_(n comma 2n)y_(2n)=0) $
的通解，并说明理由.


]

#ezexam.question(label: n => [十三、])[
（本题满分6分）

设两个随机变量 $X,Y$ 相互独立，且都服从均值为0、方差为 $frac(1,2)$ 的正态分布，求随机变量 $|X-Y|$ 的方差.


]

#ezexam.question(label: n => [十四、])[
（本题满分4分）

从正态总体 $N(3.4,6^2)$ 中抽取容量为 $n$ 的样本，如果要求其样本均值位于区间 $(1.4,5.4)$ 内的概率不小于0.95，问样本容量 $n$ 至少应取多大？

附表：标准正态分布表
$ Phi(z)=integral_(-infinity)^z frac(1,sqrt(2 pi))e^(-frac(t^2,2)) dif t $
#table(columns: 5, [$z$], [1.28], [1.645], [1.96], [2.33], [$Phi(z)$], [0.900], [0.950], [0.975], [0.990])


]

#ezexam.question(label: n => [十五、])[
（本题满分4分）

设某次考试的考生成绩服从正态分布，从中随机地抽取36位考生的成绩，算得平均成绩为66.5分，标准差为15分.问在显著性水平0.05下，是否可以认为这次考试全体考生的平均成绩为70分？并给出检验过程.

附表：$t$ 分布表
$ P{t(n)<=t_p (n)}=p $
#table(columns: 3, [$n slash p$], [0.95], [0.975], [35], [1.6896], [2.0301], [36], [1.6883], [2.0281])

]
