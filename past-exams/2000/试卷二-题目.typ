#import "../template.typ": exam
#show: exam.with(year: 2000, subject: "二", title: "2000年全国硕士研究生入学考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(false)


= 一、填空题（本题共5小题，每小题3分，满分15分）
#ezexam.counter-question.step()

（1）$lim_(x->0)frac(arctan x-x,ln(1+2x^3))=$ #fillin(len: 3em)[].

（2）设函数 $y=y(x)$ 由方程 $2^(x y)=x+y$ 所确定，则 $dif y|_(x=0)=$ #fillin(len: 3em)[].

（3）$integral_2^(+infinity)frac(dif x,(x+7)sqrt(x-2))=$ #fillin(len: 3em)[].

（4）曲线 $y=(2x-1)e^(1/x)$ 的斜渐近线方程为 #fillin(len: 3em)[].

（5）设 $A=mat(1,0,0,0;-2,3,0,0;0,-4,5,0;0,0,-6,7)$，$E$ 为4阶单位矩阵，且 $B=(E+A)^(-1)(E-A)$，则 $(E+B)^(-1)=$ #fillin(len: 3em)[].

= 二、选择题（本题共5小题，每小题3分，满分15分）
#ezexam.counter-question.step()

（1）设函数 $f(x)=frac(x,a+e^(b x))$ 在 $(-infinity,+infinity)$ 内连续，且 $lim_(x->-infinity)f(x)=0$，则常数 $a,b$ 满足（　）.
#choices[$a<0,b<0$.][$a>0,b>0$.][$a<=0,b>0$.][$a>=0,b<0$.]

（2）设函数 $f(x)$ 满足关系式 $f''(x)+[f'(x)]^2=x$，且 $f'(0)=0$，则（　）.
#choices[$f(0)$ 是 $f(x)$ 的极大值.][$f(0)$ 是 $f(x)$ 的极小值.][点 $(0,f(0))$ 是曲线 $y=f(x)$ 的拐点.][$f(0)$ 不是 $f(x)$ 的极值，点 $(0,f(0))$ 也不是曲线 $y=f(x)$ 的拐点.]

（3）设函数 $f(x),g(x)$ 是大于零的可导函数，且 $f'(x)g(x)-f(x)g'(x)<0$，则当 $a<x<b$ 时，有（　）.
#choices[$f(x)g(b)>f(b)g(x)$.][$f(x)g(a)>f(a)g(x)$.][$f(x)g(x)>f(b)g(b)$.][$f(x)g(x)>f(a)g(a)$.]

（4）若 $lim_(x->0)frac(sin 6x+x f(x),x^3)=0$，则 $lim_(x->0)frac(6+f(x),x^2)$ 为（　）.
#choices[0.][6.][36.][$infinity$.]

（5）具有特解 $y_1=e^(-x),y_2=2x e^(-x),y_3=3e^x$ 的3阶常系数齐次线性微分方程是（　）.
#choices[$y'''-y''-y'+y=0$.][$y'''+y''-y'-y=0$.][$y'''-6y''+11y'-6y=0$.][$y'''-2y''-y'+2y=0$.]

#ezexam.question(label: n => [三、])[
（本题满分5分）设 $f(ln x)=frac(ln(1+x),x)$，计算 $integral f(x)dif x$.


]

#ezexam.question(label: n => [四、])[
（本题满分5分）设 $x O y$ 平面上有正方形 $D={(x,y)|0<=x<=1,0<=y<=1}$ 及直线 $l:x+y=t$（$t>=0$），若 $S(t)$ 表示正方形 $D$ 位于直线 $l$ 左下方部分的面积，试求 $integral_0^x S(t)dif t$（$x>=0$）.


]

#ezexam.question(label: n => [五、])[
（本题满分5分）求函数 $f(x)=x^2 ln(1+x)$ 在 $x=0$ 处的 $n$ 阶导数 $f^((n))(0)$（$n>=3$）.


]

#ezexam.question(label: n => [六、])[
（本题满分6分）设函数 $S(x)=integral_0^x |cos t|dif t$，

（1）当 $n$ 为正整数，且 $n pi<=x<(n+1)pi$ 时，证明 $2n<=S(x)<2(n+1)$；

（2）求 $lim_(x->+infinity)frac(S(x),x)$.


]

#ezexam.question(label: n => [七、])[
（本题满分7分）某湖泊的水量为 $V$，每年排入湖泊内含污染物 $A$ 的污水量为 $frac(V,6)$，流入湖泊内不含 $A$ 的水量为 $frac(V,6)$，流出湖泊的水量为 $frac(V,3)$.已知1999年底湖中 $A$ 的含量为 $5m_0$，超过国家规定指标.为了治理污染，从2000年初起，限定排入湖泊中含 $A$ 污水的浓度不超过 $frac(m_0,V)$.问至多需经过多少年，湖泊中污染物 $A$ 的含量降至 $m_0$ 以内？（注：设湖水中 $A$ 的浓度是均匀的.）


]

#ezexam.question(label: n => [八、])[
（本题满分6分）设函数 $f(x)$ 在 $[0,pi]$ 上连续，且 $integral_0^pi f(x)dif x=0$，$integral_0^pi f(x)cos x dif x=0$.试证：在 $(0,pi)$ 内至少存在两个不同的点 $xi_1,xi_2$，使 $f(xi_1)=f(xi_2)=0$.


]

#ezexam.question(label: n => [九、])[
（本题满分7分）已知 $f(x)$ 是周期为5的连续函数，它在 $x=0$ 的某个邻域内满足关系式
$ f(1+sin x)-3f(1-sin x)=8x+alpha(x), $
其中 $alpha(x)$ 是当 $x->0$ 时比 $x$ 高阶的无穷小，且 $f(x)$ 在 $x=1$ 处可导，求曲线 $y=f(x)$ 在点 $(6,f(6))$ 处的切线方程.


]

#ezexam.question(label: n => [十、])[
（本题满分8分）设曲线 $y=a x^2$（$a>0,x>=0$）与 $y=1-x^2$ 交于点 $A$，过坐标原点 $O$ 和点 $A$ 的直线与曲线 $y=a x^2$ 围成一平面图形.问 $a$ 为何值时，该图形绕 $x$ 轴旋转一周所得的旋转体体积最大？最大体积是多少？


]

#ezexam.question(label: n => [十一、])[
（本题满分8分）函数 $f(x)$ 在 $[0,+infinity)$ 上可导，$f(0)=1$，且满足等式
$ f'(x)+f(x)-frac(1,x+1)integral_0^x f(t)dif t=0, $
（1）求导数 $f'(x)$；

（2）证明：当 $x>=0$ 时，成立不等式：$e^(-x)<=f(x)<=1$.


]

#ezexam.question(label: n => [十二、])[
（本题满分6分）设 $alpha=mat(1;2;1),beta=mat(1;frac(1,2);0),gamma=mat(0;0;8)$，$A=alpha beta^T,B=beta^T alpha$，其中 $beta^T$ 是 $beta$ 的转置，求解方程
$ 2B^2 A^2 x=A^4 x+B^4 x+gamma. $


]

#ezexam.question(label: n => [十三、])[
（本题满分7分）已知向量组 $beta_1=mat(0;1;-1),beta_2=mat(a;2;1),beta_3=mat(b;1;0)$ 与向量组 $alpha_1=mat(1;2;-3),alpha_2=mat(3;0;1),alpha_3=mat(9;6;-7)$ 具有相同的秩，且 $beta_3$ 可由 $alpha_1,alpha_2,alpha_3$ 线性表示，求 $a,b$ 的值.

]
