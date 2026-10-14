#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2026, subject: "一", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2026 数学一试卷参考解答

= 一、选择题

#answer-key(
  [1. A.],
  [2. D.],
  [3. C.],
  [4. C.],
  [5. B.],
  [6. A.],
  [7. B.],
  [8. C.],
  [9. A.],
  [10. D.],
)

= 二、填空题

#answer("11.")[
$1+z$.
]

#answer("12.")[
$1/2$.
]

#answer("13.")[
$-sqrt(2)/8$.
]

#answer("14.")[
$2ln 2$.
]

#answer("15.")[
$(-infinity,0)$.
]

#answer("16.")[
$4$.
]

= 三、解答题

#answer("17.")[
解　$f_x=(4x+2x^2-y^2)e^x$，$f_y=-2y e^x$，令它们为零得驻点 $(0,0)$ 和 $(-2,0)$.
记 $A=f_(x x)=(2x^2-y^2+8x+4)e^x$，$B=f_(x y)=-2y e^x$，$C=f_(y y)=-2e^x$.
在 $(0,0)$ 处，$A=4,B=0,C=-2$，$A C-B^2<0$，所以不是极值点.
在 $(-2,0)$ 处，$A=-4/e^2,B=0,C=-2/e^2$，$A<0,A C-B^2>0$，所以是极大值点，极大值为 $f(-2,0)=8/e^2$.
]

#answer("18.")[
（1）证　因为 $f(u)$ 具有3阶连续导数，且 $dif F=f(x y)/(x^2 y) dif x+f''(x y)/(x y^2) dif y$，所以
$ partial/partial x (f''(x y)/(x y^2))=partial/partial y (f(x y)/(x^2 y)). $
从而 $f^((3))(x y)/(x y)-f''(x y)/(x^2 y^2)=f'(x y)/(x y)-f(x y)/(x^2 y^2)$.
故 $f^((3))(u)/u-f''(u)/u^2=f'(u)/u-f(u)/u^2$，即 $(f''(u)/u)'=(f(u)/u)'$，所以 $f''(u)/u-f(u)/u=C$.

（2）解　由（1）及 $f(1)=1,f''(1)=0$ 得 $f''(u)-f(u)=-u$，解得 $f(u)=C_1 e^u+C_2 e^(-u)+u$.
由初始条件得 $C_1=-1/e,C_2=e$，所以 $f(u)=e^(-u+1)-e^(u-1)+u$.
]

#answer("19.")[
解　从点 $B$ 到点 $A$ 的有向线段记为 $B A$，则它与 $L$ 构成逆时针封闭曲线，所围区域记为 $D$.
$ I=integral_(L+B A) (e^(x^2)sin x-2x y) dif x+(6x-x^2-y cos^4 y) dif y+integral_(A B) (e^(x^2)sin x-2x y) dif x+(6x-x^2-y cos^4 y) dif y. $
根据格林公式，第一项等于 $integral.double_D (6-2x+2x) dif x dif y=sqrt(3)pi$.
又第二项等于
$ integral_(-1/2)^(1/2) (e^(x^2)sin x-3x^2+6x-x cos^4 x) dif x=-integral_(-1/2)^(1/2) 3x^2 dif x=-1/4. $
所以 $I=sqrt(3)pi-1/4$.
]

#answer("20.")[
（1）证　由连续性及严格单调递增性，
$ integral_(-1)^0 f(x) dif x=integral_0^1 f(x-1) dif x<integral_0^1 f(x) dif x， $
因此 $integral_(-1)^1 f(x) dif x<2integral_0^1 f(x) dif x$，即 $0<2a$，所以 $a>0$.

（2）解　$F(x)$ 具有2阶导数，且 $F(1)=F(-1)=F(0)=0$.
根据罗尔定理，存在 $xi_1 in (-1,0),xi_2 in (0,1)$，使得 $F'(xi_1)=F'(xi_2)=0$.
从而存在 $xi in (xi_1,xi_2) subset (-1,1)$，使得 $F''(xi)=0$.
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

