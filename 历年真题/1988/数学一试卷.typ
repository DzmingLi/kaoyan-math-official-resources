#import "../template.typ": exam
#show: exam.with(year: 1988, subject: "一", title: "1988年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)

= 一、填空题（本题共4小题，每小题3分，满分12分. 把答案填在题后横线上.）

#ezexam.question(label: n => [（1）])[
若 $f(t)=lim_(x->infinity)t(1+1/x)^(2t x)$，则 $f'(t)=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [（2）])[
设 $f(x)$ 连续且 $integral_0^(x^3-1)f(t)dif t=x$，则 $f(7)=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [（3）])[
设 $f(x)$ 是周期为2的周期函数，它在区间 $(-1,1]$ 上定义为
$ f(x)=cases(2 & -1<x<=0,x^3 & 0<x<=1), $
则 $f(x)$ 的傅里叶（Fourier）级数在 $x=1$ 处收敛于 #fillin(len: 4em)[].
]

#ezexam.question(label: n => [（4）])[
设4阶矩阵 $A=(alpha,gamma_2,gamma_3,gamma_4),B=(beta,gamma_2,gamma_3,gamma_4)$，其中 $alpha,beta,gamma_2,gamma_3,gamma_4$ 均为4维列向量，且已知行列式 $abs(A)=4,abs(B)=1$，则行列式 $abs(A+B)=$ #fillin(len: 4em)[].
]

= 二、选择题（本题共5小题，每小题3分，满分15分. 每小题给出的四个选项中，只有一项符合题目要求，把所选项前的字母填在题后的括号内.）

#ezexam.question(label: n => [（1）])[
设 $f(x)$ 可导且 $f'(x_0)=1/2$，则 $Delta x->0$ 时，$f(x)$ 在 $x_0$ 处的微分 $dif y$ 是（　）.
#choices([与 $Delta x$ 等价的无穷小.],[与 $Delta x$ 同阶的无穷小.],[与 $Delta x$ 低阶的无穷小.],[比 $Delta x$ 高阶的无穷小.])
]

#ezexam.question(label: n => [（2）])[
设 $y=f(x)$ 是方程 $y''-2y'+4y=0$ 的一个解且 $f(x_0)>0,f'(x_0)=0$，则函数 $f(x)$ 在点 $x_0$ 处（　）.
#choices([取得极大值.],[取得极小值.],[某邻域内单调增加.],[某邻域内单调减少.])
]

#ezexam.question(label: n => [（3）])[
设空间区域 $Omega_1: x^2+y^2+z^2<=R^2,z>=0,Omega_2:x^2+y^2+z^2<=R^2,x>=0,y>=0,z>=0$，则（　）.
#choices([$integral.triple_(Omega_1)x dif V=4integral.triple_(Omega_2)x dif V$],[$integral.triple_(Omega_1)y dif V=4integral.triple_(Omega_2)y dif V$],[$integral.triple_(Omega_1)z dif V=4integral.triple_(Omega_2)z dif V$],[$integral.triple_(Omega_1)x y z dif V=4integral.triple_(Omega_2)x y z dif V$])
]

#ezexam.question(label: n => [（4）])[
设幂级数 $sum_(n=1)^infinity a_n(x-1)^n$ 在 $x=-1$ 处收敛，则此级数在 $x=2$ 处（　）.
#choices([条件收敛.],[绝对收敛.],[发散.],[收敛性不能确定.])
]

#ezexam.question(label: n => [（5）])[
$n$ 维向量 $alpha_1,alpha_2,dots,alpha_s (3<=s<=n)$ 线性无关的充要条件是：（　）.
#choices([存在一组不全为零的数 $k_1,k_2,dots,k_s$，使 $k_1 alpha_1+k_2 alpha_2+dots+k_s alpha_s!=0$.],[$alpha_1,alpha_2,dots,alpha_s$ 中任意两个向量均线性无关.],[$alpha_1,alpha_2,dots,alpha_s$ 中存在一个向量不能用其余向量线性表示.],[$alpha_1,alpha_2,dots,alpha_s$ 中任意一个向量都不能用其余向量线性表示.])
]

#ezexam.question(label: n => [三、])[
（本题满分5分）

设 $f(x)=e^(x^2),f(phi(x))=1-x$ 且 $phi(x)>=0$，求 $phi(x)$ 及其定义域.
]

#ezexam.question(label: n => [四、])[
（本题满分9分）

设函数 $f(x)$ 在区间 $[a,b]$ 上连续，且在 $(a,b)$ 内有 $f'(x)>0$，证明：在 $(a,b)$ 内存在唯一的 $xi$，使曲线 $y=f(x)$ 与两直线 $y=f(xi),x=a$ 所围平面图形面积 $S_1$ 是曲线 $y=f(x)$ 与两直线 $y=f(xi),x=b$ 所围平面图形面积 $S_2$ 的3倍.
]

#ezexam.question(label: n => [五、])[
（本题满分6分）

设 $u=y f(x/y)+x g(y/x)$，其中函数 $f,g$ 具有二阶连续导数，求 $x(partial^2 u)/(partial x^2)+y(partial^2 u)/(partial x partial y)$.
]

#ezexam.question(label: n => [六、])[
（本题满分5分）

设 $Sigma$ 为曲面 $x^2+y^2+z^2=1$ 的外侧，计算曲面积分
$ I=integral.surf_Sigma x^3 dif y dif z+y^3 dif z dif x+z^3 dif x dif y. $
]

#ezexam.question(label: n => [七、])[
（本题满分9分）

设位于点 $(0,1)$ 的质点 $A$ 对质点 $M$ 的引力大小为 $k/r^2$（$k>0$ 为常数，$r$ 为质点 $A$ 与 $M$ 之间的距离），质点 $M$ 沿曲线 $y=sqrt(2x-x^2)$ 自 $B(2,0)$ 运动到 $O(0,0)$，求在此运动过程中质点 $A$ 对质点 $M$ 的引力所作的功.
]

#ezexam.question(label: n => [八、])[
（本题满分5分）

求幂级数 $sum_(n=1)^infinity (x-3)^n/(n 3^n)$ 的收敛域.
]

#ezexam.question(label: n => [九、])[
（本题满分6分）

已知 $A P=P B$，其中 $B=mat(1,0,0;0,0,0;0,0,-1),P=mat(1,0,0;2,-1,0;2,1,1)$，求 $A,A^5$.
]

#ezexam.question(label: n => [十、])[
（本题满分8分）

已知矩阵 $A=mat(2,0,0;0,0,1;0,1,x)$ 与 $B=mat(2,0,0;0,y,0;0,0,-1)$ 相似.

（1）求 $x$ 与 $y$.

（2）求一个满足 $P^(-1)A P=B$ 的可逆阵 $P$.
]

= 十一、填空题（本题共3个小题，每小题2分，满分6分.）

#ezexam.question(label: n => [（1）])[
设在三次独立试验中，事件 $A$ 出现的概率相等，若已知 $A$ 至少出现一次的概率等于 $19/27$，则事件 $A$ 在一次试验中出现的概率是 #fillin(len: 4em)[].
]

#ezexam.question(label: n => [（2）])[
若在区间 $(0,1)$ 内任取两个数，则事件“两数之和小于 $6/5$”的概率为 #fillin(len: 4em)[].
]

#ezexam.question(label: n => [（3）])[
设随机变量 $X$ 服从均值为10，均方差为0.02的正态分布，已知
$ Phi(x)=integral_(-infinity)^x 1/sqrt(2pi)e^(-u^2/2)dif u, quad Phi(2.5)=0.9938, $
则 $X$ 落在区间 $(9.95,10.05)$ 内的概率为 #fillin(len: 4em)[].
]

#ezexam.question(label: n => [十二、])[
（本题满分6分）

设随机变量 $X$ 的概率密度函数为 $f_X(x)=1/(pi(1+x^2))$，求随机变量 $Y=1-root(3,X)$ 的概率密度函数 $f_Y(y)$.
]
