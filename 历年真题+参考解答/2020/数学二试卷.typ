#import "../template.typ": exam
#show: exam.with(year: 2020, subject: "二")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices.with(r-gap: 1.3em)
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)


= 一、选择题：第1—8小题，每小题4分，共32分. 下列每小题给出的四个选项中，只有一个选项是符合题目要求的.

#ezexam.question[
当 $x->0^+$ 时，下列无穷小量中最高阶的是（　）.
#choices([$integral_0^x(e^(t^2)-1)dif t$.],[$integral_0^x ln(1+sqrt(t^3))dif t$.],[$integral_0^(sin x)sin t^2 dif t$.],[$integral_0^(1-cos x)sqrt(sin^3 t)dif t$.])
]

#ezexam.question[
函数 $f(x)=e^(1/(e^x-1))ln abs(1+x)/((e^x-1)(x-2))$ 的第二类间断点的个数为（　）.
#choices([$1$.],[$2$.],[$3$.],[$4$.])
]

#ezexam.question[
求 $integral_0^1 (arcsin sqrt(x))/sqrt(x(1-x))dif x=$（　）.
#choices([$pi^2/4$.],[$pi^2/8$.],[$pi/4$.],[$pi/8$.])
]

#ezexam.question[
已知函数 $f(x)=x^2 ln(1-x)$，当 $n>=3$ 时，$f^((n))(0)=$（　）.
#choices([$-n!/(n-2)$.],[$n!/(n-2)$.],[$-(n-2)!/n$.],[$(n-2)!/n$.])
]

#ezexam.question[
关于函数 $f(x,y)=cases(x y & x y!=0,x & y=0,y & x=0)$，给出以下结论：

① $f_x(0,0)=1$；② $f_(x y)(0,0)=1$；③ $lim_((x,y)->(0,0))f(x,y)=0$；④ $lim_(y->0)lim_(x->0)f(x,y)=0$. 其中正确的个数为（　）.
#choices([$4$.],[$3$.],[$2$.],[$1$.])
]

#ezexam.question[
设函数 $f(x)$ 在区间 $[-2,2]$ 上可导，且 $f'(x)>f(x)>0$，则（　）.
#choices([$f(-2)/f(-1)>1$.],[$f(0)/f(-1)>e$.],[$f(1)/f(-1)<e^2$.],[$f(2)/f(-1)<e^3$.])
]

#ezexam.question[
设4阶矩阵 $A=(a_(i j))$ 不可逆，$a_(1 2)$ 的代数余子式 $A_(1 2)!=0$，$bold(alpha)_1,bold(alpha)_2,bold(alpha)_3,bold(alpha)_4$ 为矩阵 $A$ 的列向量组，$A^*$ 为 $A$ 的伴随矩阵，则方程组 $A^* bold(x)=bold(0)$ 的通解为（　）.
#choices([$bold(x)=k_1 bold(alpha)_1+k_2 bold(alpha)_2+k_3 bold(alpha)_3$，其中 $k_1,k_2,k_3$ 为任意常数.],[$bold(x)=k_1 bold(alpha)_1+k_2 bold(alpha)_2+k_3 bold(alpha)_4$，其中 $k_1,k_2,k_3$ 为任意常数.],[$bold(x)=k_1 bold(alpha)_1+k_2 bold(alpha)_3+k_3 bold(alpha)_4$，其中 $k_1,k_2,k_3$ 为任意常数.],[$bold(x)=k_1 bold(alpha)_2+k_2 bold(alpha)_3+k_3 bold(alpha)_4$，其中 $k_1,k_2,k_3$ 为任意常数.])
]

#ezexam.question[
设 $A$ 为3阶矩阵，$bold(alpha)_1,bold(alpha)_2$ 为 $A$ 的属于特征值1的线性无关的特征向量，$bold(alpha)_3$ 为 $A$ 的属于特征值−1的特征向量，则满足 $P^(-1)A P=op("diag")(1,-1,1)$ 的可逆矩阵 $P$ 可为（　）.
#choices([$(bold(alpha)_1+bold(alpha)_3,bold(alpha)_2,-bold(alpha)_3)$.],[$(bold(alpha)_1+bold(alpha)_2,bold(alpha)_2,-bold(alpha)_3)$.],[$(bold(alpha)_1+bold(alpha)_3,-bold(alpha)_3,bold(alpha)_2)$.],[$(bold(alpha)_1+bold(alpha)_2,-bold(alpha)_3,bold(alpha)_2)$.])
]


= 二、填空题：第9—14小题，每小题4分，共24分.

#ezexam.question[
设 $cases(x=sqrt(t^2+1),y=ln(t+sqrt(t^2+1)))$，则 $(dif^2 y)/(dif x^2)|_(t=1)=$#fillin[].
]

#ezexam.question[
求 $integral_0^1 dif y integral_(sqrt(y))^1 sqrt(x^3+1)dif x=$#fillin[].
]

#ezexam.question[
设 $z=arctan[x y+sin(x+y)]$，则 $dif z|_((0,pi))=$#fillin[].
]

#ezexam.question[
斜边长为 $2a$ 的等腰直角三角形平板铅直地沉没在水中，且斜边与水面相齐. 记重力加速度为 $g$，水的密度为 $rho$，则该平板一侧所受的水压力为#fillin[].
]

#ezexam.question[
设 $y=y(x)$ 满足 $y''+2y'+y=0$，且 $y(0)=0,y'(0)=1$，则 $integral_0^infinity y(x)dif x=$#fillin[].
]

#ezexam.question[
行列式 $abs(mat(a,0,-1,1;0,a,1,-1;-1,1,a,0;1,-1,0,a))=$#fillin[].
]


= 三、解答题：第15—23小题，共94分. 解答应写出文字说明、证明过程或演算步骤.

#ezexam.question[
（本题满分10分）求曲线 $y=x^(1+x)/(1+x)^x$（$x>0$）的斜渐近线方程.
]

#ezexam.question[
（本题满分10分）已知函数 $f(x)$ 连续且 $lim_(x->0)f(x)/x=1$，$g(x)=integral_0^1 f(x t)dif t$，求 $g'(x)$ 并证明 $g'(x)$ 在 $x=0$ 处连续.
]

#ezexam.question[
（本题满分10分）求函数 $f(x,y)=x^3+8y^3-x y$ 的极值.
]

#ezexam.question[
（本题满分10分）设函数 $f(x)$ 的定义域为 $(0,+infinity)$ 且满足 $2f(x)+x^2 f(1/x)=(x^2+2x)/sqrt(1+x^2)$. 求 $f(x)$，并求由曲线 $y=f(x),y=1/2,y=sqrt(3)/2$ 及 $y$ 轴所围图形绕 $x$ 轴旋转所得旋转体的体积.
]

#ezexam.question[
（本题满分10分）设平面区域 $D$ 由直线 $x=1,x=2,y=x$ 与 $x$ 轴围成，计算 $integral.double_D sqrt(x^2+y^2)/x dif x dif y$.
]

#ezexam.question[
（本题满分11分）设函数 $f(x)=integral_1^x e^(t^2)dif t$.

（1）证明：存在 $xi in (1,2)$，使得 $f(xi)=(2-xi)e^(xi^2)$；

（2）证明：存在 $eta in (1,2)$，使得 $f(2)=ln 2 dot eta e^(eta^2)$.
]

#ezexam.question[
（本题满分11分）设函数 $f(x)$ 可导，且 $f'(x)>0$. 曲线 $y=f(x)$（$x>=0$）经过坐标原点，其上任意一点 $M$ 处的切线与 $x$ 轴交于 $T$，又 $M P$ 垂直 $x$ 轴于点 $P$. 已知曲线 $y=f(x)$、直线 $M P$ 以及 $x$ 轴所围图形的面积与 $triangle M T P$ 的面积之比恒为 $3:2$，求满足上述条件的曲线的方程.
]

#ezexam.question[
（本题满分11分）设二次型 $f(x_1,x_2,x_3)=x_1^2+x_2^2+x_3^2+2a x_1 x_2+2a x_1 x_3+2a x_2 x_3$ 经可逆线性变换 $mat(x_1;x_2;x_3)=P mat(y_1;y_2;y_3)$ 化为二次型 $g(y_1,y_2,y_3)=y_1^2+y_2^2+4y_3^2+2y_1 y_2$.

（1）求 $a$ 的值；

（2）求可逆矩阵 $P$.
]

#ezexam.question[
（本题满分11分）设 $A$ 为2阶矩阵，$P=(bold(alpha),A bold(alpha))$，其中 $bold(alpha)$ 是非零向量且不是 $A$ 的特征向量.

（1）证明 $P$ 为可逆矩阵；

（2）若 $A^2 bold(alpha)+A bold(alpha)-6bold(alpha)=bold(0)$，求 $P^(-1)A P$，并判断 $A$ 是否相似于对角矩阵.
]

