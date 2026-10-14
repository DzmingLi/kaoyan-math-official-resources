#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2024, subject: "一", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#import "@preview/cetz:0.5.2"
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2024 数学一试卷参考解答

= 一、选择题

#answer-key(
  [1. C.],
  [2. A.],
  [3. A.],
  [4. B.],
  [5. B.],
  [6. D.],
  [7. A.],
  [8. B.],
  [9. D.],
  [10. D.],
)

= 二、填空题

#answer("11.")[
$6$.
]

#answer("12.")[
$5$.
]

#answer("13.")[
$-1/pi$.
]

#answer("14.")[
$y-arctan(x+y)+pi/4=0$.
]

#answer("15.")[
$[0,+infinity)$.
]

#answer("16.")[
$2/3$.
]

= 三、解答题

#answer("17.")[
解　记 $D_1={(x,y) bar.v sqrt(1-y^2)<=x<=1,0<=y<=1}$，则
$ integral.double_D x/sqrt(x^2+y^2) dif x dif y=2 integral.double_(D_1) x/sqrt(x^2+y^2) dif x dif y $
$ =2 integral_0^(pi/4) cos theta dif theta integral_1^(1/cos theta) r dif r+2 integral_(pi/4)^(pi/2) cos theta dif theta integral_1^(1/sin theta) r dif r $
$ =integral_0^(pi/4) (1/cos^2 theta-1)cos theta dif theta+integral_(pi/4)^(pi/2) (1/sin^2 theta-1)cos theta dif theta $
$ =integral_0^(pi/4) (sec theta-cos theta) dif theta+integral_(pi/4)^(pi/2) (cos theta/sin^2 theta-cos theta) dif theta $
$ =-integral_0^(pi/2) cos theta dif theta+integral_0^(pi/4) sec theta dif theta+integral_(pi/4)^(pi/2) 1/sin^2 theta dif(sin theta) $
$ =-1+ln(sqrt(2)+1)+(-1+sqrt(2))=ln(sqrt(2)+1)+sqrt(2)-2. $
]

#answer("18.")[
解　（1）因为 $f(x,y)=x^3+y^3-(x+y)^2+3$，所以
$ (partial f)/(partial x)=3x^2-2(x+y)，quad (partial f)/(partial y)=3y^2-2(x+y)， $
$ (partial f(1,1))/(partial x)=-1，quad (partial f(1,1))/(partial y)=-1. $
所以 $T$ 的方程为 $x-1+y-1+z-1=0$，即 $x+y+z=3$.

（2）由（1）知，$T$ 与坐标平面所围有界区域在 $x O y$ 平面上的投影是
$ D={(x,y) bar.v 0<=x<=3,0<=y<=3-x}. $
令 $cases((partial f)/(partial x)=0,(partial f)/(partial y)=0)$，即 $cases(3x^2-2(x+y)=0,3y^2-2(x+y)=0)$，解得 $cases(x=0,y=0)$，或 $cases(x=4/3,y=4/3)$.

当 $(x,y) in {(x,y) bar.v 0<=x<=3,y=0}$ 时，$f(x,0)=x^3-x^2+3$，$x in [0,3]$.
令 $dif/(dif x)[f(x,0)]=3x^2-2x=0$，得 $x=0$ 或 $x=2/3$.
当 $(x,y) in {(x,y) bar.v 0<=y<=3,x=0}$ 时，同理可得 $y=0$ 或 $y=2/3$.
当 $(x,y) in {(x,y) bar.v 0<=x<=3,x+y=3}$ 时，$f(x,3-x)=x^3+(3-x)^3-6$，$x in [0,3]$.
令 $dif/(dif x)[f(x,3-x)]=3x^2-3(3-x)^2=0$，得 $x=3/2$.
综上，$f(x,y)$ 在 $D$ 上的可能最值点是 $(0,0)$，$(4/3,4/3)$，$(2/3,0)$，$(0,2/3)$，$(3,0)$，$(0,3)$，$(3/2,3/2)$.
又因为
$ f(0,0)=3，quad f(4/3,4/3)=17/27，quad f(2/3,0)=f(0,2/3)=77/27， $
$ f(3,0)=f(0,3)=21，quad f(3/2,3/2)=3/4， $
所以 $f(x,y)$ 在 $D$ 上的最大值为21，最小值为 $17/27$.
]

#answer("19.")[
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

#answer("20.")[
解　记曲线 $L$ 在平面 $2x-z-1=0$ 上所围部分为 $Sigma$，上侧为正.
由斯托克斯公式得
$ integral.cont_L (6x y z-y z^2) dif x+2x^2 z dif y+x y z dif z $
$ =integral.double_Sigma (x z-2x^2) dif y dif z+(6x y-3y z) dif z dif x+(z^2-2x z) dif x dif y $
$ =1/sqrt(5) integral.double_Sigma [-2(x z-2x^2)+(z^2-2x z)] dif S $
$ =1/sqrt(5) integral.double_Sigma (2x-z)^2 dif S=1/sqrt(5) integral.double_Sigma dif S=(4sqrt(5))/25 pi. $
]

#answer("21.")[
解　由题设得
$ mat(delim:"[",x_n;y_n;z_n)=mat(delim:"[",-2,0,2;0,-2,-2;-6,-3,3) mat(delim:"[",x_(n-1);y_(n-1);z_(n-1))， $
得矩阵 $A=mat(delim:"[",-2,0,2;0,-2,-2;-6,-3,3)$ 满足 $bold(alpha)_n=A bold(alpha)_(n-1)$.
因为
$ abs(lambda E-A)=abs(mat(delim:"[",lambda+2,0,-2;0,lambda+2,2;6,3,lambda-3))=lambda(lambda-1)(lambda+2)， $
所以矩阵 $A$ 的特征值为 $lambda_1=0,lambda_2=1,lambda_3=-2$.
当 $lambda_1=0$ 时，解方程组 $(0E-A)bold(x)=bold(0)$，得特征向量 $bold(xi)_1=mat(delim:"[",1;-1;1)$；
当 $lambda_2=1$ 时，解方程组 $(E-A)bold(x)=bold(0)$，得特征向量 $bold(xi)_2=mat(delim:"[",2;-2;3)$；
当 $lambda_3=-2$ 时，解方程组 $(-2E-A)bold(x)=bold(0)$，得特征向量 $bold(xi)_3=mat(delim:"[",-1;2;0)$.
令 $P=(bold(xi)_1,bold(xi)_2,bold(xi)_3)=mat(delim:"[",1,2,-1;-1,-2,2;1,3,0)$，则
$ P^(-1) A P=mat(delim:"[",0,0,0;0,1,0;0,0,-2)， $
即 $A=P mat(delim:"[",0,0,0;0,1,0;0,0,-2)P^(-1)$，从而得
$ A^n=P mat(delim:"[",0,0,0;0,1,0;0,0,-2)^n P^(-1) $
$ =mat(delim:"[",1,2,-1;-1,-2,2;1,3,0) mat(delim:"[",0,0,0;0,1,0;0,0,(-2)^n) mat(delim:"[",6,3,-2;-2,-1,1;1,1,0) $
$ =mat(delim:"[",-4-(-2)^n,-2-(-2)^n,2;4-(-2)^(n+1),2-(-2)^(n+1),-2;-6,-3,3). $
由递推式 $bold(alpha)_n=A bold(alpha)_(n-1)$ 知 $bold(alpha)_n=A^n bold(alpha)_0$，其中 $bold(alpha)_0=mat(delim:"[",-1;0;2)$，所以
$ bold(alpha)_n=A^n bold(alpha)_0=mat(delim:"[",-4-(-2)^n,-2-(-2)^n,2;4-(-2)^(n+1),2-(-2)^(n+1),-2;-6,-3,3) mat(delim:"[",-1;0;2) $
$ =mat(delim:"[",8+(-2)^n;-8+(-2)^(n+1);12). $
故 $x_n=8+(-2)^n$，$y_n=-8+(-2)^(n+1)$，$z_n=12$（$n=1,2,dots$）.
]

#answer("22.")[
解　（1）$X$ 的分布函数为 $F(x)=cases(0&x<0,x/theta&0<=x<theta,1&x>=theta)$，则 $X_((n))$ 的概率密度为
$ f_((n))(x)=n[F(x)]^(n-1) F'(x)=cases(n/theta^n x^(n-1)&0<=x<theta,0&"其他，") $
从而
$ E X_((n))=integral_(-infinity)^(+infinity) x f_((n))(x) dif x=integral_0^theta n/theta^n x^n dif x=n/(n+1)theta. $
故 $E T_c=(c n)/(n+1)theta$，所以当 $c=(n+1)/n$ 时，$T_c$ 是 $theta$ 的无偏估计.

（2）由（1）知
$ E X_((n))^2=integral_(-infinity)^(+infinity) x^2 f_((n))(x) dif x=integral_0^theta n/theta^n x^(n+1) dif x=n/(n+2)theta^2. $
则 $h(c)=E(T_c-theta)^2=theta^2 (n/(n+2)c^2-2n/(n+1)c+1)$.
所以当 $c=(n+2)/(n+1)$ 时，$h(c)$ 最小.
]

