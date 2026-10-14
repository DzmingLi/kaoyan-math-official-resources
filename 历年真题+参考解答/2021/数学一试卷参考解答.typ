#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2021, subject: "一", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2021 数学一试卷参考解答

= 一、选择题

#answer-key(
  [1. D.],
  [2. C.],
  [3. A.],
  [4. B.],
  [5. B.],
  [6. A.],
  [7. C.],
  [8. D.],
  [9. C.],
  [10. B.],
)

= 二、填空题

#answer("11.")[
$pi/4$.
]

#answer("12.")[
$2/3$.
]

#answer("13.")[
$x^2$.
]

#answer("14.")[
$4pi$.
]

#answer("15.")[
$3/2$.
]

#answer("16.")[
$1/5$.
]

= 三、解答题

#answer("17.")[
通分并利用等价无穷小量，原极限等于
$ lim_(x->0)frac((1+integral_0^x e^(t^2)dif t)sin x-e^x+1,x^2). $
洛必达法则得
$ lim_(x->0)frac((1+integral_0^x e^(t^2)dif t)cos x+e^(x^2)sin x-e^x,2x)
=lim_(x->0)frac((1+integral_0^x e^(t^2)dif t)cos x-e^x,2x)+1/2. $
对前项再用洛必达法则得0，故极限为 $1/2$.
]

#answer("18.")[
由比值法，$sum x^(n+1)/(n(n+1))$ 的收敛半径为1，且两端点均绝对收敛，故收敛域为 $[-1,1]$. $sum e^(-n x)$ 的收敛域为 $(0,+infinity)$，所以原级数的收敛域为 $(0,1]$.

当 $0<x<=1$，$sum_(n=1)^infinity e^(-n x)=1/(e^x-1)$. 当 $0<x<1$，由 $sum_(n=0)^infinity x^n=1/(1-x)$ 积分，得 $sum_(n=0)^infinity x^(n+1)/(n+1)=-ln(1-x)$，再积分得
$ sum_(n=1)^infinity x^(n+1)/(n(n+1))=-integral_0^x ln(1-t)dif t=x+(1-x)ln(1-x). $
当 $x=1$，后一个级数的和为1. 因而
$ S(x)=cases(1/(e^x-1)+x+(1-x)ln(1-x) & 0<x<1,e/(e-1) & x=1). $
]

#answer("19.")[
距离的最大值转化为两约束下 $z$ 的极值. 设
$ L=z+lambda(4x+2y+z-30)+mu(x^2+2y^2-z-6). $
令各偏导为0，得
$ cases(4lambda+2x mu=0,2lambda+4y mu=0,1+lambda-mu=0,4x+2y+z=30,x^2+2y^2-z=6). $
解得 $(x,y,z)=(4,1,12)$ 或 $(-8,-2,66)$. 因此所求最大距离为66.
]

#answer("20.")[
（1）被积函数在圆盘 $D_1={(x,y) | x^2+y^2<=4}$ 内非负，在其外非正，故最大积分区域为此圆盘，
$ I(D_1)=integral_0^(2pi)dif theta integral_0^2(4-r^2)r dif r=8pi. $
（2）取 $L:x^2+4y^2=1$，顺时针为正向. 记 $P=(x e^(x^2+4y^2)+y)/(x^2+4y^2)$，$Q=(4y e^(x^2+4y^2)-x)/(x^2+4y^2)$，则 $Q_x=P_y$. 在环域上由格林公式得原积分为 $-integral_L(e x+y)dif x+(4e y-x)dif y$，再在椭圆内部用格林公式得
$ I=-integral.double_(x^2+4y^2<=1)2dif x dif y=-pi. $
]

#answer("21.")[
（1）特征多项式为 $(lambda-a+1)^2(lambda-a-2)$，特征值为 $a-1,a-1,a+2$. 对应单位正交特征向量可取
$ bold(eta)_1=(-sqrt(2)/2,sqrt(2)/2,0)^T, $
$ bold(eta)_2=(sqrt(6)/6,sqrt(6)/6,sqrt(6)/3)^T, $
$ bold(eta)_3=(-sqrt(3)/3,-sqrt(3)/3,sqrt(3)/3)^T. $
令 $P=(bold(eta)_1,bold(eta)_2,bold(eta)_3)$，则 $P$ 正交，且 $P^T A P=op("diag")(a-1,a-1,a+2)$.

（2）由（1），$(a+3)E-A=P op("diag")(4,4,1)P^T$. 取
$ C=P op("diag")(2,2,1)P^T=mat(5/3,-1/3,1/3;-1/3,5/3,1/3;1/3,1/3,5/3), $
即有 $C^2=(a+3)E-A$，且 $C$ 正定.
]

#answer("22.")[
（1）记随机点坐标为 $V$，则 $V~U(0,2)$、$X=min{V,2-V}$. 当 $0<=x<1$ 时，$F_X(x)=1-P{x<V<2-x}=x$. 因此
$ f_X(x)=cases(1 & 0<x<1,0 & "其他"). $
（2）$Z=(2-X)/X$，在 $0<X<1$ 上严格单调，反函数为 $x=2/(1+z)$，故
$ f_Z(z)=cases(2/(1+z)^2 & z>1,0 & "其他"). $
（3）$E(X/Y)=integral_0^1 x/(2-x)dif x=2ln 2-1$.
]

