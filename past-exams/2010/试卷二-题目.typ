#import "../template.typ": exam
#show: exam.with(year: 2010, subject: "二", title: "2010年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)


= 一、选择题：1—8小题，每小题4分，共32分.在每小题给出的四个选项中，只有一项符合题目要求，把所选项前的字母填在题后的括号内.

#ezexam.question[
函数 $f(x)=(x^2-x)/(x^2-1)sqrt(1+1/x^2)$ 的无穷间断点的个数为
#choices([0.],[1.],[2.],[3.])
]

#ezexam.question[
设 $y_1,y_2$ 是一阶线性非齐次微分方程 $y'+p(x)y=q(x)$ 的两个特解，若常数 $lambda,mu$ 使 $lambda y_1+mu y_2$ 是该方程的解，$lambda y_1-mu y_2$ 是该方程对应的齐次方程的解，则
#choices([$lambda=1/2,mu=1/2$.],[$lambda=-1/2,mu=-1/2$.],[$lambda=2/3,mu=1/3$.],[$lambda=2/3,mu=2/3$.])
]

#ezexam.question[
曲线 $y=x^2$ 与曲线 $y=a ln x(a!=0)$ 相切，则 $a=$
#choices([$4e$.],[$3e$.],[$2e$.],[$e$.])
]

#ezexam.question[
设 $m,n$ 均是正整数，则反常积分 $integral_0^1 (root(m,ln^2(1-x)))/(root(n,x))dif x$ 的收敛性
#choices([仅与 $m$ 的取值有关.],[仅与 $n$ 的取值有关.],[与 $m,n$ 的取值都有关.],[与 $m,n$ 的取值都无关.])
]

#ezexam.question[
设函数 $z=z(x,y)$ 由方程 $F(y/x,z/x)=0$ 确定，其中 $F$ 为可微函数，且 $F'_2!=0$，则 $x(partial z)/(partial x)+y(partial z)/(partial y)=$
#choices([$x$.],[$z$.],[$-x$.],[$-z$.])
]

#ezexam.question[
$lim_(n->infinity)sum_(i=1)^n sum_(j=1)^n n/((n+i)(n^2+j^2))=$
#choices([$integral_0^1 dif x integral_0^x 1/((1+x)(1+y^2))dif y$.],[$integral_0^1 dif x integral_0^x 1/((1+x)(1+y))dif y$.],[$integral_0^1 dif x integral_0^1 1/((1+x)(1+y))dif y$.],[$integral_0^1 dif x integral_0^1 1/((1+x)(1+y^2))dif y$.])
]

#ezexam.question[
设向量组Ⅰ：$alpha_1,alpha_2,dots,alpha_r$ 可由向量组Ⅱ：$beta_1,beta_2,dots,beta_s$ 线性表示.下列命题正确的是
#choices([若向量组Ⅰ线性无关，则 $r<=s$.],[若向量组Ⅰ线性相关，则 $r>s$.],[若向量组Ⅱ线性无关，则 $r<=s$.],[若向量组Ⅱ线性相关，则 $r>s$.])
]

#ezexam.question[
设 $A$ 为4阶实对称矩阵，且 $A^2+A=O$.若 $A$ 的秩为3，则 $A$ 相似于
#choices([$mat(1,0,0,0;0,1,0,0;0,0,1,0;0,0,0,0)$.],[$mat(1,0,0,0;0,1,0,0;0,0,-1,0;0,0,0,0)$.],[$mat(1,0,0,0;0,-1,0,0;0,0,-1,0;0,0,0,0)$.],[$mat(-1,0,0,0;0,-1,0,0;0,0,-1,0;0,0,0,0)$.])
]

= 二、填空题：9—14小题，每小题4分，共24分.把答案填在题中横线上.

#ezexam.question[
3阶常系数线性齐次微分方程 $y'''-2y''+y'-2y=0$ 的通解为 $y=$ #fillin(len: 1.98438em)[].
]

#ezexam.question[
曲线 $y=(2x^3)/(x^2+1)$ 的渐近线方程为 #fillin(len: 1.98438em)[].
]

#ezexam.question[
函数 $y=ln(1-2x)$ 在 $x=0$ 处的 $n$ 阶导数 $y^((n))(0)=$ #fillin(len: 1.98438em)[].
]

#ezexam.question[
当 $0<=theta<=pi$ 时，对数螺线 $r=e^theta$ 的弧长为 #fillin(len: 1.98438em)[].
]

#ezexam.question[
已知一个长方形的长 $l$ 以2 cm/s的速率增加，宽 $w$ 以3 cm/s的速率增加，则当 $l=12$ cm，$w=5$ cm时，它的对角线增加的速率为 #fillin(len: 1.98438em)[].
]

#ezexam.question[
设 $A,B$ 为3阶矩阵，且 $|A|=3,|B|=2,|A^(-1)+B|=2$，则 $|A+B^(-1)|=$ #fillin(len: 1.98438em)[].
]

= 三、解答题：15—23小题，共94分.解答应写出文字说明、证明过程或演算步骤.

#ezexam.question[
（本题满分10分）求函数 $f(x)=integral_1^(x^2)(x^2-t)e^(-t^2)dif t$ 的单调区间与极值.
]

#ezexam.question[
（本题满分10分）

（Ⅰ）比较 $integral_0^1|ln t[ln(1+t)]^n|dif t$ 与 $integral_0^1 t^n|ln t|dif t(n=1,2,dots)$ 的大小，说明理由；

（Ⅱ）记 $u_n=integral_0^1|ln t[ln(1+t)]^n|dif t(n=1,2,dots)$，求极限 $lim_(n->infinity)u_n$.
]

#ezexam.question[
（本题满分11分）设函数 $y=f(x)$ 由参数方程 $cases(x=2t+t^2,y=psi(t))(t>-1)$ 所确定，其中 $psi(t)$ 具有2阶导数，且 $psi(1)=5/2,psi'(1)=6$.已知 $(dif^2 y)/(dif x^2)=3/(4(1+t))$，求函数 $psi(t)$.
]

#ezexam.question[
（本题满分10分）一个高为 $l$ 的柱体形贮油罐，底面是长轴为 $2a$，短轴为 $2b$ 的椭圆.现将贮油罐平放，当油罐中油面高度为 $3/2 b$ 时（如图），计算油的质量.（长度单位为 m，质量单位为 kg，油的密度为常数 $rho$ kg/m³.）
#import "@preview/cetz:0.3.4": canvas, draw
#let oil-diagram(axes:false) = canvas({
 import draw: *
 circle((0,0),radius:(2,1))
 for y in range(-9,5).map(i=>i/10){let x=2*calc.sqrt(1-calc.pow(y,2));line((-x,y),(x,y),stroke:(thickness:.3pt,dash:"dashed"))}
 line((-1.732,.5),(1.732,.5))
 if axes {line((-2.6,0),(2.7,0),mark:(end:">"));line((0,-1.4),(0,1.6),mark:(end:">"));content((2.7,-.1),$x$);content((-.1,1.6),$y$);content((-.1,-.1),$O$);content((2.1,-.15),$a$);content((-2.1,-.15),$-a$);content((-.1,1.1),$b$);content((-.1,-1.1),$-b$);content((-1,-.5),$S_1$);content((-1,.25),$S_2$)} else {line((2.3,.5),(2.3,1),mark:(start:">",end:">"));content((2.55,.75),$b/2$);line((2.3,-1),(2.3,.5),mark:(start:">",end:">"));content((2.55,-.25),$3/2 b$);line((-2,-1.25),(2,-1.25),mark:(start:">",end:">"));content((0,-1.45),$2a$)}
})
#oil-diagram()
]

#ezexam.question[
（本题满分11分）设函数 $u=f(x,y)$ 具有二阶连续偏导数，且满足等式 $4(partial^2 u)/(partial x^2)+12(partial^2 u)/(partial x partial y)+5(partial^2 u)/(partial y^2)=0$.确定 $a,b$ 的值，使等式在变换 $xi=x+a y,eta=x+b y$ 下简化为 $(partial^2 u)/(partial xi partial eta)=0$.
]

#ezexam.question[
（本题满分10分）计算二重积分 $I=integral.double_D r^2 sin theta sqrt(1-r^2 cos 2theta)dif r dif theta$，其中 $D={(r,theta)|0<=r<=sec theta,0<=theta<=pi/4}$.
]

#ezexam.question[
（本题满分10分）设函数 $f(x)$ 在闭区间 $[0,1]$ 上连续，在开区间 $(0,1)$ 内可导，且 $f(0)=0,f(1)=1/3$.证明：存在 $xi in(0,1/2),eta in(1/2,1)$，使得 $f'(xi)+f'(eta)=xi^2+eta^2$.
]

#ezexam.question[
（本题满分11分）设 $A=mat(lambda,1,1;0,lambda-1,0;1,1,lambda),bold(b)=mat(a;1;1)$.已知线性方程组 $A bold(x)=bold(b)$ 存在2个不同的解，

（Ⅰ）求 $lambda,a$；

（Ⅱ）求方程组 $A bold(x)=bold(b)$ 的通解.
]

#ezexam.question[
（本题满分11分）设 $A=mat(0,-1,4;-1,3,a;4,a,0)$，正交矩阵 $Q$ 使得 $Q^T A Q$ 为对角矩阵.若 $Q$ 的第1列为 $1/sqrt(6)(1,2,1)^T$，求 $a,Q$.
]

