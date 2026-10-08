#import "../template.typ": exam
#show: exam.with(year: 1998, subject: "四", title: "1998年全国工学、经济学硕士研究生入学考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)


= 一、填空题（本题共5小题，每小题3分，满分15分）
#ezexam.counter-question.step()

（1）设曲线 $f(x)=x^n$ 在点 $(1,1)$ 处的切线与 $x$ 轴的交点为 $(xi_n,0)$，则 $lim_(n -> infinity) f(xi_n)=$ #fillin(len: 3em)[].

（2）$integral frac(ln x-1,x^2) dif x=$ #fillin(len: 3em)[].

（3）设矩阵 $A,B$ 满足 $A^* B A=2B A-8E$，其中 $A=mat(1,0,0;0,-2,0;0,0,1)$，$E$ 为单位矩阵，$A^*$ 为 $A$ 的伴随矩阵，则 $B=$ #fillin(len: 3em)[].

（4）设 $A,B$ 均为 $n$ 阶矩阵，$|A|=2$，$|B|=-3$，则 $|2A^* B^(-1)|=$ #fillin(len: 3em)[].

（5）设一次试验成功的概率为 $p$，进行100次独立重复试验，当 $p=$ #fillin(len: 3em)[] 时，成功次数的标准差的值最大，其最大值为 #fillin(len: 3em)[].（注：第一空2分，第二空1分.）

= 二、选择题（本题共5小题，每小题3分，满分15分）
#ezexam.counter-question.step()

（1）设周期函数 $f(x)$ 在 $(-infinity,+infinity)$ 内可导，周期为4.又 $lim_(x -> 0) frac(f(1)-f(1-x),2x)=-1$，则曲线 $y=f(x)$ 在点 $(5,f(5))$ 处的切线的斜率为（　）.
#choices[$frac(1,2)$.][0.][$-1$.][$-2$.]

（2）设函数 $f(x)=lim_(n -> infinity) frac(1+x,1+x^(2n))$，讨论函数 $f(x)$ 的间断点，其结论为（　）.
#choices[不存在间断点.][存在间断点 $x=1$.][存在间断点 $x=0$.][存在间断点 $x=-1$.]

（3）若向量组 $bold(alpha),bold(beta),bold(gamma)$ 线性无关；$bold(alpha),bold(beta),bold(delta)$ 线性相关，则（　）.
#choices[$bold(alpha)$ 必可由 $bold(beta),bold(gamma),bold(delta)$ 线性表示.][$bold(beta)$ 必不可由 $bold(alpha),bold(gamma),bold(delta)$ 线性表示.][$bold(delta)$ 必可由 $bold(alpha),bold(beta),bold(gamma)$ 线性表示.][$bold(delta)$ 必不可由 $bold(alpha),bold(beta),bold(gamma)$ 线性表示.]

（4）设 $A,B,C$ 是三个相互独立的随机事件，且 $0<P(C)<1$.则在下列给定的四对事件中不相互独立的是（　）.
#choices[$overline(A+B)$ 与 $C$.][$overline(A C)$ 与 $overline(C)$.][$overline(A-B)$ 与 $overline(C)$.][$overline(A B)$ 与 $overline(C)$.]

（5）设 $F_1 (x)$ 与 $F_2 (x)$ 分别为随机变量 $X_1$ 与 $X_2$ 的分布函数.为使 $F(x)=a F_1 (x)-b F_2 (x)$ 是某一随机变量的分布函数，在下列给定的各组数值中应取（　）.
#choices[$a=frac(3,5),b=-frac(2,5)$.][$a=frac(2,3),b=frac(2,3)$.][$a=-frac(1,2),b=frac(3,2)$.][$a=frac(1,2),b=-frac(3,2)$.]

#ezexam.question(label: n => [三、])[
（本题满分6分）

求 $lim_(n -> infinity)(n tan frac(1,n))^(n^2)$（$n$ 为自然数）.


]

#ezexam.question(label: n => [四、])[
（本题满分6分）

设 $z=(x^2+y^2)e^(-arctan frac(y,x))$，求 $dif z$ 与 $frac(partial^2 z,partial x partial y)$.


]

#ezexam.question(label: n => [五、])[
（本题满分5分）

设 $D={(x,y)|x^2+y^2<=x}$，求 $integral.double_D sqrt(x) dif x dif y$.


]

#ezexam.question(label: n => [六、])[
（本题满分6分）

设某酒厂有一批新酿的好酒，如果现在（假定 $t=0$）就售出，总收入为 $R_0$（元）.如果窖藏起来待来日按陈酒价格出售，$t$ 年末总收入为
$ R=R_0 e^(frac(2,5)sqrt(t)). $
假定银行的年利率为 $r$，并以连续复利计息，试求窖藏多少年售出可使总收入的现值最大.并求 $r=0.06$ 时的 $t$ 值.


]

#ezexam.question(label: n => [七、])[
（本题满分6分）

设 $f(x)$ 在 $[a,b]$ 上连续，在 $(a,b)$ 内可导，且 $f(a)=f(b)=1$，试证存在 $xi,eta in (a,b)$，使得
$ e^(eta-xi)[f(eta)+f'(eta)]=1. $


]

#ezexam.question(label: n => [八、])[
（本题满分9分）

设直线 $y=a x$ 与抛物线 $y=x^2$ 所围成图形的面积为 $S_1$，它们与直线 $x=1$ 所围成的图形面积为 $S_2$，并且 $a<1$.

（1）试确定 $a$ 的值，使 $S_1+S_2$ 达到最小，并求出最小值；

（2）求该最小值所对应的平面图形绕 $x$ 轴旋转一周所得旋转体的体积.
#import "@preview/cetz:0.5.2"
#cetz.canvas({
 import cetz.draw: *
 set-style(stroke:0.6pt)
 let a=0.65
 let curve=range(0,41).map(i=>{let x=i/40; (3*x,3*x*x)})
 line((0,0),(3,3*a),..curve.rev(),close:true,fill:luma(92%))
 line((-0.2,0),(3.6,0),mark:(end:">")); line((0,-0.2),(0,3.6),mark:(end:">"))
 line((3*a,0),(3*a,3*a*a),stroke:(dash:"dashed"))
 content((3.7,0),$x$); content((0,3.7),$y$); content((-0.13,-0.13),$O$)
 content((3*a,-0.2),$a$); content((3,-0.2),$1$)
 content((0.9,0.35),$S_1$); content((2.7,2.15),$S_2$)
 content((1,1.15),$y=a x$); content((2.6,3.15),$y=x^2$)
})


]

#ezexam.question(label: n => [九、])[
（本题满分9分）

设向量 $bold(alpha)=(a_1,a_2,dots,a_n)^"T"$，$bold(beta)=(b_1,b_2,dots,b_n)^"T"$ 都是非零向量，且满足条件 $bold(alpha)^"T" bold(beta)=0$.记 $n$ 阶矩阵 $A=bold(alpha)bold(beta)^"T"$.求：

（1）$A^2$；

（2）矩阵 $A$ 的特征值和特征向量.


]

#ezexam.question(label: n => [十、])[
（本题满分7分）

已知下列非齐次线性方程组（Ⅰ）、（Ⅱ）
$ "（Ⅰ）" cases(x_1+x_2-2x_4=-6,4x_1-x_2-x_3-x_4=1,3x_1-x_2-x_3=3); $
$ "（Ⅱ）" cases(x_1+m x_2-x_3-x_4=-5,n x_2-x_3-2x_4=-11,x_3-2x_4=-t+1). $
（1）求解方程组（Ⅰ），用其导出组的基础解系表示通解；

（2）当方程组（Ⅱ）中的参数 $m,n,t$ 为何值时，方程组（Ⅰ）与（Ⅱ）同解.


]

#ezexam.question(label: n => [十一、])[
（本题满分9分）

设某种商品每周的需求量 $X$ 是服从区间 $[10,30]$ 上均匀分布的随机变量，而经销商店进货数量为区间 $[10,30]$ 中的某一整数，商店每销售一单位商品可获利500元；若供大于求则削价处理，每处理1单位商品亏损100元；若供不应求，则可从外部调剂供应，此时每1单位商品仅获利300元.为使商店所获利润期望值不少于9280元，试确定最少进货量.


]

#ezexam.question(label: n => [十二、])[
（本题满分7分）

某箱装有100件产品，其一、二和三等品分别为80、10和10件，现在从中随机抽取一件，记
$ X_i=cases(1 & quad "若抽到" i "等品",0 & quad "其他") quad (i=1,2,3). $
试求：（1）随机变量 $X_1$ 与 $X_2$ 的联合分布；

（2）随机变量 $X_1$ 与 $X_2$ 的相关系数 $rho$.

]
