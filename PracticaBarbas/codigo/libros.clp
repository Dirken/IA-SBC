
;; Determinar la epoca preferida del usuario
;; Seleccionar una epoca hace que las puntuaciones 
;;---------------------------------------------
(defrule pregunta-epoca "Qué epoca te gusta mas? CF, Fantastica, romantica, negra"
  (declare (salience 5))
  ?t <- (epoca (nombre desconocida))
  =>
  (bind ?response
    (ask-question "¿Qué epoca estás buscando?%n  1 - Fantástica%n  2 - Ciencia ficción%n  3 - Novela romántica%n  4 - Novela negra"
                  1 2 3 4))
  (if (eq ?response 1) 
    then (modify ?t (nombre fantastica))
         (incrementa-prioridad-obras epoca fantastica 1000))
  (if (eq ?response 2) 
    then (modify ?t (nombre ciencia-ficcion))
         (incrementa-prioridad-obras epoca ciencia-ficcion 1000))
  (if (eq ?response 3) 
    then (modify ?t (nombre romantica))
         (incrementa-prioridad-obras epoca romantica 1000))
  (if (eq ?response 4) 
    then (modify ?t (nombre negra))
         (incrementa-prioridad-obras epoca negra 1000)))


;; Saltar al modulo edad
;;----------------------
(defrule fin-determina-epoca "Fin pregunta eleccion epoca"
  (declare (salience 0))
  =>
;;   (printout t "Fin pregunta epoca" crlf)
  (focus preguntas-edad))



;;---------------------------------------------------------------------------------
;;
;; Modulo pregunta edad
;;
;;---------------------------------------------------------------------------------

;; Definicion del modulo
;;----------------------
(defmodule preguntas-edad "Pregunta edad"
  (import determina-epoca ?ALL)
  (export ?ALL))


;; Edad?
;; El ser menor de edad implica que no podemos recomendar obras para lectores adultos
;;------------------------------------------------------------------------------------
(defrule pregunta-edad "Pregunta la edad del lector"
  (declare (salience 10))
  =>
  (bind ?edad (pregunta-numerica "¿Qué edad tienes?" 1 100))
  (if (< ?edad 18)
    then (assert (lector-menor si))
    else (assert (lector-menor no))))



;; Saltar al modulo preguntas especiales de epoca
;;--------------------------------------------------
(defrule fin-preguntas-edad "Fin pregunta edad"
  (declare (salience 0))
  =>
;;   (printout t "Fin pregunta edad" crlf)
  (focus preguntas-epoca))



;;---------------------------------------------------------------------------------
;;
;; Modulo pregunta edad
;;
;;---------------------------------------------------------------------------------

;; Definicion del modulo
;;----------------------
(defmodule preguntas-epoca "Preguntas específicas de cada epoca"
  (import preguntas-edad ?ALL)
  (export ?ALL))


;;---------------------------------------------------------------------------------
;;
;; Preguntas ciencia ficcion
;;
;;---------------------------------------------------------------------------------

(defrule pregunta-ciencia-ficcion-futuros-alternativos "Preguntas especiales para fans de ciencia ficcion - futuro alternativo"
  (declare (salience 1))
  (epoca (nombre ciencia-ficcion))
  =>
  (if (si-o-no-p "¿Te gustan las novelas de futuros alternativos? (s/n)")
    then (incrementa-prioridad-obras-epoca ciencia-ficcion futuro-alternativo si 1)
    else (incrementa-prioridad-obras-epoca ciencia-ficcion futuro-alternativo no 1)))


;; Determinar viajes en el tiempo
;;-------------------------------
(defrule pregunta-viajes-temporales
  (declare (salience 10))
  (epoca (nombre ciencia-ficcion))
  =>
  (if (si-o-no-p "¿Te gustan los viajes en el tiempo? (s/n)")
    then (incrementa-prioridad-obras-epoca ciencia-ficcion viajes-temporales si 1)
    else (incrementa-prioridad-obras-epoca ciencia-ficcion viajes-temporales no 1)))


;; Determinar utopia o distopia
;;-----------------------------
(defrule pregunta-utopia-distopia
  (declare (salience 10))
  (epoca (nombre ciencia-ficcion))
  =>
  (bind ?response (ask-question "¿Utopía o distopía?%n1 - Utopía%n2 - Distopía%n3 - Ninguna" 
                                1 2 3))
    (if (eq ?response 1) then (incrementa-prioridad-obras-epoca ciencia-ficcion utopia-distopia utopia 1))
    (if (eq ?response 2) then (incrementa-prioridad-obras-epoca ciencia-ficcion utopia-distopia distopia 1))
    (if (eq ?response 3) then (incrementa-prioridad-obras-epoca ciencia-ficcion utopia-distopia ninguna 1)))



;;---------------------------------------------------------------------------------
;;
;; Preguntas fantastica
;;
;;---------------------------------------------------------------------------------

;; Determinar mundos fantásticos
;;------------------------------
(defrule pregunta-mundos-fantasticos
  (declare (salience 10))
  (epoca (nombre fantastica))
  =>
  (if (si-o-no-p "¿Te gustan los mundos fantásticos? (s/n)")
    then (incrementa-prioridad-obras-epoca fantastica mundos-fantasticos si 1)))


;; Determinar raza preferida
;; enanos elfos orcos humanos otras
;;---------------------------------
(defrule pregunta-raza-preferida
  (declare (salience 10))
  (epoca (nombre fantastica))
  =>
  (bind ?response
    (ask-question "¿Cuál de estas razas prefieres?%n1 - Enanos%n2 - Elfos%n3 - Orcos%n4 - Humanos%n5 - Otras"
                  1 2 3 4 5))
    (if (eq ?response 1) then (incrementa-prioridad-obras-epoca fantastica raza enanos 1))
    (if (eq ?response 2) then (incrementa-prioridad-obras-epoca fantastica raza elfos 1))
    (if (eq ?response 3) then (incrementa-prioridad-obras-epoca fantastica raza orcos 1))
    (if (eq ?response 4) then (incrementa-prioridad-obras-epoca fantastica raza humanos 1))
    (if (eq ?response 5) then (incrementa-prioridad-obras-epoca fantastica raza otras 1)))



;;---------------------------------------------------------------------------------
;;
;; Preguntas romantica
;;
;;---------------------------------------------------------------------------------

;; Deterinar el tipo de romance
;; historico contemporaneo fantastico
;;-----------------------------------
(defrule pregunta-tipo-romance
  (declare (salience 10))
  (epoca (nombre romantica))
  =>
   (bind ?response
      (ask-question "¿Qué tipo de romance prefieres?%n1 - Histórico%n2 - Contemporáneo%n3 - Fantástico" 
                    1 2 3))
    (if (eq ?response 1) then (incrementa-prioridad-obras-epoca romantica tipo-romance historico 1))
    (if (eq ?response 2) then (incrementa-prioridad-obras-epoca romantica tipo-romance contemporaneo 1))
    (if (eq ?response 3) then (incrementa-prioridad-obras-epoca romantica tipo-romance fantastico 1)))


;; Determinar muy sensuales
;; Preguntar sólo si es mayor de edad
;;-----------------------------------
(defrule pregunta-muy-sensuales
  (declare (salience 10))
  (epoca (nombre romantica))
  (lector-menor no)
  =>
  (if (si-o-no-p "¿Te gustan las novelas románticas muy sensuales? (s/n)")
    then (incrementa-prioridad-obras-epoca romantica muy-sensual si 1)
    else (incrementa-prioridad-obras-epoca romantica muy-sensual no 1)))



;;---------------------------------------------------------------------------------
;;
;; Preguntas negra
;;
;;---------------------------------------------------------------------------------

;; Determinar accion
;;------------------
(defrule pregunta-accion
  (declare (salience 10))
  (epoca (nombre negra))
  =>
  (if (si-o-no-p "¿Te gusta que haya mucha acción? (s/n)")
    then (incrementa-prioridad-obras-epoca negra accion si 1)
    else (incrementa-prioridad-obras-epoca negra accion no 1)))


;; Determinar protagonistas
;; detectives mafiosos juzgados
;;-----------------------------
(defrule pregunta-protagonistas
   (declare (salience 10))
  (epoca (nombre negra))
   =>
   (bind ?response
      (ask-question "¿Qué tipo de historia prefieres?%n1 - Detectives%n2 - Mafiosos%n3 - Juzgados"
                    1 2 3))
    (if (eq ?response 1) then (incrementa-prioridad-obras-epoca negra protagonistas detectives 1))
    (if (eq ?response 2) then (incrementa-prioridad-obras-epoca negra protagonistas mafiosos 1))
    (if (eq ?response 3) then (incrementa-prioridad-obras-epoca negra protagonistas juzgados 1)))


;; Fin preguntas especificas epoca
;;-----------------------------------
(defrule fin-preguntas-epoca "Fin preguntas específicas de epoca"
  (declare (salience 0))
  =>
;;   (printout t "Fin preguntas epoca" crlf)
  (focus preguntas-tiempo-complejidad))



;;---------------------------------------------------------------------------------
;;
;; Modulo preguntas tiempo y complejidad
;; Aquí descubrimos cuánto puede leer el dia el usuario
;; y si las tramas que le gustan (o convienen) son complejas o no
;;
;;---------------------------------------------------------------------------------

(defmodule preguntas-tiempo-complejidad "Preguntas tiempo y complejidad"
  (import preguntas-epoca ?ALL)
  (export ?ALL))



;; Determinar tiempo de lectura
;;-----------------------------
(defrule pregunta-tiempo-lectura
  (declare (salience 10))
  (not (tiempo-lectura ?p))
  =>
  (if (si-o-no-p "¿Lees más de una hora al día? (s/n)")
    then (assert (tiempo-lectura si))
    else (assert (tiempo-lectura no))))


;; si leer >1h ^ difiicl de leer => obra.tipo-lector = avanzado
;; si leer <1h => obra.tipo-lector = casual
;; fácil de leer => obra.tipo-lector = casual

(defrule trata-tiempo-lectura
  (declare (salience 10))
  (tiempo-lectura no)
  =>
  (incrementa-prioridad-obras tipo-lector casual 1))


;; Determinar si le gustan los obras complejos
;;---------------------------------------------
(defrule pregunta-complejidad
  (declare (salience 10))
  (tiempo-lectura si)
  (not (complejidad ?p))
  =>
  (if (si-o-no-p "¿Te gustan las tramas complejas? (s/n)")
    then (assert (complejidad si))
    else (assert (complejidad no))))


(defrule trata-complejidad 
  (declare (salience 10))
  (tiempo-lectura si)
  (complejidad ?p)
  =>
  (if (eq ?p si)
    then (incrementa-prioridad-obras tipo-lector avanzado 1)
    else (incrementa-prioridad-obras tipo-lector casual 1)))


;; Fin preguntas tiempo complejidad
;;---------------------------------
(defrule fin-preguntas-tiempo-complejidad "Fin preguntas tiempo complejidad"
  (declare (salience 0))
  =>
;;   (printout t "Fin preguntas tiempo complejidad" crlf)
  (focus preguntas-formato-longitud))



;;---------------------------------------------------------------------------------
;;
;; Modulo preguntas formato y longitud
;; Aquí descubrimos qué formato de obra és el mejor para el usuario
;; además de la longitud más adecuada a sus hábitos y preferencias
;;
;;---------------------------------------------------------------------------------

(defmodule preguntas-formato-longitud "Preguntas formato y longitud"
  (import preguntas-tiempo-complejidad ?ALL)
  (export ?ALL))


;; Determinar donde lee Metro/Casa/Descanso del trabajo
;; Esto influye en el formato y la longitud del obra
;; si lee en transporte publico, tapa blanda, longitud obra indeterminada
;; si lee en casa, tapa dura, longitud obra indeterminada
;; si lee en el trabajo, tapa blanda, longitud obra corta
;;--------------------------------------------------------------------------------
(defrule determine-donde-leer
  (declare (salience 10))
  =>
  (bind ?response
    (ask-question "¿Dónde sueles leer?%n1 - Transporte público%n2 - Casa%n3 - Descansos del trabajo"
                  1 2 3))
    (if (eq ?response 1) then 
      (incrementa-prioridad-obras formato tapa-blanda 1)
      (assert (pregunta longitud)))
    (if (eq ?response 2) then 
      (incrementa-prioridad-obras formato tapa-dura 1)
      (assert (pregunta longitud)))
    (if (eq ?response 3) then 
      (incrementa-prioridad-obras formato tapa-blanda 1)
      (incrementa-prioridad-obras longitud corto 1)))


;; Si no estamos seguros de si prefiere obras largos o cortos, preguntar
;;-----------------------------------------------------------------------
(defrule pregunta-longitud
 (declare (salience 10))
 (pregunta longitud)
 =>
 (if (si-o-no-p "¿Prefieres los obras largos? (s/n)")
    then (incrementa-prioridad-obras longitud largo 1)
    else (incrementa-prioridad-obras longitud corto 1)))


;; Determinar si tiene ebook
;;--------------------------
(defrule pegunta-tiene-ebook
  (declare (salience 5))
  =>
  (if (si-o-no-p "¿Tienes ebook? (s/n)")
    then (incrementa-prioridad-obras formato ebook 1)))


;; Fin preguntas formato y longitud
;;---------------------------------
(defrule fin-preguntas-formato-longitud "Fin preguntas formato longitud"
  (declare (salience 0))
  =>
;;   (printout t "Fin preguntas formato longitud" crlf)
  (focus preguntas-ventas-categoria))



;;--------------------------------------------------------------------------------
;;
;; Modulo preguntas ventas y categoría
;; Con ventas buscamos saber si el usuario prefiere los bestsellers
;; Con categoría el usuario nos informa si le gustan las obras clásicas, o de moda
;; (o no le importa esta distinción)
;;
;;--------------------------------------------------------------------------------

(defmodule preguntas-ventas-categoria "Preguntas ventas categoria"
  (import preguntas-formato-longitud ?ALL)
  (export ?ALL))


;; Determinar best seller
;;-----------------------
(defrule pregunta-best-seller
  (declare (salience 10))
  =>
  (if (si-o-no-p "¿Te gustan los best-sellers? (s/n)")
    then (incrementa-prioridad-obras best-seller si 1)))



;; Determinar tipo de obra
;;-------------------------
(defrule pregunta-tipo-obra
  (declare (salience 10))
  =>
  (bind ?response
    (ask-question "¿Qué tipo de obra te gusta?%n1 - Clásico%n2 - De moda%n3 - Indiferente"
                  1 2 3))
  (if (eq ?response 1) then (incrementa-prioridad-obras tipo-obra clasico 1))
  (if (eq ?response 2) then (incrementa-prioridad-obras tipo-obra de-moda 1)))


;; Fin preguntas ventas y categoría
;;---------------------------------
(defrule fin-preguntas-ventas-categoria "Fin preguntas ventas categoria"
  (declare (salience 0))
  =>
;;   (printout t "Fin preguntas ventas categoria" crlf)
  (focus preguntas-autor-obra-favoritos))



;;--------------------------------------------------------------------------------
;;
;; Modulo preguntas autor y obra favoritos
;; Sabiendo su autor favorito podemos dar más peso a las recomendaciones de
;; obras de ese autor
;; Y a partir de su obra preferido, podemos dar más peso a las recomendaciones de
;; otros obras similares
;;
;;--------------------------------------------------------------------------------

(defmodule preguntas-autor-obra-favoritos "Preguntas ventas categoria"
  (import preguntas-ventas-categoria ?ALL)
  (export ?ALL))


;; Determinar el autor preferido
;; El peso del autor es un poco mayor
;;-----------------------------------
(defrule pregunta-tiene-autor-preferido
  (declare (salience 5))
  =>
  (if (si-o-no-p "¿Tienes un autor preferido? (s/n)")
    then (assert (pregunta autor))))

(defrule pregunta-autor-preferido
  (declare (salience 5))
  (pregunta autor)
  =>
  (printout t crlf "¿Quién es tu autor preferido?" crlf)
  (incrementa-prioridad-obras autor (readline) 3))


;; Determinar el obra preferido
;; El peso del obra es un poco mayor
;; Intentaremos recomendar obras similares al preferido
;;------------------------------------------------------
(defrule pregunta-tiene-obra-preferido
  (declare (salience 5))
  =>
  (if (si-o-no-p "¿Tienes un obra preferido? (s/n)")
    then (assert (pregunta obra))))

(defrule pregunta-obra-preferido
  (declare (salience 5))
  (pregunta obra)
  =>
  (printout t crlf "¿Cuál es tu obra preferido?" crlf)
  (incrementa-prioridad-obras-lista obras-similares (readline) 3))



;; Fin preguntas autor obra
;;--------------------------
(defrule fin-preguntas-autor-obra-favoritos "Pasa a imprimir las recomendaciones"
  (declare (salience 0))
  =>
;;   (printout t "Fin preguntas autor y obra favoritos" crlf)
;;   (printout t "Pasamos a imprimir las recomendaciones" crlf)
  (focus imprime-recomendaciones))



;;---------------------------------------------------------------------------------
;;
;; Modulo imprimir recomendaciones
;;
;;---------------------------------------------------------------------------------

(defmodule imprime-recomendaciones "Imprimir los 3 obras mejor recomendados"
  (import preguntas-autor-obra-favoritos ?ALL)
  (export ?ALL))


;; arranca estableciendo el hecho print-sorted
;;--------------------------------------------
(defrule print
  (declare (salience 10))
  =>
;;   (printout t "Imprime solucion" crlf)
  (printout t crlf "Libros recomendados" crlf "-------------------" crlf)
  (assert (print-sorted)))


;; marca todo obra como unprinted (si es apropiado para la edad del lector)
;; más tarde imprimiremos los obras de las recomendaciones unprinted con mayor prioridad
;;------------------------------------------------------------------------------------
(defrule assert-unprinted "Asserts each item that needs to be printed."
  (declare (salience 10))
  (print-sorted)
  (lector-menor ?u)
  (recomendacion (obra ?l))
  =>
  ;; no permitir que a los menores les llegue una recomendacion de un obra para adultos
  ;; edad (todos-publicos adulto)
  (if (or (eq ?u no) 
          (eq (send ?l get-edad) todos-publicos))
    then (assert (unprinted ?l))))


;; elimina el hecho print-sorted para iniciar la salida
;;-----------------------------------------------------
(defrule retract-print-sorted "Retract print-sorted after all items enumerated."
  (declare (salience 0))
  ?f <- (print-sorted)
  =>
  (retract ?f))

;; Imrimirá los 3 obras mejor recomendados
;;-----------------------------------------
(defrule print-greatest "Prints the unprinted item with the greatest prioridad."
  (declare (salience 0))
  (not (print-sorted))
  ?u <- (unprinted ?obra)
  (recomendacion (obra ?obra) (prioridad ?prioridad))                                               ;; la recom. que corresponde al obra
  (forall (and (unprinted ?l) (recomendacion (obra ?l) (prioridad ?r))) (test (<= ?r ?prioridad)))   ;; tiene prioridad mayor que las restantes
  =>
  (retract ?u)                                                                                  ;; desmarcar obra como unprinted
  (if (> 3 ?*recomendacionesImprimidas*) then                                                   ;; imprime si todavia no llevamos 3
    ;; imprimir bien el obra
    (printout t "#" (+ 1 ?*recomendacionesImprimidas*) " - " (send ?obra get-titulo) ", de " (send ?obra get-autor)
;;  " tiene puntuacion = " ?prioridad crlf))
      crlf))
  (bind ?*recomendacionesImprimidas* (+ 1 ?*recomendacionesImprimidas*)))                       ;; ++ el contador de obras impresos
  




