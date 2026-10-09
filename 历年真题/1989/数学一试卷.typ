#import "../template.typ": exam
#show: exam.with(year: 1989, subject: "一", title: "1989年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)

= 一、填空题（本题共5小题，每小题3分，满分15分.）

#ezexam.question(label: n => [（1）])[
已知 $f'(3)=2$，则 $lim_(h->0)(f(3-h)-f(3))/(2h)=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [（2）])[
设 $f(x)$ 是连续函数，且 $f(x)=x+2integral_0^1 f(t)dif t$，则 $f(x)=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [（3）])[
设平面曲线 $L$ 为下半圆周 $y=-sqrt(1-x^2)$，则曲线积分 $integral_L(x^2+y^2)dif s=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [（4）])[
向量场 $bold(u)(x,y,z)=x y^2 bold(i)+y e^z bold(j)+x ln(1+z^2)bold(k)$ 在点 $P(1,1,0)$ 处的散度 $op("div")bold(u)=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [（5）])[
设矩阵 $A=mat(3,0,0;1,4,0;0,0,3),E=mat(1,0,0;0,1,0;0,0,1)$，则矩阵 $(A-2E)^(-1)=$ #fillin(len: 4em)[].
]

= 二、选择题（本题共5小题，每小题3分，满分15分.）

#ezexam.question(label: n => [（1）])[
当 $x>0$ 时，曲线 $y=x sin(1/x)$（　）.
#choices([有且仅有水平渐近线.],[有且仅有铅直渐近线.],[既有水平渐近线，也有铅直渐近线.],[既无水平渐近线，也无铅直渐近线.])
]

#ezexam.question(label: n => [（2）])[
已知曲面 $z=4-x^2-y^2$ 上点 $P$ 处的切平面平行于平面 $2x+2y+z-1=0$，则点 $P$ 的坐标是（　）.
#choices([$(1,-1,2)$],[$(-1,1,2)$],[$(1,1,2)$],[$(-1,-1,2)$])
]

#ezexam.question(label: n => [（3）])[
设线性无关的函数 $y_1,y_2,y_3$ 都是二阶非齐次线性方程 $y''+p(x)y'+q(x)y=f(x)$ 的解，$C_1,C_2$ 是任意常数，则该非齐次方程的通解是（　）.
#choices([$C_1 y_1+C_2 y_2+y_3$],[$C_1 y_1+C_2 y_2-(C_1+C_2)y_3$],[$C_1 y_1+C_2 y_2-(1-C_1-C_2)y_3$],[$C_1 y_1+C_2 y_2+(1-C_1-C_2)y_3$])
]

#ezexam.question(label: n => [（4）])[
设函数 $f(x)=x^2,0<x<1$，而 $S(x)=sum_(n=1)^infinity b_n sin(n pi x),-infinity<x<+infinity$，其中 $b_n=2integral_0^1 f(x)sin(n pi x)dif x,n=1,2,3,dots$，则 $S(-1/2)$ 等于（　）.
#choices([$-1/2$],[$-1/4$],[$1/4$],[$1/2$])
]

#ezexam.question(label: n => [（5）])[
设 $A$ 是 $n$ 阶矩阵，且 $A$ 的行列式 $abs(A)=0$，则 $A$ 中（　）.
#choices([必有一列元素全为0.],[必有两列元素对应成比例.],[必有一列向量是其余列向量的线性组合.],[任一列向量是其余列向量的线性组合.])
]

= 三、（本题满分15分，每小题5分.）

#ezexam.question(label: n => [（1）])[
设 $z=f(x-y)+g(x,x y)$，其中函数 $f(t)$ 二阶可导，$g(u,v)$ 具有连续的二阶偏导数，求 $(partial^2 z)/(partial x partial y)$.
]

#ezexam.question(label: n => [（2）])[
设曲线积分 $integral_C x y^2 dif x+y phi(x)dif y$ 与路径无关，其中 $phi(x)$ 具有连续的导数，且 $phi(0)=0$，计算 $integral_((0,0))^((1,1))x y^2 dif x+y phi(x)dif y$ 的值.
]

#ezexam.question(label: n => [（3）])[
计算三重积分 $integral.triple_Omega(x+z)dif V$，其中 $Omega$ 是由曲面 $z=sqrt(x^2+y^2)$ 与 $z=sqrt(1-x^2-y^2)$ 所围成的区域.
]

#ezexam.question(label: n => [四、])[
（本题满分6分）

将函数 $f(x)=arctan (1+x)/(1-x)$ 展为 $x$ 的幂级数.
]

#ezexam.question(label: n => [五、])[
（本题满分7分）

设 $f(x)=sin x-integral_0^x(x-t)f(t)dif t$，其中 $f$ 为连续函数，求 $f(x)$.
]

#ezexam.question(label: n => [六、])[
（本题满分6分）

证明方程 $ln x=x/e-integral_0^pi sqrt(1-cos(2x))dif x$ 在区间 $(0,+infinity)$ 内有且仅有两个不同实根.
]

#ezexam.question(label: n => [七、])[
（本题满分6分）

问 $lambda$ 为何值时，线性方程组
$ cases(x_1+x_3=lambda,4x_1+x_2+2x_3=lambda+2,6x_1+x_2+4x_3=2lambda+3) $
有解，并求出解的一般形式.
]

#ezexam.question(label: n => [八、])[
（本题满分8分）

假设 $lambda$ 为 $n$ 阶可逆矩阵 $A$ 的一个特征值，证明：

（1）$1/lambda$ 为 $A^(-1)$ 的特征值；

（2）$abs(A)/lambda$ 为 $A$ 的伴随矩阵 $A^*$ 的特征值.
]

#ezexam.question(label: n => [九、])[
（本题满分9分）

设半径为 $R$ 的球面 $Sigma$ 的球心在定球面 $x^2+y^2+z^2=a^2 (a>0)$ 上，问当 $R$ 为何值时，球面 $Sigma$ 在定球面内部的那部分的面积最大？
]

= 十、填空题（本题满分6分，每小题2分.）

#ezexam.question(label: n => [（1）])[
已知随机事件 $A$ 的概率 $P(A)=0.5$，随机事件 $B$ 的概率 $P(B)=0.6$ 及条件概率 $P(B|A)=0.8$，则和事件 $A union B$ 的 $P(A union B)=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [（2）])[
甲、乙两人独立地对同一目标射击一次，其命中率分别为0.6和0.5.现已知目标被命中，则它是甲射中的概率为 #fillin(len: 4em)[].
]

#ezexam.question(label: n => [（3）])[
若随机变量 $xi$ 在 $(1,6)$ 上服从均匀分布，则方程 $x^2+xi x+1=0$ 有实根的概率是 #fillin(len: 4em)[].
]

#ezexam.question(label: n => [十一、])[
（本题满分5分）

设随机变量 $X$ 与 $Y$ 独立，且 $X$ 服从均值为1，标准差（均方差）为 $sqrt(2)$ 的正态分布，而 $Y$ 服从标准正态分布.试求随机变量 $Z=2X-Y+3$ 的概率密度函数.
]
