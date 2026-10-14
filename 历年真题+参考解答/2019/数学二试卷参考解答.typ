#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2019, subject: "二", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2019 数学二试卷参考解答

= 一、选择题

#answer-key(
  [1. C.],
  [2. B.],
  [3. D.],
  [4. D.],
  [5. A.],
  [6. A.],
  [7. A.],
  [8. C.],
)

= 二、填空题

#answer("9.")[
$4e^2$.
]

#answer("10.")[
$2+3pi/2$.
]

#answer("11.")[
$y f(y^2/x)$.
]

#answer("12.")[
$1/2 ln 3$.
]

#answer("13.")[
$(cos 1-1)/4$.
]

#answer("14.")[
$-4$.
]

= 三、解答题

#answer("15.")[
当 $x>0$ 时，$f'(x)=2x^(2x)(ln x+1)$；当 $x<0$ 时，$f'(x)=e^x(x+1)$. 又
$ lim_(x->0^+)(x^(2x)-1)/x=lim_(x->0^+)2ln x=-infinity, $
故 $f'(0)$ 不存在. 驻点为 $x=-1,1/e$. 在 $x<-1$ 及 $0<x<1/e$ 时导数为负；在 $-1<x<0$ 及 $x>1/e$ 时导数为正. 因而极小值为 $f(-1)=1-1/e$、$f(1/e)=e^(-2/e)$；极大值为 $f(0)=1$.
]

#answer("16.")[
设
$ (3x+6)/((x-1)^2(x^2+x+1))=A/(x-1)+B/(x-1)^2+(C x+D)/(x^2+x+1). $
比较系数得 $A=-2,B=3,C=2,D=1$. 故
$ I=-2integral dif x/(x-1)+3integral dif x/(x-1)^2+integral (2x+1)/(x^2+x+1)dif x
=-2ln abs(x-1)-3/(x-1)+ln(x^2+x+1)+C. $
]

#answer("17.")[
（1）由一阶线性方程通解公式，
$ y(x)=e^(x^2/2)(C+integral 1/(2sqrt(x))dif x)=e^(x^2/2)(sqrt(x)+C). $
由 $y(1)=sqrt(e)$ 得 $C=0$，故 $y(x)=sqrt(x)e^(x^2/2)$.

（2）旋转体体积为
$ V=pi integral_1^2 y^2(x)dif x=pi integral_1^2 x e^(x^2)dif x=pi/2(e^4-e). $
]

#answer("18.")[
因为 $D$ 关于 $y$ 轴对称，含 $x$ 的积分为0. 设 $D_1$ 为 $D$ 在 $y$ 轴右侧的部分，极坐标下为 $pi/4<=theta<=pi/2$、$0<=r<=sin^2 theta$. 因而
$ I=2integral_(pi/4)^(pi/2)dif theta integral_0^(sin^2 theta) r sin theta dif r
=integral_(pi/4)^(pi/2)sin^5 theta dif theta
=-[cos theta-2/3 cos^3 theta+1/5 cos^5 theta]_(pi/4)^(pi/2)
=43sqrt(2)/120. $
]

#answer("19.")[
按各半周期求面积，
$ S_n=sum_(k=0)^(n-1)(-1)^k integral_(k pi)^((k+1)pi)e^(-x)sin x dif x. $
两次分部积分得
$ integral_(k pi)^((k+1)pi)e^(-x)sin x dif x=(-1)^k/2(e^(-k pi)+e^(-(k+1)pi)). $
故
$ S_n=((1+e^(-pi))(1-e^(-n pi)))/(2(1-e^(-pi))), $
$ lim_(n->infinity)S_n=(e^pi+1)/(2(e^pi-1)). $
]

#answer("20.")[
由乘积求导，
$ u_x=e^(a x+b y)(v_x+a v), quad u_(x x)=e^(a x+b y)(v_(x x)+2a v_x+a^2 v), $
$ u_y=e^(a x+b y)(v_y+b v), quad u_(y y)=e^(a x+b y)(v_(y y)+2b v_y+b^2 v). $
代入原方程并整理得
$ 2v_(x x)-2v_(y y)+(4a+3)v_x+(3-4b)v_y+(2a^2-2b^2+3a+3b)v=0. $
令 $4a+3=0,3-4b=0$，解得 $a=-3/4,b=3/4$. 此时方程化为 $v_(x x)-v_(y y)=0$.
]

#answer("21.")[
（1）由 $f$ 连续且 $f(0)=0$，存在 $delta in (0,1)$，使 $0<=x<=delta$ 时 $f(x)<1/2$. 若处处 $f(x)<=1$，则
$ integral_0^1 f(x)dif x<=delta/2+(1-delta)=1-delta/2<1, $
矛盾. 故最大值大于1，由端点值可知最大值在内点 $xi$ 取到，且 $f'(xi)=0,f(xi)>1$.

（2）在 $[0,xi]$ 上使用泰勒公式，存在 $eta in (0,xi)$，使
$ 0=f(0)=f(xi)-xi f'(xi)+1/2 xi^2 f''(eta). $
故 $f''(eta)=-2f(xi)/xi^2<-2$.
]

#answer("22.")[
对矩阵 $(bold(alpha)_1,bold(alpha)_2,bold(alpha)_3,bold(beta)_1,bold(beta)_2,bold(beta)_3)$ 作初等行变换，得
$ mat(augment:#3,1,0,2,1,2,3;0,1,-1,0,-2,-2;0,0,a^2-1,a-1,1-a,a^2-1). $
当 $a=-1$ 时，$bold(beta)_1$ 不能由向量组Ⅰ线性表示，两组不等价.

当 $a=1$ 时，Ⅰ的极大无关组为 $bold(alpha)_1,bold(alpha)_2$，Ⅱ的极大无关组为 $bold(beta)_1,bold(beta)_2$，且
$ (bold(beta)_1,bold(beta)_2)=(bold(alpha)_1,bold(alpha)_2)mat(1,2;0,-2). $
右侧系数矩阵可逆，故两组等价，且 $bold(beta)_3=3bold(alpha)_1-2bold(alpha)_2$.

当 $a!=plus.minus 1$ 时，两组的行列式分别为 $1-a^2$、$2(a^2-1)$，均非零，故两组等价. 行变换可得 $bold(beta)_3=bold(alpha)_1-bold(alpha)_2+bold(alpha)_3$.

因此 $a!=-1$；表示式按 $a=1$ 与 $a!=plus.minus 1$ 分别如上.
]

#answer("23.")[
（1）由相似矩阵的迹与行列式相等，$x-4=y+1$、$4x-8=-2y$，解得 $x=3,y=-2$.

（2）特征值为 $2,-1,-2$. $A$ 的对应特征向量可取 $bold(xi)_1=(1,-2,0)^T$、$bold(xi)_2=(-2,1,0)^T$、$bold(xi)_3=(1,-2,-4)^T$；$B$ 的对应特征向量可取 $bold(eta)_1=(1,0,0)^T$、$bold(eta)_2=(1,-3,0)^T$、$bold(eta)_3=(0,0,1)^T$. 记 $P_1=(bold(xi)_1,bold(xi)_2,bold(xi)_3)$，$P_2=(bold(eta)_1,bold(eta)_2,bold(eta)_3)$，则
$ P_1^(-1)A P_1=P_2^(-1)B P_2=op("diag")(2,-1,-2). $
取
$ P=P_1 P_2^(-1)=mat(1,1,1;-2,-1,-2;0,0,-4), $
即有 $P^(-1)A P=B$.
]

