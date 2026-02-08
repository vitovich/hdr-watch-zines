#import "../../src/lib.typ": watch_zine

#set document(author: "HdR", title: "RSWC Grande Épreuve")
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
  image("grande_epreuve_front.jpeg", width: 100%, height: 100%, fit: "cover")
  place(top + center, dy: 3mm, box(
    fill: rgb(0, 0, 0, 150),
    inset: 8pt,
    radius: 4pt,
    text(white, stroke: 0.5pt + black)[
      #text(size: 12pt)[*RSWC*]\ 
      #text(size: 10pt)[*Grande Épreuve*]
    ]
  ))
})#pagebreak()

*ESPECIFICACIONES TÉCNICAS*
- Caja en acero inoxidable 316L
- Diámetro: 40mm, espesor: 13.5mm
- Corona roscada
- Resistencia: 100 metros
- Movimiento cronógrafo Seagull ST1901
- 21 rubíes, cuerda manual
- Reserva de marcha: 42 horas
- Cristal de zafiro con AR interno
- Fondo trasero exhibition
- Bisel taquimétrico
- Correa de piel de cocodrilo
- Ancho de asas: 20mm
- Disponible en dial blanco (panda) y negro (reverse panda)
#pagebreak()

*LA GRAN PRUEBA*

El proyecto Grande Épreuve ("Gran Prueba") nació en 2022 
como homenaje al automovilismo clásico. Su diseño evoca 
los cronógrafos de pilotos de los años 1960-70, cuando 
hombres y máquinas se enfrentaban en las grandes pruebas.

El nombre rinde tributo a las legendarias carreras: Le Mans, 
Mille Miglia, Targa Florio. Eventos donde la precisión del 
cronometraje era tan crucial como el coraje de los pilotos.

Este cronógrafo captura la esencia de aquella época dorada, 
cuando los relojes eran herramientas esenciales en el circuito.
#pagebreak()

*DISEÑO CLÁSICO*

El Grande Épreuve presenta un diseño limpio y funcional inspirado 
en cronógrafos automovilísticos vintage. La esfera de dos 
contadores muestra su herencia racing con claridad y elegancia.

El bisel taquimétrico permite calcular velocidades hasta 
400 km/h. Los sub-diales a las 3 y 9 registran minutos y 
segundos pequeños respectivamente, con fecha a las 6.

La caja de 40mm ofrece proporciones perfectas. Las asas cortas 
y el perfil alto de 13.5mm recuerdan a los cronógrafos clásicos 
de cuerda manual, antes de que la miniaturización dominara 
el diseño relojero.
#pagebreak()

*MOVIMIENTO ST1901*

En el corazón late el Seagull ST1901, versión china del 
legendario Venus 175. Este calibre de cuerda manual con 
disposición en columna ofrece cronometraje preciso y durabilidad 
probada en millones de relojes.

El fondo exhibition permite admirar el movimiento: la rueda 
de pilares cromada, los puentes decorados, el volante oscilante. 
Cada componente del ST1901 puede ser observado en acción a 
través del cristal de zafiro.

Con 21 rubíes y 42 horas de reserva, este movimiento combina 
tradición relojera con fiabilidad moderna, ideal para uso diario.
#pagebreak()

*VERSATILIDAD Y ESTILO*

El Grande Épreuve se produjo en dos versiones. El dial blanco 
panda proyecta elegancia deportiva, perfecto para traje y 
ocasiones formales. El dial negro reverse panda ofrece estética 
racing más agresiva, ideal para uso casual.

Ambas versiones comparten la misma calidad de construcción. 
Los sub-diales contrastantes mejoran la legibilidad y aportan 
carácter deportivo clásico.

Las correas de piel aportan lujo tradicional. El ancho de 20mm 
permite infinitas opciones: NATO, rally, caucho. Cada correa 
transforma el carácter del reloj.
#pagebreak()

*INSTRUCCIONES DE USO*

*CARGA:* Gire la corona en sentido horario 30-40 veces 
hasta sentir resistencia. No fuerce.

*HORA:* Tire corona a posición 2, ajuste hora y minutos. 
Empuje y enrosque.

*CRONÓGRAFO:* Pulsador superior inicia/detiene. Inferior 
pone a cero (solo con cronógrafo detenido).

*FECHA:* Tire corona a posición 1 y ajuste. No ajuste entre 
21:00 y 03:00.

*RESISTENCIA:* 100m (10 ATM). Apto para natación. No buceo.

*MANTENIMIENTO:* Revise cada 3-5 años. Limpie con paño suave. 
Evite campos magnéticos y golpes.
#pagebreak()

// back cover
#block({
  image("grande_epreuve_back.jpeg", width: 100%, height: 50%, fit: "cover")
})

#place(top + left, dx: 5mm, dy: 45mm, box(width: 100% - 10mm, text(black, size: 7pt)[
La trasera roscada en acero 316L presenta un grabado 
detallado de dos coches de carreras clásicos de principios del siglo XX. 
Este relieve artístico ocupa toda la tapa, combinando 
personalidad histórica con la estanqueidad de 100m.
]))

#place(bottom + left, dx: 5mm, dy: -5mm, text(black, size: 7pt)[
_RSWC · Hablemos de Relojes_
])

