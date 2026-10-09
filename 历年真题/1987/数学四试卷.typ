#import "../template.typ": exam
#show: exam.with(year: 1987, subject: "四", title: "1987年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)

= 一、判断是非题（本大题共5小题，每小题2分，满分10分.）

#ezexam.question(label: n => [（1）])[
$lim_(x->0)e^(1/x)=infinity$.（　）
]

#ezexam.question(label: n => [（2）])[
若 $f(x)$ 在 $(a,b)$ 内严格单调增加，则 $x in (a,b)$ 时，总有 $f'(x)>0$.（　）
]

#ezexam.question(label: n => [（3）])[
$integral_(-pi)^pi x^4 sin x dif x=0$.（　）
]

#ezexam.question(label: n => [（4）])[
设 $A$ 为 $n$ 阶方阵，$k$ 为常数，则 $abs(k A)=k abs(A)$.（　）
]

#ezexam.question(label: n => [（5）])[
连续型随机变量取任何给定值的概率均为0.（　）
]

= 二、选择题（本大题共5个小题，每小题2分，满分10分.）

#ezexam.question(label: n => [（1）])[
下列函数在其定义域内连续的是（　）.
#choices([$f(x)=1/x$],[$f(x)=cases(sin x & x<=0,cos x & x>0)$],[$f(x)=cases(x+1 & x<0,0 & x=0,x-1 & x>0)$],[$f(x)=cases(1/abs(x) & x!=0,0 & x=0)$])
]

#ezexam.question(label: n => [（2）])[
若 $f(x)$ 在 $(a,b)$ 内可导且 $a<x_1<x_2<b$，则至少存在一点 $xi$，使得（　）.
#choices([$f(b)-f(a)=f'(xi)(b-a) (a<xi<b)$],[$f(b)-f(x_1)=f'(xi)(b-x_1) (x_1<xi<b)$],[$f(x_2)-f(x_1)=f'(xi)(x_2-x_1) (x_1<xi<x_2)$],[$f(x_2)-f(a)=f'(xi)(x_2-a) (a<xi<x_2)$])
]

#ezexam.question(label: n => [（3）])[
下列广义积分收敛的是（　）.
#choices([$integral_e^(+infinity) (ln x)/x dif x$],[$integral_e^(+infinity) 1/(x ln x)dif x$],[$integral_e^(+infinity)1/(x(ln x)^2)dif x$],[$integral_e^(+infinity)1/(x sqrt(ln x))dif x$])
]

#ezexam.question(label: n => [（4）])[
设 $n$ 阶方阵 $A$ 的秩 $r<n$，则在 $A$ 的 $n$ 个行向量中（　）.
#choices([必有 $r$ 个行向量线性无关.],[任意 $r$ 个行向量均可构成极大无关组.],[任意 $r$ 个行向量均线性无关.],[任一个行向量均可由其他 $r$ 个行向量线性表示.])
]

#ezexam.question(label: n => [（5）])[
设 $A,B$ 为两事件，则 $P(A-B)$ 等于（　）.
#choices([$P(A)-P(B)$],[$P(A)-P(B)+P(A B)$],[$P(A)-P(A B)$],[$P(A)+P(B)-P(A B)$])
]

#ezexam.question(label: n => [三、])[
（本题满分4分）

设 $y=ln (sqrt(1+x^2)-1)/(sqrt(1+x^2)+1)$，求 $y'$.
]

#ezexam.question(label: n => [四、])[
（本题满分4分）

求 $lim_(x->+infinity)ln(1+1/x)/(arctan(1/x))$.
]

#ezexam.question(label: n => [五、])[
（本题满分4分）

求 $integral x/(x^4+2x^2+5)dif x$.
]

#ezexam.question(label: n => [六、])[
（本题满分4分）

求 $integral_(1/2)^1 e^(sqrt(2x-1))dif x$.
]

#ezexam.question(label: n => [七、])[
（本题满分8分）

设总成本 $C$ 关于产量 $x$ 的函数为 $C(x)=400+3x+1/2 x^2$，需求量 $x$ 关于价格 $P$ 的函数为 $P=100/sqrt(x)$，求：（1）边际成本；（2）边际收益；（3）边际利润；（4）收益对价格的弹性.
]

#ezexam.question(label: n => [八、])[
（本题满分10分）

设 $y=x^2,x in [0,1]$，问：$t$ 取何值，图中阴影部分的面积 $S_1$ 与 $S_2$ 之和 $S$ 最小？最大？
#align(center)[#image("1987-数学四-面积.svg", width: 48mm)]
]

#ezexam.question(label: n => [九、])[
（本题满分4分）

设 $z=arctan (x+y)/(x-y)$，求 $dif z$.
]

#ezexam.question(label: n => [十、])[
（本题满分5分）

设 $D$ 是由曲线 $y=x^3$ 与直线 $y=x$ 在第一象限内围成的封闭区域，求 $integral.double_D e^(x^2)dif x dif y$.
]

#ezexam.question(label: n => [十一、])[
（本题满分7分）

设矩阵 $A=mat(4,2,3;1,1,0;-1,2,3)$，且 $A B=A+2B$，求矩阵 $B$.
]

#ezexam.question(label: n => [十二、])[
（本题满分8分）

解线性方程组
$ cases(2x_1-x_2+4x_3-3x_4=-4,x_1+x_3-x_4=-3,3x_1+x_2+x_3=1,7x_1+7x_3-3x_4=3). $
]

#ezexam.question(label: n => [十三、])[
（本题满分6分）

求矩阵 $A=mat(-3,-1,2;0,-1,4;-1,0,4)$ 的实特征值与对应的特征向量.
]

#ezexam.question(label: n => [十四、])[
（本题满分8分）

设两箱内装有同种零件，第一箱装50件，有10件一等品，第二箱装30件，有18件一等品，先从两箱中任挑一箱，再从此箱中前、后不放回地任取两个零件，求：（1）先取出的零件是一等品的概率 $p$；（2）在先取的是一等品的条件下，后取的仍是一等品的条件概率 $q$.
]

#ezexam.question(label: n => [十五、])[
（本题满分8分）

设随机变量 $X$ 概率分布为 $P(X=1)=0.2,P(X=2)=0.3,P(X=3)=0.5$.

（1）写出其分布函数；

（2）求 $X$ 的期望与方差.
]
