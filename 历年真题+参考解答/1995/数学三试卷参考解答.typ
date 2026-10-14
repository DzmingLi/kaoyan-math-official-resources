#import "../template.typ": exam, answer
#show: exam.with(year: 1995, subject: "三", title: "1995年全国工学、经济学硕士研究生入学考试", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#import "@preview/cetz:0.5.2" as cetz
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 1995 数学三试卷参考解答

= 一、填空题

#answer("1（1）")[
用乘积和链式法则，得 $y'=-2x sin(x^2)sin^2(1/x)-sin(2/x)cos(x^2)/x^2$.
]

#answer("1（2）")[
齐次解为 $C_1 cos x+C_2 sin x$，特解为 $-2x$，故 $y=-2x+C_1 cos x+C_2 sin x$.

【分析】t=2时切点为(5,8)，参数方程的导数dy/dx=3t²/(2t)=3，故切线y−8=3(x−5)，即3x−y−7=0.
]

#answer("1（3）")[
切点为 $(5,8)$，斜率为 $3t^2/(2t)=3$，故 $3x-y-7=0$.
]

#answer("1（4）")[
和式介于 $n(n+1)/(2(n^2+2n))$ 与 $n(n+1)/(2(n^2+n+1))$ 之间，两端均趋于 $1/2$.

【分析】由
$ frac(n+1,2(n+2))<=sum_(i=1)^n frac(i,n^2+n+i)<=frac(n(n+1),2(n^2+n+1)), $
两端都趋于1/2，用夹逼定理即得所求极限.
]

#answer("1（5）")[
函数在实轴上连续，且 $x arrow ±infinity$ 时趋于0，故渐近线为 $y=0$.
]

= 二、选择题

#answer("2（1）")[
D.若 $phi/f$ 在 $phi$ 的某间断点连续，则乘以连续函数 $f$ 后，$phi$ 也连续，矛盾.

【分析】反证法最直接：若φ/f在φ的间断点连续，与连续的f相乘则φ也连续，矛盾. 排除其余选项可取 $f(x)=x^2+1,phi(x)=cases(1&x>=0,-1&x<0)$，此时φ(f(x))、φ²(x)、f(φ(x))均为常数，而φ/f有间断点.
]

#answer("2（2）")[
C.函数在 $(0,1)$ 为负，在 $(1,2)$ 为正，按绝对值积分即得.

【分析】先找出曲线与x轴的交点0、1、2. 第一段在x轴下方，第二段在上方，面积应为
$ -integral_0^1 x(x-1)(2-x)dif x+integral_1^2 x(x-1)(2-x)dif x. $
不能把定积分的负值直接当成面积.
]

#answer("2（3）")[
D.$f$ 严格递增，故 $f(-x)$ 严格递减，取负后严格递增.严格递增函数的导数可以在个别点为零.
]

#answer("2（4）")[
B.由条件，$f''(x)>0$（$0<x<=1$），所以 $f'$ 严格递增，再用中值定理即可.
]

#answer("2（5）")[
A.左右导数为 $f'(0)±f(0)$，相等须有 $f(0)=0$.

【分析】充分性：若f(0)=0，F的差商趋于f′(0). 必要性：若F可导，则f(x)|sinx|可导，其左右导数分别为−f(0)、f(0)，须有f(0)=0. 因此是充要条件.
]

= 解答题

#answer("三（1）")[
有理化后，利用 $1-cos x∼x^2/2$、$1-cos sqrt(x)∼x/2$，原极限为 $1/2$.

【分析】直接连续求导较繁，先有理化分子，再替换等价无穷小量，
$ lim_(x->0^+)frac(1-cos x,x(1-cos sqrt(x))(1+sqrt(cos x)))=lim_(x->0^+)frac(x^2/2,x dot x/2 dot (1+sqrt(cos x)))=1/2. $
]

#answer("三（2）")[
取对数得 $ln x+f(y)=y$，所以 $y'=1/(x(1-f'(y)))$.再求导得
$ y''=(f''(y)-(1-f'(y))^2)/(x^2(1-f'(y))^3). $

【解法2】直接对原等式求导，得
$ e^(f(y))+x e^(f(y))f'(y)y'=e^y y'. $
利用 $x e^(f(y))=e^y$ 消去指数因子，得 $1+x(f'(y)-1)y'=0$. 再求导，
$ (f'(y)-1)y'+x f''(y)(y')^2+x(f'(y)-1)y''=0, $
代入y′的表达式，即得上式.
]

#answer("三（3）")[
换元得 $f(u)=ln((u+1)/(u-1))$.由 $(phi(x)+1)/(phi(x)-1)=x$ 得 $phi(x)=(x+1)/(x-1)$，故 $integral phi(x)dif x=x+2ln abs(x-1)+C$.
]

#answer("三（4）")[
由定义 $f'(0)=lim_(x arrow 0)arctan(1/x^2)=pi/2$.当 $x≠0$ 时 $f'(x)=arctan(1/x^2)-2x^2/(1+x^4)$，其极限也为 $pi/2$，故连续.

【分析】先用定义求f′(0)，再与去心邻域中的导数极限比较. 不能直接把不适用于x=0的导数表达式代入0.
]

#answer("三（5）")[
速度模为 $sqrt(sin^2 t+(1-cos t)^2)=2sin(t/2)$，故弧长为 $integral_0^(2pi)2sin(t/2)dif t=8$.
]

#answer("三（6）")[
由 $v'+v=0$、$v(0)=v_0$ 得 $v=v_0 e^(-t)$.故 $t=ln 3$，路程为 $integral_0^(ln 3)v_0 e^(-t)dif t=2v_0/3$.

【解法2】直接由dv/v=−dt，速度从v₀降至v₀/3，得t=ln3. 又ds=vdt=−dv，故
$ s=-integral_(v_0)^(v_0/3)dif v=2v_0/3. $
【分析】单位质量的阻力与速度方向相反，因此运动方程为v′=−v.
]

#answer("四、")[
$f$ 为偶函数，且 $f'(x)=2x(2-x^2)e^(-x^2)$.在正半轴上先增后减，$f(0)=0$，$lim_(x arrow infinity)f(x)=1$.因此在 $x=±sqrt(2)$ 处取得最大值 $1+e^(-2)$；在 $x=0$ 处取得最小值0.

【分析】偶函数只需讨论非负半轴. 除驻点和端点之外，还须计算无穷远处极限. 分部积分给出
$ f(sqrt(2))=integral_0^2(2-t)e^(-t)dif t=1+e^(-2), $
而 $integral_0^infinity(2-t)e^(-t)dif t=1$. 结合增减性，0为最小值，1+e⁻²为最大值.
]

#answer("五、")[
代入已知解得 $p(x)=x e^(-x)-x$.齐次通解为 $C e^(x+e^(-x))$，所以原方程通解为 $y=e^x+C e^(x+e^(-x))$.代入初值，$C=-e^(-1/2)$，故 $y=e^x-e^(x+e^(-x)-1/2)$.
]

#answer("六、")[
向上单位法向量为 $(-y'_0,1)/sqrt(1+(y'_0)^2)$，与图中 $M P$ 同向.将其乘以给定长度，再加上 $M$ 的坐标，得
$ xi=x_0-y'_0(1+(y'_0)^2)/y''_0, quad eta=y_0+(1+(y'_0)^2)/y''_0. $
]

#answer("七、")[
交换积分次序，得
$ integral_0^pi dif x integral_0^x (sin t)/(pi-t)dif t=integral_0^pi (sin t)/(pi-t)(pi-t)dif t=2. $

【解法1】分部积分，
$ integral_0^pi f(x)dif x=[x f(x)]_0^pi-integral_0^pi x f'(x)dif x $
$ =pi integral_0^pi frac(sin x,pi-x)dif x-integral_0^pi frac(x sin x,pi-x)dif x=integral_0^pi sin x dif x=2. $
定积分中的哑变量t可改为x，合并积分后分母消去.
]

#answer("八、")[
由条件得 $f(0)=0$、$f'(0)=1$.泰勒公式给出 $f(x)=x+x^2 (f''(xi))/2$，其中 $xi$ 在0与 $x$ 之间.因 $f''(xi)>0$，故 $f(x)>=x$，等号仅在 $x=0$ 时成立.

【证法1】令F(x)=f(x)−x，则F(0)=F′(0)=0、F″＞0. 因而F′严格递增，在0两侧分别为负和正，F在0取得全局最小值0，故f(x)≥x.
【证法3】由拉格朗日中值定理，$f(x)=x f'(xi)$，ξ在0与x之间. x＞0时f′(ξ)＞1，x＜0时f′(ξ)＜1，乘以负数须反向，因此两种情况下都有f(x)＞x. x=0时等号成立.
]

