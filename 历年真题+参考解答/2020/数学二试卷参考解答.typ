#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2020, subject: "二", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2020 数学二试卷参考解答

= 一、选择题

#answer-key(
  [1. D.],
  [2. C.],
  [3. A.],
  [4. A.],
  [5. B.],
  [6. B.],
  [7. C.],
  [8. D.],
)

= 二、填空题

#answer("9.")[
$-sqrt(2)$.
]

#answer("10.")[
$2/9(2sqrt(2)-1)$.
]

#answer("11.")[
$(pi-1)dif x-dif y$.
]

#answer("12.")[
$1/3 a^3 rho g$.
]

#answer("13.")[
$1$.
]

#answer("14.")[
$a^2(a^2-4)$.
]

= 三、解答题

#answer("15.")[
令 $f(x)=x^(1+x)/(1+x)^x$，则 $lim_(x->infinity)f(x)/x=1/e$. 令 $t=1/x$，可得
$ lim_(x->infinity)(f(x)-x/e)=1/e lim_(t->0^+)(t-ln(1+t))/t^2=1/(2e). $
故斜渐近线为 $y=x/e+1/(2e)$.
]

#answer("16.")[
由已知极限及连续性，$f(0)=0$，故 $g(0)=0$. 当 $x!=0$ 时，换元 $u=x t$ 得 $g(x)=1/x integral_0^x f(u)dif u$，故
$ g'(x)=f(x)/x-1/x^2 integral_0^x f(u)dif u. $
由导数定义及洛必达法则，
$ g'(0)=lim_(x->0)frac(integral_0^x f(u)dif u,x^2)=lim_(x->0)f(x)/(2x)=1/2. $
又 $lim_(x->0)g'(x)=1-1/2=1/2=g'(0)$，故在0处连续.
]

#answer("17.")[
由 $f_x=3x^2-y$、$f_y=24y^2-x$，解得驻点 $(0,0)$ 和 $(1/6,1/12)$. 记 $A=f_(x x)=6x,B=f_(x y)=-1,C=f_(y y)=48y$. 在 $(0,0)$ 处 $A C-B^2=-1<0$，不是极值点. 在 $(1/6,1/12)$ 处 $A C-B^2=3>0$ 且 $A>0$，故为极小值点，极小值为 $-1/216$.
]

#answer("18.")[
将已知式中的 $x$ 换成 $1/x$，得 $2f(1/x)+f(x)/x^2=(1+2x)/(x sqrt(1+x^2))$. 联立解得 $f(x)=x/sqrt(1+x^2)$（$x>0$）. 反解为 $x=y/sqrt(1-y^2)$，故
$ V=2pi integral_(1/2)^(sqrt(3)/2)x y dif y=2pi integral_(1/2)^(sqrt(3)/2)y^2/sqrt(1-y^2)dif y. $
令 $y=sin t$，得 $V=2pi integral_(pi/6)^(pi/3)sin^2 t dif t=pi^2/6$.
]

#answer("19.")[
极坐标下 $0<=theta<=pi/4$、$1/(cos theta)<=r<=2/(cos theta)$. 因而
$ I=integral_0^(pi/4)dif theta integral_(1/(cos theta))^(2/(cos theta)) r/(cos theta)dif r
=3/2 integral_0^(pi/4)sec^3 theta dif theta. $
分部积分得 $integral_0^(pi/4)sec^3 theta dif theta=1/2[sqrt(2)+ln(sqrt(2)+1)]$，故
$ I=3/4[sqrt(2)+ln(sqrt(2)+1)]. $
]

#answer("20.")[
（1）因为 $f(1)=0$、$f'(x)=e^(x^2)>0$，故 $f(2)>0$. 令 $g(x)=f(x)-(2-x)e^(x^2)$，则 $g(1)<0,g(2)>0$. 由零点定理存在 $xi in (1,2)$，使 $g(xi)=0$，即所求等式.

（2）在 $[1,2]$ 上对 $f(x)$ 与 $ln x$ 应用柯西中值定理，存在 $eta in (1,2)$，使
$ (f(2)-f(1))/(ln 2-ln 1)=f'(eta)/(1/eta)=eta e^(eta^2). $
即 $f(2)=ln 2 dot eta e^(eta^2)$.
]

#answer("21.")[
点 $M(x,y)$ 的切线为 $Y-y=y'(X-x)$，故 $T=(x-y/y',0)$. 由面积关系得
$ 1/2 y^2/y'=2/3 integral_0^x y dif x. $
两端求导并整理，得 $y y''-2/3(y')^2=0$. 令 $p(y)=y'$，得 $dif p/p=2dif y/(3y)$，故 $y'=C_1 y^(2/3)$. 积分得 $3y^(1/3)=C_1 x+C_2$，由 $y(0)=0$ 得 $C_2=0$. 所求曲线为 $y=C x^3$（$C>0$）.
]

#answer("22.")[
（1）两二次型的矩阵为 $A=mat(1,a,a;a,1,a;a,a,1)$、$B=mat(1,1,0;1,1,0;0,0,4)$. 由合同关系，$r(A)=r(B)=2$，故 $det A=(2a+1)(a-1)^2=0$. $a=1$ 时秩为1，应舍去；故 $a=-1/2$.

（2）配方得
$ f=(x_1-x_2/2-x_3/2)^2+3/4(x_2-x_3)^2. $
记 $bold(z)=C bold(x)$，其中 $C=mat(1,-1/2,-1/2;0,sqrt(3)/2,-sqrt(3)/2;0,0,1)$；又令 $bold(z)=D bold(y)$，其中 $D=mat(1,1,0;0,0,2;0,1,0)$，有 $g=z_1^2+z_2^2$. 因而可取
$ P=C^(-1)D=mat(1,2,2/sqrt(3);0,1,4/sqrt(3);0,1,0), $
从而 $bold(x)=P bold(y)$ 时 $f=g$.
]

#answer("23.")[
（1）若 $P$ 不可逆，则 $bold(alpha),A bold(alpha)$ 线性相关. 由 $bold(alpha)!=bold(0)$，存在 $lambda_0$ 使 $A bold(alpha)=lambda_0 bold(alpha)$，与题设矛盾. 故 $P$ 可逆.

（2）由已知关系，
$ A P=(A bold(alpha),6bold(alpha)-A bold(alpha))=P mat(0,6;1,-1). $
故 $P^(-1)A P=mat(0,6;1,-1)$. 特征多项式为 $(lambda-2)(lambda+3)$，有两个不同特征值，故 $A$ 相似于 $op("diag")(2,-3)$.
]

