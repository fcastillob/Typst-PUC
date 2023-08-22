#import "theorems.typ": *

#let problem = thmbox(
    "problem",
    "Problema",
    separator: strong(".") + h(0.2em),
    base_level: 0,
    inset: (top: 0em, left: 1.2em, right: 1.2em),
    breakable: true,
)

#let solucion = thmplain(
    "solucion",
    "Solución",
    separator: h(0.2em),
    base_level: 0,
    radius: 0pt,
    inset: 1.2em,
    stroke: (left: 1pt),
    breakable: true,
).with(numbering: none)

#let project(
    curso: (
        sigla: none,
        nombre: none,
        escuela: none,
        departamento: none,
    ),
    docente: none,
    ayudante: none,
    numero_de_ayudantia: none,
    fecha: none,
    body: none,
) = {
    set page(margin: (x: 2.5cm, y: 2cm))
    set par(leading: 0.55em, first-line-indent: 1.8em, justify: true)
    set text(font: "New Computer Modern")
    show raw: set text(font: "New Computer Modern Mono")
    show par: set block(spacing: 0.55em)
    show heading: set block(above: 1.4em, below: 1em)

    grid(
        columns: (60pt, auto),
        rows: (auto, auto),
        column-gutter: 10pt,
        image("uc.svg"),
        smallcaps(align(horizon)[
            Pontificia Universidad Católica de Chile\
            #curso.escuela\
            #curso.departamento\
            Docente: #docente\
            Ayudante: #ayudante 
        ]),
    )

    align(center)[
        #text(weight: 700, 1.5em, [#curso.sigla - #curso.nombre])\
        #text(weight: 500, 1.25em, [Ayudantía #numero_de_ayudantia - #fecha])
    ]

    v(10pt)

    set text(size: 12pt)

    body
}
