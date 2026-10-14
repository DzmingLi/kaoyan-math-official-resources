#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2024, subject: "二", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2024 数学二试卷参考解答

= 一、选择题

#answer-key(
  [1. C.],
  [2. B.],
  [3. D.],
  [4. D.],
  [5. C.],
  [6. A.],
  [7. B.],
  [8. C.],
  [9. D.],
  [10. B.],
)

= 二、填空题

#answer("11.")[
$(x-1/2)^2+y^2=1/4$.
]

#answer("12.")[
$(1,1)$.
]

#answer("13.")[
$y-arctan(x+y)+pi/4=0$.
]

#answer("14.")[
$31e$.
]

#answer("15.")[
$(3pi)/2$.
]

#answer("16.")[
$-4$.
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
解　（1）$y'=(dif y)/(dif x)=e^(-t)(dif y)/(dif t)$，
$ y''=(dif(e^(-t)(dif y)/(dif t)))/(dif x)=e^(-2t)(dif^2 y)/(dif t^2)-e^(-2t)(dif y)/(dif t). $
将 $y',y''$ 代入方程 $x^2 y''+x y'-9y=0$，化简得 $(dif^2 y)/(dif t^2)-9y=0$，解得
$ y=C_1 e^(3t)+C_2 e^(-3t)=C_1 x^3+C_2/x^3. $
由已知 $y|_(x=1)=2$，$y'|_(x=1)=6$，得 $C_1=2,C_2=0$，所以 $y(x)=2x^3$.

（2）令 $x=2sin theta$（$pi/6<=theta<=pi/2$），则
$ integral_1^2 y(x)sqrt(4-x^2) dif x=integral_1^2 2x^3 sqrt(4-x^2) dif x $
$ =64 integral_(pi/6)^(pi/2) sin^3 theta cos^2 theta dif theta $
$ =-64 integral_(pi/6)^(pi/2) (cos^2 theta-cos^4 theta) dif(cos theta) $
$ =-64(1/3 cos^3 theta-1/5 cos^5 theta)|_(pi/6)^(pi/2)=(22sqrt(3))/5. $
]

#answer("19.")[
解　由题设知，$V(t)=pi integral_t^(2t) x e^(-2x) dif x$（$t>0$）.
故 $V'(t)=(4t e^(-4t)-t e^(-2t))pi=-t e^(-4t)(e^(2t)-4)pi$，令 $V'(t)=0$，解得 $t=ln 2$.
当 $0<t<ln 2$ 时，$V'(t)>0$；当 $t>ln 2$ 时，$V'(t)<0$，所以 $V(t)$ 在 $(0,ln 2)$ 单调增加，在 $(ln 2,+infinity)$ 单调减少.
所以 $V(t)$ 的最大值为
$ V(ln 2)=pi integral_(ln 2)^(2ln 2) x e^(-2x) dif x $
$ =-pi/2 x e^(-2x)|_(ln 2)^(2ln 2)+pi/2 integral_(ln 2)^(2ln 2) e^(-2x) dif x $
$ =pi/16 ln 2-pi/4 e^(-2x)|_(ln 2)^(2ln 2)=(4pi ln 2+3pi)/64. $
]

#answer("20.")[
解　（1）由已知可得，$f(u,v)=g(1/5 u+1/5 v,3/5 u-2/5 v)$.从而
$ (partial f)/(partial u)=(partial g)/(partial x) dot (partial x)/(partial u)+(partial g)/(partial y) dot (partial y)/(partial u)=1/5 (partial g)/(partial x)+3/5 (partial g)/(partial y)， $
所以
$ (partial^2 f)/(partial u partial v)=1/5 (partial^2 g)/(partial x^2)(partial x)/(partial v)+1/5 (partial^2 g)/(partial x partial y)(partial y)/(partial v)+3/5 (partial^2 g)/(partial y partial x)(partial x)/(partial v)+3/5 (partial^2 g)/(partial y^2)(partial y)/(partial v) $
$ =1/25((partial^2 g)/(partial x^2)+(partial^2 g)/(partial x partial y)-6(partial^2 g)/(partial y^2))=1/25. $

（2）由（1）知，$f(u,v)=1/25 u v+h_1(u)+h_2(v)$.
由题设可知 $h_1'(u)=u e^(-u)$，$h_2(v)+h_1(0)=1/50 v^2-1$.
由 $h_1'(u)=u e^(-u)$ 得 $h_1(u)-h_1(0)=-(u+1)e^(-u)+1$.
所以 $h_1(u)+h_2(v)=-(u+1)e^(-u)+1/50 v^2$.
综上可知，$f(u,v)=1/25 u v+1/50 v^2-(u+1)e^(-u)$.
]

#answer("21.")[
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

#answer("22.")[
解　（1）由已知可得 $r(mat(A;B^"T"))=r(A)=2$，$r(B)=1$，对 $mat(A;B^"T")$ 施以初等行变换可得 $mat(1,0,1;0,1,1;0,0,a-1;0,0,b-2)$，故 $a=1,b=2$.

（2）由（1）可得二次型 $f(x_1,x_2,x_3)$ 的矩阵为 $C=mat(1,1,2;1,1,2;2,2,4)$.
因为
$ abs(lambda E-C)=abs(mat(lambda-1,-1,-2;-1,lambda-1,-2;-2,-2,lambda-4))=lambda^2(lambda-6)， $
所以 $C$ 的特征值为 $lambda_1=lambda_2=0$，$lambda_3=6$.
当 $lambda_1=lambda_2=0$ 时，解方程组 $(0E-C)bold(x)=bold(0)$，得两个线性无关特征向量 $bold(alpha)_1=mat(-1;1;0)$，$bold(alpha)_2=mat(-2;0;1)$；
经施密特正交化得，$bold(beta)_1=bold(alpha)_1=mat(-1;1;0)$，
$bold(beta)_2=bold(alpha)_2-((bold(alpha)_1,bold(alpha)_2))/((bold(alpha)_1,bold(alpha)_1))bold(alpha)_1=mat(-1;-1;1)$.单位化得
$ bold(gamma)_1=bold(beta)_1/abs(bold(beta)_1)=mat(-1/sqrt(2);1/sqrt(2);0)，quad bold(gamma)_2=bold(beta)_2/abs(bold(beta)_2)=mat(-1/sqrt(3);-1/sqrt(3);1/sqrt(3)). $
当 $lambda_3=6$ 时，解方程组 $(6E-C)bold(x)=bold(0)$，得一个线性无关特征向量 $bold(beta)_3=mat(1;1;2)$.单位化得
$ bold(gamma)_3=bold(beta)_3/abs(bold(beta)_3)=mat(1/sqrt(6);1/sqrt(6);2/sqrt(6)). $
令 $Q=(bold(gamma)_1,bold(gamma)_2,bold(gamma)_3)=mat(-1/sqrt(2),-1/sqrt(3),1/sqrt(6);1/sqrt(2),-1/sqrt(3),1/sqrt(6);0,1/sqrt(3),2/sqrt(6))$，则 $Q^"T" C Q=mat(0,0,0;0,0,0;0,0,6)$，即在正交变换 $bold(x)=Q bold(y)$ 下，$f(x_1,x_2,x_3)=6y_3^2$.
]

