#import "../template.typ": exam
#show: exam.with(year: 2015, subject: "二")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)


= 一、选择题：1—8小题，每小题4分，共32分. 在每小题给出的四个选项中，只有一项符合题目要求，把所选项前的字母填在题后的括号内.

#ezexam.question[
下列反常积分中收敛的是
#choices([$integral_2^infinity 1/sqrt(x)dif x$.], [$integral_2^infinity (ln x)/x dif x$.], [$integral_2^infinity 1/(x ln x)dif x$.], [$integral_2^infinity x/e^x dif x$.])
]

#ezexam.question[
函数 $f(x)=lim_(t->0)(1+(sin t)/x)^(x^2/t)$ 在 $(-infinity,+infinity)$ 内
#choices([连续.], [有可去间断点.], [有跳跃间断点.], [有无穷间断点.])
]

#ezexam.question[
设函数 $f(x)=cases(x^alpha cos(1/x^beta) & x>0,0 & x<=0)$（$alpha>0,beta>0$）.若 $f'(x)$ 在 $x=0$ 处连续，则
#choices([$alpha-beta>1$.], [$0<alpha-beta<=1$.], [$alpha-beta>2$.], [$0<alpha-beta<=2$.])
]

#ezexam.question[
设函数 $f(x)$ 在 $(-infinity,+infinity)$ 内连续，其 2 阶导数 $f''(x)$ 的图形如图所示，则曲线 $y=f(x)$ 的拐点个数为

#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
 import draw: *
 line((-2.2,0),(2.3,0),mark:(end: ">"))
 line((0,-1.3),(0,3.3),mark:(end: ">"))
 bezier((-1.7,1.5),(-0.85,0),(-1.65,0.3),(-1.15,0))
 bezier((-0.85,0),(-0.2,2.4),(-0.4,0),(-0.25,1.2))
 bezier((0.08,-1.25),(1.7,1.35),(0.25,0.4),(0.8,0.9))
 content((-0.85,-0.22),$O$)
 content((2.4,-0.15),$x$)
 content((-0.1,3.5),$f''(x)$)
})
#choices([0.], [1.], [2.], [3.])
]

#ezexam.question[
设函数 $f(u,v)$ 满足 $f(x+y,y/x)=x^2-y^2$，则 $(partial f)/(partial u)|_(u=1,v=1)$ 与 $(partial f)/(partial v)|_(u=1,v=1)$ 依次是
#choices([$1/2,0$.], [$0,1/2$.], [$-1/2,0$.], [$0,-1/2$.])
]

#ezexam.question[
设 $D$ 是第一象限中由曲线 $2x y=1,4x y=1$ 与直线 $y=x,y=sqrt(3)x$ 围成的平面区域，函数 $f(x,y)$ 在 $D$ 上连续，则 $integral.double_D f(x,y)dif x dif y=$
#choices([$integral_(pi/4)^(pi/3)dif theta integral_(1/(2sin 2theta))^(1/(sin 2theta)) f(r cos theta,r sin theta)dif r$.], [$integral_(pi/4)^(pi/3)dif theta integral_(1/sqrt(2sin 2theta))^(1/sqrt(sin 2theta)) r f(r cos theta,r sin theta)dif r$.], [$integral_(pi/4)^(pi/3)dif theta integral_(1/(2sin 2theta))^(1/(sin 2theta)) r f(r cos theta,r sin theta)dif r$.], [$integral_(pi/4)^(pi/3)dif theta integral_(1/sqrt(2sin 2theta))^(1/sqrt(sin 2theta)) f(r cos theta,r sin theta)dif r$.])
]

#ezexam.question[
设矩阵 $A=mat(1,1,1;1,2,a;1,4,a^2),b=mat(1;d;d^2)$，若集合 $Omega={1,2}$，则线性方程组 $A x=b$ 有无穷多解的充分必要条件为
#choices([$a in.not Omega,d in.not Omega$.], [$a in.not Omega,d in Omega$.], [$a in Omega,d in.not Omega$.], [$a in Omega,d in Omega$.])
]

#ezexam.question[
设二次型 $f(x_1,x_2,x_3)$ 在正交变换 $x=P y$ 下的标准形为 $2y_1^2+y_2^2-y_3^2$，其中 $P=(e_1,e_2,e_3)$.若 $Q=(e_1,-e_3,e_2)$，则 $f(x_1,x_2,x_3)$ 在正交变换 $x=Q y$ 下的标准形为
#choices([$2y_1^2-y_2^2+y_3^2$.], [$2y_1^2+y_2^2-y_3^2$.], [$2y_1^2-y_2^2-y_3^2$.], [$2y_1^2+y_2^2+y_3^2$.])
]

= 二、填空题：9—14小题，每小题4分，共24分. 把答案填在题中横线上.

#ezexam.question[
设 $cases(x=arctan t,y=3t+t^3)$，则 $(dif^2 y)/(dif x^2)|_(t=1)=$ #fillin(len: 3em)[].
]

#ezexam.question[
函数 $f(x)=x^2 2^x$ 在 $x=0$ 处的 $n$ 阶导数 $f^((n))(0)=$ #fillin(len: 3em)[].
]

#ezexam.question[
设函数 $f(x)$ 连续，$phi(x)=integral_0^(x^2)x f(t)dif t$.若 $phi(1)=1,phi'(1)=5$，则 $f(1)=$ #fillin(len: 3em)[].
]

#ezexam.question[
设函数 $y=y(x)$ 是微分方程 $y''+y'-2y=0$ 的解，且在 $x=0$ 处 $y(x)$ 取得极值 3，则 $y(x)=$ #fillin(len: 3em)[].
]

#ezexam.question[
若函数 $z=z(x,y)$ 由方程 $e^(x+2y+3z)+x y z=1$ 确定，则 $dif z|_((0,0))=$ #fillin(len: 3em)[].
]

#ezexam.question[
设 3 阶矩阵 $A$ 的特征值为 $2,-2,1$，$B=A^2-A+E$，其中 $E$ 为 3 阶单位矩阵，则行列式 $abs(B)=$ #fillin(len: 3em)[].
]

= 三、解答题：15—23小题，共94分. 解答应写出文字说明、证明过程或演算步骤.

#ezexam.question[
（本题满分 10 分）设函数 $f(x)=x+a ln(1+x)+b x sin x,g(x)=k x^3$，若 $f(x)$ 与 $g(x)$ 在 $x->0$ 时是等价无穷小，求 $a,b,k$ 的值.
]

#ezexam.question[
（本题满分 10 分）设 $A>0,D$ 是由曲线段 $y=A sin x$（$0<=x<=pi/2$）及直线 $y=0,x=pi/2$ 所围成的平面区域，$V_1,V_2$ 分别表示 $D$ 绕 $x$ 轴与绕 $y$ 轴旋转所成旋转体的体积.若 $V_1=V_2$，求 $A$ 的值.
]

#ezexam.question[
（本题满分 11 分）已知函数 $f(x,y)$ 满足 $f''_(x y)(x,y)=2(y+1)e^x,f'_x(x,0)=(x+1)e^x,f(0,y)=y^2+2y$，求 $f(x,y)$ 的极值.
]

#ezexam.question[
（本题满分 10 分）计算二重积分 $integral.double_D x(x+y)dif x dif y$，其中 $D={(x,y)|x^2+y^2<=2,y>=x^2}$.
]

#ezexam.question[
（本题满分 11 分）已知函数 $f(x)=integral_x^1 sqrt(1+t^2)dif t+integral_1^(x^2)sqrt(1+t)dif t$，求 $f(x)$ 零点的个数.
]

#ezexam.question[
（本题满分 10 分）已知高温物体置于低温介质中，任一时刻该物体温度对时间的变化率与该时刻物体和介质的温差成正比.现将一初始温度为 120 ℃ 的物体在 20 ℃ 恒温介质中冷却，30 min 后该物体温度降至 30 ℃.若要将该物体的温度继续降至 21 ℃，还需冷却多长时间？
]

#ezexam.question[
（本题满分 10 分）已知函数 $f(x)$ 在区间 $[a,+infinity)$ 上具有 2 阶导数，$f(a)=0,f'(x)>0,f''(x)>0$.设 $b>a$，曲线 $y=f(x)$ 在点 $(b,f(b))$ 处的切线与 $x$ 轴的交点是 $(x_0,0)$，证明 $a<x_0<b$.
]

#ezexam.question[
（本题满分 11 分）设矩阵 $A=mat(a,1,0;1,a,-1;0,1,a)$，且 $A^3=O$.

（Ⅰ）求 $a$ 的值；

（Ⅱ）若矩阵 $X$ 满足 $X-X A^2-A X+A X A^2=E$，其中 $E$ 为 3 阶单位矩阵，求 $X$.
]

#ezexam.question[
（本题满分 11 分）设矩阵 $A=mat(0,2,-3;-1,3,-3;1,-2,a)$ 相似于矩阵 $B=mat(1,-2,0;0,b,0;0,3,1)$.

（Ⅰ）求 $a,b$ 的值；

（Ⅱ）求可逆矩阵 $P$，使 $P^(-1)A P$ 为对角矩阵.
]

