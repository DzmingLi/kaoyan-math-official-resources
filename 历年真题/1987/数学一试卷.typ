#import "../template.typ": exam
#show: exam.with(year: 1987, subject: "一", title: "1987年全国硕士研究生入学统一考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)

= 一、填空题（本题共5个小题，每小题3分，满分15分. 把答案填在题中横线上.）

#ezexam.question(label: n => [（1）])[
当 $x=$ #fillin(len: 4em)[] 时，函数 $y=x dot 2^x$ 取得极小值.
]

#ezexam.question(label: n => [（2）])[
由曲线 $y=ln x$ 与两直线 $y=e+1-x$ 及 $y=0$ 所围成的平面图形的面积是 #fillin(len: 4em)[].
]

#ezexam.question(label: n => [（3）])[
与两直线 $cases(x=1,y=-1+t,z=2+t)$ 及 $(x+1)/1=(y+2)/2=(z+1)/1$ 都平行且过原点的平面方程为 #fillin(len: 4em)[].
]

#ezexam.question(label: n => [（4）])[
设 $L$ 为取正向的圆周 $x^2+y^2=9$，则曲线积分 $integral.cont_L (2x y-2y)dif x+(x^2-4x)dif y=$ #fillin(len: 4em)[].
]

#ezexam.question(label: n => [（5）])[
已知三维向量空间的基底为 $alpha_1=(1,1,0), alpha_2=(1,0,1), alpha_3=(0,1,1)$，则向量 $beta=(2,0,0)$ 在此基底下的坐标是 #fillin(len: 4em)[].
]

= 二、选择题（本大题共4个小题，每小题3分，满分12分. 每小题给出的四个选项中，只有一项符合题目要求. 把所选项前的字母填在题后的括号内.）

#ezexam.question(label: n => [（1）])[
设 $lim_(x->a)(f(x)-f(a))/(x-a)^2=-1$，则在 $x=a$ 处（　）.
#choices([$f(x)$ 的导数存在，且 $f'(a)!=0$.],[$f(x)$ 取得极大值.],[$f(x)$ 取得极小值.],[$f(x)$ 的导数不存在.])
]

#ezexam.question(label: n => [（2）])[
设 $f(x)$ 为已知连续函数，$I=t integral_0^(s/t) f(t x)dif x$，其中 $t>0,s>0$，则 $I$ 的值（　）.
#choices([依赖于 $s$ 和 $t$.],[依赖于 $s,t$ 和 $x$.],[依赖于 $t,x$，不依赖于 $s$.],[依赖于 $s$，不依赖于 $t$.])
]

#ezexam.question(label: n => [（3）])[
设常数 $k>0$，则级数 $sum_(n=1)^infinity (-1)^n (k+n)/n^2$（　）.
#choices([发散.],[绝对收敛.],[条件收敛.],[敛散性与 $k$ 的取值有关.])
]

#ezexam.question(label: n => [（4）])[
设 $A$ 为 $n$ 阶方阵，且 $A$ 的行列式 $abs(A)=a!=0$，$A^*$ 是 $A$ 的伴随矩阵，则 $abs(A^*)$ 等于（　）.
#choices([$a$],[$1/a$],[$a^(n-1)$],[$a^n$])
]

#ezexam.question(label: n => [三、])[
（本题满分10分）

设函数 $f(x)$ 在闭区间 $[0,1]$ 上可微，对于 $[0,1]$ 上的每一个 $x$，函数 $f(x)$ 的值都在开区间 $(0,1)$ 内，且 $f'(x)!=1$，证明在 $(0,1)$ 内有且仅有一个 $x$，使 $f(x)=x$.
]

#ezexam.question(label: n => [四、])[
（本题满分3分）

设 $f,g$ 为连续可微函数，$u=f(x,x y),v=g(x+x y)$，求 $(partial u)/(partial x) dot (partial v)/(partial x)$.
]

#ezexam.question(label: n => [五、])[
（本题满分8分）

求微分方程 $y'''+6y''+(9+a^2)y'=1$ 的通解，其中常数 $a>0$.
]

#ezexam.question(label: n => [六、])[
（本题满分10分）

计算曲面积分
$ I=integral.double_Sigma x(8y+1)dif y dif z+2(1-y^2)dif z dif x-4y z dif x dif y, $
其中 $Sigma$ 是由曲线 $cases(z=sqrt(y-1),x=0) (1<=y<=3)$ 绕 $y$ 轴旋转一周而成的曲面，其法向量与 $y$ 轴正向的夹角大于 $pi/2$.
]

#ezexam.question(label: n => [七、])[
（本题满分4分）

设矩阵 $A$ 和 $B$ 满足关系式 $A B=A+2B$，其中 $A=mat(3,0,1;1,1,0;0,1,4)$，求矩阵 $B$.
]

#ezexam.question(label: n => [八、])[
（本题满分8分）

问 $a,b$ 为何值时，线性方程组
$ cases(x_1+x_2+x_3+x_4=0,x_2+2x_3+2x_4=1,-x_2+(a-3)x_3-2x_4=b,3x_1+2x_2+x_3+a x_4=-1) $
有唯一解，无解，有无穷多解？并求出有无穷多解时的通解.
]

= 九、填空题（本题共3个小题，每小题2分，满分6分.）

#ezexam.question(label: n => [（1）])[
设在一次试验中，事件 $A$ 发生的概率为 $p$，现进行 $n$ 次独立试验，则 $A$ 至少发生一次的概率为 #fillin(len: 4em)[]，而事件 $A$ 至多发生一次的概率为 #fillin(len: 4em)[].
]

#ezexam.question(label: n => [（2）])[
有两个箱子，第1个箱子有3个白球，2个红球，第2个箱子有4个白球，4个红球.现从第1个箱子中随机地取1个球放到第2个箱子里，再从第2个箱子中取出1个球，此球是白球的概率为 #fillin(len: 4em)[]. 已知上述从第2个箱子中取出的球是白球，则从第1个箱子中取出的球是白球的概率为 #fillin(len: 4em)[].
]

#ezexam.question(label: n => [（3）])[
已知连续随机变量 $X$ 的概率密度函数为 $f(x)=1/sqrt(pi) e^(-x^2+2x-1)$，则 $X$ 的数学期望为 #fillin(len: 4em)[]，$X$ 的方差为 #fillin(len: 4em)[].
]

#ezexam.question(label: n => [十、])[
（本题满分6分）

设随机变量 $X,Y$ 相互独立，其概率密度函数分别为
$ f_X(x)=cases(1 & 0<=x<=1,0 & "其他"), quad f_Y(y)=cases(e^(-y) & y>0,0 & y<=0). $
求 $Z=2X+Y$ 的概率密度函数.
]
