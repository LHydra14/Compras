Algoritmo "Compras"
Var
   nome: caractere
   pagamento, parcelas: Inteiro
   valor, valorN, desconto, valorP: Real
Inicio
//Estrutura de escolha da forma de pagamento//
      Escreval("Qual seu nome?")
      Leia(nome)
      Escreval("---------------------------------------------")
      Escreval("Qual será a forma de pagamento?")
      Escreval("          [1] À VISTA          ")
      Escreval("          [2] CARTÃO DE CRÉDITO")
      Escreval("          [3] PARCELADO (ATÉ 12X)")
      Escreval("---------------------------------------------")
      Leia(pagamento)
      Escreval("Qual o valor da sua compra?")
      Leia(valor)
//Estrutura de condições em relação ao valor da compra//
      Se (pagamento = 1) e (valor > 500) entao
         valorN <- (valor - (valor * 15) / 100)
         desconto <- (valor - valorN)
         Escreval("---------------------------------------------------------")
         Escreval("Ok, a forma de pagamento será à vista")
         Escreval("Você recebeu um desconto de 15%")
         Escreval(nome, ", o valor da sua compra é: R$", valor)
         Escreval("Mas com o desconto de 15%, o valor ficou: R$", valorN:5:2)
         Escreval("Uma diferença de: R$", desconto:5:2)
         Escreval("---------------------------------------------------------")
      senao
         Se (pagamento = 1) e (valor <= 500) entao
            valorN <- (valor - (valor * 10) / 100)
            desconto <- (valor - valorN)
            Escreval("------------------------------------------------------")
            Escreval("Ok, a forma de pagamento será à vista")
            Escreval("Você recebeu um desconto de 10%")
            Escreval(nome, ", o valor da sua compra é: R$", valor)
            Escreval("Mas com o desconto de 10%, o valor ficou: R$", valorN:5:2)
            Escreval("Uma diferença de: R$", desconto:5:2)
            Escreval("------------------------------------------------------")
         senao
            Se (pagamento = 2) e (valor  > 1000) entao
               valorN <- (valor - (valor * 5) / 100)
               desconto <- (valor - valorN)
               Escreval("---------------------------------------------------")
               Escreval("Ok, a forma de pagamento será no cartao de crédito")
               Escreval("Você recebeu um desconto de 5%")
               Escreval(nome, ", o valor da sua compra é: R$", valor)
               Escreval("Mas com o desconto de 5%, o valor ficou: R$", valorN:5:2)
               Escreval("Uma diferença de: R$", desconto:5:2)
               Escreval("---------------------------------------------------")
            senao
               Se (pagamento = 2) e (valor <= 1000) entao
                  Escreval("------------------------------------------------")
                  Escreval("Ok, a forma de pagamento será no cartao de crédito")
                  Escreval("Você não recebeu nenhum desconto!")
                  Escreval(nome, ", o valor da sua compra é: R$", valor)
                  Escreval("Como não tem nenhum desconto, o valor ficou: R$", valor)
                  Escreval("------------------------------------------------")
               senao
                     Escreval("---------------------------------------------")
                     Escreval("Ok, a forma de pagamento será parcelada")
                     Escreval("Quantas parcelas você gostaria?")
                     Escreval("---------------------------------------------")
                     Leia(parcelas)
               FimSe
            FimSe
         FimSe
      FimSe
//Estrutura de condições para diferentes parcelamentos//
               Se (parcelas >= 1) e (parcelas <= 3) entao
                  Escreval("------------------------------------------------")
                  Escreval("Você não irá pagar nenhum juros!")
                  valorP <- (valor / parcelas)
                  Escreval("Você irá pagar o valor de: R$", valorP:5:2, " em ", parcelas, " vezes.")
                  Escreval("------------------------------------------------")
               Senao
                    Se (parcelas >= 4) e (parcelas <= 6) entao
                        Escreval("Você teve um acréscimo de 5%")
                        valorP <- ((valor + (valor * 5) / 100) / parcelas)
                        Escreval("Você irá pagar o valor de: R$", valorP:5:2, " em ", parcelas, " vezes.")
                    senao
                         Se (parcelas > 6) e (parcelas <= 12) entao
                           Escreval("você teve um acréscimo de 12%")
                           valorP <- ((valor + (valor * 12) / 100) / parcelas)
                           Escreval("Você irá pagar o valor de: R$", valorP:5:2, " em ", parcelas, " vezes.")
                         senao
                              Se (parcelas > 12) entao
                                 Escreval("Só é possível parcelar em até 12 vezes")
                              FimSe
                         FimSe
                    FimSe
               FimSe
//Caso o valor da parcela fique abaixo de R$50 a operação deve ser cancelada//
               Enquanto (valorP < 50) e (parcelas < 12) faca
                        Escreval("------------------------------------------")
                        Escreval("TRANSAÇÃO CANCELADA, o valor da parcela ficou abaixo de R$50")
                        Escreval("Qual o novo parcelamento")
                        Leia(parcelas)
                        Se (parcelas >= 1) e (parcelas <= 3) entao
                           valorP <- (valor / parcelas)
                        senao
                             Se (parcelas >= 4) e (parcelas <= 6) entao
                                valorP <- ((valor + (valor * 5) / 100) / parcelas)
                             senao
                                  Se (parcelas > 6) e (parcelas <= 12) entao
                                     valorP <- ((valor + (valor * 12) / 100) / parcelas)
                                  senao
                                       Escreval("SUA COMPRA FOI REALIZADA!")
                                  FimSe
                             FimSe
                        FimSe
               FimEnquanto

FimAlgoritmo