;;; Módulo principal do programa.
;; Veja:
;; <https://stackoverflow.com/questions/59006417/how-to-read-a-string-to-get-user-input-in-gnu-guile>.
;; Obrigado 9716278 <https://stackoverflow.com/users/9716278/9716278>
;; e Óscar López <https://stackoverflow.com/users/201359/%c3%93scar-l%c3%b3pez>.

(define-module (desafio-minicurso main)
  #:use-module (desafio-minicurso output)
  #:use-module (desafio-minicurso zig-zag))

(define (main)
  (println "Este programa gera uma sequência em zig-zag de caracteres.")

  (println "Escolha o número de linhas de saída:")
  (define numero-de-linhas (read))
  (newline)

  (println "Escolha o caractere:")
  ;; Input é interpretado como símbolo por prioridade, mas queremos uma
  ;; string para simplificar as coisas.
  (define caractere (symbol->string (read)))
  (newline)

  (println "Saída:")
  (zig-zag numero-de-linhas caractere))

(main)
