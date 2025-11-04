Algoritmo "Compras"
Var
   nome, forma_de_pagamento: caractere
   valor_parcela, parcelas, valor, desconto, diferenca, valor2, valor3, diferenca2, difereca3, desconto2, desconto3: Real
Inicio

//Estrutura de escolha da forma de pagamento//
      Escreval("Qual seu nome?")
      Leia(nome)
      Escreval("-------------------------------------------")
      Escreval("Qual será a forma de pagamento?")
      Escreval("          [1] À VISTA          ")
      Escreval("          [2] CARTÃO DE CRÉDITO")
      Escreval("          [3] PARCELADO (MAIS DE 1 PARCELA)")
      Escreval("-------------------------------------------")
      Leia(forma_de_pagamento)
      Escreval("Ok, a forma de pagamento será ", forma_de_pagamento)
//Estrutura de escolha da forma de pagamento//

//Estrutura da leitura de valores//
      Escreval("Qual o valor da sua compra?")
      Se (forma_de_pagamento = 1) entao
         Leia(valor)
      Senao
           Se (forma_de_pagamento = 2) entao
              Leia(valor2)
           Senao
                Se (forma_de_pagamento = 3) entao
                   Leia(valor3)
                Senao
                     Escreval("O número que você inseriu não corresponde a nenhuma forma de pagamento")
                FimSe
           FimSe
      FimSe
      
//Estrutura da leitura de valores//

//Estrutura condicional refente ao valor da compra à vista//
      Se (forma_de_pagamento = 1) e (valor > 500) entao
         diferenca <- (valor * 15) / 100
         Escreval("------------------------------------------------------")
         Escreval("Você recebeu um desconto de 15%!")
         Escreval(nome, ", o valor da sua compra é: R$", valor)
         desconto <- (valor - diferenca)
         Escreval("Mas com o desconto de 15%, o valor ficou: R$", desconto)
         Escreval("Uma diferença de: R$", diferenca:9:2)
         Escreval("------------------------------------------------------")
      Senao
           Se (forma_de_pagamento = 1) e (valor <= 500) entao
           diferenca <- (valor * 10) / 100
           Escreval("------------------------------------------------------")
           Escreval("Você recebeu um desconto de 10%!")
           Escreval(nome, ", o valor da sua compra é: R$", valor)
           desconto <- (valor - diferenca)
           Escreval("Mas com o desconto de 10%, o valor ficou: R$", desconto)
           Escreval("Uma diferença de: R$", diferenca:9:2)
           Escreval("------------------------------------------------------")
           FimSe
      FimSe
//Estrutura condicional refente ao valor da compra à vista//

//Estrutura condicional refente ao valor da compra no cartão de crédito//
            Se (forma_de_pagamento = 2) e (valor > 1000) entao
               diferenca2 <- (valor2 * 5) / 100
               Escreval("------------------------------------------------------")
               Escreval("Você recebeu um desconto de 5%!")
               Escreval(nome, ", o valor da sua compra é: R$", valor2)
               desconto2 <- (valor2 - diferenca2)
               Escreval("Mas com o desconto de 5%, o valor ficou: R$", desconto2)
               Escreval("Uma diferença de: R$", diferenca2:9:2)
               Escreval("------------------------------------------------------")
            Senao
                 Se (forma_de_pagamento = 2) e (valor <= 1000) entao
                 Escreval("------------------------------------------------------")
                 Escreval("Você não recebeu nenhum desconto!")
                 Escreval(nome, ", o valor da sua compra é: R$", valor2)
                 Escreval("Como não tem desconto, o valor ficou: R$", valor2)
                 Escreval("------------------------------------------------------")
            FimSe
//Estrutura condicional refente ao valor da compra no cartão de crédito//


            Se (forma_de_pagamento = 3) entao
               Escreval("------------------------------------------------------")
               Escreval("Quantas parcelas você gostaria?")
               Leia(parcelas)
               
               
 //Estrutura condicional referente ao valor da compra de forma parcelada em até 3 vezes//
               Se (parcelas <= 3) entao
                  Escreval("Você não irá pagar nenhum juros!")
                  valor_parcela <- (valor3 / parcelas)
                  Escreval("Você irá pagar o valor de: R$", valor_parcela, " em ", parcelas, " vezes.")
               Senao
                    Se (valor_parcela < 50) entao
                       Escreval("A parcela não pode ficar menor que R$50, escolha outro número de parcelas")
                       Leia(parcelas)
                    FimSe
               Fimse

            FimSe
//Estrutura condicional referente ao valor da compra de forma parcelada em até 3 vezes//

//Estrutura condicional referente ao valor da compra de forma parcelada entre 4 e 6 vezes//
            Se (parcelas >= 4) e (parcelas <= 6) entao
               Escreval("Você teve um acréscimo de 5%")
               diferenca3 <- (valor3 * 5) / 100
               valor_parcela <- ((diferenca3 + valor) / parcelas)
               Escreval("Você irá pagar o valor de: R$", valor_parcela, " em ", parcelas, " vezes.")
            Senao
                 Se (valor_parcela < 50) entao
                    Escreval("A parcela não pode ficar menor que R$50, escolha outro número de parcelas")
                    Leia(parcelas)
                 FimSe
            FimSe

//Estrutura condicional referente ao valor da compra de forma parcelada entre 4 e 6 vezes//

//Estrutura condicional referente ao valor da compra de forma parcelada mais de 6 vezes//
            Se (parcelas > 6) entao
               Escreval("Você teve um acréscimo de 12%")
               diferenca3 <- (valor3 * 12) / 100
               valor_parcela <- ((diferenca3 + valor) / parcelas)
               Escreval("Você irá pagar o valor de: R$", valor_parcela, " em ", parcelas, " vezes.")
            Senao
                 Se (valor_parcela <50) entao
                    Escreval("A parcela não pode ficar menor que R$50, escolha outro número de parcelas")
                    Leia (Parcelas)
                 FimSe
            FimSe
//Estrutura condicional referente ao valor da compra de forma parcelada mais de 6 vezes//
FimAlgoritmo