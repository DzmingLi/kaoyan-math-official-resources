#import "../template.typ": exam
#show: exam.with(year: 2000, subject: "一", title: "2000年全国硕士研究生入学考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(true)


= 一、填空题（本题共5小题，每小题3分，满分15分）
#ezexam.counter-question.step()

（1）$integral_0^1 sqrt(2x-x^2)dif x=$ #fillin(len: 3em)[].
#ezexam.solution(show-number: false)[
$frac(pi,4)$.
]

（2）曲面 $x^2+2y^2+3z^2=21$ 在点 $(1,-2,2)$ 的法线方程为 #fillin(len: 3em)[].
#ezexam.solution(show-number: false)[
$frac(x-1,1)=frac(y+2,-4)=frac(z-2,6)$.
]

（3）微分方程 $x y''+3y'=0$ 的通解为 #fillin(len: 3em)[].
#ezexam.solution(show-number: false)[
$y=c_1+frac(c_2,x^2)$.
]

（4）已知方程组 $mat(1,2,1;2,3,a+2;1,a,-2)mat(x_1;x_2;x_3)=mat(1;3;0)$ 无解，则 $a=$ #fillin(len: 3em)[].
#ezexam.solution(show-number: false)[
$-1$.
]

（5）设两个相互独立的事件 $A$ 和 $B$ 都不发生的概率为 $frac(1,9)$，$A$ 发生 $B$ 不发生的概率与 $B$ 发生 $A$ 不发生的概率相等，则 $P(A)=$ #fillin(len: 3em)[].
#ezexam.solution(show-number: false)[
$frac(2,3)$.
]

= 二、选择题（本题共5小题，每小题3分，满分15分）
#ezexam.counter-question.step()

（1）设 $f(x),g(x)$ 是恒大于零的可导函数，且 $f'(x)g(x)-f(x)g'(x)<0$，则当 $a<x<b$ 时，有（　）.
#choices[$f(x)g(b)>f(b)g(x)$.][$f(x)g(a)>f(a)g(x)$.][$f(x)g(x)>f(b)g(b)$.][$f(x)g(x)>f(a)g(a)$.]
#ezexam.solution(show-number: false)[
A.
]

（2）设 $S:x^2+y^2+z^2=a^2$（$z>=0$），$S_1$ 为 $S$ 在第一卦限中的部分，则有（　）.
#choices[$integral.double_S x dif S=4integral.double_(S_1) x dif S$.][$integral.double_S y dif S=4integral.double_(S_1) x dif S$.][$integral.double_S z dif S=4integral.double_(S_1) x dif S$.][$integral.double_S x y z dif S=4integral.double_(S_1) x y z dif S$.]
#ezexam.solution(show-number: false)[
C.
]

（3）设级数 $sum_(n=1)^infinity u_n$ 收敛，则必收敛的级数为（　）.
#choices[$sum_(n=1)^infinity (-1)^n frac(u_n,n)$.][$sum_(n=1)^infinity u_n^2$.][$sum_(n=1)^infinity (u_(2n-1)-u_(2n))$.][$sum_(n=1)^infinity (u_n+u_(n+1))$.]
#ezexam.solution(show-number: false)[
D.
]

（4）设 $n$ 维列向量组 $alpha_1,dots,alpha_m$（$m<n$）线性无关，则 $n$ 维列向量组 $beta_1,dots,beta_m$ 线性无关的充分必要条件为（　）.
#choices[向量组 $alpha_1,dots,alpha_m$ 可由向量组 $beta_1,dots,beta_m$ 线性表示.][向量组 $beta_1,dots,beta_m$ 可由向量组 $alpha_1,dots,alpha_m$ 线性表示.][向量组 $alpha_1,dots,alpha_m$ 与向量组 $beta_1,dots,beta_m$ 等价.][矩阵 $A=(alpha_1,dots,alpha_m)$ 与矩阵 $B=(beta_1,dots,beta_m)$ 等价.]
#ezexam.solution(show-number: false)[
D.
]

（5）设二维随机变量 $(X,Y)$ 服从二维正态分布，则随机变量 $xi=X+Y$ 与 $eta=X-Y$ 不相关的充分必要条件为（　）.
#choices[$E(X)=E(Y)$.][$E(X^2)-[E(X)]^2=E(Y^2)-[E(Y)]^2$.][$E(X^2)=E(Y^2)$.][$E(X^2)+[E(X)]^2=E(Y^2)+[E(Y)]^2$.]
#ezexam.solution(show-number: false)[
B.
]

#ezexam.question(label: n => [三、])[
（本题满分5分）求 $lim_(x->0)(frac(2+e^(1/x),1+e^(4/x))+frac(sin x,|x|))$.
#ezexam.solution(show-number: false)[
因
$ lim_(x->0^+)(frac(2+e^(1/x),1+e^(4/x))+frac(sin x,|x|))=lim_(x->0^+)(frac(2e^(-4/x)+e^(-3/x),e^(-4/x)+1)+frac(sin x,x))=1, quad "（2分）" $
$ lim_(x->0^-)(frac(2+e^(1/x),1+e^(4/x))+frac(sin x,|x|))=lim_(x->0^-)(frac(2+e^(1/x),1+e^(4/x))-frac(sin x,x))=2-1=1, quad "（4分）" $
故原式 $=1$. （5分）
]


]

#ezexam.question(label: n => [四、])[
（本题满分5分）设 $z=f(x y,frac(x,y))+g(frac(y,x))$，其中 $f$ 具有二阶连续偏导数，$g$ 具有二阶连续导数，求 $frac(partial^2 z,partial x partial y)$.
#ezexam.solution(show-number: false)[
$ frac(partial z,partial x)=y f'_1+frac(1,y)f'_2-frac(y,x^2)g', quad "（2分）" $
$ frac(partial^2 z,partial x partial y)&=f'_1+y(x f''_(11)-frac(x,y^2)f''_(12))-frac(1,y^2)f'_2+frac(1,y)(x f''_(21)-frac(x,y^2)f''_(22)) \
& quad -frac(1,x^2)g'-frac(y,x^3)g'' \
&=f'_1-frac(1,y^2)f'_2+x y f''_(11)-frac(x,y^3)f''_(22)-frac(1,x^2)g'-frac(y,x^3)g''. quad "（5分）" $
]


]

#ezexam.question(label: n => [五、])[
（本题满分6分）计算曲线积分 $I=integral.cont_L frac(x dif y-y dif x,4x^2+y^2)$，其中 $L$ 是以点 $(1,0)$ 为中心，$R$ 为半径的圆周（$R>1$），取逆时针方向.
#ezexam.solution(show-number: false)[
$ P=frac(-y,4x^2+y^2),quad Q=frac(x,4x^2+y^2), $
$ frac(partial P,partial y)=frac(y^2-4x^2,(4x^2+y^2)^2)=frac(partial Q,partial x),quad (x,y)!=(0,0). quad "（1分）" $
作足够小椭圆 $C:cases(x=frac(delta,2)cos theta,y=delta sin theta)$（$theta in [0,2pi]$，$C$ 取逆时针方向）. （2分）

于是由格林公式有
$ integral.cont_(L+C^-) frac(x dif y-y dif x,4x^2+y^2)=0, quad "（4分）" $
即得
$ integral.cont_L frac(x dif y-y dif x,4x^2+y^2)&=integral.cont_C frac(x dif y-y dif x,4x^2+y^2) \
&=integral_0^(2pi) frac(frac(1,2)delta^2,delta^2)dif theta=pi. quad "（6分）" $
]


]

#ezexam.question(label: n => [六、])[
（本题满分7分）设对于半空间 $x>0$ 内任意的光滑有向封闭曲面 $S$，都有
$ ∯_S x f(x)dif y dif z-x y f(x)dif z dif x-e^(2x)z dif x dif y=0, $
其中函数 $f(x)$ 在 $(0,+infinity)$ 内具有连续的一阶导数，且 $lim_(x->0^+) f(x)=1$.求 $f(x)$.
#ezexam.solution(show-number: false)[
由题设和高斯公式得
$ 0&=∯_S x f(x)dif y dif z-x y f(x)dif z dif x-e^(2x)z dif x dif y \
&=plus.minus integral.triple_V (x f'(x)+f(x)-x f(x)-e^(2x))dif V, quad "（1分）" $
其中 $V$ 为 $S$ 围成的有界闭区域，当有向曲面 $S$ 的法向量指向外侧时，取“$+$”号，当有向曲面 $S$ 的法向量指向内侧时，取“$-$”号.由 $S$ 的任意性，知
$ x f'(x)+f(x)-x f(x)-e^(2x)=0,quad x>0, quad "（2分）" $
即 $f'(x)+(frac(1,x)-1)f(x)=frac(1,x)e^(2x),quad x>0$.

按一阶线性非齐次微分方程通解公式，有
$ f(x)&=e^(integral(1-frac(1,x))dif x)[integral frac(1,x)e^(2x)dot e^(integral(frac(1,x)-1)dif x)dif x+C] \
&=frac(e^x,x)[integral frac(1,x)e^(2x)dot x e^(-x)dif x+C] \
&=frac(e^x,x)(e^x+C). quad "（5分）" $
由于 $lim_(x->0^+) f(x)=lim_(x->0^+)[frac(e^(2x)+C e^x,x)]=1$，故必有 $lim_(x->0^+)(e^(2x)+C e^x)=0$，即 $C+1=0$，从而 $C=-1$.

于是
$ f(x)=frac(e^x,x)(e^x-1). quad "（7分）" $
]


]

#ezexam.question(label: n => [七、])[
（本题满分6分）求幂级数 $sum_(n=1)^infinity frac(1,3^n+(-2)^n)frac(x^n,n)$ 的收敛区间，并讨论该区间端点处的收敛性.
#ezexam.solution(show-number: false)[
因为
$ lim_(n->infinity)frac([3^n+(-2)^n]n,[3^(n+1)+(-2)^(n+1)](n+1))=lim_(n->infinity)frac([1+(-frac(2,3))^n]n,3[1+(-frac(2,3))^(n+1)](n+1))=frac(1,3), quad "（2分）" $
所以收敛半径为3，收敛区间为 $(-3,3)$. （3分）

当 $x=3$ 时，因为 $frac(3^n,3^n+(-2)^n)dot frac(1,n)>frac(1,2n)$，且 $sum_(n=1)^infinity frac(1,n)$ 发散，所以原级数在点 $x=3$ 处发散. （4分）

当 $x=-3$ 时，由于
$ frac((-3)^n,3^n+(-2)^n)dot frac(1,n)=(-1)^n frac(1,n)-frac(2^n,3^n+(-2)^n)dot frac(1,n), $
且 $sum_(n=1)^infinity frac((-1)^n,n)$ 与 $sum_(n=1)^infinity frac(2^n,3^n+(-2)^n)dot frac(1,n)$ 都收敛，所以原级数在点 $x=-3$ 处收敛. （6分）
]


]

#ezexam.question(label: n => [八、])[
（本题满分7分）设有一半径为 $R$ 的球体，$P_0$ 是此球的表面上的一个定点，球体上任一点的密度与该点到 $P_0$ 距离的平方成正比（比例常数 $k>0$），求球体的重心位置.
#ezexam.solution(show-number: false)[
*解法1* 设所考虑的球体为 $Omega$，以 $Omega$ 的球心为原点 $O$，射线 $O P_0$ 为正 $x$ 轴建立直角坐标系，则点 $P_0$ 的坐标为 $(R,0,0)$，球面的方程为
$ x^2+y^2+z^2=R^2. $
#import "@preview/cetz:0.5.2"
#let sphere-diagram(origin-bottom:false)=cetz.canvas({
 import cetz.draw: *
 set-style(stroke:0.6pt)
 let cy=if origin-bottom {1.3}else{0}
 circle((0,cy),radius:1.3)
 for (a,b) in ((0,180),(180,360)) {
  let dash=if a==0 {"dashed"}else{"solid"}
  line(..range(0,51).map(i=>{let t=(a+(b - a)*i/50)*1deg;(1.3*calc.cos(t),cy+0.48*calc.sin(t))}),stroke:(dash:dash))
  line(..range(0,51).map(i=>{let t=(a+(b - a)*i/50)*1deg;(-0.55*calc.sin(t),cy+1.3*calc.cos(t))}),stroke:(dash:dash))
 }
 line((-1.6,0),(1.8,0),mark:(end:">"));line((0,-1.6+cy),(0,1.8+cy),mark:(end:">"))
 line(if origin-bottom {(0,0)}else{(1.6,1.6)},(-1.55,-1.55),mark:(end:">"))
 content((1.85,-0.15),$y$);content((0.15,1.85+cy),$z$);content((-1.7,-1.55),$x$)
 content((-0.37,cy+0.75),$Omega$)
 if origin-bottom {circle((0,cy),radius:0.025,fill:black);content((0.2,cy),$tilde(O)$);content((0.2,-0.2),$P_0$)}else{content((0.18,-0.17),$O$);content((-0.85,-0.75),$P_0$)}
})
#sphere-diagram()
设 $Omega$ 的重心位置为 $(overline(x),overline(y),overline(z))$，由对称性，得
$ overline(y)=0,quad overline(z)=0, quad "（2分）" $
$ overline(x)=frac(integral.triple_Omega x dot k[(x-R)^2+y^2+z^2]dif V,integral.triple_Omega k[(x-R)^2+y^2+z^2]dif V). $
而
$ integral.triple_Omega [(x-R)^2+y^2+z^2]dif V \
&=integral.triple_Omega (x^2+y^2+z^2)dif V+integral.triple_Omega R^2 dif V \
&=8integral_0^(pi/2)dif theta integral_0^(pi/2)dif phi integral_0^R r^2 dot r^2 sin phi dif r+frac(4,3)pi R^5 \
&=frac(32,15)pi R^5, quad "（4分）" $
$ integral.triple_Omega x[(x-R)^2+y^2+z^2]dif V&=-2R integral.triple_Omega x^2 dif V \
&=-frac(2R,3)integral.triple_Omega (x^2+y^2+z^2)dif V \
&=-frac(8,15)pi R^6, quad "（6分）" $
故 $overline(x)=-frac(R,4)$.

因此，球体 $Omega$ 的重心位置为 $(-frac(R,4),0,0)$. （7分）

*解法2* 设所考虑的球体为 $Omega$，球心为 $tilde(O)$，以定点 $P_0$ 为原点，射线 $P_0 tilde(O)$ 为正 $z$ 轴建立直角坐标系，则球面的方程为
$ x^2+y^2+z^2=2R z. $
#sphere-diagram(origin-bottom:true)
设 $Omega$ 的重心位置为 $(overline(x),overline(y),overline(z))$，由对称性，得
$ overline(x)=0,quad overline(y)=0, quad "（2分）" $
$ overline(z)=frac(integral.triple_Omega k z(x^2+y^2+z^2)dif V,integral.triple_Omega k(x^2+y^2+z^2)dif V). $
$ integral.triple_Omega (x^2+y^2+z^2)dif V&=4integral_0^(pi/2)dif theta integral_0^(pi/2)dif phi integral_0^(2R cos phi)r^4 sin phi dif r \
&=frac(32,15)pi R^5, quad "（4分）" $
而
$ integral.triple_Omega z(x^2+y^2+z^2)dif V&=4integral_0^(pi/2)dif theta integral_0^(pi/2)dif phi integral_0^(2R cos phi)r^5 sin phi cos phi dif r \
&=frac(64,3)pi R^6 integral_0^(pi/2)cos^7 phi sin phi dif phi \
&=frac(8,3)pi R^6, quad "（6分）" $
故 $overline(z)=frac(5,4)R$.

因此，球体 $Omega$ 的重心位置为 $(0,0,frac(5,4)R)$. （7分）
]


]

#ezexam.question(label: n => [九、])[
（本题满分6分）设函数 $f(x)$ 在 $[0,pi]$ 上连续，且 $integral_0^pi f(x)dif x=0$，$integral_0^pi f(x)cos x dif x=0$.试证：在 $(0,pi)$ 内至少存在两个不同的点 $xi_1,xi_2$，使 $f(xi_1)=f(xi_2)=0$.
#ezexam.solution(show-number: false)[
*证法1* 令 $F(x)=integral_0^x f(t)dif t$，$0<=x<=pi$， （1分）
则有 $F(0)=0,F(pi)=0$.又因为
$ 0&=integral_0^pi f(x)cos x dif x=integral_0^pi cos x dif F(x) \
&=F(x)cos x|_0^pi+integral_0^pi F(x)sin x dif x \
&=integral_0^pi F(x)sin x dif x, $
所以存在 $xi in (0,pi)$，使 $F(xi)sin xi=0$.因若不然，则在 $(0,pi)$ 内或 $F(x)sin x$ 恒为正，或 $F(x)sin x$ 恒为负，均与 $integral_0^pi F(x)sin x dif x=0$ 矛盾.但当 $xi in (0,pi)$ 时，$sin xi!=0$，故 $F(xi)=0$.

由上证得 $F(0)=F(xi)=F(pi)=0$（$0<xi<pi$）. （4分）

再对 $F(x)$ 在区间 $[0,xi],[xi,pi]$ 上分别用罗尔定理，知至少存在 $xi_1 in (0,xi),xi_2 in (xi,pi)$，使
$ F'(xi_1)=F'(xi_2)=0, $
即 $f(xi_1)=f(xi_2)=0$. （6分）

*证法2* 由 $integral_0^pi f(x)dif x=0$ 知，存在 $xi_1 in (0,pi)$，使 $f(xi_1)=0$.因若不然，则在 $(0,pi)$ 内或 $f(x)$ 恒为正，或 $f(x)$ 恒为负，均与 $integral_0^pi f(x)dif x=0$ 矛盾. （1分）

若在 $(0,pi)$ 内 $f(x)=0$ 仅有一个实根 $x=xi_1$，则由 $integral_0^pi f(x)dif x=0$ 推知，$f(x)$ 在 $(0,xi_1)$ 内与 $(xi_1,pi)$ 内异号，不妨设在 $(0,xi_1)$ 内 $f(x)>0$，在 $(xi_1,pi)$ 内 $f(x)<0$.于是再由 $integral_0^pi f(x)cos x dif x=0$ 与 $integral_0^pi f(x)dif x=0$ 及 $cos x$ 在 $[0,pi]$ 上的单调性知：
$ 0&=integral_0^pi f(x)(cos x-cos xi_1)dif x \
&=integral_0^(xi_1) f(x)(cos x-cos xi_1)dif x+integral_(xi_1)^pi f(x)(cos x-cos xi_1)dif x \
&>0, $
得出矛盾. （5分）

从而推知，在 $(0,pi)$ 内除 $xi_1$ 外，$f(x)=0$ 至少还有另一实根 $xi_2$，故知存在 $xi_1,xi_2 in (0,pi)$，$xi_1!=xi_2$，使 $f(xi_1)=f(xi_2)=0$. （6分）

注：证法1中的 $xi$ 和证法2中的 $xi_1$ 也可用积分中值定理得到.
]


]

#ezexam.question(label: n => [十、])[
（本题满分6分）设矩阵 $A$ 的伴随矩阵 $A^*=mat(1,0,0,0;0,1,0,0;1,0,1,0;0,-3,0,8)$，且
$ A B A^(-1)=B A^(-1)+3E, $
其中 $E$ 为4阶单位矩阵，求矩阵 $B$.
#ezexam.solution(show-number: false)[
*解法1* 由 $|A^*|=|A|^(n-1)$，有 $|A|^3=8$，得 $|A|=2$. （2分）

又 $(A-E)B A^(-1)=3E$，有 $(A-E)B=3A$.

从而 $A^(-1)(A-E)B=3E$，由此得 $(E-A^(-1))B=3E$，即 $(E-frac(A^*,|A|))B=3E$，亦即 $(2E-A^*)B=6E$.

又 $2E-A^*$ 为可逆矩阵，于是
$ B=6(2E-A^*)^(-1). quad "（4分）" $
由 $2E-A^*=mat(1,0,0,0;0,1,0,0;-1,0,1,0;0,3,0,-6)$，有
$ (2E-A^*)^(-1)=mat(1,0,0,0;0,1,0,0;1,0,1,0;0,frac(1,2),0,-frac(1,6)). $
因此
$ B=mat(6,0,0,0;0,6,0,0;6,0,6,0;0,3,0,-1). quad "（6分）" $
*解法2* 由 $|A^*|=|A|^(n-1)$，有 $|A|^3=8$，得 $|A|=2$. （2分）

又 $A A^*=|A|E$，得
$ A&=|A|(A^*)^(-1)=2(A^*)^(-1) \
&=2mat(1,0,0,0;0,1,0,0;-1,0,1,0;0,frac(3,8),0,frac(1,8))=mat(2,0,0,0;0,2,0,0;-2,0,2,0;0,frac(3,4),0,frac(1,4)). quad "（3分）" $
可见 $A-E$ 为可逆矩阵，于是由 $(A-E)B A^(-1)=3E$ 有
$ B=3(A-E)^(-1)A. quad "（4分）" $
由 $A-E=mat(1,0,0,0;0,1,0,0;-2,0,1,0;0,frac(3,4),0,-frac(3,4))$，得
$ (A-E)^(-1)=mat(1,0,0,0;0,1,0,0;2,0,1,0;0,1,0,-frac(4,3)), quad "（5分）" $
因此
$ B&=3mat(1,0,0,0;0,1,0,0;2,0,1,0;0,1,0,-frac(4,3))mat(2,0,0,0;0,2,0,0;-2,0,2,0;0,frac(3,4),0,frac(1,4)) \
&=mat(6,0,0,0;0,6,0,0;6,0,6,0;0,3,0,-1). quad "（6分）" $
]


]

#ezexam.question(label: n => [十一、])[
（本题满分8分）某试验性生产线每年一月份进行熟练工与非熟练工的人数统计，然后将 $frac(1,6)$ 熟练工支援其他生产部门，其缺额由招收新的非熟练工补齐.新、老非熟练工经过培训及实践至年终考核有 $frac(2,5)$ 成为熟练工.设第 $n$ 年一月份统计时熟练工和非熟练工所占百分比分别为 $x_n$ 和 $y_n$，记成向量 $mat(x_n;y_n)$.

（1）求 $mat(x_(n+1);y_(n+1))$ 与 $mat(x_n;y_n)$ 的关系式并写成矩阵形式：$mat(x_(n+1);y_(n+1))=A mat(x_n;y_n)$；

（2）验证 $eta_1=mat(4;1),eta_2=mat(-1;1)$ 是 $A$ 的两个线性无关的特征向量，并求出相应的特征值；

（3）当 $mat(x_1;y_1)=mat(frac(1,2);frac(1,2))$ 时，求 $mat(x_(n+1);y_(n+1))$.
#ezexam.solution(show-number: false)[
（1）$cases(x_(n+1)=frac(5,6)x_n+frac(2,5)(frac(1,6)x_n+y_n),y_(n+1)=frac(3,5)(frac(1,6)x_n+y_n))$.

化简得 $cases(x_(n+1)=frac(9,10)x_n+frac(2,5)y_n,y_(n+1)=frac(1,10)x_n+frac(3,5)y_n)$，

即 $mat(x_(n+1);y_(n+1))=mat(frac(9,10),frac(2,5);frac(1,10),frac(3,5))mat(x_n;y_n)$，于是
$ A=mat(frac(9,10),frac(2,5);frac(1,10),frac(3,5)). quad "（3分）" $
（2）令 $P=(eta_1,eta_2)=mat(4,-1;1,1)$，则由 $|P|=5!=0$ 知，$eta_1,eta_2$ 线性无关.

因 $A eta_1=mat(4;1)=eta_1$，故 $eta_1$ 为 $A$ 的特征向量，且相应的特征值 $lambda_1=1$.

因 $A eta_2=mat(-frac(1,2);frac(1,2))=frac(1,2)eta_2$，故 $eta_2$ 为 $A$ 的特征向量，且相应的特征值 $lambda_2=frac(1,2)$. （4分）

（3）
$ mat(x_(n+1);y_(n+1))=A mat(x_n;y_n)=A^2 mat(x_(n-1);y_(n-1))=dots=A^n mat(x_1;y_1)=A^n mat(frac(1,2);frac(1,2)). quad "（5分）" $
由 $P^(-1)A P=mat(lambda_1,0;0,lambda_2)$，有 $A=P mat(lambda_1,0;0,lambda_2)P^(-1)$.

于是
$ A^n=P mat(lambda_1,0;0,lambda_2)^n P^(-1). quad "（6分）" $
又 $P^(-1)=frac(1,5)mat(1,1;-1,4)$，故
$ A^n&=frac(1,5)mat(4,-1;1,1)mat(1,0;0,(frac(1,2))^n)mat(1,1;-1,4) \
&=frac(1,5)mat(4+(frac(1,2))^n,4-4(frac(1,2))^n;1-(frac(1,2))^n,1+4(frac(1,2))^n). $
因此
$ mat(x_(n+1);y_(n+1))=A^n mat(frac(1,2);frac(1,2))=frac(1,10)mat(8-3(frac(1,2))^n;2+3(frac(1,2))^n). quad "（8分）" $
]


]

#ezexam.question(label: n => [十二、])[
（本题满分8分）某流水生产线上每个产品不合格的概率为 $p$（$0<p<1$），各产品合格与否相互独立，当出现一个不合格产品时即停机检修.设开机后第一次停机时已生产了的产品个数为 $X$，求 $X$ 的数学期望 $E(X)$ 和方差 $D(X)$.
#ezexam.solution(show-number: false)[
记 $q=1-p$，$X$ 的概率分布为
$ P{X=i}=q^(i-1)p,quad i=1,2,dots. quad "（3分）" $
$X$ 的数学期望为
$ E(X)&=sum_(i=1)^infinity i q^(i-1)p=p sum_(i=1)^infinity (q^i)' \
&=p(sum_(i=1)^infinity q^i)'=p(frac(q,1-q))'=frac(1,p). quad "（5分）" $
因为
$ E(X^2)&=sum_(i=1)^infinity i^2 q^(i-1)p=p[q(sum_(i=1)^infinity q^i)']' \
&=p[frac(q,(1-q)^2)]'=frac(2-p,p^2), quad "（7分）" $
所以 $X$ 的方差为
$ D(X)=E(X^2)-[E(X)]^2=frac(2-p,p^2)-frac(1,p^2)=frac(1-p,p^2). quad "（8分）" $
]


]

#ezexam.question(label: n => [十三、])[
（本题满分6分）设某种元件的使用寿命 $X$ 的概率密度为
$ f(x;theta)=cases(2e^(-2(x-theta)) quad x>=theta,0 quad x<theta), $
其中 $theta>0$ 为未知参数.又设 $x_1,x_2,dots,x_n$ 是 $X$ 的一组样本观测值，求参数 $theta$ 的最大似然估计值.
#ezexam.solution(show-number: false)[
似然函数为
$ L(theta)=L(x_1,x_2,dots,x_n;theta)=cases(2^n e^(-2sum_(i=1)^n (x_i-theta)) quad x_i>=theta quad (i=1,2,dots,n),0 quad "其他"). quad "（2分）" $
当 $x_i>=theta$（$i=1,2,dots,n$）时，$L(theta)>0$，取对数，得
$ ln L(theta)=n ln 2-2sum_(i=1)^n (x_i-theta). $
因为 $frac(dif ln L(theta),dif theta)=2n>0$，所以 $L(theta)$ 单调增加. （4分）

由于 $theta$ 必须满足 $theta<=x_i$（$i=1,2,dots,n$），因此当 $theta$ 取 $x_1,x_2,dots,x_n$ 中的最小值时，$L(theta)$ 取最大值.所以 $theta$ 的最大似然估计值为
$ hat(theta)=min(x_1,x_2,dots,x_n). quad "（6分）" $
]

]
