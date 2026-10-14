#import "../template.typ": exam
#show: exam.with(year: 2021, subject: "二")
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
有一圆柱体底面半径与高随时间变化的速率分别为 $2$ cm/s、$-3$ cm/s. 当底面半径为10 cm、高为5 cm时，圆柱体的体积与表面积随时间变化的速率分别为（　）.
#choices([$125pi$ cm³/s、$40pi$ cm²/s.],[$125pi$ cm³/s、$-40pi$ cm²/s.],[$-100pi$ cm³/s、$40pi$ cm²/s.],[$-100pi$ cm³/s、$-40pi$ cm²/s.])
]

#ezexam.question[
设函数 $f(x)=a x-b ln x$（$a>0$）有2个零点，则 $b/a$ 的取值范围是（　）.
#choices([$(e,+infinity)$.],[$(0,e)$.],[$(0,1/e)$.],[$(1/e,+infinity)$.])
]

#ezexam.question[
设函数 $f(x)=sec x$ 在 $x=0$ 处的2次泰勒多项式为 $1+a x+b x^2$，则（　）.
#choices([$a=1,b=-1/2$.],[$a=1,b=1/2$.],[$a=0,b=-1/2$.],[$a=0,b=1/2$.])
]

#ezexam.question[
设函数 $f(x,y)$ 可微，且 $f(x+1,e^x)=x(x+1)^2$，$f(x,x^2)=2x^2 ln x$，则 $dif f(1,1)=$（　）.
#choices([$dif x+dif y$.],[$dif x-dif y$.],[$dif y$.],[$-dif y$.])
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
设3阶矩阵 $A=(bold(alpha)_1,bold(alpha)_2,bold(alpha)_3)$，$B=(bold(beta)_1,bold(beta)_2,bold(beta)_3)$. 若向量组 $bold(alpha)_1,bold(alpha)_2,bold(alpha)_3$ 可以由向量组 $bold(beta)_1,bold(beta)_2,bold(beta)_3$ 线性表示出，则（　）.
#choices([$A bold(x)=bold(0)$ 的解均为 $B bold(x)=bold(0)$ 的解.],[$A^T bold(x)=bold(0)$ 的解均为 $B^T bold(x)=bold(0)$ 的解.],[$B bold(x)=bold(0)$ 的解均为 $A bold(x)=bold(0)$ 的解.],[$B^T bold(x)=bold(0)$ 的解均为 $A^T bold(x)=bold(0)$ 的解.])
]

#ezexam.question[
已知矩阵 $A=mat(1,0,-1;2,-1,1;-1,2,-5)$. 若下三角可逆矩阵 $P$ 和上三角可逆矩阵 $Q$，使得 $P A Q$ 为对角矩阵，则 $P,Q$ 可以分别取（　）.
#choices([$mat(1,0,0;0,1,0;0,0,1),mat(1,0,1;0,1,3;0,0,1)$.],[$mat(1,0,0;2,-1,0;-3,2,1),mat(1,0,0;0,1,0;0,0,1)$.],[$mat(1,0,0;2,-1,0;-3,2,1),mat(1,0,1;0,1,3;0,0,1)$.],[$mat(1,0,0;0,1,0;1,3,1),mat(1,2,-3;0,-1,2;0,0,1)$.])
]


= 二、填空题：第11—16小题，每小题5分，共30分.

#ezexam.question[
求 $integral_(-infinity)^infinity abs(x)3^(-x^2)dif x=$#fillin[].
]

#ezexam.question[
设函数 $y=y(x)$ 由参数方程 $cases(x=2e^t+t+1,y=4(t-1)e^t+t^2)$ 确定，则 $(dif^2 y)/(dif x^2)|_(t=0)=$#fillin[].
]

#ezexam.question[
设函数 $z=z(x,y)$ 由方程 $(x+1)z+y ln z-arctan(2x y)=1$ 确定，则 $(partial z)/(partial x)|_((0,2))=$#fillin[].
]

#ezexam.question[
已知函数 $f(t)=integral_1^(t^2)dif x integral_(sqrt(x))^t sin(x/y)dif y$，则 $f'(pi/2)=$#fillin[].
]

#ezexam.question[
微分方程 $y^((3))-y=0$ 的通解为 $y=$#fillin[].
]

#ezexam.question[
多项式 $f(x)=abs(mat(x,x,1,2x;1,x,2,-1;2,1,x,1;2,-1,1,x))$ 中 $x^3$ 项的系数为#fillin[].
]


= 三、解答题：第17—22小题，共70分. 解答应写出文字说明、证明过程或演算步骤.

#ezexam.question[
（本题满分10分）求极限 $lim_(x->0)[(1+integral_0^x e^(t^2)dif t)/(e^x-1)-1/(sin x)]$.
]

#ezexam.question[
（本题满分12分）已知函数 $f(x)=x abs(x)/(1+x)$，求曲线 $y=f(x)$ 的凹凸区间及渐近线.
]

#ezexam.question[
（本题满分12分）设函数 $f(x)$ 满足 $integral f(x)/sqrt(x)dif x=x^2/6-x+C$，$L$ 为曲线 $y=f(x)$（$4<=x<=9$）. 记 $L$ 的长度为 $s$，$L$ 绕 $x$ 轴旋转所成旋转曲面的面积为 $A$，求 $s,A$.
]

#ezexam.question[
（本题满分12分）设 $y=y(x)$（$x>0$）是微分方程 $x y'-6y=-6$ 满足条件 $y(sqrt(3))=10$ 的解.

（1）求 $y(x)$；

（2）设 $P$ 为曲线 $y=y(x)$ 上一点，记曲线 $y=y(x)$ 在点 $P$ 处的法线在 $y$ 轴上的截距为 $I_P$. 当 $I_P$ 最小时，求点 $P$ 的坐标.
]

#ezexam.question[
（本题满分12分）设平面区域 $D$ 由曲线 $(x^2+y^2)^2=x^2-y^2$（$x>=0,y>=0$）与 $x$ 轴围成，计算二重积分 $integral.double_D x y dif x dif y$.
]

#ezexam.question[
（本题满分12分）设矩阵 $A=mat(2,1,0;1,2,0;1,a,b)$ 仅有两个不同的特征值. 若 $A$ 相似于对角矩阵，求 $a,b$ 的值，并求可逆矩阵 $P$，使 $P^(-1)A P$ 为对角矩阵.
]

