#import "../template.typ": exam, answer
#show: exam.with(year: 1995, subject: "MBA", title: "1995年全国工学、经济学硕士和 MBA 研究生入学考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 1995 数学MBA试卷参考解答

= 一、填空题

#answer("1（1）")[
由连续性，$A=lim_(x arrow 0)2ln(1+x)/x=2$.
]

#answer("1（2）")[
两边微分得 $dif x+dif y=cos y dif y$，故 $dif y=(dif x)/(cos y-1)$.
]

#answer("1（3）")[
由 $z_x=e^(x y)(1+x y)$、$z_y=x^2 e^(x y)$，得所求为 $x e^(x y)=z$.
]

#answer("1（4）")[
沿第一列展开，得 $3(-1)-3=-6$.
]

#answer("1（5）")[
$alpha_1,alpha_3$ 线性无关.由前两分量可知 $alpha_2=2alpha_1-alpha_3$，比较后两分量得 $x=2$.
]

#answer("1（6）")[
利用对立事件及独立性，得 $1-(1-0.3)(1-0.4)(1-0.5)=0.79$.
]

#answer("1（7）")[
$X∼op("B")(10,0.6)$，故 $E X=6$、$D X=2.4$，从而 $E X^2=D X+(E X)^2=38.4$.
]

= 解答题

#answer("二、")[
有理化得
$ (cos x-sqrt(cos x))/sin^2 x=-cos x/((cos x+sqrt(cos x))(1+cos x)), $
故极限为 $-1/4$.
]

#answer("三、")[
由复合函数求导，
$ y'=(e^x+e^(2x)/sqrt(1+e^(2x)))/(e^x+sqrt(1+e^(2x)))=e^x/sqrt(1+e^(2x)). $
]

#answer("四、")[
将被积函数拆分为 $1/x-x/(1+x^2)$，得
$ integral 1/(x(1+x^2))dif x=ln abs(x)-1/2 ln(1+x^2)+C. $
]

#answer("五、")[
（1）切线斜率为 $y'(1)=1/2$，故切线方程为 $y=x/2+1/2$.

（2）联立直线与抛物线方程，得交点横坐标为 $-1,2$，因此
$ S=integral_(-1)^2 (x/2+1/2-(x^2/2-1/2))dif x=9/4. $
]

#answer("六、")[
总收入为 $R=P Q=26Q-2Q^2-4Q^3$，利润为 $L=R-C=18Q-3Q^2-4Q^3$.

边际收入为 $R'=26-4Q-12Q^2$，边际成本为 $C'=8+2Q$.令 $L'=18-6Q-12Q^2=0$，取非负根 $Q=1$.在 $Q>=0$ 上，利润先增后减，因此产量为1时利润最大，最大利润为 $L(1)=11$.
]

#answer("七、")[
令 $phi(x)=f(x)-g(x)$，则 $phi$ 在 $[a,b]$ 上连续，且 $phi(a)>0$、$phi(b)<0$.由零点定理，存在 $xi in (a,b)$ 使 $phi(xi)=0$，即 $f(xi)=g(xi)$.
]

#answer("八、")[
（1）直接计算得 $A=mat(2,0,1;0,3,0;1,0,2)$.

（2）$det A=9!=0$，所以可逆.由初等行变换或伴随矩阵法，得 $A^(-1)=mat(2/3,0,-1/3;0,1/3,0;-1/3,0,2/3)$.
]

#answer("九、")[
增广矩阵行化简为
$ mat(1,-2,-1,-1,1;0,0,7,5,2-lambda;0,0,0,0,lambda-3). $
所以当且仅当 $lambda=3$ 时有解.继续化简，得 $x_1=6/7+2x_2+2x_4/7$、$x_3=-1/7-5x_4/7$.导出组的基础解系可取 $(2,1,0,0)^T$、$(2,0,-5,7)^T$，全部解为
$ X=(6/7,0,-1/7,0)^T+c_1(2,1,0,0)^T+c_2(2,0,-5,7)^T, $
其中 $c_1,c_2$ 为任意常数.
]

#answer("十、")[
由全概率公式，
$ alpha=0.5 times 0.9+0.3 times 0.8+0.2 times 0.7=0.83. $
]

#answer("十一、")[
正态变量的线性变换仍服从正态分布，且 $E Y=0$、$D Y=1/4$，所以 $Y∼N(0,1/4)$，其密度为
$ f(y)=sqrt(2/pi)e^(-2y^2), quad -infinity<y<infinity. $
]

