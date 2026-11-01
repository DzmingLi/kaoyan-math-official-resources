#import "../../template.typ": collection
#show: collection.with(title: "求函数的极限分类汇编", subject: "求函数的极限")
#import "@preview/ezexam:0.3.1" as ezexam
#let choices = ezexam.choices.with(r-gap: 1.3em)
#let fillin = ezexam.fillin.with(placeholder: [])
#ezexam.answer-state.update(true)

= 历年真题：求函数的极限

*直接求值与综合计算*

#ezexam.question(label: n => [1987 数二 2（3）])[
设 $f(x)$ 在 $x=a$ 处可导，则 $lim_(x->0)(f(a+x)-f(a-x))/x$ 等于（　）.
#choices([$f'(a)$],[$2f'(a)$],[$0$],[$f'(2a)$])
#ezexam.solution(show-number: false)[
$ "原式"=lim_(x->0)([f(a+x)-f(a)]-[f(a-x)-f(a)])/x
=f'(a)+f'(a)=2f'(a). $
]
]

#ezexam.question(label: n => [1987 数二 4])[
求 $lim_(x->0)(1/x-1/(e^x-1))$.
#ezexam.solution(show-number: false)[
$ "原式"=lim_(x->0)(e^x-1-x)/(x(e^x-1))=lim_(x->0)(e^x-1-x)/x^2 $
$ =lim_(x->0)(e^x-1)/(2x)=lim_(x->0)x/(2x)=1/2. $

注　1. $x->0$ 时，$e^x-1~x$.

2. 利用等价无穷小代换，可以简化计算. 但应注意：等价无穷小代换可以用于乘除运算的各因式，而不能随意用于和差运算.

3. 应熟记 $x->0$ 时某些等价无穷小量，如
$ sin x~x, quad tan x~x, quad 1-cos x~x^2/2, $
$ sqrt(1-x)-1~-x/2, quad ln(1+x)~x, quad e^x-1~x, $
$ arcsin x~x, quad arctan x~x, quad (1+x)^alpha-1~alpha x $
等.
]
]

#ezexam.question(label: n => [1987 数三 5])[
求 $lim_(x->0)(1+x e^x)^(1/x)$.
#ezexam.solution(show-number: false)[
分析　$1^infinity$ 型. 显然利用重要极限 $lim_(x->0)(1+x)^(1/x)=e$ 极为方便，当然也可以使用洛必达法则.

解法一　$ "原式"=lim_(x->0)[(1+x e^x)^(1/(x e^x))]^(e^x)=e. $

解法二　$ "原式"=lim_(x->0)e^(ln(1+x e^x)/x)=e^(lim_(x->0)(e^x+x e^x)/(1+x e^x))=e. $

注　显然此处使用洛必达法则会稍显繁琐. $1^infinity$ 型的两种常用方法就是利用重要极限
$ lim_(x->0)(1+x)^(1/x)=e quad (lim_(x->infinity)(1+1/x)^x=e) $
和洛必达法则，如果函数易化为 $(1+x)^(1/x)$ 的形式，则用前者，否则，使用后者.
]
]

#ezexam.question(label: n => [1987 数四 4])[
求 $lim_(x->+infinity)ln(1+1/x)/(arctan(1/x))$.
#ezexam.solution(show-number: false)[
分析　仅含 $arctan x$ 和 $ln(1+x)$，易想到无穷小代换.

解　$ "原式"=lim_(x->+infinity)(1/x)/(1/x)=1. $

注　要掌握常见等价无穷小：
$x->0$ 时，$x∼sin x∼arcsin x∼tan x∼arctan x$，$x∼ln(1+x)∼e^x-1$，$1-cos x∼1/2 x^2$，$(1+x)^a-1∼a x$，$a^x-1∼x ln a$（$a>0,a!=1$）.
利用等价无穷小代换求极限需注意，代换只能用于乘除法运算中，而不能用于加减；必须 $x->0$；上述公式中的 $x$ 位置可以是任意无穷小函数.
]
]

#ezexam.question(label: n => [1988 数二 1（3）])[
$lim_(x->0^+)(1/sqrt(x))^(tan x)=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
分析　$infinity^0$ 型，先将其指数化处理再使用洛必达法则. 解　$"原式"=lim_(x->0^+)e^(tan x dot(-1/2 ln x))$. 因为 $tan x~x$（$x->0$），则
$ lim_(x->0^+)tan x ln x=lim_(x->0^+)(ln x)/(1/x)
=lim_(x->0^+)x^(-1)/(-x^(-2))=-lim_(x->0^+)x=0, $
故原式 $=e^0=1$.
]
]

#ezexam.question(label: n => [1988 数三 3])[
求 $lim_(x->1)(x^x-1)/(x ln x)$.
#ezexam.solution(show-number: false)[
分析　$0/0$ 型. 首先将 $x^x$ 化为 $e^(x ln x)$，则分子化为 $e^(x ln x)-1$，$e^x-1$ 的形式可用等价无穷小代换. $0/0$ 型当然可以使用洛必达法则.

解法一　$ "原式"=lim_(x->1)(e^(x ln x)-1)/(x ln x)=lim_(x->1)(x ln x)/(x ln x)=1. $

解法二　$ "原式"=lim_(x->1)1/x dot lim_(x->1)(e^(x ln x)-1)/(ln x) \
=1 dot lim_(x->1)(e^(x ln x)(1+ln x))/(1/x)=1. $

注　要掌握常见的等价无穷小.
$x->0$ 时，$x∼sin x∼arcsin x∼tan x∼arctan x$，$x∼ln(1+x)∼e^x-1$，$1-cos x∼1/2 x^2$，$(1+x)^a-1∼a x$，$a^x-1∼x ln a$（$a>0,a!=1$）.
利用等价无穷小代换求极限需注意：代换只能用于乘除法运算中，而不能用于加减；必须 $x->0$；上述公式中的 $x$ 位置可以是任意无穷小函数.
]
]

#ezexam.question(label: n => [1988 数四 4])[
求 $lim_(x->1)(1-x^2)tan(pi/2 x)$.
#ezexam.solution(show-number: false)[
分析　$0 dot infinity$ 型. 可化为 $0/0$ 或 $infinity/infinity$ 型再用洛必达法则，本题显然化为 $0/0$ 型简便些.

解　$ "原式"=lim_(x->1)(1-x^2)/(cot(pi/2 x)) \
=lim_(x->1)(-2x)/(-pi/2 csc^2(pi/2 x))=4/pi. $
]
]

#ezexam.question(label: n => [1989 数一 1（1）])[
已知 $f'(3)=2$，则 $lim_(h->0)(f(3-h)-f(3))/(2h)=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
解　$ "原式"=-1/2 lim_(h->0)(f(3-h)-f(3))/(-h)=-1/2 f'(3)=-1. $
]
]

#ezexam.question(label: n => [1989 数二 1（1）])[
$lim_(x->0)x cot(2x)=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$ lim_(x->0)x cot(2x)=1/2 lim_(x->0)(2x)/(sin(2x))dot cos(2x)=1/2. $
]
]

#ezexam.question(label: n => [1989 数二 3（3）])[
求 $lim_(x->0)(2sin x+cos x)^(1/x)$.
#ezexam.solution(show-number: false)[
解法一
$ 2sin x+cos x=1+(2sin x+cos x-1), $
$ lim_(x->0)(2sin x+cos x-1)/x=lim_(x->0)(2(sin x)/x+(cos x-1)/x)=2. $
故
$ "原式"=lim_(x->0)[1+(2sin x+cos x-1)]^(1/(2sin x+cos x-1) dot (2sin x+cos x-1)/x)=e^2. $

解法二
$ lim_(x->0)(2sin x+cos x)^(1/x)=lim_(x->0)e^((ln(2sin x+cos x))/x) $
$ =e^(lim_(x->0)(2cos x-sin x)/(2sin x+cos x))=e^2. $
]
]

#ezexam.question(label: n => [1989 数三 3（1）])[
求极限 $lim_(x->infinity)(sin(1/x)+cos(1/x))^x$.
#ezexam.solution(show-number: false)[
分析　$1^infinity$ 型. 利用重要极限 $lim_(x->infinity)(1+1/x)^x=e$ 或洛必达法则.

解法一　$ "原式"=lim_(x->infinity)[1+(sin(1/x)+cos(1/x)-1)]^(1/(sin(1/x)+cos(1/x)-1) dot x(sin(1/x)+cos(1/x)-1)). $
而
$ lim_(x->infinity)x(sin(1/x)+cos(1/x)-1) \
=lim_(x->infinity)(sin(1/x)+cos(1/x)-1)/(1/x) \
=lim_(x->infinity)(sin(1/x))/(1/x)+lim_(x->infinity)(-1/(2x^2))/(1/x)=1. $
故原式 $=e$.

解法二　令 $1/x=t$，则
$ "原式"=lim_(t->0)(sin t+cos t)^(1/t) \
=e^(lim_(t->0)ln(sin t+cos t)/t)=e^(lim_(t->0)(cos t-sin t)/(sin t+cos t))=e. $

注　解法一最后一步利用了重要极限 $lim_(x->0)(sin x)/x=1$ 和无穷小代换 $1-cos x∼1/2 x^2$（$x->0$）.
]
]

#ezexam.question(label: n => [1989 数四 3（1）])[
求极限 $lim_(x->+infinity)(x+e^x)^(1/x)$.
#ezexam.solution(show-number: false)[
解　令 $y=(x+e^x)^(1/x)$. 当 $x->+infinity$ 时，
$ ln y=ln(x+e^x)/x=1+ln(1+x e^(-x))/x. $
由于 $x e^(-x)->0$，故 $ln(1+x e^(-x))/x->0$，于是 $ln y->1$.
因此原极限为 $e$.
]
]

#ezexam.question(label: n => [1990 数一 1（2）])[
设 $a$ 为非零常数，则 $lim_(x->infinity)((x+a)/(x-a))^x=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
解　$ "原式"=lim_(x->infinity)[(1+(2a)/(x-a))^((x-a)/(2a))]^((2a x)/(x-a))=e^(2a). $

注　本题也可将 $((x+a)/(x-a))^x$ 变形为 $((1+a/x)^x)/((1-a/x)^x)$，分别求出分子和分母的极限.
]
]

#ezexam.question(label: n => [1991 数一 3（1）、数二 3（1）])[
求 $lim_(x arrow 0^+) (cos sqrt(x))^(pi/x)$.
#ezexam.solution(show-number: false)[
*解一* 取对数后用洛必达法则：
$ lim_(x arrow 0^+) (ln cos sqrt(x))/x = lim_(x arrow 0^+) -(sin sqrt(x))/(2sqrt(x) cos sqrt(x))=-1/2. $
故原极限为 $e^(-pi/2)$.

*解二* 由 $cos sqrt(x)-1 tilde.eq -x/2$ 及基本极限 $(1+u)^(1/u) arrow e$，同样得原极限为 $e^(-pi/2)$.
]
]

#ezexam.question(label: n => [1991 数三 1（5）])[
$lim_(x arrow 0^+) (1-e^(1/x))/(x+e^(1/x))=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
分子、分母同除以 $e^(1/x)$，得 $(e^(-1/x)-1)/(x e^(-1/x)+1) arrow -1$.
]
]

#ezexam.question(label: n => [1991 数三 3（3）])[
求 $lim_(x arrow 0)(x-sin x)/(x^2(e^x-1))$.
#ezexam.solution(show-number: false)[
*解一* 由 $e^x-1 tilde.eq x$，并用洛必达法则，得
$ lim_(x arrow 0)(x-sin x)/(x^2(e^x-1))=lim_(x arrow 0)(x-sin x)/x^3
=lim_(x arrow 0)(1-cos x)/(3x^2)=1/6. $
*解二* 对原式连续使用三次洛必达法则，最后得到
$ lim_(x arrow 0)(cos x)/(6e^x+6x e^x+x^2 e^x)=1/6. $
]
]

#ezexam.question(label: n => [1991 数四 3])[
求极限 $lim_(x arrow 0)((e^x+e^(2x)+dots+e^(n x))/n)^(1/x)$，其中 $n$ 是给定的自然数.
#ezexam.solution(show-number: false)[
取对数后用洛必达法则，得
$ lim_(x arrow 0)(ln(e^x+e^(2x)+dots+e^(n x))-ln n)/x
=lim_(x arrow 0)(e^x+2e^(2x)+dots+n e^(n x))/(e^x+e^(2x)+dots+e^(n x))
=(1+2+dots+n)/n=(n+1)/2. $
所以原极限为 $e^((n+1)/2)$.
]
]

#ezexam.question(label: n => [1991 数四 2（1）、数五 2（1）])[
下列各式中正确的是
#choices([$lim_(x arrow 0^+)(1+1/x)^x=1$.],[$lim_(x arrow 0^+)(1+1/x)^x=e$.],[$lim_(x arrow infinity)(1-1/x)^x=-e$.],[$lim_(x arrow infinity)(1+1/x)^(-x)=e$.])
#ezexam.solution(show-number: false)[
*A.* $x ln(1+1/x) arrow 0$（$x arrow 0^+$），故A项极限为1.C、D两项左侧极限均为 $e^(-1)$.
]
]

#ezexam.question(label: n => [1991 数五 3])[
求极限 $lim_(x arrow +infinity)(x+sqrt(1+x^2))^(1/x)$.
#ezexam.solution(show-number: false)[
取对数并用洛必达法则，
$ lim_(x arrow +infinity)(ln(x+sqrt(1+x^2)))/x
=lim_(x arrow +infinity)1/sqrt(1+x^2)=0. $
所以原极限为 $e^0=1$.
]
]

#ezexam.question(label: n => [1992 数一 2（1）、数二 2（3）])[
当 $x->1$ 时，函数 $(x^2-1)/(x-1)e^(1/(x-1))$ 的极限（　）.
#choices([等于2.],[等于0.],[为 $infinity$.],[不存在但不为 $infinity$.])
#ezexam.solution(show-number: false)[
因 $lim_(x->1)(x^2-1)/(x-1)=2$，而
$ lim_(x->1^+)e^(1/(x-1))=+infinity, quad lim_(x->1^-)e^(1/(x-1))=0, $
故
$ lim_(x->1^+)(x^2-1)/(x-1)e^(1/(x-1))=+infinity, $
$ lim_(x->1^-)(x^2-1)/(x-1)e^(1/(x-1))=0. $
所以选 D. 注　左、右极限存在且相等，是函数极限存在的充要条件. 本题中函数 $(x^2-1)/(x-1)e^(1/(x-1))$ 为两个因式的乘积，易求出 $lim_(x->1)(x^2-1)/(x-1)=2$，所以解本题的关键是因式 $e^(1/(x-1))$.
]
]

#ezexam.question(label: n => [1992 数一 3（1）])[
求 $lim_(x->0)(e^x-sin x-1)/(1-sqrt(1-x^2))$.
#ezexam.solution(show-number: false)[
解　$ "原式"=lim_(x->0)(e^x-1-sin x)/(1-sqrt(1-x^2)) \
=lim_(x->0)(e^x-1-sin x)/(1/2 x^2)=lim_(x->0)(e^x-cos x)/x \
=lim_(x->0)(e^x+sin x)/1=(1+0)/1=1. $

注　本题使用了等价无穷小代换：$1-sqrt(1-x^2)∼1/2 x^2$（$x->0$）.
]
]

#ezexam.question(label: n => [1992 数二 1（3）])[
$lim_(x->0)(1-sqrt(1-x^2))/(e^x-cos x)=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$ lim_(x->0)(1-sqrt(1-x^2))/(e^x-cos x)=lim_(x->0)(1/2 x^2)/(e^x-cos x) $
$ =lim_(x->0)x/(e^x+sin x)=0/(1+0)=0. $

注　$x->0$ 时，$1-sqrt(1-x^2)~1/2 x^2$.
]
]

#ezexam.question(label: n => [1992 数二 3（1）])[
求 $lim_(x->infinity)((3+x)/(6+x))^((x-1)/2)$.
#ezexam.solution(show-number: false)[
$ "原式"=lim_(x->infinity)((3/x+1)^(x/2))/((6/x+1)^(x/2))((3+x)/(6+x))^(-1/2) $
$ =e^(3/2)/e^(6/2) dot 1^(-1/2)=e^(-3/2). $

注　求幂指函数“$1^infinity$”型的极限，常将其化为重要极限 $lim_(x->infinity)(1+1/x)^x=e$ 的形式，也可以采用取对数的方法将其化为指数幂数，进而求解.
]
]

#ezexam.question(label: n => [1992 数四 3])[
求极限 $lim_(x->1)(ln cos(x-1))/(1-sin(pi/2 x))$.
#ezexam.solution(show-number: false)[
分析　$0/0$ 型. 用洛必达法则.

解法一　$ "原式"=lim_(x->1)(-(sin(x-1))/(cos(x-1)))/(-pi/2 cos(pi/2 x)) \
=2/pi lim_(x->1)(tan(x-1))/(cos(pi/2 x)) \
=2/pi lim_(x->1)(sec^2(x-1))/(-pi/2 sin(pi/2 x))=-4/pi^2. $

解法二　令 $x-1=t$，则
$ "原式"=lim_(t->0)(ln cos t)/(1-cos(pi/2 t)) \
=lim_(t->0)(ln(1+cos t-1))/(1-cos(pi/2 t)) \
=lim_(t->0)(cos t-1)/(1/2 dot pi^2/4 t^2)=lim_(t->0)(-1/2 t^2)/(pi^2/8 t^2)=-4/pi^2. $
]
]

#ezexam.question(label: n => [1993 数一 3（1）、数二 3（1）])[
求 $lim_(x arrow infinity)(sin(2/x)+cos(1/x))^x$.
#ezexam.solution(show-number: false)[
令 $t=1/x$，则
$ lim_(x arrow infinity)x ln(sin(2/x)+cos(1/x))=lim_(t arrow 0)(ln(sin 2t+cos t))/t=2. $
所以原极限为 $e^2$.
]
]

#ezexam.question(label: n => [1993 数三 1（1）])[
$lim_(x arrow 0^+)x ln x=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
由洛必达法则，$lim_(x arrow 0^+)(ln x)/(1/x)=lim_(x arrow 0^+)(-x)=0$.
]
]

#ezexam.question(label: n => [1993 数三 3（2）])[
求 $lim_(x arrow -infinity)x(sqrt(x^2+100)+x)$.
#ezexam.solution(show-number: false)[
有理化并利用 $x<0$，原极限为
$ lim_(x arrow -infinity)(100x)/(sqrt(x^2+100)-x)=lim_(x arrow -infinity)100/(-sqrt(1+100/x^2)-1)=-50. $
]
]

#ezexam.question(label: n => [1993 数四 1（1）])[
$lim_(x arrow infinity)(3x^2+5)/(5x+3) sin(2/x)=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
由 $sin(2/x)∼2/x$，原极限为 $lim_(x arrow infinity)(6x^2+10)/(5x^2+3x)=6/5$.
]
]

#ezexam.question(label: n => [1994 数一 1（1）、数二 1（1）])[
$lim_(x arrow 0)cot x (1/sin x-1/x)=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
由 $sin x=x-x^3/6+o(x^3)$，得 $1/sin x-1/x∼x/6$，又 $cot x∼1/x$，故极限为 $1/6$.
]
]

#ezexam.question(label: n => [1994 数四 1（2）、数五 1（2）])[
已知 $f'(x_0)=-1$，则 $lim_(x arrow 0)x/(f(x_0-2x)-f(x_0-x))=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
由可导性，分母 $=-x f'(x_0)+o(x)=x+o(x)$，故极限为 $1$.
]
]

#ezexam.question(label: n => [1994 数五 3])[
求极限 $lim_(x arrow infinity)[x-x^2 ln(1+1/x)]$.
#ezexam.solution(show-number: false)[
令 $t=1/x$，则原式为 $lim_(t arrow 0)(t-ln(1+t))/t^2=1/2$.
]
]

#ezexam.question(label: n => [1995 数MBA 2])[
求极限 $lim_(x arrow 0)(cos x-sqrt(cos x))/sin^2 x$.
#ezexam.solution(show-number: false)[
有理化得
$ (cos x-sqrt(cos x))/sin^2 x=-cos x/((cos x+sqrt(cos x))(1+cos x)), $
故极限为 $-1/4$.
]
]

#ezexam.question(label: n => [1995 数一 1（1）、数二 1（1）])[
$lim_(x arrow 0)(1+3x)^(2/sin x)=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
取对数后极限为 $lim_(x arrow 0)2ln(1+3x)/sin x=6$，故原极限为 $e^6$.
]
]

#ezexam.question(label: n => [1995 数三 3（1）])[
求 $lim_(x arrow 0^+)(1-sqrt(cos x))/(x(1-cos sqrt(x)))$.
#ezexam.solution(show-number: false)[
有理化后，利用 $1-cos x∼x^2/2$、$1-cos sqrt(x)∼x/2$，原极限为 $1/2$.
]
]

#ezexam.question(label: n => [1996 数三 1（4）])[
$lim_(x arrow infinity)x[sin ln(1+3/x)-sin ln(1+1/x)]=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
令 $t=1/x$，利用 $sin ln(1+k t)=k t+o(t)$，所求极限为 $3-1=2$.
]
]

#ezexam.question(label: n => [1997 数一 1（1）])[
$lim_(x arrow 0)(3sin x+x^2 cos(1/x))/((1+cos x)ln(1+x))=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
分子分母同除以 $x$，利用 $ (sin x)/x arrow 1$、$x cos(1/x)arrow 0$、$ (ln(1+x))/x arrow 1$，得极限为 $3/2$.
]
]

#ezexam.question(label: n => [1997 数二 3（1）])[
求极限 $lim_(x arrow -infinity)(sqrt(4x^2+x-1)+x+1)/sqrt(x^2+sin x)$.
#ezexam.solution(show-number: false)[
分子、分母同除以 $-x>0$，得
$ lim_(x arrow -infinity)(sqrt(4+1/x-1/x^2)-1-1/x)/sqrt(1+(sin x)/x^2)=1. $
]
]

#ezexam.question(label: n => [1997 数三 3])[
在经济学中，称函数
$ Q(x)=A[delta K^(-x)+(1-delta)L^(-x)]^(-1/x) $
为固定替代弹性生产函数，而称函数 $overline(Q)=A K^delta L^(1-delta)$ 为 Cobb–Douglas 生产函数（简称 C–D 生产函数）. 试证明：当 $x arrow 0$ 时，固定替代弹性生产函数变为 C–D 生产函数，即有 $lim_(x arrow 0)Q(x)=overline(Q)$.
#ezexam.solution(show-number: false)[
取对数，$ln Q(x)=ln A-(ln[delta K^(-x)+(1-delta)L^(-x)])/x$. 由洛必达法则，
$ lim_(x arrow 0)(ln[delta K^(-x)+(1-delta)L^(-x)])/x=-delta ln K-(1-delta)ln L. $
因此 $lim ln Q(x)=ln(A K^delta L^(1-delta))$，再取指数即得结论.
]
]

#ezexam.question(label: n => [1997 数四 3])[
求极限 $lim_(x arrow 0)[a/x-(1/x^2-a^2)ln(1+a x)]$（$a≠0$）.
#ezexam.solution(show-number: false)[
写成 $[a x-ln(1+a x)]/x^2+a^2 ln(1+a x)$. 第二项趋于0；第一项用 $ln(1+a x)=a x-a^2 x^2/2+o(x^2)$，极限为 $a^2/2$.
]
]

#ezexam.question(label: n => [1998 数一 1（1）、数二 1（1）])[
$lim_(x->0) frac(sqrt(1+x)+sqrt(1-x)-2,x^2)=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$-1/4$.
]
]

#ezexam.question(label: n => [1999 数一 1（1）])[
$lim_(x -> 0)(frac(1,x^2)-frac(1,x tan x))=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$frac(1,3)$.
]
]

#ezexam.question(label: n => [1999 数二 3])[
求 $lim_(x -> 0) frac(sqrt(1+tan x)-sqrt(1+sin x),x ln(1+x)-x^2)$.
#ezexam.solution(show-number: false)[
$ "原式"&=lim_(x -> 0){frac(tan x-sin x,x[ln(1+x)-x])dot frac(1,sqrt(1+tan x)+sqrt(1+sin x))} \
&=frac(1,2)lim_(x -> 0) frac(1-cos x,ln(1+x)-x) quad "（3分）" \
&=frac(1,2)lim_(x -> 0) frac(sin x,-frac(x,1+x))=-frac(1,2). quad "（5分）" $
]
]

#ezexam.question(label: n => [1999 数三 3、数四 3])[
曲线 $y=frac(1,sqrt(x))$ 的切线与 $x$ 轴和 $y$ 轴围成一个图形，记切点的横坐标为 $a$. 试求切线方程和这个图形的面积. 当切点沿曲线趋于无穷远时，该面积的变化趋势如何？
#ezexam.solution(show-number: false)[
由 $y=frac(1,sqrt(x))$，得 $y'=-frac(1,2)x^(-frac(3,2))$，则切点 $P(a,frac(1,sqrt(a)))$ 处的切线方程为
$ y-frac(1,sqrt(a))=-frac(1,2sqrt(a^3))(x-a). quad "（2分）" $
#import "@preview/cetz:0.5.2"
#cetz.canvas({
 import cetz.draw: *
 set-style(stroke:0.6pt)
 line((-0.15,0),(3.5,0),mark:(end:">"));line((0,-0.15),(0,2.8),mark:(end:">"))
 line((0,1.5),(3,0))
 let curve=range(0,61).map(i=>{let x=0.16+i*3/60;(x,1/calc.sqrt(x))})
 line(..curve)
 line((1,0),(1,1),stroke:(dash:"dashed"));circle((1,1),radius:0.025,fill:black)
 content((3.6,0),$x$);content((0,2.9),$y$);content((-0.15,-0.12),$O$)
 content((-0.13,1.5),$R$);content((1,-0.18),$a$);content((1.1,1.22),$P$);content((3,-0.18),$Q$)
})
切线与 $x$ 轴和 $y$ 轴的交点分别为 $Q(3a,0)$ 和 $R(0,frac(3,2sqrt(a)))$. （3分）

于是，$triangle O R Q$ 的面积
$ S=frac(1,2)dot 3a dot frac(3,2sqrt(a))=frac(9,4)sqrt(a). quad "（4分）" $
当切点按 $x$ 轴正方向趋于无穷远时，有 $lim_(a -> +infinity) S=+infinity$. （5分）

当切点按 $y$ 轴正方向趋于无穷远时，有 $lim_(a -> 0^+) S=0$. （6分）
]
]

#ezexam.question(label: n => [2000 数一 3])[
求 $lim_(x->0)(frac(2+e^(1/x),1+e^(4/x))+frac(sin x,|x|))$.
#ezexam.solution(show-number: false)[
因
$ lim_(x->0^+)(frac(2+e^(1/x),1+e^(4/x))+frac(sin x,|x|))=lim_(x->0^+)(frac(2e^(-4/x)+e^(-3/x),e^(-4/x)+1)+frac(sin x,x))=1, quad "（2分）" $
$ lim_(x->0^-)(frac(2+e^(1/x),1+e^(4/x))+frac(sin x,|x|))=lim_(x->0^-)(frac(2+e^(1/x),1+e^(4/x))-frac(sin x,x))=2-1=1, quad "（4分）" $
故原式 $=1$. （5分）
]
]

#ezexam.question(label: n => [2000 数二 1（1）])[
$lim_(x->0)frac(arctan x-x,ln(1+2x^3))=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$-frac(1,6)$.
]
]

#ezexam.question(label: n => [2000 数四 1（2）])[
若 $a>0,b>0$ 均为常数，则 $lim_(x->0)(frac(a^x+b^x,2))^(3/x)=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$(a b)^(3/2)$.
]
]

#ezexam.question(label: n => [2001 数二 1（1）])[
$lim_(x->1) (sqrt(3-x)-sqrt(1+x))/(x^2+x-2)=$#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$-sqrt(2)/6$.
]
]

#ezexam.question(label: n => [2001 数二 4])[
求极限 $lim_(t->x) ((sin t)/(sin x))^(x/(sin t-sin x))$，记此极限为 $f(x)$，求函数 $f(x)$ 的间断点并指出其类型.
#ezexam.solution(show-number: false)[
*解* 因为 $f(x)=e^(lim_(t->x) x/(sin t-sin x) ln((sin t)/(sin x)))$，而
$ lim_(t->x) x/(sin t-sin x) ln((sin t)/(sin x))=lim_(t->x) x frac((cos t)/(sin t),cos t)=x/(sin x), $
故 $f(x)=e^(x/(sin x))$. 由于 $lim_(x->0) f(x)=lim_(x->0) e^(x/(sin x))=e$，所以，$x=0$ 是函数 $f(x)$ 的第一类（或可去）间断点；

$x=k pi (k=plus.minus 1,plus.minus 2,dots)$ 是 $f(x)$ 的第二类（或无穷）间断点.
]
]

#ezexam.question(label: n => [2002 数二 2（3）])[
设 $y(x)$ 是微分方程 $y''+p y'+q y=e^(3x)$ 满足初始条件 $y(0)=y'(0)=0$ 的特解，则 $lim_(x->0) (ln(1+x^2))/(y(x))=$（　）.
#choices[不存在.][1.][2.][3.]
#ezexam.solution(show-number: false)[
C.
]
]

#ezexam.question(label: n => [2003 数一 1（1）])[
$lim_(x->0) (cos x)^(1/ln(1+x^2))=$#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$1/sqrt(e)$.
]
]

#ezexam.question(label: n => [2003 数四 1（1）])[
极限 $lim_(x->0) [1+ln(1+x)]^(2/x)=$#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$e^2$.
]
]

#ezexam.question(label: n => [2004 数二 15])[
求极限 $lim_(x->0) 1/x^3 [((2+cos x)/3)^x-1]$.
#ezexam.solution(show-number: false)[
解法1　原式
$ =lim_(x->0)(e^(x ln((2+cos x)/3))-1)/x^3 \
=lim_(x->0)(ln((2+cos x)/3))/x^2 \
=lim_(x->0)(ln(2+cos x)-ln 3)/x^2 \
=lim_(x->0)((1/(2+cos x))dot(-sin x))/(2x) \
=-1/2 lim_(x->0)1/(2+cos x) dot (sin x)/x=-1/6. $
解法2　原式
$ =lim_(x->0)(e^(x ln((2+cos x)/3))-1)/x^3 \
=lim_(x->0)(ln((2+cos x)/3))/x^2 \
=lim_(x->0)(ln(1+(cos x-1)/3))/x^2 \
=lim_(x->0)(cos x-1)/(3x^2)=-1/6. $
]
]

#ezexam.question(label: n => [2004 数二 18])[
曲线 $y=(e^x+e^(-x))/2$ 与直线 $x=0,x=t (t>0)$ 及 $y=0$ 围成一曲边梯形. 该曲边梯形绕 $x$ 轴旋转一周得一旋转体，其体积为 $V(t)$，侧面积为 $S(t)$，在 $x=t$ 处的底面积为 $F(t)$.

（Ⅰ）求 $(S(t))/(V(t))$ 的值；

（Ⅱ）计算极限 $lim_(t->+infinity)(S(t))/(F(t))$.
#ezexam.solution(show-number: false)[
解　（Ⅰ）
$ S(t)&=integral_0^t 2pi y sqrt(1+y'^2)dif x \
&=2pi integral_0^t ((e^x+e^(-x))/2)sqrt(1+(e^(2x)-2+e^(-2x))/4)dif x \
&=2pi integral_0^t ((e^x+e^(-x))/2)^2 dif x, \
V(t)&=pi integral_0^t ((e^x+e^(-x))/2)^2 dif x, $
所以 $(S(t))/(V(t))=2$.
（Ⅱ）$F(t)=pi y^2|_(x=t)=pi ((e^t+e^(-t))/2)^2$，
$ lim_(t->+infinity)(S(t))/(F(t))=lim_(t->+infinity)(2pi integral_0^t ((e^x+e^(-x))/2)^2 dif x)/(pi ((e^t+e^(-t))/2)^2) $
$ =lim_(t->+infinity)(2((e^t+e^(-t))/2)^2)/(2((e^t+e^(-t))/2)((e^t-e^(-t))/2))=lim_(t->+infinity)(e^t+e^(-t))/(e^t-e^(-t))=1. $
]
]

#ezexam.question(label: n => [2004 数三 15、数四 15])[
求 $lim_(x->0)(1/sin^2 x-(cos^2 x)/x^2)$.
#ezexam.solution(show-number: false)[
解
$ lim_(x->0)(1/sin^2 x-(cos^2 x)/x^2) \
=lim_(x->0)(x^2-sin^2 x cos^2 x)/(x^2 sin^2 x)=lim_(x->0)(x^2-1/4 sin^2 2x)/x^4 \
=lim_(x->0)(x-1/4 sin 4x)/(2x^3)=lim_(x->0)(1-cos 4x)/(6x^2) \
=lim_(x->0)(sin 4x)/(3x)=4/3. $
]
]

#ezexam.question(label: n => [2005 数三 1、数四 1])[
极限 $lim_(x->infinity)x sin((2x)/(x^2+1))=$#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
2.
]
]

#ezexam.question(label: n => [2005 数三 15、数四 15])[
求 $lim_(x->0)((1+x)/(1-e^(-x))-1/x)$.
#ezexam.solution(show-number: false)[
$ lim_(x->0)((1+x)/(1-e^(-x))-1/x) \
=lim_(x->0)(x+x^2-1+e^(-x))/(x(1-e^(-x))) \
=lim_(x->0)(x+x^2-1+e^(-x))/x^2 \
=lim_(x->0)(1+2x-e^(-x))/(2x) \
=lim_(x->0)(2+e^(-x))/2=3/2. $
]
]

#ezexam.question(label: n => [2006 数一 1])[
$lim_(x->0)(x ln(1+x))/(1-cos x)=$#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
2.
]
]

#ezexam.question(label: n => [2006 数三 15、数四 15])[
设 $f(x,y)=y/(1+x y)-(1-y sin((pi x)/y))/(arctan x),x>0,y>0$. 求：

（Ⅰ）$g(x)=lim_(y->+infinity)f(x,y)$；

（Ⅱ）$lim_(x->0^+)g(x)$.
#ezexam.solution(show-number: false)[
（Ⅰ）$g(x)=lim_(y->+infinity)f(x,y)=1/x-(1-pi x)/(arctan x)$.

（Ⅱ）
$ lim_(x->0^+)g(x)=lim_(x->0^+)(1/x-(1-pi x)/(arctan x)) \
=lim_(x->0^+)(arctan x-x+pi x^2)/x^2 \
=lim_(x->0^+)(1/(1+x^2)-1+2pi x)/(2x) \
=lim_(x->0^+)(2pi-x+2pi x^2)/(2(1+x^2))=pi. $
]
]

#ezexam.question(label: n => [2007 数二 11])[
$lim_(x->0)(arctan x-sin x)/x^3=$#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$-1/6$.
]
]

#ezexam.question(label: n => [2007 数三 11、数四 11])[
$lim_(x->+infinity)(x^3+x^2+1)/(2^x+x^3)(sin x+cos x)=$#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
0.
]
]

#ezexam.question(label: n => [2008 数一 15、数二 15])[
求极限 $lim_(x->0) ([sin x-sin(sin x)]sin x)/x^4$.
#ezexam.solution(show-number: false)[
解　$ lim_(x->0) ([sin x-sin(sin x)]sin x)/x^4 \
=lim_(x->0) (sin x-sin(sin x))/x^3 \
=lim_(x->0) (cos x-cos(sin x)cos x)/(3x^2) \
=lim_(x->0) (1-cos(sin x))/(3x^2) \
=lim_(x->0) ((1/2)sin^2 x)/(3x^2)=1/6. $
]
]

#ezexam.question(label: n => [2008 数三 15、数四 15])[
求极限 $lim_(x->0) 1/x^2 ln((sin x)/x)$.
#ezexam.solution(show-number: false)[
解　原式 $=lim_(x->0) (x cos x-sin x)/(2x^2 sin x)
=lim_(x->0) (x cos x-sin x)/(2x^3)
=lim_(x->0) (-x sin x)/(6x^2)=-1/6.$
]
]

#ezexam.question(label: n => [2009 数二 15])[
求极限 $lim_(x->0)((1-cos x)[x-ln(1+tan x)])/(sin^4 x)$.
#ezexam.solution(show-number: false)[
解
$ lim_(x->0)((1-cos x)[x-ln(1+tan x)])/(sin^4 x) \
=lim_(x->0)(x-ln(1+tan x))/(2x^2) \
=lim_(x->0)(1-(sec^2 x)/(1+tan x))/(4x) \
=lim_(x->0)(1+tan x-sec^2 x)/(4x) \
=lim_(x->0)(sec^2 x-2sec^2 x tan x)/4=1/4. $
]
]

#ezexam.question(label: n => [2009 数三 9])[
$lim_(x->0)(e-e^(cos x))/(root(3,1+x^2)-1)=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$(3e)/2$.
]
]

#ezexam.question(label: n => [2010 数一 1])[
极限 $lim_(x->infinity)[x^2/((x-a)(x+b))]^x=$
#choices([1.],[$e$.],[$e^(a-b)$.],[$e^(b-a)$.])
#ezexam.solution(show-number: false)[
C.
]
]

#ezexam.question(label: n => [2010 数三 15])[
求极限 $lim_(x->+infinity)(x^(1/x)-1)^(1/(ln x))$.
#ezexam.solution(show-number: false)[
解　因为
$ lim_(x->+infinity)(ln(e^((ln x)/x)-1))/(ln x) \
=lim_(x->+infinity)(x e^((ln x)/x))/(e^((ln x)/x)-1) dot (1-ln x)/x^2, $
而当 $x->+infinity$ 时，$(ln x)/x->0$，故
$ lim_(x->+infinity)(ln(e^((ln x)/x)-1))/(ln x) \
=lim_(x->+infinity)e^((ln x)/x)/((ln x)/x) dot (1-ln x)/x \
=lim_(x->+infinity)(1-ln x)/(ln x)=-1, $
所以 $lim_(x->+infinity)(x^(1/x)-1)^(1/(ln x))=e^(-1)$.
]
]

#ezexam.question(label: n => [2011 数一 15])[
求极限 $lim_(x->0)[(ln(1+x))/x]^(1/(e^x-1))$.
#ezexam.solution(show-number: false)[
解　记 $y=[(ln(1+x))/x]^(1/(e^x-1))$. 当 $x>0$ 时，$ln y=(ln[ln(1+x)]-ln x)/(e^x-1)$，
$ lim_(x->0^+)ln y=lim_(x->0^+)(ln[ln(1+x)]-ln x)/(e^x-1) $
$ =lim_(x->0^+) (1/((1+x)ln(1+x))-1/x)/1=lim_(x->0^+)(x-(1+x)ln(1+x))/(x(1+x)ln(1+x)) $
$ =lim_(x->0^+)(x-(1+x)ln(1+x))/x^2=lim_(x->0^+)(1-ln(1+x)-1)/(2x)=-1/2. $
当 $x<0$ 时，$ln y=(ln[-ln(1+x)]-ln(-x))/(e^x-1)$，同样可得
$ lim_(x->0^-)ln y=lim_(x->0^-)(ln[-ln(1+x)]-ln(-x))/(e^x-1)=-1/2. $
综上可知，$lim_(x->0)[(ln(1+x))/x]^(1/(e^x-1))=1/sqrt(e)$.
]
]

#ezexam.question(label: n => [2011 数二 9])[
$lim_(x->0)((1+2^x)/2)^(1/x)=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$sqrt(2)$.
]
]

#ezexam.question(label: n => [2011 数三 15])[
求极限 $lim_(x->0)(sqrt(1+2sin x)-x-1)/(x ln(1+x))$.
#ezexam.solution(show-number: false)[
解
$ lim_(x->0)(sqrt(1+2sin x)-x-1)/(x ln(1+x))=lim_(x->0)(sqrt(1+2sin x)-x-1)/x^2 $
$ =lim_(x->0)((cos x)/sqrt(1+2sin x)-1)/(2x) $
$ =lim_(x->0)(cos x-sqrt(1+2sin x))/(2x) dot 1/sqrt(1+2sin x) $
$ =lim_(x->0)(-sin x-(cos x)/sqrt(1+2sin x))/2=-1/2. $
]
]

#ezexam.question(label: n => [2011 数二 2、数三 2])[
设函数 $f(x)$ 在 $x=0$ 处可导，且 $f(0)=0$，则 $lim_(x->0)(x^2 f(x)-2f(x^3))/x^3=$
#choices([$-2f'(0)$.],[$-f'(0)$.],[$f'(0)$.],[0.])
#ezexam.solution(show-number: false)[
B.
]
]

#ezexam.question(label: n => [2012 数三 15])[
求极限 $lim_(x->0)(e^(x^2)-e^(2-2cos x))/x^4$.
#ezexam.solution(show-number: false)[
解
$ lim_(x->0)(e^(x^2)-e^(2-2cos x))/x^4&=lim_(x->0)(e^(x^2-2+2cos x)-1)/x^4 dot e^(2-2cos x) \
 &=lim_(x->0)(x^2-2+2cos x)/x^4=lim_(x->0)(x-sin x)/(2x^3) \
 &=lim_(x->0)(1-cos x)/(6x^2)=1/12. $
]
]

#ezexam.question(label: n => [2012 数三 9])[
$lim_(x->pi/4)(tan x)^(1/(cos x-sin x))=$#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$e^(-sqrt(2))$.
]
]

#ezexam.question(label: n => [2013 数二 9])[
$lim_(x->0)[2-(ln(1+x))/x]^(1/x)=$#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$sqrt(e)$.
]
]

#ezexam.question(label: n => [2014 数二 5])[
设函数 $f(x)=arctan x$. 若 $f(x)=x f'(xi)$，则 $lim_(x->0)xi^2/x^2=$
#choices([1.],[$2/3$.],[$1/2$.],[$1/3$.])
#ezexam.solution(show-number: false)[
D.
]
]

#ezexam.question(label: n => [2015 数一 9、数三 9])[
$lim_(x->0)(ln(cos x))/x^2=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$-1/2$.
]
]

#ezexam.question(label: n => [2016 数二 15、数三 15])[
求极限 $lim_(x->0)(cos 2x+2x sin x)^(1/x^4)$.
#ezexam.solution(show-number: false)[
解　因为
$ lim_(x->0)(cos 2x+2x sin x)^(1/x^4)=e^(lim_(x->0)(ln(cos 2x+2x sin x))/x^4), $
且
$ lim_(x->0)(ln(cos 2x+2x sin x))/x^4
 &=lim_(x->0)1/(cos 2x+2x sin x) dot (-2sin 2x+2sin x+2x cos x)/(4x^3) \
 &=lim_(x->0)(-2cos 2x+2cos x-x sin x)/(6x^2) \
 &=lim_(x->0)(4sin 2x-3sin x-x cos x)/(12x)=1/3, $
所以 $lim_(x->0)(cos 2x+2x sin x)^(1/x^4)=e^(1/3)$.
]
]

#ezexam.question(label: n => [2018 数二 9])[
$lim_(x->+infinity) x^2[arctan(x+1)-arctan x]=$#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
1.
]
]

#ezexam.question(label: n => [2000 数二 2（4）])[
若 $lim_(x->0)frac(sin 6x+x f(x),x^3)=0$，则 $lim_(x->0)frac(6+f(x),x^2)$ 为（　）.
#choices[0.][6.][36.][$infinity$.]
#ezexam.solution(show-number: false)[
C.
]
]

#ezexam.question(label: n => [2001 数一 7])[
设函数 $y=f(x)$ 在区间 $(-1,1)$ 内具有二阶连续导数，且 $f''(x) != 0$. 证明：

（1）对于每一个非零的 $x in (-1,1)$，存在唯一的 $theta(x) in (0,1)$，使得
$ f(x)=f(0)+x f'(theta(x)x); $
（2）$lim_(x->0) theta(x)=1/2$.
#ezexam.solution(show-number: false)[
*证法1* （1）任给非零的 $x in (-1,1)$，由拉格朗日中值定理，存在 $theta(x) in (0,1)$，使得
$ f(x)=f(0)+x f'(theta(x)x). $
由于 $f''(x)$ 连续且不为零，故在 $(-1,1)$ 内不变号，不妨设 $f''(x)>0$，则 $f'(x)$ 在 $(-1,1)$ 内严格单增，故 $theta(x)$ 唯一.

（2）由泰勒公式得
$ f(x)=f(0)+f'(0)x+1/2 f''(xi)x^2 quad (xi #text[在0与] x #text[之间]), $
所以 $x f'(theta(x)x)=f(x)-f(0)=f'(0)x+1/2 f''(xi)x^2$，从而
$ theta(x) (f'(theta(x)x)-f'(0))/(theta(x)x)=1/2 f''(xi). $
由于
$ lim_(x->0) (f'(theta(x)x)-f'(0))/(theta(x)x)=f''(0), quad lim_(x->0) f''(xi)=lim_(xi->0) f''(xi)=f''(0), $
故 $lim_(x->0) theta(x)=1/2$.

*证法2*

（1）同证法一（1）.

（2）对于非零 $x in (-1,1)$，由拉格朗日中值定理得
$ f(x)=f(0)+x f'(theta(x)x) quad (0<theta(x)<1), $
所以
$ (f'(theta(x)x)-f'(0))/x=(f(x)-f(0)-f'(0)x)/x^2. $
由于
$ lim_(x->0) (f'(theta(x)x)-f'(0))/(theta(x)x)=f''(0), \
lim_(x->0) (f(x)-f(0)-f'(0)x)/x^2=lim_(x->0) (f'(x)-f'(0))/(2x)=1/2 f''(0), $
故 $lim_(x->0) theta(x)=1/2$.
]
]

#ezexam.question(label: n => [2008 数二 9])[
已知函数 $f(x)$ 连续，且 $lim_(x->0) (1-cos[x f(x)])/((e^(x^2)-1)f(x))=1$，则 $f(0)=$#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
2.
]
]

#ezexam.question(label: n => [2016 数三 9])[
已知函数 $f(x)$ 满足 $lim_(x->0)(sqrt(1+f(x)sin 2x)-1)/(e^(3x)-1)=2$，则 $lim_(x->0)f(x)=$#fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
6.
]
]

*积分与极限综合*

#ezexam.question(label: n => [1988 数二 8])[
设 $f(x)$ 在 $(-infinity,+infinity)$ 内连续可导，且 $m<=f(x)<=M,a>0$.

（1）求 $lim_(a->0^+)1/(4a^2)integral_(-a)^a[f(t+a)-f(t-a)]dif t$；

（2）求证：$abs(1/(2a)integral_(-a)^a f(t)dif t-f(x))<=M-m$.
#ezexam.solution(show-number: false)[
（1）解法一　令 $t+a=u$，则
$ integral_(-a)^a f(t+a)dif t=integral_0^(2a)f(u)dif u, $
令 $t-a=u$，则
$ integral_(-a)^a f(t-a)dif t=integral_(-2a)^0 f(u)dif u, $
$ "原式"=lim_(a->0^+)1/(4a^2)[integral_0^(2a)f(u)dif u-integral_(-2a)^0 f(u)dif u] $
$ =lim_(a->0^+)(2f(2a)-2f(-2a))/(8a)
=lim_(a->0^+)(f(2a)-f(-2a))/(4a)=f'(0). $

解法二　由积分中值定理，得
$ 1/(4a^2)integral_(-a)^a[f(t+a)-f(t-a)]dif t $
$ =1/(4a^2)dot 2a[f(xi+a)-f(xi-a)] quad (-a<=xi<=a) $
$ =f'(eta), quad eta in (xi-a,xi+a) quad ("微分中值定理"). $
故
$ lim_(a->0^+)1/(4a^2)integral_(-a)^a[f(t+a)-f(t-a)]dif t
=lim_(a->0^+)f'(eta)=f'(0). $

（2）证法一
$ abs(1/(2a)integral_(-a)^a f(t)dif t-f(x))=abs(1/(2a)integral_(-a)^a[f(t)-f(x)]dif t) $
$ <=1/(2a)integral_(-a)^a abs(f(t)-f(x))dif t $
$ <=1/(2a)integral_(-a)^a(M-m)dif t=M-m. $
（因 $abs(f(t)-f(x))<=M-m$）. 证法二　用积分中值定理，
$ abs(1/(2a)integral_(-a)^a f(t)dif t-f(x))=abs(1/(2a)integral_(-a)^a[f(t)-f(x)]dif t) $
$ =abs(f(xi)-f(x))<=M-m quad (-a<=xi<=a). $
]
]

#ezexam.question(label: n => [1990 数四 3（1）])[
求极限 $lim_(x->infinity)1/x integral_0^x(1+t^2)e^(t^2-x^2)dif t$.
#ezexam.solution(show-number: false)[
解　$ lim_(x->infinity)1/x integral_0^x(1+t^2)e^(t^2-x^2)dif t \
=lim_(x->infinity)(e^(-x^2)integral_0^x(1+t^2)e^(t^2)dif t)/x \
=lim_(x->infinity)(integral_0^x(1+t^2)e^(t^2)dif t)/(x e^(x^2)). $
由于 $integral_0^(+infinity)(1+t^2)e^(t^2)dif t=infinity$，$lim_(x->+infinity)x e^(x^2)=infinity$，所以极限为 $infinity/infinity$ 型，用洛必达法则求解.
$ "原式"=lim_(x->infinity)(integral_0^x(1+t^2)e^(t^2)dif t)/(x e^(x^2)) \
=lim_(x->infinity)((1+x^2)e^(x^2))/(e^(x^2)+2x^2 e^(x^2))=1/2. $
]
]

#ezexam.question(label: n => [1992 数三 2（1）、数四 2（1）])[
设 $F(x)=x^2/(x-a)integral_a^x f(t)dif t$，其中 $f(x)$ 为连续函数，则 $lim_(x->a)F(x)$ 等于（　）.
#choices([$a^2$],[$a^2 f(a)$],[$0$],[不存在.])
#ezexam.solution(show-number: false)[
解法一　$ lim_(x->a)(x^2 integral_a^x f(t)dif t)/(x-a) \
=a^2 lim_(x->a)(integral_a^x f(t)dif t)/(x-a)=a^2 lim_(x->a)f(x)/1=a^2 f(a). $

解法二　举特例，令 $f(x)=3$，则
$ F(x)=x^2/(x-a)integral_a^x 3dif t=(3x^2(x-a))/(x-a)=3x^2. $
故 $lim_(x->a)F(x)=3a^2$. A、C、D 均不正确，选 B.

解法三　利用积分中值定理.
$ lim_(x->a)F(x)=lim_(x->a)(x^2 integral_a^x f(t)dif t)/(x-a) \
=a^2 lim_(x->a)(integral_a^x f(t)dif t)/(x-a) \
=a^2 lim_(x->a)((x-a)f(xi))/(x-a)=a^2 lim_(x->a)f(xi)=a^2 f(a), $
其中 $xi$ 介于 $a$ 与 $x$ 之间.
]
]

#ezexam.question(label: n => [1994 数四 6])[
设函数 $f(x)$ 可导，且 $f(0)=0$，$F(x)=integral_0^x t^(n-1)f(x^n-t^n)dif t$，求 $lim_(x arrow 0)F(x)/x^(2n)$.
#ezexam.solution(show-number: false)[
令 $u=x^n-t^n$，得 $F(x)=1/n integral_0^(x^n) f(u)dif u$. 由洛必达法则，
$ lim_(x arrow 0)F(x)/x^(2n)=1/(2n)lim_(x arrow 0)f(x^n)/x^n=(f'(0))/(2n). $
]
]

#ezexam.question(label: n => [1994 数五 8])[
设函数 $f(x)$ 可导，且 $f(0)=0$，$F(x)=integral_0^x t^(n-1)f(x^n-t^n)dif t$，证明 $lim_(x arrow 0)F(x)/x^(2n)=(f'(0))/(2n)$.
#ezexam.solution(show-number: false)[
令 $u=x^n-t^n$，得 $F(x)=1/n integral_0^(x^n) f(u)dif u$. 由洛必达法则，
$ lim_(x arrow 0)F(x)/x^(2n)=1/(2n)lim_(x arrow 0)f(x^n)/x^n=(f'(0))/(2n). $
]
]

#ezexam.question(label: n => [2000 数二 6])[
设函数 $S(x)=integral_0^x |cos t|dif t$，

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

#ezexam.question(label: n => [2002 数三 3、数四 3])[
求极限 $lim_(x->0) (integral_0^x [integral_0^(u^2) arctan(1+t) dif t] dif u)/(x(1-cos x))$.
#ezexam.solution(show-number: false)[
*解法1*
$ lim_(x->0) (integral_0^x [integral_0^(u^2) arctan(1+t) dif t] dif u)/(x(1-cos x)) \
=lim_(x->0) (integral_0^(x^2) arctan(1+t) dif t)/(1-cos x+x sin x) \
=lim_(x->0) (2x arctan(1+x^2))/(sin x+sin x+x cos x) \
=2lim_(x->0) arctan(1+x^2) lim_(x->0) 1/((2sin x)/x+cos x)=2dot pi/4 dot 1/3=pi/6. $
*解法2*
$ lim_(x->0) (integral_0^x [integral_0^(u^2) arctan(1+t) dif t] dif u)/(x(1-cos x)) \
=2lim_(x->0) (integral_0^x [integral_0^(u^2) arctan(1+t) dif t] dif u)/x^3 \
=2lim_(x->0) (integral_0^(x^2) arctan(1+t) dif t)/(3x^2) \
=2lim_(x->0) (2x arctan(1+x^2))/(6x)=2/3 dot pi/4=pi/6. $
]
]

#ezexam.question(label: n => [2005 数二 15])[
设函数 $f(x)$ 连续，且 $f(0)!=0$，求极限 $lim_(x->0) (integral_0^x (x-t)f(t)dif t)/(x integral_0^x f(x-t)dif t)$.
#ezexam.solution(show-number: false)[
原式 $=lim_(x->0)(x integral_0^x f(t)dif t-integral_0^x t f(t)dif t)/(x integral_0^x f(x-t)dif t)$. 设 $x-t=u$，得
$ lim_(x->0)(x integral_0^x f(t)dif t-integral_0^x t f(t)dif t)/(x integral_0^x f(u)dif u). $
由洛必达法则，等于
$ lim_(x->0)(integral_0^x f(t)dif t+x f(x)-x f(x))/(integral_0^x f(u)dif u+x f(x)). $
由积分中值定理（$xi$ 在0和 $x$ 之间），等于
$ lim_(x->0,xi->0)(x f(xi))/(x f(xi)+x f(x))=f(0)/(f(0)+f(0))=1/2. $
]
]

#ezexam.question(label: n => [2014 数一 15、数二 15、数三 15])[
求极限 $lim_(x->+infinity)(integral_1^x[t^2(e^(1/t)-1)-t]dif t)/(x^2 ln(1+1/x))$.
#ezexam.solution(show-number: false)[
$ &lim_(x->+infinity)(integral_1^x[t^2(e^(1/t)-1)-t]dif t)/(x^2 ln(1+1/x)) \
&=lim_(x->+infinity)(integral_1^x[t^2(e^(1/t)-1)-t]dif t)/x \
&=lim_(x->+infinity)[x^2(e^(1/x)-1)-x] \
&=lim_(x->+infinity)[x^2(1/x+1/(2x^2)+o(1/x^2))-x] \
&=lim_(x->+infinity)[1/2+x^2 dot o(1/x^2)]=1/2. $
]
]

#ezexam.question(label: n => [2016 数一 9])[
$lim_(x->0)(integral_0^x t ln(1+t sin t)dif t)/(1-cos x^2)=$ #fillin(len: 4em)[].
#ezexam.solution(show-number: false)[
$1/2$.
]
]

#ezexam.question(label: n => [2017 数二 15、数三 15])[
求 $lim_(x->0^+)(integral_0^x sqrt(x-t)e^t dif t)/sqrt(x^3)$.
#ezexam.solution(show-number: false)[
解　令 $x-t=u$，则 $t=x-u$，$dif t=-dif u$.
$ lim_(x->0^+)(integral_0^x sqrt(x-t)e^t dif t)/sqrt(x^3)
 &=lim_(x->0^+)(e^x integral_0^x sqrt(u)e^(-u)dif u)/sqrt(x^3) \
 &=lim_(x->0^+)(integral_0^x sqrt(u)e^(-u)dif u)/sqrt(x^3) \
 &=lim_(x->0^+)(sqrt(x)e^(-x))/(3/2 sqrt(x))=2/3. $
]
]

#ezexam.question(label: n => [1988 数三 10])[
设某商品的需求量 $D$ 和供给量 $S$，各自对价格 $p$ 的函数为 $D(p)=a/p^2,S(p)=b p$，且 $p$ 是时间 $t$ 的函数并满足方程 $(dif p)/(dif t)=k[D(p)-S(p)]$（$a,b,k$ 为正常数），求：（1）需求量与供给量相等时的均衡价格 $p_e$；（2）当 $t=0,p=1$ 时的价格函数 $p(t)$；（3）$lim_(t->+infinity)p(t)$.
#ezexam.solution(show-number: false)[
解　（1）当需求量等于供给量时，有 $a/p^2=b p$，即 $p^3=a/b$，因此均衡价格为 $p_e=(a/b)^(1/3)$.

（2）由条件知
$ (dif p)/(dif t)=k[D(p)-S(p)]=k(a/p^2-b p)=(k b)/p^2(a/b-p^3). $
因此有 $(dif p)/(dif t)=(k b)/p^2(p_e^3-p^3)$，即
$ (p^2 dif p)/(p^3-p_e^3)=-k b dif t. $
两边积分得 $p^3=p_e^3+C e^(-3k b t)$.
由条件 $p(0)=1$，可得 $C=1-p_e^3$.
于是价格函数为
$ p=[p_e^3+(1-p_e^3)e^(-3k b t)]^(1/3). $
（3）$lim_(t->+infinity)p(t)=lim_(t->+infinity)[p_e^3+(1-p_e^3)e^(-3k b t)]^(1/3)=p_e$.
]
]

