#import "../template.typ": exam
#show: exam.with(year: 1998, subject: "一", title: "1998年全国工学、经济学硕士研究生入学考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(true)


= 一、填空题（本题共5小题，每小题3分，满分15分）
#ezexam.counter-question.step()

（1）$lim_(x->0) frac(sqrt(1+x)+sqrt(1-x)-2,x^2)=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$-1/4$.
]

（2）设 $z=1/x f(x y)+y phi(x+y)$，$f,phi$ 具有二阶连续导数，则 $frac(partial^2 z,partial x partial y)=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$y f''(x y)+phi'(x+y)+y phi''(x+y)$.
]

（3）设 $l$ 为椭圆 $x^2/4+y^2/3=1$，其周长记为 $a$，则 $integral.cont_l (2x y+3x^2+4y^2) dif s=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$12a$.
]

（4）设 $A$ 为 $n$ 阶矩阵，$|A|!=0$，$A^*$ 为 $A$ 的伴随矩阵，$E$ 为 $n$ 阶单位矩阵.若 $A$ 有特征值 $lambda$，则 $(A^*)^2+E$ 必有特征值#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$(frac(|A|,lambda))^2+1$.
]

（5）设平面区域 $D$ 由曲线 $y=1/x$ 及直线 $y=0,x=1,x=e^2$ 所围成，二维随机变量 $(X,Y)$ 在区域 $D$ 上服从均匀分布，则 $(X,Y)$ 关于 $X$ 的边缘概率密度在 $x=2$ 处的值为#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$1/4$.
]

= 二、选择题（本题共5小题，每小题3分，满分15分）
#ezexam.counter-question.step()

（1）设 $f(x)$ 连续，则 $frac(dif,dif x) integral_0^x t f(x^2-t^2) dif t=$ （　）.
#choices[$x f(x^2)$.][$-x f(x^2)$.][$2x f(x^2)$.][$-2x f(x^2)$.]
#ezexam.solution(show-number: false)[
A.
]

（2）函数 $f(x)=(x^2-x-2)abs(x^3-x)$ 不可导点的个数是（　）.
#choices[3.][2.][1.][0.]
#ezexam.solution(show-number: false)[
B.
]

（3）已知函数 $y=y(x)$ 在任意点 $x$ 处的增量 $Delta y=frac(y Delta x,1+x^2)+alpha$，且当 $Delta x->0$ 时，$alpha$ 是 $Delta x$ 的高阶无穷小，$y(0)=pi$，则 $y(1)$ 等于（　）.
#choices[$2pi$.][$pi$.][$e^(pi/4)$.][$pi e^(pi/4)$.]
#ezexam.solution(show-number: false)[
D.
]

（4）设矩阵 $mat(a_1,b_1,c_1;a_2,b_2,c_2;a_3,b_3,c_3)$ 是满秩的，则直线
$ frac(x-a_3,a_1-a_2)=frac(y-b_3,b_1-b_2)=frac(z-c_3,c_1-c_2) $
与直线
$ frac(x-a_1,a_2-a_3)=frac(y-b_1,b_2-b_3)=frac(z-c_1,c_2-c_3) $
（　）.
#choices[相交于一点.][重合.][平行但不重合.][异面.]
#ezexam.solution(show-number: false)[
A.
]

（5）设 $A,B$ 是两个随机事件，且 $0<P(A)<1$，$P(B)>0$，$P(B|A)=P(B|overline(A))$，则必有（　）.
#choices[$P(A|B)=P(overline(A)|B)$.][$P(A|B)!=P(overline(A)|B)$.][$P(A B)=P(A)P(B)$.][$P(A B)!=P(A)P(B)$.]
#ezexam.solution(show-number: false)[
C.
]

#ezexam.question(label: n => [三、])[
（本题满分5分）

求直线 $l:frac(x-1,1)=y/1=frac(z-1,-1)$ 在平面 $pi:x-y+2z-1=0$ 上的投影直线 $l_0$ 的方程，并求 $l_0$ 绕 $y$ 轴旋转一周所成曲面的方程.
#ezexam.solution(show-number: false)[
*解法 1* 设经过 $l$ 且垂直于平面 $pi$ 的平面方程为
$ pi_1:A(x-1)+B y+C(z-1)=0, $
则由条件可知
$ A-B+2C=0, quad A+B-C=0. $
由此解得 $A:B:C=-1:3:2$.于是 $pi_1$ 的方程为
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
]


]

#ezexam.question(label: n => [四、])[
（本题满分6分）

确定常数 $lambda$，使在右半平面 $x>0$ 上的向量
$ bold(A)(x,y)=2x y(x^4+y^2)^lambda bold(i)-x^2(x^4+y^2)^lambda bold(j) $
为某二元函数 $u(x,y)$ 的梯度，并求 $u(x,y)$.
#ezexam.solution(show-number: false)[
令 $P=2x y(x^4+y^2)^lambda$，$Q=-x^2(x^4+y^2)^lambda$.$bold(A)$ 为梯度的充要条件为
$ frac(partial Q,partial x) equiv frac(partial P,partial y). quad "（1分）" $
此即 $4x(x^4+y^2)^lambda (lambda+1)=0$，解得 $lambda=-1$. （3分）

在右半平面内任取一点，例如 $(1,0)$，作为积分路径的起点，则
$ u(x,y)&=integral_((1,0))^((x,y)) frac(2x y dif x-x^2 dif y,x^4+y^2)+C quad "（4分）" \
&=integral_1^x frac(2x dot 0,x^4+y^2) dif x-integral_0^y frac(x^2,x^4+y^2) dif y+C \
&=-arctan frac(y,x^2)+C. quad "（6分）" $
注：不加 $C$ 不扣分.
]


]

#ezexam.question(label: n => [五、])[
（本题满分6分）

从船上向海中沉放某种探测仪器，按探测要求，需确定仪器的下沉深度 $y$（从海平面算起）与下沉速度 $v$ 之间的函数关系.设仪器在重力作用下，从海平面由静止开始铅直下沉，在下沉过程中还受到阻力和浮力的作用.仪器的质量为 $m$，体积为 $B$，海水的比重为 $rho$，仪器所受的阻力与速度成正比，比例系数为 $k>0$.建立 $y$ 与 $v$ 所满足的微分方程，并求出函数关系 $y=y(v)$.
#ezexam.solution(show-number: false)[
取沉放点为原点 $O$，$O y$ 轴的正向铅直向下，则由牛顿第二定律得
$ m frac(dif^2 y,dif t^2)=m g-B rho-k v. quad "（1分）" $
将 $frac(dif^2 y,dif t^2)=v frac(dif v,dif y)$ 代入，消去 $t$，得
$ m v frac(dif v,dif y)=m g-B rho-k v. quad "（2分）" $
分离变量得 $dif y=frac(m v,m g-B rho-k v) dif v$，积分得
$ y=-frac(m,k)v-frac(m(m g-B rho),k^2) ln(m g-B rho-k v)+C. quad "（4分）" $
由初始条件 $v|_(y=0)=0$，定出 $C=frac(m(m g-B rho),k^2) ln(m g-B rho)$.所求函数为
$ y=-frac(m,k)v-frac(m(m g-B rho),k^2) ln frac(m g-B rho-k v,m g-B rho). quad "（6分）" $
]


]

#ezexam.question(label: n => [六、])[
（本题满分7分）

计算曲面积分
$ integral.double_Sigma frac(a x dif y dif z+(z+a)^2 dif x dif y,sqrt(x^2+y^2+z^2)), $
其中 $Sigma$ 是下半球面 $z=-sqrt(a^2-x^2-y^2)$ 的上侧，$a>0$.
#ezexam.solution(show-number: false)[
*解法1* 记所求积分为 $I$，则
$ I=frac(1,a) integral.double_Sigma a x dif y dif z+(z+a)^2 dif x dif y. quad "（1分）" $
补一块有向平面 $S^-: cases(x^2+y^2<=a^2,z=0)$，其法向量与 $z$ 轴正向相反，从而
$ I&=frac(1,a)[∯_(Sigma+S^-) a x dif y dif z+(z+a)^2 dif x dif y-integral.double_(S^-) a x dif y dif z+(z+a)^2 dif x dif y] quad "（2分）" \
&=frac(1,a)[-integral.triple_Omega (3a+2z) dif v+integral.double_D a^2 dif x dif y]. quad "（4分）" $
其中 $Omega$ 为 $Sigma+S^-$ 围成的空间区域，$D$ 为 $z=0$ 上的圆域 $x^2+y^2<=a^2$.因此
$ I&=frac(1,a)[-2 pi a^4-2 integral.triple_Omega z dif v+pi a^4] \
&=frac(1,a)[-pi a^4-2 integral_0^(2 pi) dif theta integral_0^a r dif r integral_(-sqrt(a^2-r^2))^0 z dif z] \
&=-frac(pi,2)a^3. quad "（7分）" $
*解法2*
$ I=frac(1,a) integral.double_Sigma a x dif y dif z+(z+a)^2 dif x dif y. quad "（1分）" $
记
$ I_1=frac(1,a) integral.double_Sigma a x dif y dif z=-2 integral.double_(D_(y z)) sqrt(a^2-(y^2+z^2)) dif y dif z, $
其中 $D_(y z)$ 是 $y O z$ 面上的半圆域 $y^2+z^2<=a^2$，$z<=0$.用极坐标得
$ I_1=-2 integral_pi^(2 pi) dif theta integral_0^a sqrt(a^2-r^2)r dif r=-frac(2,3)pi a^3. quad "（4分）" $
又记
$ I_2&=frac(1,a) integral.double_Sigma (z+a)^2 dif x dif y \
&=frac(1,a) integral.double_(D_(x y)) [a-sqrt(a^2-(x^2+y^2))]^2 dif x dif y \
&=frac(1,a) integral_0^(2 pi) dif theta integral_0^a (2a^2-2a sqrt(a^2-r^2)-r^2)r dif r=frac(pi,6)a^3, $
其中 $D_(x y)$ 为 $x O y$ 面上的圆域 $x^2+y^2<=a^2$，故
$ I=I_1+I_2=-frac(pi,2)a^3. quad "（7分）" $
]


]

#ezexam.question(label: n => [七、])[
（本题满分6分）

求极限
$ lim_(n -> infinity) [frac(sin frac(pi,n),n+1)+frac(sin frac(2 pi,n),n+frac(1,2))+dots+frac(sin pi,n+frac(1,n))]. $
#ezexam.solution(show-number: false)[
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


]

#ezexam.question(label: n => [八、])[
（本题满分5分）

设正项数列 $ {a_n} $ 单调减少，且级数 $sum_(n=1)^infinity (-1)^n a_n$ 发散，问级数 $sum_(n=1)^infinity (frac(1,a_n+1))^n$ 是否收敛？并说明理由.
#ezexam.solution(show-number: false)[
级数 $sum_(n=1)^infinity (frac(1,a_n+1))^n$ 收敛. （1分）

理由：由于正项数列 $ {a_n} $ 单调减少有下界，故 $lim_(n -> infinity) a_n$ 存在，记这个极限值为 $a$，则 $a>=0$. （2分）

若 $a=0$，则由莱布尼兹定理知 $sum_(n=1)^infinity (-1)^n a_n$ 收敛，与题设矛盾，故 $a>0$. （3分）

于是 $frac(1,a_n+1)<frac(1,a+1)<1$，从而
$ (frac(1,a_n+1))^n<(frac(1,a+1))^n. $
而 $sum_(n=1)^infinity (frac(1,a+1))^n$ 是公比为 $frac(1,a+1)<1$ 的几何级数，故收敛.因此由比较判别法知原级数收敛. （5分）

注：（1）若未说明 $a>0$，本题至多给2分.（2）本题也可用根值法判敛.
]


]

#ezexam.question(label: n => [九、])[
（本题满分6分）

设 $y=f(x)$ 是区间 $[0,1]$ 上的任一非负连续函数.

（1）试证存在 $x_0 in (0,1)$，使得在区间 $[0,x_0]$ 上以 $f(x_0)$ 为高的矩形面积，等于在区间 $[x_0,1]$ 上以 $y=f(x)$ 为曲边的曲边梯形面积.

（2）又设 $f(x)$ 在区间 $(0,1)$ 内可导且 $f'(x)>-frac(2f(x),x)$，证明（1）中的 $x_0$ 是唯一的.
#ezexam.solution(show-number: false)[
*证法1* （1）设
$ F(x)=x integral_x^1 f(t) dif t, quad "（2分）" $
则 $F(0)=F(1)=0$，且 $F'(x)=integral_x^1 f(t) dif t-x f(x)$.对 $F(x)$ 在区间 $[0,1]$ 上应用罗尔定理知，存在一点 $x_0 in (0,1)$ 使 $F'(x_0)=0$，因而
$ integral_(x_0)^1 f(x) dif x-x_0 f(x_0)=0, $
即矩形面积 $x_0 f(x_0)$ 等于曲边梯形面积 $integral_(x_0)^1 f(x) dif x$. （4分）

（2）设
$ phi(x)=integral_x^1 f(t) dif t-x f(x), quad "（5分）" $
则当 $x in (0,1)$ 时，有 $phi'(x)=-f(x)-f(x)-x f'(x)<0$，所以 $phi(x)$ 在区间 $(0,1)$ 内单调减少，故此时（1）中的 $x_0$ 是唯一的. （6分）

*证法2* （1）设在区间 $(a,1)$（$a>=frac(1,2)$）内取 $x_1$.若在区间 $[x_1,1]$ 上 $f(x) equiv 0$，则 $(x_1,1)$ 内任一点都可作为 $x_0$，否则可设 $f(x_2)>0$ 为连续函数 $f(x)$ 在区间 $[x_1,1]$ 上的最大值，$x_2 in [x_1,1]$. （1分）

在区间 $[0,x_2]$ 上，作辅助函数
$ phi(x)=integral_x^1 f(t) dif t-x f(x), $
则 $phi(x)$ 连续，且 $phi(0)>0$.又
$ phi(x_2)=integral_(x_2)^1 f(t) dif t-x_2 f(x_2)<=(1-2x_2)f(x_2)<0. quad "（3分）" $
因而由闭区间上连续函数的介值定理，存在一点 $x_0 in (0,x_2) subset (0,1)$ 使 $phi(x_0)=0$，即
$ integral_(x_0)^1 f(t) dif t=x_0 f(x_0). quad "（4分）" $
（2）证法同上.

注：在证明（1）时，若对所设辅助函数利用闭区间上连续函数介值定理仅得出 $x_0 in [0,1]$，但未排除端点，或者排除端点的理由不充分，则只给1分.
]


]

#ezexam.question(label: n => [十、])[
（本题满分6分）

已知二次曲面方程
$ x^2+a y^2+z^2+2b x y+2x z+2y z=4 $
可以经过正交变换 $vec(x,y,z)=P vec(xi,eta,zeta)$ 化为椭圆柱面方程 $eta^2+4zeta^2=4$，求 $a,b$ 的值和正交矩阵 $P$.
#ezexam.solution(show-number: false)[
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


]

#ezexam.question(label: n => [十一、])[
（本题满分4分）

设 $A$ 是 $n$ 阶矩阵，若存在正整数 $k$，使线性方程组 $A^k bold(x)=0$ 有解向量 $bold(alpha)$，且 $A^(k-1)bold(alpha)!=0$.试证：向量组 $bold(alpha),A bold(alpha),dots,A^(k-1)bold(alpha)$ 是线性无关的.
#ezexam.solution(show-number: false)[
设有常数 $lambda_1,lambda_2,dots,lambda_k$，使得
$ lambda_1 bold(alpha)+lambda_2 A bold(alpha)+dots+lambda_k A^(k-1)bold(alpha)=0, $
则有
$ A^(k-1)(lambda_1 bold(alpha)+lambda_2 A bold(alpha)+dots+lambda_k A^(k-1)bold(alpha))=0, quad "（2分）" $
从而有 $lambda_1 A^(k-1)bold(alpha)=0$.由于 $A^(k-1)bold(alpha)!=0$，所以 $lambda_1=0$.

类似可证得 $lambda_2=lambda_3=dots=lambda_k=0$，因此向量组 $bold(alpha),A bold(alpha),dots,A^(k-1)bold(alpha)$ 线性无关. （4分）
]


]

#ezexam.question(label: n => [十二、])[
（本题满分5分）

已知线性方程组
$ "（Ⅰ）" cases(a_(11)x_1+a_(12)x_2+dots+a_(1 comma 2n)x_(2n)=0,a_(21)x_1+a_(22)x_2+dots+a_(2 comma 2n)x_(2n)=0,dots,a_(n 1)x_1+a_(n 2)x_2+dots+a_(n comma 2n)x_(2n)=0) $
的一个基础解系为 $(b_(11),b_(12),dots,b_(1 comma 2n))^"T",(b_(21),b_(22),dots,b_(2 comma 2n))^"T",dots,(b_(n 1),b_(n 2),dots,b_(n comma 2n))^"T"$.试写出线性方程组
$ "（Ⅱ）" cases(b_(11)y_1+b_(12)y_2+dots+b_(1 comma 2n)y_(2n)=0,b_(21)y_1+b_(22)y_2+dots+b_(2 comma 2n)y_(2n)=0,dots,b_(n 1)y_1+b_(n 2)y_2+dots+b_(n comma 2n)y_(2n)=0) $
的通解，并说明理由.
#ezexam.solution(show-number: false)[
（Ⅱ）的通解为
$ bold(y)=c_1(a_(11),a_(12),dots,a_(1 comma 2n))^"T"+c_2(a_(21),a_(22),dots,a_(2 comma 2n))^"T"+dots+c_n (a_(n 1),a_(n 2),dots,a_(n comma 2n))^"T", $
其中 $c_1,c_2,dots,c_n$ 为任意常数. （2分）

理由：方程组（Ⅰ）、（Ⅱ）的系数矩阵分别记为 $A,B$，则由（Ⅰ）的已知基础解系可知 $A B^"T"=0$，于是 $B A^"T"=(A B^"T")^"T"=0$，因此可知 $A$ 的 $n$ 个行向量的转置向量为（Ⅱ）的 $n$ 个解向量. （3分）

由于 $B$ 的秩为 $n$，故（Ⅱ）的解空间维数为 $2n-n=n$，又 $A$ 的秩为 $2n$ 与（Ⅰ）的解空间维数之差，即为 $n$，故 $A$ 的 $n$ 个行向量线性无关，从而它们的转置向量构成（Ⅱ）的一个基础解系，于是得到（Ⅱ）的上述通解. （5分）
]


]

#ezexam.question(label: n => [十三、])[
（本题满分6分）

设两个随机变量 $X,Y$ 相互独立，且都服从均值为0、方差为 $frac(1,2)$ 的正态分布，求随机变量 $|X-Y|$ 的方差.
#ezexam.solution(show-number: false)[
令 $Z=X-Y$.由于 $X tilde N(0,(frac(1,sqrt(2)))^2)$，$Y tilde N(0,(frac(1,sqrt(2)))^2)$，且 $X$ 和 $Y$ 相互独立，故 $Z tilde N(0,1)$. （2分）

因为
$ D(|X-Y|)=D(|Z|)=E(|Z|^2)-[E(|Z|)]^2=E(Z^2)-[E(|Z|)]^2, quad "（3分）" $
而
$ E(Z^2)&=D(Z)=1, \
E(|Z|)&=integral_(-infinity)^(+infinity) |z|frac(1,sqrt(2 pi))e^(-frac(z^2,2)) dif z=frac(2,sqrt(2 pi))integral_0^(+infinity) z e^(-frac(z^2,2)) dif z=sqrt(frac(2,pi)), $
所以
$ D(|X-Y|)=1-frac(2,pi). quad "（6分）" $
]


]

#ezexam.question(label: n => [十四、])[
（本题满分4分）

从正态总体 $N(3.4,6^2)$ 中抽取容量为 $n$ 的样本，如果要求其样本均值位于区间 $(1.4,5.4)$ 内的概率不小于0.95，问样本容量 $n$ 至少应取多大？

附表：标准正态分布表
$ Phi(z)=integral_(-infinity)^z frac(1,sqrt(2 pi))e^(-frac(t^2,2)) dif t $
#table(columns: 5, [$z$], [1.28], [1.645], [1.96], [2.33], [$Phi(z)$], [0.900], [0.950], [0.975], [0.990])
#ezexam.solution(show-number: false)[
以 $overline(X)$ 表示该样本均值，则
$ frac(overline(X)-3.4,6)sqrt(n) tilde N(0,1). quad "（1分）" $
从而有
$ P{1.4<overline(X)<5.4}&=P{-2<overline(X)-3.4<2} \
&=P{|overline(X)-3.4|<2}=P{frac(|overline(X)-3.4|,6)sqrt(n)<frac(2sqrt(n),6)} \
&=2Phi(frac(sqrt(n),3))-1>=0.95, quad "（2分）" $
故 $Phi(frac(sqrt(n),3))>=0.975$，由此得 $frac(sqrt(n),3)>=1.96$，即 $n>=(1.96 times 3)^2 approx 34.57$，所以 $n$ 至少应取35. （4分）
]


]

#ezexam.question(label: n => [十五、])[
（本题满分4分）

设某次考试的考生成绩服从正态分布，从中随机地抽取36位考生的成绩，算得平均成绩为66.5分，标准差为15分.问在显著性水平0.05下，是否可以认为这次考试全体考生的平均成绩为70分？并给出检验过程.

附表：$t$ 分布表
$ P{t(n)<=t_p (n)}=p $
#table(columns: 3, [$n slash p$], [0.95], [0.975], [35], [1.6896], [2.0301], [36], [1.6883], [2.0281])
#ezexam.solution(show-number: false)[
设该次考试的考生成绩为 $X$，则 $X tilde N(mu,sigma^2)$.把从 $X$ 中抽取的容量为 $n$ 的样本均值记为 $overline(X)$，样本标准差记为 $S$.本题是在显著性水平 $alpha=0.05$ 下检验假设
$ H_0:mu=70; quad H_1:mu!=70, quad "（1分）" $
拒绝域为
$ |t|=frac(|overline(X)-70|,S)sqrt(n)>=t_(1-frac(alpha,2)) (n-1). $
由 $n=36$，$overline(X)=66.5$，$S=15$，$t_(0.975) (36-1)=2.0301$，算得
$ |t|=frac(|66.5-70|sqrt(36),15)=1.4<2.0301, quad "（3分）" $
所以接受假设 $H_0:mu=70$，即在显著性水平0.05下，可以认为这次考试全体考生的平均成绩为70分. （4分）
]

]
