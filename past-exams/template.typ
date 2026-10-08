// 统一编译模板；题目、解析及其编号仍在各自的独立内容文件中.
// ISO B5 直接排版；长度与字号均按成品页面指定.
#let paper-margin = 17mm
#let exam(
  year: none,
  title: none,
  subject: "一",
  code: none,
  sample: false,
  solutions: false,
  cover: true,
  hide-source-headings: 0,
  wide-labels: false,
  body,
) = {
  let subject-key = subject
  let subject = if subject in ("一", "二", "三", "四", "五", "MBA") { "数学（" + subject + "）" } else { subject }
  let title = if title != none { title } else { str(year) + "年全国硕士研究生招生考试" }
  let code = if code != none { code } else if year != none and year >= 2009 and subject-key in ("一", "二", "三") { ("一": "301", "二": "302", "三": "303").at(subject-key) }
  set document(title: title + " " + subject, date: none)
  set page(
    width: 176mm, height: 250mm,
    margin: paper-margin,
    header: none, footer: none,
  )
  set text(font: ("FZShuSong-Z01S", "NEU-BZ-S92"), size: 10.5pt,
    lang: "zh", top-edge: "bounds", bottom-edge: "bounds")
  set par(justify: true, leading: 1.3em, spacing: 1.3em)
  // 公式内的中文说明也明确回退到书宋，避免自动选中黑体.
  show math.equation: set text(font: ("NEU-BZ-S92 Math", "FZShuSong-Z01S"), features: ("ss02",))
  show math.equation: it => {
    // 数学常数使用正体；本规则也作用于上下标及指数内的常数.
    show "e": math.upright
    show "π": math.upright
    it
  }
  show math.equation: it => math.display(it)
  show math.equation.where(block: false): it => h(0.25em, weak: true) + it + h(0.25em, weak: true)
  show math.equation.where(block: true): set block(above: 1.3em, below: 1.3em)
  set math.cases(gap: 0.65em)
  // 条件列的起点保持对齐，并在表达式与条件之间留出固定空当.
  show math.cases: it => {
    show $&$.body.func(): point => point + h(0.8em)
    it
  }
  set math.mat(align: center, row-gap: 0.65em)

  if cover {
    text(font: "FZHei-B01", size: 12pt)[绝密★启用前]
    v(40pt)
    align(center)[
      #text(size: 13pt)[#title]
      #v(15pt)
      #text(font: "FZHei-B01", size: 20pt)[#subject]
      #if code != none { v(10pt); text(size: 12pt)[（科目代码：#code）] }
      #if sample { v(10pt); text(size: 11pt)[样卷] }
    ]
    v(28pt)
    align(center, text(font: "FZHei-B01", size: 13pt)[考生注意事项])
    v(24pt)
    {
      set enum(numbering: "1.", indent: 0pt, body-indent: 0.55em)
      set par(leading: 1.3em, spacing: 0.9em)
      enum(
        [答题前，考生须在试题册指定位置上填写考生编号和考生姓名；在答题卡指定位置上填写报考单位、考生姓名和考生编号，并涂写考生编号信息点.],
        [选择题的答案必须涂写在答题卡相应题号的选项上，非选择题的答案必须书写在答题卡指定位置的边框区域内.超出答题区域书写的答案无效；在草稿纸、试题册上答题无效.],
        [填（书）写部分必须使用黑色字迹的签字笔书写，字迹工整、笔迹清楚；涂写部分必须使用 2B 铅笔填涂.],
        [考试结束，将答题卡和试题册按规定交回.],
      )
    }
    v(1fr)
    align(center)[（以下信息考生必须认真填写）]
    v(8pt)
    align(center, table(
      columns: (62pt,) + (17pt,) * 15,
      rows: (23pt, 23pt),
      stroke: 0.5pt, inset: 3pt, align: center + horizon,
      [考生编号], ..range(15).map(_ => []),
      [考生姓名], table.cell(colspan: 15)[],
    ))
    v(45pt)
    pagebreak()
    // 封面背面留白；零尺寸盒子确保这一页实际输出.
    box(width: 0pt, height: 0pt)[]
    pagebreak()
    counter(page).update(1)
  }

  set page(
    margin: paper-margin,
    footer-descent: 17pt,
    footer: align(center, text(font: "FZKai-Z03S", size: 9pt)[
      #subject #if cover { if sample [样卷] else [试题] }　
      第 #context counter(page).display() 页（共 #context counter(page).at(<exam-body-end>).first() 页）
    ]),
  )
  show heading.where(level: 1): it => context {
    if hide-source-headings == 0 or counter(heading).at(it.location()).first() > hide-source-headings {
      block(above: 1.3em, below: 1.3em, sticky: true,
        text(font: "FZHei-B01", size: 10.5pt, it.body))
    }
  }
  show grid: it => { v(1em, weak: false); it; v(0.5em, weak: false) }
  show terms: it => {
    set text(font: "FZShuSong-Z01S")
    set par(hanging-indent: 0pt, spacing: 1.25em)
    for item in it.children {
      if wide-labels {
        [#box(item.term)#h(0.75em)#item.description]
      } else {
        // 整段题干统一缩进；题号向左悬出，公式后的新段落也保持对齐.
        pad(left: 2.3em)[#h(-1.8em)#box(width: 1.8em, align(left, text(font: "FZHei-B01", item.term)))#item.description]
      }
      parbreak()
    }
  }
  show table: it => block(breakable: false, it)
  show figure.where(kind: "question"): it => {
    set block(breakable: true)
    context {
      let b = align(left, it.body)
      block(width: 100%, breakable: measure(b).height > 210mm, b)
    }
  }
  body
  [#metadata(none)<exam-body-end>]
  context {
    // 取正文结束处的物理页号，包含封面及其背面的留白.
    let pages = query(<exam-body-end>).first().location().page()
    pagebreak()
    set page(header: none, footer: none)
    box(width: 0pt, height: 0pt)[]
    if calc.odd(pages) {
      pagebreak()
      box(width: 0pt, height: 0pt)[]
    }
  }
}
