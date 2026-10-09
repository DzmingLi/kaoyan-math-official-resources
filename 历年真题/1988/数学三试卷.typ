#import "../template.typ": exam
#show: exam.with(year: 1988, subject: "三", title: "1988年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)

= 一、是非题（本题共5个小题，每小题2分，满分10分.）

#ezexam.question(label: n => [（1）])[
若 $lim_(x->x_0)f(x)$ 与 $lim_(x->x_0)f(x)g(x)$ 均存在，则 $lim_(x->x_0)g(x)$ 必存在.（　）
]

#ezexam.question(label: n => [（2）])[
若函数 $f(x)$ 的极值点是 $x_0$，则必有 $f'(x_0)=0$.（　）
]

#ezexam.question(label: n => [（3）])[
对任意实数 $a$，等式 $integral_0^a f(x)dif x=-integral_0^a f(a-x)dif x$ 总成立.（　）
]

#ezexam.question(label: n => [（4）])[
若 $A$ 与 $B$ 均为 $n$ 阶非零方阵且 $A B=O$，则秩 $r(A)<n$.（　）
]

#ezexam.question(label: n => [（5）])[
若事件 $A,B,C$ 满足等式 $A+C=B+C$，则 $A=B$.（　）
]

= 二、填题空

#ezexam.question(label: n => [（1）])[
设 $f(x)=integral_0^x e^(-t^2/2)dif t,-infinity<x<+infinity$，则：① $f'(x)=$ #fillin(len: 4em)[]，② $f(x)$ 的单调性是 #fillin(len: 4em)[]，③ 奇偶性是 #fillin(len: 4em)[]，④ 其图形的拐点是 #fillin(len: 4em)[]，⑤ 凹凸区间是 #fillin(len: 4em)[]，⑥ 水平渐近线是 #fillin(len: 4em)[].
]

#ezexam.question(label: n => [（2）])[
$abs(mat(1,1,1,0;1,1,0,1;1,0,1,1;0,1,1,1))=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [（3）])[
设 $A=mat(0,0,0,1;0,0,1,0;0,1,0,0;1,0,0,0)$，则 $A^(-1)=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [（4）])[
设 $P(A)=0.4,P(A+B)=0.7$，若事件 $A$ 与 $B$ 互斥，则 $P(B)=$ #fillin(len: 4em)[]；若事件 $A$ 与 $B$ 独立，则 $P(B)=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [三、])[
（本题满分4分）

求 $lim_(x->1)(x^x-1)/(x ln x)$.
]

#ezexam.question(label: n => [四、])[
（本题满分4分）

求 $integral_0^3 1/((1+x)sqrt(x))dif x$.
]

#ezexam.question(label: n => [五、])[
（本题满分4分）

设 $u+e^u=x y$，求 $(partial^2 u)/(partial x partial y)$.
]

#ezexam.question(label: n => [六、])[
（本题满分8分）

过曲线 $y=x^2 (x>=0)$ 上某点 $A$ 作一切线，使之与曲线及 $x$ 轴围成图形的面积为 $1/12$，求：（1）切点 $A$ 的坐标；（2）过切点 $A$ 的切线方程；（3）由上述图形绕 $x$ 轴旋转成的旋转体体积 $V$.
]

#ezexam.question(label: n => [七、])[
（本题满分4分）

求 $integral_0^(pi/6)dif y integral_y^(pi/6)(cos x)/x dif x$.
]

#ezexam.question(label: n => [八、])[
（本题满分3分）

讨论级数 $sum_(n=1)^infinity (n+1)!/n^(n+1)$ 的敛散性.
]

#ezexam.question(label: n => [九、])[
（本题满分3分）

设级数 $sum_(n=1)^infinity a_n^2$ 与 $sum_(n=1)^infinity b_n^2$ 均收敛，求证：级数 $sum_(n=1)^infinity a_n b_n$ 绝对收敛.
]

#ezexam.question(label: n => [十、])[
（本题满分8分）

设某商品的需求量 $D$ 和供给量 $S$，各自对价格 $p$ 的函数为 $D(p)=a/p^2,S(p)=b p$，且 $p$ 是时间 $t$ 的函数并满足方程 $(dif p)/(dif t)=k[D(p)-S(p)]$（$a,b,k$ 为正常数），求：（1）需求量与供给量相等时的均衡价格 $p_e$；（2）当 $t=0,p=1$ 时的价格函数 $p(t)$；（3）$lim_(t->+infinity)p(t)$.
]

#ezexam.question(label: n => [十一、])[
（本题满分6分）

设3阶方阵 $A$ 的伴随矩阵为 $A^*$，且 $abs(A)=1/2$，求 $abs((3A)^(-1)-2A^*)$.
]

#ezexam.question(label: n => [十二、])[
（本题满分7分）

设向量组 $alpha_1,alpha_2,dots,alpha_s (s>=2)$ 线性无关，且 $beta_1=alpha_1+alpha_2,beta_2=alpha_2+alpha_3,dots,beta_(s-1)=alpha_(s-1)+alpha_s,beta_s=alpha_s+alpha_1$，讨论向量组 $beta_1,beta_2,dots,beta_s$ 的线性相关性.
]

#ezexam.question(label: n => [十三、])[
（本题满分8分）

设线性方程组为
$ cases(x_1+x_2+2x_3+3x_4=1,x_1+3x_2+6x_3+x_4=3,3x_1-x_2-k_1 x_3+15x_4=3,x_1-5x_2-10x_3+12x_4=k_2). $
问 $k_1$ 与 $k_2$ 各取何值，方程组无解？有唯一解？有无穷多解？有无穷多解时，求其一般解.
]

#ezexam.question(label: n => [十四、])[
（本题满分7分）

设玻璃杯整箱出售，每箱20只，各箱含0，1，2只残次品的概率分别为0.8，0.1，0.1，一顾客欲购买一箱玻璃杯，由售货员任取一箱，经顾客开箱随机察看4只，若无残次品，则买此箱玻璃杯，否则不买.求：（1）顾客买此箱玻璃杯的概率 $alpha$；（2）在顾客买的此箱玻璃杯中，确实没残次品的概率 $beta$.
]

#ezexam.question(label: n => [十五、])[
（本题满分6分）

设随机变量 $X$ 在区间 $(1,2)$ 上服从均匀分布，求 $Y=e^(2X)$ 的概率密度 $f(y)$.
]

#ezexam.question(label: n => [十六、])[
（本题满分6分）

某保险公司多年的资料统计表明，在索赔户中被盗索赔户占20%，在随意抽查的100家索赔户中被盗的索赔户数为随机变量 $X$，（1）写出 $X$ 的概率分布；（2）利用棣莫佛—拉普拉斯定理，求被盗的索赔户数不少于14户且不多于30户的概率的近似值.

附表
#table(columns: 8, stroke: 0.4pt, [$X$], [0], [0.5], [1], [1.5], [2], [2.5], [3], [$phi(x)$], [0.5], [0.692], [0.841], [0.933], [0.977], [0.994], [0.999])
]
