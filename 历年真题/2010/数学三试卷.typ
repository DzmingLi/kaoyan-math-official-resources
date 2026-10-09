#import "../template.typ": exam
#show: exam.with(year: 2010, subject: "三", title: "2010年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)


= 一、选择题：1—8小题，每小题4分，共32分. 在每小题给出的四个选项中，只有一项符合题目要求，把所选项前的字母填在题后的括号内.

#ezexam.question[
若 $lim_(x->0)[1/x-(1/x-a)e^x]=1$，则 $a$ 等于
#choices([0.],[1.],[2.],[3.])
]

#ezexam.question[
设 $y_1,y_2$ 是一阶线性非齐次微分方程 $y'+p(x)y=q(x)$ 的两个特解，若常数 $lambda,mu$ 使 $lambda y_1+mu y_2$ 是该方程的解，$lambda y_1-mu y_2$ 是该方程对应的齐次方程的解，则
#choices([$lambda=1/2,mu=1/2$.],[$lambda=-1/2,mu=-1/2$.],[$lambda=2/3,mu=1/3$.],[$lambda=2/3,mu=2/3$.])
]

#ezexam.question[
设函数 $f(x),g(x)$ 具有二阶导数，且 $g''(x)<0$.若 $g(x_0)=a$ 是 $g(x)$ 的极值，则 $f(g(x))$ 在 $x_0$ 取极大值的一个充分条件是
#choices([$f'(a)<0$.],[$f'(a)>0$.],[$f''(a)<0$.],[$f''(a)>0$.])
]

#ezexam.question[
设 $f(x)=ln^10 x,g(x)=x,h(x)=e^(x/10)$，则当 $x$ 充分大时有
#choices([$g(x)<h(x)<f(x)$.],[$h(x)<g(x)<f(x)$.],[$f(x)<g(x)<h(x)$.],[$g(x)<f(x)<h(x)$.])
]

#ezexam.question[
设向量组Ⅰ：$alpha_1,alpha_2,dots,alpha_r$ 可由向量组Ⅱ：$beta_1,beta_2,dots,beta_s$ 线性表示.下列命题正确的是
#choices([若向量组Ⅰ线性无关，则 $r<=s$.],[若向量组Ⅰ线性相关，则 $r>s$.],[若向量组Ⅱ线性无关，则 $r<=s$.],[若向量组Ⅱ线性相关，则 $r>s$.])
]

#ezexam.question[
设 $A$ 为4阶实对称矩阵，且 $A^2+A=O$.若 $A$ 的秩为3，则 $A$ 相似于
#choices([$mat(1,0,0,0;0,1,0,0;0,0,1,0;0,0,0,0)$.],[$mat(1,0,0,0;0,1,0,0;0,0,-1,0;0,0,0,0)$.],[$mat(1,0,0,0;0,-1,0,0;0,0,-1,0;0,0,0,0)$.],[$mat(-1,0,0,0;0,-1,0,0;0,0,-1,0;0,0,0,0)$.])
]

#ezexam.question[
设随机变量 $X$ 的分布函数 $F(x)=cases(0 quad x<0,1/2 quad 0<=x<1,1-e^(-x) quad x>=1)$，则 $P{X=1}=$
#choices([0.],[$1/2$.],[$1/2-e^(-1)$.],[$1-e^(-1)$.])
]

#ezexam.question[
设 $f_1(x)$ 为标准正态分布的概率密度，$f_2(x)$ 为 $[-1,3]$ 上均匀分布的概率密度，若 $f(x)=cases(a f_1(x) quad x<=0,b f_2(x) quad x>0)(a>0,b>0)$ 为概率密度，则 $a,b$ 应满足
#choices([$2a+3b=4$.],[$3a+2b=4$.],[$a+b=1$.],[$a+b=2$.])
]

= 二、填空题：9—14小题，每小题4分，共24分. 把答案填在题中横线上.

#ezexam.question[
设可导函数 $y=y(x)$ 由方程 $integral_0^(x+y)e^(-t^2)dif t=integral_0^x x sin t^2 dif t$ 确定，则 $(dif y)/(dif x)|_(x=0)=$ #fillin(len: 1.98438em)[].
]

#ezexam.question[
设位于曲线 $y=1/sqrt(x(1+ln^2 x))(e<=x<+infinity)$ 下方、$x$ 轴上方的无界区域为 $G$，则 $G$ 绕 $x$ 轴旋转一周所得空间区域的体积为 #fillin(len: 1.98438em)[].
]

#ezexam.question[
设某商品的收益函数为 $R(p)$，收益弹性为 $1+p^3$，其中 $p$ 为价格，且 $R(1)=1$，则 $R(p)=$ #fillin(len: 1.98438em)[].
]

#ezexam.question[
若曲线 $y=x^3+a x^2+b x+1$ 有拐点 $(-1,0)$，则 $b=$ #fillin(len: 1.98438em)[].
]

#ezexam.question[
设 $A,B$ 为3阶矩阵，且 $|A|=3,|B|=2,|A^(-1)+B|=2$，则 $|A+B^(-1)|=$ #fillin(len: 1.98438em)[].
]

#ezexam.question[
设 $X_1,X_2,dots,X_n$ 是来自总体 $N(mu,sigma^2)(sigma>0)$ 的简单随机样本，记统计量 $T=1/n sum_(i=1)^n X_i^2$，则 $E T=$ #fillin(len: 1.98438em)[].
]

= 三、解答题：15—23小题，共94分. 解答应写出文字说明、证明过程或演算步骤.

#ezexam.question[
（本题满分10分）求极限 $lim_(x->+infinity)(x^(1/x)-1)^(1/(ln x))$.
]

#ezexam.question[
（本题满分10分）计算二重积分 $integral.double_D(x+y)^3 dif x dif y$，其中 $D$ 由曲线 $x=sqrt(1+y^2)$ 与直线 $x+sqrt(2)y=0$ 及 $x-sqrt(2)y=0$ 围成.
]

#ezexam.question[
（本题满分10分）求函数 $u=x y+2y z$ 在约束条件 $x^2+y^2+z^2=10$ 下的最大值和最小值.
]

#ezexam.question[
（本题满分10分）

（Ⅰ）比较 $integral_0^1|ln t[ln(1+t)]^n|dif t$ 与 $integral_0^1 t^n|ln t|dif t(n=1,2,dots)$ 的大小，说明理由；

（Ⅱ）记 $u_n=integral_0^1|ln t[ln(1+t)]^n|dif t(n=1,2,dots)$，求极限 $lim_(n->infinity)u_n$.
]

#ezexam.question[
（本题满分10分）设函数 $f(x)$ 在 $[0,3]$ 上连续，在 $(0,3)$ 内存在二阶导数，且 $2f(0)=integral_0^2 f(x)dif x=f(2)+f(3)$.

（Ⅰ）证明存在 $eta in(0,2)$，使 $f(eta)=f(0)$；

（Ⅱ）证明存在 $xi in(0,3)$，使 $f''(xi)=0$.
]

#ezexam.question[
（本题满分11分）设 $A=mat(lambda,1,1;0,lambda-1,0;1,1,lambda),bold(b)=mat(a;1;1)$.已知线性方程组 $A bold(x)=bold(b)$ 存在2个不同的解，

（Ⅰ）求 $lambda,a$；

（Ⅱ）求方程组 $A bold(x)=bold(b)$ 的通解.
]

#ezexam.question[
（本题满分11分）设 $A=mat(0,-1,4;-1,3,a;4,a,0)$，正交矩阵 $Q$ 使得 $Q^T A Q$ 为对角矩阵.若 $Q$ 的第1列为 $1/sqrt(6)(1,2,1)^T$，求 $a,Q$.
]

#ezexam.question[
（本题满分11分）设二维随机变量 $(X,Y)$ 的概率密度为 $f(x,y)=A e^(-2x^2+2x y-y^2),-infinity<x<+infinity,-infinity<y<+infinity$，求常数 $A$ 及条件概率密度 $f_(Y|X)(y|x)$.
]

#ezexam.question[
（本题满分11分）箱中装有6个球，其中红、白、黑球的个数分别为1，2，3个.现从箱中随机地取出2个球.记 $X$ 为取出的红球个数，$Y$ 为取出的白球个数.

（Ⅰ）求随机变量 $(X,Y)$ 的概率分布；

（Ⅱ）求 $"Cov"(X,Y)$.
]

