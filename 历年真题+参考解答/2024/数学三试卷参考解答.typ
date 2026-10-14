#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2024, subject: "三", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2024 数学三试卷参考解答

= 一、选择题

#answer-key(
  [1. D.],
  [2. B.],
  [3. A.],
  [4. A.],
  [5. C.],
  [6. C.],
  [7. B.],
  [8. B.],
  [9. B.],
  [10. D.],
)

= 二、填空题

#answer("11.")[
$3$.
]

#answer("12.")[
$(ln 3)/2-pi/8$.
]

#answer("13.")[
$(1,1)$.
]

#answer("14.")[
$50$.
]

#answer("15.")[
$16$.
]

#answer("16.")[
$2/3$.
]

= 三、解答题

#answer("17.")[
解　由于 $D$ 关于直线 $y=x$ 对称，所以 $integral.double_D x dif x dif y=integral.double_D y dif x dif y$.
令 $D_1={(x,y) bar.v 1/(3x)<=y<=3x,1/3<=x<=1}$，$D_2={(x,y) bar.v x/3<=y<=3/x,1<=x<=3}$.
$ integral.double_D (1+x-y) dif x dif y=integral.double_D dif x dif y $
$ =integral.double_(D_1) dif x dif y+integral.double_(D_2) dif x dif y $
$ =integral_(1/3)^1 dif x integral_(1/(3x))^(3x) dif y+integral_1^3 dif x integral_(x/3)^(3/x) dif y $
$ =integral_(1/3)^1 (3x-1/(3x)) dif x+integral_1^3 (3/x-x/3) dif x $
$ =(3/2 x^2-1/3 ln x)|_(1/3)^1+(3ln x-1/6 x^2)|_1^3=8/3 ln 3. $
]

#answer("18.")[
解　将 $x=0,y=0$ 代入方程 $z+e^x-y ln(1+z^2)=0$，得 $z(0,0)=-1$.
在方程 $z+e^x=y ln(1+z^2)$ 的两边对 $x$ 求偏导数，得
$ (partial z)/(partial x)+e^x=(2y z)/(1+z^2)(partial z)/(partial x)， $
因此 $(partial z)/(partial x)|_((0,0))=-1$.
在方程 $z+e^x=y ln(1+z^2)$ 的两边对 $y$ 求偏导数，得
$ (partial z)/(partial y)=ln(1+z^2)+(2y z)/(1+z^2)(partial z)/(partial y)， $
因此 $(partial z)/(partial y)|_((0,0))=ln 2$.
在方程 $(partial z)/(partial x)+e^x=(2y z)/(1+z^2)(partial z)/(partial x)$ 的两边对 $x$ 求偏导数，得
$ (partial^2 z)/(partial x^2)+e^x=(2y z)/(1+z^2)(partial^2 z)/(partial x^2)+(2y(1-z^2))/((1+z^2)^2)((partial z)/(partial x))^2， $
因此 $(partial^2 z)/(partial x^2)|_((0,0))=-1$.
在方程 $(partial z)/(partial y)=ln(1+z^2)+(2y z)/(1+z^2)(partial z)/(partial y)$ 的两边对 $y$ 求偏导数，得
$ (partial^2 z)/(partial y^2)=(4z)/(1+z^2)(partial z)/(partial y)+(2y(1-z^2))/((1+z^2)^2)((partial z)/(partial y))^2+(2y z)/(1+z^2)(partial^2 z)/(partial y^2)， $
因此 $(partial^2 z)/(partial y^2)|_((0,0))=-2ln 2$.
综上可知，$((partial^2 z)/(partial x^2)+(partial^2 z)/(partial y^2))|_((0,0))=-1-2ln 2$.
]

#answer("19.")[
解　$D$ 的面积为 $S(t)=integral_t^(2t) x e^(-2x) dif x$（$t>0$）.则
$ S'(t)=(4t e^(-4t)-t e^(-2t))=-t e^(-4t)(e^(2t)-4). $
令 $S'(t)=0$，得 $t=ln 2$.
当 $0<t<ln 2$ 时，$S'(t)>0$；当 $t>ln 2$ 时，$S'(t)<0$.所以 $S(t)$ 在 $(0,ln 2)$ 单调增加，在 $(ln 2,+infinity)$ 单调减少，故当 $t=ln 2$ 时 $S(t)$ 最大.
$S(t)$ 的最大值为
$ S(ln 2)=integral_(ln 2)^(2ln 2) x e^(-2x) dif x $
$ =-1/2 x e^(-2x)|_(ln 2)^(2ln 2)+1/2 integral_(ln 2)^(2ln 2) e^(-2x) dif x $
$ =(ln 2)/16-1/4 e^(-2x)|_(ln 2)^(2ln 2)=(ln 2)/16+3/64. $
]

#answer("20.")[
解　（1）因为 $f(x)$ 具有2阶导数，当 $x in (0,1)$ 时，根据泰勒公式，存在 $xi_1,xi_2 in (0,1)$，使得
$ f(x)=f(0)+f'(0)x+1/2 f''(xi_1)x^2， $
$ f(x)=f(1)+f'(1)(x-1)+1/2 f''(xi_2)(x-1)^2. $
所以
$ (x-1)f(x)=f(0)(x-1)+f'(0)x(x-1)+1/2 f''(xi_1)x^2(x-1)， $
$ x f(x)=f(1)x+f'(1)(x-1)x+1/2 f''(xi_2)(x-1)^2 x. $
因为 $f'(0)=f'(1)$，所以
$ f(x)-f(0)(1-x)-f(1)x=x(1-x)/2 [x f''(xi_1)+(1-x)f''(xi_2)]. $
又因为 $abs(f''(x))<=1$，所以当 $x in (0,1)$ 时，
$ abs(f(x)-f(0)(1-x)-f(1)x)<=x(1-x)/2 [x abs(f''(xi_1))+(1-x)abs(f''(xi_2))] $
$ <=x(1-x)/2. $
（2）因为
$ integral_0^1 [f(x)-f(0)(1-x)-f(1)x] dif x=integral_0^1 f(x) dif x-(f(0)+f(1))/2， $
所以由定积分的性质和（1）可得
$ abs(integral_0^1 f(x) dif x-(f(0)+f(1))/2)<=integral_0^1 abs(f(x)-f(0)(1-x)-f(1)x) dif x $
$ <=integral_0^1 x(1-x)/2 dif x=1/12. $
]

#answer("21.")[
解　（1）对 $A bold(x)=bold(alpha)$ 的增广矩阵施以初等行变换
$ (A quad bold(alpha))=mat(augment: #4,1,-1,0,-1,0;1,1,0,3,2;2,1,2,6,3) arrow.r mat(augment: #4,1,0,0,1,1;0,1,0,2,1;0,0,1,1,0)， $
得 $A bold(x)=bold(alpha)$ 的通解为
$ bold(x)=mat(1;1;0;0)+k mat(-1;-2;-1;1)=mat(1-k;1-2k;-k;k)， $
其中 $k$ 为任意常数.
将 $A bold(x)=bold(alpha)$ 的通解代入 $B bold(x)$ 得
$ B bold(x)=mat(1,0,1,2;1,-1,a,a-1;2,-3,2,-2) mat(1-k;1-2k;-k;k)=mat(1;0;-1)=bold(beta)， $
所以方程组 $A bold(x)=bold(alpha)$ 的解均为方程组 $B bold(x)=bold(beta)$ 的解.

（2）对 $B bold(x)=bold(beta)$ 的增广矩阵施以初等行变换
$ (B quad bold(beta))=mat(augment: #4,1,0,1,2,1;1,-1,a,a-1,0;2,-3,2,-2,-1) arrow.r mat(augment: #4,1,0,1,2,1;0,1,1-a,3-a,1;0,0,a-1,a-1,0). $
当 $a!=1$ 时，再经初等行变换
$ (B quad bold(beta)) arrow.r mat(augment: #4,1,0,1,2,1;0,1,1-a,3-a,1;0,0,a-1,a-1,0) arrow.r mat(augment: #4,1,0,0,1,1;0,1,0,2,1;0,0,1,1,0)， $
得方程组 $B bold(x)=bold(beta)$ 通解为
$ bold(x)=mat(1;1;0;0)+k mat(-1;-2;-1;1)， $
其中 $k$ 为任意常数.
所以方程组 $A bold(x)=bold(alpha)$ 与方程组 $B bold(x)=bold(beta)$ 同解.
当 $a=1$ 时，经初等行变换
$ (B quad bold(beta)) arrow.r mat(augment: #4,1,0,1,2,1;0,1,0,2,1;0,0,0,0,0)， $
知 $r(A quad bold(alpha))!=r(B quad bold(beta))$，所以方程组 $A bold(x)=bold(alpha)$ 与方程组 $B bold(x)=bold(beta)$ 不同解.
综上可知，$a=1$.
]

#answer("22.")[
解　（1）$X$ 的分布函数为 $F(x)=cases(0&x<0,x/theta&0<=x<=theta,1&x>=theta)$，则 $X_((n))$ 的概率密度为
$ f_((n))(x)=n[F(x)]^(n-1) F'(x)=cases(n/theta^n x^(n-1)&0<=x<=theta,0&"其他，") $
从而
$ E X_((n))=integral_(-infinity)^(+infinity) x f_((n))(x) dif x=integral_0^theta n/theta^n x^n dif x=n/(n+1)theta. $
故 $E T_c=(c n)/(n+1)theta$，所以当 $c=(n+1)/n$ 时，$E(T_c)=theta$.

（2）由（1）知
$ E X_((n))^2=integral_(-infinity)^(+infinity) x^2 f_((n))(x) dif x=integral_0^theta n/theta^n x^(n+1) dif x=n/(n+2)theta^2. $
则 $h(c)=E(T_c-theta)^2=theta^2 (n/(n+2)c^2-2n/(n+1)c+1)$.
所以当 $c=(n+2)/(n+1)$ 时，$h(c)$ 最小.
]

