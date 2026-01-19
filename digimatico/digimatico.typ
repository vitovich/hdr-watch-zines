#import "../src/lib.typ": watch_zine

#set document(author: "Jefebus", title: "Sol y Sombra – Digimático")
#set text(font: "Carlito", size: 7pt, lang: "es")
#set page("a4")

#show heading.where(level: 1): hd => {
  pad(top: 2em, text(10em, align(center, hd.body)))
}

#show: watch_zine.with(
  digital: json(bytes(sys.inputs.at("digital", default: "false"))),
  draw-border: true // draw border boxes in printing mode
)

// cover
#block({
  image("digimatico_front.jpeg", width: 100%, height: 100%, fit: "cover")
  place(top + center, dy: 5mm, text(white, size: 20pt)[
    *Sol y Sombra*\ 
    *Digimático*
  ])
})
#pagebreak()

*ESPECIFICACIONES TÉCNICAS*
- Caja de acero 316L Swiss Grade, 10 ATM
- 40mm sin corona, lug to lug: 46mm, espesor: 16.5mm
- Asas: 22mm, cierre: 20mm, corona roscada 6.5mm con logo SyS
- Cristal de zafiro plano con lupas, TT/AA incoloro
- Trasera con dibujo protegido por zafiro (2 tapas)
- Correa de piel, hebilla grabada
- Miyota Premium 9015, automático con remonte manual
- 28.800 VPH / 4Hz, 24 rubíes, 42h reserva
#pagebreak()

*EL PRIMER RELOJ DIGITAL MECÁNICO*

El Sol y Sombra Digimático es un reloj mecánico donde la hora, 
minutos, segundos y fecha se leen en forma de dígitos mediante discos 
giratorios en lugar de agujas tradicionales.

Inspirado en las básculas de baño de los años setenta con disco 
giratorio y gran cristal de aumento, omnipresentes en todos los 
hogares españoles de aquella época.

Los relojes digitales fueron muy populares en la España setentera. 
El Digimático rescata ese espíritu con tecnología mecánica moderna.

#pagebreak()

*LA ESCENA DE LA BÁSCULA*

En "Yo hice a Roque III", Federico intenta pesar a Roque en el gimnasio 
pero la báscula está en libras porque es de fabricación inglesa. 

Paco (Antonio Ozores) llega con las instrucciones y una calculadora 
para hacer "una sencilla regla de tres" y pasar de libras a kilos.

Lo que sigue es magistral: Pajares, Esteso y Ozores firman una de 
las escenas más hilarantes del cine español, inspiración directa 
de este reloj con su sistema de lectura mediante discos y lupas.

#pagebreak()

*DISEÑO Y CONSTRUCCIÓN*

La caja en dos piezas con 100 metros de resistencia requiere mecanizado 
CNC de 5 ejes para su acabado perfecto. El zafiro frontal, aunque plano, 
requiere trabajo extra por su forma característica.

El interior es aún más complejo: no hay agujas, sino cuatro discos 
giratorios que muestran hora, minutos, segundos y fecha en dígitos. 
Cada disco se fabrica con moldes a medida, sumando 3.1mm de altura total.

La profundidad de estos discos superpuestos hace necesarias las lupas 
de zafiro para facilitar la lectura. El Miyota Premium 9015, con solo 
3.90mm de altura, fue la elección perfecta para este desafío técnico.

#pagebreak()

*VERSIONES Y ESTRELLA DE MARIANO*

Versiones vintage: Azul clásico, Naranja, Negro y especiales como 
Gibraltar Español y Uhrforum (textos en alemán para amigos alemanes).

Edición Pilón: Tabaco y caja dorada con logotipo del suavizante en 
oro de 24 pilones. Referencia al suavizante Pilón que aparece en 
"Los bingueros", otra gran película de Pajares y Esteso.

La estrella metálica en el dial honra a Mariano Ozores (1926-2025), 
director de estas obras maestras del humor español. Una estrella que 
merece estar en el Paseo de la Fama.

#pagebreak()

*DOBLE TAPA Y CORREA*

Dos tapas intercambiables:

Tapa 1: Dibujo a todo color de la escena de la báscula de 
"Yo hice a Roque III" protegido por cristal de zafiro.

Tapa 2: Sello Sol y Sombra en placado IP oro y relieve.

Sistema de anclaje por tornillos mantiene ambas siempre rectas.

Correa de piel de calidad con hebilla grabada Sol y Sombra.

#pagebreak()

#image("digimatico_back.jpeg", width: 100%, height: 50%, fit: "cover")

#place(top + left, dx: 5mm, dy: 45mm, box(width: 100% - 10mm, text(black, size: 7pt)[
La tapa trasera recrea uno de los momentos más desternillantes de 
la escena de la báscula de "Yo hice a Roque III". El dibujo a todo 
color va protegido por cristal de zafiro con sistema de anclaje por tornillos.
]))

#place(bottom + left, dx: 5mm, dy: -5mm, text(black, size: 7pt)[
_Sol y Sombra · Hablemos de Relojes · Homenaje a Mariano Ozores (1926-2025)_
])
