#import "../template.typ": exam
#show: exam.with(year: 1996, subject: "五", title: "1996年全国工学、经济学硕士研究生入学考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])


= 一、填空题（15分，每小题3分）
#ezexam.counter-question.step()

（1）设方程 $x=y^y$ 确定 $y$ 是 $x$ 的函数，则 $dif y=$ #fillin(len: 4em)[].

（2）设 $integral x f(x)dif x=arcsin x+C$，则 $integral 1/f(x)dif x=$ #fillin(len: 4em)[].

（3）设 $y=ln(x+sqrt(1+x^2))$，则 $y'''|_(x=sqrt(3))=$ #fillin(len: 4em)[].

（4）行列式 $det mat(1-a,a,0,0,0;-1,1-a,a,0,0;0,-1,1-a,a,0;0,0,-1,1-a,a;0,0,0,-1,1-a)=$ #fillin(len: 4em)[].

（5）一实习生用同一台机器接连独立地制造了三个同种零件，第 $i$ 个零件是不合格品的概率为 $1/(i+1)$（$i=1,2,3$）.以 $X$ 表示三个零件中合格品的个数，则 $P(X=2)=$ #fillin(len: 4em)[].

= 二、选择题（15分，每小题3分）
#ezexam.counter-question.step()

（1）若 $f'(x_0)=f''(x_0)=0$，$f'''(x_0)>0$，则（　）.
#choices[$f'(x_0)$ 是 $f'(x)$ 的极大值][$f(x_0)$ 是 $f(x)$ 的极大值][$f(x_0)$ 是 $f(x)$ 的极小值][$(x_0,f(x_0))$ 是曲线 $y=f(x)$ 的拐点]

（2）下述各选项正确的是（　）.
#choices[若 $lim_(x arrow +infinity)f'(x)=+infinity$，则 $lim_(x arrow +infinity)f(x)=+infinity$][若 $lim_(x arrow +infinity)f(x)=+infinity$，则 $lim_(x arrow +infinity)f'(x)=+infinity$][若 $lim_(x arrow -infinity)f'(x)=-infinity$，则 $lim_(x arrow -infinity)f(x)=-infinity$][若 $lim_(x arrow -infinity)f(x)=-infinity$，则 $lim_(x arrow -infinity)f'(x)=-infinity$]

（3）设 $n$ 阶矩阵 $A$ 非奇异（$n>=2$），$A^*$ 为伴随矩阵，则（　）.
#choices[$(A^*)^*=(det A)^(n-1)A$][$(A^*)^*=(det A)^(n+1)A$][$(A^*)^*=(det A)^(n-2)A$][$(A^*)^*=(det A)^(n+2)A$]

（4）设有任意两个 $n$ 维向量组 $alpha_1,dots,alpha_m$ 和 $beta_1,dots,beta_m$.若存在两组不全为零的数 $lambda_1,dots,lambda_m$ 和 $k_1,dots,k_m$，使
$ sum_(i=1)^m (lambda_i+k_i)alpha_i+sum_(i=1)^m (lambda_i-k_i)beta_i=0, $
则（　）.
#choices[两原向量组都线性相关][两原向量组都线性无关][$alpha_1+beta_1,dots,alpha_m+beta_m,alpha_1-beta_1,dots,alpha_m-beta_m$ 线性无关][$alpha_1+beta_1,dots,alpha_m+beta_m,alpha_1-beta_1,dots,alpha_m-beta_m$ 线性相关]

（5）设事件 $A subset B$，且 $P(B)>0$，则（　）.
#choices[$P(A)<P(A|B)$][$P(A)<=P(A|B)$][$P(A)>P(A|B)$][$P(A)>=P(A|B)$]

#ezexam.question(label: n => [三、])[
（6分）

设 $f(x)=cases((g(x)-e^(-x))/x & quad x≠0,0 & quad x=0)$，其中 $g(x)$ 有二阶连续导数，且 $g(0)=1$、$g'(0)=-1$.

（1）求 $f'(x)$；

（2）讨论 $f'(x)$ 在 $(-infinity,+infinity)$ 上的连续性.

]

#ezexam.question(label: n => [四、])[
（7分）

设 $f(x,y)=integral_0^(x y)e^(-t^2)dif t$，求 $x/y (partial^2 f)/(partial x^2)-2(partial^2 f)/(partial x partial y)+y/x (partial^2 f)/(partial y^2)$.

]

#ezexam.question(label: n => [五、])[
（6分）

计算 $integral_0^infinity (x e^(-x))/(1+e^(-x))^2 dif x$.

]

#ezexam.question(label: n => [六、])[
（7分）

设某商品单价为 $p$ 时，售出数量 $Q=a/(p+b)-c$，其中 $a,b,c>0$，且 $a>b c$.

（1）求 $p$ 在何范围变化时，使相应销售额增加或减少；

（2）要使销售额最大，单价 $p$ 应取何值？最大销售额是多少？

]

#ezexam.question(label: n => [七、])[
（9分）

已知一抛物线通过 $x$ 轴上的两点 $A(1,0)$、$B(3,0)$.

（1）求证：两坐标轴与该抛物线所围图形的面积等于 $x$ 轴与该抛物线所围图形的面积；

（2）计算上述两个平面图形绕 $x$ 轴旋转一周所产生的两个旋转体体积之比.

]

#ezexam.question(label: n => [八、])[
（5分）

设 $f(x)$ 在 $[a,b]$ 上连续，在 $(a,b)$ 内可导，且 $1/(b-a)integral_a^b f(x)dif x=f(b)$.求证：在 $(a,b)$ 内至少存在一点 $xi$，使 $f'(xi)=0$.

]

#ezexam.question(label: n => [九、])[
（9分）

已知线性方程组
$ cases(x_1+x_2-2x_3+3x_4=0,2x_1+x_2-6x_3+4x_4=-1,3x_1+2x_2+p x_3+7x_4=-1,x_1-x_2-6x_3-x_4=t). $
讨论参数 $p,t$ 取何值时方程组有解、无解；当有解时，试用其导出组的基础解系表示通解.

]

#ezexam.question(label: n => [十、])[
（7分）

设有4阶矩阵 $A$ 满足条件 $det(sqrt(2)I+A)=0$、$A A^T=2I$、$det A<0$，其中 $I$ 是4阶单位阵.求方阵 $A$ 的伴随矩阵 $A^*$ 的一个特征值.

]

#ezexam.question(label: n => [十一、])[
（7分）

假设一部机器在一天内发生故障的概率为0.2，发生故障时全天停止工作.若一周5个工作日里无故障，可获利润10万元；发生一次故障仍可获利润5万元；发生二次故障所获利润0元；发生三次或三次以上故障就要亏损2万元.求一周内期望利润.

]

#ezexam.question(label: n => [十二、])[
（7分）

假设一电路装有三个同种电气元件，其工作状态相互独立，且无故障工作时间都服从参数为 $lambda>0$ 的指数分布.当三个元件都无故障时，电路正常工作，否则整个电路不能正常工作.试求电路正常工作的时间 $T$ 的概率分布.
]

