#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2026, subject: "三", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2026 数学三试卷参考解答

= 一、选择题

#answer-key(
  [1. C.],
  [2. A.],
  [3. B.],
  [4. D.],
  [5. A.],
  [6. D.],
  [7. D.],
  [8. B.],
  [9. C.],
  [10. D.],
)

= 二、填空题

#answer("11.")[
$0$.
]

#answer("12.")[
$1$.
]

#answer("13.")[
$(0,2)$.
]

#answer("14.")[
$e^(2x)-e^x+1$.
]

#answer("15.")[
$2$.
]

#answer("16.")[
$4$.
]

= 三、解答题

#answer("17.")[
解　对 $f(x)=1/(2-x)^2-integral_0^1 f(x) dif x$ 两边从0到1积分，得
$ integral_0^1 f(x) dif x=integral_0^1 1/(2-x)^2 dif x-integral_0^1 f(x) dif x. $
因为 $integral_0^1 1/(2-x)^2 dif x=1/2$，所以 $integral_0^1 f(x) dif x=1/4$，$f(x)=1/(2-x)^2-1/4$.
因为 $1/(2-x)=1/2 dot 1/(1-x/2)=1/2 sum_(n=0)^infinity (x/2)^n=sum_(n=0)^infinity x^n/2^(n+1)$（$x in (-2,2)$），所以
$ 1/(2-x)^2=(1/(2-x))'=sum_(n=1)^infinity (n x^(n-1))/2^(n+1). $
因此 $f(x)=1/(2-x)^2-1/4=sum_(n=1)^infinity ((n+1)x^n)/2^(n+2)$，$x in (-2,2)$.
]

#answer("18.")[
解　当 $x!=0$ 时，令 $u=x t$，则 $f(x)=1/x integral_0^(x^3) g(u) dif u$.
因为 $g(u)$ 连续，所以 $f'(x)=-1/x^2 integral_0^(x^3) g(u) dif u+3x g(x^3)$（$x!=0$）.
依题设 $f(0)=0$，所以
$ f'(0)=lim_(x->0) (f(x)-f(0))/x=lim_(x->0) (integral_0^(x^3) g(u) dif u)/x^2=lim_(x->0) (g(x^3) dot 3x^2)/(2x)=0. $
综上，
$ f'(x)=cases(-1/x^2 integral_0^(x^3) g(u) dif u+3x g(x^3) & x!=0,0 & x=0). $
因 $g$ 连续，$lim_(x->0) f'(x)=0=f'(0)$，故 $f'(x)$ 在 $x=0$ 处连续.
]

#answer("19.")[
解　$f_x=(4x+2x^2-y^2)e^x$，$f_y=-2y e^x$，令它们为零得驻点 $(0,0)$ 和 $(-2,0)$.
记 $A=f_(x x)=(2x^2-y^2+8x+4)e^x$，$B=f_(x y)=-2y e^x$，$C=f_(y y)=-2e^x$.
在 $(0,0)$ 处，$A=4,B=0,C=-2$，$A C-B^2<0$，所以不是极值点.
在 $(-2,0)$ 处，$A=-4/e^2,B=0,C=-2/e^2$，$A<0,A C-B^2>0$，所以是极大值点，极大值为 $f(-2,0)=8/e^2$.
]

#answer("20.")[
解　因为 $D={(x,y) bar.v 0<=x<=1,0<=y<=1}$，所以
$ integral.double_D y/(1+x^2+y^2)^(3/2) dif x dif y=integral_0^1 dif x integral_0^1 y/(1+x^2+y^2)^(3/2) dif y $
$ =1/2 integral_0^1 dif x integral_0^1 1/(1+x^2+y^2)^(3/2) dif (1+x^2+y^2) $
$ =integral_0^1 (1/sqrt(1+x^2)-1/sqrt(2+x^2)) dif x $
$ =[ln(x+sqrt(1+x^2))-ln(x+sqrt(2+x^2))]|_0^1=ln((2+sqrt(2))/(1+sqrt(3))). $
]

#answer("21.")[
（1）证　对矩阵 $A$ 施以初等行变换得
$ A->mat(1,0,-1,1;0,1,1,-1;0,0,0,0;0,0,0,0). $
可知向量组的秩为2，且 $bold(alpha)_1,bold(alpha)_2$ 线性无关，故它们为极大线性无关组.

（2）解　由（1）知 $bold(alpha)_3=-bold(alpha)_1+bold(alpha)_2$，$bold(alpha)_4=bold(alpha)_1-bold(alpha)_2$，于是
$ A=G mat(1,0,-1,1;0,1,1,-1)， $
所以 $H=mat(1,0,-1,1;0,1,1,-1)$.
从而 $A^10=G(H G)^9 H=G mat(1,-1;0,1)^9 H=mat(1,-8,-9,9;0,-1,-1,1;-1,9,10,-10;-1,7,8,-8)$.
]

#answer("22.")[
解　（1）（i）设 $T_i$ 为第 $i$ 个元件的寿命，则分布函数为 $F(t)=cases(1-e^(-t/theta) & t>=0,0 & t<0)$.
从而 $T=min{T_1,T_2,dots,T_n}$ 的概率密度为
$ f_T(t)=n[1-F(t)]^(n-1)F'(t)=cases(n/theta e^(-n t/theta) & t>=0,0 & t<0). $

（ii）$E(hat(theta))=a E T=a theta/n$，故 $a=n$ 时是无偏估计.
$ D(hat(theta))=a^2 D T=n^2 theta^2/n^2=theta^2. $

（2）对数似然函数 $ln L(theta)=-k ln theta-1/theta [sum_(i=1)^k t_i+(n-k)t_k]$.
令 $(dif ln L(theta))/(dif theta)=-k/theta+1/theta^2 [sum_(i=1)^k t_i+(n-k)t_k]=0$，得
$ hat(theta)=1/k sum_(i=1)^k t_i+(n-k)/k t_k， $
从而 $theta$ 的最大似然估计值为上述结果.
]

