#import "../../src/lib.typ": watch_zine

#set document(author: "HdR", title: "RSWC Rex Maris")
#set text(font: "Carlito", size: 7pt, lang: "es")
#set page("a4")

#show heading.where(level: 1): hd => {
  pad(top: 2em, text(10em, align(center, hd.body)))
}

#show: watch_zine.with(
  digital: json(bytes(sys.inputs.at("digital", default: "false"))),
  draw-border: true
)

// cover
#block({
  image("rex_maris_front.jpeg", width: 100%, height: 100%, fit: "cover")
  place(top + center, dy: 5mm, box(
    fill: rgb(0, 0, 0, 150),
    inset: 8pt,
    radius: 4pt,
    [
      #text(white, size: 20pt, stroke: 0.5pt + black)[*RSWC*]\
      #text(white, size: 16pt, stroke: 0.5pt + black)[*Rex Maris*]
    ]
  ))
})
#pagebreak()

*ESPECIFICACIONES TÉCNICAS*
- Caja en acero quirúrgico 316L
- Diámetro: 42mm
- Espesor con cristal: 13.6mm
- Corona y tapa roscadas
- Resistencia: 200 metros
- Movimiento automático Seiko NH35
- Cristal de zafiro con AR interno
- Superluminova BGW-9 azul
- Calendario luminoso
- Brazalete "granos de arroz"
- Dos correas de caucho extra
- Ancho de correa: 20mm

Disponible en Black, Orange, Turquoise, Yellow y Caribbean Blue.

#pagebreak()

*EL REY DEL MAR*

El delfín es uno de los animales marinos más fascinantes. De inteligencia prodigiosa y excelente cazador, utiliza un amplio espectro de sonidos para comunicarse y dominar su entorno.

Su capacidad de ecolocalización extremadamente precisa le otorga un sistema sensorial único en el mar. No es casualidad que Neptuno, dios y rey del mar, eligiera al delfín como su animal de confianza.

El gran Neptuno hacía tirar su carro por estos animales, surcando los siete mares y sumergiéndose en el abismo submarino hacia su castillo en el fondo del mar.

#pagebreak()

*NEPTUNO, DIOS DEL MAR*

Neptuno era el dios que sostenía el planeta, porque el océano rodeaba la Tierra y él, desde los mares, soportaba el peso de la tierra firme.

Había dado forma a las costas, arrancado trozos de montañas para formar acantilados y pasado la mano por el litoral para dejar suaves playas y bahías abrigadas.

Agitando con furia su tridente provocaba en el mar las más terribles tempestades. Era el señor absoluto de las aguas.

#pagebreak()

*DISEÑO PROFESIONAL*

El RSWC Rex Maris 200T Professional rinde homenaje a los míticos relojes de buceo profesional de los años 60 y 70.

Su estética tipo "Doxa" con caja cushion, bisel unidireccional y colores vibrantes lo convierten en un auténtico instrumento de buceo profesional.

El brazalete tipo "granos de arroz" y las dos correas extra de caucho (naranja y negra) completan este conjunto versátil.

#pagebreak()

*CALIDAD Y PRECISIÓN*

Fabricado por Steeldive con calidad RSWC, el Rex Maris incorpora el fiable movimiento Seiko NH35 con calendario.

El cristal de zafiro con tratamiento AR interno, la superluminova BGW-9 azul y el calendario luminoso garantizan legibilidad excepcional en cualquier condición.

200 metros de resistencia al agua certifican su capacidad como herramienta profesional de buceo.

#pagebreak()

*INSTRUCCIONES DE USO*

*Corona:*
- Posición 0 (roscada): Uso normal
- Posición 1: Ajuste de fecha (girar horario)
- Posición 2: Ajuste de hora

*Bisel:* Unidireccional para medir tiempos de inmersión.

*Mantenimiento:* Limpiar con agua dulce tras contacto con agua salada. Verificar impermeabilidad anualmente.

*Almacenamiento:* Corona desenroscada en posición normal. Evitar campos magnéticos intensos.

#pagebreak()

#block({
  image("rex_maris_back.jpeg", width: 100%, height: 50%, fit: "cover")
})

#place(top + left, dx: 5mm, dy: 45mm, box(width: 100% - 10mm, text(black, size: 7pt)[
El grabado trasero muestra al dios Neptuno con su tridente y sus delfines, recordándonos que el portador de este reloj cuenta con la protección del señor de los mares. Un homenaje a la mitología clásica y al poder del océano.
]))

#place(bottom + left, dx: 5mm, dy: -5mm, text(black, size: 7pt)[
_RSWC · Hablemos de Relojes_
])
