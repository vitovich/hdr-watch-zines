#import "../../src/lib.typ": watch_zine

#set document(
  author: "HdR · RSWC",
  title: "RSWC Eagle Two · Batalla de Inglaterra"
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
  image("eagle_two_front.jpeg", width: 100%, height: 100%, fit: "cover")
  place(top + center, dy: 3mm, box(
    fill: rgb(0, 0, 0, 150),
    inset: 8pt,
    radius: 4pt,
    text(white, stroke: 0.5pt + black)[
      #text(size: 12pt)[*RSWC*]\ 
      #text(size: 10pt)[*Eagle Two*]
    ]
  ))
})#pagebreak()

///////////////////////////////////////////////////////////////////////////////
// 2) ESPECIFICACIONES TÉCNICAS
///////////////////////////////////////////////////////////////////////////////
*ESPECIFICACIONES TÉCNICAS*

- Modelo: RSWC Eagle Two Chronograph Limited Edition
- Diámetro: 42 mm
- Grosor: 11,5 mm
- Lug to lug: 51 mm
- Material: acero quirúrgico 316L
- Cristal: zafiro con revestimiento AR interno
- Fondo: cristal de zafiro transparente
- Movimiento: Seagull ST19 manual cronógrafo con regulación cuello de cisne
- Esfera: negra
- Luminoso: Superluminova C3 verde
- Corona: firmada
- Hermeticidad: 50 m
- Correa: piel marrón 22 mm
- Hebilla: firmada
- Edición limitada: 50 unidades

#pagebreak()

///////////////////////////////////////////////////////////////////////////////
// 3) LA BATALLA DE INGLATERRA
///////////////////////////////////////////////////////////////////////////////
*LA BATALLA DE INGLATERRA*

Junio de 1940. La Luftwaffe de Hermann Göring concentra 3.600 aeronaves de combate 
listas para atacar Gran Bretaña. Su objetivo: eliminar la Royal Air Force para 
invadir la isla.

Churchill rechaza toda rendición: "Jamás nos rendiremos a los nazis."

El 18 de junio pronuncia su célebre discurso: "La Batalla de Francia ha terminado. 
La Batalla de Inglaterra está a punto de empezar."

Göring convence a Hitler de que en días Inglaterra caería. 
La Luftwaffe destruiría los aeródromos británicos para asegurar la supremacía aérea.

#pagebreak()

///////////////////////////////////////////////////////////////////////////////
// 4) LAS FUERZAS EN COMBATE
///////////////////////////////////////////////////////////////////////////////
*ÁGUILAS SOBRE EL CANAL*

*Luftwaffe:* Messerschmitt Bf 109, el caza más producido de la guerra (33.984 unidades). 
Bombarderos Heinkel He 111 y Junkers Ju 88. Los BF 110 "destructores del aire".

*RAF:* Supermarine Spitfire, extremadamente maniobrable y rápido. 
Hawker Hurricane, responsable del 60% de las victorias británicas.

El 15 de agosto de 1940, Göring ataca con 1.000 bombarderos y 700 cazas. 
Los pilotos alemanes vuelven sorprendidos: siempre encontraban Spitfires esperándoles.

El secreto británico: radar y centros de mando eficientes que coordinaban 
defensas exactas contra cada oleada.

#pagebreak()

///////////////////////////////////////////////////////////////////////////////
// 5) EL ERROR QUE CAMBIÓ LA HISTORIA
///////////////////////////////////////////////////////////////////////////////
*LA RABIETA DE HITLER*

La RAF está perdiendo. Sin pilotos, incorporan polacos y otras nacionalidades. 
El escuadrón polaco 303 derribó 126 aparatos alemanes: el mejor de la batalla.

Entonces ocurre lo inesperado. 

24-25 agosto 1940: bombarderos alemanes atacan Londres por error, 
contra órdenes de Hitler.

Churchill ordena bombardear Berlín en respuesta. Hitler, enfurecido al ver 
a los berlineses correr a refugios, cambia de estrategia.

Fatal error: deja de atacar aeródromos para bombardear ciudades. 
Operación Blitz: 40.000 civiles muertos, pero la RAF se recupera.

#pagebreak()

///////////////////////////////////////////////////////////////////////////////
// 6) VICTORIA BRITÁNICA
///////////////////////////////////////////////////////////////////////////////
*"NUNCA TANTOS DEBIERON TANTO A TAN POCOS"*

La Luftwaffe pierde 2.265 aviones. La RAF, aunque en inferioridad, 
reconstruye sus bases. Las fábricas británicas producen más Spitfires.

Hitler ve truncado su plan de invasión. Decide mirar hacia el este: 
la Unión Soviética. Repite el error que él mismo advirtió en Mein Kampf: 
nunca abrir dos frentes.

La Batalla de Inglaterra fue la primera gran derrota de la Wehrmacht. 
Churchill tenía razón: Gran Bretaña jamás se rindió.

Winston Churchill, 20 agosto 1940: "Nunca en el campo de los conflictos humanos 
tantos debieron tanto a tan pocos."

#pagebreak()

///////////////////////////////////////////////////////////////////////////////
// 7) INSTRUCCIONES DE USO
///////////////////////////////////////////////////////////////////////////////
*INSTRUCCIONES DE USO*

*Carga:* Manual, 20-30 vueltas. 
ST19 tiene aprox. 42h de reserva.

*Corona:* Posición 0 (normal y carga), 1 (ajuste hora).

*Cronógrafo:* Pulsador superior (start/stop). 
Pulsador inferior (reset, solo con cronógrafo detenido).

*Cuello de cisne:* Regulación de precisión visible 
por fondo de zafiro. Ajuste profesional recomendado.

*Resistencia:* 50m. Apto para lluvia, 
no para ducha ni inmersión.

*Mantenimiento:* Cronógrafos requieren servicio cada 3-4 años.

#pagebreak()

///////////////////////////////////////////////////////////////////////////////
// 8) CONTRAPORTADA
///////////////////////////////////////////////////////////////////////////////

#image("eagle_two_back.jpeg", width: 100%, height: 50%, fit: "cover")

#place(top + left, dx: 5mm, dy: 45mm, box(width: 100% - 10mm, text(black, size: 7pt)[
*RSWC Eagle Two Chronograph*  

Seagull ST19 con regulación cuello de cisne. 
Fondo de zafiro transparente.  
Homenaje a la Batalla de Inglaterra 1940.
]))

#place(bottom + left, dx: 5mm, dy: -5mm, text(black, size: 7pt)[
_RSWC · Hablemos de Relojes_
])
