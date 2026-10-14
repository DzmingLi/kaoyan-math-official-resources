#import "../template.typ": exam
#show: exam.with(year: 2021, subject: "一")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices.with(r-gap: 1.3em)
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)


= 一、选择题：第1—10小题，每小题5分，共50分. 下列每小题给出的四个选项中，只有一个选项是符合题目要求的.

#ezexam.question[
函数 $f(x)=cases((e^x-1)/x & x!=0,1 & x=0)$ 在 $x=0$ 处（　）.
#choices([连续且取得极大值.],[连续且取得极小值.],[可导且导数等于零.],[可导且导数不为零.])
]

#ezexam.question[
设函数 $f(x,y)$ 可微，且 $f(x+1,e^x)=x(x+1)^2$，$f(x,x^2)=2x^2 ln x$，则 $dif f(1,1)=$（　）.
#choices([$dif x+dif y$.],[$dif x-dif y$.],[$dif y$.],[$-dif y$.])
]

#ezexam.question[
设函数 $f(x)=(sin x)/(1+x^2)$ 在 $x=0$ 处的3次泰勒多项式为 $a x+b x^2+c x^3$，则（　）.
#choices([$a=1,b=0,c=-7/6$.],[$a=1,b=0,c=7/6$.],[$a=-1,b=-1,c=-7/6$.],[$a=-1,b=-1,c=7/6$.])
]

#ezexam.question[
设函数 $f(x)$ 在区间 $[0,1]$ 上连续，则 $integral_0^1 f(x)dif x=$（　）.
#choices([$lim_(n->infinity)sum_(k=1)^n f((2k-1)/(2n))1/(2n)$.],[$lim_(n->infinity)sum_(k=1)^n f((2k-1)/(2n))1/n$.],[$lim_(n->infinity)sum_(k=1)^(2n)f((k-1)/(2n))1/n$.],[$lim_(n->infinity)sum_(k=1)^(2n)f(k/(2n))2/n$.])
]

#ezexam.question[
二次型 $f(x_1,x_2,x_3)=(x_1+x_2)^2+(x_2+x_3)^2-(x_3-x_1)^2$ 的正惯性指数与负惯性指数依次为（　）.
#choices([$2,0$.],[$1,1$.],[$2,1$.],[$1,2$.])
]

#ezexam.question[
已知 $bold(alpha)_1=(1,0,1)^T$，$bold(alpha)_2=(1,2,1)^T$，$bold(alpha)_3=(3,1,2)^T$，记 $bold(beta)_1=bold(alpha)_1$，$bold(beta)_2=bold(alpha)_2-k bold(beta)_1$，$bold(beta)_3=bold(alpha)_3-l_1 bold(beta)_1-l_2 bold(beta)_2$. 若 $bold(beta)_1,bold(beta)_2,bold(beta)_3$ 两两正交，则 $l_1,l_2$ 依次为（　）.
#choices([$5/2,1/2$.],[$-5/2,1/2$.],[$5/2,-1/2$.],[$-5/2,-1/2$.])
]

#ezexam.question[
设 $A,B$ 为 $n$ 阶实矩阵，下列结论不成立的是（　）.
#choices([$r(mat(A,O;O,A^T))=2r(A)$.],[$r(mat(A,A B;O,A^T))=2r(A)$.],[$r(mat(A,B A;O,A A^T))=2r(A)$.],[$r(mat(A,O;B A,A^T))=2r(A)$.])
]

#ezexam.question[
设 $A,B$ 为随机事件，且 $0<P(B)<1$. 下列命题中为假命题的是（　）.
#choices([若 $P(A | B)=P(A)$，则 $P(A | overline(B))=P(A)$.],[若 $P(A | B)>P(A)$，则 $P(overline(A) | overline(B))>P(overline(A))$.],[若 $P(A | B)>P(A | overline(B))$，则 $P(A | B)>P(A)$.],[若 $P(A | A union B)>P(overline(A) | A union B)$，则 $P(A)>P(B)$.])
]

#ezexam.question[
设 $(X_1,Y_1),(X_2,Y_2),dots,(X_n,Y_n)$ 为来自总体 $N(mu_1,mu_2;sigma_1^2,sigma_2^2;rho)$ 的简单随机样本，令 $theta=mu_1-mu_2$，$overline(X)=1/n sum X_i$，$overline(Y)=1/n sum Y_i$，$hat(theta)=overline(X)-overline(Y)$，则（　）.
#choices([$hat(theta)$ 是 $theta$ 的无偏估计，$D(hat(theta))=(sigma_1^2+sigma_2^2)/n$.],[$hat(theta)$ 不是 $theta$ 的无偏估计，$D(hat(theta))=(sigma_1^2+sigma_2^2)/n$.],[$hat(theta)$ 是 $theta$ 的无偏估计，$D(hat(theta))=(sigma_1^2+sigma_2^2-2rho sigma_1 sigma_2)/n$.],[$hat(theta)$ 不是 $theta$ 的无偏估计，$D(hat(theta))=(sigma_1^2+sigma_2^2-2rho sigma_1 sigma_2)/n$.])
]

#ezexam.question[
设 $X_1,X_2,dots,X_16$ 是来自总体 $N(mu,4)$ 的简单随机样本，考虑假设检验问题 $H_0:mu<=10,H_1:mu>10$. $Phi(x)$ 表示标准正态分布函数. 若该检验问题的拒绝域为 $W={overline(X)>11}$，其中 $overline(X)=1/16 sum_(i=1)^16 X_i$，则 $mu=11.5$ 时，该检验犯第二类错误的概率为（　）.
#choices([$1-Phi(0.5)$.],[$1-Phi(1)$.],[$1-Phi(1.5)$.],[$1-Phi(2)$.])
]


= 二、填空题：第11—16小题，每小题5分，共30分.

#ezexam.question[
求 $integral_0^infinity dif x/(x^2+2x+2)=$#fillin[].
]

#ezexam.question[
设函数 $y=y(x)$ 由参数方程 $cases(x=2e^t+t+1,y=4(t-1)e^t+t^2)$ 确定，则 $(dif^2 y)/(dif x^2)|_(t=0)=$#fillin[].
]

#ezexam.question[
欧拉方程 $x^2 y''+x y'-4y=0$ 满足条件 $y(1)=1,y'(1)=2$ 的解为 $y=$#fillin[].
]

#ezexam.question[
设 $Sigma$ 为空间区域 ${(x,y,z) | x^2+4y^2<=4,0<=z<=2}$ 表面的外侧，则曲面积分 $integral.double_Sigma x^2 dif y dif z+y^2 dif z dif x+z dif x dif y=$#fillin[].
]

#ezexam.question[
设 $A=(a_(i j))$ 为3阶矩阵，$A_(i j)$ 为元素 $a_(i j)$ 的代数余子式. 若 $A$ 的每行元素之和均为2，且 $abs(A)=3$，则 $A_(1 1)+A_(2 1)+A_(3 1)=$#fillin[].
]

#ezexam.question[
甲、乙两个盒子中各装有2个红球和2个白球，先从甲盒中任取一球，观察颜色后放入乙盒中，再从乙盒中任取一球. 令 $X,Y$ 分别表示从甲盒和乙盒中取到的红球个数，则 $X$ 与 $Y$ 的相关系数为#fillin[].
]


= 三、解答题：第17—22小题，共70分. 解答应写出文字说明、证明过程或演算步骤.

#ezexam.question[
（本题满分10分）求极限 $lim_(x->0)[(1+integral_0^x e^(t^2)dif t)/(e^x-1)-1/(sin x)]$.
]

#ezexam.question[
（本题满分12分）设 $u_n(x)=e^(-n x)+x^(n+1)/(n(n+1))$（$n=1,2,dots$），求级数 $sum_(n=1)^infinity u_n(x)$ 的收敛域及和函数.
]

#ezexam.question[
（本题满分12分）已知曲线 $C:cases(x^2+2y^2-z=6,4x+2y+z=30)$，求 $C$ 上的点到 $x O y$ 坐标面距离的最大值.
]

#ezexam.question[
（本题满分12分）设 $D subset bold(R)^2$ 是有界单连通区域，$I(D)=integral.double_D (4-x^2-y^2)dif x dif y$ 取得最大值的积分区域为 $D_1$.

（1）求 $I(D_1)$ 的值；

（2）计算 $integral_(partial D_1) ((x e^(x^2+4y^2)+y)dif x+(4y e^(x^2+4y^2)-x)dif y)/(x^2+4y^2)$，其中 $partial D_1$ 是 $D_1$ 的正向边界.
]

#ezexam.question[
（本题满分12分）设矩阵 $A=mat(a,1,-1;1,a,-1;-1,-1,a)$.

（1）求正交矩阵 $P$，使 $P^T A P$ 为对角矩阵；

（2）求正定矩阵 $C$，使 $C^2=(a+3)E-A$，其中 $E$ 为3阶单位矩阵.
]

#ezexam.question[
（本题满分12分）在区间 $(0,2)$ 上随机取一点，将该区间分成两段，较短一段的长度记为 $X$，较长一段的长度记为 $Y$. 令 $Z=Y/X$.

（1）求 $X$ 的概率密度；

（2）求 $Z$ 的概率密度；

（3）求 $E(X/Y)$.
]

