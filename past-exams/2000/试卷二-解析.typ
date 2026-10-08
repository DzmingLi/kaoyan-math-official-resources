#import "../template.typ": exam
#show: exam.with(year: 2000, subject: "二", title: "2000年全国硕士研究生入学考试")
#import "@preview/ezexam:0.3.1" as ezexam
#ezexam.mode-state.update(ezexam.HANDOUTS)
#let choices = ezexam.choices
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(true)


= 一、填空题（本题共5小题，每小题3分，满分15分）
#ezexam.counter-question.step()

（1）$lim_(x->0)frac(arctan x-x,ln(1+2x^3))=$ #fillin(len: 3em)[].
#ezexam.solution(show-number: false)[
$-frac(1,6)$.
]

（2）设函数 $y=y(x)$ 由方程 $2^(x y)=x+y$ 所确定，则 $dif y|_(x=0)=$ #fillin(len: 3em)[].
#ezexam.solution(show-number: false)[
$(ln 2-1)dif x$.
]

（3）$integral_2^(+infinity)frac(dif x,(x+7)sqrt(x-2))=$ #fillin(len: 3em)[].
#ezexam.solution(show-number: false)[
$frac(pi,3)$.
]

（4）曲线 $y=(2x-1)e^(1/x)$ 的斜渐近线方程为 #fillin(len: 3em)[].
#ezexam.solution(show-number: false)[
$y=2x+1$.
]

（5）设 $A=mat(1,0,0,0;-2,3,0,0;0,-4,5,0;0,0,-6,7)$，$E$ 为4阶单位矩阵，且 $B=(E+A)^(-1)(E-A)$，则 $(E+B)^(-1)=$ #fillin(len: 3em)[].
#ezexam.solution(show-number: false)[
$mat(1,0,0,0;-1,2,0,0;0,-2,3,0;0,0,-3,4)$.
]

= 二、选择题（本题共5小题，每小题3分，满分15分）
#ezexam.counter-question.step()

（1）设函数 $f(x)=frac(x,a+e^(b x))$ 在 $(-infinity,+infinity)$ 内连续，且 $lim_(x->-infinity)f(x)=0$，则常数 $a,b$ 满足（　）.
#choices[$a<0,b<0$.][$a>0,b>0$.][$a<=0,b>0$.][$a>=0,b<0$.]
#ezexam.solution(show-number: false)[
D.
]

（2）设函数 $f(x)$ 满足关系式 $f''(x)+[f'(x)]^2=x$，且 $f'(0)=0$，则（　）.
#choices[$f(0)$ 是 $f(x)$ 的极大值.][$f(0)$ 是 $f(x)$ 的极小值.][点 $(0,f(0))$ 是曲线 $y=f(x)$ 的拐点.][$f(0)$ 不是 $f(x)$ 的极值，点 $(0,f(0))$ 也不是曲线 $y=f(x)$ 的拐点.]
#ezexam.solution(show-number: false)[
C.
]

（3）设函数 $f(x),g(x)$ 是大于零的可导函数，且 $f'(x)g(x)-f(x)g'(x)<0$，则当 $a<x<b$ 时，有（　）.
#choices[$f(x)g(b)>f(b)g(x)$.][$f(x)g(a)>f(a)g(x)$.][$f(x)g(x)>f(b)g(b)$.][$f(x)g(x)>f(a)g(a)$.]
#ezexam.solution(show-number: false)[
A.
]

（4）若 $lim_(x->0)frac(sin 6x+x f(x),x^3)=0$，则 $lim_(x->0)frac(6+f(x),x^2)$ 为（　）.
#choices[0.][6.][36.][$infinity$.]
#ezexam.solution(show-number: false)[
C.
]

（5）具有特解 $y_1=e^(-x),y_2=2x e^(-x),y_3=3e^x$ 的3阶常系数齐次线性微分方程是（　）.
#choices[$y'''-y''-y'+y=0$.][$y'''+y''-y'-y=0$.][$y'''-6y''+11y'-6y=0$.][$y'''-2y''-y'+2y=0$.]
#ezexam.solution(show-number: false)[
B.
]

#ezexam.question(label: n => [三、])[
（本题满分5分）设 $f(ln x)=frac(ln(1+x),x)$，计算 $integral f(x)dif x$.
#ezexam.solution(show-number: false)[
设 $ln x=t$，则 $x=e^t$，$f(t)=frac(ln(1+e^t),e^t)$. （1分）
$ integral f(x)dif x&=integral frac(ln(1+e^x),e^x)dif x \
&=-integral ln(1+e^x)dif e^(-x) \
&=-e^(-x)ln(1+e^x)+integral frac(1,1+e^x)dif x quad "（3分）" \
&=-e^(-x)ln(1+e^x)+integral(1-frac(e^x,1+e^x))dif x \
&=-e^(-x)ln(1+e^x)+x-ln(1+e^x)+C \
&=x-(1+e^(-x))ln(1+e^x)+C. quad "（5分）" $
注：若结论中没有常数 $C$ 扣1分.
]


]

#ezexam.question(label: n => [四、])[
（本题满分5分）设 $x O y$ 平面上有正方形 $D={(x,y)|0<=x<=1,0<=y<=1}$ 及直线 $l:x+y=t$（$t>=0$），若 $S(t)$ 表示正方形 $D$ 位于直线 $l$ 左下方部分的面积，试求 $integral_0^x S(t)dif t$（$x>=0$）.
#ezexam.solution(show-number: false)[
由题设知
$ S(t)=cases(frac(1,2)t^2 quad 0<=t<=1,-frac(1,2)t^2+2t-1 quad 1<t<=2,1 quad t>2). quad "（2分）" $
#import "@preview/cetz:0.5.2"
#cetz.canvas({
 import cetz.draw: *
 set-style(stroke:0.6pt)
 line((0,0),(1.5,0),(0,1.5),close:true,fill:luma(85%))
 line((0,2),(2,2),(2,0))
 line((-0.4,1.9),(1.9,-0.4))
 line((-0.3,0),(3,0),mark:(end:">"));line((0,-0.25),(0,2.7),mark:(end:">"))
 content((3,-0.15),$x$);content((-0.15,2.7),$y$);content((-0.15,-0.15),$O$)
 content((-0.15,2),$1$);content((2.13,0.15),$1$);content((2.2,-0.55),$x+y=t$)
})
所以，当 $0<=x<=1$ 时，
$ integral_0^x S(t)dif t=integral_0^x frac(1,2)t^2 dif t=frac(1,6)x^3; $
当 $1<x<=2$ 时，
$ integral_0^x S(t)dif t=integral_0^1 S(t)dif t+integral_1^x S(t)dif t=-frac(x^3,6)+x^2-x+frac(1,3); $
当 $x>2$ 时，
$ integral_0^x S(t)dif t=integral_0^2 S(t)dif t+integral_2^x S(t)dif t=x-1. quad "（4分）" $
因此
$ integral_0^x S(t)dif t=cases(frac(1,6)x^3 quad 0<=x<=1,-frac(1,6)x^3+x^2-x+frac(1,3) quad 1<x<=2,x-1 quad x>2). quad "（5分）" $
]


]

#ezexam.question(label: n => [五、])[
（本题满分5分）求函数 $f(x)=x^2 ln(1+x)$ 在 $x=0$ 处的 $n$ 阶导数 $f^((n))(0)$（$n>=3$）.
#ezexam.solution(show-number: false)[
*解法1* 由莱布尼兹公式
$ (u v)^((n))=u^((n))v^((0))+C_n^1 u^((n-1))v'+C_n^2 u^((n-2))v''+dots+u^((0))v^((n)) $
及 $[ln(1+x)]^((k))=frac((-1)^(k-1)(k-1)!,(1+x)^k)$（$k$ 为正整数）， （2分）
得
$ f^((n))(x)&=x^2 frac((-1)^(n-1)(n-1)!,(1+x)^n)+2n x frac((-1)^(n-2)(n-2)!,(1+x)^(n-1)) \
& quad +n(n-1)dot frac((-1)^(n-3)(n-3)!,(1+x)^(n-2)). quad "（4分）" $
所以
$ f^((n))(0)=(-1)^(n-3)n(n-1)(n-3)!=frac((-1)^(n-1)n!,n-2). quad "（5分）" $
*解法2* 由麦克劳林公式
$ f(x)=f(0)+frac(f'(0),1!)x+dots+frac(f^((n))(0),n!)x^n+o(x^n), $
及
$ x^2 ln(1+x)&=x^2[x-frac(x^2,2)+frac(x^3,3)+dots+(-1)^(n-1)frac(x^(n-2),n-2)+o(x^(n-2))] \
&=x^3-frac(x^4,2)+frac(x^5,3)+dots+(-1)^(n-1)dot frac(x^n,n-2)+o(x^n), quad "（3分）" $
比较 $x^n$ 的系数得 $frac(f^((n))(0),n!)=frac((-1)^(n-1),n-2)$，

所以 $f^((n))(0)=frac((-1)^(n-1)n!,n-2)$. （5分）
]


]

#ezexam.question(label: n => [六、])[
（本题满分6分）设函数 $S(x)=integral_0^x |cos t|dif t$，

（1）当 $n$ 为正整数，且 $n pi<=x<(n+1)pi$ 时，证明 $2n<=S(x)<2(n+1)$；

（2）求 $lim_(x->+infinity)frac(S(x),x)$.
#ezexam.solution(show-number: false)[
（1）因为 $|cos x|>=0$，且 $n pi<=x<(n+1)pi$，所以
$ integral_0^(n pi)|cos x|dif x<=S(x)<integral_0^((n+1)pi)|cos x|dif x. quad "（1分）" $
又因为 $|cos x|$ 是以 $pi$ 为周期的函数，在每个周期上积分值相等，所以
$ integral_0^(n pi)|cos x|dif x=n integral_0^pi |cos x|dif x=2n, $
$ integral_0^((n+1)pi)|cos x|dif x=2(n+1). quad "（3分）" $
因此当 $n pi<=x<(n+1)pi$ 时，有
$ 2n<=S(x)<2(n+1). quad "（4分）" $
（2）由（1）知，当 $n pi<=x<(n+1)pi$ 时，有
$ frac(2n,(n+1)pi)<frac(S(x),x)<frac(2(n+1),n pi). quad "（5分）" $
令 $x->+infinity$，由夹逼准则得
$ lim_(x->+infinity)frac(S(x),x)=frac(2,pi). quad "（6分）" $
]


]

#ezexam.question(label: n => [七、])[
（本题满分7分）某湖泊的水量为 $V$，每年排入湖泊内含污染物 $A$ 的污水量为 $frac(V,6)$，流入湖泊内不含 $A$ 的水量为 $frac(V,6)$，流出湖泊的水量为 $frac(V,3)$.已知1999年底湖中 $A$ 的含量为 $5m_0$，超过国家规定指标.为了治理污染，从2000年初起，限定排入湖泊中含 $A$ 污水的浓度不超过 $frac(m_0,V)$.问至多需经过多少年，湖泊中污染物 $A$ 的含量降至 $m_0$ 以内？（注：设湖水中 $A$ 的浓度是均匀的.）
#ezexam.solution(show-number: false)[
设从2000年初（令此时 $t=0$）开始，第 $t$ 年湖泊中污染物 $A$ 的总量为 $m$，浓度为 $frac(m,V)$，则在时间间隔 $[t,t+dif t]$ 内，排入湖泊中 $A$ 的量为 $frac(m_0,V)dot frac(V,6)dif t=frac(m_0,6)dif t$，流出湖泊的水中 $A$ 的量为 $frac(m,V)dot frac(V,3)dif t=frac(m,3)dif t$，因而在此时间间隔内湖泊中污染物 $A$ 的改变量
$ dif m=(frac(m_0,6)-frac(m,3))dif t. quad "（3分）" $
由分离变量法解得
$ m=frac(m_0,2)-C e^(-t/3), $
代入初始条件
$ m|_(t=0)=5m_0,quad "得" C=-frac(9,2)m_0. $
于是
$ m=frac(m_0,2)(1+9e^(-t/3)). quad "（6分）" $
令 $m=m_0$，得 $t=6ln 3$，

即至多需经过 $6ln 3$ 年，湖泊中污染物 $A$ 的含量降至 $m_0$ 以内. （7分）
]


]

#ezexam.question(label: n => [八、])[
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

#ezexam.question(label: n => [九、])[
（本题满分7分）已知 $f(x)$ 是周期为5的连续函数，它在 $x=0$ 的某个邻域内满足关系式
$ f(1+sin x)-3f(1-sin x)=8x+alpha(x), $
其中 $alpha(x)$ 是当 $x->0$ 时比 $x$ 高阶的无穷小，且 $f(x)$ 在 $x=1$ 处可导，求曲线 $y=f(x)$ 在点 $(6,f(6))$ 处的切线方程.
#ezexam.solution(show-number: false)[
由 $lim_(x->0)[f(1+sin x)-3f(1-sin x)]=lim_(x->0)[8x+alpha(x)]$，得 $f(1)-3f(1)=0$，故 $f(1)=0$. （1分）

又
$ lim_(x->0)frac(f(1+sin x)-3f(1-sin x),sin x)=lim_(x->0)[frac(8x,sin x)+frac(alpha(x),x)dot frac(x,sin x)]=8, $
设 $sin x=t$，则有
$ lim_(x->0)frac(f(1+sin x)-3f(1-sin x),sin x)&=lim_(t->0)frac(f(1+t)-f(1),t)+3lim_(t->0)frac(f(1-t)-f(1),-t) \
&=4f'(1), $
所以 $f'(1)=2$. （4分）

由于 $f(x+5)=f(x)$，所以 $f(6)=f(1)=0$，$f'(6)=f'(1)=2$，故所求的切线方程为 $y=2(x-6)$， （6分）
即
$ 2x-y-12=0. quad "（7分）" $
]


]

#ezexam.question(label: n => [十、])[
（本题满分8分）设曲线 $y=a x^2$（$a>0,x>=0$）与 $y=1-x^2$ 交于点 $A$，过坐标原点 $O$ 和点 $A$ 的直线与曲线 $y=a x^2$ 围成一平面图形.问 $a$ 为何值时，该图形绕 $x$ 轴旋转一周所得的旋转体体积最大？最大体积是多少？
#ezexam.solution(show-number: false)[
当 $x>=0$ 时，由 $cases(y=a x^2,y=1-x^2)$ 解得 $x=frac(1,sqrt(1+a)),y=frac(a,1+a)$， （1分）
故直线 $O A$ 的方程为
$ y=frac(a x,sqrt(1+a)). quad "（2分）" $
旋转体的体积
$ V&=pi integral_0^(frac(1,sqrt(1+a)))(frac(a^2 x^2,1+a)-a^2 x^4)dif x \
&=pi[frac(a^2,3(1+a))x^3-frac(a^2,5)x^5]|_0^(frac(1,sqrt(1+a))) \
&=frac(2pi,15)dot frac(a^2,(1+a)^(5/2)). quad "（4分）" $
$ frac(dif V,dif a)&=frac(2pi,15)dot frac(2a(1+a)^(5/2)-a^2 dot frac(5,2)(1+a)^(3/2),(1+a)^5) \
&=frac(pi(4a-a^2),15(1+a)^(7/2)) quad (a>0). $
令 $frac(dif V,dif a)=0$，并由 $a>0$ 得唯一驻点 $a=4$. （6分）

由题意知此旋转体在 $a=4$ 时取最大值，其最大体积为
$ V=frac(2pi,15)dot frac(16,5^(5/2))=frac(32sqrt(5),1875)pi. quad "（8分）" $
]


]

#ezexam.question(label: n => [十一、])[
（本题满分8分）函数 $f(x)$ 在 $[0,+infinity)$ 上可导，$f(0)=1$，且满足等式
$ f'(x)+f(x)-frac(1,x+1)integral_0^x f(t)dif t=0, $
（1）求导数 $f'(x)$；

（2）证明：当 $x>=0$ 时，成立不等式：$e^(-x)<=f(x)<=1$.
#ezexam.solution(show-number: false)[
（1）由题设知 $(x+1)f'(x)+(x+1)f(x)-integral_0^x f(t)dif t=0$.

上式两边对 $x$ 求导，得 $(x+1)f''(x)=-(x+2)f'(x)$. （2分）

设 $u=f'(x)$，则有 $frac(dif u,dif x)=-frac(x+2,x+1)u$，

解之得 $f'(x)=u=frac(C e^(-x),x+1)$.

由 $f(0)=1$ 及 $f'(0)+f(0)=0$，知 $f'(0)=-1$，从而 $C=-1$，

因此
$ f'(x)=-frac(e^(-x),x+1). quad "（4分）" $
（2）*证法1* 当 $x>=0$ 时，$f'(x)<0$，即 $f(x)$ 单调减少，又 $f(0)=1$，所以
$ f(x)<=f(0)=1. quad "（5分）" $
设 $phi(x)=f(x)-e^(-x)$，则 $phi(0)=0$，$phi'(x)=f'(x)+e^(-x)=frac(x,x+1)e^(-x)$.

当 $x>=0$ 时，$phi'(x)>=0$，即 $phi(x)$ 单调增加，因而
$ phi(x)>=phi(0)=0,quad "即有" f(x)>=e^(-x). $
综上所述，当 $x>=0$ 时，成立不等式 $e^(-x)<=f(x)<=1$. （8分）

*证法2* 由于 $integral_0^x f'(t)dif t=f(x)-f(0)=f(x)-1$，

所以
$ f(x)=1-integral_0^x frac(e^(-t),t+1)dif t. quad "（5分）" $
注意到当 $x>=0$ 时，
$ 0<=integral_0^x frac(e^(-t),t+1)dif t<=integral_0^x e^(-t)dif t=1-e^(-x), quad "（7分）" $
因而 $e^(-x)<=f(x)<=1$. （8分）
]


]

#ezexam.question(label: n => [十二、])[
（本题满分6分）设 $alpha=mat(1;2;1),beta=mat(1;frac(1,2);0),gamma=mat(0;0;8)$，$A=alpha beta^T,B=beta^T alpha$，其中 $beta^T$ 是 $beta$ 的转置，求解方程
$ 2B^2 A^2 x=A^4 x+B^4 x+gamma. $
#ezexam.solution(show-number: false)[
由题设得
$ A=mat(1;2;1)(1,frac(1,2),0)=mat(1,frac(1,2),0;2,1,0;1,frac(1,2),0),quad B=(1,frac(1,2),0)mat(1;2;1)=2. quad "（1分）" $
又 $A^2=alpha beta^T alpha beta^T=alpha(beta^T alpha)beta^T=2A$，$A^4=8A$.

代入原方程，得 $16A x=8A x+16x+gamma$，

即 $8(A-2E)x=gamma$（其中 $E$ 是3阶单位矩阵）. （3分）

令 $x=(x_1,x_2,x_3)^T$，代入上式，得到非齐次线性方程组
$ cases(-x_1+frac(1,2)x_2=0,2x_1-x_2=0,x_1+frac(1,2)x_2-2x_3=1), $
解其对应的齐次方程组，得通解
$ xi=k mat(1;2;1) quad (k "为任意常数"), quad "（4分）" $
显然，非齐次线性方程组的一个特解为
$ eta^*=mat(0;0;-frac(1,2)), quad "（5分）" $
于是所求方程的解为 $x=xi+eta^*$，即
$ x=k mat(1;2;1)+mat(0;0;-frac(1,2)) quad (k "为任意常数"). quad "（6分）" $
]


]

#ezexam.question(label: n => [十三、])[
（本题满分7分）已知向量组 $beta_1=mat(0;1;-1),beta_2=mat(a;2;1),beta_3=mat(b;1;0)$ 与向量组 $alpha_1=mat(1;2;-3),alpha_2=mat(3;0;1),alpha_3=mat(9;6;-7)$ 具有相同的秩，且 $beta_3$ 可由 $alpha_1,alpha_2,alpha_3$ 线性表示，求 $a,b$ 的值.
#ezexam.solution(show-number: false)[
*解法1* $alpha_1$ 和 $alpha_2$ 线性无关，$alpha_3=3alpha_1+2alpha_2$，所以向量组 $alpha_1,alpha_2,alpha_3$ 线性相关，且秩为2，$alpha_1,alpha_2$ 是它的一个极大线性无关组. （2分）

由于向量组 $beta_1,beta_2,beta_3$ 与 $alpha_1,alpha_2,alpha_3$ 具有相同的秩，故 $beta_1,beta_2,beta_3$ 线性相关，从而
$ mat(delim:"|",0,a,b;1,2,1;-1,1,0)=0, $
由此解得 $a=3b$. （5分）

又 $beta_3$ 可由 $alpha_1,alpha_2,alpha_3$ 线性表示，从而可由 $alpha_1,alpha_2$ 线性表示，所以 $alpha_1,alpha_2,beta_3$ 线性相关.于是
$ mat(delim:"|",1,3,b;2,0,1;-3,1,0)=0, $
解之得 $2b-10=0$.

于是得 $a=15,b=5$. （7分）

*解法2* 因 $beta_3$ 可由 $alpha_1,alpha_2,alpha_3$ 线性表示，故线性方程组
$ mat(1,3,9;2,0,6;-3,1,-7)mat(x_1;x_2;x_3)=mat(b;1;0) "有解". quad "（1分）" $
对增广矩阵的行施行初等变换：
$ mat(augment:#3,1,3,9,b;2,0,6,1;-3,1,-7,0)&->mat(augment:#3,1,3,9,b;0,-6,-12,1-2b;0,10,20,3b) \
&->mat(augment:#3,1,3,9,b;0,1,2,frac(2b-1,6);0,1,2,frac(3b,10)) \
&->mat(augment:#3,1,3,9,b;0,1,2,frac(2b-1,6);0,0,0,frac(3b,10)-frac(2b-1,6)). $
由非齐次线性方程组有解的条件知 $frac(3b,10)-frac(2b-1,6)=0$，得 $b=5$. （4分）

又 $alpha_1$ 和 $alpha_2$ 线性无关，$alpha_3=3alpha_1+2alpha_2$，所以向量组 $alpha_1,alpha_2,alpha_3$ 的秩为2. （5分）

由题设知向量组 $beta_1,beta_2,beta_3$ 的秩也是2，从而 $mat(delim:"|",0,a,5;1,2,1;-1,1,0)=0$，解之得 $a=15$. （7分）
]

]
