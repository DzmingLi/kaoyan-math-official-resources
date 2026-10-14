#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 1998, subject: "一", title: "1998年全国工学、经济学硕士研究生入学考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 1998 数学一试卷参考解答

= 一、填空题

#answer("1（1）")[
*解法一* 这是 $0/0$ 型不定式. 先用洛必达法则，有
$ lim_(x->0) frac(sqrt(1+x)+sqrt(1-x)-2,x^2)
=lim_(x->0) frac(sqrt(1-x)-sqrt(1+x),4x sqrt(1+x)sqrt(1-x)). $
将分子有理化，得
$ lim_(x->0) frac(-2x,4x sqrt(1+x)sqrt(1-x)(sqrt(1-x)+sqrt(1+x)))=-1/4. $
也可把上式拆为 $lim_(x->0) frac(1,4sqrt(1+x)sqrt(1-x))$ 与 $lim_(x->0) frac(sqrt(1-x)-sqrt(1+x),x)$ 的乘积，再对后一个极限使用洛必达法则，结果仍为 $-1/4$.

*解法二* 利用带佩亚诺余项的泰勒公式，
$ sqrt(1+x)=1+x/2-x^2/8+o(x^2), quad sqrt(1-x)=1-x/2-x^2/8+o(x^2), $
故原式为
$ lim_(x->0) frac(-x^2/4+o(x^2),x^2)=-1/4. $

*注* 第二种方法更加省力. 如果分子中的函数在所考察点可作带佩亚诺余项的泰勒展开，就能方便地解决这类问题. 本题不能分别以 $sqrt(1+x)-1 tilde x/2$、$sqrt(1-x)-1 tilde -x/2$ 代入分子的和，因为两个一次项相消，必须保留二次项.
]

#answer("1（2）")[
*解* 先求关于 $x$ 的偏导数，得
$ frac(partial z,partial x)=-frac(f(x y),x^2)+frac(y,x)f'(x y)+y phi'(x+y). $
再对 $y$ 求偏导，得
$ frac(partial^2 z,partial x partial y)
&=-frac(1,x)f'(x y)+frac(1,x)f'(x y)+y f''(x y)+phi'(x+y)+y phi''(x+y) \
&=y f''(x y)+phi'(x+y)+y phi''(x+y). $

*注* $f$ 和 $phi$ 都只有一个中间变量，实质上是两个一元复合函数. 对 $x$ 求偏导时把 $y$ 看作常数，对 $y$ 求偏导时把 $x$ 看作常数. 不能把它们误当作分别以 $x,y$ 为独立变量的二元函数.
]

#answer("1（3）")[
*解* 由椭圆方程知曲线上 $3x^2+4y^2=12$，故
$ integral.cont_L(2x y+3x^2+4y^2) dif s=2integral.cont_L x y dif s+12integral.cont_L dif s. $
由于椭圆关于两坐标轴对称，而 $x y$ 关于 $x$ 或 $y$ 都是奇函数，第一项为零. 又 $integral.cont_L dif s=a$，所以所求积分为 $12a$.

*注* 第一型、第二型曲线积分的计算应注意利用曲线方程简化被积函数. 曲线可以用参数方程、直角坐标方程或分段方程表示；有些积分可立即求出，有些需要进一步计算. 曲面积分也有类似情形.
]

#answer("1（4）")[
*分析* 若 $lambda$ 是可逆矩阵 $A$ 的特征值，则 $1/lambda$ 是 $A^(-1)$ 的特征值，$lambda^2$ 是 $A^2$ 的特征值，$lambda+1$ 是 $A+E$ 的特征值.

*解* 由 $A^*=|A|A^(-1)$，知 $A^*$ 的特征值为 $|A|/lambda$，故 $(A^*)^2+E$ 的相应特征值为
$ (frac(|A|,lambda))^2+1. $
本题考查逆矩阵、矩阵平方和矩阵加单位阵的特征值之间的关系.
]

#answer("1（5）")[
*解* 区域 $D$ 的面积为
$ S_D=integral_1^(e^2) dif x integral_0^(1/x) dif y=2. $
由均匀分布的定义，联合概率密度为
$ f(x,y)=cases(1/2 & (x,y) in D,0 & "其他"). $
在 $1<=x<=e^2$ 时，边缘概率密度为
$ f_X(x)=integral_0^(1/x) 1/2 dif y=1/(2x). $
因此 $f_X(2)=1/4$.

*注* 本题涉及均匀分布的联合密度、用二重积分求区域面积及由联合密度求边缘密度. 求边缘密度时应注意积分范围为 $0<y<1/x$.
]

= 二、选择题

#answer("2（1）")[
*解* 先换元，将含参数的积分化为变上限积分. 令 $u=x^2-t^2$，则
$ integral_0^x t f(x^2-t^2) dif t=1/2 integral_0^(x^2) f(u) dif u. $
故
$ frac(dif,dif x) integral_0^x t f(x^2-t^2) dif t=1/2 f(x^2) dot 2x=x f(x^2). $
应选 A.
]

#answer("2（2）")[
*分析* $|x|$ 在零点不可导，而 $x|x|$ 在零点可导.

*解* 将函数改写为
$ f(x)=(x-2)(x+1)|x(x-1)(x+1)|. $
只需检查 $x=0,1,-1$. 在 $x=0,1$ 处，绝对值中的因子为一次零点，外面的因子不为零，故不可导；在 $x=-1$ 处，外面的 $x+1$ 与绝对值中的 $|x+1|$ 结合，函数可导. 不可导点共有两个，应选 B.

*注* 若逐点完全按导数定义计算，比较繁琐.
]

#answer("2（3）")[
*解* 由微分与增量的关系，
$ y'=frac(y,1+x^2), quad frac(dif y,y)=frac(dif x,1+x^2). $
积分得 $ln|y|=arctan x+C_1$，即 $y=C e^(arctan x)$. 由 $y(0)=pi$，得 $C=pi$，从而 $y(1)=pi e^(pi/4)$. 应选 D.

也可将题给增量等式两边除以 $Delta x$，再令 $Delta x->0$，由 $alpha$ 是 $Delta x$ 的高阶无穷小量得到同一微分方程. 不能直接把未知的 $alpha$ 代入增量等式求 $y(1)$.
]

#answer("2（4）")[
*解* 由题给行列式不为零，知两直线的方向向量不平行，排除 B、C.
第一条直线的参数方程为
$ cases(x=a_3+t(a_1-a_2),y=b_3+t(b_1-b_2),z=c_3+t(c_1-c_2)). $
代入第二条直线的方程，有
$ frac(x-a_1,a_2-a_3)=-1+(t-1)frac(a_1-a_2,a_2-a_3), $
其余两式同理. 取 $t=1$ 时，三个比值均为 $-1$，故两直线相交，应选 A.

*注* 不能仅因两直线给出的基点不同便断言它们是异面直线. 本题结合了线性代数与空间解析几何.
]

#answer("2（5）")[
*解* 由条件概率公式，
$ frac(P(A B),P(A))=frac(P(overline(A)B),1-P(A)), $
所以
$ P(A B)(1-P(A))=P(A)(P(B)-P(A B)). $
整理得 $P(A B)=P(A)P(B)$，即 $A,B$ 相互独立，应选 C.
]

= 解答题

#answer("三、")[
*分析* 通过直线 $l$ 作垂直于平面 $pi$ 的平面 $pi_1$，则 $pi_1$ 与 $pi$ 的交线就是 $l$ 在 $pi$ 上的投影 $l_0$. 先求 $pi_1$，再求旋转曲面方程.

*解*
*解法 1* 设经过 $l$ 且垂直于平面 $pi$ 的平面方程为
$ pi_1:A(x-1)+B y+C(z-1)=0, $
则由条件可知
$ A-B+2C=0, quad A+B-C=0. $
由此解得 $A:B:C=-1:3:2$. 于是 $pi_1$ 的方程为
$ x-3y-2z+1=0. quad "（2分）" $
从而 $l_0$ 的方程为
$ l_0:cases(x-y+2z-1=0,x-3y-2z+1=0), quad "（3分）" $
即
$ cases(x=2y,z=-1/2(y-1)). $
于是 $l_0$ 绕 $y$ 轴旋转一周所成曲面的方程为
$ x^2+z^2=4y^2+1/4(y-1)^2, $
即
$ 4x^2-17y^2+4z^2+2y-1=0. quad "（5分）" $

*解法 2* 由于直线 $l$ 方程可写为
$ cases(x-y-1=0,y+z-1=0), $
所以过 $l$ 的平面方程可设为 $x-y-1+lambda(y+z-1)=0$，即 $x+(lambda-1)y+lambda z-(1+lambda)=0$.

由它与平面 $pi$ 垂直，得
$ 1-(lambda-1)+2lambda=0, quad "解得" lambda=-2. $
于是过 $l$ 且垂直于 $pi$ 的平面方程为
$ x-3y-2z+1=0. quad "（2分）" $
从而 $l_0$ 的方程为
$ l_0:cases(x-y+2z-1=0,x-3y-2z+1=0). quad "（3分）" $
（下同解法 1，略）

*解法 3* 平面 $pi_1$ 的法向量同时垂直于直线 $l$ 的方向向量和平面 $pi$ 的法向量. 利用向量积，得
$ mat(delim: "|", bold(i),bold(j),bold(k);1,1,-1;1,-1,2)=bold(i)-3bold(j)-2bold(k). $
由点法式得到 $pi_1:x-3y-2z+1=0$，再按解法 1 求交线及旋转曲面.
]

#answer("四、")[
*分析* 在平面单连通区域内，向量场 $bold(A)=P bold(i)+Q bold(j)$ 为梯度场的充要条件是 $partial Q/partial x=partial P/partial y$. 由此确定 $lambda$，再用与路径无关的曲线积分求 $u(x,y)$.

*解*
令 $P=2x y(x^4+y^2)^lambda$，$Q=-x^2(x^4+y^2)^lambda$.$bold(A)$ 为梯度的充要条件为
$ frac(partial Q,partial x) equiv frac(partial P,partial y). quad "（1分）" $
此即 $4x(x^4+y^2)^lambda (lambda+1)=0$，解得 $lambda=-1$. （3分）

在右半平面内任取一点，例如 $(1,0)$，作为积分路径的起点，则
$ u(x,y)&=integral_((1,0))^((x,y)) frac(2x y dif x-x^2 dif y,x^4+y^2)+C quad "（4分）" \
&=integral_1^x frac(2x dot 0,x^4+y^2) dif x-integral_0^y frac(x^2,x^4+y^2) dif y+C \
&=-arctan frac(y,x^2)+C. quad "（6分）" $
注：不加 $C$ 不扣分.

*注* 本题实质上考查平面单连通区域内与路径无关的第二型曲线积分，不过以梯度的形式出现. 应切实掌握第二型曲线积分的计算，以及与路径无关时的各种变形和计算方法.
]

#answer("五、")[
*分析* 按题意列出微分方程及初始条件，并求解即可.

*解*
取沉放点为原点 $O$，$O y$ 轴的正向铅直向下，则由牛顿第二定律得
$ m frac(dif^2 y,dif t^2)=m g-B rho-k v. quad "（1分）" $
将 $frac(dif^2 y,dif t^2)=v frac(dif v,dif y)$ 代入，消去 $t$，得
$ m v frac(dif v,dif y)=m g-B rho-k v. quad "（2分）" $
分离变量得 $dif y=frac(m v,m g-B rho-k v) dif v$，积分得
$ y=-frac(m,k)v-frac(m(m g-B rho),k^2) ln(m g-B rho-k v)+C. quad "（4分）" $
由初始条件 $v|_(y=0)=0$，定出 $C=frac(m(m g-B rho),k^2) ln(m g-B rho)$. 所求函数为
$ y=-frac(m,k)v-frac(m(m g-B rho),k^2) ln frac(m g-B rho-k v,m g-B rho). quad "（6分）" $

*注* 常见错误包括不会列式或列式错误、不会降阶、分离变量积分出错，以及忘记用初始条件确定常数 $C$. 本题文字较多，积分时尤其容易出错.
]

#answer("六、")[
*分析* 可以补上 $z=0$ 的圆盘构成闭合曲面后用高斯公式，但原被积函数在原点分母为零，须先利用球面方程简化再补曲面. 另一方法是将曲面分片投影到相应坐标平面，化为二重积分逐块计算.

*解*
*解法1* 记所求积分为 $I$，则
$ I=frac(1,a) integral.double_Sigma a x dif y dif z+(z+a)^2 dif x dif y. quad "（1分）" $
补一块有向平面 $S^-: cases(x^2+y^2<=a^2,z=0)$，其法向量与 $z$ 轴正向相反，从而
$ I&=frac(1,a)[∯_(Sigma+S^-) a x dif y dif z+(z+a)^2 dif x dif y-integral.double_(S^-) a x dif y dif z+(z+a)^2 dif x dif y] quad "（2分）" \
&=frac(1,a)[-integral.triple_Omega (3a+2z) dif v+integral.double_D a^2 dif x dif y]. quad "（4分）" $
其中 $Omega$ 为 $Sigma+S^-$ 围成的空间区域，$D$ 为 $z=0$ 上的圆域 $x^2+y^2<=a^2$. 因此
$ I&=frac(1,a)[-2 pi a^4-2 integral.triple_Omega z dif v+pi a^4] \
&=frac(1,a)[-pi a^4-2 integral_0^(2 pi) dif theta integral_0^a r dif r integral_(-sqrt(a^2-r^2))^0 z dif z] \
&=-frac(pi,2)a^3. quad "（7分）" $
*解法2*
$ I=frac(1,a) integral.double_Sigma a x dif y dif z+(z+a)^2 dif x dif y. quad "（1分）" $
记
$ I_1=frac(1,a) integral.double_Sigma a x dif y dif z=-2 integral.double_(D_(y z)) sqrt(a^2-(y^2+z^2)) dif y dif z, $
其中 $D_(y z)$ 是 $y O z$ 面上的半圆域 $y^2+z^2<=a^2$，$z<=0$. 用极坐标得
$ I_1=-2 integral_pi^(2 pi) dif theta integral_0^a sqrt(a^2-r^2)r dif r=-frac(2,3)pi a^3. quad "（4分）" $
又记
$ I_2&=frac(1,a) integral.double_Sigma (z+a)^2 dif x dif y \
&=frac(1,a) integral.double_(D_(x y)) [a-sqrt(a^2-(x^2+y^2))]^2 dif x dif y \
&=frac(1,a) integral_0^(2 pi) dif theta integral_0^a (2a^2-2a sqrt(a^2-r^2)-r^2)r dif r=frac(pi,6)a^3, $
其中 $D_(x y)$ 为 $x O y$ 面上的圆域 $x^2+y^2<=a^2$，故
$ I=I_1+I_2=-frac(pi,2)a^3. quad "（7分）" $

*注* 应加强基本计算的训练.
]

#answer("七、")[
*分析* 这类极限一般可以用夹逼定理或化为积分和式. 本题结合两种方法：先夹逼，再把上下界化为积分和式.

*解*
记方括号中的和为 $S_n$，则
$ S_n<frac(1,n)[sin frac(pi,n)+sin frac(2 pi,n)+dots+sin pi]=frac(1,n)sum_(i=1)^n sin frac(i pi,n). quad "（2分）" $
而
$ lim_(n -> infinity) frac(1,n)sum_(i=1)^n sin frac(i pi,n)=integral_0^1 sin pi x dif x=frac(2,pi). quad "（3分）" $
另一方面，
$ S_n>frac(1,n+1)[sin frac(pi,n)+sin frac(2 pi,n)+dots+sin pi]=frac(n,n+1)dot frac(1,n)sum_(i=1)^n sin frac(i pi,n), quad "（5分）" $
且
$ lim_(n -> infinity)[frac(n,n+1)dot frac(1,n)sum_(i=1)^n sin frac(i pi,n)]=integral_0^1 sin pi x dif x=frac(2,pi). $
由夹逼准则得所求极限为 $frac(2,pi)$. （6分）
]

#answer("八、")[
*分析* 正项数列 $a_n$ 单调减少，故 $lim_(n->infinity) a_n=a>=0$ 且 $a_n>=a$. 若能证明 $a>0$，就可以用公比为 $1/(a+1)<1$ 的等比级数作比较.

*解*
级数 $sum_(n=1)^infinity (frac(1,a_n+1))^n$ 收敛. （1分）

理由：由于正项数列 $ {a_n} $ 单调减少有下界，故 $lim_(n -> infinity) a_n$ 存在，记这个极限值为 $a$，则 $a>=0$. （2分）

若 $a=0$，则由莱布尼兹定理知 $sum_(n=1)^infinity (-1)^n a_n$ 收敛，与题设矛盾，故 $a>0$. （3分）

于是 $frac(1,a_n+1)<frac(1,a+1)<1$，从而
$ (frac(1,a_n+1))^n<(frac(1,a+1))^n. $
而 $sum_(n=1)^infinity (frac(1,a+1))^n$ 是公比为 $frac(1,a+1)<1$ 的几何级数，故收敛. 因此由比较判别法知原级数收敛. （5分）

注：（1）若未说明 $a>0$，本题至多给2分.（2）本题也可用根值法判敛.

*另一方法* 用根值判别法，
$ lim_(n->infinity) root(n,(frac(1,a_n+1))^n)=lim_(n->infinity) frac(1,a_n+1)=frac(1,a+1)<1. $
故所给级数收敛.

*注* 仅由各项 $1/(a_n+1)<1$ 就断言收敛是错误的. 等比级数的公比必须是常数；根值判别法要求的是根值的极限小于 1，而不是每一个根值小于 1.
]

#answer("九、")[
*分析* 先将欲证等式写成 $x_0f(x_0)-integral_(x_0)^1 f(t) dif t=0$. 构造在 $[0,1]$ 上连续、在 $(0,1)$ 内可导的函数 $phi(x)$，使其导数等于左边，再使用罗尔定理. 唯一性可由 $phi'(x)$ 的严格单调性证明.

*解*
*证法1* （1）设
$ F(x)=x integral_x^1 f(t) dif t, quad "（2分）" $
则 $F(0)=F(1)=0$，且 $F'(x)=integral_x^1 f(t) dif t-x f(x)$. 对 $F(x)$ 在区间 $[0,1]$ 上应用罗尔定理知，存在一点 $x_0 in (0,1)$ 使 $F'(x_0)=0$，因而
$ integral_(x_0)^1 f(x) dif x-x_0 f(x_0)=0, $
即矩形面积 $x_0 f(x_0)$ 等于曲边梯形面积 $integral_(x_0)^1 f(x) dif x$. （4分）

（2）设
$ phi(x)=integral_x^1 f(t) dif t-x f(x), quad "（5分）" $
则当 $x in (0,1)$ 时，有 $phi'(x)=-f(x)-f(x)-x f'(x)<0$，所以 $phi(x)$ 在区间 $(0,1)$ 内单调减少，故此时（1）中的 $x_0$ 是唯一的. （6分）

*证法2* （1）设在区间 $(a,1)$（$a>=frac(1,2)$）内取 $x_1$. 若在区间 $[x_1,1]$ 上 $f(x) equiv 0$，则 $(x_1,1)$ 内任一点都可作为 $x_0$，否则可设 $f(x_2)>0$ 为连续函数 $f(x)$ 在区间 $[x_1,1]$ 上的最大值，$x_2 in [x_1,1]$. （1分）

在区间 $[0,x_2]$ 上，作辅助函数
$ phi(x)=integral_x^1 f(t) dif t-x f(x), $
则 $phi(x)$ 连续，且 $phi(0)>0$. 又
$ phi(x_2)=integral_(x_2)^1 f(t) dif t-x_2 f(x_2)<=(1-2x_2)f(x_2)<0. quad "（3分）" $
因而由闭区间上连续函数的介值定理，存在一点 $x_0 in (0,x_2) subset (0,1)$ 使 $phi(x_0)=0$，即
$ integral_(x_0)^1 f(t) dif t=x_0 f(x_0). quad "（4分）" $
（2）证法同上.

注：在证明（1）时，若对所设辅助函数利用闭区间上连续函数介值定理仅得出 $x_0 in [0,1]$，但未排除端点，或者排除端点的理由不充分，则只给1分.

*注* 若直接对 $psi(x)=x f(x)-integral_x^1 f(t) dif t$ 使用介值定理，由 $psi(0)<=0$、$psi(1)>=0$ 只能得到闭区间内有零点，尚不能断言零点在开区间内. 题设只保证 $f$ 非负，不能断言 $psi(1)=f(1)>0$. 如将“非负”改为“正值”，这种做法才可直接使用. 使用定理时必须严格核对条件.
]

#answer("十、")[
*分析* 正交变换前后所对应的二次型矩阵相似，具有相同的特征多项式. 由此求参数，再求特征值 $0,1,4$ 的特征向量，单位化后构成正交矩阵 $P$.

*解*
由 $mat(1,b,1;b,a,1;1,1,1)$ 与 $mat(0,0,0;0,1,0;0,0,4)$ 相似得
$ mat(delim: "|",lambda-1,-b,-1;-b,lambda-a,-1;-1,-1,lambda-1)=mat(delim: "|",lambda,0,0;0,lambda-1,0;0,0,lambda-4), quad "（1分）" $
解之得到 $a=3$，$b=1$. （2分）

对应于特征值 $lambda_1=0$ 的单位特征向量为
$ bold(x)_1=(frac(1,sqrt(2)),0,-frac(1,sqrt(2)))^"T"; $
对应于特征值 $lambda_2=1$ 的单位特征向量为
$ bold(x)_2=(frac(1,sqrt(3)),-frac(1,sqrt(3)),frac(1,sqrt(3)))^"T"; $
对应于特征值 $lambda_3=4$ 的单位特征向量为
$ bold(x)_3=(frac(1,sqrt(6)),frac(2,sqrt(6)),frac(1,sqrt(6)))^"T". quad "（5分）" $
因此
$ P=mat(frac(1,sqrt(2)),frac(1,sqrt(3)),frac(1,sqrt(6));0,-frac(1,sqrt(3)),frac(2,sqrt(6));-frac(1,sqrt(2)),frac(1,sqrt(3)),frac(1,sqrt(6))). quad "（6分）" $
]

#answer("十一、")[
*分析* 根据线性无关的定义，令 $lambda_1 alpha+lambda_2 A alpha+...+lambda_k A^(k-1)alpha=0$. 利用 $A^k alpha=0$ 及 $A^(k-1)alpha!=0$，依次左乘 $A^(k-1),A^(k-2),...,A$，即可逐个证明系数为零.

*解*
设有常数 $lambda_1,lambda_2,dots,lambda_k$，使得
$ lambda_1 bold(alpha)+lambda_2 A bold(alpha)+dots+lambda_k A^(k-1)bold(alpha)=0, $
则有
$ A^(k-1)(lambda_1 bold(alpha)+lambda_2 A bold(alpha)+dots+lambda_k A^(k-1)bold(alpha))=0, quad "（2分）" $
从而有 $lambda_1 A^(k-1)bold(alpha)=0$. 由于 $A^(k-1)bold(alpha)!=0$，所以 $lambda_1=0$.

类似可证得 $lambda_2=lambda_3=dots=lambda_k=0$，因此向量组 $bold(alpha),A bold(alpha),dots,A^(k-1)bold(alpha)$ 线性无关. （4分）
]

#answer("十二、")[
*分析* 由已知基础解系可得两个系数矩阵满足 $A B^T=O$，转置得 $B A^T=O$. 再结合秩与解空间维数，证明 $A$ 的行向量的转置构成第二个方程组的基础解系.

*解*
（Ⅱ）的通解为
$ bold(y)=c_1(a_(11),a_(12),dots,a_(1 comma 2n))^"T"+c_2(a_(21),a_(22),dots,a_(2 comma 2n))^"T"+dots+c_n (a_(n 1),a_(n 2),dots,a_(n comma 2n))^"T", $
其中 $c_1,c_2,dots,c_n$ 为任意常数. （2分）

理由：方程组（Ⅰ）、（Ⅱ）的系数矩阵分别记为 $A,B$，则由（Ⅰ）的已知基础解系可知 $A B^"T"=0$，于是 $B A^"T"=(A B^"T")^"T"=0$，因此可知 $A$ 的 $n$ 个行向量的转置向量为（Ⅱ）的 $n$ 个解向量. （3分）

由于 $B$ 的秩为 $n$，故（Ⅱ）的解空间维数为 $2n-n=n$，又 $A$ 的秩为 $2n$ 与（Ⅰ）的解空间维数之差，即为 $n$，故 $A$ 的 $n$ 个行向量线性无关，从而它们的转置向量构成（Ⅱ）的一个基础解系，于是得到（Ⅱ）的上述通解. （5分）
]

#answer("十三、")[
*分析* 令 $Z=X-Y$. 独立正态变量的线性组合仍服从正态分布，本题 $Z tilde N(0,1)$. 由 $D|Z|=E Z^2-(E|Z|)^2=1-(E|Z|)^2$，关键在于求 $E|Z|$. 也可以从联合概率密度出发计算，但较繁琐.

*解*
令 $Z=X-Y$. 由于 $X tilde N(0,(frac(1,sqrt(2)))^2)$，$Y tilde N(0,(frac(1,sqrt(2)))^2)$，且 $X$ 和 $Y$ 相互独立，故 $Z tilde N(0,1)$. （2分）

因为
$ D(|X-Y|)=D(|Z|)=E(|Z|^2)-[E(|Z|)]^2=E(Z^2)-[E(|Z|)]^2, quad "（3分）" $
而
$ E(Z^2)&=D(Z)=1, \
E(|Z|)&=integral_(-infinity)^(+infinity) |z|frac(1,sqrt(2 pi))e^(-frac(z^2,2)) dif z=frac(2,sqrt(2 pi))integral_0^(+infinity) z e^(-frac(z^2,2)) dif z=sqrt(frac(2,pi)), $
所以
$ D(|X-Y|)=1-frac(2,pi). quad "（6分）" $

*解法二* $X,Y$ 的联合概率密度为
$ f(x,y)=frac(1,pi)e^(-(x^2+y^2)), quad -infinity<x<infinity, quad -infinity<y<infinity. $
因而
$ E|X-Y|&=frac(1,pi)(integral.double_(y<x)(x-y)e^(-(x^2+y^2)) dif x dif y+integral.double_(y>x)(y-x)e^(-(x^2+y^2)) dif x dif y) \
&=frac(2,pi)integral_(-infinity)^infinity dif x integral_(-infinity)^x (x-y)e^(-(x^2+y^2)) dif y \
&=frac(2,pi)(integral_(-infinity)^infinity x e^(-x^2)(integral_(-infinity)^x e^(-y^2) dif y) dif x-integral_(-infinity)^infinity e^(-x^2)(integral_(-infinity)^x y e^(-y^2) dif y) dif x) \
&=frac(2,pi)integral_(-infinity)^infinity e^(-2x^2) dif x=sqrt(2/pi). $
故方差仍为 $1-2/pi$.

*注* 这一解法用到二重积分的计算技巧，过程较繁琐且容易出错. 不能按 $X-Y$ 的正负分情况，把 $D|X-Y|$ 直接写为 $D X+D Y$；这样的推理不成立.
]

#answer("十四、")[
*分析* 只需知道样本均值 $overline(X)$ 的抽样分布，再由 $P(1.4<overline(X)<5.4)>=0.95$ 确定 $n$.

*解*
以 $overline(X)$ 表示该样本均值，则
$ frac(overline(X)-3.4,6)sqrt(n) tilde N(0,1). quad "（1分）" $
从而有
$ P{1.4<overline(X)<5.4}&=P{-2<overline(X)-3.4<2} \
&=P{|overline(X)-3.4|<2}=P{frac(|overline(X)-3.4|,6)sqrt(n)<frac(2sqrt(n),6)} \
&=2Phi(frac(sqrt(n),3))-1>=0.95, quad "（2分）" $
故 $Phi(frac(sqrt(n),3))>=0.975$，由此得 $frac(sqrt(n),3)>=1.96$，即 $n>=(1.96 times 3)^2 approx 34.57$，所以 $n$ 至少应取35. （4分）
]

#answer("十五、")[
*分析* 这是正态总体均值的双边检验. 总体方差未知，采用统计量 $(overline(X)-mu)sqrt(n)/S tilde t(n-1)$. 在原假设 $mu=70$ 下，将观测值代入，与双边检验的临界值比较，即可作出结论.

*解*
设该次考试的考生成绩为 $X$，则 $X tilde N(mu,sigma^2)$. 把从 $X$ 中抽取的容量为 $n$ 的样本均值记为 $overline(X)$，样本标准差记为 $S$. 本题是在显著性水平 $alpha=0.05$ 下检验假设
$ H_0:mu=70; quad H_1:mu!=70, quad "（1分）" $
拒绝域为
$ |t|=frac(|overline(X)-70|,S)sqrt(n)>=t_(1-frac(alpha,2)) (n-1). $
由 $n=36$，$overline(X)=66.5$，$S=15$，$t_(0.975) (36-1)=2.0301$，算得
$ |t|=frac(|66.5-70|sqrt(36),15)=1.4<2.0301, quad "（3分）" $
所以接受假设 $H_0:mu=70$，即在显著性水平0.05下，可以认为这次考试全体考生的平均成绩为70分. （4分）
]

