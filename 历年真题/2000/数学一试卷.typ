#import "../template.typ": exam
#show: exam.with(year: 2000, subject: "一", title: "2000年全国硕士研究生入学考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)


= 一、填空题（本题共5小题，每小题3分，满分15分）
#ezexam.counter-question.step()

（1）$integral_0^1 sqrt(2x-x^2)dif x=$ #fillin(len: 3em)[].

（2）曲面 $x^2+2y^2+3z^2=21$ 在点 $(1,-2,2)$ 的法线方程为 #fillin(len: 3em)[].

（3）微分方程 $x y''+3y'=0$ 的通解为 #fillin(len: 3em)[].

（4）已知方程组 $mat(1,2,1;2,3,a+2;1,a,-2)mat(x_1;x_2;x_3)=mat(1;3;0)$ 无解，则 $a=$ #fillin(len: 3em)[].

（5）设两个相互独立的事件 $A$ 和 $B$ 都不发生的概率为 $frac(1,9)$，$A$ 发生 $B$ 不发生的概率与 $B$ 发生 $A$ 不发生的概率相等，则 $P(A)=$ #fillin(len: 3em)[].

= 二、选择题（本题共5小题，每小题3分，满分15分）
#ezexam.counter-question.step()

（1）设 $f(x),g(x)$ 是恒大于零的可导函数，且 $f'(x)g(x)-f(x)g'(x)<0$，则当 $a<x<b$ 时，有（　）.
#choices[$f(x)g(b)>f(b)g(x)$.][$f(x)g(a)>f(a)g(x)$.][$f(x)g(x)>f(b)g(b)$.][$f(x)g(x)>f(a)g(a)$.]

（2）设 $S:x^2+y^2+z^2=a^2$（$z>=0$），$S_1$ 为 $S$ 在第一卦限中的部分，则有（　）.
#choices[$integral.double_S x dif S=4integral.double_(S_1) x dif S$.][$integral.double_S y dif S=4integral.double_(S_1) x dif S$.][$integral.double_S z dif S=4integral.double_(S_1) x dif S$.][$integral.double_S x y z dif S=4integral.double_(S_1) x y z dif S$.]

（3）设级数 $sum_(n=1)^infinity u_n$ 收敛，则必收敛的级数为（　）.
#choices[$sum_(n=1)^infinity (-1)^n frac(u_n,n)$.][$sum_(n=1)^infinity u_n^2$.][$sum_(n=1)^infinity (u_(2n-1)-u_(2n))$.][$sum_(n=1)^infinity (u_n+u_(n+1))$.]

（4）设 $n$ 维列向量组 $alpha_1,dots,alpha_m$（$m<n$）线性无关，则 $n$ 维列向量组 $beta_1,dots,beta_m$ 线性无关的充分必要条件为（　）.
#choices[向量组 $alpha_1,dots,alpha_m$ 可由向量组 $beta_1,dots,beta_m$ 线性表示.][向量组 $beta_1,dots,beta_m$ 可由向量组 $alpha_1,dots,alpha_m$ 线性表示.][向量组 $alpha_1,dots,alpha_m$ 与向量组 $beta_1,dots,beta_m$ 等价.][矩阵 $A=(alpha_1,dots,alpha_m)$ 与矩阵 $B=(beta_1,dots,beta_m)$ 等价.]

（5）设二维随机变量 $(X,Y)$ 服从二维正态分布，则随机变量 $xi=X+Y$ 与 $eta=X-Y$ 不相关的充分必要条件为（　）.
#choices[$E(X)=E(Y)$.][$E(X^2)-[E(X)]^2=E(Y^2)-[E(Y)]^2$.][$E(X^2)=E(Y^2)$.][$E(X^2)+[E(X)]^2=E(Y^2)+[E(Y)]^2$.]

#ezexam.question(label: n => [三、])[
（本题满分5分）求 $lim_(x->0)(frac(2+e^(1/x),1+e^(4/x))+frac(sin x,|x|))$.


]

#ezexam.question(label: n => [四、])[
（本题满分5分）设 $z=f(x y,frac(x,y))+g(frac(y,x))$，其中 $f$ 具有二阶连续偏导数，$g$ 具有二阶连续导数，求 $frac(partial^2 z,partial x partial y)$.


]

#ezexam.question(label: n => [五、])[
（本题满分6分）计算曲线积分 $I=integral.cont_L frac(x dif y-y dif x,4x^2+y^2)$，其中 $L$ 是以点 $(1,0)$ 为中心，$R$ 为半径的圆周（$R>1$），取逆时针方向.


]

#ezexam.question(label: n => [六、])[
（本题满分7分）设对于半空间 $x>0$ 内任意的光滑有向封闭曲面 $S$，都有
$ ∯_S x f(x)dif y dif z-x y f(x)dif z dif x-e^(2x)z dif x dif y=0, $
其中函数 $f(x)$ 在 $(0,+infinity)$ 内具有连续的一阶导数，且 $lim_(x->0^+) f(x)=1$.求 $f(x)$.


]

#ezexam.question(label: n => [七、])[
（本题满分6分）求幂级数 $sum_(n=1)^infinity frac(1,3^n+(-2)^n)frac(x^n,n)$ 的收敛区间，并讨论该区间端点处的收敛性.


]

#ezexam.question(label: n => [八、])[
（本题满分7分）设有一半径为 $R$ 的球体，$P_0$ 是此球的表面上的一个定点，球体上任一点的密度与该点到 $P_0$ 距离的平方成正比（比例常数 $k>0$），求球体的重心位置.


]

#ezexam.question(label: n => [九、])[
（本题满分6分）设函数 $f(x)$ 在 $[0,pi]$ 上连续，且 $integral_0^pi f(x)dif x=0$，$integral_0^pi f(x)cos x dif x=0$.试证：在 $(0,pi)$ 内至少存在两个不同的点 $xi_1,xi_2$，使 $f(xi_1)=f(xi_2)=0$.


]

#ezexam.question(label: n => [十、])[
（本题满分6分）设矩阵 $A$ 的伴随矩阵 $A^*=mat(1,0,0,0;0,1,0,0;1,0,1,0;0,-3,0,8)$，且
$ A B A^(-1)=B A^(-1)+3E, $
其中 $E$ 为4阶单位矩阵，求矩阵 $B$.


]

#ezexam.question(label: n => [十一、])[
（本题满分8分）某试验性生产线每年一月份进行熟练工与非熟练工的人数统计，然后将 $frac(1,6)$ 熟练工支援其他生产部门，其缺额由招收新的非熟练工补齐.新、老非熟练工经过培训及实践至年终考核有 $frac(2,5)$ 成为熟练工.设第 $n$ 年一月份统计时熟练工和非熟练工所占百分比分别为 $x_n$ 和 $y_n$，记成向量 $mat(x_n;y_n)$.

（1）求 $mat(x_(n+1);y_(n+1))$ 与 $mat(x_n;y_n)$ 的关系式并写成矩阵形式：$mat(x_(n+1);y_(n+1))=A mat(x_n;y_n)$；

（2）验证 $eta_1=mat(4;1),eta_2=mat(-1;1)$ 是 $A$ 的两个线性无关的特征向量，并求出相应的特征值；

（3）当 $mat(x_1;y_1)=mat(frac(1,2);frac(1,2))$ 时，求 $mat(x_(n+1);y_(n+1))$.


]

#ezexam.question(label: n => [十二、])[
（本题满分8分）某流水生产线上每个产品不合格的概率为 $p$（$0<p<1$），各产品合格与否相互独立，当出现一个不合格产品时即停机检修.设开机后第一次停机时已生产了的产品个数为 $X$，求 $X$ 的数学期望 $E(X)$ 和方差 $D(X)$.


]

#ezexam.question(label: n => [十三、])[
（本题满分6分）设某种元件的使用寿命 $X$ 的概率密度为
$ f(x;theta)=cases(2e^(-2(x-theta)) quad x>=theta,0 quad x<theta), $
其中 $theta>0$ 为未知参数.又设 $x_1,x_2,dots,x_n$ 是 $X$ 的一组样本观测值，求参数 $theta$ 的最大似然估计值.

]
