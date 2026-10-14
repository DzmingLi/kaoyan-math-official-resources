#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2019, subject: "一", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2019 数学一试卷参考解答

= 一、选择题

#answer-key(
  [1. C.],
  [2. B.],
  [3. D.],
  [4. D.],
  [5. C.],
  [6. A.],
  [7. C.],
  [8. A.],
)

= 二、填空题

#answer("9.")[
$y/(cos x)+x/(cos y)$.
]

#answer("10.")[
$sqrt(3e^x-2)$.
]

#answer("11.")[
$cos sqrt(x)$.
]

#answer("12.")[
$32/3$.
]

#answer("13.")[
$bold(x)=k(1,-2,1)^T$，$k in bold(R)$.
]

#answer("14.")[
$2/3$.
]

= 三、解答题

#answer("15.")[
（1）由一阶线性微分方程的通解公式，
$ y=e^(-x^2/2)(C+integral e^(-x^2/2)e^(x^2/2)dif x)=e^(-x^2/2)(C+x). $
由 $y(0)=0$ 得 $C=0$，故 $y=x e^(-x^2/2)$.

（2）$y'=(1-x^2)e^(-x^2/2)$，$y''=x(x^2-3)e^(-x^2/2)$. 令 $y''=0$ 得 $x=0,plus.minus sqrt(3)$. 在 $x<-sqrt(3)$ 及 $0<x<sqrt(3)$ 时 $y''<0$；在 $-sqrt(3)<x<0$ 及 $x>sqrt(3)$ 时 $y''>0$. 因此凹区间为 $(-sqrt(3),0)$、$(sqrt(3),+infinity)$，凸区间为 $(-infinity,-sqrt(3))$、$(0,sqrt(3))$. 三个拐点为 $(-sqrt(3),-sqrt(3)e^(-3/2))$、$(0,0)$、$(sqrt(3),sqrt(3)e^(-3/2))$.
]

#answer("16.")[
（1）在 $(3,4)$ 处的梯度为 $6a bold(i)+8b bold(j)$. 由题意，$6a=-3k$、$8b=-4k$（$k>0$），且 $sqrt(36a^2+64b^2)=10$. 解得 $a=b=-1$.

（2）曲面为 $z=2-x^2-y^2$，在 $x O y$ 平面上的投影为 $D={(x,y) | x^2+y^2<=2}$. 因而
$ S=integral.double_D sqrt(1+4x^2+4y^2)dif x dif y
=integral_0^(2pi)dif theta integral_0^(sqrt(2))r sqrt(1+4r^2)dif r
=pi/4 integral_1^9 sqrt(u)dif u=13pi/3. $
]

#answer("17.")[
所求面积为 $S=integral_0^infinity e^(-x)abs(sin x)dif x$. 分段积分得
$ integral_(n pi)^((n+1)pi)e^(-x)sin x dif x
=(-1)^n/2(e^(-n pi)+e^(-(n+1)pi)). $
故
$ S=1/2 sum_(n=0)^infinity (e^(-n pi)+e^(-(n+1)pi))
=(e^pi+1)/(2(e^pi-1)). $
]

#answer("18.")[
（1）$a_(n+1)-a_n=integral_0^1 x^n(x-1)sqrt(1-x^2)dif x<0$，故单调减少. 分部积分得
$ a_n=-1/3 [x^(n-1)(1-x^2)^(3/2)]_0^1+(n-1)/3 integral_0^1 x^(n-2)(1-x^2)^(3/2)dif x
=(n-1)/3 a_(n-2)-(n-1)/3 a_n. $
整理得 $a_n=(n-1)/(n+2)a_(n-2)$.

（2）由单调性及 $a_n>0$，
$ (n-1)/(n+2)<a_n/a_(n-1)<1. $
由夹逼准则，所求极限为1.
]

#answer("19.")[
设形心为 $(overline(x),overline(y),overline(z))$. 锥体关于 $y O z$ 平面对称，故 $overline(x)=0$. 高度 $z$ 的截面为 $D_z={(x,y) | x^2+(y-z)^2<=(1-z)^2}$. 于是
$ V=integral_0^1 pi(1-z)^2 dif z=pi/3, $
$ integral.triple_Omega y dif x dif y dif z
=integral_0^1 dif z integral_0^(2pi)dif theta integral_0^(1-z)(z+r sin theta)r dif r=pi/12, $
$ integral.triple_Omega z dif x dif y dif z=integral_0^1 pi z(1-z)^2 dif z=pi/12. $
故形心为 $(0,1/4,1/4)$.
]

#answer("20.")[
（1）由 $b bold(alpha)_1+c bold(alpha)_2+bold(alpha)_3=bold(beta)$，得
$ cases(b+c+1=1,2b+3c+a=1,b+2c+3=1). $
解得 $a=3,b=2,c=-2$.

（2）$det(bold(alpha)_2,bold(alpha)_3,bold(beta))=abs(mat(1,1,1;3,3,1;2,3,1))=2!=0$，故三向量为一个基. 又 $bold(beta)=2bold(alpha)_1-2bold(alpha)_2+bold(alpha)_3$，故 $bold(alpha)_1=bold(alpha)_2-bold(alpha)_3/2+bold(beta)/2$. 于是
$ (bold(alpha)_1,bold(alpha)_2,bold(alpha)_3)
=(bold(alpha)_2,bold(alpha)_3,bold(beta))mat(1,1,0;-1/2,0,1;1/2,0,0). $
所求过渡矩阵为 $mat(1,1,0;-1/2,0,1;1/2,0,0)$.
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

