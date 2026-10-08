#import "../template.typ": exam
#show: exam.with(year: 2011, subject: "二", title: "2011年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(true)


= 一、选择题：1—8小题，每小题4分，共32分.在每小题给出的四个选项中，只有一项符合题目要求，把所选项前的字母填在题后的括号内.

#ezexam.question[
已知当 $x->0$ 时，函数 $f(x)=3sin x-sin 3x$ 与 $c x^k$ 是等价无穷小量，则
#choices([$k=1,c=4$.],[$k=1,c=-4$.],[$k=3,c=4$.],[$k=3,c=-4$.])
#ezexam.solution(show-number: false)[
C.
]
]

#ezexam.question[
设函数 $f(x)$ 在 $x=0$ 处可导，且 $f(0)=0$，则 $lim_(x->0)(x^2 f(x)-2f(x^3))/x^3=$
#choices([$-2f'(0)$.],[$-f'(0)$.],[$f'(0)$.],[0.])
#ezexam.solution(show-number: false)[
B.
]
]

#ezexam.question[
函数 $f(x)=ln |(x-1)(x-2)(x-3)|$ 的驻点个数为
#choices([0.],[1.],[2.],[3.])
#ezexam.solution(show-number: false)[
C.
]
]

#ezexam.question[
微分方程 $y''-lambda^2 y=e^(lambda x)+e^(-lambda x)(lambda>0)$ 的特解形式为
#choices([$a(e^(lambda x)+e^(-lambda x))$.],[$a x(e^(lambda x)+e^(-lambda x))$.],[$x(a e^(lambda x)+b e^(-lambda x))$.],[$x^2(a e^(lambda x)+b e^(-lambda x))$.])
#ezexam.solution(show-number: false)[
C.
]
]

#ezexam.question[
设函数 $f(x),g(x)$ 均有二阶连续导数，满足 $f(0)>0,g(0)<0$，且 $f'(0)=g'(0)=0$，则函数 $z=f(x)g(y)$ 在点 $(0,0)$ 处取得极小值的一个充分条件是
#choices([$f''(0)<0,g''(0)>0$.],[$f''(0)<0,g''(0)<0$.],[$f''(0)>0,g''(0)>0$.],[$f''(0)>0,g''(0)<0$.])
#ezexam.solution(show-number: false)[
A.
]
]

#ezexam.question[
设 $I=integral_0^(pi/4)ln(sin x)dif x,J=integral_0^(pi/4)ln(cot x)dif x,K=integral_0^(pi/4)ln(cos x)dif x$，则 $I,J,K$ 的大小关系为
#choices([$I<J<K$.],[$I<K<J$.],[$J<I<K$.],[$K<I<J$.])
#ezexam.solution(show-number: false)[
B.
]
]

#ezexam.question[
设 $A$ 为3阶矩阵，将 $A$ 的第2列加到第1列得矩阵 $B$，再交换 $B$ 的第2行与第3行得单位矩阵.记
$ P_1=mat(1,0,0;1,1,0;0,0,1),quad P_2=mat(1,0,0;0,0,1;0,1,0), $
则 $A=$
#choices([$P_1 P_2$.],[$P_1^(-1)P_2$.],[$P_2 P_1$.],[$P_2 P_1^(-1)$.])
#ezexam.solution(show-number: false)[
D.
]
]

#ezexam.question[
设 $A=(alpha_1,alpha_2,alpha_3,alpha_4)$ 是4阶矩阵，$A^*$ 为 $A$ 的伴随矩阵.若 $(1,0,1,0)^T$ 是方程组 $A x=0$ 的一个基础解系，则 $A^* x=0$ 的基础解系可为
#choices([$alpha_1,alpha_3$.],[$alpha_1,alpha_2$.],[$alpha_1,alpha_2,alpha_3$.],[$alpha_2,alpha_3,alpha_4$.])
#ezexam.solution(show-number: false)[
D.
]
]

= 二、填空题：9—14小题，每小题4分，共24分.把答案填在题中横线上.

#ezexam.question[
$lim_(x->0)((1+2^x)/2)^(1/x)=$ #fillin(len: 1.98438em)[].
#ezexam.solution(show-number: false)[
$sqrt(2)$.
]
]

#ezexam.question[
微分方程 $y'+y=e^(-x)cos x$ 满足条件 $y(0)=0$ 的解为 $y=$ #fillin(len: 1.98438em)[].
#ezexam.solution(show-number: false)[
$e^(-x)sin x$.
]
]

#ezexam.question[
曲线 $y=integral_0^x tan t dif t(0<=x<=pi/4)$ 的弧长 $s=$ #fillin(len: 1.98438em)[].
#ezexam.solution(show-number: false)[
$ln(1+sqrt(2))$.
]
]

#ezexam.question[
设函数 $f(x)=cases(lambda e^(-lambda x) & x>0,0 & x<=0),lambda>0$，则 $integral_(-infinity)^(+infinity)x f(x)dif x=$ #fillin(len: 1.98438em)[].
#ezexam.solution(show-number: false)[
$1/lambda$.
]
]

#ezexam.question[
设平面区域 $D$ 由直线 $y=x$，圆 $x^2+y^2=2y$ 及 $y$ 轴所围成，则二重积分 $integral.double_D x y dif sigma=$ #fillin(len: 1.98438em)[].
#ezexam.solution(show-number: false)[
$7/12$.
]
]

#ezexam.question[
二次型 $f(x_1,x_2,x_3)=x_1^2+3x_2^2+x_3^2+2x_1 x_2+2x_1 x_3+2x_2 x_3$，则 $f$ 的正惯性指数为 #fillin(len: 1.98438em)[].
#ezexam.solution(show-number: false)[
2.
]
]

= 三、解答题：15—23小题，共94分.解答应写出文字说明、证明过程或演算步骤.

#ezexam.question[
（本题满分10分）已知函数 $F(x)=(integral_0^x ln(1+t^2)dif t)/x^alpha$.设 $lim_(x->+infinity)F(x)=lim_(x->0^+)F(x)=0$，求 $alpha$ 的取值范围.
#ezexam.solution(show-number: false)[
解　因为
$ lim_(x->+infinity)F(x)=lim_(x->+infinity)(integral_0^x ln(1+t^2)dif t)/x^alpha $
$ =lim_(x->+infinity)(ln(1+x^2))/(alpha x^(alpha-1)) $
$ =lim_(x->+infinity)((2x^2)/(1+x^2))/(alpha(alpha-1)x^(alpha-1)) $
$ =2/(alpha(alpha-1))lim_(x->+infinity)1/x^(alpha-1), $
由题意 $lim_(x->+infinity)F(x)=0$，得 $alpha>1$.
又因为
$ lim_(x->0^+)F(x)=lim_(x->0^+)(integral_0^x ln(1+t^2)dif t)/x^alpha=lim_(x->0^+)(ln(1+x^2))/(alpha x^(alpha-1)) $
$ =lim_(x->0^+)x^2/(alpha x^(alpha-1))=1/alpha lim_(x->0^+)x^(3-alpha), $
由题意 $lim_(x->0^+)F(x)=0$，得 $alpha<3$.
综上所述，$1<alpha<3$.
]
]

#ezexam.question[
（本题满分11分）设函数 $y=y(x)$ 由参数方程
$ cases(x=1/3 t^3+t+1/3,y=1/3 t^3-t+1/3) $
确定，求 $y=y(x)$ 的极值和曲线 $y=y(x)$ 的凹凸区间及拐点.
#ezexam.solution(show-number: false)[
解　令 $ (dif y)/(dif x)=(t^2-1)/(t^2+1)=0 $，得 $t=plus.minus 1$.
当 $t=1$ 时，$x=5/3$；当 $t=-1$ 时，$x=-1$.
令
$ (dif^2 y)/(dif x^2)=((4t)/(t^2+1)^2)/(t^2+1)=(4t)/(t^2+1)^3=0, $
得 $t=0$，即 $x=1/3$.
列表如下：
#table(columns:8,[$t$],[$(-infinity,-1)$],[−1],[$(-1,0)$],[0],[$(0,1)$],[1],[$(1,+infinity)$],[$x$],[$(-infinity,-1)$],[−1],[$(-1,1/3)$],[$1/3$],[$(1/3,5/3)$],[$5/3$],[$(5/3,+infinity)$],[$y'$],[+],[0],[−],[−],[−],[0],[+],[$y''$],[−],[−],[−],[0],[+],[+],[+])
由此可知，函数 $y(x)$ 的极大值为 $y(-1)=y|_(t=-1)=1$，极小值为 $y(5/3)=y|_(t=1)=-1/3$.
曲线 $y=y(x)$ 的凹区间为 $(1/3,+infinity)$，凸区间为 $(-infinity,1/3)$.
由于 $y(1/3)=y|_(t=0)=1/3$，所以曲线 $y=y(x)$ 的拐点为 $(1/3,1/3)$.
]
]

#ezexam.question[
（本题满分9分）设函数 $z=f(x y,y g(x))$，其中函数 $f$ 具有二阶连续偏导数，函数 $g(x)$ 可导，且在 $x=1$ 处取得极值 $g(1)=1$.求 $((partial^2 z)/(partial x partial y))|_((x=1,y=1))$.
#ezexam.solution(show-number: false)[
解　由题意 $g'(1)=0$.
因为
$ (partial z)/(partial x)=y f'_1+y g'(x)f'_2, $
$ (partial^2 z)/(partial x partial y)=f'_1+y[x f''_(11)+g(x)f''_(12)]+g'(x)f'_2+y g'(x)[x f''_(21)+g(x)f''_(22)], $
所以
$ ((partial^2 z)/(partial x partial y))|_((x=1,y=1))=f'_1(1,1)+f''_(11)(1,1)+f''_(12)(1,1). $
]
]

#ezexam.question[
（本题满分10分）设函数 $y(x)$ 具有二阶导数，且曲线 $l:y=y(x)$ 与直线 $y=x$ 相切于原点.记 $alpha$ 为曲线 $l$ 在点 $(x,y)$ 处切线的倾角，若 $(dif alpha)/(dif x)=(dif y)/(dif x)$，求 $y(x)$ 的表达式.
#ezexam.solution(show-number: false)[
解　由于 $y'=tan alpha$，即 $alpha=arctan y'$，所以
$ (dif alpha)/(dif x)=y''/(1+y'^2), $
于是有 $y''/(1+y'^2)=y'$，即
$ y''=y'(1+y'^2). quad "①" $
令 $y'=p$，则 $y''=p'$，代入①式得 $p'=p(1+p^2)$，分离变量得
$ (dif p)/(p(1+p^2))=dif x, $
两边积分得
$ ln(p^2/(1+p^2))=2x+ln C_1. quad "②" $
由题意 $y'(0)=1$，即当 $x=0$ 时 $p=1$，代入②式得 $C_1=1/2$，于是有
$ y'=p=(e^x/sqrt(2))/sqrt(1-1/2 e^(2x)), $
两边积分得
$ y=integral(e^x/sqrt(2))/sqrt(1-(e^x/sqrt(2))^2)dif x=arcsin(e^x/sqrt(2))+C_2, $
由 $y(0)=0$ 得 $C_2=-pi/4$，所以
$ y=arcsin(e^x/sqrt(2))-pi/4. $
]
]

#ezexam.question[
（本题满分10分）
（Ⅰ）证明：对任意的正整数 $n$，都有 $1/(n+1)<ln(1+1/n)<1/n$ 成立.
（Ⅱ）设 $a_n=1+1/2+dots+1/n-ln n(n=1,2,dots)$，证明数列 ${a_n}$ 收敛.
#ezexam.solution(show-number: false)[
证　（Ⅰ）根据拉格朗日中值定理，存在 $xi in (n,n+1)$，使得
$ ln(1+1/n)=ln(n+1)-ln n=1/xi, $
所以
$ 1/(n+1)<ln(1+1/n)=1/xi<1/n. $
（Ⅱ）当 $n>=1$ 时，由（Ⅰ）知
$ a_(n+1)-a_n=1/(n+1)-ln(1+1/n)<0, $
且
$ a_n=1+1/2+dots+1/n-ln n $
$ >ln(1+1)+ln(1+1/2)+dots+ln(1+1/n)-ln n $
$ =ln(1+n)-ln n>0, $
所以数列 ${a_n}$ 单调减少且有下界，故 ${a_n}$ 收敛.
]
]

#ezexam.question[
（本题满分11分）一容器的内侧是由图中曲线绕 $y$ 轴旋转一周而成的曲面，该曲线由 $x^2+y^2=2y(y>=1/2)$ 与 $x^2+y^2=1(y<=1/2)$ 连接而成.
#import "@preview/cetz:0.3.4": canvas, draw
#canvas({
 import draw: *
 line((-1.4,0),(1.9,0),mark:(end:">"));line((0,-1.3),(0,2.5),mark:(end:">"))
 for (center,start,end) in (((0,0),30deg,150deg),((0,1),210deg,330deg)){arc((rel:(calc.cos(start),calc.sin(start)),to:center),start:start,stop:end,radius:1,stroke:(dash:"dashed"))}
 arc((calc.cos(150deg),.5),start:150deg,stop:390deg,radius:1)
 arc((calc.cos(330deg),.5),start:330deg,stop:570deg,radius:1)
 line((-.866,.5),(.866,.5),stroke:(dash:"dashed"))
 for (pos,label) in (((-.15,-.15),$O$),((1.1,-.15),[1]),((-1.1,-.15),[−1]),((-.16,-1),[−1]),((-.15,1),[1]),((-.15,2),[2]),((-.2,.5),$1/2$),((1.9,-.15),$x$),((-.2,2.5),$y$),((1.5,1.7),$x^2+y^2=2y$),((1.5,-.7),$x^2+y^2=1$)){content(pos,label)}
})
（Ⅰ）求容器的容积；
（Ⅱ）若将容器内盛满的水从容器顶部全部抽出，至少需要做多少功？
（长度单位：m，重力加速度为 $g$ m/s²，水的密度为 $10^3$ kg/m³）
#ezexam.solution(show-number: false)[
解　（Ⅰ）由对称性，所求的容积为
$ V=2pi integral_(-1)^(1/2)x^2 dif y=2pi integral_(-1)^(1/2)(1-y^2)dif y=(9pi)/4, $
即该容器的容积为 $ (9pi)/4 $ m³.
（Ⅱ）所求的功为
$ W=10^3 integral_(-1)^(1/2)pi(1-y^2)(2-y)g dif y+10^3 integral_(1/2)^2 pi[1-(y-1)^2](2-y)g dif y $
$ =10^3 pi g[integral_(-1)^(1/2)(2-y-2y^2+y^3)dif y+integral_(1/2)^2(4y-4y^2+y^3)dif y] $
$ =(27 times 10^3)/8 pi g, $
即所求的功为 $ (27 times 10^3)/8 pi g $ J.
]
]

#ezexam.question[
（本题满分11分）已知函数 $f(x,y)$ 具有二阶连续偏导数，且 $f(1,y)=0,f(x,1)=0,integral.double_D f(x,y)dif x dif y=a$，其中 $D={(x,y)|0<=x<=1,0<=y<=1}$.计算二重积分 $I=integral.double_D x y f''_(x y)(x,y)dif x dif y$.
#ezexam.solution(show-number: false)[
解　因为 $f(1,y)=0,f(x,1)=0$，所以
$ f'_y(1,y)=0,quad f'_x(x,1)=0, $
从而
$ I=integral_0^1 x dif x integral_0^1 y f''_(x y)(x,y)dif y $
$ =integral_0^1 x[y f'_x(x,y)|_(y=0)^(y=1)-integral_0^1 f'_x(x,y)dif y]dif x $
$ =-integral_0^1 dif y integral_0^1 x f'_x(x,y)dif x $
$ =-integral_0^1[x f(x,y)|_(x=0)^(x=1)-integral_0^1 f(x,y)dif x]dif y $
$ =integral_0^1 dif y integral_0^1 f(x,y)dif x=a. $
]
]

#ezexam.question[
（本题满分11分）设向量组 $alpha_1=(1,0,1)^T,alpha_2=(0,1,1)^T,alpha_3=(1,3,5)^T$ 不能由向量组 $beta_1=(1,1,1)^T,beta_2=(1,2,3)^T,beta_3=(3,4,a)^T$ 线性表示.
（Ⅰ）求 $a$ 的值；
（Ⅱ）将 $beta_1,beta_2,beta_3$ 用 $alpha_1,alpha_2,alpha_3$ 线性表示.
#ezexam.solution(show-number: false)[
解　（Ⅰ）4个3维向量 $beta_1,beta_2,beta_3,alpha_i$ 线性相关 $(i=1,2,3)$，若 $beta_1,beta_2,beta_3$ 线性无关，则 $alpha_i$ 可由 $beta_1,beta_2,beta_3$ 线性表示 $(i=1,2,3)$，与题设矛盾，于是 $beta_1,beta_2,beta_3$ 线性相关.从而
$ |beta_1,beta_2,beta_3|=det(1,1,3;1,2,4;1,3,a)=a-5=0, $
于是 $a=5$.此时，$alpha_1$ 不能由向量组 $beta_1,beta_2,beta_3$ 线性表示.
（Ⅱ）令 $A=(alpha_1,alpha_2,alpha_3;beta_1,beta_2,beta_3)$，对 $A$ 施以初等行变换：
$ A=mat(1,0,1,1,1,3;0,1,3,1,2,4;1,1,5,1,3,5,augment:#3)->mat(1,0,0,2,1,5;0,1,0,4,2,10;0,0,1,-1,0,-2,augment:#3), $
从而
$ beta_1=2alpha_1+4alpha_2-alpha_3,quad beta_2=alpha_1+2alpha_2,quad beta_3=5alpha_1+10alpha_2-2alpha_3. $
]
]

#ezexam.question[
（本题满分11分）设 $A$ 为3阶实对称矩阵，$A$ 的秩为2，且
$ A mat(1,1;0,0;-1,1)=mat(-1,1;0,0;1,1). $
（Ⅰ）求 $A$ 的所有特征值与特征向量；
（Ⅱ）求矩阵 $A$.
#ezexam.solution(show-number: false)[
解　（Ⅰ）由于 $A$ 的秩为2，故0是 $A$ 的一个特征值.由题设可得
$ A vec(1,0,-1)=-vec(1,0,-1),quad A vec(1,0,1)=vec(1,0,1). $
所以 −1 是 $A$ 的一个特征值，且属于 −1 的特征向量为 $k_1 vec(1,0,-1)$，$k_1$ 为任意非零常数；1也是 $A$ 的一个特征值，且属于1的特征向量为 $k_2 vec(1,0,1)$，$k_2$ 为任意非零常数.
设 $vec(x_1,x_2,x_3)$ 是 $A$ 的属于0的特征向量，由于 $A$ 为实对称矩阵，则
$ (1,0,-1)vec(x_1,x_2,x_3)=0,quad (1,0,1)vec(x_1,x_2,x_3)=0, $
即 $cases(x_1-x_3=0,x_1+x_3=0)$，于是属于0的特征向量为 $k_3 vec(0,1,0)$，$k_3$ 为任意非零常数.
（Ⅱ）令 $P=mat(1,1,0;0,0,1;-1,1,0)$，则 $P^(-1)A P=mat(-1,0,0;0,1,0;0,0,0)$，于是
$ A=P mat(-1,0,0;0,1,0;0,0,0)P^(-1) $
$ =mat(1,1,0;0,0,1;-1,1,0)mat(-1,0,0;0,1,0;0,0,0)mat(1/2,0,-1/2;1/2,0,1/2;0,1,0) $
$ =mat(0,0,1;0,0,0;1,0,0). $
]
]

