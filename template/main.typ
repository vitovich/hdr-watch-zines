#import "../src/lib.typ": watch_zine

#set document(author: "HdR", title: "RSWC Watch Name")
#set text(font: "Carlito", size: 7pt, lang: "es")
#set page("a4")

#show heading.where(level: 1): hd => {
  pad(top: 2em, text(10em, align(center, hd.body)))
}

#show: watch_zine.with(
  digital: json(bytes(sys.inputs.at("digital", default: "false"))),
  draw-border: true
)

// Page 1 - Cover
#block({
  image("watchname_front.jpeg", width: 100%, height: 100%, fit: "cover")
  place(top + center, dy: 5mm, box(
    fill: rgb(0, 0, 0, 150),
    inset: 8pt,
    radius: 4pt,
    text(white, size: 20pt, stroke: 0.5pt + black)[
      *RSWC*\ 
      *Watch Name*
    ]
  ))
})
#pagebreak()

// Page 2 - Specifications
*ESPECIFICACIONES TÉCNICAS*
- Caja acero inoxidable 316L
- Diámetro: 40mm
- Ancho de correa: 20mm
- Cristal de zafiro con AR
- Resistencia: 100 metros
- Movimiento automático
- Correa de [material]
[content - max 20 lines × 30 chars]

#pagebreak()

// Page 3 - History/Story
*HISTORIA DEL RELOJ*

[Write compelling story about 
the watch, its inspiration, or
historical context.]

[content - max 20 lines × 30 chars]

#pagebreak()

// Page 4 - Design Details
*DISEÑO Y CARACTERÍSTICAS*

[Describe the design philosophy,
unique features, and aesthetic
choices.]

[content - max 20 lines × 30 chars]

#pagebreak()

// Page 5 - Additional Info
*TÍTULO DE SECCIÓN*

[Additional information about
the watch, community, or special
features.]

[content - max 20 lines × 30 chars]

#pagebreak()

// Page 6 - Credits and additional info
*CRÉDITOS*

[Information about the project,
collaborators, or special edition
details.]

[content - max 20 lines × 30 chars]

#pagebreak()

// Page 7 - Usage and Maintenance Instructions
*INSTRUCCIONES DE USO*

Movimiento automático: se 
carga con el movimiento. 
Admite carga manual girando 
corona.

*Ajuste:* Desenroscar corona. 
Primer punto: cambiar fecha. 
Segundo punto: ajustar hora.

*Mantenimiento:* Enjuagar tras 
agua salada. Revisión anual.

#pagebreak()

// Page 8 - Back Cover
#block({
  image("watchname_back.jpeg", width: 100%, height: 100%, fit: "cover")
})

#place(bottom + left, dx: 5mm, dy: -5mm, text(black, size: 7pt)[
_RSWC · Hablemos de Relojes_
])
