#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2025, subject: "一", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2025 数学一试卷参考解答

= 一、选择题

#answer-key(
  [1. B.],
  [2. B.],
  [3. D.],
  [4. A.],
  [5. B.],
  [6. D.],
  [7. A.],
  [8. C.],
  [9. C.],
  [10. D.],
)

= 二、填空题

#answer("11.")[
$-1$.
]

#answer("12.")[
$1/8$.
]

#answer("13.")[
$1$.
]

#answer("14.")[
$4/3-2sin 1$.
]

#answer("15.")[
$-4$.
]

#answer("16.")[
$4/5$.
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
解　由 $g(x,y)=f(x/y)$，得 $(partial g)/(partial x)=1/y f'$，$(partial g)/(partial y)=-x/y^2 f'$，
$ (partial^2 g)/(partial x^2)=1/y^2 f''，quad (partial^2 g)/(partial x partial y)=-x/y^3 f''-1/y^2 f'，quad (partial^2 g)/(partial y^2)=x^2/y^4 f''+(2x)/y^3 f'. $
将方程 $x^2(partial^2 g)/(partial x^2)+x y (partial^2 g)/(partial x partial y)+y^2(partial^2 g)/(partial y^2)=1$ 化为 $f(u)$ 满足的方程，得
$ u^2 f''(u)+u f'(u)=1. $
求解得
$ f'(u)=e^(-integral 1/u dif u)(C_1+integral 1/u^2 e^(integral 1/u dif u) dif u)=1/u(C_1+ln u)， $
$ f(u)=1/2 ln^2 u+C_1 ln u+C_2. $
由题设知 $f(1)=1,f'(1)=2$，所以 $C_1=2,C_2=1$.
故 $f(u)=1/2 ln^2 u+2ln u+1$.
]

#answer("19.")[
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

#answer("20.")[
解　设 $Sigma_2$ 为平面 $x+y+z=1$ 被曲面 $Sigma$ 所截有限部分的上侧，$Omega$ 为 $Sigma_1$ 与 $Sigma_2$ 所围的有界区域.
由题设知，$Omega$ 是以原点为顶点、$Sigma_2$ 为底面的圆锥，其高为 $sqrt(3)/3$，底面半径为 $sqrt(6)/3$.
根据高斯公式得
$ integral.double_(Sigma_1+Sigma_2) x dif y dif z+(y+1) dif z dif x+(z+2) dif x dif y=3integral.triple_Omega dif x dif y dif z=(2sqrt(3))/9 pi. $
因为 $Sigma_2$ 的正向单位法向量为 $(sqrt(3)/3,sqrt(3)/3,sqrt(3)/3)$，所以
$ integral.double_(Sigma_2) x dif y dif z+(y+1) dif z dif x+(z+2) dif x dif y $
$ =integral.double_(Sigma_2) sqrt(3)/3(x+y+z+3) dif S=(4sqrt(3))/3 integral.double_(Sigma_2) dif S=(8sqrt(3))/9 pi. $
综上可知，$I=(2sqrt(3))/9 pi-(8sqrt(3))/9 pi=-(2sqrt(3))/3 pi$.
]

#answer("21.")[
解　（1）$A$ 的特征多项式为
$ abs(lambda E-A)=abs(mat(delim:"[",lambda,1,2;1,lambda,-2;1,1,lambda-a))=(lambda-1)[lambda^2+(1-a)lambda+4-a]. $
由题设知1是 $A$ 的特征多项式的重根，所以 $1+(1-a) times 1+4-a=0$，解得 $a=3$.

（2）由题设得 $bold(beta)=A bold(alpha)-bold(alpha)$，$A^2 bold(alpha)-A bold(alpha)=bold(beta)$，于是 $A bold(beta)=A^2 bold(alpha)-A bold(alpha)=bold(beta)$.
由（1）可得 $A$ 的特征多项式为 $(lambda-1)^3$，故1为 $A$ 的3重特征值.
解线性方程组 $(E-A)bold(x)=bold(0)$，得两个线性无关特征向量 $bold(alpha)_1=mat(delim:"[",-1;1;0)$，$bold(alpha)_2=mat(delim:"[",2;0;1)$.
因此，$bold(beta)=mat(delim:"[",-k+2l;k;l)$，其中 $k,l$ 不同时为0.
再由题设，可知 $bold(alpha)$ 为线性方程组 $(A-E)bold(x)=bold(beta)$ 的非零解.对增广矩阵施以初等行变换，得
$ (A-E quad bold(beta)) arrow.r mat(delim:"[",augment: #3,-1,-1,2,-k+2l;0,0,0,2l-2k;0,0,0,k-l). $
故 $(A-E)bold(x)=bold(beta)$ 有非零解当且仅当 $k=l!=0$.
综上，满足方程的非零列向量为
$ bold(beta)=mat(delim:"[",k;k;k)，quad bold(alpha)=mat(delim:"[",-k-p+2q;p;q)， $
其中 $k,p,q in bold(upright(R))$，且 $k!=0$.
]

#answer("22.")[
解　（1）$P{Y>0}=P{X>100}=integral_100^(+infinity) (2 times 100^2)/(100+x)^3 dif x=1/4$.
$ E Y=integral_100^(+infinity) (x-100)(2 times 100^2)/(100+x)^3 dif x=50. $

（2）$M$ 的所有可能取值为 $0,1,2,dots$，对于非负整数 $k$，由全概率公式，
$ P{M=k}=sum_(n=0)^infinity P{N=n}P{M=k bar.v N=n}. $
由 $P{M=0 bar.v N=0}=1$，$P{M=k bar.v N=n}=0$（$n=1,2,dots;k>=n+1$），
$ P{M=k bar.v N=n}=n!/(k!(n-k)!)(1/4)^k(3/4)^(n-k) $（$n=1,2,dots;0<=k<=n$），
$ P{N=n}=(8^n e^(-8))/(n!) $（$n=0,1,2,dots$），
得
$ P{M=k}=sum_(n=k)^infinity P{N=n}P{M=k bar.v N=n} $
$ =sum_(n=k)^infinity (8^n e^(-8))/(n!) dot n!/(k!(n-k)!)(1/4)^k(3/4)^(n-k) $
$ =(2^k e^(-8))/(k!) sum_(n=k)^infinity 6^(n-k)/(n-k)!=(2^k e^(-8))/(k!) dot e^6=(2^k e^(-2))/(k!)， $
所以 $M$ 的概率分布为 $P{M=k}=(2^k e^(-2))/(k!)$，$k=0,1,2,dots$.
]

