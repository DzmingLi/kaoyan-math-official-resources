#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2005, subject: "二", title: "2005年全国硕士研究生入学统一考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#import "@preview/cetz:0.5.2": canvas, draw
#import "@preview/cetz:0.5.2"
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2005 数学二试卷参考解答

= 一、填空题

#answer("1.")[
*解法1* 改写为指数函数求导：
$ y'=(e^(x ln(1+sin x)))'=(1+sin x)^x[ln(1+sin x)+frac(x cos x,1+sin x)]. $
于是 $y'|_(x=pi)=-pi$，故 $dif y|_(x=pi)=-pi dif x$.

*解法2* 取对数，$ln y=x ln(1+sin x)$，两边求导，
$ frac(y',y)=ln(1+sin x)+frac(x cos x,1+sin x), $
仍得上式及 $dif y|_(x=pi)=-pi dif x$.
*典型错误* 忽略微分与导数的区别，答案漏写 $dif x$.
]

#answer("2.")[
*解* $ a=lim_(x->+infinity)frac(y,x)=lim_(x->+infinity)(frac(1,x)+1)^(3/2)=1, $
$ b=lim_(x->+infinity)(y-a x)=lim_(x->+infinity)frac((1+x)^(3/2)-x^(3/2),sqrt(x))=lim_(x->+infinity)frac(1+3x+3x^2,sqrt(x)((1+x)^(3/2)+x^(3/2)))=frac(3,2). $
所以斜渐近线为 $y=x+3/2$.
*典型错误* 参数 $a,b$ 的极限计算错误，或填空时只写 $x+3/2$，漏掉 $y=$.
]

#answer("3.")[
*解* 令 $x=sin t,dif x=cos t dif t$，则
$ integral_0^1 frac(x dif x,(2-x^2)sqrt(1-x^2))=integral_0^(pi/2)frac(sin t cos t dif t,(2-sin^2 t)cos t)=integral_0^(pi/2)frac(-dif cos t,1+cos^2 t)=[-arctan cos t]_0^(pi/2)=frac(pi,4). $
*注* 这是无界函数的反常积分，经换元化为通常定积分，因此收敛.
]

#answer("4.")[
*分析* 考查一阶线性微分方程初值问题的解法，主要运算是求不定积分.
*解* 化为标准形 $y'+2/x y=ln x$，解得
$ y=e^(-integral frac(2,x)dif x)(integral ln x e^(integral frac(2,x)dif x)dif x+C)=frac(1,x^2)(integral x^2 ln x dif x+C). $
分部积分得
$ y=frac(1,x^2)(frac(1,3)x^3 ln x-frac(1,3)integral x^2 dif x+C)=frac(1,x^2)(frac(1,3)x^3 ln x-frac(1,9)x^3+C). $
由 $y(1)=-1/9$ 得 $C=0$，于是 $y=x/3(ln x-1/3)$.

*典型错误* 死记公式而忽略推导，弄错积分因子中正负指数的位置.
]

#answer("5.")[
*分析* 考查无穷小比较的概念及极限求法.
*解* 由等价关系，
$ 1=lim_(x->0)frac(sqrt(1+x arcsin x)-sqrt(cos x),k x^2)=lim_(x->0)frac(1+x arcsin x-cos x,(sqrt(1+x arcsin x)+sqrt(cos x))k x^2) $
$ =frac(1,2)lim_(x->0)[frac(arcsin x,k x)+frac(1-cos x,k x^2)]=frac(1,2)(frac(1,k)+frac(1,2k)). $
故 $k=3/4$.
]

#answer("6.")[
*解法1* 利用行列式性质，依次从第三列减第二列、第二列减第一列，得
$ det B=det(alpha_1+alpha_2+alpha_3,alpha_2+3alpha_3,alpha_2+5alpha_3) \
=det(alpha_1+alpha_2+alpha_3,alpha_2+3alpha_3,2alpha_3) \
=2det(alpha_1+alpha_2+alpha_3,alpha_2,alpha_3)=2det A=2. $
*解法2* 利用矩阵运算，
$ B=(alpha_1,alpha_2,alpha_3)mat(1,1,1;1,2,3;1,4,9)=A mat(1,1,1;1,2,3;1,4,9). $
所以 $det B=det A dot mat(delim:"|",1,1,1;1,2,3;1,4,9)=2det A=2$.
*注* 两种方法均要求熟练掌握行列式计算或矩阵运算.
]

= 二、选择题

#answer("7.")[
*分析* 考查极限计算、可导概念及导数与左、右导数的关系.
*解* 当 $abs(x)<=1$ 时，$lim_(n->infinity)root(n,1+abs(x)^(3n))=1$；当 $abs(x)>1$ 时，该极限为 $abs(x)^3$. 因而
$ f(x)=cases(1 & abs(x)<=1,abs(x)^3 & abs(x)>1). $
只须考虑 $x=plus.minus 1$ 处的可导性. 由导数定义，
$ f'_-(-1)=-3,quad f'_+(-1)=0,quad f'_-(1)=0,quad f'_+(1)=3. $
所以恰有两个不可导点，选 C.
]

#answer("8.")[
*分析* 最简单的方法是排除法. 取 $f(x)=3x^2$，则 $F(x)=x^3+C$，当 $C!=0$ 时原函数不是奇函数；取非零常数周期函数 $f(x)=a$，则 $F(x)=a x+C$ 不周期；取单调函数 $F(x)=x^3$，其导函数 $3x^2$ 不单调，故 B、C、D 均不成立.
*证* 若 $F(-x)=F(x)$，两边求导得 $F'(-x)(-1)=F'(x)$，即 $f(-x)=-f(x)$，所以 $f$ 为奇函数.
反之，若 $f$ 是奇函数，其任一原函数写成 $F(x)=integral_0^x f(t)dif t+C$，令 $u=-t$，得
$ F(-x)=integral_0^(-x)f(t)dif t+C=integral_0^x f(-u)(-dif u)+C=integral_0^x f(u)dif u+C=F(x). $
所以 $F$ 为偶函数，选 A.
*注* 可导偶函数的导数为奇函数，可导奇函数的导数为偶函数；偶函数的原函数中有一个奇函数，奇函数的所有原函数均为偶函数；周期函数的原函数可写为周期函数与线性函数之和.
]

#answer("9.")[
*分析* 写出 $x=3$ 处法线方程，再令 $y=0$ 求横坐标.
*解* 由 $3=t^2+2t$ 得 $t=1$ 或 $-3$，由 $y=ln(1+t)$ 的定义域取 $t=1$. 此时
$ frac(dif y,dif x)|_(t=1)=frac(1/(1+t),2t+2)|_(t=1)=frac(1,8). $
故 $(3,ln 2)$ 处法线为 $y-ln 2=-8(x-3)$，令 $y=0$ 得 $x=3+1/8 ln 2$，选 A.
]

#answer("10.")[
*分析* 积分区域中 $x,y$ 地位对称，交换两者积分不变，再利用二重积分性质求值.
*解* 记所求积分为 $I$，由轮换对称性，
$ I=integral.double_D frac(a sqrt(f(y))+b sqrt(f(x)),sqrt(f(y))+sqrt(f(x)))dif sigma. $
两式相加，
$ 2I=integral.double_D(a+b)dif sigma=(a+b)frac(1,4)pi dot 2^2=(a+b)pi. $
所以 $I=(a+b)pi/2$，选 D.
*注* 单选题也可直接取 $f(x)=1$，立即排除其他选项.
]

#answer("11.")[
*分析* 考查复合函数求导法则和变上限积分求导公式.
*解* 因为
$ frac(partial u,partial x)=phi.alt'(x+y)+phi.alt'(x-y)+psi(x+y)-psi(x-y), $
$ frac(partial u,partial y)=phi.alt'(x+y)-phi.alt'(x-y)+psi(x+y)+psi(x-y), $
$ frac(partial^2 u,partial x^2)=phi.alt''(x+y)+phi.alt''(x-y)+psi'(x+y)-psi'(x-y), $
$ frac(partial^2 u,partial x partial y)=phi.alt''(x+y)-phi.alt''(x-y)+psi'(x+y)+psi'(x-y), $
$ frac(partial^2 u,partial y^2)=phi.alt''(x+y)+phi.alt''(x-y)+psi'(x+y)-psi'(x-y), $
所以 $u_(x x)=u_(y y)$，选 B.
]

#answer("12.")[
*分析* 求零点处的极限及1处的左右极限，依据间断点分类判断.
*解* 在零点处 $1/(e^(x/(x-1))-1)$ 无有限极限，故为第二类间断点. 在1处，
$ lim_(x->1^-)frac(1,e^(x/(x-1))-1)=-1,quad lim_(x->1^+)frac(1,e^(x/(x-1))-1)=0. $
两个单侧极限均存在但不相等，故为第一类跳跃间断点，选 D.
]

#answer("13.")[
*分析* 由 $A(alpha_1+alpha_2)=lambda_1 alpha_1+lambda_2 alpha_2$，若 $lambda_2=0$，两向量必相关；$lambda_1=0$ 时两向量无关，但这只是充分条件，不能选 C.
*解法1* 设 $k_1 alpha_1+k_2 A(alpha_1+alpha_2)=0$，则
$ (k_1+lambda_1 k_2)alpha_1+lambda_2 k_2 alpha_2=0. $
对应不同特征值的特征向量线性无关，故
$ cases(k_1+lambda_1 k_2=0,lambda_2 k_2=0). $
两向量无关当且仅当此齐次方程组只有零解，即 $mat(delim:"|",1,lambda_1;0,lambda_2)=lambda_2!=0$，选 B.

*解法2* 因为
$ (alpha_1,A(alpha_1+alpha_2))=(alpha_1,alpha_2)mat(1,lambda_1;0,lambda_2), $
且 $alpha_1,alpha_2$ 线性无关，故两向量无关当且仅当右侧二阶矩阵行列式非零，仍得 $lambda_2!=0$.
*典型错误* 将充分条件 $lambda_1=0$ 当作充分必要条件.
]

#answer("14.")[
*解* 记交换第一、二行对应的初等矩阵为 $E_(12)$，则 $B=E_(12)A$，于是
$ B^(-1)=A^(-1)E_(12)^(-1)=A^(-1)E_(12). $
又 $B^(-1)=frac(B^*,det B),A^(-1)=frac(A^*,det A),det B=-det A$，所以 $-B^*=A^* E_(12)$. 右乘 $E_(12)$ 就是交换第一、二列，选 C.
*典型错误* 混淆伴随矩阵与逆矩阵，或忘记交换两行使行列式变号；也有人未弄清伴随矩阵的构造而误选 B.
]

= 三、解答题

#answer("15.")[
*分析* 这是 $0/0$ 型极限，可用洛必达法则. 分子中 $x-t$ 应拆项，分母中 $f(x-t)$ 应先换元再求导，最后用积分中值定理.


原式 $=lim_(x->0)(x integral_0^x f(t)dif t-integral_0^x t f(t)dif t)/(x integral_0^x f(x-t)dif t)$.

设 $x-t=u$，得
$ lim_(x->0)(x integral_0^x f(t)dif t-integral_0^x t f(t)dif t)/(x integral_0^x f(u)dif u). $
由洛必达法则，等于
$ lim_(x->0)(integral_0^x f(t)dif t+x f(x)-x f(x))/(integral_0^x f(u)dif u+x f(x)). $
由积分中值定理（$xi$ 在0和 $x$ 之间），等于
$ lim_(x->0,xi->0)(x f(xi))/(x f(xi)+x f(x))=f(0)/(f(0)+f(0))=1/2. $


*典型错误* 题设只有连续条件，不能在使用一次洛必达法则后继续对 $f(x)$ 求导. 也不能不换元就把 $(integral_0^x f(x-t)dif t)'$ 写成 $f(0)$，被积函数也含参数 $x$.
]

#answer("16.")[
*分析* 写出两个面积的积分表达式，得到两个变上限积分相等. 两边对 $x$ 求导时，须注意 $y$ 是 $x$ 的函数.


由题设 $S_1(x)=S_2(y)$，知
$ integral_0^x [e^x-1/2(1+e^x)]dif x=integral_1^y [ln y-phi(y)]dif y, $
即
$ integral_0^x (1/2 e^x-1/2)dif x=integral_1^y [ln y-phi(y)]dif y. $
两边对 $x$ 求导，得
$ 1/2 e^x-1/2=[ln y-phi(y)](dif y)/(dif x). $
由 $y=e^x$ 得
$ 1/2 e^x-1/2=[x-phi(e^x)]e^x, $
于是 $phi(e^x)=x+1/(2e^x)-1/2$，从而 $phi(y)=ln y+1/(2y)-1/2$，故曲线 $C_3$ 的方程为 $x=ln y+1/(2y)-1/2$.


*典型错误* 等式两边求导时忘记 $y$ 对 $x$ 的依赖，漏掉 $dif y/dif x$.
]

#answer("17.")[
*分析* 综合导数的几何意义、拐点的必要条件和定积分分部积分公式，重点在于从图中读出函数与导数的值.


解　根据题意，从图中读出 $f(0)=0,f'(0)=2,f(3)=2,f'(3)=-2,f''(3)=0$.
$ integral_0^3(x^2+x)f'''(x)dif x \
=lr((x^2+x)f''(x))|_0^3-integral_0^3(2x+1)f''(x)dif x \
=-integral_0^3(2x+1)f''(x)dif x \
=-lr((2x+1)f'(x))|_0^3+2integral_0^3 f'(x)dif x \
=-[7 times (-2)-2]+2integral_0^3 f'(x)dif x \
=16+2f(x)|_0^3=16+4=20. $


*典型错误* 分部积分公式中的符号计算错误.

*典型错误* 误以为曲线是三次多项式而设 $y=a x^3+b x^2+c x$；或不理解切线斜率、拐点等概念，读错 $f'(0),f'(3),f''(3)$.
]

#answer("18.")[
*分析* 将 $t$ 看作中间变量，计算 $y',y''$ 后代入，得到二阶常系数线性齐次微分方程，再用初值求特解.


$ y'=(dif y)/(dif x)=(dif y)/(dif t) dot 1/((dif x)/(dif t))=-1/(sin t)(dif y)/(dif t), $
$ y''=(dif^2 y)/(dif x^2)=dif/(dif t)((dif y)/(dif x)) dot 1/((dif x)/(dif t)) \
=(cos t/(sin^2 t)(dif y)/(dif t)-1/(sin t)(dif^2 y)/(dif t^2))(-1/(sin t)) \
=1/(sin^2 t)(dif^2 y)/(dif t^2)-cos t/(sin^3 t)(dif y)/(dif t). $
将 $y',y''$ 代入原方程，得
$ (1-cos^2 t)(1/(sin^2 t)(dif^2 y)/(dif t^2)-cos t/(sin^3 t)(dif y)/(dif t))+cos t/(sin t)(dif y)/(dif t)+y=0, $
即 $(dif^2 y)/(dif t^2)+y=0$，其特征方程为 $lambda^2+1=0$，解得 $lambda=plus.minus i$，于是此方程的通解为 $y=C_1 cos t+C_2 sin t$，从而原方程的通解为 $y=C_1 x+C_2 sqrt(1-x^2)$.

由 $y|_(x=0)=1,y'|_(x=0)=2$ 得 $C_1=2,C_2=1$，故所求方程的特解为 $y=2x+sqrt(1-x^2)$.


*典型错误* 分不清自变量与中间变量，只代换 $x=cos t$ 而不同时换算一、二阶导数；会算一阶导数而不会算二阶导数；化成常系数方程后不用特征方程，绕用降阶法导致计算错误.
]

#answer("19.")[
*分析* 第（Ⅰ）问取辅助函数，应用连续函数的零点存在定理；第（Ⅱ）问利用前一问的结果，在两个互不重叠的区间上应用拉格朗日中值定理.


证　（Ⅰ）令 $g(x)=f(x)+x-1$，则 $g(x)$ 在 $[0,1]$ 上连续，且 $g(0)=-1<0,g(1)=1>0$，所以存在 $xi in (0,1)$，使得 $g(xi)=f(xi)+xi-1=0$，即 $f(xi)=1-xi$.

（Ⅱ）根据拉格朗日中值定理，存在 $eta in (0,xi),zeta in (xi,1)$，使得
$ f'(eta)=(f(xi)-f(0))/xi=(1-xi)/xi, \
f'(zeta)=(f(1)-f(xi))/(1-xi)=(1-(1-xi))/(1-xi)=xi/(1-xi), $
从而 $f'(eta)f'(zeta)=(1-xi)/xi dot xi/(1-xi)=1$.


*典型错误* 先在整个 $[0,1]$ 上用中值定理，得到某点 $f'(eta)=1$，再试图找另一个点也满足导数为1. 题设不能保证存在两个不同的此类点.

*典型错误* 第（Ⅰ）问直接在 $[0,1]$ 上用微分中值定理，不能得到所求零点；第（Ⅱ）问未利用前一问的 $xi$，而是在 $[0,1/2]$ 与 $[1/2,1]$ 上套中值定理，不能证明所需乘积.
]

#answer("20.")[
*分析* 由全微分与给定函数值求出 $f(x,y)$，在区域内部求驻点，在椭圆边界求可能的极值，再比较各点函数值.


解法1　由 $dif z=2x dif x-2y dif y$ 可知 $z=f(x,y)=x^2-y^2+C$，再由 $f(1,1)=2$，得 $C=2$，故 $z=f(x,y)=x^2-y^2+2$.

令 $(partial f)/(partial x)=2x=0,(partial f)/(partial y)=-2y=0$，解得驻点 $(0,0)$.

在椭圆 $x^2+y^2/4=1$ 上，$z=x^2-(4-4x^2)+2$，即 $z=5x^2-2 (-1<=x<=1)$，其最大值为 $z|_(x=plus.minus 1)=3$，最小值为 $z|_(x=0)=-2$. 再与 $f(0,0)=2$ 比较，可知 $f(x,y)$ 在椭圆域 $D$ 上的最大值为3，最小值为 $-2$.

解法2　同解法1得驻点 $(0,0)$.

用拉格朗日乘数法求此函数在椭圆 $x^2+y^2/4=1$ 上的极值. 设
$ L=x^2-y^2+2+lambda(x^2+y^2/4-1), $
令
$ cases(L'_x=2x+2lambda x=0,L'_y=-2y+lambda/2 y=0,L'_lambda=x^2+y^2/4-1=0). $
解得4个可能的极值点 $(0,2),(0,-2),(1,0)$ 和 $(-1,0)$. 又 $f(0,2)=-2,f(0,-2)=-2,f(1,0)=3,f(-1,0)=3$，再与 $f(0,0)=2$ 比较，得 $f(x,y)$ 在 $D$ 上的最大值为3，最小值为 $-2$.


*典型错误* 积分常数计算错误；只比较边界上的值，未与内部驻点 $(0,0)$ 的函数值比较，或论述不完整.
]

#answer("21.")[
*分析* 含绝对值的被积函数实际是分区域函数，须先按单位圆把区域分成两部分，再分别积分.


解法1　将区域 $D$ 分成两个子区域：
$ D_1={(x,y)|x^2+y^2<=1,x>=0,y>=0}, $
$ D_2={(x,y)|x^2+y^2>=1,0<=x<=1,0<=y<=1}, $
则
$ integral.double_D |x^2+y^2-1|dif sigma=integral.double_(D_1)(1-x^2-y^2)dif sigma+integral.double_(D_2)(x^2+y^2-1)dif sigma. $
由于
$ integral.double_(D_1)(1-x^2-y^2)dif sigma=integral_0^(pi/2)dif theta integral_0^1(1-r^2)r dif r=pi/8, $
$ integral.double_(D_2)(x^2+y^2-1)dif sigma=integral.double_D(x^2+y^2-1)dif sigma-integral.double_(D_1)(x^2+y^2-1)dif sigma \
=integral_0^1 dif x integral_0^1(x^2+y^2-1)dif y-(-pi/8) \
=integral_0^1(x^2+1/3-1)dif x+pi/8 \
=lr([x^3/3-2/3 x])|_0^1+pi/8=-1/3+pi/8, $
故 $integral.double_D |x^2+y^2-1|dif sigma=pi/8-1/3+pi/8=pi/4-1/3$.

解法2　如下图所示，将 $D$ 分成 $D_1$ 与 $D_2$ 两部分.
#import "@preview/cetz:0.5.2": canvas, draw
#align(center,canvas({
 import draw: *
 line((0,0),(3.5,0),mark:(end:">"));line((0,0),(0,3.5),mark:(end:">"))
 line((0,3),(3,3),(3,0));arc((3,0),start:0deg,stop:90deg,radius:3)
 content((-.15,-.15),$O$);content((3,-.2),[1]);content((-.2,3),[1]);content((3.6,0),$x$);content((0,3.7),$y$)
 content((1.1,1.2),$D_1$);content((2.6,2.6),$D_2$);content((3.9,1.7),$x^2+y^2=1$);line((2.65,1.4),(3.2,1.7))
}))
$ integral.double_D|x^2+y^2-1|dif sigma=integral.double_(D_1)(1-x^2-y^2)dif sigma+integral.double_(D_2)(x^2+y^2-1)dif sigma. $
由于 $integral.double_(D_1)(1-x^2-y^2)dif sigma=integral_0^(pi/2)dif theta integral_0^1(1-r^2)r dif r=pi/8$，
$ integral.double_(D_2)(x^2+y^2-1)dif sigma=integral_0^1 dif x integral_(sqrt(1-x^2))^1(x^2+y^2-1)dif y \
=integral_0^1 lr([x^2 y+y^3/3-y])|_(sqrt(1-x^2))^1 dif x \
=integral_0^1[x^2-2/3+2/3(1-x^2)^(3/2)]dif x \
=integral_0^1(x^2-2/3)dif x+2/3 integral_0^1(1-x^2)^(3/2)dif x \
=-1/3+2/3 I, $
其中
$ I=integral_0^1(1-x^2)^(3/2)dif x=integral_0^(pi/2)cos^4 t dif t=3/4 dot 1/2 dot pi/2=(3pi)/16 $
（令 $x=sin t$）. 因此
$ integral.double_(D_2)(x^2+y^2-1)dif sigma=-1/3+2/3 dot (3pi)/16=pi/8-1/3, $
$ integral.double_D|x^2+y^2-1|dif sigma=pi/8+pi/8-1/3=pi/4-1/3. $


*注* 第一种方法利用区域相减较简便，第二种直接计算较繁，应会比较不同方法以选择合适的计算路径.
*典型错误* 直接在整个区域去掉绝对值；第二种方法中积分计算错误，特别是用倍角公式计算 $integral_0^(pi/2)cos^4 t dif t$ 时出错.
]

#answer("22.")[
*分析* 两个方向的线性表示条件必须同时满足. 可用向量组的秩比较，或用线性方程组是否有解确定参数，得到候选值后仍须验证.


解法1　记 $A=(alpha_1,alpha_2,alpha_3),B=(beta_1,beta_2,beta_3)$，由于 $beta_1,beta_2,beta_3$ 不能由 $alpha_1,alpha_2,alpha_3$ 线性表示，故 $r(A)<3$，从而 $|A|=-(a-1)^2(a+2)=0$，所以 $a=1$ 或 $a=-2$.

当 $a=1$ 时，$alpha_1=alpha_2=alpha_3=beta_1=(1,1,1)^T$，故 $alpha_1,alpha_2,alpha_3$ 可由 $beta_1,beta_2,beta_3$ 线性表示，但 $beta_2=(-2,1,4)^T$ 不能由 $alpha_1,alpha_2,alpha_3$ 线性表示，所以 $a=1$ 符合题意.

当 $a=-2$ 时，由于
$ (B dots.v A)=mat(augment:#3,1,-2,-2,1,1,-2;1,-2,-2,1,-2,1;-2,4,-2,-2,1,1) \
->mat(augment:#3,1,-2,-2,1,1,-2;0,0,-6,0,3,-3;0,0,0,0,-3,3), $
考虑线性方程组 $B x=alpha_2$，因为 $r(B)=2,r(B dots.v alpha_2)=3$，所以方程组 $B x=alpha_2$ 无解，即 $alpha_2$ 不能由 $beta_1,beta_2,beta_3$ 线性表示，与题设矛盾. 因此 $a=1$.

*解法2* 记向量组Ⅰ为 $alpha_1,alpha_2,alpha_3$，Ⅱ为 $beta_1,beta_2,beta_3$. 由Ⅰ可由Ⅱ表示且反向不能表示，得 $r(Ⅰ)<r(Ⅱ)<=3$，故 $det A=-(a-1)^2(a+2)=0$，即 $a=1$ 或 $-2$.
另一方面，
$ det B=mat(delim:"|",1,-2,-2;1,a,a;a,4,a)=(a+2)(a-4). $
当 $a=1$ 时，Ⅰ中三向量相同，秩为1；Ⅱ的秩为3. 因而Ⅰ可由Ⅱ表示，反向不能，符合要求.
当 $a=-2$ 时，两组秩均为2，不能满足严格不等式，应舍去. 实际上，
$ (B dots.v alpha_2)=mat(augment:#3,1,-2,-2,1;1,-2,-2,-2;-2,4,-2,1)->mat(augment:#3,1,-2,-2,1;0,0,-6,3;0,0,0,-3). $
系数矩阵秩为2，增广矩阵秩为3，方程无解，故 $alpha_2$ 不能由Ⅱ表示.


解法3　记 $A=(alpha_1,alpha_2,alpha_3),B=(beta_1,beta_2,beta_3)$，对矩阵 $(A dots.v B)$ 施行初等行变换：
$ (A dots.v B)=mat(augment:#3,1,1,a,1,-2,-2;1,a,1,1,a,a;a,1,1,a,4,a) \
->mat(augment:#3,1,1,a,1,-2,-2;0,a-1,1-a,0,a+2,a+2;0,1-a,1-a^2,0,4+2a,3a) \
->mat(augment:#3,1,1,a,1,-2,-2;0,a-1,1-a,0,a+2,a+2;0,0,-(a-1)(a+2),0,3a+6,4a+2). $
由于 $beta_1,beta_2,beta_3$ 不能由 $alpha_1,alpha_2,alpha_3$ 线性表示，故 $r(A)<3$，因此 $a=1$ 或 $a=-2$.

当 $a=1$ 时，
$ (A dots.v B)=mat(augment:#3,1,1,1,1,-2,-2;1,1,1,1,1,1;1,1,1,1,4,1) \
->mat(augment:#3,1,1,1,1,-2,-2;0,0,0,0,3,3;0,0,0,0,0,-3). $
考虑线性方程组 $A x=beta_2$，由于 $r(A)=1,r(A dots.v beta_2)=2$，故方程组 $A x=beta_2$ 无解，所以 $beta_2$ 不能由 $alpha_1,alpha_2,alpha_3$ 线性表示. 另一方面，由于 $|B|=-9!=0$，故 $B x=alpha_i (i=1,2,3)$ 有唯一解，即 $alpha_1,alpha_2,alpha_3$ 可由 $beta_1,beta_2,beta_3$ 线性表示，所以 $a=1$ 符合题意.

当 $a=-2$ 时，
$ (A dots.v B)=mat(augment:#3,1,1,-2,1,-2,-2;1,-2,1,1,-2,-2;-2,1,1,-2,4,-2) \
->mat(augment:#3,1,1,-2,1,-2,-2;0,-3,3,0,0,0;0,0,0,0,0,-6). $
考虑线性方程组 $B x=alpha_2$，由于
$ (B dots.v alpha_2)=mat(augment:#3,1,-2,-2,1;1,-2,-2,-2;-2,4,-2,1) \
->mat(augment:#3,1,-2,-2,1;0,0,0,-3;0,0,-6,0), $
$r(B)=2,r(B dots.v alpha_2)=3$，故方程组 $B x=alpha_2$ 无解，即 $alpha_2$ 不能由 $beta_1,beta_2,beta_3$ 线性表示，与题设矛盾. 因此 $a=1$.


*典型错误* 得到 $a=1$ 或 $-2$ 后没有验证两个方向的表示条件；仅观察出 $a=1$ 而未证明反向不能表示，也不是完整解答.
]

#answer("23.")[
*分析* 从题设提取矩阵的秩及齐次方程组解的信息. $A B=O$ 表明 $B$ 的每一列均为解，必须结合参数分类作完整讨论.


解　由于 $A B=O$，故 $r(A)+r(B)<=3$，又由 $a,b,c$ 不全为零，可知 $r(A)>=1$.
当 $k!=9$ 时，$r(B)=2$，于是 $r(A)=1$；当 $k=9$ 时，$r(B)=1$，于是 $r(A)=1$ 或 $r(A)=2$.
对于 $k!=9$，由 $A B=O$ 可得 $A mat(1;2;3)=bold(0)$ 和 $A mat(3;6;k)=bold(0)$.
由于 $eta_1=(1,2,3)^"T",eta_2=(3,6,k)^"T"$ 线性无关，故 $eta_1,eta_2$ 为 $A bold(x)=bold(0)$ 的一个基础解系，于是 $A bold(x)=bold(0)$ 的通解为 $bold(x)=c_1 eta_1+c_2 eta_2$，其中 $c_1,c_2$ 为任意常数.
对于 $k=9$，分别就 $r(A)=2$ 和 $r(A)=1$ 进行讨论.
如果 $r(A)=2$，则 $A bold(x)=bold(0)$ 的基础解系由一个向量构成. 又因为 $A mat(1;2;3)=bold(0)$，所以 $A bold(x)=bold(0)$ 的通解为 $bold(x)=c_1(1,2,3)^"T"$，其中 $c_1$ 为任意常数.
如果 $r(A)=1$，则 $A bold(x)=bold(0)$ 的基础解系由两个向量构成. 又因为 $A$ 的第1行为 $(a,b,c)$，且 $a,b,c$ 不全为零，所以 $A bold(x)=bold(0)$ 等价于 $a x_1+b x_2+c x_3=0$. 不妨设 $a!=0$，$eta_1=(-b,a,0)^"T",eta_2=(-c,0,a)^"T"$ 是 $A bold(x)=bold(0)$ 的两个线性无关的解，故 $A bold(x)=bold(0)$ 的通解为 $bold(x)=c_1 eta_1+c_2 eta_2$，其中 $c_1,c_2$ 为任意常数.


*解法2* 由第一行不全为零得 $r(A)>=1$，由 $A B=O$ 知方程有非零解，故 $r(A)<=2$.
若 $r(A)=2$，基础解系只有一个向量 $(1,2,3)^"T"$，通解为 $bold(x)=c_1(1,2,3)^"T"$；又由 $A B=O$ 得 $k=9$.
若 $r(A)=1$，方程与 $a x_1+b x_2+c x_3=0$ 同解. 因 $(1,2,3)^"T"$ 和 $(3,6,k)^"T"$ 都是解，
$ cases(a+2b+3c=0,3a+6b+k c=0), $
从而 $c(k-9)=0$，且 $a,b,c$ 中最多有一个为零.
①当 $c=0$ 时，基础解系可取 $xi_1=(-b,a,0)^"T",xi_2=(0,0,1)^"T"$.
②当 $c!=0$ 时，$k=9$，基础解系可取 $xi_1=(c,0,-a)^"T",xi_2=(0,c,-b)^"T"$.
两种情形的通解均为 $bold(x)=c_1 xi_1+c_2 xi_2$，$c_1,c_2$ 为任意常数.
*注* 基础解系的形式不唯一. 第一种解法中可取 $(0,c,-b)^"T",(-b,a,0)^"T"$ 或 $(0,c,-b)^"T",(c,0,-a)^"T"$，也可用 $(1,2,3)^"T"$ 替换其中一个. 第二种解法①中可取 $(1,2,0)^"T",(0,0,1)^"T"$ 或 $(1,2,3)^"T",(b,-a,0)^"T"$；②中可取 $(1,2,3)^"T"$ 与 $(0,c,-b)^"T"$ 或 $(c,0,-a)^"T"$.
*注* 以上各组应在相应非零参数条件下取为线性无关的向量组.
]

