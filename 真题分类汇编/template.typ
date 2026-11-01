#import "../历年真题+参考解答/template.typ": exam
#import "@preview/ezexam:0.3.1" as ezexam
#let collection(title: "分类汇编", subject: "", body) = {
  ezexam.mode-state.update(ezexam.HANDOUTS)
  exam(title: title, subject: subject, cover: false, wide-labels: true)[
    #set page(width: 210mm, height: 297mm)
    #body
  ]
}
