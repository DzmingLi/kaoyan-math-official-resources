#import "../template.typ": exam
#show: exam.with(year: 2016, subject: "一")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)


= 一、选择题：1—8小题，每小题4分，共32分. 在每小题给出的四个选项中，只有一项符合题目要求，把所选项前的字母填在题后的括号内.

#ezexam.question[
若反常积分 $integral_0^infinity 1/(x^a(1+x)^b)dif x$ 收敛，则
#choices([$a<1$ 且 $b>1$.], [$a>1$ 且 $b>1$.], [$a<1$ 且 $a+b>1$.], [$a>1$ 且 $a+b>1$.])
]

#ezexam.question[
已知函数 $f(x)=cases(2(x-1) & x<1,ln x & x>=1)$，则 $f(x)$ 的一个原函数是
#choices([$F(x)=cases((x-1)^2 & x<1,x(ln x-1) & x>=1)$.], [$F(x)=cases((x-1)^2 & x<1,x(ln x+1)-1 & x>=1)$.], [$F(x)=cases((x-1)^2 & x<1,x(ln x+1)+1 & x>=1)$.], [$F(x)=cases((x-1)^2 & x<1,x(ln x-1)+1 & x>=1)$.])
]

#ezexam.question[
若 $y=(1+x^2)^2-sqrt(1+x^2),y=(1+x^2)^2+sqrt(1+x^2)$ 是微分方程 $y'+p(x)y=q(x)$ 的两个解，则 $q(x)=$
#choices([$3x(1+x^2)$.], [$-3x(1+x^2)$.], [$x/(1+x^2)$.], [$-x/(1+x^2)$.])
]

#ezexam.question[
已知函数 $f(x)=cases(x & x<=0,1/n & 1/(n+1)<x<=1/n quad (n=1,2,dots))$，则
#choices([$x=0$ 是 $f(x)$ 的第一类间断点.], [$x=0$ 是 $f(x)$ 的第二类间断点.], [$f(x)$ 在 $x=0$ 处连续但不可导.], [$f(x)$ 在 $x=0$ 处可导.])
]

#ezexam.question[
设 $A,B$ 是可逆矩阵，且 $A$ 与 $B$ 相似，则下列结论错误的是
#choices([$A^T$ 与 $B^T$ 相似.], [$A^(-1)$ 与 $B^(-1)$ 相似.], [$A+A^T$ 与 $B+B^T$ 相似.], [$A+A^(-1)$ 与 $B+B^(-1)$ 相似.])
]

#ezexam.question[
设二次型 $f(x_1,x_2,x_3)=x_1^2+x_2^2+x_3^2+4x_1 x_2+4x_1 x_3+4x_2 x_3$，则 $f(x_1,x_2,x_3)=2$ 在空间直角坐标下表示的二次曲面为
#choices([单叶双曲面.], [双叶双曲面.], [椭球面.], [柱面.])
]

#ezexam.question[
设随机变量 $X tilde.op N(mu,sigma^2)$（$sigma>0$），记 $p=P{X<=mu+sigma^2}$，则
#choices([$p$ 随着 $mu$ 的增加而增加.], [$p$ 随着 $sigma$ 的增加而增加.], [$p$ 随着 $mu$ 的增加而减少.], [$p$ 随着 $sigma$ 的增加而减少.])
]

#ezexam.question[
随机试验 $E$ 有三种两两不相容的结果 $A_1,A_2,A_3$，且三种结果发生的概率均为 $1/3$.将试验 $E$ 独立重复做 2 次，$X$ 表示 2 次试验中结果 $A_1$ 发生的次数，$Y$ 表示 2 次试验中结果 $A_2$ 发生的次数，则 $X$ 与 $Y$ 的相关系数为
#choices([$-1/2$.], [$-1/3$.], [$1/3$.], [$1/2$.])
]

= 二、填空题：9—14小题，每小题4分，共24分. 把答案填在题中横线上.

#ezexam.question[
$lim_(x->0)(integral_0^x t ln(1+t sin t)dif t)/(1-cos x^2)=$ #fillin(len: 3em)[].
]

#ezexam.question[
向量场 $bold(A)(x,y,z)=(x+y+z)bold(i)+x y bold(j)+z bold(k)$ 的旋度 $upright("rot")bold(A)=$ #fillin(len: 3em)[].
]

#ezexam.question[
设函数 $f(u,v)$ 可微，$z=z(x,y)$ 由方程 $(x+1)z-y^2=x^2 f(x-z,y)$ 确定，则 $dif z|_((0,1))=$ #fillin(len: 3em)[].
]

#ezexam.question[
设函数 $f(x)=arctan x-x/(1+a x^2)$，且 $f'''(0)=1$，则 $a=$ #fillin(len: 3em)[].
]

#ezexam.question[
行列式 $mat(delim: "|",lambda,-1,0,0;0,lambda,-1,0;0,0,lambda,-1;4,3,2,lambda+1)=$ #fillin(len: 3em)[].
]

#ezexam.question[
设 $x_1,x_2,dots,x_n$ 为来自总体 $N(mu,sigma^2)$ 的简单随机样本，样本均值 $overline(x)=9.5$，参数 $mu$ 的置信度为 0.95 的双侧置信区间的置信上限为 10.8，则 $mu$ 的置信度为 0.95 的双侧置信区间为 #fillin(len: 3em)[].
]

= 三、解答题：15—23小题，共94分. 解答应写出文字说明、证明过程或演算步骤.

#ezexam.question[
（本题满分 10 分）已知平面区域 $D={(r,theta)|2<=r<=2(1+cos theta),-pi/2<=theta<=pi/2}$，计算二重积分 $integral.double_D x dif x dif y$.
]

#ezexam.question[
（本题满分 10 分）设函数 $y(x)$ 满足方程 $y''+2y'+k y=0$，其中 $0<k<1$.

（Ⅰ）证明：反常积分 $integral_0^infinity y(x)dif x$ 收敛；

（Ⅱ）若 $y(0)=1,y'(0)=1$，求 $integral_0^infinity y(x)dif x$ 的值.
]

#ezexam.question[
（本题满分 10 分）设函数 $f(x,y)$ 满足 $(partial f(x,y))/(partial x)=(2x+1)e^(2x-y)$，且 $f(0,y)=y+1$，$L_t$ 是从点 $(0,0)$ 到点 $(1,t)$ 的光滑曲线，计算曲线积分
$ I(t)=integral_(L_t) (partial f(x,y))/(partial x)dif x+(partial f(x,y))/(partial y)dif y, $
并求 $I(t)$ 的最小值.
]

#ezexam.question[
（本题满分 10 分）设有界区域 $Omega$ 由平面 $2x+y+2z=2$ 与三个坐标平面围成，$Sigma$ 为 $Omega$ 整个表面的外侧，计算曲面积分
$ I=integral.double_Sigma (x^2+1)dif y dif z-2y dif z dif x+3z dif x dif y. $
]

#ezexam.question[
（本题满分 10 分）已知函数 $f(x)$ 可导，且 $f(0)=1,0<f'(x)<1/2$.设数列 $\{x_n\}$ 满足 $x_(n+1)=f(x_n)$（$n=1,2,dots$）.证明：

（Ⅰ）级数 $sum_(n=1)^infinity (x_(n+1)-x_n)$ 绝对收敛；

（Ⅱ）$lim_(n->infinity)x_n$ 存在，且 $0<lim_(n->infinity)x_n<2$.
]

#ezexam.question[
（本题满分 11 分）设矩阵 $A=mat(1,-1,-1;2,a,1;-1,1,a),B=mat(2,2;1,a;-a-1,-2)$.
当 $a$ 为何值时，方程 $A X=B$ 无解、有唯一解、有无穷多解？在有解时，求解此方程.
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

（Ⅱ）确定 $a$，使得 $a T$ 为 $theta$ 的无偏估计.
]

