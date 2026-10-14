#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2026, subject: "二", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2026 数学二试卷参考解答

= 一、选择题

#answer-key(
  [1. A.],
  [2. B.],
  [3. A.],
  [4. D.],
  [5. C.],
  [6. B.],
  [7. D.],
  [8. B.],
  [9. A.],
  [10. D.],
)

= 二、填空题

#answer("11.")[
$(0,2)$.
]

#answer("12.")[
$1/2$.
]

#answer("13.")[
$4$.
]

#answer("14.")[
$-2pi$.
]

#answer("15.")[
$3ln 2-1$.
]

#answer("16.")[
$2$.
]

= 三、解答题

#answer("17.")[
解　记 $D={(x,y) bar.v abs(x)<=y<=sqrt(2-x^2),-1<=x<=1}$，则 $I=integral.double_D y sin sqrt(x^2+y^2) dif x dif y$.
在极坐标系下，
$ I=integral_(pi/4)^(3pi/4) dif theta integral_0^(sqrt(2)) r sin theta sin r dot r dif r=sqrt(2)integral_0^(sqrt(2)) r^2 sin r dif r $
$ =sqrt(2)(-r^2 cos r|_0^(sqrt(2))+2integral_0^(sqrt(2)) r cos r dif r) $
$ =-2sqrt(2)cos sqrt(2)+2sqrt(2)(r sin r+cos r)|_0^(sqrt(2))=4sin sqrt(2)-2sqrt(2). $
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
解　由已知得 $y'=-2x/(1+x^2)^2$，$y''=(6x^2-2)/(1+x^2)^3$.
令 $y''=0$ 解得 $x=sqrt(3)/3$，且 $y=3/4$，所以 $M=(sqrt(3)/3,3/4)$.
所求体积为
$ V=pi/3(3/4)^2 sqrt(3)/3+pi integral_(sqrt(3)/3)^(+infinity) 1/(1+x^2)^2 dif x. $
令 $x=tan t$，则
$ V=sqrt(3)/16 pi+pi integral_(pi/6)^(pi/2) cos^4 t dot sec^2 t dif t $
$ =sqrt(3)/16 pi+pi integral_(pi/6)^(pi/2) (1+cos 2t)/2 dif t $
$ =sqrt(3)/16 pi+pi(pi/6-sqrt(3)/8)=pi^2/6-sqrt(3)/16 pi. $
]

#answer("21.")[
解　令 $y'=p$，则 $y''=p'$，原方程可化为 $p'=2p/x+p^2/x^2$.
令 $u=p/x$，则 $p'=x u'+u$，代入得 $x u'=u+u^2$.
解得 $u/(u+1)=C_1 x$，即 $u=(C_1 x)/(1-C_1 x)$，于是 $y'=(C_1 x^2)/(1-C_1 x)$.
由 $y'|_(x=3)=-9$ 得 $C_1=1/2$，所以 $y'=x^2/(2-x)$.
解得 $y=-1/2(x+2)^2-4ln(x-2)+C_2$.
由 $y|_(x=3)=1/2$ 得 $C_2=13$.
故所求解为 $y=-1/2 x^2-2x-4ln(x-2)+11$（$x>2$）.
]

#answer("22.")[
（1）证　对矩阵 $A$ 施以初等行变换得
$ A->mat(1,0,-1,1;0,1,1,-1;0,0,0,0;0,0,0,0). $
可知向量组的秩为2，且 $bold(alpha)_1,bold(alpha)_2$ 线性无关，故它们为极大线性无关组.

（2）解　由（1）知 $bold(alpha)_3=-bold(alpha)_1+bold(alpha)_2$，$bold(alpha)_4=bold(alpha)_1-bold(alpha)_2$，于是
$ A=G mat(1,0,-1,1;0,1,1,-1)， $
所以 $H=mat(1,0,-1,1;0,1,1,-1)$.
从而 $A^10=G(H G)^9 H=G mat(1,-1;0,1)^9 H=mat(1,-8,-9,9;0,-1,-1,1;-1,9,10,-10;-1,7,8,-8)$.
]

