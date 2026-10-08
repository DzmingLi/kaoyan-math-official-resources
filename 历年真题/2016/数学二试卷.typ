#import "../template.typ": exam
#show: exam.with(year: 2016, subject: "二")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)


= 一、选择题：1—8小题，每小题4分，共32分.在每小题给出的四个选项中，只有一项符合题目要求，把所选项前的字母填在题后的括号内.

#ezexam.question[
设 $alpha_1=x(cos sqrt(x)-1)$，$alpha_2=sqrt(x) ln(1+root(3,x))$，$alpha_3=root(3,x+1)-1$.当 $x->0^+$ 时，以上三个无穷小量按照从低阶到高阶的排序是（　）.
#choices([$alpha_1,alpha_2,alpha_3$],[$alpha_2,alpha_3,alpha_1$],[$alpha_2,alpha_1,alpha_3$],[$alpha_3,alpha_2,alpha_1$])
]

#ezexam.question[
已知函数 $f(x)=cases(2(x-1)&x<1,ln x&x>=1)$，则 $f(x)$ 的一个原函数是（　）.
#choices([$F(x)=cases((x-1)^2&x<1,x(ln x-1)&x>=1)$],[$F(x)=cases((x-1)^2&x<1,x(ln x+1)-1&x>=1)$],[$F(x)=cases((x-1)^2&x<1,x(ln x+1)+1&x>=1)$],[$F(x)=cases((x-1)^2&x<1,x(ln x-1)+1&x>=1)$])
]

#ezexam.question[
反常积分① $integral_(-infinity)^0 1/x^2 e^(1/x) dif x$，② $integral_0^(+infinity) 1/x^2 e^(1/x) dif x$ 的敛散性为（　）.
#choices([①收敛，②收敛.],[①收敛，②发散.],[①发散，②收敛.],[①发散，②发散.])
]

#ezexam.question[
函数 $f(x)$ 在 $(-infinity,+infinity)$ 内连续，其导函数的图形如图所示，则（　）.
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
设函数 $f_i(x)$（$i=1,2$）具有二阶连续导数，且 $f_i''(x_0)<0$（$i=1,2$）.若两条曲线 $y=f_i(x)$（$i=1,2$）在点 $(x_0,y_0)$ 处具有公切线 $y=g(x)$，且在该点处曲线 $y=f_1(x)$ 的曲率大于曲线 $y=f_2(x)$ 的曲率，则在 $x_0$ 的某个邻域内，有（　）.
#choices([$f_1(x)<=f_2(x)<=g(x)$],[$f_2(x)<=f_1(x)<=g(x)$],[$f_1(x)<=g(x)<=f_2(x)$],[$f_2(x)<=g(x)<=f_1(x)$])
]

#ezexam.question[
已知函数 $f(x,y)=e^x/(x-y)$，则（　）.
#choices([$f_x'-f_y'=0$],[$f_x'+f_y'=0$],[$f_x'-f_y'=f$],[$f_x'+f_y'=f$])
]

#ezexam.question[
设 $A,B$ 是可逆矩阵，且 $A$ 与 $B$ 相似，则下列结论错误的是（　）.
#choices([$A^T$ 与 $B^T$ 相似.],[$A^(-1)$ 与 $B^(-1)$ 相似.],[$A+A^T$ 与 $B+B^T$ 相似.],[$A+A^(-1)$ 与 $B+B^(-1)$ 相似.])
]

#ezexam.question[
设二次型 $f(x_1,x_2,x_3)=a(x_1^2+x_2^2+x_3^2)+2x_1 x_2+2x_2 x_3+2x_1 x_3$ 的正、负惯性指数分别为1、2，则（　）.
#choices([$a>1$],[$a<-2$],[$-2<a<1$],[$a=1$ 或 $a=-2$])
]

= 二、填空题：9—14小题，每小题4分，共24分.把答案填在题中横线上.

#ezexam.question[
曲线 $y=x^3/(1+x^2)+arctan(1+x^2)$ 的斜渐近线方程为#fillin(len: 4em)[].
]

#ezexam.question[
极限 $lim_(n->infinity) 1/n^2 (sin 1/n+2sin 2/n+dots+n sin n/n)=$#fillin(len: 4em)[].
]

#ezexam.question[
以 $y=x^2-e^x$ 和 $y=x^2$ 为特解的一阶非齐次线性微分方程为#fillin(len: 4em)[].
]

#ezexam.question[
已知函数 $f(x)$ 在 $(-infinity,+infinity)$ 上连续，且 $f(x)=(x+1)^2+2integral_0^x f(t) dif t$，则当 $n>=2$ 时，$f^((n))(0)=$#fillin(len: 4em)[].
]

#ezexam.question[
已知动点 $P$ 在曲线 $y=x^3$ 上运动，记坐标原点与点 $P$ 间的距离为 $l$.若点 $P$ 的横坐标对时间的变化率为常数 $v_0$，则当点 $P$ 运动到点 $(1,1)$ 时，$l$ 对时间的变化率是#fillin(len: 4em)[].
]

#ezexam.question[
设矩阵 $mat(a,-1,-1;-1,a,-1;-1,-1,a)$ 与 $mat(1,1,0;0,-1,1;1,0,1)$ 等价，则 $a=$#fillin(len: 4em)[].
]

= 三、解答题：15—23小题，共94分.解答应写出文字说明、证明过程或演算步骤.

#ezexam.question[
（本题满分10分）
求极限 $lim_(x->0)(cos 2x+2x sin x)^(1/x^4)$.
]

#ezexam.question[
（本题满分10分）
设函数 $f(x)=integral_0^1 abs(t^2-x^2) dif t$（$x>0$），求 $f'(x)$，并求 $f(x)$ 的最小值.
]

#ezexam.question[
（本题满分10分）
已知函数 $z=z(x,y)$ 由方程 $(x^2+y^2)z+ln z+2(x+y+1)=0$ 确定，求 $z=z(x,y)$ 的极值.
]

#ezexam.question[
（本题满分10分）
设 $D$ 是由直线 $y=1$，$y=x$，$y=-x$ 围成的有界区域，计算二重积分 $integral.double_D (x^2-x y-y^2)/(x^2+y^2) dif x dif y$.
]

#ezexam.question[
（本题满分10分）
已知 $y_1(x)=e^x$，$y_2(x)=u(x)e^x$ 是二阶微分方程
$ (2x-1)y''-(2x+1)y'+2y=0 $
的两个解.若 $u(-1)=e$，$u(0)=-1$，求 $u(x)$，并写出该微分方程的通解.
]

#ezexam.question[
（本题满分11分）
设 $D$ 是由曲线 $y=sqrt(1-x^2)$（$0<=x<=1$）与 $cases(x=cos^3 t,y=sin^3 t)$（$0<=t<=pi/2$）围成的平面区域，求 $D$ 绕 $x$ 轴旋转一周所得旋转体的体积和表面积.
]

#ezexam.question[
（本题满分11分）
已知函数 $f(x)$ 在 $[0,3pi/2]$ 上连续，在 $(0,3pi/2)$ 内是函数 $cos x/(2x-3pi)$ 的一个原函数，且 $f(0)=0$.

（Ⅰ）求 $f(x)$ 在区间 $[0,3pi/2]$ 上的平均值；

（Ⅱ）证明 $f(x)$ 在区间 $(0,3pi/2)$ 内存在唯一零点.
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

