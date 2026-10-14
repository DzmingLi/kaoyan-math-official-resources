#import "../template.typ": exam
#show: exam.with(year: 2021, subject: "三")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices.with(r-gap: 1.3em)
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)


= 一、选择题：第1—10小题，每小题5分，共50分. 下列每小题给出的四个选项中，只有一个选项是符合题目要求的.

#ezexam.question[
当 $x->0$ 时，$integral_0^(x^2)(e^(t^3)-1)dif t$ 是 $x^7$ 的（　）.
#choices([低阶无穷小.],[等价无穷小.],[高阶无穷小.],[同阶但非等价无穷小.])
]

#ezexam.question[
函数 $f(x)=cases((e^x-1)/x & x!=0,1 & x=0)$ 在 $x=0$ 处（　）.
#choices([连续且取得极大值.],[连续且取得极小值.],[可导且导数等于零.],[可导且导数不为零.])
]

#ezexam.question[
设函数 $f(x)=a x-b ln x$（$a>0$）有2个零点，则 $b/a$ 的取值范围是（　）.
#choices([$(e,+infinity)$.],[$(0,e)$.],[$(0,1/e)$.],[$(1/e,+infinity)$.])
]

#ezexam.question[
设函数 $f(x,y)$ 可微，且 $f(x+1,e^x)=x(x+1)^2$，$f(x,x^2)=2x^2 ln x$，则 $dif f(1,1)=$（　）.
#choices([$dif x+dif y$.],[$dif x-dif y$.],[$dif y$.],[$-dif y$.])
]

#ezexam.question[
二次型 $f(x_1,x_2,x_3)=(x_1+x_2)^2+(x_2+x_3)^2-(x_3-x_1)^2$ 的正惯性指数与负惯性指数依次为（　）.
#choices([$2,0$.],[$1,1$.],[$2,1$.],[$1,2$.])
]

#ezexam.question[
设 $A=(bold(alpha)_1,bold(alpha)_2,bold(alpha)_3,bold(alpha)_4)$ 为4阶正交矩阵. 若矩阵 $B=mat(bold(alpha)_1^T;bold(alpha)_2^T;bold(alpha)_3^T)$，$bold(beta)=(1,1,1)^T$，$k$ 表示任意常数，则线性方程组 $B bold(x)=bold(beta)$ 的通解为（　）.
#choices([$bold(alpha)_2+bold(alpha)_3+bold(alpha)_4+k bold(alpha)_1$.],[$bold(alpha)_1+bold(alpha)_3+bold(alpha)_4+k bold(alpha)_2$.],[$bold(alpha)_1+bold(alpha)_2+bold(alpha)_4+k bold(alpha)_3$.],[$bold(alpha)_1+bold(alpha)_2+bold(alpha)_3+k bold(alpha)_4$.])
]

#ezexam.question[
已知矩阵 $A=mat(1,0,-1;2,-1,1;-1,2,-5)$. 若下三角可逆矩阵 $P$ 和上三角可逆矩阵 $Q$，使得 $P A Q$ 为对角矩阵，则 $P,Q$ 可以分别取（　）.
#choices([$mat(1,0,0;0,1,0;0,0,1),mat(1,0,1;0,1,3;0,0,1)$.],[$mat(1,0,0;2,-1,0;-3,2,1),mat(1,0,0;0,1,0;0,0,1)$.],[$mat(1,0,0;2,-1,0;-3,2,1),mat(1,0,1;0,1,3;0,0,1)$.],[$mat(1,0,0;0,1,0;1,3,1),mat(1,2,-3;0,-1,2;0,0,1)$.])
]

#ezexam.question[
设 $A,B$ 为随机事件，且 $0<P(B)<1$. 下列命题中为假命题的是（　）.
#choices([若 $P(A | B)=P(A)$，则 $P(A | overline(B))=P(A)$.],[若 $P(A | B)>P(A)$，则 $P(overline(A) | overline(B))>P(overline(A))$.],[若 $P(A | B)>P(A | overline(B))$，则 $P(A | B)>P(A)$.],[若 $P(A | A union B)>P(overline(A) | A union B)$，则 $P(A)>P(B)$.])
]

#ezexam.question[
设 $(X_1,Y_1),(X_2,Y_2),dots,(X_n,Y_n)$ 为来自总体 $N(mu_1,mu_2;sigma_1^2,sigma_2^2;rho)$ 的简单随机样本. 令 $theta=mu_1-mu_2$，$overline(X)=1/n sum_(i=1)^n X_i$，$overline(Y)=1/n sum_(i=1)^n Y_i$，$hat(theta)=overline(X)-overline(Y)$，则（　）.
#choices([$E(hat(theta))=theta,D(hat(theta))=(sigma_1^2+sigma_2^2)/n$.],[$E(hat(theta))=theta,D(hat(theta))=(sigma_1^2+sigma_2^2-2rho sigma_1 sigma_2)/n$.],[$E(hat(theta))!=theta,D(hat(theta))=(sigma_1^2+sigma_2^2)/n$.],[$E(hat(theta))!=theta,D(hat(theta))=(sigma_1^2+sigma_2^2-2rho sigma_1 sigma_2)/n$.])
]

#ezexam.question[
设总体 $X$ 的概率分布为 $P{X=1}=(1-theta)/2$，$P{X=2}=P{X=3}=(1+theta)/4$. 利用来自总体 $X$ 的样本值 $1,3,2,2,1,3,1,2$，可得 $theta$ 的最大似然估计值为（　）.
#choices([$1/4$.],[$3/8$.],[$1/2$.],[$5/8$.])
]


= 二、填空题：第11—16小题，每小题5分，共30分.

#ezexam.question[
若 $y=cos(e^(-sqrt(x)))$，则 $(dif y)/(dif x)|_(x=1)=$#fillin[].
]

#ezexam.question[
求 $integral_(sqrt(5))^5 x/sqrt(abs(x^2-9))dif x=$#fillin[].
]

#ezexam.question[
设平面区域 $D$ 由曲线段 $y=sqrt(x)sin pi x$（$0<=x<=1$）与 $x$ 轴围成，则 $D$ 绕 $x$ 轴旋转所成的旋转体的体积为#fillin[].
]

#ezexam.question[
差分方程 $Delta y_t=t$ 的通解为 $y_t=$#fillin[].
]

#ezexam.question[
多项式 $f(x)=abs(mat(x,x,1,2x;1,x,2,-1;2,1,x,1;2,-1,1,x))$ 中 $x^3$ 项的系数为#fillin[].
]

#ezexam.question[
甲、乙两个盒子中各装有2个红球和2个白球，先从甲盒中任取一球，观察颜色后放入乙盒中，再从乙盒中任取一球. 令 $X,Y$ 分别表示从甲盒和乙盒中取到的红球个数，则 $X$ 与 $Y$ 的相关系数为#fillin[].
]


= 三、解答题：第17—22小题，共70分. 解答应写出文字说明、证明过程或演算步骤.

#ezexam.question[
（本题满分10分）已知 $lim_(x->0)[a arctan(1/x)+(1+abs(x))^(1/x)]$ 存在，求 $a$ 的值.
]

#ezexam.question[
（本题满分12分）求函数 $f(x,y)=2ln abs(x)+((x-1)^2+y^2)/(2x^2)$ 的极值.
]

#ezexam.question[
（本题满分12分）设有界区域 $D$ 是圆 $x^2+y^2=1$ 和直线 $y=x$ 以及 $x$ 轴在第一象限围成的部分，计算二重积分 $integral.double_D e^((x+y)^2)(x^2-y^2)dif x dif y$.
]

#ezexam.question[
（本题满分12分）设 $n$ 为正整数，$y=y_n(x)$ 是微分方程 $x y'-(n+1)y=0$ 满足条件 $y_n(1)=1/(n(n+1))$ 的解.

（1）求 $y_n(x)$；

（2）求级数 $sum_(n=1)^infinity y_n(x)$ 的收敛域及和函数.
]

#ezexam.question[
（本题满分12分）设矩阵 $A=mat(2,1,0;1,2,0;1,a,b)$ 仅有两个不同的特征值. 若 $A$ 相似于对角矩阵，求 $a,b$ 的值，并求可逆矩阵 $P$，使 $P^(-1)A P$ 为对角矩阵.
]

#ezexam.question[
（本题满分12分）在区间 $(0,2)$ 上随机取一点，将该区间分成两段，较短一段的长度记为 $X$，较长一段的长度记为 $Y$. 令 $Z=Y/X$.

（1）求 $X$ 的概率密度；

（2）求 $Z$ 的概率密度；

（3）求 $E(X/Y)$.
]

