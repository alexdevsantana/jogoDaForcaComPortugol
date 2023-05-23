programa
{
		inclua biblioteca Tipos--> t
		inclua biblioteca Util--> u
		inclua biblioteca Texto--> txt
   
		inteiro erros = 6
	
	funcao inicio()
	{
		cadeia tratamento_letra, palavra_secreta, v_sorteio_palavra[20] = {"LHAMA", "DESFIBRILADOR", "GROSELHA", "WEBCAM", "VUVUZELA", "NEBULIZADOR", "NARGUILE", "SANGUESSUGA", "ROUXINOL", "DROMEDARIO", "TURISMOLOGO", "QUIROPRATA", "ROTEIRIZADOR", "NANOTECNOLOGO", "ENDOCRINOLOGISTA", "CERIMONIALISTA", "TRIPLEX", "PSIQUIANALISTA", "QUARTZO", "BLITZ"} 		
		logico acertou = falso, letra_repetida = falso
		
			  palavra_secreta = v_sorteio_palavra[u.sorteia(0, 19)]		//sorteiro de palavras armazenadas no vetor
			
		inteiro tamanho_palavra = txt.numero_caracteres(palavra_secreta), acertos = tamanho_palavra, posicao_v_erradas = 0	//tamanho da palavra
		caracter letra_por_vetor[25], letra, v_secreto[25], v_palavra_errada[50]

			escreva("		################# JOGO DA FORCA #################\n\n\n")
			escreva("			A palavra constitui ", tamanho_palavra, " letras.\n\nVocê tem ", erros, " CHANCES. QUE COMECEM OS JOGOS!")

		boneco()
		
		para(inteiro cont1 = 0; cont1 < tamanho_palavra; cont1++) {
			letra_por_vetor[cont1] = txt.obter_caracter(palavra_secreta, cont1)		//Atribui letras da palavra a um vetor em caracter
			v_secreto[cont1] = '_'
			escreva("  ", v_secreto[cont1])
		}	//Final do para para imprimir traços
		
		enquanto (acertos > 0 e erros > 0) {
			
			escreva("\n\n\nDigite UMA LETRA: ")
			leia(letra)
			tratamento_letra = t.caracter_para_cadeia(letra)						//Convertendo var para cadeia, tornando em caixa alta e retornando para caracter.
			tratamento_letra = txt.caixa_alta(tratamento_letra)
			letra = t.cadeia_para_caracter(tratamento_letra)
			
			acertou = falso
			letra_repetida = falso

			para(inteiro contador1 = 0; contador1 < tamanho_palavra; contador1++) {
				se (letra == letra_por_vetor[contador1]) {
					se (v_secreto[contador1] == letra) {
						letra_repetida = verdadeiro	
					} senao {
					acertou = verdadeiro
					v_secreto[contador1] = letra
					acertos--
					}	
				}
			}	// Final do PARA
			
			se (letra_repetida == verdadeiro) {
				escreva ("\n\nLetra já escolhida!")
			} senao se (acertou == verdadeiro) {
				escreva("\n\nBoa Escolha!")
			} senao se (acertou != verdadeiro) {
				escreva("\n\nNão existe esta letra na palavra!")
        			erros--
			}
			
		     limpa()
		
				escreva("		################# JOGO DA FORCA #################\n\n\n")					
				escreva("			A palavra constitui ", tamanho_palavra, " letras.\n\nVocê tem ", erros, " chances.")				
				boneco()
		
		      para(inteiro contador1 = 0; contador1 < tamanho_palavra; contador1++) {
		        escreva("  ", v_secreto[contador1])
		      }
		      
		     se (letra_repetida == verdadeiro) {
				escreva ("\n\nLetra já escolhida!")
			} senao se (acertou == verdadeiro) {
				escreva("\n\nBoa Escolha!")
			} senao {
				escreva("\n\nNão existe esta letra na palavra!")
			}
		}	// Final do ENQUANTO
		
		se (acertos == 0) {
			escreva("\n 		PARABENS.\n		VOCÊ VENCEU!\n")
		} senao se (erros == 0) {
			
			escreva("\n\n 		GAME OVER!\n\n\n")
			escreva("\n\n 	Que pena. A palavra é: ", palavra_secreta, "\n\n")
		}
		

	}	// Final de função inicio
			
	

	funcao boneco() {

		//
		
		se (erros == 6) {
        
          cadeia cabeca = "O",braco_direito = "/", tronco = "|",braco_esquerdo = "\\" ,perna_direita = "/", perna_esquerda = "\\"
              
          escreva("\n ____\n|   |\n|  ", "\n| ", " \n| ", " ", "\n|\n\n")
		} senao se (erros == 5) {			
        
          cadeia cabeca = "O",braco_direito = "/", tronco = "|",braco_esquerdo = "\\" ,perna_direita = "/", perna_esquerda = "\\"
      
          escreva("\n ____\n|   |\n|   ", cabeca, "\n| ", " \n| ", " ", "\n|\n\n")
		} senao se (erros == 4) {
        
          cadeia cabeca = "O",braco_direito = "/", tronco = "|",braco_esquerdo = "\\" ,perna_direita = "/", perna_esquerda = "\\"
      
          escreva("\n ____\n|   |\n|   ",cabeca,"\n|   ", tronco, " \n| ", " ", "\n|\n\n")
		} senao se (erros == 3) {
       
          cadeia cabeca = "O", braco_direito = "/", tronco = "|",braco_esquerdo = "\\" ,perna_direita = "/", perna_esquerda = "\\"
      
          escreva("\n ____\n|   |\n|   ", cabeca,"\n|  ", braco_direito, tronco, " \n| "," ", "\n|\n\n")
		} senao se (erros == 2) {
        
          cadeia cabeca = "O",braco_direito = "/", tronco = "|",braco_esquerdo = "\\" ,perna_direita = "/", perna_esquerda = "\\"
      
          escreva("\n ____\n|   |\n|   ",cabeca,"\n|  ", braco_direito, tronco, braco_esquerdo," \n| ", " ", "\n|\n\n")
		} senao se (erros == 1){
        
          cadeia cabeca = "O",braco_direito = "/", tronco = "|",braco_esquerdo = "\\" ,perna_direita = "/", perna_esquerda = "\\"
      
          escreva("\n ____\n|   |\n|   ", cabeca,"\n|  ", braco_direito, tronco, braco_esquerdo," \n|  ", perna_direita," ", "\n|\n\n")
		} senao se (erros == 0) {	
        
          cadeia cabeca = "O",braco_direito = "/", tronco = "|",braco_esquerdo = "\\" ,perna_direita = "/", perna_esquerda = "\\"
      
          escreva("\n ____\n|   |\n|   ", cabeca,"\n|  ", braco_direito , tronco, braco_esquerdo, " \n|  ", perna_direita , " ", perna_esquerda, "\n|\n\n")
		}
 
	  }			
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 193; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {palavra_secreta, 11, 27, 15};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */