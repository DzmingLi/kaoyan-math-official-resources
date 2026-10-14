#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2025, subject: "三", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2025 数学三试卷参考解答

= 一、选择题

#answer-key(
  [1. C.],
  [2. B.],
  [3. B.],
  [4. D.],
  [5. A.],
  [6. B.],
  [7. B.],
  [8. D.],
  [9. C.],
  [10. C.],
)

= 二、填空题

#answer("11.")[
$y=3，y=-3$.
]

#answer("12.")[
$2$.
]

#answer("13.")[
$-x e^x$.
]

#answer("14.")[
$1/(8e^2)$.
]

#answer("15.")[
$2$.
]

#answer("16.")[
$2/3$.
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
解　由于 $D$ 关于直线 $y=x$ 对称，所以 $integral.double_D x dif x dif y=integral.double_D y dif x dif y$.
$ integral.double_D (x-y+1)^2 dif x dif y=integral.double_D (x-y)^2 dif x dif y+integral.double_D dif x dif y. $
$ integral.double_D (x-y)^2 dif x dif y=integral_0^1 dif x integral_(x^2)^(sqrt(x)) (x-y)^2 dif y $
$ =integral_0^1 dif x integral_(x^2)^(sqrt(x)) (2x^2-2x y) dif y=integral_0^1 (2x^2 y-x y^2)|_(x^2)^(sqrt(x)) dif x $
$ =integral_0^1 (2x^(5/2)-2x^4-x^2+x^5) dif x=4/7-2/5-1/3+1/6=1/210. $
又 $integral.double_D dif x dif y=integral_0^1 (sqrt(x)-x^2) dif x=1/3$，所以所求积分为 $1/210+1/3=71/210$.
]

#answer("20.")[
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

#answer("21.")[
解　（1）对 $A$ 施以初等行变换，得
$ A->mat(1,-1,3,0,-1;0,-1,1,-a,-2;0,0,a-1,2(1-a),0). $
由 $r(A)=2$，得 $a=1$.

（2）记 $A=(bold(alpha)_1,bold(alpha)_2,bold(alpha)_3,bold(alpha)_4,bold(alpha)_5)$，由（1），对 $A$ 施以初等行变换，得
$ A->mat(1,0,2,1,1;0,1,-1,1,2;0,0,0,0,0). $
取 $bold(alpha)=bold(alpha)_1$，$bold(beta)=bold(alpha)_2$，则它们为列向量组的一个极大线性无关组.
因为 $bold(alpha)_3=2bold(alpha)_1-bold(alpha)_2$，$bold(alpha)_4=bold(alpha)_1+bold(alpha)_2$，$bold(alpha)_5=bold(alpha)_1+2bold(alpha)_2$，所以
$ A=(bold(alpha),bold(beta))mat(1,0,2,1,1;0,1,-1,1,2). $
取 $H=mat(1,0,2,1,1;0,1,-1,1,2)$，则 $A=G H$.
]

#answer("22.")[
解　（1）
$ P{Y>0}=P{X>100}=integral_100^(+infinity) (2 times 100^2)/(100+x)^3 dif x=1/4， $
$ E Y=integral_100^(+infinity) (x-100)(2 times 100^2)/(100+x)^3 dif x=50. $

（2）$M$ 的所有可能取值为 $0,1,2,dots$.对于非负整数 $k$，由全概率公式，
$ P{M=k}=sum_(n=0)^infinity P{N=n}P{M=k|N=n}. $
由 $P{M=0|N=0}=1$，$P{M=k|N=n}=0$（$k>=n+1$），且
$ P{M=k|N=n}=n!/(k!(n-k)!)(1/4)^k(3/4)^(n-k) $（$0<=k<=n$），
$ P{N=n}=(8^n e^(-8))/n! $（$n=0,1,2,dots$），得
$ P{M=k}=sum_(n=k)^infinity (8^n e^(-8))/n! dot n!/(k!(n-k)!)(1/4)^k(3/4)^(n-k) $
$ =(2^k e^(-8))/k! sum_(n=k)^infinity 6^(n-k)/(n-k)!=(2^k e^(-8))/k! e^6=(2^k e^(-2))/k!. $
所以 $M$ 的概率分布为 $P{M=k}=(2^k e^(-2))/k!$，$k=0,1,2,dots$.
]

