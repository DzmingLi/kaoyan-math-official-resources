#import "../template.typ": exam, answer
#show: exam.with(year: 1991, subject: "一", title: "1991年全国工学、经济学硕士研究生入学考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 1991 数学一试卷参考解答

= 一、填空题

#answer("1（1）")[
由 $(dif y)/(dif x)=-(sin t)/(2t)$，得
$ (dif^2 y)/(dif x^2) = 1/(2t) dif/(dif t)(-(sin t)/(2t)) = (sin t-t cos t)/(4t^3). $
]

#answer("1（2）")[
令 $F=x y z+sqrt(x^2+y^2+z^2)-sqrt(2)$，则该点处 $F_x=1/sqrt(2)$，$F_y=-1$，$F_z=-1/sqrt(2)$.由 $F_x dif x+F_y dif y+F_z dif z=0$，得 $dif z=dif x-sqrt(2) dif y$.
]

#answer("1（3）")[
两直线的方向向量分别为 $(1,0,-1)$、$(2,1,1)$，其叉积为 $(1,-3,1)$.所求平面经过 $(1,2,3)$，故为 $x-3y+z+2=0$.
]

#answer("1（4）")[
由 $(1+a x^2)^(1/3)-1 tilde.eq a x^2/3$ 及 $cos x-1 tilde.eq -x^2/2$，得 $a=-3/2$.
]

#answer("1（5）")[
按两个二阶对角块分别求逆，得
$ A^(-1)=mat(1,-2,0,0;-2,5,0,0;0,0,1/3,2/3;0,0,-1/3,1/3). $
]

= 二、选择题

#answer("2（1）")[
*D.* 当 $x arrow plus.minus infinity$ 时 $y arrow 1$；当 $x arrow 0$ 时 $y arrow +infinity$.故水平渐近线为 $y=1$，铅直渐近线为 $x=0$.
]

#answer("2（2）")[
*B.* 对等式求导得 $f'(x)=2 f(x)$，且 $f(0)=ln 2$，故 $f(x)=e^(2x) ln 2$.
]

#answer("2（3）")[
*C.* 奇数项部分和趋于5，由交错形式的偶数部分和可知偶数项和为 $5-2=3$.又 $a_n arrow 0$，故原级数收敛，和为 $5+3=8$.
]

#answer("2（4）")[
*A.* $D$ 由 $-1<=x<=y<=1$ 表示，有 $integral_(-1)^1 integral_(-1)^y x y dif x dif y=0$.另有 $integral.double_D cos x sin y dif x dif y=integral_(-1)^1 sin y(sin y+sin 1)dif y=2 integral_0^1 sin^2 y dif y$，而 $integral.double_(D_1) cos x sin y dif x dif y=integral_0^1 sin^2 y dif y$.因此总积分为 $2 integral.double_(D_1) cos x sin y dif x dif y$.
]

#answer("2（5）")[
*D.* 由 $A B C=E$ 知 $A$ 可逆，且 $B C=A^(-1)$，故 $B C A=E$.
]

= 解答题

#answer("三（1）")[
*解一* 取对数后用洛必达法则：
$ lim_(x arrow 0^+) (ln cos sqrt(x))/x = lim_(x arrow 0^+) -(sin sqrt(x))/(2sqrt(x) cos sqrt(x))=-1/2. $
故原极限为 $e^(-pi/2)$.

*解二* 由 $cos sqrt(x)-1 tilde.eq -x/2$ 及基本极限 $(1+u)^(1/u) arrow e$，同样得原极限为 $e^(-pi/2)$.
]

#answer("三（2）")[
外法向量可取 $arrow(n)=(4,6,2)$，单位方向为 $(2,3,1)/sqrt(14)$.在 $P$ 点有
$ u_x=6/sqrt(14), quad u_y=8/sqrt(14), quad u_z=-sqrt(14). $
故所求方向导数为
$ (6/sqrt(14),8/sqrt(14),-sqrt(14)) dot (2,3,1)/sqrt(14)=11/7. $
]

#answer("三（3）")[
*解一* 用柱坐标，$0<=z<=4$，$0<=r<=sqrt(2z)$，故
$ I=integral_0^4 dif z integral_0^(2pi) dif theta integral_0^sqrt(2z)(r^2+z)r dif r
=4pi integral_0^4 z^2 dif z=256pi/3. $
*解二* 改变积分次序：
$ I=2pi integral_0^sqrt(8) r dif r integral_(r^2/2)^4(r^2+z) dif z
=2pi integral_0^sqrt(8)(4r^3+8r-5r^5/8)dif r=256pi/3. $
]

#answer("四、")[
代入 $y=a sin x$，得
$ I(a)=integral_0^pi [1+a^3 sin^3 x+(2x+a sin x)a cos x]dif x
=pi-4a+4a^3/3. $
令 $I'(a)=4(a^2-1)=0$，在 $a>0$ 内唯一驻点为 $a=1$.其左侧导数为负，右侧为正，故取得最小值.所求曲线为 $y=sin x$（$0<=x<=pi$）.
]

#answer("五、")[
由于函数为偶函数，
$ a_0=2 integral_0^1(2+x)dif x=5, quad b_n=0, $
$ a_n=2 integral_0^1(2+x)cos(n pi x)dif x=(2(cos(n pi)-1))/(n^2 pi^2). $
该函数满足傅里叶级数收敛定理的条件，故
$ 2+abs(x)=5/2-4/pi^2 sum_(k=0)^infinity (cos((2k+1)pi x))/(2k+1)^2. $
令 $x=0$，得 $sum_(k=0)^infinity 1/(2k+1)^2=pi^2/8$.再将 $S=sum_(n=1)^infinity 1/n^2$ 分成奇偶两部分，有 $S=pi^2/8+S/4$，所以 $S=pi^2/6$.
]

#answer("六、")[
由积分中值定理，存在 $c_1 in [2/3,1]$，使 $integral_(2/3)^1 f(x)dif x=f(c_1)/3$，故 $f(c_1)=f(0)$.对 $[0,c_1]$ 应用罗尔定理，存在 $c in (0,c_1) subset (0,1)$ 使 $f'(c)=0$.
]

#answer("七、")[
设 $beta=x_1 alpha_1+x_2 alpha_2+x_3 alpha_3+x_4 alpha_4$.增广矩阵经初等行变换为
$ mat(1,1,1,1,1;0,1,-1,2,1;2,3,a+2,4,b+3;3,5,1,a+8,5)
arrow mat(1,1,1,1,1;0,1,-1,2,1;0,0,a+1,0,b;0,0,0,a+1,0). $
（1）当 $a=-1,b!=0$ 时，无解，不能线性表示.

（2）当 $a!=-1$ 时，有唯一表示式
$ beta=-(2b)/(a+1)alpha_1+(a+b+1)/(a+1)alpha_2+b/(a+1)alpha_3+0alpha_4. $
]

#answer("八、")[
存在正交阵 $Q$，使 $Q^T A Q=op("diag")(lambda_1,dots,lambda_n)$，其中每个特征值 $lambda_i>0$.于是
$ Q^T(A+E)Q=op("diag")(lambda_1+1,dots,lambda_n+1), $
从而 $det(A+E)=product_(i=1)^n(lambda_i+1)>1$.
]

#answer("九、")[
法线与 $x$ 轴交于 $(x+y y',0)$，故法线段长为 $y sqrt(1+y'^2)$（$y'=0$ 时也成立）.由曲率条件得
$ y''/(1+y'^2)^(3/2)=1/(y sqrt(1+y'^2)), quad y y''=1+y'^2, $
初始条件为 $y(1)=1,y'(1)=0$.令 $p=y'$，有 $y''=p dif p/(dif y)$，从而
$ p/(1+p^2)dif p=(dif y)/y, quad y=sqrt(1+p^2). $
继续积分得 $ln(y+sqrt(y^2-1))=plus.minus(x-1)$.结合左右两支，所求曲线为
$ y=1/2(e^(x-1)+e^(-(x-1))). $
]

= 十、填空题

#answer("10（1）")[
正态分布关于均值2对称，故 $P(0<X<2)=0.3$.因此 $P(X<0)=0.5-0.3=0.2$.
]

#answer("10（2）")[
用极坐标表示半圆：$0<theta<pi/2$，$0<r<2a cos theta$.所求面积比为
$ (integral_0^(pi/4) 2a^2 cos^2 theta dif theta)/(pi a^2/2)=1/2+1/pi. $
]

= 解答题

#answer("十一、")[
当 $z<=0$ 时，$F_Z(z)=0$.当 $z>0$ 时，
$ F_Z(z)=P(X+2Y<=z)=integral_0^z dif x integral_0^((z-x)/2)2e^(-(x+2y))dif y
=integral_0^z(e^(-x)-e^(-z))dif x=1-e^(-z)-z e^(-z). $
因此
$ F_Z(z)=cases(0& z<=0,1-e^(-z)-z e^(-z)& z>0). $
]

