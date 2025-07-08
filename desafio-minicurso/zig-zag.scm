;;; Módulo contendo o programa de zig-zag.
;; Opcionalmente, "zig" ou "zag" podem ser utilizados à sós.

(define-module (desafio-minicurso zig-zag)
  #:use-module (desafio-minicurso output)
  #:export (zig
            zag
            zig-zag))

;; Printa uma sequência crescente de espaços seguidos caracteres CARACTERE.
;; INICIAL define o ponto de partida dessa sequência, enquanto NUMERO-DE-LINHAS
;; o ponto final inclusivo.
(define (zig inicial numero-de-linhas caractere)
  (unless (eq? inicial numero-de-linhas)
    (println (espaco-seguido-de-caractere inicial caractere))
    (zig (+ inicial 1) numero-de-linhas caractere)))

;; Printa uma sequência decrescente de espaços seguidos por caracteres CARACTERE.
;; NUMERO-DE-LINHAS define o total de linhas a serem exibidas.
;; Não precisa de um valor inicial, já que é possível utilizar o
;; número de linhas como base para alcançar o zero.
(define (zag numero-de-linhas caractere)
  (unless (eq? numero-de-linhas 0)
    ;; Tem que ser menor, se não o espaçamento fica igual o do maior.
    (println (espaco-seguido-de-caractere (- numero-de-linhas 1) caractere))
    (zag (- numero-de-linhas 1) caractere)))

;; Printa uma "escadinha" de caracteres CARACTERE, sendo NUMERO-DE-LINHAS o "pico"
;; da escadinha.
(define (zig-zag numero-de-linhas caractere)
  (cond ((not (integer? numero-de-linhas))
         ;; Mensagem de erro quando o input não é um número.
         (println "Valor inexperado, use um número inteiro"))
        ((< numero-de-linhas 1)
         ;; Implementar números negativos mudaria muita coisa.
         (println "Números negativos ainda não são suportados"))
        ((eq? numero-de-linhas 0)
         ;; Linha vazia quando é zero.
         (newline))
        ((eq? numero-de-linhas 1)
         ;; Só o caractere quando é 1.
         (println caractere))
        (else
         ;; De resto, é procedimento normal.
         (zig 0 numero-de-linhas caractere)
         (zag (- numero-de-linhas 1) caractere))))
