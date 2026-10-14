#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2019, subject: "三", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2019 数学三试卷参考解答

= 一、选择题

#answer-key(
  [1. C.],
  [2. D.],
  [3. D.],
  [4. B.],
  [5. A.],
  [6. C.],
  [7. C.],
  [8. A.],
)

= 二、填空题

#answer("9.")[
$e^(-1)$.
]

#answer("10.")[
$(pi,-2)$.
]

#answer("11.")[
$(1-2sqrt(2))/18$.
]

#answer("12.")[
$0.4$.
]

#answer("13.")[
$1$.
]

#answer("14.")[
$2/3$.
]

= 三、解答题

#answer("15.")[
当 $x>0$ 时，$f'(x)=2x^(2x)(ln x+1)$；当 $x<0$ 时，$f'(x)=e^x(x+1)$. 又
$ lim_(x->0^+)(x^(2x)-1)/x=lim_(x->0^+)2ln x=-infinity, $
故 $f'(0)$ 不存在. 驻点为 $x=-1,1/e$. 在 $x<-1$ 及 $0<x<1/e$ 时导数为负；在 $-1<x<0$ 及 $x>1/e$ 时导数为正. 因而极小值为 $f(-1)=1-1/e$、$f(1/e)=e^(-2/e)$；极大值为 $f(0)=1$.
]

#answer("16.")[
由复合函数求导，
$ g_x=y-f_u(x+y,x-y)-f_v(x+y,x-y), $
$ g_y=x-f_u(x+y,x-y)+f_v(x+y,x-y), $
$ g_(x x)=-f_(u u)-2f_(u v)-f_(v v), quad g_(x y)=1-f_(u u)+f_(v v), $
$ g_(y y)=-f_(u u)+2f_(u v)-f_(v v). $
上式的偏导数均在 $(x+y,x-y)$ 处取值，故所求为 $1-3f_(u u)(x+y,x-y)-f_(v v)(x+y,x-y)$.
]

#answer("17.")[
（1）由一阶线性方程通解公式，
$ y(x)=e^(x^2/2)(C+integral 1/(2sqrt(x))dif x)=e^(x^2/2)(sqrt(x)+C). $
由 $y(1)=sqrt(e)$ 得 $C=0$，故 $y(x)=sqrt(x)e^(x^2/2)$.

（2）旋转体体积为
$ V=pi integral_1^2 y^2(x)dif x=pi integral_1^2 x e^(x^2)dif x=pi/2(e^4-e). $
]

#answer("18.")[
所求面积为 $S=integral_0^infinity e^(-x)abs(sin x)dif x$. 分段积分得
$ integral_(n pi)^((n+1)pi)e^(-x)sin x dif x
=(-1)^n/2(e^(-n pi)+e^(-(n+1)pi)). $
故
$ S=1/2 sum_(n=0)^infinity (e^(-n pi)+e^(-(n+1)pi))
=(e^pi+1)/(2(e^pi-1)). $
]

#answer("19.")[
（1）$a_(n+1)-a_n=integral_0^1 x^n(x-1)sqrt(1-x^2)dif x<0$，故单调减少. 分部积分得
$ a_n=-1/3 [x^(n-1)(1-x^2)^(3/2)]_0^1+(n-1)/3 integral_0^1 x^(n-2)(1-x^2)^(3/2)dif x
=(n-1)/3 a_(n-2)-(n-1)/3 a_n. $
整理得 $a_n=(n-1)/(n+2)a_(n-2)$.

（2）由单调性及 $a_n>0$，
$ (n-1)/(n+2)<a_n/a_(n-1)<1. $
由夹逼准则，所求极限为1.
]

#answer("20.")[
对矩阵 $(bold(alpha)_1,bold(alpha)_2,bold(alpha)_3,bold(beta)_1,bold(beta)_2,bold(beta)_3)$ 作初等行变换，得
$ mat(augment:#3,1,0,2,1,2,3;0,1,-1,0,-2,-2;0,0,a^2-1,a-1,1-a,a^2-1). $
当 $a=-1$ 时，$bold(beta)_1$ 不能由向量组Ⅰ线性表示，两组不等价.

当 $a=1$ 时，Ⅰ的极大无关组为 $bold(alpha)_1,bold(alpha)_2$，Ⅱ的极大无关组为 $bold(beta)_1,bold(beta)_2$，且
$ (bold(beta)_1,bold(beta)_2)=(bold(alpha)_1,bold(alpha)_2)mat(1,2;0,-2). $
右侧系数矩阵可逆，故两组等价，且 $bold(beta)_3=3bold(alpha)_1-2bold(alpha)_2$.

当 $a!=plus.minus 1$ 时，两组的行列式分别为 $1-a^2$、$2(a^2-1)$，均非零，故两组等价. 行变换可得 $bold(beta)_3=bold(alpha)_1-bold(alpha)_2+bold(alpha)_3$.

因此 $a!=-1$；表示式按 $a=1$ 与 $a!=plus.minus 1$ 分别如上.
]

#answer("21.")[
（1）由相似矩阵的迹与行列式相等，$x-4=y+1$、$4x-8=-2y$，解得 $x=3,y=-2$.

（2）特征值为 $2,-1,-2$. $A$ 的对应特征向量可取 $bold(xi)_1=(1,-2,0)^T$、$bold(xi)_2=(-2,1,0)^T$、$bold(xi)_3=(1,-2,-4)^T$；$B$ 的对应特征向量可取 $bold(eta)_1=(1,0,0)^T$、$bold(eta)_2=(1,-3,0)^T$、$bold(eta)_3=(0,0,1)^T$. 记 $P_1=(bold(xi)_1,bold(xi)_2,bold(xi)_3)$，$P_2=(bold(eta)_1,bold(eta)_2,bold(eta)_3)$，则
$ P_1^(-1)A P_1=P_2^(-1)B P_2=op("diag")(2,-1,-2). $
取
$ P=P_1 P_2^(-1)=mat(1,1,1;-2,-1,-2;0,0,-4), $
即有 $P^(-1)A P=B$.
]

#answer("22.")[
（1）由全概率公式，$F_Z(z)=p P{-X<=z}+(1-p)P{X<=z}$. 因此
$ F_Z(z)=cases(p e^z & z<0,1-(1-p)e^(-z) & z>=0), $
$ f_Z(z)=cases(p e^z & z<0,(1-p)e^(-z) & z>=0). $
（2）$op("Cov")(X,Z)=E(X^2)E Y-(E X)^2 E Y=D X dot E Y=1-2p$. 故 $p=1/2$ 时不相关.

（3）$P{X<=1,Z<=-1}=0$，而 $P{X<=1}>0$、$P{Z<=-1}>0$，故两者不独立.
]

#answer("23.")[
（1）由密度积分为1，令 $t=(x-mu)/sigma$，得
$ 1=A integral_0^infinity e^(-t^2/2)dif t=A sqrt(2pi)/2. $
故 $A=sqrt(2/pi)$.

（2）记样本观测值为 $x_1,dots,x_n$，在各 $x_i>=mu$ 时，似然函数为
$ L(sigma^2)=(2/pi)^(n/2)(sigma^2)^(-n/2)e^(-sum_(i=1)^n (x_i-mu)^2/(2sigma^2)). $
其对数为
$ ln L=n/2 ln(2/pi)-n/2 ln sigma^2-1/(2sigma^2)sum_(i=1)^n(x_i-mu)^2. $
令关于 $sigma^2$ 的导数为零，得最大似然估计量
$ hat(sigma)^2=1/n sum_(i=1)^n(X_i-mu)^2. $
]

