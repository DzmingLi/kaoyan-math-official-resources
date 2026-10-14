#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2025, subject: "二", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2025 数学二试卷参考解答

= 一、选择题

#answer-key(
  [1. A.],
  [2. B.],
  [3. C.],
  [4. C.],
  [5. A.],
  [6. B.],
  [7. D.],
  [8. D.],
  [9. B.],
  [10. D.],
)

= 二、填空题

#answer("11.")[
$2$.
]

#answer("12.")[
$x-y-1=0$.
]

#answer("13.")[
$-1/4$.
]

#answer("14.")[
$e$.
]

#answer("15.")[
$y=2/5 x+1/5 sqrt(20-11x^2)$.
]

#answer("16.")[
$(1,0,0,4)^"T"+k(1,1,-1,-1)^"T"，k in bold(upright(R))$.
]

= 三、解答题

#answer("17.")[
解　令 $1/((x+1)(x^2-2x+2))=a/(x+1)+(b x+c)/(x^2-2x+2)$，得 $a(x^2-2x+2)+(x+1)(b x+c)=1$.
所以 $cases(a+b=0,2a-b-c=0,2a+c=1)$，解得 $a=1/5,b=-1/5,c=3/5$.
因为 $integral_0^1 1/(x+1) dif x=ln 2$，
$ integral_0^1 (x-3)/(x^2-2x+2) dif x=integral_0^1 (x-1)/(x^2-2x+2) dif x-integral_0^1 2/(1+(x-1)^2) dif x $
$ =1/2 ln(x^2-2x+2)|_0^1-2arctan(x-1)|_0^1=-1/2 ln 2-pi/2， $
所以
$ integral_0^1 1/((x+1)(x^2-2x+2)) dif x=1/5 integral_0^1 1/(x+1) dif x-1/5 integral_0^1 (x-3)/(x^2-2x+2) dif x $
$ =1/10(3ln 2+pi). $
]

#answer("18.")[
解　当 $x->0$ 时，$ln(1+x)+ln(1-x)=ln(1-x^2) tilde -x^2$，故由条件可得
$ lim_(x->0) (x f(x)-e^(2sin x)+1)/x^2=3， $
所以 $x f(x)-e^(2sin x)+1=3x^2+o(x^2)$，故
$ f(x)=(e^(2sin x)-1)/x+3x+o(x) $（$x!=0$）.
因为 $f(x)$ 在 $x=0$ 处连续，所以
$ f(0)=lim_(x->0) f(x)=lim_(x->0)[(e^(2sin x)-1)/x+3x+o(x)]=2. $
从而
$ lim_(x->0) (f(x)-f(0))/(x-0)=lim_(x->0) 1/x[(e^(2sin x)-1-2x)/x+3x+o(x)] $
$ =3+lim_(x->0) (e^(2sin x)-1-2x)/x^2 $
$ =3+lim_(x->0) (2e^(2sin x)cos x-2)/(2x) $
$ =3+lim_(x->0) (4e^(2sin x)cos^2 x-2e^(2sin x)sin x)/2=5， $
所以 $f(x)$ 在 $x=0$ 处可导，且 $f'(0)=5$.
]

#answer("19.")[
解　由题设得，$(partial f)/(partial x)=-2x e^(-y)$，$(partial f)/(partial y)=e^(-y)(x^2-y-1)$.
由 $(partial f)/(partial x)=-2x e^(-y)$，得 $f(x,y)=-x^2 e^(-y)+g(y)$，代入 $(partial f)/(partial y)=e^(-y)(x^2-y-1)$，得 $g'(y)=-e^(-y)(y+1)$，所以 $g(y)=-integral e^(-y)(y+1) dif y=e^(-y)(y+2)+C$.
从而 $f(x,y)=e^(-y)(y-x^2+2)+C$.因为 $f(0,0)=2$，所以 $C=0$.故 $f(x,y)=e^(-y)(y-x^2+2)$.
由 $(partial f)/(partial x)=0$，$(partial f)/(partial y)=0$，解得 $cases(x=0,y=-1)$.
又 $(partial^2 f)/(partial x^2)=-2e^(-y)$，$(partial^2 f)/(partial x partial y)=2x e^(-y)$，$(partial^2 f)/(partial y^2)=e^(-y)(-x^2+y)$，所以
$ A=(partial^2 f)/(partial x^2)|_((0,-1))=-2e，quad B=(partial^2 f)/(partial x partial y)|_((0,-1))=0，quad C=(partial^2 f)/(partial y^2)|_((0,-1))=-e. $
由于 $A<0,A C-B^2>0$，所以 $(0,-1)$ 是函数 $f(x,y)$ 的极大值点，极大值为 $f(0,-1)=e$.
]

#answer("20.")[
解　设 $D_1={(x,y) bar.v y<=x,x^2+y^2<=4y}$，由对称性，
$ integral.double_D (x-y)^2 dif x dif y=2integral.double_(D_1) (x-y)^2 dif x dif y. $
$ integral.double_(D_1) (x-y)^2 dif x dif y=integral_0^(pi/4) dif theta integral_0^(4sin theta) r^3(cos theta-sin theta)^2 dif r $
$ =64integral_0^(pi/4)(1-2sin theta cos theta)sin^4 theta dif theta $
$ =64integral_0^(pi/4) sin^4 theta dif theta-128integral_0^(pi/4) sin^5 theta cos theta dif theta $
$ =16integral_0^(pi/4)(1-2cos 2theta+(1+cos 4theta)/2) dif theta-64/3 sin^6 theta|_0^(pi/4) $
$ =16(3pi/8-sin 2theta|_0^(pi/4)+(sin 4theta)/8|_0^(pi/4))-8/3=6pi-56/3. $
所以 $integral.double_D (x-y)^2 dif x dif y=12pi-112/3$.
]

#answer("21.")[
解　必要性：由题设知，函数 $f(x)$ 在区间 $(a,b)$ 内可导，所以对 $(a,b)$ 内的 $x_1,x_2,x_3$，当 $x_1<x_2<x_3$ 时，根据拉格朗日中值定理，存在 $xi in (x_1,x_2)$，$eta in (x_2,x_3)$，使得
$ (f(x_2)-f(x_1))/(x_2-x_1)=f'(xi)，quad (f(x_3)-f(x_2))/(x_3-x_2)=f'(eta). $
因为 $f'(x)$ 在 $(a,b)$ 内严格单调增加，所以 $f'(xi)<f'(eta)$，故
$ (f(x_2)-f(x_1))/(x_2-x_1)<(f(x_3)-f(x_2))/(x_3-x_2). $

充分性：对任意的 $x in (a,b)$，$y in (a,b)$，$x<y$，取 $c in (x,y)$.
设 $h>0$ 且 $x-h in (a,b)$，$y+h in (a,b)$，由题设知
$ (f(x-h)-f(x))/(-h)<(f(c)-f(x))/(c-x)<(f(y)-f(c))/(y-c)<(f(y+h)-f(y))/h. $
因为 $f(x)$ 在 $(a,b)$ 内可导，所以
$ lim_(h->0^+) (f(x-h)-f(x))/(-h)=f'(x)，quad lim_(h->0^+) (f(y+h)-f(y))/h=f'(y). $
根据极限的保号性，得 $f'(x)<=(f(c)-f(x))/(c-x)<(f(y)-f(c))/(y-c)<=f'(y)$.
故 $f'(x)<f'(y)$.
综上可知，$f'(x)$ 在 $(a,b)$ 内严格单调增加.
]

#answer("22.")[
解　（1）由已知，存在可逆矩阵 $P$ 使 $P^"T" B P=A$.又 $abs(B)=0$，故 $abs(A)=3a-12=0$，解得 $a=4$.
$A$ 对应的二次型为
$ f(x_1,x_2,x_3)=4x_1^2+x_2^2+4x_3^2+2x_1 x_2-4x_1 x_3+2x_2 x_3 $
$ =(2x_1+1/2 x_2-x_3)^2+3/4(x_2+2x_3)^2=y_1^2+3/4 y_2^2. $
故经可逆线性变换 $cases(y_1=2x_1+1/2 x_2-x_3,y_2=x_2+2x_3,y_3=x_3)$，得 $f=y_1^2+3/4 y_2^2$.
故 $f$ 的正惯性指数为2.因 $A$ 与 $B$ 合同，所以 $B$ 对应二次型的正惯性指数为2.
因此，$k$ 的取值范围是 $(0,+infinity)$.

（2）因为
$ abs(lambda E-A)=abs(mat(lambda-4,-1,2;-1,lambda-1,-1;2,-1,lambda-4))=lambda(lambda-3)(lambda-6)， $
所以 $A$ 的特征值为 $lambda_1=3,lambda_2=6,lambda_3=0$.
因为存在正交矩阵 $Q$ 使得 $Q^"T" A Q=B$，所以 $A$ 与 $B$ 相似，它们有相同的特征值.于是 $k=3$.
当 $lambda_1=3$ 时，解方程组 $(3E-A)bold(x)=bold(0)$，得单位特征向量 $bold(eta)_1=1/sqrt(3)(1,1,1)^"T"$；
当 $lambda_2=6$ 时，解方程组 $(6E-A)bold(x)=bold(0)$，得单位特征向量 $bold(eta)_2=1/sqrt(2)(-1,0,1)^"T"$；
当 $lambda_3=0$ 时，解方程组 $(0E-A)bold(x)=bold(0)$，得单位特征向量 $bold(eta)_3=1/sqrt(6)(1,-2,1)^"T"$.
令
$ Q=(bold(eta)_1,bold(eta)_2,bold(eta)_3)=mat(1/sqrt(3),-1/sqrt(2),1/sqrt(6);1/sqrt(3),0,-2/sqrt(6);1/sqrt(3),1/sqrt(2),1/sqrt(6))， $
则 $Q$ 是正交矩阵，且 $Q^"T" A Q=mat(3,0,0;0,6,0;0,0,0)=B$.
]

