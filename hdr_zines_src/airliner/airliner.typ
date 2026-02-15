#import "../../src/lib.typ": watch_zine

#set document(author: "HdR", title: "RSWC Airliner GMT")
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
  image("airliner_front.jpeg", width: 100%, height: 100%, fit: "cover")
  place(top + center, dy: 3mm, box(
    fill: rgb(0, 0, 0, 150),
    inset: 8pt,
    radius: 4pt,
    [
      #text(white, size: 12pt, stroke: 0.5pt + black)[*RSWC*]\ 
      #text(white, size: 10pt, stroke: 0.5pt + black)[*Airliner GMT*]
    ]
  ))
})
#pagebreak()

// Page 2 - Technical Specifications
*ESPECIFICACIONES TÉCNICAS*

- *Caja:* Acero 316L de 40.5 mm
- *Espesor:* 13.5 mm
- *Cristal:* Zafiro vintage bubble
- *Bisel:* Zafiro bicolor luminoso
- *Esfera:* Negra modificada
- *Lume:* Superluminova retro
- *Movimiento:* Hangzhou 6460 GMT
- *Hermeticidad:* 200 metros
- *Ancho asas:* 20 mm
- *Brazalete:* Vintage Five Balls
- *Correas:* 3 NATO incluidas
- *Edición:* 100 unidades numeradas

#pagebreak()

// Page 3 - The Story
*LA EXPERIENCIA HACE DIFERENCIA*

Los pilotos de PAN-AM surcaban cielos en modernos Boeing 707 conectando continentes. Su herramienta de confianza: un GMT profesional para controlar múltiples zonas horarias.

El RSWC Airliner GMT rinde homenaje a aquella época dorada de aviación. Un reloj diseñado para profesionales que necesitan precisión absoluta.

Nuestros experimentados pilotos tienen miles de horas vuelo. La puntualidad es legendaria gracias a relojes RSWC en cada muñeca.
#pagebreak()

// Page 4 - Design Details
*BISEL DE ZAFIRO BICOLOR*

El bisel giratorio de zafiro ultra resistente permite seguir segunda zona horaria. Manufactura especial bicolor con luminiscencia excepcional.

*CRISTAL VINTAGE BUBBLE*

Cristal zafiro con efecto burbuja vintage, sin tratamiento AR. Evoca estética años 50-60 de primeros GMT profesionales.

*BRAZALETE FIVE BALLS*

Brazalete vintage sólido estilo primeros Oyster. Cierre firmado RSWC.
#pagebreak()

// Page 5 - Movement and Function
*HANGZHOU 6460 GMT*

Movimiento automático Hangzhou 6460 GMT, clon perfecto ETA 2836-2 GMT. Precisión legendaria.

Compatible San Martin SN005-G, calidad Astar.

*TRUE GMT vs OFFICE GMT*

6460 es TRUE GMT: horaria salta por horas, GMT fija. Ideal viajero.

Office GMT: GMT ajustable, horaria fija. Para consultar sin viajar.

True GMT cambia hora local rápido manteniendo referencia UTC.
#pagebreak()

// Page 6 - GMT Setup Instructions
*AJUSTE FUNCIÓN GMT*

*1. Desenroscar corona:* Girar antihorario hasta libre.

*2. Hora referencia (pos. 2):* Tirar corona máximo (2 clics). Segundero para. Girar: mueven minutero, horaria y GMT juntas. Dejar GMT en UTC/huso referencia.

*3. Ajustar solo GMT (pos. 1):* Empujar corona un clic. Girar antihorario: GMT salta horas sin mover minutero. Colocar GMT en segundo huso deseado.

*4. Hora local (pos. 1):* Girar sentido contrario: horaria salta por horas, fecha avanza/retrocede, GMT no se mueve.

*Ajuste fecha:* No tiene corrección rápida. Fecha cambia al saltar horaria cada 24h (paso 4).

*5. Cerrar:* Empujar y enroscar bien.
#pagebreak()

// Page 7 - Equipment and Care
*EQUIPAMIENTO COMPLETO*

El Airliner GMT incluye brazalete vintage Five Balls y tres correas NATO:

- NATO azul Pan-Am
- NATO roja
- NATO clásica negro/gris

Corona roscada firmada RSWC. Tapa trasera customizada con globo terráqueo diseñado por Juanktm.

Estuche negro Astar transporte.

*MANTENIMIENTO*

Carga automática: 40 horas reserva marcha. 30 vueltas corona para carga manual inicial.

Hermeticidad 200m: verificar corona bien enroscada antes inmersión.
#pagebreak()

// Page 8 - Back Cover
#block({
  image("airliner_back.jpeg", width: 100%, height: 50%, fit: "cover")
})

#place(top + left, dx: 5mm, dy: 45mm, box(width: 100% - 10mm, text(black, size: 7pt)[
La tapa trasera muestra globo terráqueo simbolizando vocación internacional del Airliner GMT. Edición limitada 100 unidades numeradas. 
]))

#place(bottom + left, dx: 5mm, dy: -5mm, text(black, size: 7pt)[
_RSWC · Hablemos de Relojes_
])
