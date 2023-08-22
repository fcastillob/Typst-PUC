#import "modules/template.typ": *

#show: doc => project(
    curso: (
        sigla: "MAT0000",
        nombre: "Curso",
        departamento: "Departamento de Matemáticas",
        escuela: "Facultad de Matemática",
    ),
    docente: "Nombre",
    ayudante: "Nombre",
    numero_de_ayudantia: 1,
    fecha: "1 de enero de 2023",
    body: doc
)

#enum[

// Espacio para la pregunta 1
#lorem(10)

#solucion[
#lorem(10)
]

][
// Espacio para la pregunta 2
#lorem(20)

#solucion[
#lorem(10)
]

][
// Espacio para la pregunta 3
#lorem(40)


#solucion[
#lorem(10)
]

]

