#import "../template.typ": exam
#show: exam.with(year: 1994, subject: "五", title: "1994年全国工学、经济学硕士研究生入学考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])


= 一、填空题（15分，每小题3分）
#ezexam.counter-question.step()

（1）$integral_(-2)^2 (x+abs(x))/(2+x^2)dif x=$ #fillin(len: 4em)[].

（2）已知 $f'(x_0)=-1$，则 $lim_(x arrow 0)x/(f(x_0-2x)-f(x_0-x))=$ #fillin(len: 4em)[].

（3）设方程 $e^(x y)+y^2=cos x$ 确定 $y$ 为 $x$ 的函数，则 $(dif y)/(dif x)=$ #fillin(len: 4em)[].

（4）设 $A=mat(0,a_1,0,dots,0;0,0,a_2,dots,0;dots,dots,dots,dots,dots;0,0,0,dots,a_(n-1);a_n,0,0,dots,0)$，其中 $a_i≠0$，$i=1,2,dots,n$，则 $A^(-1)=$ #fillin(len: 4em)[].

（5）假设一批产品中一、二、三等品各占60%、30%、10%，从中随意取出一件，结果不是三等品，则取到的是一等品的概率为 #fillin(len: 4em)[].

= 二、选择题（15分，每小题3分）
#ezexam.counter-question.step()

（1）曲线 $y=e^(1/x^2)arctan((x^2+x-1)/((x+1)(x-2)))$ 的渐近线有（　）.
#choices[1条][2条][3条][4条]

（2）设函数 $f(x)$ 在闭区间 $[a,b]$ 上连续，且 $f(x)>0$，则方程 $integral_a^x f(t)dif t+integral_b^x 1/f(t)dif t=0$ 在开区间 $(a,b)$ 内的根有（　）.
#choices[0个][1个][2个][无穷多个]

（3）设 $A,B$ 都是 $n$ 阶非零矩阵，且 $A B=0$，则 $A$ 和 $B$ 的秩（　）.
#choices[必有一个等于零][都小于 $n$][一个小于 $n$，一个等于 $n$][都等于 $n$]

（4）设有向量组 $alpha_1=(1,-1,2,4)$、$alpha_2=(0,3,1,2)$、$alpha_3=(3,0,7,14)$、$alpha_4=(1,-2,2,0)$、$alpha_5=(2,1,5,10)$，则该向量组的极大线性无关组是（　）.
#choices[$alpha_1,alpha_2,alpha_3$][$alpha_1,alpha_2,alpha_4$][$alpha_1,alpha_2,alpha_5$][$alpha_1,alpha_2,alpha_4,alpha_5$]

（5）设 $0<P(A)<1$，$0<P(B)<1$，$P(A|B)+P(overline(A)|overline(B))=1$，则（　）.
#choices[事件 $A$ 和 $B$ 互不相容][事件 $A$ 和 $B$ 互相对立][事件 $A$ 和 $B$ 互不独立][事件 $A$ 和 $B$ 相互独立]

#ezexam.question(label: n => [三、])[
（5分）

求极限 $lim_(x arrow infinity)[x-x^2 ln(1+1/x)]$.

]

#ezexam.question(label: n => [四、])[
（5分）

已知 $f(x,y)=x^2 arctan(y/x)-y^2 arctan(x/y)$，求 $(partial^2 f)/(partial x partial y)$.

]

#ezexam.question(label: n => [五、])[
（6分）

已知 $(sin x)/x$ 是函数 $f(x)$ 的一个原函数，求 $integral x^3 f'(x)dif x$.

]

#ezexam.question(label: n => [六、])[
（8分）

某养殖场饲养两种鱼，若甲种鱼放养 $x$（万尾），乙种鱼放养 $y$（万尾），收获时两种鱼的收获量分别为 $(3-alpha x-beta y)x$ 和 $(4-beta x-2alpha y)y$（$alpha>beta>0$）.求使产鱼总量最大的放养数.

]

#ezexam.question(label: n => [七、])[
（8分）

已知曲线 $y=a sqrt(x)$（$a>0$）与曲线 $y=ln sqrt(x)$ 在点 $(x_0,y_0)$ 处有公共切线，求：

（1）常数 $a$ 及切点 $(x_0,y_0)$；

（2）两曲线与 $x$ 轴围成的平面图形的面积 $S$.

]

#ezexam.question(label: n => [八、])[
（7分）

设函数 $f(x)$ 可导，且 $f(0)=0$，$F(x)=integral_0^x t^(n-1)f(x^n-t^n)dif t$，证明 $lim_(x arrow 0)F(x)/x^(2n)=(f'(0))/(2n)$.

]

#ezexam.question(label: n => [九、])[
（8分）

设 $alpha_1,alpha_2,alpha_3$ 是齐次线性方程组 $A X=0$ 的一个基础解系.证明 $alpha_1+alpha_2,alpha_2+alpha_3,alpha_3+alpha_1$ 也是该方程组的一个基础解系.

]

#ezexam.question(label: n => [十、])[
（8分）

设 $A=mat(0,0,1;x,1,y;1,0,0)$ 有三个线性无关的特征向量，求 $x$ 和 $y$ 应满足的条件.

]

#ezexam.question(label: n => [十一、])[
（7分）

假设随机变量 $X$ 的概率密度为 $f(x)=cases(2x & quad 0<x<1,0 & quad "其他")$.现对 $X$ 进行 $n$ 次独立重复观测，以 $V_n$ 表示观测值不大于0.1的次数.试求随机变量 $V_n$ 的概率分布.

]

#ezexam.question(label: n => [十二、])[
（8分）

假设由自动线加工的某种零件的内径 $X$（毫米）服从正态分布 $N(mu,1)$，内径小于10或大于12的为不合格品，其余为合格品.销售每件合格品获利，每件不合格品亏损.销售利润 $T$（元）与内径 $X$ 的关系为
$ T=cases(-1 & quad X<10,20 & quad 10<=X<=12,-5 & quad X>12). $
问平均内径 $mu$ 取何值时，销售一个零件的平均利润最大？
]

