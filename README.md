# Desafio

Faça um programa que vai ler um numero do usuario, esse numero será o numero de linhas da saida

A saida será uma sequencia em zig zag de caracteres, onde ele vai pra direita 5 vezes, depois pra esquerda até o começo, e repetir. Por exemplo, suponha entrada 10, a saida seria

```
#
 #
  #
   #
    #
   #
  #
 #
#
```

Isso se repetirá infinitamente (teoricamente), pode usar o caracter que quiser e a linguagem que quiser

# Como participar

Basta criar um fork desse repositório e modificar seu proprio repositório. Dessa forma poderemos acompanhar vocês

# Como rodar

1. Baixe o executável da [versão mais recente](https://github.com/gbr-ufs/desafio-minicurso/releases/latest).
2. O dê permissões de executável: `chmod +x zig-zag`.
3. Execute o programa.
4. Aproveite!

# Compilação

1. Instale [Guile Scheme](https://www.gnu.org/s/guile/).
2. Execute o seguinte comando no terminal, dentro deste diretório.
```
guild compile -L . --output=zig-zag desafio-minicurso/main.scm
```

> [!NOTE]
> Para usuários do Fedora: o executável chama-se `guild3.0`, não somente `guild`!
> (Isso somente se aplica se você baixou a versão `3.0`)
