#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2021, subject: "二", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2021 数学二试卷参考解答

= 一、选择题

#answer-key(
  [1. C.],
  [2. D.],
  [3. C.],
  [4. A.],
  [5. D.],
  [6. C.],
  [7. B.],
  [8. B.],
  [9. D.],
  [10. C.],
)

= 二、填空题

#answer("11.")[
$1/(ln 3)$.
]

#answer("12.")[
$2/3$.
]

#answer("13.")[
$1$.
]

#answer("14.")[
$pi/2 cos(2/pi)$.
]

#answer("15.")[
$C_1 e^x+C_2 e^(-x/2)cos(sqrt(3)x/2)+C_3 e^(-x/2)sin(sqrt(3)x/2)$.
]

#answer("16.")[
$-5$.
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
函数分段为 $f(x)=cases(-x^2/(1+x) & x<0,x^2/(1+x) & x>=0)$，其中 $x!=-1$. 当 $x!=0$ 时，
$ f''(x)=cases(-2/(1+x)^3 & x<0,2/(1+x)^3 & x>0). $
故凹区间为 $(-infinity,-1)$、$(0,+infinity)$，凸区间为 $(-1,0)$. 由 $lim_(x->-1)abs(f(x))=infinity$，知竖直渐近线为 $x=-1$. 又
$ lim_(x->infinity)f(x)/x=1, quad lim_(x->infinity)(f(x)-x)=-1, $
$ lim_(x->-infinity)f(x)/x=-1, quad lim_(x->-infinity)(f(x)+x)=1. $
故在正、负无穷处的斜渐近线分别为 $y=x-1$、$y=-x+1$.
]

#answer("19.")[
对已知原函数等式求导，得 $f(x)=x sqrt(x)/3-sqrt(x)$. 由此
$ sqrt(1+(f'(x))^2)=1/2(sqrt(x)+1/sqrt(x)). $
所以
$ s=1/2 integral_4^9(sqrt(x)+1/sqrt(x))dif x=22/3, $
$ A=2pi integral_4^9 f(x)sqrt(1+(f'(x))^2)dif x
=pi integral_4^9(x^2/3-2x/3-1)dif x=425pi/9. $
]

#answer("20.")[
（1）方程化为 $y'-6y/x=-6/x$，解得 $y=C x^6+1$. 由 $y(sqrt(3))=10$ 得 $C=1/3$，故 $y=x^6/3+1$.

（2）在点 $P(x,y)$ 处的法线为 $Y-y=-(X-x)/(2x^5)$，故截距为 $I_P=1/(2x^4)+x^6/3+1$. 导数为 $-2/x^5+2x^5$，在 $0<x<1$ 时为负，在 $x>1$ 时为正，故最小值在 $x=1$ 取到，所求点为 $(1,4/3)$.
]

#answer("21.")[
极坐标下，边界曲线为 $r^2=cos 2theta$（$0<=theta<=pi/4$），因而
$ I=integral_0^(pi/4)dif theta integral_0^(sqrt(cos 2theta))r^3 cos theta sin theta dif r
=1/4 integral_0^(pi/4)cos theta sin theta cos^2 2theta dif theta
=-1/48[cos^3 2theta]_0^(pi/4)=1/48. $
]

#answer("22.")[
特征多项式为 $(lambda-b)(lambda-1)(lambda-3)$，所以只有两个不同特征值时 $b=1$ 或 $b=3$.

当 $b=1$ 时，为使重特征值1的特征子空间为二维，须 $r(E-A)=1$，即 $a=1$. 对应特征向量为 $(-1,1,0)^T$、$(0,0,1)^T$，特征值3的特征向量为 $(1,1,1)^T$. 可取
$ P=mat(-1,0,1;1,0,1;0,1,1), quad P^(-1)A P=op("diag")(1,1,3). $
当 $b=3$ 时，须 $r(3E-A)=1$，即 $a=-1$. 对应特征向量为 $(1,1,0)^T$、$(0,0,1)^T$，特征值1的特征向量为 $(-1,1,1)^T$. 可取
$ P=mat(1,0,-1;1,0,1;0,1,1), quad P^(-1)A P=op("diag")(3,3,1). $
]

