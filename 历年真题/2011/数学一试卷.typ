#import "../template.typ": exam
#show: exam.with(year: 2011, subject: "一", title: "2011年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)


= 一、选择题：1—8小题，每小题4分，共32分. 在每小题给出的四个选项中，只有一项符合题目要求，把所选项前的字母填在题后的括号内.

#ezexam.question[
曲线 $y=(x-1)(x-2)^2(x-3)^3(x-4)^4$ 的拐点是
#choices([$(1,0)$.],[$(2,0)$.],[$(3,0)$.],[$(4,0)$.])
]

#ezexam.question[
设数列 ${a_n}$ 单调减少，$lim_(n->infinity)a_n=0$，$S_n=sum_(k=1)^n a_k(n=1,2,dots)$ 无界，则幂级数 $sum_(n=1)^infinity a_n(x-1)^n$ 的收敛域为
#choices([$(-1,1]$.],[$[-1,1)$.],[$[0,2)$.],[$(0,2]$.])
]

#ezexam.question[
设函数 $f(x)$ 具有二阶连续导数，且 $f(x)>0,f'(0)=0$，则函数 $z=f(x)ln f(y)$ 在点 $(0,0)$ 处取得极小值的一个充分条件是
#choices([$f(0)>1,f''(0)>0$.],[$f(0)>1,f''(0)<0$.],[$f(0)<1,f''(0)>0$.],[$f(0)<1,f''(0)<0$.])
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
设 $A=(alpha_1,alpha_2,alpha_3,alpha_4)$ 是4阶矩阵，$A^*$ 为 $A$ 的伴随矩阵.若 $(1,0,1,0)^T$ 是方程组 $A x=0$ 的一个基础解系，则 $A^* x=0$ 的基础解系可为
#choices([$alpha_1,alpha_3$.],[$alpha_1,alpha_2$.],[$alpha_1,alpha_2,alpha_3$.],[$alpha_2,alpha_3,alpha_4$.])
]

#ezexam.question[
设 $F_1(x)$ 与 $F_2(x)$ 为两个分布函数，其相应的概率密度 $f_1(x)$ 与 $f_2(x)$ 是连续函数，则必为概率密度的是
#choices([$f_1(x)f_2(x)$.],[$2f_2(x)F_1(x)$.],[$f_1(x)F_2(x)$.],[$f_1(x)F_2(x)+f_2(x)F_1(x)$.])
]

#ezexam.question[
设随机变量 $X$ 与 $Y$ 相互独立，且 $E X$ 与 $E Y$ 存在，记 $U=max{X,Y},V=min{X,Y}$，则 $E(U V)=$
#choices([$E U dot E V$.],[$E X dot E Y$.],[$E U dot E Y$.],[$E X dot E V$.])
]

= 二、填空题：9—14小题，每小题4分，共24分. 把答案填在题中横线上.

#ezexam.question[
曲线 $y=integral_0^x tan t dif t(0<=x<=pi/4)$ 的弧长 $s=$ #fillin(len: 1.98438em)[].
]

#ezexam.question[
微分方程 $y'+y=e^(-x)cos x$ 满足条件 $y(0)=0$ 的解为 $y=$ #fillin(len: 1.98438em)[].
]

#ezexam.question[
设函数 $F(x,y)=integral_0^(x y)(sin t)/(1+t^2)dif t$，则 $((partial^2 F)/(partial x^2))|_((x=0,y=2))=$ #fillin(len: 1.98438em)[].
]

#ezexam.question[
设 $L$ 是柱面 $x^2+y^2=1$ 与平面 $z=x+y$ 的交线，从 $z$ 轴正向往 $z$ 轴负向看去为逆时针方向，则曲线积分 $integral.cont_L x z dif x+x dif y+y^2/2 dif z=$ #fillin(len: 1.98438em)[].
]

#ezexam.question[
若二次曲面的方程 $x^2+3y^2+z^2+2a x y+2x z+2y z=4$ 经正交变换化为 $y_1^2+4z_1^2=4$，则 $a=$ #fillin(len: 1.98438em)[].
]

#ezexam.question[
设二维随机变量 $(X,Y)$ 服从正态分布 $N(mu,mu;sigma^2,sigma^2;0)$，则 $E(X Y^2)=$ #fillin(len: 1.98438em)[].
]

= 三、解答题：15—23小题，共94分. 解答应写出文字说明、证明过程或演算步骤.

#ezexam.question[
（本题满分10分）求极限 $lim_(x->0)[(ln(1+x))/x]^(1/(e^x-1))$.
]

#ezexam.question[
（本题满分9分）设函数 $z=f(x y,y g(x))$，其中函数 $f$ 具有二阶连续偏导数，函数 $g(x)$ 可导，且在 $x=1$ 处取得极值 $g(1)=1$.求 $((partial^2 z)/(partial x partial y))|_((x=1,y=1))$.
]

#ezexam.question[
（本题满分10分）求方程 $k arctan x-x=0$ 不同实根的个数，其中 $k$ 为参数.
]

#ezexam.question[
（本题满分10分）
（Ⅰ）证明：对任意的正整数 $n$，都有 $1/(n+1)<ln(1+1/n)<1/n$ 成立.
（Ⅱ）设 $a_n=1+1/2+dots+1/n-ln n(n=1,2,dots)$，证明数列 ${a_n}$ 收敛.
]

#ezexam.question[
（本题满分11分）已知函数 $f(x,y)$ 具有二阶连续偏导数，且 $f(1,y)=0,f(x,1)=0,integral.double_D f(x,y)dif x dif y=a$，其中 $D={(x,y)|0<=x<=1,0<=y<=1}$.计算二重积分 $I=integral.double_D x y f''_(x y)(x,y)dif x dif y$.
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
（本题满分11分）设 $X_1,X_2,dots,X_n$ 为来自正态总体 $N(mu_0,sigma^2)$ 的简单随机样本，其中 $mu_0$ 已知，$sigma^2>0$ 未知，$overline(X)$ 和 $S^2$ 分别表示样本均值和样本方差.
（Ⅰ）求参数 $sigma^2$ 的最大似然估计 $hat(sigma)^2$；
（Ⅱ）计算 $E hat(sigma)^2$ 和 $D hat(sigma)^2$.
]

