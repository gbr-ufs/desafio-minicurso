;;; Módulo para funções relacionadas à saída de terminal.

(define-module (desafio-minicurso output)
  #:export (println
            espaco-seguido-de-caractere))

;; Printa TEXTO, com uma quebra de linha no final.
(define (println texto)
  (display texto)
  (newline))

;; Retorna uma string com ESPACOS número de espaços, tendo CARACTERE como
;; elemento final.
(define (espaco-seguido-de-caractere espacos caractere)
  (string-append (make-string espacos #\space) caractere))
