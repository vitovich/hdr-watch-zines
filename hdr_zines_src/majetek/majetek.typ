#import "../../src/lib.typ": watch_zine

#set document(author: "HdR", title: "RSWC Majetek")
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
  image("majetek_front.jpeg", width: 100%, height: 100%, fit: "cover")
  place(top + center, dy: 3mm, box(
    fill: rgb(0, 0, 0, 150),
    inset: 8pt,
    radius: 4pt,
    text(white, stroke: 0.5pt + black)[
      #text(size: 12pt)[*RSWC*]\ 
      #text(size: 10pt)[*Majetek*]
    ]
  ))
})#pagebreak()

*ESPECIFICACIONES TÉCNICAS*

- Caja de acero 316L, 40mm de diámetro.
- Corona roscada con grabado RSWC.
- Movimiento automático Seagull ST17.
- Cristal de zafiro con tratamiento AR.
- Resistencia al agua: 100 metros.
- Correa de cuero marrón (22mm).
- Hebilla de acero grabada RSWC.
- Dos variantes: Piloto Checo (C3 verde) y Escuadrón 312 (BGW9 azul).
- Edición limitada: 50 unidades de cada variante.
- Fabricación ASTAR.
#pagebreak()

*EL AIRE ES NUESTRO MAR*

La Fuerza Aérea Checoslovaca nació en los años 20 como una de las fuerzas aéreas más pequeñas pero mejor equipadas de Europa.

Checoslovaquia se convirtió en centro de innovación aeronáutica. Empresas como Avia, Letov y Aero fabricaron aviones legendarios: el Avia B-534, caza biplano de excepcional maniobrabilidad.

En 1939 llegó la ocupación alemana. Muchos pilotos escaparon al exilio para continuar la lucha. Se unieron a la RAF británica formando escuadrones checoslovacos: 310, 311, 312 y 313.
#pagebreak()

*BATALLA DE INGLATERRA*

Los pilotos checoslovacos demostraron valor excepcional en la defensa del Reino Unido contra la Luftwaffe en 1940.

El Escuadrón 312 se formó el 29 de junio de 1941 en Duxford. Pilotaban Hurricane y Spitfire, distinguiéndose por su agresividad y destreza en combate.

Josef František logró más de 17 derribos confirmados. Karel Kuttelwascher consiguió 18 victorias en misiones nocturnas con el Mosquito.

Su contribución fue fundamental para la victoria aliada.
#pagebreak()

*RELOJ MAJETEK*

Longines desarrolló el "Majetek" (propiedad en checo) para la Fuerza Aérea Checoslovaca en los años 30.

Caja de acero de 40mm, corona grande estriada para usar con guantes, esfera ultra-legible con números arábigos grandes y agujas luminosas.

Se convirtió en el reloj estándar de pilotos y oficiales. También Lemania y Eterna fabricaron relojes para esta fuerza aérea.

Los pilotos apreciaban su precisión, durabilidad y legibilidad. Una herramienta esencial para la navegación aérea.
#pagebreak()

*PILOTO CHECO Y ESCUADRÓN 312*

Dos versiones que rinden homenaje a estos héroes del aire:

*Piloto Checo:* Dial negro con leyendas en checo. Lumen C3 verde. A las 6h referencia a las Fuerzas Aéreas checoslovacas. Trasera grabada con emblema de la época.

*Escuadrón 312:* Dial granate con leyendas en inglés. Lumen BGW9 azul. León alado en subesfera. Homenaje al escuadrón checoslovaco más condecorado de la RAF.

Ambos con corona y hebilla grabadas RSWC.
#pagebreak()

*INSTRUCCIONES DE USO*

*Carga:* Movimiento automático. Dar cuerda manual o usar diariamente.

*Corona:* Roscada. Posición normal (roscada), posición 1 (ajuste hora). Atornillar tras ajuste.

*Resistencia:* 100m. No sumergir en agua. Verificar estanqueidad anualmente.

*Correa:* Cuero marrón con hebilla grabada RSWC. Ancho 22mm.

*Mantenimiento:* Servicio cada 3-5 años. Lubricación del movimiento.

*Cuidado:* Evitar golpes y campos magnéticos. Limpiar con paño suave.

*Lumen:* C3 verde (Piloto Checo) o BGW9 azul (Escuadrón 312).
#pagebreak()

// back cover
#block({
  image("majetek_back.jpeg", width: 100%, height: 50%, fit: "cover")
})

#place(top + left, dx: 5mm, dy: 45mm, box(width: 100% - 10mm, text(black, size: 7pt)[
Edición limitada de 50 unidades de cada versión. Movimiento Seagull ST17, caja de 40mm en acero 316L, corona y hebilla grabadas RSWC.
]))

#place(bottom + left, dx: 5mm, dy: -5mm, text(black, size: 7pt)[
_RSWC · Hablemos de Relojes_
])
