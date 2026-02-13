#import "../../src/lib.typ": watch_zine

#set document(
  author: "HdR · RSWC",
  title: "RSWC Scaphandre I · El rey de los océanos"
)

#set text(font: "Carlito", size: 7pt, lang: "es")
#set page("a4")

#show heading.where(level: 1): hd => {
  pad(top: 2em, text(10em, align(center, hd.body)))
}

#show: watch_zine.with(
  digital: json(bytes(sys.inputs.at("digital", default: "false"))),
  draw-border: true
)

///////////////////////////////////////////////////////////////////////////////
// 1) PORTADA
///////////////////////////////////////////////////////////////////////////////
#block({
  image("scaphandre_i_front.jpeg", width: 100%, height: 100%, fit: "cover")
  place(top + center, dy: 3mm, box(
    fill: rgb(0, 0, 0, 150),
    inset: 8pt,
    radius: 4pt,
    text(white, stroke: 0.5pt + black)[
      #text(size: 12pt)[*RSWC*]\ 
      #text(size: 10pt)[*Scaphandre I*]
    ]
  ))
})#pagebreak()

///////////////////////////////////////////////////////////////////////////////
// 2) ESPECIFICACIONES TÉCNICAS
///////////////////////////////////////////////////////////////////////////////
*ESPECIFICACIONES TÉCNICAS*

- Modelo: RSWC Scaphandre I
- Caja acero 316L
- Protector corona integrado
- Diámetro: 56 mm
- Grosor: 15 mm
- Paso correa: 22 mm
- Hermeticidad: 1200m
- Bisel cerámico bidireccional
- Lumen azul en todo el bisel
- Cristal zafiro plano sin AR
- Seiko NH35 automático
- Corona roscada + botón bisel
- Correas Isofrane naranja/negra
- Edición: 100 unidades
- Cofre Astar

#pagebreak()

///////////////////////////////////////////////////////////////////////////////
// 3) EL MUNDO DE COUSTEAU
///////////////////////////////////////////////////////////////////////////////
*EL MUNDO DE COUSTEAU*

Cousteau revolucionó la
exploración submarina del
siglo XX. Su equipo de
científicos-buceadores
franceses exploró los
océanos durante décadas.

Desde el mítico Calypso
recorrieron los siete
mares documentando vida
marina. Sus documentales
llevaron el fondo del mar
a millones de hogares.

Para estos pioneros, el
reloj era herramienta
vital de supervivencia.

Scaphandre I homenajea a
esos valientes exploradores.

#pagebreak()

///////////////////////////////////////////////////////////////////////////////
// 4) RELOJES DE BUCEO EXTREMO
///////////////////////////////////////////////////////////////////////////////
*HERRAMIENTAS PROFESIONALES*

Años 70: relojes de buceo
profesional alcanzan nuevas
profundidades. Diseños
radicales, masivos, con
protectores de corona y
sistemas de bloqueo.

Estética brutalista donde
la función dicta la forma.
No joyas: máquinas de
combate contra la presión
del abismo.

600, 1000, 1200 metros.
Cada generación empuja los
límites más profundo.

Scaphandre I continúa esa
tradición sin concesiones.

#pagebreak()

///////////////////////////////////////////////////////////////////////////////
// 5) TECNOLOGÍA Y RESISTENCIA
///////////////////////////////////////////////////////////////////////////////
*1200 METROS DE PROFUNDIDAD*

El Scaphandre I alcanza los 1200 metros de hermeticidad, el doble que su
inspiración original. Una profundidad que supera con creces las necesidades
del buceo recreativo e incluso profesional.

Su bisel cerámico bidireccional incorpora Superluminova azul en todo el
perímetro, permitiendo una lectura perfecta del tiempo de inmersión incluso
en la oscuridad total del abismo.

El sistema de bloqueo del bisel mediante botones laterales evita movimientos
accidentales que podrían resultar fatales bajo el agua.

Cada detalle está pensado para la supervivencia en condiciones extremas.

#pagebreak()

///////////////////////////////////////////////////////////////////////////////
// 6) ESTÉTICA FRANCESA · NARANJA Y AZUL
///////////////////////////////////////////////////////////////////////////////
*COLORES DEL OCÉANO*

Las correas tipo Isofrane en naranja y negro rinden homenaje a la tradición
francesa de buceo profesional. El naranja, color de alta visibilidad subacuática,
era usado por los equipos de Cousteau para localizarse mutuamente.

El lumen azul de esfera, agujas y bisel evoca las profundidades marinas donde
la luz natural casi ha desaparecido y solo prevalecen las tonalidades azuladas.

Con sus 56 mm de caja, el Scaphandre I no pasa desapercibido. Es un reloj que
hace una declaración: aquí hay un instrumento profesional, no un juguete de
salón.

#pagebreak()

///////////////////////////////////////////////////////////////////////////////
// 7) PRIMERA GRAN CONJUNTA 2021
///////////////////////////////////////////////////////////////////////////////
*PRIMERA GRAN CONJUNTA 2021*

Scaphandre I formó parte de
la Primera Gran Conjunta
HdR 2021, junto a
Goldmaster Black/Green y
Airliner GMT. Trío que
marcó época en el foro.

Solo 100 unidades. Se
convirtió en uno de los
griales más buscados de la
colección RSWC.

Inauguró la saga
Scaphandre. Las versiones
II y III continuarían
explorando el diver extremo.

Testamento a la pasión por
la relojería de buceo.

#pagebreak()

///////////////////////////////////////////////////////////////////////////////
// 8) CONTRAPORTADA
///////////////////////////////////////////////////////////////////////////////
#block({
  image("scaphandre_i_back.jpeg", width: 100%, height: 50%, fit: "cover")
})

#place(top + left, dx: 5mm, dy: 45mm, box(width: 100% - 10mm, text(black, size: 7pt)[
Primer capítulo de la saga submarina RSWC.  
Homenaje a Cousteau y los pioneros del buceo extremo.  
1200 metros de profundidad, acero y lumen azul en las tinieblas del abismo.
]))

#place(bottom + left, dx: 5mm, dy: -5mm, text(black, size: 7pt)[
_RSWC · Hablemos de Relojes_
])
