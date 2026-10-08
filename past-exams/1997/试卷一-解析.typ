#import "../template.typ": exam
#show: exam.with(year: 1997, subject: "一", title: "1997年全国工学、经济学硕士研究生入学考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(true)


= 一、填空题（15分，每小题3分）
#ezexam.counter-question.step()

（1）$lim_(x arrow 0)(3sin x+x^2 cos(1/x))/((1+cos x)ln(1+x))=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
分子分母同除以 $x$，利用 $ (sin x)/x arrow 1$、$x cos(1/x)arrow 0$、$ (ln(1+x))/x arrow 1$，得极限为 $3/2$.
]

（2）设幂级数 $sum_(n=0)^infinity a_n x^n$ 的收敛半径为3，则幂级数 $sum_(n=1)^infinity n a_n(x-1)^(n+1)$ 的收敛区间为#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
幂级数逐项求导不改变收敛半径，再乘 $(x-1)^2$ 也不改变半径，因此收敛区间为 $(-2,4)$.
]

（3）对数螺线 $rho=e^theta$ 在点 $(rho,theta)=(e^(pi/2),pi/2)$ 处的切线的直角坐标方程为#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
参数方程为 $x=e^theta cos theta$、$y=e^theta sin theta$.在 $theta=pi/2$ 处，$x'=-e^(pi/2)$、$y'=e^(pi/2)$，切点为 $(0,e^(pi/2))$，故切线为 $x+y=e^(pi/2)$.
]

（4）设 $A=mat(1,2,-2;4,t,3;3,-1,1)$，$B$ 为三阶非零矩阵，且 $A B=0$，则 $t=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
因为 $B≠0$，$A$ 必须奇异.$det A=7t+21=0$，故 $t=-3$.
]

（5）袋中有50个乒乓球，其中20个是黄球，30个是白球.今有两人依次随机地从袋中各取一球，取后不放回，则第二个人取得黄球的概率是#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
由全概率公式，$P=20/50 times 19/49+30/50 times 20/49=2/5$.
]

= 二、选择题（15分，每小题3分）
#ezexam.counter-question.step()

（1）二元函数 $f(x,y)=cases((x y)/(x^2+y^2) & quad (x,y)≠(0,0),0 & quad (x,y)=(0,0))$ 在点 $(0,0)$ 处（　）.
#choices[连续，偏导数存在][连续，偏导数不存在][不连续，偏导数存在][不连续，偏导数不存在]
#ezexam.solution(show-number: false)[
C.沿 $y=x≠0$ 有 $f(x,x)=1/2$，故不连续；沿两坐标轴恒为0，故两个偏导数均存在且为0.
]

（2）设在区间 $[a,b]$ 上 $f(x)>0$、$f'(x)<0$、$f''(x)>0$.令 $S_1=integral_a^b f(x)dif x$、$S_2=f(b)(b-a)$、$S_3=1/2 [f(a)+f(b)](b-a)$，则（　）.
#choices[$S_1<S_2<S_3$][$S_2<S_1<S_3$][$S_3<S_1<S_2$][$S_2<S_3<S_1$]
#ezexam.solution(show-number: false)[
B.由严格递减性知 $S_2<S_1$；由 $f''>0$，曲线位于端点弦的下方，故 $S_1<S_3$.
]

（3）设 $F(x)=integral_x^(x+2pi)e^(sin t)sin t dif t$，则 $F(x)$（　）.
#choices[为正常数][为负常数][恒为零][不为常数]
#ezexam.solution(show-number: false)[
A.被积函数以 $2pi$ 为周期，故积分为常数.将后半周期换元，可写成 $integral_0^pi (e^(sin t)-e^(-sin t))sin t dif t>0$.
]

（4）设 $alpha_1=(a_1,a_2,a_3)^T$、$alpha_2=(b_1,b_2,b_3)^T$、$alpha_3=(c_1,c_2,c_3)^T$，则三条直线
$ a_1 x+b_1 y+c_1=0, quad a_2 x+b_2 y+c_2=0, quad a_3 x+b_3 y+c_3=0 $
（其中 $a_i^2+b_i^2≠0$，$i=1,2,3$）交于一点的充要条件是（　）.
#choices[$alpha_1,alpha_2,alpha_3$ 线性相关][$alpha_1,alpha_2,alpha_3$ 线性无关][$op("r")(alpha_1,alpha_2,alpha_3)=op("r")(alpha_1,alpha_2)$][$alpha_1,alpha_2,alpha_3$ 线性相关，$alpha_1,alpha_2$ 线性无关]
#ezexam.solution(show-number: false)[
D.交于唯一一点等价于关于 $x,y$ 的方程组有唯一解，即系数矩阵和增广矩阵的秩都等于2.
]

（5）设两个相互独立的随机变量 $X$ 和 $Y$ 的方差分别为4和2，则随机变量 $3X-2Y$ 的方差是（　）.
#choices[8][16][28][44]
#ezexam.solution(show-number: false)[
D.由独立性，$D(3X-2Y)=9D X+4D Y=36+8=44$.
]

#ezexam.question(label: n => [三、])[
（15分，每小题5分）

（1）计算 $I=integral.triple_Omega (x^2+y^2)dif v$，其中 $Omega$ 为平面曲线 $cases(y^2=2z,x=0)$ 绕 $z$ 轴旋转一周形成的曲面与平面 $z=8$ 所围成的区域.
#ezexam.solution(show-number: false)[
用柱坐标 $x=r cos theta$、$y=r sin theta$，区域为 $0<=theta<=2pi$、$0<=r<=4$、$r^2/2<=z<=8$，故
$ I=integral_0^(2pi)dif theta integral_0^4 r^3 dif r integral_(r^2/2)^8 dif z=2pi integral_0^4 r^3(8-r^2/2)dif r=1024pi/3. $
]

（2）计算曲线积分 $integral.cont_c (z-y)dif x+(x-z)dif y+(x-y)dif z$，其中 $c$ 是曲线 $cases(x^2+y^2=1,x-y+z=2)$，从 $z$ 轴正向往 $z$ 轴负向看 $c$ 的方向是顺时针的.
#ezexam.solution(show-number: false)[
令向量场 $F=(z-y,x-z,x-y)$，则 $op("rot")F=(0,0,2)$.取平面 $x-y+z=2$ 内以 $c$ 为边界的曲面，法向量向下.由斯托克斯公式，所求为
$ -2integral.double_(x^2+y^2<=1)dif x dif y=-2pi. $
]

（3）在某一人群中推广新技术是通过其中已掌握新技术的人进行的.设该人群的总人数为 $N$，在 $t=0$ 时刻已掌握新技术的人数为 $x_0$，在任意时刻 $t$ 已掌握新技术的人数为 $x(t)$（将 $x(t)$ 视为连续可微变量），其变化率与已掌握新技术人数和未掌握新技术人数之积成正比，比例常数 $k>0$.求 $x(t)$.
#ezexam.solution(show-number: false)[
依题意，$x'=k x(N-x)$，$x(0)=x_0$.分离变量积分，得 $ln(x/(N-x))=k N t+C$.代入初值得
$ x(t)=(N x_0 e^(k N t))/(N-x_0+x_0 e^(k N t)). $
该式也包含 $x_0=0$ 和 $x_0=N$ 时的常数解.
]

]

#ezexam.question(label: n => [四、])[
（13分，第1小题6分，第2小题7分）

（1）设直线 $l:cases(x+y+b=0,x+a y-z-3=0)$ 在平面 $pi$ 上，而平面 $pi$ 与曲面 $z=x^2+y^2$ 相切于点 $(1,-2,5)$.求 $a,b$ 之值.
#ezexam.solution(show-number: false)[
切平面为 $2(x-1)-4(y+2)-(z-5)=0$，即 $2x-4y-z-5=0$.将直线的 $y=-x-b$、$z=x+a(-x-b)-3$ 代入，得 $(5+a)x+(4+a)b-2=0$.恒成立要求 $a=-5$、$b=-2$.
]

（2）设函数 $f(u)$ 具有二阶连续导数，而 $z=f(e^x sin y)$ 满足方程 $(partial^2 z)/(partial x^2)+(partial^2 z)/(partial y^2)=e^(2x)z$.求 $f(u)$.
#ezexam.solution(show-number: false)[
令 $u=e^x sin y$，链式法则给出
$ z_(x x)=f''(u)e^(2x)sin^2 y+f'(u)e^x sin y, $
$ z_(y y)=f''(u)e^(2x)cos^2 y-f'(u)e^x sin y. $
相加并代入方程得 $f''(u)-f(u)=0$，所以 $f(u)=C_1 e^u+C_2 e^(-u)$.
]

]

#ezexam.question(label: n => [五、])[
（6分）

设 $f(x)$ 连续，$phi(x)=integral_0^1 f(x t)dif t$，且 $lim_(x arrow 0)f(x)/x=A$（$A$ 为常数）.求 $phi'(x)$ 并讨论 $phi'(x)$ 在 $x=0$ 处的连续性.
#ezexam.solution(show-number: false)[
由题设 $f(0)=phi(0)=0$.当 $x≠0$ 时换元得 $phi(x)=1/x integral_0^x f(u)dif u$，所以
$ phi'(x)=cases((x f(x)-integral_0^x f(u)dif u)/x^2 & quad x≠0,A/2 & quad x=0). $
其中 $phi'(0)=lim_(x arrow 0)(integral_0^x f(u)dif u)/x^2=A/2$.又
$ lim_(x arrow 0)phi'(x)=A-A/2=A/2=phi'(0), $
故 $phi'$ 在0处连续.
]

]

#ezexam.question(label: n => [六、])[
（8分）

设 $a_1=2$，$a_(n+1)=1/2 (a_n+1/a_n)$（$n=1,2,dots$）.证明：

（1）$lim_(n arrow infinity)a_n$ 存在；

（2）级数 $sum_(n=1)^infinity (a_n/a_(n+1)-1)$ 收敛.
#ezexam.solution(show-number: false)[
（1）由算术—几何平均不等式，$a_(n+1)>=1$；又 $a_(n+1)-a_n=(1-a_n^2)/(2a_n)<=0$.故数列单调有下界，极限存在，且由递推式知极限为1.

（2）有 $0<=a_n/a_(n+1)-1<=(a_n-a_(n+1))$.而 $sum_(n=1)^m (a_n-a_(n+1))=a_1-a_(m+1)arrow 1$，由比较判别法，所给级数收敛.
]

]

#ezexam.question(label: n => [七、])[
（11分，第1小题5分，第2小题6分）

（1）设 $B$ 是秩为2的 $5 times 4$ 矩阵，$alpha_1=(1,1,2,3)^T$、$alpha_2=(-1,1,4,-1)^T$、$alpha_3=(5,-1,-8,9)^T$ 是齐次线性方程组 $B x=0$ 的解向量.求 $B x=0$ 的解空间的一个标准正交基.
#ezexam.solution(show-number: false)[
解空间维数为 $4-2=2$，且 $alpha_1,alpha_2$ 线性无关.施密特正交化得
$ beta_1=alpha_1, quad beta_2=alpha_2-1/3 alpha_1=2/3 (-2,1,5,-3)^T. $
因此所求标准正交基为 $epsilon_1=(1,1,2,3)^T/sqrt(15)$、$epsilon_2=(-2,1,5,-3)^T/sqrt(39)$.
]

（2）已知 $xi=(1,1,-1)^T$ 是矩阵 $A=mat(2,-1,2;5,a,3;-1,b,-2)$ 的一个特征向量.

（i）试确定参数 $a,b$ 及特征向量 $xi$ 所对应的特征值；

（ii）问 $A$ 能否相似于对角阵？说明理由.
#ezexam.solution(show-number: false)[
（i）由 $A xi=lambda xi$ 得 $-1=lambda$、$a+2=lambda$、$b+1=-lambda$，故 $a=-3$、$b=0$、$lambda=-1$.

（ii）此时 $det(lambda I-A)=(lambda+1)^3$，而 $op("r")(A+I)=2$，所以唯一特征值 $-1$ 的特征子空间仅为一维，$A$ 不能相似于对角阵.
]

]

#ezexam.question(label: n => [八、])[
（5分）

设 $A$ 是 $n$ 阶可逆方阵，将 $A$ 的第 $i$ 行和第 $j$ 行对换后得到的矩阵记为 $B$.

（1）证明 $B$ 可逆；

（2）求 $A B^(-1)$.
#ezexam.solution(show-number: false)[
（1）$det B=-det A≠0$，故 $B$ 可逆.

（2）记 $E_(i j)$ 为将单位矩阵第 $i,j$ 行互换所得的初等矩阵.则 $B=E_(i j)A$，且 $E_(i j)^(-1)=E_(i j)$，故 $A B^(-1)=A A^(-1)E_(i j)=E_(i j)$.
]

]

#ezexam.question(label: n => [九、])[
（7分）

从学校乘汽车到火车站的途中有3个交通岗.假设在各个交通岗遇到红灯的事件相互独立，且概率都是 $2/5$.设 $X$ 为途中遇到红灯的次数，求随机变量 $X$ 的分布律、分布函数和数学期望.
#ezexam.solution(show-number: false)[
有 $X∼B(3,2/5)$，分布律为
$ mat(X,0,1,2,3;P,27/125,54/125,36/125,8/125). $
分布函数为
$ F(x)=cases(0 & quad x<0,27/125 & quad 0<=x<1,81/125 & quad 1<=x<2,117/125 & quad 2<=x<3,1 & quad x>=3). $
数学期望 $E X=3 times 2/5=6/5$.
]

]

#ezexam.question(label: n => [十、])[
（5分）

设总体 $X$ 的概率密度为 $f(x)=cases((theta+1)x^theta & quad 0<x<1,0 & quad "其它")$，其中 $theta>-1$ 是未知参数.$X_1,X_2,dots,X_n$ 是来自总体 $X$ 的一个容量为 $n$ 的简单随机样本.分别用矩估计法和极大似然估计法求 $theta$ 的估计量.
#ezexam.solution(show-number: false)[
由 $E X=(theta+1)/(theta+2)$，令其等于 $overline(X)$，得矩估计量
$ hat(theta)_M=(2overline(X)-1)/(1-overline(X)). $
在样本值均处于 $(0,1)$ 时，对数似然为 $ell(theta)=n ln(theta+1)+theta sum_(i=1)^n ln x_i$.令 $ell'(theta)=n/(theta+1)+sum ln x_i=0$，且 $ell''(theta)<0$，得极大似然估计量
$ hat(theta)_L=-1-n/(sum_(i=1)^n ln X_i). $
]

]

