#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2021, subject: "三", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2021 数学三试卷参考解答

= 一、选择题

#answer-key(
  [1. C.],
  [2. D.],
  [3. A.],
  [4. C.],
  [5. B.],
  [6. D.],
  [7. C.],
  [8. D.],
  [9. B.],
  [10. A.],
)

= 二、填空题

#answer("11.")[
$1/(2e)sin(1/e)$.
]

#answer("12.")[
$6$.
]

#answer("13.")[
$pi/4$.
]

#answer("14.")[
$t(t-1)/2+C$.
]

#answer("15.")[
$-5$.
]

#answer("16.")[
$1/5$.
]

= 三、解答题

#answer("17.")[
左右极限存在且相等，分别为
$ lim_(x->0^-)[a arctan(1/x)+(1+abs(x))^(1/x)]=-pi a/2+1/e, $
$ lim_(x->0^+)[a arctan(1/x)+(1+abs(x))^(1/x)]=pi a/2+e. $
令二者相等，得 $a=(1-e^2)/(pi e)$.
]

#answer("18.")[
由 $f_x=(2x^2+x-1-y^2)/x^3$、$f_y=y/x^2$，得驻点 $(-1,0)$、$(1/2,0)$. 二阶偏导数为
$ f_(x x)=(-2x^2-2x+3+3y^2)/x^4, quad f_(x y)=-2y/x^3, quad f_(y y)=1/x^2. $
在 $(-1,0)$ 处，$A=3,B=0,C=1$，$A C-B^2>0$ 且 $A>0$，故极小值为 $f(-1,0)=2$. 在 $(1/2,0)$ 处，$A=24,B=0,C=4$，同理极小值为 $f(1/2,0)=1/2-2ln 2$.
]

#answer("19.")[
极坐标下 $0<=r<=1$、$0<=theta<=pi/4$，故
$ I=integral_0^1 dif r integral_0^(pi/4)e^(r^2(sin theta+cos theta)^2)r^3(cos^2 theta-sin^2 theta)dif theta
=1/2 integral_0^1 r dif r integral_0^(pi/4)e^(r^2(sin theta+cos theta)^2)dif(r^2(sin theta+cos theta)^2)
=1/2 integral_0^1 r(e^(2r^2)-e^(r^2))dif r=(e-1)^2/8. $
]

#answer("20.")[
（1）分离变量得 $dif y/y=(n+1)dif x/x$，故 $y=C x^(n+1)$. 由初值条件得 $y_n(x)=x^(n+1)/(n(n+1))$.

（2）比值法得收敛半径为1，两端点的级数均收敛，所以收敛域为 $[-1,1]$. 在 $-1<=x<1$ 上，利用 $sum_(n=1)^infinity x^n/n=-ln(1-x)$，积分得
$ S(x)=-integral_0^x ln(1-t)dif t=x+(1-x)ln(1-x). $
在 $x=1$ 时，$S(1)=sum_(n=1)^infinity 1/(n(n+1))=1$. 因而和函数为
$ S(x)=cases(x+(1-x)ln(1-x) & -1<=x<1,1 & x=1). $
]

#answer("21.")[
特征多项式为 $(lambda-b)(lambda-1)(lambda-3)$，所以只有两个不同特征值时 $b=1$ 或 $b=3$.

当 $b=1$ 时，为使重特征值1的特征子空间为二维，须 $r(E-A)=1$，即 $a=1$. 对应特征向量为 $(-1,1,0)^T$、$(0,0,1)^T$，特征值3的特征向量为 $(1,1,1)^T$. 可取
$ P=mat(-1,0,1;1,0,1;0,1,1), quad P^(-1)A P=op("diag")(1,1,3). $
当 $b=3$ 时，须 $r(3E-A)=1$，即 $a=-1$. 对应特征向量为 $(1,1,0)^T$、$(0,0,1)^T$，特征值1的特征向量为 $(-1,1,1)^T$. 可取
$ P=mat(1,0,-1;1,0,1;0,1,1), quad P^(-1)A P=op("diag")(3,3,1). $
]

#answer("22.")[
（1）记随机点坐标为 $V$，则 $V~U(0,2)$、$X=min{V,2-V}$. 当 $0<=x<1$ 时，$F_X(x)=1-P{x<V<2-x}=x$. 因此
$ f_X(x)=cases(1 & 0<x<1,0 & "其他"). $
（2）$Z=(2-X)/X$，在 $0<X<1$ 上严格单调，反函数为 $x=2/(1+z)$，故
$ f_Z(z)=cases(2/(1+z)^2 & z>1,0 & "其他"). $
（3）$E(X/Y)=integral_0^1 x/(2-x)dif x=2ln 2-1$.
]

