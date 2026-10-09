#import "../template.typ": exam
#show: exam.with(year: 2015, subject: "一")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)


= 一、选择题：1—8小题，每小题4分，共32分. 在每小题给出的四个选项中，只有一项符合题目要求，把所选项前的字母填在题后的括号内.

#ezexam.question[
设函数 $f(x)$ 在 $(-infinity,+infinity)$ 内连续，其 2 阶导数 $f''(x)$ 的图形如图所示，则曲线 $y=f(x)$ 的拐点个数为

#import "@preview/cetz:0.5.2": canvas, draw
#canvas(length: 1cm, {
 import draw: *
 line((-2.2,0),(2.3,0),mark:(end: ">"))
 line((0,-1.3),(0,3.3),mark:(end: ">"))
 bezier((-1.7,1.5),(-0.85,0),(-1.65,0.3),(-1.15,0))
 bezier((-0.85,0),(-0.2,2.4),(-0.4,0),(-0.25,1.2))
 bezier((0.08,-1.25),(1.7,1.35),(0.25,0.4),(0.8,0.9))
 content((-0.85,-0.22),$O$)
 content((2.4,-0.15),$x$)
 content((-0.1,3.5),$f''(x)$)
})
#choices([0.], [1.], [2.], [3.])
]

#ezexam.question[
设 $y=1/2 e^(2x)+(x-1/3)e^x$ 是二阶常系数非齐次线性微分方程 $y''+a y'+b y=c e^x$ 的一个特解，则
#choices([$a=-3,b=2,c=-1$.], [$a=3,b=2,c=-1$.], [$a=-3,b=2,c=1$.], [$a=3,b=2,c=1$.])
]

#ezexam.question[
若级数 $sum_(n=1)^infinity a_n$ 条件收敛，则 $x=sqrt(3)$ 与 $x=3$ 依次为幂级数 $sum_(n=1)^infinity n a_n(x-1)^n$ 的
#choices([收敛点，收敛点.], [收敛点，发散点.], [发散点，收敛点.], [发散点，发散点.])
]

#ezexam.question[
设 $D$ 是第一象限中由曲线 $2x y=1,4x y=1$ 与直线 $y=x,y=sqrt(3)x$ 围成的平面区域，函数 $f(x,y)$ 在 $D$ 上连续，则 $integral.double_D f(x,y)dif x dif y=$
#choices([$integral_(pi/4)^(pi/3)dif theta integral_(1/(2sin 2theta))^(1/(sin 2theta)) f(r cos theta,r sin theta)dif r$.], [$integral_(pi/4)^(pi/3)dif theta integral_(1/sqrt(2sin 2theta))^(1/sqrt(sin 2theta)) r f(r cos theta,r sin theta)dif r$.], [$integral_(pi/4)^(pi/3)dif theta integral_(1/(2sin 2theta))^(1/(sin 2theta)) r f(r cos theta,r sin theta)dif r$.], [$integral_(pi/4)^(pi/3)dif theta integral_(1/sqrt(2sin 2theta))^(1/sqrt(sin 2theta)) f(r cos theta,r sin theta)dif r$.])
]

#ezexam.question[
设矩阵 $A=mat(1,1,1;1,2,a;1,4,a^2),b=mat(1;d;d^2)$，若集合 $Omega={1,2}$，则线性方程组 $A x=b$ 有无穷多解的充分必要条件为
#choices([$a in.not Omega,d in.not Omega$.], [$a in.not Omega,d in Omega$.], [$a in Omega,d in.not Omega$.], [$a in Omega,d in Omega$.])
]

#ezexam.question[
设二次型 $f(x_1,x_2,x_3)$ 在正交变换 $x=P y$ 下的标准形为 $2y_1^2+y_2^2-y_3^2$，其中 $P=(e_1,e_2,e_3)$.若 $Q=(e_1,-e_3,e_2)$，则 $f(x_1,x_2,x_3)$ 在正交变换 $x=Q y$ 下的标准形为
#choices([$2y_1^2-y_2^2+y_3^2$.], [$2y_1^2+y_2^2-y_3^2$.], [$2y_1^2-y_2^2-y_3^2$.], [$2y_1^2+y_2^2+y_3^2$.])
]

#ezexam.question[
若 $A,B$ 为任意两个随机事件，则
#choices([$P(A B)<=P(A)P(B)$.], [$P(A B)>=P(A)P(B)$.], [$P(A B)<=(P(A)+P(B))/2$.], [$P(A B)>=(P(A)+P(B))/2$.])
]

#ezexam.question[
设随机变量 $X,Y$ 不相关，且 $E X=2,E Y=1,D X=3$，则 $E[X(X+Y-2)]=$
#choices([$-3$.], [$3$.], [$-5$.], [$5$.])
]

= 二、填空题：9—14小题，每小题4分，共24分. 把答案填在题中横线上.

#ezexam.question[
$lim_(x->0)(ln(cos x))/x^2=$ #fillin(len: 3em)[].
]

#ezexam.question[
$integral_(-pi/2)^(pi/2)((sin x)/(1+cos x)+abs(x))dif x=$ #fillin(len: 3em)[].
]

#ezexam.question[
若函数 $z=z(x,y)$ 由方程 $e^z+x y z+x+cos x=2$ 确定，则 $dif z|_((0,1))=$ #fillin(len: 3em)[].
]

#ezexam.question[
设 $Omega$ 是由平面 $x+y+z=1$ 与三个坐标平面所围成的空间区域，则 $integral.triple_Omega(x+2y+3z)dif x dif y dif z=$ #fillin(len: 3em)[].
]

#ezexam.question[
$n$ 阶行列式
$ mat(delim: "|",2,0,dots,0,2;-1,2,dots,0,2;dots.v,dots.v,,dots.v,dots.v;0,0,dots,2,2;0,0,dots,-1,2)= $ #fillin(len: 3em)[].
]

#ezexam.question[
设二维随机变量 $(X,Y)$ 服从正态分布 $N(1,0;1,1;0)$，则 $P{X Y-Y<0}=$ #fillin(len: 3em)[].
]

= 三、解答题：15—23小题，共94分. 解答应写出文字说明、证明过程或演算步骤.

#ezexam.question[
（本题满分 10 分）设函数 $f(x)=x+a ln(1+x)+b x sin x,g(x)=k x^3$，若 $f(x)$ 与 $g(x)$ 在 $x->0$ 时是等价无穷小，求 $a,b,k$ 的值.
]

#ezexam.question[
（本题满分 10 分）设函数 $f(x)$ 在定义域 $I$ 上的导数大于零.若对任意的 $x_0 in I$，曲线 $y=f(x)$ 在点 $(x_0,f(x_0))$ 处的切线与直线 $x=x_0$ 及 $x$ 轴所围成区域的面积为 4，且 $f(0)=2$，求 $f(x)$ 的表达式.
]

#ezexam.question[
（本题满分 10 分）已知函数 $f(x,y)=x+y+x y$，曲线 $C:x^2+y^2+x y=3$，求 $f(x,y)$ 在曲线 $C$ 上的最大方向导数.
]

#ezexam.question[
（本题满分 10 分）

（Ⅰ）设函数 $u(x),v(x)$ 可导，利用导数定义证明 $[u(x)v(x)]'=u'(x)v(x)+u(x)v'(x)$；

（Ⅱ）设函数 $u_1(x),u_2(x),dots,u_n(x)$ 可导，$f(x)=u_1(x)u_2(x)dots u_n(x)$，写出 $f(x)$ 的求导公式.
]

#ezexam.question[
（本题满分 10 分）已知曲线 $L$ 的方程为 $cases(z=sqrt(2-x^2-y^2),z=x)$，起点为 $A(0,sqrt(2),0)$，终点为 $B(0,-sqrt(2),0)$，计算曲线积分
$ I=integral_L(y+z)dif x+(z^2-x^2+y)dif y+x^2 y^2 dif z. $
]

#ezexam.question[
（本题满分 11 分）设向量组 $alpha_1,alpha_2,alpha_3$ 为 $bold(upright(R))^3$ 的一个基，$beta_1=2alpha_1+2k alpha_3,beta_2=2alpha_2,beta_3=alpha_1+(k+1)alpha_3$.

（Ⅰ）证明向量组 $beta_1,beta_2,beta_3$ 为 $bold(upright(R))^3$ 的一个基；

（Ⅱ）当 $k$ 为何值时，存在非零向量 $xi$ 在基 $alpha_1,alpha_2,alpha_3$ 与基 $beta_1,beta_2,beta_3$ 下的坐标相同，并求所有的 $xi$.
]

#ezexam.question[
（本题满分 11 分）设矩阵 $A=mat(0,2,-3;-1,3,-3;1,-2,a)$ 相似于矩阵 $B=mat(1,-2,0;0,b,0;0,3,1)$.

（Ⅰ）求 $a,b$ 的值；

（Ⅱ）求可逆矩阵 $P$，使 $P^(-1)A P$ 为对角矩阵.
]

#ezexam.question[
（本题满分 11 分）设随机变量 $X$ 的概率密度为
$ f(x)=cases(2^(-x)ln 2 & x>0,0 & x<=0). $
对 $X$ 进行独立重复的观测，直到第 2 个大于 3 的观测值出现时停止，记 $Y$ 为观测次数.

（Ⅰ）求 $Y$ 的概率分布；

（Ⅱ）求 $E Y$.
]

#ezexam.question[
（本题满分 11 分）设总体 $X$ 的概率密度为
$ f(x;theta)=cases(1/(1-theta) & theta<=x<=1,0 & "其他"), $
其中 $theta$ 为未知参数，$X_1,X_2,dots,X_n$ 为来自该总体的简单随机样本.

（Ⅰ）求 $theta$ 的矩估计量；

（Ⅱ）求 $theta$ 的最大似然估计量.
]

