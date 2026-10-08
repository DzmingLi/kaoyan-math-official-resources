#import "../template.typ": exam
#show: exam.with(year: 1997, subject: "一", title: "1997年全国工学、经济学硕士研究生入学考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])


= 一、填空题（15分，每小题3分）
#ezexam.counter-question.step()

（1）$lim_(x arrow 0)(3sin x+x^2 cos(1/x))/((1+cos x)ln(1+x))=$ #fillin(len: 4em)[].

（2）设幂级数 $sum_(n=0)^infinity a_n x^n$ 的收敛半径为3，则幂级数 $sum_(n=1)^infinity n a_n(x-1)^(n+1)$ 的收敛区间为#fillin(len: 4em)[].

（3）对数螺线 $rho=e^theta$ 在点 $(rho,theta)=(e^(pi/2),pi/2)$ 处的切线的直角坐标方程为#fillin(len: 4em)[].

（4）设 $A=mat(1,2,-2;4,t,3;3,-1,1)$，$B$ 为三阶非零矩阵，且 $A B=0$，则 $t=$ #fillin(len: 4em)[].

（5）袋中有50个乒乓球，其中20个是黄球，30个是白球.今有两人依次随机地从袋中各取一球，取后不放回，则第二个人取得黄球的概率是#fillin(len: 4em)[].

= 二、选择题（15分，每小题3分）
#ezexam.counter-question.step()

（1）二元函数 $f(x,y)=cases((x y)/(x^2+y^2) & quad (x,y)≠(0,0),0 & quad (x,y)=(0,0))$ 在点 $(0,0)$ 处（　）.
#choices[连续，偏导数存在][连续，偏导数不存在][不连续，偏导数存在][不连续，偏导数不存在]

（2）设在区间 $[a,b]$ 上 $f(x)>0$、$f'(x)<0$、$f''(x)>0$.令 $S_1=integral_a^b f(x)dif x$、$S_2=f(b)(b-a)$、$S_3=1/2 [f(a)+f(b)](b-a)$，则（　）.
#choices[$S_1<S_2<S_3$][$S_2<S_1<S_3$][$S_3<S_1<S_2$][$S_2<S_3<S_1$]

（3）设 $F(x)=integral_x^(x+2pi)e^(sin t)sin t dif t$，则 $F(x)$（　）.
#choices[为正常数][为负常数][恒为零][不为常数]

（4）设 $alpha_1=(a_1,a_2,a_3)^T$、$alpha_2=(b_1,b_2,b_3)^T$、$alpha_3=(c_1,c_2,c_3)^T$，则三条直线
$ a_1 x+b_1 y+c_1=0, quad a_2 x+b_2 y+c_2=0, quad a_3 x+b_3 y+c_3=0 $
（其中 $a_i^2+b_i^2≠0$，$i=1,2,3$）交于一点的充要条件是（　）.
#choices[$alpha_1,alpha_2,alpha_3$ 线性相关][$alpha_1,alpha_2,alpha_3$ 线性无关][$op("r")(alpha_1,alpha_2,alpha_3)=op("r")(alpha_1,alpha_2)$][$alpha_1,alpha_2,alpha_3$ 线性相关，$alpha_1,alpha_2$ 线性无关]

（5）设两个相互独立的随机变量 $X$ 和 $Y$ 的方差分别为4和2，则随机变量 $3X-2Y$ 的方差是（　）.
#choices[8][16][28][44]

#ezexam.question(label: n => [三、])[
（15分，每小题5分）

（1）计算 $I=integral.triple_Omega (x^2+y^2)dif v$，其中 $Omega$ 为平面曲线 $cases(y^2=2z,x=0)$ 绕 $z$ 轴旋转一周形成的曲面与平面 $z=8$ 所围成的区域.

（2）计算曲线积分 $integral.cont_c (z-y)dif x+(x-z)dif y+(x-y)dif z$，其中 $c$ 是曲线 $cases(x^2+y^2=1,x-y+z=2)$，从 $z$ 轴正向往 $z$ 轴负向看 $c$ 的方向是顺时针的.

（3）在某一人群中推广新技术是通过其中已掌握新技术的人进行的.设该人群的总人数为 $N$，在 $t=0$ 时刻已掌握新技术的人数为 $x_0$，在任意时刻 $t$ 已掌握新技术的人数为 $x(t)$（将 $x(t)$ 视为连续可微变量），其变化率与已掌握新技术人数和未掌握新技术人数之积成正比，比例常数 $k>0$.求 $x(t)$.

]

#ezexam.question(label: n => [四、])[
（13分，第1小题6分，第2小题7分）

（1）设直线 $l:cases(x+y+b=0,x+a y-z-3=0)$ 在平面 $pi$ 上，而平面 $pi$ 与曲面 $z=x^2+y^2$ 相切于点 $(1,-2,5)$.求 $a,b$ 之值.

（2）设函数 $f(u)$ 具有二阶连续导数，而 $z=f(e^x sin y)$ 满足方程 $(partial^2 z)/(partial x^2)+(partial^2 z)/(partial y^2)=e^(2x)z$.求 $f(u)$.

]

#ezexam.question(label: n => [五、])[
（6分）

设 $f(x)$ 连续，$phi(x)=integral_0^1 f(x t)dif t$，且 $lim_(x arrow 0)f(x)/x=A$（$A$ 为常数）.求 $phi'(x)$ 并讨论 $phi'(x)$ 在 $x=0$ 处的连续性.

]

#ezexam.question(label: n => [六、])[
（8分）

设 $a_1=2$，$a_(n+1)=1/2 (a_n+1/a_n)$（$n=1,2,dots$）.证明：

（1）$lim_(n arrow infinity)a_n$ 存在；

（2）级数 $sum_(n=1)^infinity (a_n/a_(n+1)-1)$ 收敛.

]

#ezexam.question(label: n => [七、])[
（11分，第1小题5分，第2小题6分）

（1）设 $B$ 是秩为2的 $5 times 4$ 矩阵，$alpha_1=(1,1,2,3)^T$、$alpha_2=(-1,1,4,-1)^T$、$alpha_3=(5,-1,-8,9)^T$ 是齐次线性方程组 $B x=0$ 的解向量.求 $B x=0$ 的解空间的一个标准正交基.

（2）已知 $xi=(1,1,-1)^T$ 是矩阵 $A=mat(2,-1,2;5,a,3;-1,b,-2)$ 的一个特征向量.

（i）试确定参数 $a,b$ 及特征向量 $xi$ 所对应的特征值；

（ii）问 $A$ 能否相似于对角阵？说明理由.

]

#ezexam.question(label: n => [八、])[
（5分）

设 $A$ 是 $n$ 阶可逆方阵，将 $A$ 的第 $i$ 行和第 $j$ 行对换后得到的矩阵记为 $B$.

（1）证明 $B$ 可逆；

（2）求 $A B^(-1)$.

]

#ezexam.question(label: n => [九、])[
（7分）

从学校乘汽车到火车站的途中有3个交通岗.假设在各个交通岗遇到红灯的事件相互独立，且概率都是 $2/5$.设 $X$ 为途中遇到红灯的次数，求随机变量 $X$ 的分布律、分布函数和数学期望.

]

#ezexam.question(label: n => [十、])[
（5分）

设总体 $X$ 的概率密度为 $f(x)=cases((theta+1)x^theta & quad 0<x<1,0 & quad "其它")$，其中 $theta>-1$ 是未知参数.$X_1,X_2,dots,X_n$ 是来自总体 $X$ 的一个容量为 $n$ 的简单随机样本.分别用矩估计法和极大似然估计法求 $theta$ 的估计量.
]

