#import "../template.typ": exam
#show: exam.with(year: 1998, subject: "三", title: "1998年全国工学、经济学硕士研究生入学考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)


= 一、填空题（本题共5小题，每小题3分，满分15分）
#ezexam.counter-question.step()

（1）设曲线 $f(x)=x^n$ 在点 $(1,1)$ 处的切线与 $x$ 轴的交点为 $(xi_n,0)$，则 $lim_(n -> infinity) f(xi_n)=$ #fillin(len: 3em)[].

（2）$integral frac(ln x-1,x^2) dif x=$ #fillin(len: 3em)[].

（3）差分方程 $2y_(t+1)+10y_t-5t=0$ 的通解为 #fillin(len: 3em)[].

（4）设矩阵 $A,B$ 满足 $A^* B A=2B A-8E$，其中 $A=mat(1,0,0;0,-2,0;0,0,1)$，$E$ 为单位矩阵，$A^*$ 为 $A$ 的伴随矩阵，则 $B=$ #fillin(len: 3em)[].

（5）设 $X_1,X_2,X_3,X_4$ 是来自正态总体 $N(0,2^2)$ 的简单随机样本，$X=a(X_1-2X_2)^2+b(3X_3-4X_4)^2$.则当 $a=$ #fillin(len: 3em)[]，$b=$ #fillin(len: 3em)[] 时，统计量 $X$ 服从 $chi^2$ 分布，其自由度为 #fillin(len: 3em)[].

= 二、选择题（本题共5小题，每小题3分，满分15分）
#ezexam.counter-question.step()

（1）设周期函数 $f(x)$ 在 $(-infinity,+infinity)$ 内可导，周期为4.又 $lim_(x -> 0) frac(f(1)-f(1-x),2x)=-1$，则曲线 $y=f(x)$ 在点 $(5,f(5))$ 处的切线的斜率为（　）.
#choices[$frac(1,2)$.][0.][$-1$.][$-2$.]

（2）设函数 $f(x)=lim_(n -> infinity) frac(1+x,1+x^(2n))$，讨论函数 $f(x)$ 的间断点，其结论为（　）.
#choices[不存在间断点.][存在间断点 $x=1$.][存在间断点 $x=0$.][存在间断点 $x=-1$.]

（3）齐次线性方程组
$ cases(lambda x_1+x_2+lambda^2 x_3=0,x_1+lambda x_2+x_3=0,x_1+x_2+lambda x_3=0) $
的系数矩阵记为 $A$.若存在三阶矩阵 $B!=0$ 使得 $A B=0$，则（　）.
#choices[$lambda=-2$ 且 $|B|=0$.][$lambda=-2$ 且 $|B|!=0$.][$lambda=1$ 且 $|B|=0$.][$lambda=1$ 且 $|B|!=0$.]

（4）设 $n$（$n>=3$）阶矩阵
$ A=mat(1,a,a,dots,a;a,1,a,dots,a;a,a,1,dots,a;dots.v,dots.v,dots.v,,dots.v;a,a,a,dots,1), $
若矩阵 $A$ 的秩为 $n-1$，则 $a$ 必为（　）.
#choices[1.][$frac(1,1-n)$.][$-1$.][$frac(1,n-1)$.]

（5）设 $F_1 (x)$ 与 $F_2 (x)$ 分别为随机变量 $X_1$ 与 $X_2$ 的分布函数.为使 $F(x)=a F_1 (x)-b F_2 (x)$ 是某一随机变量的分布函数，在下列给定的各组数值中应取（　）.
#choices[$a=frac(3,5),b=-frac(2,5)$.][$a=frac(2,3),b=frac(2,3)$.][$a=-frac(1,2),b=frac(3,2)$.][$a=frac(1,2),b=-frac(3,2)$.]

#ezexam.question(label: n => [三、])[
（本题满分5分）

设 $z=(x^2+y^2)e^(-arctan frac(y,x))$，求 $dif z$ 与 $frac(partial^2 z,partial x partial y)$.


]

#ezexam.question(label: n => [四、])[
（本题满分5分）

设 $D={(x,y)|x^2+y^2<=x}$，求 $integral.double_D sqrt(x) dif x dif y$.


]

#ezexam.question(label: n => [五、])[
（本题满分6分）

设某酒厂有一批新酿的好酒，如果现在（假定 $t=0$）就售出，总收入为 $R_0$（元）.如果窖藏起来待来日按陈酒价格出售，$t$ 年末总收入为
$ R=R_0 e^(frac(2,5)sqrt(t)). $
假定银行的年利率为 $r$，并以连续复利计息，试求窖藏多少年售出可使总收入的现值最大.并求 $r=0.06$ 时的 $t$ 值.


]

#ezexam.question(label: n => [六、])[
（本题满分6分）

设函数 $f(x)$ 在 $[a,b]$ 上连续，在 $(a,b)$ 内可导，且 $f'(x)!=0$.试证存在 $xi,eta in (a,b)$，使得
$ frac(f'(xi),f'(eta))=frac(e^b-e^a,b-a)dot e^(-eta). $


]

#ezexam.question(label: n => [七、])[
（本题满分6分）

设有两条抛物线 $y=n x^2+frac(1,n)$ 和 $y=(n+1)x^2+frac(1,n+1)$，记它们交点的横坐标的绝对值为 $a_n$.

（1）求这两条抛物线所围成的平面图形的面积 $S_n$；

（2）求级数 $sum_(n=1)^infinity frac(S_n,a_n)$ 的和.


]

#ezexam.question(label: n => [八、])[
（本题满分7分）

设函数 $f(x)$ 在 $[1,+infinity)$ 上连续.若由曲线 $y=f(x)$，直线 $x=1,x=t$（$t>1$）与 $x$ 轴所围成的平面图形绕 $x$ 轴旋转一周所成的旋转体体积为
$ V(t)=frac(pi,3)[t^2 f(t)-f(1)]. $
试求 $y=f(x)$ 所满足的微分方程，并求该微分方程满足条件 $y|_(x=2)=frac(2,9)$ 的解.


]

#ezexam.question(label: n => [九、])[
（本题满分9分）

设向量 $bold(alpha)=(a_1,a_2,dots,a_n)^"T"$，$bold(beta)=(b_1,b_2,dots,b_n)^"T"$ 都是非零向量，且满足条件 $bold(alpha)^"T" bold(beta)=0$.记 $n$ 阶矩阵 $A=bold(alpha)bold(beta)^"T"$.求：

（1）$A^2$；

（2）矩阵 $A$ 的特征值和特征向量.


]

#ezexam.question(label: n => [十、])[
（本题满分7分）

设矩阵 $A=mat(1,0,1;0,2,0;1,0,1)$，矩阵 $B=(k E+A)^2$，其中 $k$ 为实数，$E$ 为单位矩阵.求对角矩阵 $Lambda$，使 $B$ 与 $Lambda$ 相似，并求 $k$ 为何值时，$B$ 为正定矩阵.


]

#ezexam.question(label: n => [十一、])[
（本题满分10分）

一商店经销某种商品，每周进货的数量 $X$ 与顾客对该种商品的需求量 $Y$ 是相互独立的随机变量，且都服从区间 $[10,20]$ 上的均匀分布.商店每售出一单位商品可得利润1000元；若需求量超过了进货量，商店可从其他商店调剂供应，这时每单位商品获利润为500元.试计算此商店经销该种商品每周所得利润的期望值.
#import "@preview/cetz:0.5.2"
#cetz.canvas({
 import cetz.draw: *
 set-style(stroke: 0.6pt)
 line((-0.3,0),(3,0),mark:(end:">")); line((0,-0.2),(0,2.8),mark:(end:">"))
 line((0,0),(2.5,2.5))
 rect((1,1),(2,2))
 line((0,1),(1,1),stroke:(dash:"dashed")); line((0,2),(1,2),stroke:(dash:"dashed"))
 line((1,0),(1,1),stroke:(dash:"dashed")); line((2,0),(2,1),stroke:(dash:"dashed"))
 content((3.1,0),$x$); content((0,2.9),$y$); content((-0.15,-0.12),$O$)
 content((1,-0.17),$10$); content((2,-0.17),$20$)
 content((-0.22,1),$10$); content((-0.22,2),$20$)
 content((1.7,1.3),$D_1$); content((1.3,1.7),$D_2$)
})


]

#ezexam.question(label: n => [十二、])[
（本题满分9分）

设有来自三个地区的各10名、15名和25名考生的报名表，其中女生的报名表分别为3份、7份和5份.随机地取一个地区的报名表，从中先后抽出两份.

（1）求先抽到的一份是女生表的概率 $p$；

（2）已知后抽到的一份是男生表，求先抽到的一份是女生表的概率 $q$.

]
