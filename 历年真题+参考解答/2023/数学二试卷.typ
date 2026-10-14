#import "../template.typ": exam
#show: exam.with(year: 2023, subject: "二")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices.with(r-gap: 1.3em)
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)


= 一、选择题：第1—10小题，每小题5分，共50分. 下列每小题给出的四个选项中，只有一个选项是符合题目要求的.

#ezexam.question[
曲线 $y=x ln(e+1/(x-1))$ 的斜渐近线方程为（　）.
#choices([$y=x+e$.],[$y=x+1/e$.],[$y=x$.],[$y=x-1/e$.])
]

#ezexam.question[
函数 $f(x)=cases(1/sqrt(1+x^2) & x<=0,(x+1)cos x & x>0)$ 的一个原函数为（　）.
#choices([$F(x)=cases(ln(sqrt(1+x^2)-x) & x<=0,(x+1)cos x-sin x & x>0)$.],[$F(x)=cases(ln(sqrt(1+x^2)-x)+1 & x<=0,(x+1)cos x-sin x & x>0)$.],[$F(x)=cases(ln(sqrt(1+x^2)+x) & x<=0,(x+1)sin x+cos x & x>0)$.],[$F(x)=cases(ln(sqrt(1+x^2)+x)+1 & x<=0,(x+1)sin x+cos x & x>0)$.])
]

#ezexam.question[
已知数列 $x_n,y_n$ 满足：$x_1=y_1=1/2$，$x_(n+1)=sin x_n$，$y_(n+1)=y_n^2$（$n=1,2,dots$），则当 $n->infinity$ 时（　）.
#choices([$x_n$ 是 $y_n$ 的高阶无穷小.],[$y_n$ 是 $x_n$ 的高阶无穷小.],[$x_n$ 与 $y_n$ 是等价无穷小.],[$x_n$ 与 $y_n$ 是同阶但不等价的无穷小.])
]

#ezexam.question[
若微分方程 $y''+a y'+b y=0$ 的解在 $(-infinity,+infinity)$ 上有界，则（　）.
#choices([$a<0,b>0$.],[$a>0,b>0$.],[$a=0,b>0$.],[$a=0,b<0$.])
]

#ezexam.question[
设函数 $y=f(x)$ 由 $cases(x=2t+abs(t),y=abs(t)sin t)$ 确定，则（　）.
#choices([$f(x)$ 连续，$f'(0)$ 不存在.],[$f'(0)$ 存在，$f'(x)$ 在 $x=0$ 处不连续.],[$f'(x)$ 连续，$f''(0)$ 不存在.],[$f''(0)$ 存在，$f''(x)$ 在 $x=0$ 处不连续.])
]

#ezexam.question[
若函数 $f(a)=integral_2^infinity 1/(x(ln x)^(a+1))dif x$ 在 $a=a_0$ 处取得最小值，则 $a_0=$（　）.
#choices([$-1/(ln(ln 2))$.],[$-ln(ln 2)$.],[$1/(ln 2)$.],[$ln 2$.])
]

#ezexam.question[
设函数 $f(x)=(x^2+a)e^x$. 若 $f(x)$ 没有极值点，但曲线 $y=f(x)$ 有拐点，则 $a$ 的取值范围是（　）.
#choices([$[0,1)$.],[${a | a>=1}$.],[$[1,2)$.],[${a | a>=2}$.])
]

#ezexam.question[
设 $A,B$ 为 $n$ 阶可逆矩阵，$E$ 为 $n$ 阶单位矩阵，$M^*$ 为矩阵 $M$ 的伴随矩阵，则 $mat(A,E;O,B)^*=$（　）.
#choices([$mat(abs(A)B^*,-B^* A^*;O,abs(B)A^*)$.],[$mat(abs(A)B^*,-A^* B^*;O,abs(B)A^*)$.],[$mat(abs(B)A^*,-B^* A^*;O,abs(A)B^*)$.],[$mat(abs(B)A^*,-A^* B^*;O,abs(A)B^*)$.])
]

#ezexam.question[
二次型 $f(x_1,x_2,x_3)=(x_1+x_2)^2+(x_1+x_3)^2-4(x_2-x_3)^2$ 的规范形为（　）.
#choices([$y_1^2+y_2^2$.],[$y_1^2-y_2^2$.],[$y_1^2+y_2^2-4y_3^2$.],[$y_1^2+y_2^2-y_3^2$.])
]

#ezexam.question[
已知向量 $bold(alpha)_1=(1,2,3)^T$，$bold(alpha)_2=(2,1,1)^T$，$bold(beta)_1=(2,5,9)^T$，$bold(beta)_2=(1,0,1)^T$. 若 $bold(gamma)$ 既可由 $bold(alpha)_1,bold(alpha)_2$ 线性表示，也可由 $bold(beta)_1,bold(beta)_2$ 线性表示，则 $bold(gamma)=$（　）.
#choices([$k(3,3,4)^T$，$k in bold(R)$.],[$k(3,5,10)^T$，$k in bold(R)$.],[$k(-1,1,2)^T$，$k in bold(R)$.],[$k(1,5,8)^T$，$k in bold(R)$.])
]


= 二、填空题：第11—16小题，每小题5分，共30分.

#ezexam.question[
当 $x->0$ 时，函数 $f(x)=a x+b x^2+ln(1+x)$ 与 $g(x)=e^(x^2)-cos x$ 是等价无穷小量，则 $a b=$#fillin[].
]

#ezexam.question[
曲线 $y=integral_(-sqrt(3))^x sqrt(3-t^2)dif t$ 的弧长为#fillin[].
]

#ezexam.question[
设函数 $z=z(x,y)$ 由 $e^z+x z=2x-y$ 确定，则 $(partial^2 z)/(partial x^2)|_((1,1))=$#fillin[].
]

#ezexam.question[
曲线 $3x^3=y^5+2y^3$ 在 $x=1$ 对应点处的法线斜率为#fillin[].
]

#ezexam.question[
设连续函数 $f(x)$ 满足 $f(x+2)-f(x)=x$，$integral_0^2 f(x)dif x=0$，则 $integral_1^3 f(x)dif x=$#fillin[].
]

#ezexam.question[
已知线性方程组 $cases(a x_1+x_3=1,x_1+a x_2+x_3=0,x_1+2x_2+a x_3=0,a x_1+b x_2=2)$ 有解，其中 $a,b$ 为常数. 若 $abs(mat(a,0,1;1,a,1;1,2,a))=4$，则 $abs(mat(1,a,1;1,2,a;a,b,0))=$#fillin[].
]


= 三、解答题：第17—22小题，共70分. 解答应写出文字说明、证明过程或演算步骤.

#ezexam.question[
（本题满分10分）设曲线 $L:y=y(x)$（$x>e$）经过点 $(e^2,0)$，$L$ 上任一点 $P(x,y)$ 到 $y$ 轴的距离等于该点处的切线在 $y$ 轴上的截距.

（1）求 $y(x)$；

（2）在 $L$ 上求一点，使该点处的切线与两坐标轴所围三角形的面积最小，并求此最小面积.
]

#ezexam.question[
（本题满分12分）求函数 $f(x,y)=x e^(cos y)+x^2/2$ 的极值.
]

#ezexam.question[
（本题满分12分）已知平面区域 $D={(x,y) | 0<=y<=1/(x sqrt(1+x^2)),x>=1}$.

（1）求 $D$ 的面积；

（2）求 $D$ 绕 $x$ 轴旋转所成旋转体的体积.
]

#ezexam.question[
（本题满分12分）设平面有界区域 $D$ 位于第一象限，由曲线 $x^2+y^2-x y=1$、$x^2+y^2-x y=2$ 与直线 $y=sqrt(3)x,y=0$ 围成，计算 $integral.double_D 1/(3x^2+y^2)dif x dif y$.
]

#ezexam.question[
（本题满分12分）设函数 $f(x)$ 在 $[-a,a]$ 上具有2阶连续导数. 证明：

（1）若 $f(0)=0$，则存在 $xi in (-a,a)$，使 $f''(xi)=(f(a)+f(-a))/a^2$；

（2）若 $f(x)$ 在 $(-a,a)$ 内取得极值，则存在 $eta in (-a,a)$，使 $abs(f''(eta))>=abs(f(a)-f(-a))/(2a^2)$.
]

#ezexam.question[
（本题满分12分）设矩阵 $A$ 满足：对任意 $x_1,x_2,x_3$ 均有 $A mat(x_1;x_2;x_3)=mat(x_1+x_2+x_3;2x_1-x_2+x_3;x_2-x_3)$.

（1）求 $A$；

（2）求可逆矩阵 $P$ 与对角矩阵 $Lambda$，使 $P^(-1)A P=Lambda$.
]

