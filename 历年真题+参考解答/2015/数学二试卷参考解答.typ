#import "../template.typ": exam, answer, answer-key
#show: exam.with(year: 2015, subject: "二", solutions: true)
#import "@preview/ezexam:0.3.1" as ezexam
#import "@preview/cetz:0.5.2": canvas, draw
#ezexam.mode-state.update(ezexam.HANDOUTS)
#ezexam.answer-state.update(true)

= 2015 数学二试卷参考解答

= 一、选择题

#answer("1.")[
D. 【解】分部积分得 $integral x e^(-x)dif x=-(x+1)e^(-x)+C$，所以
$ integral_2^infinity frac(x,e^x)dif x=lim_(x->infinity)[-(x+1)e^(-x)]+3e^(-2)=3e^(-2). $
故 D 收敛. A、B、C 分别可直接求原函数，所得积分均发散.
]

#answer("2.")[
B. 【解】当 $x!=0$ 时，$x$ 应视为固定的量，变化的是 $t$，因此
$ f(x)=lim_(t->0)e^(frac(x^2,t)ln(1+frac(sin t,x)))=e^x. $
也可写成重要极限的形式：
$ f(x)=lim_(t->0)[(1+frac(sin t,x))^(x/sin t)]^(x sin t/t)=e^x. $
$x=0$ 时表达式无定义，而 $lim_(x->0)f(x)=1$，故零点是可去间断点.
【常见问题】不能把 $x$ 同时视为趋于零的变量；也不能因求得 $e^x$ 就忽略原表达式在零点无定义.
]

#answer("3.")[
A. 【解】当 $x<0$ 时 $f'(x)=0$，且 $f'_-(0)=0$. 零点处可导要求
$ f'_+(0)=lim_(x->0^+)x^(alpha-1)cos frac(1,x^beta)=0, $
故 $alpha>1$. 当 $x>0$ 时，
$ f'(x)=alpha x^(alpha-1)cos frac(1,x^beta)+beta x^(alpha-beta-1)sin frac(1,x^beta). $
要使 $lim_(x->0^+)f'(x)=f'(0)=0$，必须 $alpha-beta-1>0$，即 $alpha-beta>1$.
【常见问题】必须同时检查可导与导函数连续的条件，不能误写成 $alpha-beta>2$.
]

#answer("4.")[
C. 【解】图中 $f''(x)$ 有三个零点. 负半轴上的零点两侧不变号，正半轴上的零点两侧变号；此外，$x=0$ 虽然不是 $f''(x)$ 的零点，但两侧也变号. 因此曲线恰有两个拐点.
]

#answer("5.")[
D. 【解】由 $x+y=u,y/x=v$，解得 $x=u/(1+v),y=u v/(1+v)$. 于是
$ f(u,v)=frac(u^2(1-v),1+v), $
$ f'_u=frac(2u(1-v),1+v),quad f'_v=-frac(2u^2,(1+v)^2). $
代入 $u=v=1$，得到 $f'_u=0,f'_v=-1/2$.
]

#answer("6.")[
B. 【解】用极坐标变换 $x=r cos theta,y=r sin theta$. 两条双曲线分别化为 $2r^2 sin 2theta=1$ 和 $r^2 sin 2theta=1$，两条直线分别化为 $theta=pi/4,theta=pi/3$. 因而积分为
$ integral_(pi/4)^(pi/3)dif theta integral_(1/sqrt(2sin 2theta))^(1/sqrt(sin 2theta))r f(r cos theta,r sin theta)dif r. $
]

#answer("7.")[
D. 【解】增广矩阵经初等行变换得
$ mat(1,1,1,1;1,2,a,d;1,4,a^2,d^2;augment:#3) -> mat(1,1,1,1;0,1,a-1,d-1;0,0,(a-1)(a-2),(d-1)(d-2);augment:#3). $
方程组有无穷多解，当且仅当系数矩阵和增广矩阵的秩相等且小于 $3$，即 $(a-1)(a-2)=(d-1)(d-2)=0$. 所以 $a,d$ 均可取 $1$ 或 $2$.
]

#answer("8.")[
A. 【解】令 $P=(e_1,e_2,e_3)$，则正交矩阵
$ Q=(e_1,-e_3,e_2)=P mat(1,0,0;0,0,1;0,-1,0). $
由 $x=Q y=P(y_1,y_3,-y_2)^T$，原标准形化为 $2y_1^2+y_3^2-y_2^2$.
]

= 二、填空题

#answer("9.")[
$48$. 【解】参数方程求导，得
$ frac(dif y,dif x)=frac(3+3t^2,1/(1+t^2))=3(1+t^2)^2, $
$ frac(dif^2 y,dif x^2)=frac(12t(1+t^2),1/(1+t^2))=12t(1+t^2)^2. $
代入 $t=1$，得 $48$.
【常见问题】二阶导数不是一阶导数直接对 $t$ 求导；还须除以 $dif x/dif t$，否则会误得 $24$.
]

#answer("10.")[
$n(n-1)(ln 2)^(n-2)$. 【解】设 $u=2^x,v=x^2$，则 $u^((k))=2^x(ln 2)^k$，$v'=2x,v''=2$，而 $k>=3$ 时 $v^((k))=0$. 由莱布尼茨公式，
$ f^((n))(x)=2^x(ln 2)^n x^2+2n x 2^x(ln 2)^(n-1)+n(n-1)2^x(ln 2)^(n-2). $
令 $x=0$，即得所求结果.
【常见问题】应使用莱布尼茨公式，逐阶求导再猜测规律容易出错.
]

#answer("11.")[
$2$. 【解】将 $x$ 提到积分号外，有 $phi.alt(x)=x integral_0^(x^2)f(t)dif t$，从而
$ phi.alt'(x)=integral_0^(x^2)f(t)dif t+2x^2 f(x^2). $
由 $phi.alt(1)=integral_0^1 f(t)dif t=1$，及 $phi.alt'(1)=1+2f(1)=5$，得 $f(1)=2$.
【常见问题】求导时不能漏掉乘积求导产生的积分项，否则会误得 $5/2$.
]

#answer("12.")[
$2e^x+e^(-2x)$. 【解】极值条件给出 $y(0)=3,y'(0)=0$. 特征方程 $lambda^2+lambda-2=0$ 的根为 $1,-2$，所以
$ y=C_1 e^x+C_2 e^(-2x),quad y'=C_1 e^x-2C_2 e^(-2x). $
代入初值，得 $C_1+C_2=3,C_1-2C_2=0$，解得 $C_1=2,C_2=1$.
]

#answer("13.")[
$-dif x/3-2dif y/3$. 【解法1】在 $(0,0)$ 处 $z=0$. 对方程分别求偏导，得
$ e^(x+2y+3z)(1+3z'_x)+y z+x y z'_x=0, $
$ e^(x+2y+3z)(2+3z'_y)+x z+x y z'_y=0. $
代入 $x=y=z=0$，得 $z'_x=-1/3,z'_y=-2/3$，故全微分为 $-dif x/3-2dif y/3$.
【解法2】直接求全微分：
$ e^(x+2y+3z)(dif x+2dif y+3dif z)+y z dif x+x z dif y+x y dif z=0. $
代入零点，同样得到结果.
【常见问题】隐函数求偏导公式中有负号，不能遗漏.
]

#answer("14.")[
$21$. 【解】$B=A^2-A+E$ 的特征值分别为 $2^2-2+1=3$、$(-2)^2-(-2)+1=7$、$1^2-1+1=1$，故 $det B=3 dot 7 dot 1=21$.
]

= 三、解答题

#answer("15.")[
【解法1】由于 $ln(1+x)=x-x^2/2+x^3/3+o(x^3),sin x=x-x^3/6+o(x^3)$，所以
$ f(x)&=x+a ln(1+x)+b x sin x \
&=x+a(x-x^2/2+x^3/3)+b x^2+o(x^3) \
&=(1+a)x+(b-a/2)x^2+a/3 x^3+o(x^3). $
因为 $f(x)$ 与 $g(x)=k x^3$ 在 $x->0$ 时等价，所以
$ cases(1+a=0,b-a/2=0,k=a/3). $
解得 $a=-1,b=-1/2,k=-1/3$.

【解法2】用洛必达法则. 有
$ lim_(x->0)f'(x)=lim_(x->0)[1+frac(a,1+x)+b(sin x+x cos x)]=1+a, $
而 $lim_(x->0)g'(x)=0$. 要使 $lim_(x->0)f(x)/g(x)=1$，必须 $1+a=0$，即 $a=-1$. 又
$ lim_(x->0)f''(x)=lim_(x->0)[-frac(a,(1+x)^2)+b(2cos x-x sin x)]=1+2b, $
而 $lim_(x->0)g''(x)=0$，故 $1+2b=0$，即 $b=-1/2$. 再次用洛必达法则，
$ lim_(x->0)frac(f^((3))(x),g^((3))(x))=lim_(x->0)frac(frac(2a,(1+x)^3)-b(3sin x+x cos x),6k)=-frac(1,3k). $
此极限等于 $1$，故 $k=-1/3$.
【解法3】由等价关系及各阶导数的存在，依次比较在零点的导数：$f'(0)=g'(0),f''(0)=g''(0),f^((3))(0)=g^((3))(0)$. 第一式给出 $1+a=0$；第二式给出 $1+2b=0$. 代入后
$ f^((3))(x)=-frac(2,(1+x)^3)+frac(3,2)sin x+frac(1,2)x cos x, $
所以 $f^((3))(0)=-2=6k$，得到 $a=-1,b=-1/2,k=-1/3$.
【常见问题】求极限时不能漏写极限符号；多次求导容易产生计算错误；还应准确写出对数和正弦函数的泰勒公式.
]

#answer("16.")[
$ V_1=pi integral_0^(pi/2) A^2 sin^2 x dif x=pi A^2 integral_0^(pi/2)(1-cos 2x)/2 dif x=pi^2 A^2/4. $
由 $A>0$，可得
$ V_2&=2pi integral_0^(pi/2)x dot A sin x dif x \
&=-2pi A integral_0^(pi/2)x dif cos x \
&=-2pi A(x cos x|_0^(pi/2)-integral_0^(pi/2)cos x dif x) \
&=2pi A. $
因为 $V_1=V_2$，即 $pi^2 A^2/4=2pi A$，所以 $A=8/pi$.

也可将绕 $y$ 轴的体积看作圆柱体积与旋转体积之差：
$ V_2=frac(pi^3 A,4)-pi integral_0^A(arcsin frac(y,A))^2 dif y. $
分部积分后，
$ V_2=2pi integral_0^A frac(y arcsin(y/A),sqrt(A^2-y^2))dif y $
$ =-2pi integral_0^A arcsin(y/A)dif sqrt(A^2-y^2)=2pi A. $
【常见问题】绕纵轴旋转时，用柱壳公式 $V=2pi integral_a^b x f(x)dif x$ 较简便；使用反函数表达再分部积分，计算量较大，易出现错误.
]

#answer("17.")[
由 $f''_(x y)=2(y+1)e^x$，得 $f'_x=(y+1)^2 e^x+phi(x)$.
因为 $f'_x(x,0)=(x+1)e^x$，所以 $e^x+phi(x)=(x+1)e^x$，得 $phi(x)=x e^x$，从而 $f'_x=(y+1)^2 e^x+x e^x$.
对 $x$ 积分得 $f(x,y)=(y+1)^2 e^x+(x-1)e^x+psi(y)$，因为 $f(0,y)=y^2+2y$，所以 $psi(y)=0$，从而
$ f(x,y)=(x+y^2+2y)e^x. $
于是 $f'_y=(2y+2)e^x,f''_(x x)=(x+y^2+2y+2)e^x,f''_(y y)=2e^x$.
令 $f'_x=0,f'_y=0$，得驻点 $(0,-1)$，所以 $A=f''_(x x)(0,-1)=1,B=f''_(x y)(0,-1)=0,C=f''_(y y)(0,-1)=2$.
由 $A C-B^2>0,A>0$，则极小值为 $f(0,-1)=-1$.

【常见问题】必须先利用全部给定条件确定 $f(x,y)$ 的表达式. 对一个变量积分时，积分常数可以是另一个变量的函数，不能随意当成常数.
]

#answer("18.")[
因为区域 $D$ 关于 $y$ 轴对称，所以 $integral.double_D x y dif x dif y=0$.
$ integral.double_D x(x+y)dif x dif y&=integral.double_D x^2 dif x dif y \
&=2integral_0^1 dif x integral_(x^2)^sqrt(2-x^2)x^2 dif y \
&=2integral_0^1 x^2(sqrt(2-x^2)-x^2)dif x \
&=2integral_0^1 x^2 sqrt(2-x^2)dif x-2integral_0^1 x^4 dif x. $
令 $x=sqrt(2)sin t$，则
$ integral_0^1 x^2 sqrt(2-x^2)dif x&=integral_0^(pi/4)4sin^2 t cos^2 t dif t \
&=1/2 integral_0^(pi/4)(1-cos 4t)dif t=pi/8, $
又 $integral_0^1 x^4 dif x=1/5$，所以
$ integral.double_D x(x+y)dif x dif y=pi/4-2/5. $

【解法2】仍先用对称性化为右半区域 $D'$ 上 $2x^2$ 的积分. 极坐标中抛物线为 $r=sin theta/cos^2 theta$，圆为 $r=sqrt(2)$，故
$ I=2integral_0^(pi/4)dif theta integral_0^(sin theta/cos^2 theta)r^3 cos^2 theta dif r $
$ +2integral_(pi/4)^(pi/2)dif theta integral_0^(sqrt(2))r^3 cos^2 theta dif r $
$ =frac(1,2)integral_0^(pi/4)tan^4 theta dif(tan theta)+integral_(pi/4)^(pi/2)(1+cos 2theta)dif theta $
$ =frac(1,10)+frac(pi,4)-frac(1,2)=frac(pi,4)-frac(2,5). $
【常见问题】应先用对称性消去奇函数项；极坐标法需要按 $theta=pi/4$ 分块，并准确写出抛物线的极坐标方程.
]

#answer("19.")[
【解】对变上限积分求导，得
$ f'(x)=-sqrt(1+x^2)+2x sqrt(1+x^2)=sqrt(1+x^2)(2x-1). $
所以 $f$ 在 $x<1/2$ 时严格递减，在 $x>1/2$ 时严格递增. 比较积分可知
$ f(1/2)=integral_(1/2)^1[sqrt(1+t^2)-sqrt(1+t)]dif t-integral_(1/4)^(1/2)sqrt(1+t)dif t<0. $
又 $lim_(x->-infinity)f(x)=+infinity$，故左侧恰有一个零点. 而 $f(1)=0$，所以右侧恰有一个零点. 共有两个零点.
右侧零点的存在也可通过极限说明. 由洛必达法则，
$ lim_(x->+infinity)frac(integral_1^(x^2)sqrt(1+t)dif t,integral_1^x sqrt(1+t^2)dif t)=lim_(x->+infinity)frac(2x sqrt(1+x^2),sqrt(1+x^2))=+infinity. $
因此 $lim_(x->+infinity)f(x)=+infinity$，结合最小值为负和严格单调性，也得右侧恰有一个零点.
【常见问题】判断 $f(1/2)$ 的符号宜比较被积函数，而非直接计算复杂积分；无穷远处的极限也需要给出理由.
]

#answer("20.")[
设该物体在 $t$ 时刻的温度为 $T(t)$（℃），由题意得 $dif T/dif t=-k(T-20)$，其中 $k$ 为比例系数，$k>0$.
解得 $T=C e^(-k t)+20$. 将初始条件 $T(0)=120$ 代入上式，解得 $C=100$. 故 $T=100e^(-k t)+20$.
将 $t=30,T=30$ 代入上式得 $k=(ln 10)/30$.
所以 $T=100e^(-(ln 10)/30 t)+20$. 令 $T=21$，得 $t=60$.
因此要降至 21 ℃，还需 $60-30=30$（min）.

【常见问题】要根据温差建立微分方程，时间单位应一致. 所求是“还需”冷却的时间，故应从总时间 $60$ 分钟中减去已经经过的 $30$ 分钟.
]

#answer("21.")[
曲线 $y=f(x)$ 在点 $(b,f(b))$ 处的切线方程是 $y-f(b)=f'(b)(x-b)$，解得切线与 $x$ 轴交点的横坐标 $x_0=b-f(b)/f'(b)$.
由于 $f'(x)>0$，故 $f(x)$ 单调增加. 由 $b>a$ 可知 $f(b)>f(a)=0$. 又 $f'(b)>0$，故 $f(b)/f'(b)>0$，即有 $x_0<b$.
$ x_0-a=b-f(b)/f'(b)-a=((b-a)f'(b)-f(b))/f'(b). $
由拉格朗日中值定理得 $f(b)=f(b)-f(a)=f'(xi)(b-a),a<xi<b$.
因为 $f''(x)>0$，所以 $f'(x)$ 单调增加，从而 $f'(xi)<f'(b)$，故 $f(b)<(b-a)f'(b)$.
由此可知 $x_0-a>0$，即 $x_0>a$. 综上，$a<x_0<b$.

也可用泰勒公式证明 $x_0>a$. 在 $b$ 点展开并令 $x=a$，有
$ 0=f(b)+f'(b)(a-b)+frac(f''(c),2)(a-b)^2,quad a<c<b. $
故
$ x_0-a=frac(f''(c),2f'(b))(b-a)^2>0. $
【常见问题】几何图像可帮助寻找思路，但不能代替解析证明. 应利用 $f(b)=f(b)-f(a)$ 应用中值定理，或使用带拉格朗日余项的泰勒公式.
]

#answer("22.")[
（Ⅰ）由于 $A^3=O$，所以 $abs(A)=mat(delim: "|",a,1,0;1,a,-1;0,1,a)=a^3=0$，于是 $a=0$.
（Ⅱ）由于 $X-X A^2-A X+A X A^2=E$，所以 $(E-A)X(E-A^2)=E$.
由（Ⅰ）知 $E-A=mat(1,-1,0;-1,1,1;0,-1,1),E-A^2=mat(0,0,1;0,1,0;-1,0,2)$.
因为 $E-A,E-A^2$ 均可逆，所以
$ X&=(E-A)^(-1)(E-A^2)^(-1) \
&=mat(2,1,-1;1,1,-1;1,1,0)mat(2,0,-1;0,1,0;1,0,0) \
&=mat(3,1,-2;1,1,-1;2,1,-1). $

其中两个逆矩阵分别为
$ (E-A)^(-1)=mat(2,1,-1;1,1,-1;1,1,0), $
$ (E-A^2)^(-1)=mat(2,0,-1;0,1,0;1,0,0). $
【常见问题】矩阵乘法不能默认满足交换律；求逆矩阵时，应准确进行初等行变换，避免在繁杂计算中出错.
]

#answer("23.")[
（Ⅰ）由于矩阵 $A$ 与矩阵 $B$ 相似，所以 $upright("tr")(A)=upright("tr")(B),abs(A)=abs(B)$.
于是 $3+a=2+b,2a-3=b$，解得 $a=4,b=5$.
（Ⅱ）由（Ⅰ）知 $A=mat(0,2,-3;-1,3,-3;1,-2,4),B=mat(1,-2,0;0,5,0;0,3,1)$.
由于矩阵 $A$ 与矩阵 $B$ 相似，所以
$ abs(lambda E-A)=abs(lambda E-B)=(lambda-1)^2(lambda-5). $
故 $A$ 的特征值为 $lambda_1=lambda_2=1,lambda_3=5$.
当 $lambda_1=lambda_2=1$ 时，解方程组 $(E-A)x=0$，得线性无关的特征向量 $xi_1=mat(2;1;0),xi_2=mat(-3;0;1)$.
当 $lambda_3=5$ 时，解方程组 $(5E-A)x=0$，得特征向量 $xi_3=mat(1;1;-1)$.
令 $P=(xi_1,xi_2,xi_3)=mat(2,-3,1;1,0,1;0,1,-1)$，则
$ P^(-1)A P=mat(1,0,0;0,1,0;0,0,5), $
故 $P$ 为所求可逆矩阵.

【常见问题】解特征向量的齐次方程组时易发生计算错误；矩阵 $P$ 的各列必须与对角矩阵中相应位置的特征值一致.
]

