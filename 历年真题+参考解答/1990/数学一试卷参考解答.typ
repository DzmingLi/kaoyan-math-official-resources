#import "../template.typ": exam, answer
#show: exam.with(year:1990,subject:"一",title:"1990年全国硕士研究生入学统一考试",solutions:true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 1990 数学一试卷参考解答

= 一、填空题

#answer("（1）")[
已知直线的方向向量为 $bold(s)=(-1,3,1)$，所求平面的法向量与 $bold(s)$ 平行，可取 $bold(n)=bold(s)$. 平面方程为
$ -(x-1)+3(y-2)+(z+1)=0, $
即 $x-3y-z+4=0$.
]

#answer("（2）")[
$ "原式"=lim_(x->infinity)[(1+frac(2a,x-a))^((x-a)/(2a))]^(2a x/(x-a))=e^(2a). $
注：也可把原式变形为 $frac((1+a/x)^x,(1-a/x)^x)$，分别求分子和分母的极限.
]

#answer("（3）")[
分析：若从 $x$ 的取值分析，显然比较复杂；注意到 $|f(x)|<=1$，则易得答案.
由题设知，$|f(x)|<=1,x in (-infinity,+infinity)$，所以 $f(f(x))=1$.
]

#answer("（4）")[
分析：这是先对 $y$、再对 $x$ 的累次积分. 因为 $integral e^(-y^2)dif y$ 没有初等形式的原函数，不能直接计算，可考虑交换积分次序.
解法一：积分区域为 $D:0<=x<=2,x<=y<=2$，如图.
#align(center)[#image("1990-数学一-交换积分次序.svg",width:45mm)]
交换积分次序，得
$ "原式"=integral_0^2 dif y integral_0^y e^(-y^2)dif x=integral_0^2 y e^(-y^2)dif y=frac(1,2)(1-e^(-4)). $
解法二：使用分部积分法，
$ "原式"&=[x integral_x^2 e^(-y^2)dif y]_0^2-integral_0^2 x dif(integral_x^2 e^(-y^2)dif y) \
&=integral_0^2 x e^(-x^2)dif x=frac(1,2)(1-e^(-4)). $
注：如果先被积的函数为 $e^(plus.minus x^2),sin x^2,cos x^2,frac(sin x,x),frac(cos x,x),e^(1/x),frac(1,ln x)$ 等形式时，要考虑交换积分次序.
]

#answer("（5）")[
利用矩阵的秩与向量组的秩之间的关系判定. 以 $alpha_1,alpha_2,alpha_3,alpha_4$ 为列作矩阵 $A$，对其作初等行变换：
$ A=mat(1,2,3,4;2,3,4,5;3,4,5,6;4,5,6,7) \
arrow.r mat(1,2,3,4;0,-1,-2,-3;0,-2,-4,-6;0,-3,-6,-9) \
arrow.r mat(1,2,3,4;0,1,2,3;0,0,0,0;0,0,0,0). $
故 $r(alpha_1,alpha_2,alpha_3,alpha_4)=r(A)=2$.
]

= 二、选择题

#answer("（1）")[
$ F'(x)=f(e^(-x))(e^(-x))'-f(x)x'=-e^(-x)f(e^(-x))-f(x). $
选 A.
]

#block(breakable:false)[
#answer("（2）")[
先用不完全归纳法找 $n$ 阶导数的规律，再用数学归纳法证之.
$ f'(x)=f(x)^2, $
$ f''(x)=2f(x)f'(x)=2!f(x)^3, $
$ f^((3))(x)=2dot 3f(x)^2 f'(x)=3!f(x)^4. $
猜想 $f^((n))(x)=n!f(x)^(n+1)$，可用数学归纳法证明. 故选 A.
]

]

#answer("（3）")[
因为 $|frac(sin(n a),n^2)|<=frac(1,n^2)$，所以 $sum_(n=1)^infinity frac(sin(n a),n^2)$ 绝对收敛，而 $sum_(n=1)^infinity frac(1,sqrt(n))$ 发散. 故原级数发散，选 C.
]

#answer("（4）")[
$ f'(0)&=lim_(x->0)frac(f(x)-f(0),x)=lim_(x->0)frac(f(x),1-cos x)frac(1-cos x,x) \
&=2lim_(x->0)frac(2sin^2(x/2),x)=2lim_(x->0)frac(sin(x/2),x/2)lim_(x->0)sin(x/2)=0. $
故 $x=0$ 是驻点. 又由 $lim_(x->0)frac(f(x),1-cos x)=2>0$ 的保号性，知在 $0$ 的某个去心邻域内有 $f(x)>0=f(0)$. 因此 $x=0$ 是极小值点，选 D.
]

#answer("（5）")[
本题考查解的性质与结构. $A bold(x)=bold(b)$ 的通解形式为 $k_1bold(eta)_1+k_2bold(eta)_2+bold(xi)$，其中 $bold(eta)_1,bold(eta)_2$ 为对应齐次方程组的基础解系，$bold(xi)$ 为非齐次方程组的一个特解.
由解的性质可知，$alpha_1,alpha_1+alpha_2,alpha_1-alpha_2,frac(beta_1-beta_2,2),beta_1-beta_2$ 都是齐次方程组的解，而 $frac(beta_1+beta_2,2)$ 是非齐次方程组的解.
又 $alpha_1,alpha_1-alpha_2$ 线性无关，故 B 正确.
]

= 三、计算题

#block(breakable:false)[
#answer("（1）")[
$ "原式"&=integral_0^1 ln(1+x)dif(frac(1,2-x)) \
&=[frac(ln(1+x),2-x)]_0^1-integral_0^1 frac(dif x,(1+x)(2-x)) \
&=ln 2-frac(1,3)integral_0^1 (frac(1,2-x)+frac(1,1+x))dif x \
&=ln 2-frac(1,3)[ln frac(1+x,2-x)]_0^1=frac(1,3)ln 2. $
]

]

#answer("（2）")[
$ frac(partial z,partial x)=2f_u+y f_v cos x. $
再对 $y$ 求偏导，得
$ frac(partial^2 z,partial x partial y)&=-2f_(u u)+2f_(u v)sin x+f_v cos x-y f_(v u)cos x+y f_(v v)cos x sin x \
&=-2f_(u u)+(2sin x-y cos x)f_(u v)+y f_(v v)sin x cos x+f_v cos x. $
其中各偏导均在 $(u,v)=(2x-y,y sin x)$ 处取值.
]

#answer("（3）")[
所给方程为二阶常系数线性非齐次方程. 特征方程
$ r^2+4r+4=(r+2)^2=0 $
有二重根 $r=-2$. 非齐次项为 $e^(-2x)$，故设特解为 $y^*=a x^2 e^(-2x)$. 代入方程得 $a=frac(1,2)$，因此通解为
$ y=(C_1+C_2x)e^(-2x)+frac(1,2)x^2 e^(-2x). $
]

= 解答题

#answer("四、")[
分析：先求收敛半径，再确定端点处的敛散性. 利用熟知的几何级数及幂级数的性质求和函数.
解法一：（1）收敛半径为
$ R=lim_(n->infinity)|frac(a_n,a_(n+1))|=lim_(n->infinity)frac(2n+1,2n+3)=1. $
当 $x=plus.minus 1$ 时，一般项不趋于 $0$，级数均发散，故收敛域为 $(-1,1)$.
 #block(breakable:false)[
（2）
$ S(x)=sum_(n=0)^infinity(2n+1)x^n=sum_(n=0)^infinity 2n x^n+sum_(n=0)^infinity x^n. $
]
由 $sum_(n=0)^infinity x^n=frac(1,1-x)$，得
$ sum_(n=0)^infinity 2n x^n=2x sum_(n=1)^infinity n x^(n-1)=2x (sum_(n=0)^infinity x^n)'=frac(2x,(1-x)^2). $
所以
$ S(x)=frac(2x,(1-x)^2)+frac(1,1-x)=frac(1+x,(1-x)^2), quad |x|<1. $
解法二：考虑 $sum_(n=0)^infinity x^(2n+1)=frac(x,1-x^2),|x|<1$. 逐项求导，得
$ sum_(n=0)^infinity(2n+1)x^(2n)=(frac(x,1-x^2))'=frac(1+x^2,(1-x^2)^2). $
用 $x$ 替换 $x^2$，得 $sum_(n=0)^infinity(2n+1)x^n=frac(1+x,(1-x)^2),|x|<1$.
注：解法一根据级数的特点采用逐项求导法求和，再改变代换得到和函数. 逐项求导不改变收敛区间，只需再考察端点的收敛性.
]

#answer("五、")[
解法一：补充平面 $S_1:z=0,x^2+y^2<=4$，法向量与 $z$ 轴负向同向. 记 $S$ 与 $S_1$ 所围区域为 $Omega$，由高斯公式有
$ I&=integral.triple_Omega z dif x dif y dif z-integral.double_(S_1)y z dif z dif x+2dif x dif y \
&=integral_0^(2pi)dif theta integral_0^(pi/2)dif phi integral_0^2 rho cos phi dot rho^2 sin phi dif rho-integral.double_(S_1)2dif x dif y \
&=4pi-(-2integral.double_(x^2+y^2<=4)dif x dif y)=4pi-(-8pi)=12pi. $
解法二：$S$ 在 $x y$ 平面上的投影区域为 $D_(x y):x^2+y^2<=4$. $S$ 取上侧，故
$ I=integral.double_(D_(x y))[y z(-frac(partial z,partial y))+2]dif x dif y. $
由球面方程，得 $frac(partial z,partial y)=-frac(y,z)$，代入可得
$ I&=integral.double_(D_(x y))(y^2+2)dif x dif y \
&=integral_0^(2pi)sin^2 theta dif theta integral_0^2 r^3 dif r+8pi=4pi+8pi=12pi. $
注：对坐标的曲面积分常通过高斯公式转化为三重积分. 有时也可利用曲面的法向量将其转化为
$ integral.double_(D_(x y))(-z_x P-z_y Q+R)dif x dif y, $
其中 $z=z(x,y)$ 为曲面方程，再投影到坐标平面计算二重积分.
]

#answer("六、")[
证法一：因为 $f(x)$ 不恒为常数，至少存在 $x_0 in (a,b)$，使 $f(x_0)!=f(a)=f(b)$.
若 $f(x_0)>f(a)$，在 $[a,x_0]$ 上应用拉格朗日中值定理，存在 $xi in (a,x_0)$，使
$ f'(xi)=frac(f(x_0)-f(a),x_0-a)>0. $
若 $f(x_0)<f(b)$，在 $[x_0,b]$ 上应用拉格朗日中值定理，存在 $xi in (x_0,b)$，使
$ f'(xi)=frac(f(b)-f(x_0),b-x_0)>0. $
命题得证.
证法二：反证法. 若不存在这样的点，则对所有 $x in (a,b)$ 有 $f'(x)<=0$，所以 $f(x)$ 在 $[a,b]$ 上单调不增. 又 $f(a)=f(b)$，故 $f(x)$ 恒为常数，与题设矛盾.
]

#answer("七、")[
由 $(A B)^T=B^T A^T$，得
$ A(E-C^(-1)B)^T C^T=A[C(E-C^(-1)B)]^T=A(C-B)^T. $
因此 $A(C-B)^T=E$，即 $A=[(C-B)^(-1)]^T$.
$ C-B=mat(1,2,3,4;0,1,2,3;0,0,1,2;0,0,0,1), $
$ (C-B)^(-1)=mat(1,-2,1,0;0,1,-2,1;0,0,1,-2;0,0,0,1), $
故
$ A=mat(1,0,0,0;-2,1,0,0;1,-2,1,0;0,1,-2,1). $
注：本题的难点在于化简矩阵方程时正确运用矩阵运算法则和技巧；这里用到了 $(A B)^T=B^T A^T$.
]

#answer("八、")[
二次型的矩阵为 $A=mat(1,-2,2;-2,4,-4;2,-4,4)$，特征多项式为
$ |lambda E-A|=mat(delim:"|",lambda-1,2,-2;2,lambda-4,4;-2,4,lambda-4)=lambda^2(lambda-9). $
因此特征值为 $lambda_1=lambda_2=0,lambda_3=9$.
对于 $lambda=0$，由 $(lambda E-A)bold(x)=bold(0)$，得到基础解系
$ bold(xi)_1=(2,1,0)^T, quad bold(xi)_2=(-2,0,1)^T. $
类似地，得属于 $lambda_3$ 的特征向量 $bold(xi)_3=(1,-2,2)^T$.
不同特征值的特征向量相互正交，只须对 $bold(xi)_1,bold(xi)_2$ 正交化：
$ bold(beta)_1=bold(xi)_1, quad bold(beta)_2=bold(xi)_2-frac((bold(xi)_2,bold(beta)_1),(bold(beta)_1,bold(beta)_1))bold(beta)_1=frac(1,5)(-2,4,5)^T. $
单位化后为
$ bold(eta)_1=frac(1,sqrt(5))mat(2;1;0), quad bold(eta)_2=frac(1,3sqrt(5))mat(-2;4;5), quad bold(eta)_3=frac(1,3)mat(1;-2;2). $
所以正交变换
$ mat(x_1;x_2;x_3)=mat(2/sqrt(5),-2/(3sqrt(5)),1/3;1/sqrt(5),4/(3sqrt(5)),-2/3;0,5/(3sqrt(5)),2/3)mat(y_1;y_2;y_3) $
将二次型化为标准形 $f=9y_3^2$.
注：正交变换不唯一，但不考虑对角元的次序时，得到的标准形是一定的.
]

#answer("九、")[
变力为 $bold(F)=(-y,x)$. 圆弧中心在 $(2,3)$，半径为 $sqrt(2)$，参数方程为
$ cases(x=2+sqrt(2)cos t,y=3+sqrt(2)sin t), quad -frac(3pi,4)<=t<=frac(pi,4). $
#align(center)[#image("1990-数学一-变力.svg",width:48mm)]
所求功为
$ W&=integral_(A B)-y dif x+x dif y \
&=integral_(-3pi/4)^(pi/4)[sqrt(2)(3+sqrt(2)sin t)sin t+sqrt(2)(2+sqrt(2)cos t)cos t]dif t \
&=sqrt(2)integral_(-3pi/4)^(pi/4)(3sin t+2cos t+sqrt(2))dif t=2(pi-1). $
注：也可添加辅助线 $B A$（从 $B$ 到 $A$），再利用格林公式计算.
]

= 十、填空题

#block(breakable:false)[
#answer("（1）")[
由题设，
$ f(x)=cases(frac(1,2)e^x & x<0,frac(1,2)e^(-x) & x>=0). $
又 $F(x)=integral_(-infinity)^x f(t)dif t$，所以当 $x<0$ 时，
$ F(x)=integral_(-infinity)^x frac(1,2)e^t dif t=frac(1,2)e^x; $
当 $x>=0$ 时，
$ F(x)=integral_(-infinity)^0 frac(1,2)e^t dif t+integral_0^x frac(1,2)e^(-t)dif t=1-frac(1,2)e^(-x). $
]

]

#answer("（2）")[
解法一：由加法公式，得 $P(A B)=P(A)+P(B)-P(A union B)=0.1$.
又 $A B union A overline(B)=A$，且两事件不相容，所以
$ P(A overline(B))=P(A)-P(A B)=0.4-0.1=0.3. $
解法二：$A overline(B)$ 与 $B$ 不相容，且 $A union B=A overline(B)union B$，故
$ P(A overline(B))=P(A union B)-P(B)=0.3. $
注：解法二中不需要条件 $P(A)=0.4$.
]

#answer("（3）")[
$X$ 服从参数为 $lambda=2$ 的泊松分布，所以 $E(X)=2$. 因此
$ E(Z)=E(3X-2)=3E(X)-2=3times 2-2=4. $
]

= 十一、解答题

#answer("十一、")[
记 $D$ 为 $x O y$ 平面上以 $O(0,0),A(1,1),B(1,-1)$ 为顶点的三角形，如图.
#align(center)[#image("1990-数学一-联合分布区域.svg",width:42mm)]
由均匀分布，联合密度为
$ f(x,y)=cases(1 & 0<x<1 quad |y|<x,0 & "其他"). $
当 $0<x<1$ 时，
$ f_X(x)=integral_(-infinity)^infinity f(x,y)dif y=integral_(-x)^x 1dif y=2x. $
因此
$ f_X(x)=cases(2x & 0<x<1,0 & "其他"). $
于是
$ D(Z)&=4D(X)=4[E(X^2)-E(X)^2] \
&=4[integral_(-infinity)^infinity x^2 f_X(x)dif x-(integral_(-infinity)^infinity x f_X(x)dif x)^2] \
&=4[integral_0^1 2x^3 dif x-(integral_0^1 2x^2 dif x)^2]=4(frac(1,2)-frac(4,9))=frac(2,9). $
]
