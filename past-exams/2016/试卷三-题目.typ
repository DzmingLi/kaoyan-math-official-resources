#import "../template.typ": exam
#show: exam.with(year: 2016, subject: "三")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)


= 一、选择题：1—8小题，每小题4分，共32分.在每小题给出的四个选项中，只有一项符合题目要求，把所选项前的字母填在题后的括号内.

#ezexam.question[
设函数 $y=f(x)$ 在 $(-infinity,+infinity)$ 内连续，其导函数的图形如图所示，则（　）.
#import "@preview/cetz:0.3.4"
#cetz.canvas({
 import cetz.draw: *
 line((-0.7,0),(4.3,0),mark:(end: ">")); line((0,-2),(0,2.1),mark:(end: ">"))
 content((4.3,-0.2),$x$); content((-0.2,2.1),$y$); content((-0.2,-0.2),$O$)
 line((0.8,-1.8),(0.8,1.8),stroke:(dash:"dashed"))
 bezier((-0.5,1.5),(0.68,-1.7),(0.4,1.5),(0.5,0.8))
 bezier((0.95,-1.7),(2.1,1),(1.25,0),(1.55,1))
 bezier((2.1,1),(3.2,0),(2.6,1),(2.7,0))
 bezier((3.2,0),(4,1.1),(3.6,0),(3.8,0.5))
})
#choices([函数 $f(x)$ 有2个极值点，曲线 $y=f(x)$ 有2个拐点.],[函数 $f(x)$ 有2个极值点，曲线 $y=f(x)$ 有3个拐点.],[函数 $f(x)$ 有3个极值点，曲线 $y=f(x)$ 有1个拐点.],[函数 $f(x)$ 有3个极值点，曲线 $y=f(x)$ 有2个拐点.])
]

#ezexam.question[
已知函数 $f(x,y)=e^x/(x-y)$，则（　）.
#choices([$f_x'-f_y'=0$],[$f_x'+f_y'=0$],[$f_x'-f_y'=f$],[$f_x'+f_y'=f$])
]

#ezexam.question[
设 $J_i=integral.double_ (D_i) root(3,x-y) dif x dif y$（$i=1,2,3$），其中
$ D_1={(x,y) bar.v 0<=x<=1,0<=y<=1}, \
D_2={(x,y) bar.v 0<=x<=1,0<=y<=sqrt(x)}, \
D_3={(x,y) bar.v 0<=x<=1,x^2<=y<=1}, $
则（　）.
#choices([$J_1<J_2<J_3$],[$J_3<J_1<J_2$],[$J_2<J_3<J_1$],[$J_2<J_1<J_3$])
]

#ezexam.question[
级数 $sum_(n=1)^infinity (1/sqrt(n)-1/sqrt(n+1))sin(n+k)$（$k$ 为常数）（　）.
#choices([绝对收敛.],[条件收敛.],[发散.],[收敛性与 $k$ 有关.])
]

#ezexam.question[
设 $A,B$ 是可逆矩阵，且 $A$ 与 $B$ 相似，则下列结论错误的是（　）.
#choices([$A^T$ 与 $B^T$ 相似.],[$A^(-1)$ 与 $B^(-1)$ 相似.],[$A+A^T$ 与 $B+B^T$ 相似.],[$A+A^(-1)$ 与 $B+B^(-1)$ 相似.])
]

#ezexam.question[
设二次型 $f(x_1,x_2,x_3)=a(x_1^2+x_2^2+x_3^2)+2x_1 x_2+2x_2 x_3+2x_1 x_3$ 的正、负惯性指数分别为1、2，则（　）.
#choices([$a>1$],[$a<-2$],[$-2<a<1$],[$a=1$ 或 $a=-2$])
]

#ezexam.question[
设 $A,B$ 为两个随机事件，且 $0<P(A)<1$，$0<P(B)<1$，如果 $P(A bar.v B)=1$，则（　）.
#choices([$P(overline(B) bar.v overline(A))=1$],[$P(A bar.v overline(B))=0$],[$P(A union B)=1$],[$P(B bar.v A)=1$])
]

#ezexam.question[
设随机变量 $X$ 与 $Y$ 相互独立，且 $X tilde.op N(1,2)$，$Y tilde.op N(1,4)$，则 $D(X Y)=$（　）.
#choices([6.],[8.],[14.],[15.])
]

= 二、填空题：9—14小题，每小题4分，共24分.把答案填在题中横线上.

#ezexam.question[
已知函数 $f(x)$ 满足 $lim_(x->0)(sqrt(1+f(x)sin 2x)-1)/(e^(3x)-1)=2$，则 $lim_(x->0)f(x)=$#fillin(len: 4em)[].
]

#ezexam.question[
极限 $lim_(n->infinity) 1/n^2 (sin 1/n+2sin 2/n+dots+n sin n/n)=$#fillin(len: 4em)[].
]

#ezexam.question[
设函数 $f(u,v)$ 可微，$z=z(x,y)$ 由方程 $(x+1)z-y^2=x^2 f(x-z,y)$ 确定，则 $dif z|_((0,1))=$ #fillin(len: 3em)[].
]

#ezexam.question[
设 $D={(x,y) bar.v abs(x)<=y<=1,-1<=x<=1}$，则 $integral.double_D x^2 e^(-y^2) dif x dif y=$#fillin(len: 4em)[].
]

#ezexam.question[
行列式 $mat(delim: "|",lambda,-1,0,0;0,lambda,-1,0;0,0,lambda,-1;4,3,2,lambda+1)=$ #fillin(len: 3em)[].
]

#ezexam.question[
设袋中有红、白、黑球各1个，从中有放回地取球，每次取1个，直到三种颜色的球都取到时停止，则取球次数恰好为4的概率为#fillin(len: 4em)[].
]

= 三、解答题：15—23小题，共94分.解答应写出文字说明、证明过程或演算步骤.

#ezexam.question[
（本题满分10分）
求极限 $lim_(x->0)(cos 2x+2x sin x)^(1/x^4)$.
]

#ezexam.question[
（本题满分10分）
设某商品的最大需求量为1200件，该商品的需求函数 $Q=Q(p)$，需求弹性 $eta=p/(120-p)$（$eta>0$），$p$ 为单价（万元）.

（Ⅰ）求需求函数的表达式；

（Ⅱ）求 $p=100$ 万元时的边际收益，并说明其经济意义.
]

#ezexam.question[
（本题满分10分）
设函数 $f(x)=integral_0^1 abs(t^2-x^2) dif t$（$x>0$），求 $f'(x)$，并求 $f(x)$ 的最小值.
]

#ezexam.question[
（本题满分10分）
设函数 $f(x)$ 连续，且满足
$ integral_0^x f(x-t)dif t=integral_0^x(x-t)f(t)dif t+e^(-x)-1, $
求 $f(x)$.
]

#ezexam.question[
（本题满分10分）
求幂级数 $sum_(n=0)^infinity x^(2n+2)/((n+1)(2n+1))$ 的收敛域及和函数.
]

#ezexam.question[
（本题满分11分）
设矩阵 $A=mat(1,1,1-a;1,0,a;a+1,1,a+1)$，$beta=mat(0;1;2a-2)$，且方程组 $A x=beta$ 无解.

（Ⅰ）求 $a$ 的值；

（Ⅱ）求方程组 $A^T A x=A^T beta$ 的通解.
]

#ezexam.question[
（本题满分 11 分）已知矩阵 $A=mat(0,-1,1;2,-3,0;0,0,0)$.

（Ⅰ）求 $A^99$；

（Ⅱ）设 3 阶矩阵 $B=(alpha_1,alpha_2,alpha_3)$ 满足 $B^2=B A$.记 $B^100=(beta_1,beta_2,beta_3)$，将 $beta_1,beta_2,beta_3$ 分别表示为 $alpha_1,alpha_2,alpha_3$ 的线性组合.
]

#ezexam.question[
（本题满分 11 分）设二维随机变量 $(X,Y)$ 在区域 $D={(x,y)|0<x<1,x^2<y<sqrt(x)}$ 上服从均匀分布，令 $U=cases(1 & X<=Y,0 & X>Y)$.

（Ⅰ）写出 $(X,Y)$ 的概率密度；

（Ⅱ）问 $U$ 与 $X$ 是否相互独立？并说明理由；

（Ⅲ）求 $Z=U+X$ 的分布函数 $F(z)$.
]

#ezexam.question[
（本题满分 11 分）设总体 $X$ 的概率密度为
$ f(x;theta)=cases(3x^2/theta^3 & 0<x<theta,0 & "其他"), $
其中 $theta in(0,+infinity)$ 为未知参数，$X_1,X_2,X_3$ 为来自总体 $X$ 的简单随机样本，令 $T=max{X_1,X_2,X_3}$.

（Ⅰ）求 $T$ 的概率密度；

（Ⅱ）确定 $a$，使得 $E(a T)=theta$.
]

