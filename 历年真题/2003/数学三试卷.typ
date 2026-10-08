#import "../template.typ": exam
#show: exam.with(year: 2003, subject: "三", title: "2003年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#ezexam.answer-state.update(false)


= 一、填空题（本题共6小题，每小题4分，满分24分）
#ezexam.counter-question.step()

（1）设 $f(x)=cases(x^lambda cos(1/x) & x != 0,0 & x=0)$，其导函数在 $x=0$ 处连续，则 $lambda$ 取值范围是#h(3em).

（2）已知曲线 $y=x^3-3a^2 x+b$ 与 $x$ 轴相切，则 $b^2$ 可以通过 $a$ 表示为 $b^2=$#h(3em).

（3）设 $a>0,f(x)=g(x)=cases(a & 0<=x<=1,0 & #text[其他])$，而 $D$ 表示全平面，则 $I=integral.double_D f(x)g(y-x) dif x dif y=$#h(3em).

（4）设 $n$ 维向量 $alpha=(a,0,dots,0,a)^T,a<0$；$E$ 为 $n$ 阶单位矩阵，矩阵
$ A=E-alpha alpha^T,B=E+1/a alpha alpha^T, $
其中 $A$ 的逆矩阵为 $B$，则 $a=$#h(3em).

（5）设随机变量 $X$ 和 $Y$ 的相关系数为0.9，若 $Z=X-0.4$，则 $Y$ 与 $Z$ 的相关系数为#h(3em).

（6）设总体 $X$ 服从参数为2的指数分布，$X_1,X_2,dots,X_n$ 为来自总体 $X$ 的简单随机样本，则当 $n->infinity$ 时，$Y_n=1/n sum_(i=1)^n X_i^2$ 依概率收敛于#h(3em).

= 二、选择题（本题共6小题，每小题4分，满分24分）
#ezexam.counter-question.step()

（1）设 $f(x)$ 为不恒等于零的奇函数，且 $f'(0)$ 存在，则函数 $g(x)=f(x)/x$（　）.
#choices[在 $x=0$ 处左极限不存在.][有跳跃间断点 $x=0$.][在 $x=0$ 处右极限不存在.][有可去间断点 $x=0$.]

（2）设可微函数 $f(x,y)$ 在点 $(x_0,y_0)$ 取得极小值，则下列结论正确的是（　）.
#choices[$f(x_0,y)$ 在 $y=y_0$ 处的导数等于零.][$f(x_0,y)$ 在 $y=y_0$ 处的导数大于零.][$f(x_0,y)$ 在 $y=y_0$ 处的导数小于零.][$f(x_0,y)$ 在 $y=y_0$ 处的导数不存在.]

（3）设 $p_n=(a_n+|a_n|)/2,q_n=(a_n-|a_n|)/2,n=1,2,dots$，则下列命题正确的是（　）.
#choices[若 $sum_(n=1)^infinity a_n$ 条件收敛，则 $sum_(n=1)^infinity p_n$ 与 $sum_(n=1)^infinity q_n$ 都收敛.][若 $sum_(n=1)^infinity a_n$ 绝对收敛，则 $sum_(n=1)^infinity p_n$ 与 $sum_(n=1)^infinity q_n$ 都收敛.][若 $sum_(n=1)^infinity a_n$ 条件收敛，则 $sum_(n=1)^infinity p_n$ 与 $sum_(n=1)^infinity q_n$ 的敛散性都不定.][若 $sum_(n=1)^infinity a_n$ 绝对收敛，则 $sum_(n=1)^infinity p_n$ 与 $sum_(n=1)^infinity q_n$ 的敛散性都不定.]

（4）设三阶矩阵 $A=mat(a,b,b;b,a,b;b,b,a)$，若 $A$ 的伴随矩阵的秩等于1，则必有（　）.
#choices[$a=b$ 或 $a+2b=0$.][$a=b$ 或 $a+2b != 0$.][$a != b$ 且 $a+2b=0$.][$a != b$ 且 $a+2b != 0$.]

（5）设 $alpha_1,alpha_2,dots,alpha_s$ 均为 $n$ 维向量，下列结论不正确的是（　）.
#choices[若对于任一组不全为零的数 $k_1,k_2,dots,k_s$，都有 $k_1 alpha_1+k_2 alpha_2+dots+k_s alpha_s != 0$，则 $alpha_1,alpha_2,dots,alpha_s$ 线性无关.][若 $alpha_1,alpha_2,dots,alpha_s$ 线性相关，则对于任意一组不全为零的数 $k_1,k_2,dots,k_s$，有 $k_1 alpha_1+k_2 alpha_2+dots+k_s alpha_s=0$.][$alpha_1,alpha_2,dots,alpha_s$ 线性无关的充分必要条件是此向量组的秩为 $s$.][$alpha_1,alpha_2,dots,alpha_s$ 线性无关的必要条件是其中任意两个向量线性无关.]

（6）将一枚硬币独立地掷两次，引进事件：$A_1=$｛掷第一次出现正面｝，$A_2=$｛掷第二次出现正面｝，$A_3=$｛正、反面各出现一次｝，$A_4=$｛正面出现两次｝，则事件（　）.
#choices[$A_1,A_2,A_3$ 相互独立.][$A_2,A_3,A_4$ 相互独立.][$A_1,A_2,A_3$ 两两独立.][$A_2,A_3,A_4$ 两两独立.]

#ezexam.question(label: n => [三、])[
（本题满分8分）设
$ f(x)=1/(pi x)+1/(sin pi x)-1/(pi(1-x)),x in [1/2,1). $
试补充定义 $f(1)$ 使得 $f(x)$ 在 $[1/2,1]$ 上连续.


]

#ezexam.question(label: n => [四、])[
（本题满分8分）设 $f(u,v)$ 具有二阶连续偏导数，且满足 $(partial^2 f)/(partial u^2)+(partial^2 f)/(partial v^2)=1$，又 $g(x,y)=f[x y,1/2(x^2-y^2)]$，求 $(partial^2 g)/(partial x^2)+(partial^2 g)/(partial y^2)$.


]

#ezexam.question(label: n => [五、])[
（本题满分8分）计算二重积分
$ I=integral.double_D e^(-(x^2+y^2-pi)) sin(x^2+y^2) dif x dif y, $
其中积分区域 $D={(x,y) | x^2+y^2<=pi}$.


]

#ezexam.question(label: n => [六、])[
（本题满分9分）求幂级数 $1+sum_(n=1)^infinity (-1)^n x^(2n)/(2n) (|x|<1)$ 的和函数 $f(x)$ 及其极值.


]

#ezexam.question(label: n => [七、])[
（本题满分9分）设 $F(x)=f(x)g(x)$，其中函数 $f(x),g(x)$ 在 $(-infinity,+infinity)$ 内满足以下条件：
$ f'(x)=g(x),g'(x)=f(x), #text[且] f(0)=0,f(x)+g(x)=2e^x. $
（1）求 $F(x)$ 所满足的一阶微分方程；

（2）求出 $F(x)$ 的表达式.


]

#ezexam.question(label: n => [八、])[
（本题满分8分）设函数 $f(x)$ 在 $[0,3]$ 上连续，在 $(0,3)$ 内可导，且 $f(0)+f(1)+f(2)=3,f(3)=1$.试证必存在 $xi in (0,3)$，使 $f'(xi)=0$.


]

#ezexam.question(label: n => [九、])[
（本题满分13分）已知齐次线性方程组
$ cases((a_1+b)x_1+a_2 x_2+a_3 x_3+dots+a_n x_n=0,a_1 x_1+(a_2+b)x_2+a_3 x_3+dots+a_n x_n=0,a_1 x_1+a_2 x_2+(a_3+b)x_3+dots+a_n x_n=0,dots,a_1 x_1+a_2 x_2+a_3 x_3+dots+(a_n+b)x_n=0), $
其中 $sum_(i=1)^n a_i != 0$.试讨论 $a_1,a_2,dots,a_n$ 和 $b$ 满足何种关系时，

（1）方程组仅有零解；

（2）方程组有非零解.在有非零解时，求此方程组的一个基础解系.


]

#ezexam.question(label: n => [十、])[
（本题满分13分）设二次型 $f(x_1,x_2,x_3)=X^T A X=a x_1^2+2x_2^2-2x_3^2+2b x_1 x_3 (b>0)$，其中二次型的矩阵 $A$ 的特征值之和为1，特征值之积为 $-12$.

（1）求 $a,b$ 的值；

（2）利用正交变换将二次型 $f$ 化为标准形，并写出所用的正交变换和对应的正交矩阵.


]

#ezexam.question(label: n => [十一、])[
（本题满分13分）设随机变量 $X$ 的概率密度为
$ f(x)=cases(1/(3 root(3,x^2)) & x in [1,8],0 & #text[其他]); $
$F(x)$ 是 $X$ 的分布函数.求随机变量 $Y=F(X)$ 的分布函数.


]

#ezexam.question(label: n => [十二、])[
（本题满分13分）设随机变量 $X$ 与 $Y$ 独立，其中 $X$ 的概率分布为
$ X tilde mat(1,2;0.3,0.7), $
而 $Y$ 的概率密度为 $f(y)$，求随机变量 $U=X+Y$ 的概率密度 $g(u)$.

]
