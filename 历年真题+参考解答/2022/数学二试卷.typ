#import "../template.typ": exam
#show: exam.with(year: 2022, subject: "二")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices.with(r-gap: 1.3em)
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)


= 一、选择题：第1—10小题，每小题5分，共50分. 下列每小题给出的四个选项中，只有一个选项是符合题目要求的.

#ezexam.question[
当 $x->0$ 时，$alpha(x),beta(x)$ 是非零无穷小量，给出以下四个命题：

① 若 $alpha(x)~beta(x)$，则 $alpha^2(x)~beta^2(x)$；

② 若 $alpha^2(x)~beta^2(x)$，则 $alpha(x)~beta(x)$；

③ 若 $alpha(x)~beta(x)$，则 $alpha(x)-beta(x)=o(alpha(x))$；

④ 若 $alpha(x)-beta(x)=o(alpha(x))$，则 $alpha(x)~beta(x)$. 其中所有真命题的序号是（　）.
#choices([①③.],[①④.],[①③④.],[②③④.])
]

#ezexam.question[
求 $integral_0^2 dif y integral_y^2 y/sqrt(1+x^3)dif x=$（　）.
#choices([$sqrt(2)/6$.],[$1/3$.],[$sqrt(2)/3$.],[$2/3$.])
]

#ezexam.question[
设函数 $f(x)$ 在 $x=x_0$ 处具有2阶导数，则（　）.
#choices([当 $f(x)$ 在 $x_0$ 的某邻域内单调增加时，$f'(x_0)>0$.],[当 $f'(x_0)>0$ 时，$f(x)$ 在 $x_0$ 的某邻域内单调增加.],[当 $f(x)$ 在 $x_0$ 的某邻域内是凹函数时，$f''(x_0)>0$.],[当 $f''(x_0)>0$ 时，$f(x)$ 在 $x_0$ 的某邻域内是凹函数.])
]

#ezexam.question[
设函数 $f(t)$ 连续，令 $F(x,y)=integral_0^(x-y)(x-y-t)f(t)dif t$，则（　）.
#choices([$F_x=F_y,F_(x x)=F_(y y)$.],[$F_x=F_y,F_(x x)=-F_(y y)$.],[$F_x=-F_y,F_(x x)=F_(y y)$.],[$F_x=-F_y,F_(x x)=-F_(y y)$.])
]

#ezexam.question[
设 $p$ 为常数，若反常积分 $integral_0^1 (ln x)/(x^p(1-x)^(1-p))dif x$ 收敛，则 $p$ 的取值范围是（　）.
#choices([$(-1,1)$.],[$(-1,2)$.],[$(-infinity,1)$.],[$(-infinity,2)$.])
]

#ezexam.question[
已知数列 $x_n$，其中 $-pi/2<=x_n<=pi/2$，则（　）.
#choices([当 $lim cos(sin x_n)$ 存在时，$lim x_n$ 存在.],[当 $lim sin(cos x_n)$ 存在时，$lim x_n$ 存在.],[当 $lim cos(sin x_n)$ 存在时，$lim sin x_n$ 存在，但 $lim x_n$ 不一定存在.],[当 $lim sin(cos x_n)$ 存在时，$lim cos x_n$ 存在，但 $lim x_n$ 不一定存在.])
]

#ezexam.question[
已知 $I_1=integral_0^1 x/(2(1+cos x))dif x$，$I_2=integral_0^1 ln(1+x)/(1+cos x)dif x$，$I_3=integral_0^1 2x/(1+sin x)dif x$，则（　）.
#choices([$I_1<I_2<I_3$.],[$I_2<I_1<I_3$.],[$I_1<I_3<I_2$.],[$I_3<I_2<I_1$.])
]

#ezexam.question[
设 $A$ 为3阶矩阵，$Lambda=op("diag")(1,-1,0)$，则 $A$ 的特征值为1、−1、0的充分必要条件是（　）.
#choices([存在可逆矩阵 $P,Q$，使得 $A=P Lambda Q$.],[存在可逆矩阵 $P$，使得 $A=P Lambda P^(-1)$.],[存在正交矩阵 $Q$，使得 $A=Q Lambda Q^(-1)$.],[存在可逆矩阵 $P$，使得 $A=P Lambda P^T$.])
]

#ezexam.question[
设矩阵 $A=mat(1,1,1;1,a,a^2;1,b,b^2)$，$bold(b)=(1,2,4)^T$，则线性方程组 $A bold(x)=bold(b)$ 解的情况为（　）.
#choices([无解.],[有解.],[有无穷多解或无解.],[有唯一解或无解.])
]

#ezexam.question[
设 $bold(alpha)_1=(lambda,1,1)^T$，$bold(alpha)_2=(1,lambda,1)^T$，$bold(alpha)_3=(1,1,lambda)^T$，$bold(alpha)_4=(1,lambda,lambda^2)^T$. 若向量组 $bold(alpha)_1,bold(alpha)_2,bold(alpha)_3$ 与 $bold(alpha)_1,bold(alpha)_2,bold(alpha)_4$ 等价，则 $lambda$ 的取值范围是（　）.
#choices([${0,1}$.],[${lambda | lambda in bold(R),lambda!=-2}$.],[${lambda | lambda in bold(R),lambda!=-1,lambda!=-2}$.],[${lambda | lambda in bold(R),lambda!=-1}$.])
]


= 二、填空题：第11—16小题，每小题5分，共30分.

#ezexam.question[
求 $lim_(x->0)((1+e^x)/2)^(cot x)=$#fillin[].
]

#ezexam.question[
已知函数 $y=y(x)$ 由方程 $x^2+x y+y^3=3$ 确定，则 $y''(1)=$#fillin[].
]

#ezexam.question[
求 $integral_0^1 (2x+3)/(x^2-x+1)dif x=$#fillin[].
]

#ezexam.question[
微分方程 $y^((3))-2y''+5y'=0$ 的通解 $y(x)=$#fillin[].
]

#ezexam.question[
已知曲线 $L$ 的极坐标方程为 $r=sin 3theta$（$0<=theta<=pi/3$），则 $L$ 围成有界区域的面积为#fillin[].
]

#ezexam.question[
设 $A$ 为3阶矩阵，交换 $A$ 的第2行和第3行，再将第2列的−1倍加到第1列，得到矩阵 $mat(-2,1,-1;1,-1,0;-1,0,0)$，则 $A^(-1)$ 的迹 $op("tr")(A^(-1))=$#fillin[].
]


= 三、解答题：第17—22小题，共70分. 解答应写出文字说明、证明过程或演算步骤.

#ezexam.question[
（本题满分10分）已知函数 $f(x)$ 在 $x=1$ 处可导，且 $lim_(x->0)(f(e^(x^2))-3f(1+sin^2 x))/x^2=2$，求 $f'(1)$.
]

#ezexam.question[
（本题满分12分）设函数 $y(x)$ 是微分方程 $2x y'-4y=2ln x-1$ 满足条件 $y(1)=1/4$ 的解，求曲线 $y=y(x)$（$1<=x<=e$）的弧长.
]

#ezexam.question[
（本题满分12分）已知平面区域 $D={(x,y) | y-2<=x<=sqrt(4-y^2),0<=y<=2}$，计算 $I=integral.double_D (x-y)^2/(x^2+y^2)dif x dif y$.
]

#ezexam.question[
（本题满分12分）已知可微函数 $f(u,v)$ 满足 $(partial f)/(partial u)-(partial f)/(partial v)=2(u-v)e^(-(u+v))$，且 $f(u,0)=u^2 e^(-u)$.

（1）记 $g(x,y)=f(x,y-x)$，求 $(partial g)/(partial x)$；

（2）求 $f(u,v)$ 的表达式和极值.
]

#ezexam.question[
（本题满分12分）设函数 $f(x)$ 在 $(-infinity,+infinity)$ 内具有2阶连续导数. 证明：$f''(x)>=0$ 的充分必要条件是：对不同的实数 $a,b$，$f((a+b)/2)<=1/(b-a)integral_a^b f(x)dif x$.
]

#ezexam.question[
（本题满分12分）已知二次型 $f(x_1,x_2,x_3)=3x_1^2+4x_2^2+3x_3^2+2x_1 x_3$.

（1）求正交变换 $bold(x)=Q bold(y)$ 将二次型化为标准形；

（2）证明：$min_(bold(x)!=bold(0))f(bold(x))/(bold(x)^T bold(x))=2$.
]

