#import "../template.typ": exam
#show: exam.with(year: 1991, subject: "二", title: "1991年全国工学、经济学硕士研究生入学考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])


本试卷共9个大题，满分100分.

= 一、填空题（15分，每小题3分，只要求直接填写结果）
#ezexam.counter-question.step()

（1）设 $cases(x=1+t^2,y=cos t)$，则 $(dif^2 y)/(dif x^2)=$ #fillin(len: 4em)[].

（2）由方程 $x y z+sqrt(x^2+y^2+z^2)=sqrt(2)$ 所确定的函数 $z=z(x,y)$ 在点 $(1,0,-1)$ 处的全微分 $dif z=$ #fillin(len: 4em)[].

（3）已知两条直线的方程是
$ l_1: (x-1)/1=(y-2)/0=(z-3)/(-1), quad l_2:(x+2)/2=(y-1)/1=z/1. $
则过 $l_1$ 且平行于 $l_2$ 的平面方程是 #fillin(len: 4em)[].

（4）已知当 $x arrow 0$ 时，$(1+a x^2)^(1/3)-1$ 与 $cos x-1$ 是等价无穷小，则常数 $a=$ #fillin(len: 4em)[].

（5）设4阶方阵 $A=mat(5,2,0,0;2,1,0,0;0,0,1,-2;0,0,1,1)$，则 $A$ 的逆阵 $A^(-1)=$ #fillin(len: 4em)[].

= 二、选择题（15分，每小题3分；每题只有一个正确选项，不选或选错得0分）
#ezexam.counter-question.step()

（1）曲线 $y=(1+e^(-x^2))/(1-e^(-x^2))$
#choices([没有渐近线.],[仅有水平渐近线.],[仅有铅直渐近线.],[既有水平渐近线又有铅直渐近线.])

（2）若连续函数 $f(x)$ 满足关系式 $f(x)=integral_0^(2x) f(t/2) dif t+ln 2$，则 $f(x)$ 等于
#choices([$e^x ln 2$.],[$e^(2x) ln 2$.],[$e^x+ln 2$.],[$e^(2x)+ln 2$.])

（3）已知级数 $sum_(n=1)^infinity (-1)^(n-1) a_n=2$，$sum_(n=1)^infinity a_(2n-1)=5$，则级数 $sum_(n=1)^infinity a_n$ 等于
#choices([3.],[7.],[8.],[9.])

（4）设 $D$ 是 $x O y$ 平面上以 $(1,1)$、$(-1,1)$ 和 $(-1,-1)$ 为顶点的三角形区域，$D_1$ 是 $D$ 在第一象限的部分，则 $integral.double_D (x y+cos x sin y) dif x dif y$ 等于
#choices([$2 integral.double_(D_1) cos x sin y dif x dif y$.],[$2 integral.double_(D_1) x y dif x dif y$.],[$4 integral.double_(D_1)(x y+cos x sin y) dif x dif y$.],[0.])

（5）设 $n$ 阶方阵 $A$、$B$、$C$ 满足关系式 $A B C=E$，其中 $E$ 是 $n$ 阶单位阵，则必有
#choices([$A C B=E$.],[$C B A=E$.],[$B A C=E$.],[$B C A=E$.])

#ezexam.question(label: n => [三、])[
（15分，每小题5分）

（1）求 $lim_(x arrow 0^+) (cos sqrt(x))^(pi/x)$.

（2）设 $arrow(n)$ 是曲面 $2x^2+3y^2+z^2=6$ 在点 $P(1,1,1)$ 处的指向外侧的法向量，求函数 $u=sqrt(6x^2+8y^2)/z$ 在点 $P$ 处沿方向 $arrow(n)$ 的方向导数.

（3）求 $integral.triple_Omega (x^2+y^2+z) dif v$，其中 $Omega$ 是由曲线 $cases(y^2=2z,x=0)$ 绕 $z$ 轴旋转一周而成的曲面与平面 $z=4$ 所围成的立体.

]

#ezexam.question(label: n => [四、])[
（18分，每小题6分）

（1）求 $integral_3^(+infinity) (dif x)/((x-1)^4 sqrt(x^2-2x))$.

（2）计算 $I=integral.double_S -y dif z dif x+(z+1)dif x dif y$，其中 $S$ 是圆柱面 $x^2+y^2=4$ 被平面 $x+z=2$ 和 $z=0$ 所截出部分的外侧.

（3）在过点 $O(0,0)$ 和 $A(pi,0)$ 的曲线族 $y=a sin x$（$a>0$）中，求一条曲线 $L$，使沿该曲线从 $O$ 到 $A$ 的积分 $integral_L (1+y^3) dif x+(2x+y) dif y$ 的值最小.

]

#ezexam.question(label: n => [五、])[
（8分）

将函数 $f(x)=2+abs(x)$（$-1<=x<=1$）展开成以2为周期的傅里叶级数，并由此求级数 $sum_(n=1)^infinity 1/n^2$ 的和.

]

#ezexam.question(label: n => [六、])[
（7分）

设函数 $f(x)$ 在 $[0,1]$ 上连续，$(0,1)$ 内可导，且 $3 integral_(2/3)^1 f(x)dif x=f(0)$，证明在 $(0,1)$ 内存在一点 $c$，使 $f'(c)=0$.

]

#ezexam.question(label: n => [七、])[
（8分）

已知 $alpha_1=(1,0,2,3)$，$alpha_2=(1,1,3,5)$，$alpha_3=(1,-1,a+2,1)$，$alpha_4=(1,2,4,a+8)$ 及 $beta=(1,1,b+3,5)$.

（1）$a,b$ 为何值时，$beta$ 不能表示成 $alpha_1,alpha_2,alpha_3,alpha_4$ 的线性组合？

（2）$a,b$ 为何值时，$beta$ 有 $alpha_1,alpha_2,alpha_3,alpha_4$ 的唯一的线性表示式？并写出该表示式.

]

#ezexam.question(label: n => [八、])[
（6分）

设 $A$ 是 $n$ 阶正定阵，$E$ 是 $n$ 阶单位阵，证明 $A+E$ 的行列式大于1.

]

#ezexam.question(label: n => [九、])[
（8分）

在上半平面求一条向上凹的曲线，其上任一点 $P(x,y)$ 处的曲率等于此曲线在该点的法线段 $P Q$ 长度的倒数（$Q$ 是法线与 $x$ 轴的交点），且曲线在点 $(1,1)$ 处的切线与 $x$ 轴平行.
]

