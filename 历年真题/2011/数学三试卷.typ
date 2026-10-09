#import "../template.typ": exam
#show: exam.with(year: 2011, subject: "三", title: "2011年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)


= 一、选择题：1—8小题，每小题4分，共32分. 在每小题给出的四个选项中，只有一项符合题目要求，把所选项前的字母填在题后的括号内.

#ezexam.question[
已知当 $x->0$ 时，函数 $f(x)=3sin x-sin 3x$ 与 $c x^k$ 是等价无穷小量，则
#choices([$k=1,c=4$.],[$k=1,c=-4$.],[$k=3,c=4$.],[$k=3,c=-4$.])
]

#ezexam.question[
设函数 $f(x)$ 在 $x=0$ 处可导，且 $f(0)=0$，则 $lim_(x->0)(x^2 f(x)-2f(x^3))/x^3=$
#choices([$-2f'(0)$.],[$-f'(0)$.],[$f'(0)$.],[0.])
]

#ezexam.question[
设 ${u_n}$ 是数列，则下列命题正确的是
#choices([若 $sum_(n=1)^infinity u_n$ 收敛，则 $sum_(n=1)^infinity(u_(2n-1)+u_(2n))$ 收敛.],[若 $sum_(n=1)^infinity(u_(2n-1)+u_(2n))$ 收敛，则 $sum_(n=1)^infinity u_n$ 收敛.],[若 $sum_(n=1)^infinity u_n$ 收敛，则 $sum_(n=1)^infinity(u_(2n-1)-u_(2n))$ 收敛.],[若 $sum_(n=1)^infinity(u_(2n-1)-u_(2n))$ 收敛，则 $sum_(n=1)^infinity u_n$ 收敛.])
]

#ezexam.question[
设 $I=integral_0^(pi/4)ln(sin x)dif x,J=integral_0^(pi/4)ln(cot x)dif x,K=integral_0^(pi/4)ln(cos x)dif x$，则 $I,J,K$ 的大小关系为
#choices([$I<J<K$.],[$I<K<J$.],[$J<I<K$.],[$K<I<J$.])
]

#ezexam.question[
设 $A$ 为3阶矩阵，将 $A$ 的第2列加到第1列得矩阵 $B$，再交换 $B$ 的第2行与第3行得单位矩阵.记
$ P_1=mat(1,0,0;1,1,0;0,0,1),quad P_2=mat(1,0,0;0,0,1;0,1,0), $
则 $A=$
#choices([$P_1 P_2$.],[$P_1^(-1)P_2$.],[$P_2 P_1$.],[$P_2 P_1^(-1)$.])
]

#ezexam.question[
设 $A$ 为 $4 times 3$ 矩阵，$eta_1,eta_2,eta_3$ 是非齐次线性方程组 $A x=beta$ 的3个线性无关的解，$k_1,k_2$ 为任意常数，则 $A x=beta$ 的通解为
#choices([$(eta_2+eta_3)/2+k_1(eta_2-eta_1)$.],[$(eta_2-eta_3)/2+k_1(eta_2-eta_1)$.],[$(eta_2+eta_3)/2+k_1(eta_2-eta_1)+k_2(eta_3-eta_1)$.],[$(eta_2-eta_3)/2+k_1(eta_2-eta_1)+k_2(eta_3-eta_1)$.])
]

#ezexam.question[
设 $F_1(x)$ 与 $F_2(x)$ 为两个分布函数，其相应的概率密度 $f_1(x)$ 与 $f_2(x)$ 是连续函数，则必为概率密度的是
#choices([$f_1(x)f_2(x)$.],[$2f_2(x)F_1(x)$.],[$f_1(x)F_2(x)$.],[$f_1(x)F_2(x)+f_2(x)F_1(x)$.])
]

#ezexam.question[
设总体 $X$ 服从参数为 $lambda(lambda>0)$ 的泊松分布，$X_1,X_2,dots,X_n(n>=2)$ 为来自该总体的简单随机样本，则对于统计量 $T_1=1/n sum_(i=1)^n X_i$ 和 $T_2=1/(n-1)sum_(i=1)^(n-1)X_i+1/n X_n$，有
#choices([$E T_1>E T_2,D T_1>D T_2$.],[$E T_1>E T_2,D T_1<D T_2$.],[$E T_1<E T_2,D T_1>D T_2$.],[$E T_1<E T_2,D T_1<D T_2$.])
]

= 二、填空题：9—14小题，每小题4分，共24分. 把答案填在题中横线上.

#ezexam.question[
设 $f(x)=lim_(t->0)x(1+3t)^(x/t)$，则 $f'(x)=$ #fillin(len: 1.98438em)[].
]

#ezexam.question[
设函数 $z=(1+x/y)^(x/y)$，则 $dif z|_((1,1))=$ #fillin(len: 1.98438em)[].
]

#ezexam.question[
曲线 $tan(x+y+pi/4)=e^y$ 在点 $(0,0)$ 处的切线方程为 #fillin(len: 1.98438em)[].
]

#ezexam.question[
曲线 $y=sqrt(x^2-1)$，直线 $x=2$ 及 $x$ 轴所围的平面图形绕 $x$ 轴旋转所成的旋转体的体积为 #fillin(len: 1.98438em)[].
]

#ezexam.question[
设二次型 $f(x_1,x_2,x_3)=x^T A x$ 的秩为1，$A$ 的各行元素之和为3，则 $f$ 在正交变换 $x=Q y$ 下的标准形为 #fillin(len: 1.98438em)[].
]

#ezexam.question[
设二维随机变量 $(X,Y)$ 服从正态分布 $N(mu,mu;sigma^2,sigma^2;0)$，则 $E(X Y^2)=$ #fillin(len: 1.98438em)[].
]

= 三、解答题：15—23小题，共94分. 解答应写出文字说明、证明过程或演算步骤.

#ezexam.question[
（本题满分10分）求极限 $lim_(x->0)(sqrt(1+2sin x)-x-1)/(x ln(1+x))$.
]

#ezexam.question[
（本题满分10分）已知函数 $f(u,v)$ 具有二阶连续偏导数，$f(1,1)=2$ 是 $f(u,v)$ 的极值，$z=f(x+y,f(x,y))$，求 $((partial^2 z)/(partial x partial y))|_((1,1))$.
]

#ezexam.question[
（本题满分10分）求不定积分 $integral(arcsin sqrt(x)+ln x)/sqrt(x)dif x$.
]

#ezexam.question[
（本题满分10分）证明方程 $4arctan x-x+(4pi)/3-sqrt(3)=0$ 恰有两个实根.
]

#ezexam.question[
（本题满分10分）设函数 $f(x)$ 在区间 $[0,1]$ 上具有连续导数，$f(0)=1$，且满足
$ integral.double_(D_t)f'(x+y)dif x dif y=integral.double_(D_t)f(t)dif x dif y, $
其中 $D_t={(x,y)|0<=y<=t-x,0<=x<=t}(0<t<=1)$，求 $f(x)$ 的表达式.
]

#ezexam.question[
（本题满分11分）设向量组 $alpha_1=(1,0,1)^T,alpha_2=(0,1,1)^T,alpha_3=(1,3,5)^T$ 不能由向量组 $beta_1=(1,1,1)^T,beta_2=(1,2,3)^T,beta_3=(3,4,a)^T$ 线性表示.
（Ⅰ）求 $a$ 的值；
（Ⅱ）将 $beta_1,beta_2,beta_3$ 用 $alpha_1,alpha_2,alpha_3$ 线性表示.
]

#ezexam.question[
（本题满分11分）设 $A$ 为3阶实对称矩阵，$A$ 的秩为2，且
$ A mat(1,1;0,0;-1,1)=mat(-1,1;0,0;1,1). $
（Ⅰ）求 $A$ 的所有特征值与特征向量；
（Ⅱ）求矩阵 $A$.
]

#ezexam.question[
（本题满分11分）设随机变量 $X$ 与 $Y$ 的概率分布分别为
#table(columns:3,[$X$],[0],[1],[$P$],[$1/3$],[$2/3$])
#table(columns:4,[$Y$],[−1],[0],[1],[$P$],[$1/3$],[$1/3$],[$1/3$])
且 $P{X^2=Y^2}=1$.
（Ⅰ）求二维随机变量 $(X,Y)$ 的概率分布；
（Ⅱ）求 $Z=X Y$ 的概率分布；
（Ⅲ）求 $X$ 与 $Y$ 的相关系数 $rho_(X Y)$.
]

#ezexam.question[
（本题满分11分）设二维随机变量 $(X,Y)$ 服从区域 $G$ 上的均匀分布，其中 $G$ 是由 $x-y=0,x+y=2$ 与 $y=0$ 所围成的三角形区域.
（Ⅰ）求 $X$ 的概率密度 $f_X(x)$；
（Ⅱ）求条件概率密度 $f_(X|Y)(x|y)$.
]

